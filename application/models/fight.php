<?php

class Fight extends Eloquent { 

	public function user() {
		return $this->belongs_to("user");
	}

	public function new_fight($target) {
		$user = User::find(Auth::user()->id);

		$fights = Fight::where('user_id_1')->get();
		$fight = new Fight;
		$user_id_1 = Auth::user()-id;
		$user_id_2 = $target;
		$fight->save();
	}

}