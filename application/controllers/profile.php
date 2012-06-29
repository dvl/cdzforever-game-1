<?php

class Profile_Controller extends Base_Controller {

	public function action_index($id = null) {

		if ($id == null) {
			$id = Auth::user()->username;
		}

		$user = User::where('username', '=', $id)->first();

		if (count($user)) {

			$user->sex = str_replace(array('M','F'),array('Masculino','Feminino'),$user->sex);

			$total = $user->wins + $user->loses;
			$user->winsp = $total ? round(($user->wins / $total) * 100) : 0;
			$user->losesp = $total ? round(($user->loses / $total) * 100) : 0;

			$total = $user->corrects + $user->wrongs;	
			$user->correctsp = $total ? round(($user->corrects / $total) * 100) : 0;
			$user->wrongsp = $total ? round(($user->wrongs / $total) * 100) : 0;	

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




