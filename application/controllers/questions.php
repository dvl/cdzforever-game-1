<?php

class Questions_Controller extends Base_Controller {

	public $restful = true;

	function __construct()	{
		$this->filter('before', 'csrf')->on('post');
	}

	public function get_index() {
		return View::make('quiz.intro');
	}

	public function get_question() { 

		$user = User::find(Auth::user()->id);

		if (date('Y-m-d',strtotime($user->quiz_date)) == date('Y-m-d')) {
			$msg = Input::has('timeout') ? 'Tempo para responder o Quiz esgotado! Tente novamente amanhã!!' : 'Você já participou do quiz hoje, volte amanhã.';
			return Redirect::to('quiz')->with('error', $msg);
		}
		else {
			$user->quiz_date = date('Y-m-d H:i:s');
			$user->save();

			$question = Question::where_not_in('id', json_decode($user->quiz))->order_by(DB::raw('RAND()'))->first();

			$question->awnsers = json_decode($question->awnsers, true);

			return View::make('quiz.question')->with("question", $question);
		}
	}

	public function post_question() {
		$question = Question::find(Input::get('question_id'));
		$user = User::find(Auth::user()->id);

		$ids = json_decode($user->quiz, true);
		$ids[] = $question->id;
		$user->quiz = json_encode($ids);

		if ((date('Y-m-d',strtotime($user->quiz_date)) == date('Y-m-d')) && ((microtime(true) - strtotime($user->quiz_date)) > 25)) { // 5 segs pra compensar eventuais lags
			$user->save();
			return Redirect::to('quiz?timeout');
		}

		elseif (Input::get('reply') == $question->correct) {
			$user->merits = $user->merits + 20;
			$user->save();
			return Redirect::to('quiz')->with('info', 'Resposta correta, você ganhou <strong>20 méritos</strong>');
		}

		else {
			$user->save();
			return Redirect::to('quiz')->with('error', 'Não foi dessa vez que você acertou! Estude mais até amanhã. Acredite no seu cosmo que você superará os limites do conhecimento!');
		}
	}

}