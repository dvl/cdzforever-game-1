<?php

class Update extends Eloquent { 

	public static $table = 'news';

	public static $timestamps = false;

	public function user() {
		return $this->belongs_to('user');
	}

}