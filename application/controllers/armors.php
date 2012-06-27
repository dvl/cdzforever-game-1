<?php

class Armors_Controller extends Base_Controller {

	public $restful = true;

	function __construct()	{
		$this->filter('before', 'csrf')->on('post');
	}

	public function get_index() {

		$armor = Input::get('armor') ? Input::get('armor') : '%';
		$category_id = Input::get('category') ? Input::get('category') : '%';
		$class = Input::get('class') ? Input::get('class') : '%';

		if (Input::get('owned') != 0) {
			if (Input::get('owned') == 'true') {
				$c = '>'; $v = 0;
			}
			else {
				$c = '='; $v = 0;
			}
		}
		else {
			$c = 'LIKE';
			$v = '%';
		}

		$armors = Armor::with(array('user','category'))
					->where('name', 'LIKE', $armor)
					->where('category_id', 'LIKE', $category_id)
					->where('class', 'LIKE', $class)
					->where('user_id', $c, $v)
					->order_by('name','ASC')->paginate(25);

		return View::make('armors.list')->with('armors', $armors);
	}

	public function get_armor() {

		$user = User::find(Auth::user()->id);
		$armor = Armor::find($user->armor_id);

		count($armor) ? $armor->remove = str_replace(array('S','A','B','C','D'), array(70000,50000,30000,15000,5000), $armor->class) : null;

		return View::make('armors.action')->with("user", $user)->with("armor", $armor);
	}

	public function post_armor() {

		$user = User::find(Auth::user()->id);
		$armor = Armor::find($user->armor_id);

		if (Input::get('action') == 'Invocar') {
			Armor::find($user->armor_id)->invoke();

			return Redirect::to('armor')->with('info','Você invocou sua armadura de <strong>'.$armor->name.'</strong> com sucesso, seu cosmo com a armadura invocada é de '.round($user->cosmo_base + ($user->cosmo_base * ($armor->cosmo / 100))).'.');
		}

		if (Input::get('action') == 'Retirar') {
			Armor::find($user->armor_id)->withdraw();

			return Redirect::to('armor')->with('info','Você retirou sua armadura de <strong>'.$armor->name.'</strong> com sucesso, seu cosmo sem armadura é de '.$user->cosmo_base.'.');
		}
	}

	public function get_view($id = null) {
		$armor = Armor::find($id);

		if (count($armor)) {

			return View::make('armors.view')->with('armor', $armor);
		}
		else {
			return Response::error('404');
		}
	}
}