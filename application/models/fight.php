<?php

class Fight extends Eloquent { 

	public function new_fight($target) {
		$fight = new static;
		$fight->user_id_1 = Auth::user()->id;
		$fight->user_id_2 = $target;
		$fight->save();
	}

	public function user() {
		$this->belongs_to('user');
	}

}