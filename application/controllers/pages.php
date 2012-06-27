<?php

class Pages_Controller extends Base_Controller {

	public function action_index($id) {

		$page = Page::find($id);

		if (count($page)) {
			return View::make('pages.pages')->with('page', $page);
		}
		else {
			return Response::error('404');
		}
	
	}
}




