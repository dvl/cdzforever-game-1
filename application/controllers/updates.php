<?php

class Updates_Controller extends Base_Controller {

	public function action_index($id) {

		$new = Update::find($id);

		if (count($new)) {
			return View::make('news/view')->with('new', $new);
		}
		else {
			return Response::error('404');
		}
	
	}
}




