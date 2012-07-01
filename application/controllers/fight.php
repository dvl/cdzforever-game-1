<?php

class Fight_Controller extends Base_Controller {

	public $restful = true;

	function __construct()	{
		$this->filter('before', 'csrf')->on('post');
	}

	public function get_index() {

		$sent = Fight::where('user_id_1', '=', Auth::user()->id)->get();

		return View::make('fight/main')->with('sent', $sent);
	}

	public function post_challenge() { 

		$target = User::where('username', '=', Input::get('target'))->first();
		$me = User::find(Auth::user()->id);
		$fight = Fight::where('user_id_1', '=', $me->id);

		$min = (($fight->count() + 1) * 20);

		if (!count($target)) {
			return Redirect::to('fight')->with('error', 'O usuário desafiado não existe.');
		}
		elseif ($fight->count() >= 5) {
			return Redirect::to('fight')->with('error', 'Você não pode possuir mais do que 5 desafios ativos.');
		}
		elseif ($me->id == $target->id) {
			return Redirect::to('fight')->with('error', 'Você tem problemas?');
		}
		elseif ($me->stamina < $min) { 
			return Redirect::to('fight')->with('error', 'Você precisa de ao menos <strong>'.$min.'%</strong> de vigor para fazer isso.');
		}
		else {
			//
			return Redirect::to('fight')->with('info', 'Seu desafio foi enviado.');
		}



	}
}