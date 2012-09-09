<?php

class Message_Controller extends Base_Controller {

	public $restful = true;

	function __construct()	{
		$this->filter('before', 'csrf')->on('post');
	}

	public function get_index() {	

		$msgs = Message::where('username', '=', Auth::user()->id)->where('to', '=', Auth::user()->id)->order_by('created_at','DESC')->paginate(15);

		return View::make('messages/inbox')->with('msgs', $msgs);
	}

	public function get_sent() {	

		$msgs = Message::where('username', '=', Auth::user()->id)->where('from', '=', Auth::user()->id)->order_by('created_at','DESC')->paginate(15);

		return View::make('messages/outbox')->with('msgs', $msgs);
	}

	public function get_read($id = null) { 

		$msg = Message::where('id', '=', $id)->where('username', '=', Auth::user()->id)->first();

		if (count($msg)) { 

			if (($msg->to == Auth::user()->id) && (!$msg->readed)) { 
				DB::table('messages')->where('share', '=', $msg->share)->update(array('readed' => 1));
			}

			return View::make('messages/read')->with('msg', $msg);
		}

		else {
			return Response::error('404');
		}

	}

	public function get_write() { 
		return View::make('messages/write');
	}

	public function post_write() { 
		$rules = array(
			'to' => 'required|exists:users,username',
			'subject' => 'max:90',
			'body' => 'required',
		);

		$messages = array(
			'to_required' => 'O campo destinatario deve ser preenchido',
			'to_exists' => 'O destinatario não existe.',
			'subject_max' => 'O assunto não deve ter mais do que 90 caracteres',
			'body_required' => 'Você deve preencher o corpo da mensagem'
		);

		$v = Validator::make(Input::all(), $rules, $messages);

		if ($v->fails()) {
			return Redirect::to('message/write')->with_errors($v->errors->all())->with_input();
		}
		else {
			$msg = new Message;
			// $msg->send(Input::get('to'),Auth::user()->id,Input::get('subject'),Input::get('body'));

			return Redirect::to('message/sent')->with('info', 'Mensagem Enviada');
		}

	}

	public function get_reply($id) {
		$msg = Message::where('id', '=', $id)->where('username', '=', Auth::user()->id)->first();

		if (!count($msg)) { 
			return Response::error('404');
		}

		$user = User::find($msg->from);

		$body = explode("\n", $msg->body);

		$msg->from = $user->username;
		$msg->body = "\n\n\nEm ".HTML::date($msg->created_at).", ".$msg->from." escreveu:\n\n";

		foreach ($body as $line) { 
			$msg->body .= "> ".$line."\n"; 
		}

		return View::make('messages/reply')->with('msg', $msg);
	}


}