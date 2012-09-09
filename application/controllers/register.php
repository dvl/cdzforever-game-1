<?php

class Register_Controller extends Base_Controller {

	public $restful = true;

	function __construct()	{
		$this->filter('before', 'csrf')->on('post');
	}

	public function get_index() {

		if (Auth::check()) {
			return Redirect::home();
		}
		else {
			return View::make('pages.register');
		}

	}

	public function post_index() {

		$rules = array(
			'username' => 'required|between:3,30|alpha|unique:users,username',
			'email' => 'required|email|unique:users,email',
			// 'invite' => 'required|exists:invites,code'
			'password' => 'required|min:6',
			'password-2' => 'same:password',
			'rules' => 'accepted',
			'terms' => 'accepted',
		);

		$messages = array(
			'username_required' => 'O campo usuário deve ser preenchido',
			'username_between' => 'O nome de usuário deve ter entre 3 e 30 caracteres',
			'username_alpha' => 'O nome de usuário do deve conter somente letras',
			'username_unique' => 'Já existe uma conta registrada com esse nome de usuário, escolha outro',
			'email_required' => 'O campo e-mail deve ser preenchido',
			'email_email' => 'O campo e-mail deve conter um e-mail valido',
			'email_unique' => 'Já existe uma conta registrada com seu endereço de email',
			// 'invite_required' => 'Você deve informar o código do seu convite.',
			'password_required' => 'O campo senha deve ser preenchido',
			'password_min' => 'A senha deve ter no minimo 6 caracteres',
			'password-2_same' => 'As senhas digitadas não são iguais',
			'rules_accepted' => 'Você deve ler e concordar com as Regras antes de continuar',
			'terms_accepted' => 'Você deve ler e concordar com os Termos de Uso antes de continuar'
		);

		$v = Validator::make(Input::all(), $rules, $messages);

		if ($v->fails()) {
			return Redirect::to('register')->with_errors($v->errors->all())->with_input();
		}
		else {
			$data = array(
				'username' => Input::get('username'),
				'email' => Input::get('email'),
				'password' => Hash::make(Input::get('password')),
				'state' => Input::get('state'),
			);

			$user = new User($data);
			$user->save();

			$user = User::where('username','=',Input::get('username'))->first();

			$activation = md5(microtime());

			$data = array(
				'code' => $activation,
				'user_id' => $user->id,
			);

			$code = new Code($data);
			$code->save();

			// envia o email de confirmação, se conseguir
			try {
				Bundle::start('messages');
				Message::to($user->email)
					->from('no-reply@cdzforever.net', 'CDZForever')
					->subject('CDZForever - Ativação de Cadastro')
					->body(View::make('emails.code', array(
						'code'    => $code->code,
						'user'    => $user->username,
						'user_id' => $user->id
					)))
					->html(true)
					->send();
			} catch (Exception $e) {
				// se fode magrao
				$user->delete(); // remove também o code recém adicionado (porque é fk)
				return Redirect::to('register')
					->with_errors(array('Erro ao enviar o email de ativação. Verifique o email informado, ou tente mais tarde.'))
					->with_input();
			}

			// dispara um email com codigo de ativação

			return Redirect::to('register')->with('success', true);
		}

	}

	public function get_activate($code) {

		$code = Code::where('code', '=', $code)->first();

		if (count($code)) {
			$code->delete();
			$html = '<div class="alert alert-success">Conta ativada com sucesso, '.HTML::link('login','clique aqui').' para logar.</div>';
		}

		else {
			$html = '<div class="alert alert-error">Código de ativação Invalido.</div>';
		}

		$data = array(
			'title' => 'Ativação',
			'html' => $html."<br />",
		);

		return View::make('misc.info',$data);
	}
}