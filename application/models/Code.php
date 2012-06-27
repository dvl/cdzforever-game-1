<?php

class Code extends Eloquent { 
	
	public static $timestamps = false;

	public function User() { 

		return $this->belongs_to('User');
	}

}