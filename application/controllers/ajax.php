<?php

class Ajax_Controller extends Controller {

	public $restful = true;

	// function __construct()	{
	// 	$this->filter('before', 'csrf')->on('post');
	// }

	public function post_target() {
		if (Request::ajax()) {
			$users = User::where('username', 'LIKE', Input::get('query').'%')->take(10)->get();

			$list = array();

			foreach ($users as $user) {
				$list[] = $user->username;
			}

			return json_encode($list);
		}
		else {
			return Response::error(500);
		}
	}
}