<?php

class Message extends Eloquent { 

	public function user() { 
		return $this->belongs_to('user');
	}

	public function send($to, $from, $subject, $body) {

		$share = uniqid();
		$to = User::where('username', '=', $to)->first()->id;

		for ($i = 0; $i <= 1; $i++) {
			$msg = new static;
			$msg->to = $to;
			$msg->from = $from;
			$msg->subject = $subject;
			$msg->body = e($body);
			$msg->type = $i;
			$msg->share = $share;
			$msg->save();
		}
	}
}
