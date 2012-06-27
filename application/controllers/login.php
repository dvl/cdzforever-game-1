<?php

class Login_Controller extends Base_Controller {

	public $restful = true;

	function __construct()	{
		$this->filter('before', 'csrf')->on('post');
	}

	public function get_index() {

		if (!Auth::check()) {
			return View::make('pages.login');
		}

		else {
			return Redirect::home();
		}

	}
	
	public function post_index() {

		$userdata = array(
			'username' => Input::get('username'),
			'password' => Input::get('password')
		);

		if (Auth::attempt($userdata)) {
			if (User::find(Auth::user()->id)->code()->first()) {
				Auth::logout();
				return Redirect::to('login')->with('login_errors', 'Sua conta não está ativada, verifique seu e-mail para ativar a conta, contas não ativadas são apagadas em 48 horas.')->with_input('only', array('username'));
			}
			else {
				$user = User::find(Auth::user()->id);
				$user->save();

				return Redirect::to('/');
			}
		}

		else {
			return Redirect::to('login')->with('login_errors', 'Usuário e/ou senha incorreto(s).')->with_input('only', array('username'));
		}

	}

	public function get_logout() {
		Auth::logout();
		return Redirect::to('/');
	}

	public function get_recover() {
		return View::make('pages.recover');
	}

}
