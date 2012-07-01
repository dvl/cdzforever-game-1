<?php

class Ajax_Controller extends Controller {

	public $restful = true;

	public function post_target() {
		if (Request::ajax()) {
			$users = User::where('username', 'LIKE', Input::get('q').'%')->take(10)->get();

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