<?php

class User extends Eloquent { 

	public static $lvs = array(1200,3900,8400,15000,24000,35700,50400,68025,88825,113050,140950,172775,208775,250250,288750,329000,371000,414750,460250,507500,556500,610875,674625,748250,832250,927125,1033375,1151500,1282000,1416125,1119317,1164036,1208755,1253474,1298194,1342913,1387632,1432351,1477070,1521789,1566508,1611227,1655947,1700666,1745385,1790104,1834823,1879542,1924261,1968980,2013699,2058419,2103138,2147857,2192576,2237295,2282014,2326733,2371452,2416171,2460891,2505610,2550329,2595048,2639767,2684486,2729205,2773924,2818644,2863363,2908082,2952801,2997520,3042239,3086958,3131677,3176396,3221116,3265835,3310554,3355273,3399992,3444711,3489430,3534149,3578868,3623588,3668307,3713026,3757745,3802464,3847183,3891902,3936621,3981341,4026060,4070779,4115498,4160217,4204936,4249655,4294374,4339093);

	public function me() {
		
		return $this->id == Auth::user()->id;
	}

	public function code() {

		return $this->has_one('code');
	}

	public function armor() { 

		return $this->has_one('armor');
	}

	public function aura() {
		$i = 1; $aura = 1;
		foreach (static::$lvs as $lv) {
			if ($this->cosmo >= $lv) {
				$aura = $i;
			}
			$i++;
		}
		return $aura;		
	}

	public function next_aura() {
		if ($this->aura() >= count(static::$lvs)) {
			return "0";
		}
		else {
			return static::$lvs[$this->aura()];
		}
	}

	public function recalculate() {
		$user = static::find($this->id);
		$armor = Armor::find($user->armor_id);

		echo $armor->invoked;

		if (!$armor->invoked) {
			$user->cosmo = $user->cosmo_base;
			$user->strong = 3 * $user->aura();
			$user->dexterity = 1 * $user->aura();
			$user->resistence = 1 * $user->aura();
			$user->vitality = 2 * $user->aura();
		}
		else {
			$user->cosmo = $user->cosmo_base + ($user->cosmo_base * ($armor->cosmo / 100));
			$user->strong = (3 * $user->aura()) + $armor->strong;
			$user->dexterity = (1 * $user->aura()) + $armor->dexterity;
			$user->resistence = (1 * $user->aura()) + $armor->resistence;
			$user->vitality = (2 * $user->aura()) + $armor->vitality;
		}
		$user->save();
	}
}

