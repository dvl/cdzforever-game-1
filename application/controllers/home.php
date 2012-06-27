<?php

class Home_Controller extends Base_Controller {

	public $restful = true;

	public function get_index() {

		if (!Auth::check()) {
			
			$news = Update::all();

			return View::make('pages.home')->with('news', $news);
		}

		else {
			
			return View::make('pages.welcome');
		}

	}
}


