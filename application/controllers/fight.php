<?php

class Fight_Controller extends Base_Controller {

	public $restful = true;

	function __construct()	{
		$this->filter('before', 'csrf')->on('post');
	}

	public function get_index() {
		
		$sent = Fight::where('status', '=', 0)->where(function($query) {
			$query->where('user_id_1', '=', Auth::user()->id);
			$query->or_where('user_id_2', '=', Auth::user()->id);
		})->get();

		return View::make('fight/main')->with('sent', $sent);
	}

	public function post_challenge() { 

		$target = User::where('username', '=', Input::get('target'))->first();
		$me = User::find(Auth::user()->id);
		$fight = Fight::where('status', '=', 0)->where('user_id_1', '=', $me->id);

		$min = (($fight->count() + 1) * 20);

		if (!count($target)) {
			return Redirect::to('fight')->with('error', 'O usuário desafiado não existe.');
		}
		elseif ($fight->where('user_id_2', '=', $target->id)->count()) {
			return Redirect::to('fight')->with('error', 'Existe um desafio pendente para esse usuário.');
		}
		elseif ($fight->count() >= 5) {
			return Redirect::to('fight')->with('error', 'Você não pode possuir mais do que 5 desafios pendentes.');
		}
		elseif ($me->id == $target->id) {
			return Redirect::to('fight')->with('error', 'Você tem problemas?');
		}
		elseif ($me->stamina < $min) { 
			return Redirect::to('fight')->with('error', 'Você precisa de ao menos <strong>'.$min.'%</strong> de vigor para fazer isso.');
		}
		else {
			$fight = new Fight;
			$fight->new_fight($target->id);
			return Redirect::to('fight')->with('info', 'Seu desafio foi enviado.');
		}
	}

	public function post_find() {
		$min = Auth::user()->cosmo - (Auth::user()->cosmo * 0.15);
		$max = Auth::user()->cosmo + (Auth::user()->cosmo * 0.15);

		$users = User::where('cosmo', '>=', $min)->where('cosmo', '<=', $max)->where('id', '!=', Auth::user()->id)->order_by('updated_at', 'ASC')->take(10)->get();

		return View::make('fight.find')->with('users', $users);
	}
}