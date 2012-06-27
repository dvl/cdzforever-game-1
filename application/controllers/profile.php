<?php

class Profile_Controller extends Base_Controller {

	public function action_index($id = null) {

		if ($id == null) {
			$id = Auth::user()->username;
		}

		$user = User::where('username', '=', $id)->first();

		if (count($user)) {

			$user->sex = str_replace(array('M','F'),array('Masculino','Feminino'),$user->sex);

			$total = $user->wins + $user->loses + 1;
			$user->winsp = round(($user->wins / $total) * 100);
			$user->losesp = round(($user->loses / $total) * 100);	

			$armor = Armor::find($user->armor_id);		

			if (count($armor)) { 
				$armor->genre = str_replace(array('M','F'),array('Masculino','Feminino'),$armor->genre);
				$armor->invoked = str_replace(array('0','1'),array('Não','Sim'),$armor->invoked);
			}		

			return View::make('pages.profile')->with('user', $user)->with('armor', $armor);
		}
		else {
			return Response::error('404');
		}
	
	}
}




