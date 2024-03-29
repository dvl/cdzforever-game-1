<?php

class Armor extends Eloquent { 
	
	public static $timestamps = false;

	public function user() { 
		return $this->belongs_to('user');
	}

	public function category() { 
		return $this->belongs_to('category');
	}

	public function assign($user_id)	{

		$armor = static::find($this->id);
		$user = User::find($user_id);

		if ($armor->user_id != 0) {
			return "Essa armadura já tem dono.";
		}
		elseif ($user->armor_id != 0) { 
			return "Você já tem uma armadura";
		}
		elseif ($user->money < $armor->cost) {
			return "Você não tem dinheiro o bastante para concluir essa operação";
		}
		elseif ($user->aura() < $armor->aura) {
			return "Você não tem cosmo o bastante para usar essa armadura";
		}
		else {
			$armor->user_id = $user_id;
			$armor->save();
			$user->money = $user->money - $armor->cost;
			$user->armor_id = $this->id;
			$user->save();
			return "Você recebeu a armadura de <strong>".$armor->name."</strong>";
		}
	}

	public function remove_assign($user_id){ 
		if (static::check_assign()) {
			$armor = new static;
			$armor->user_id = 0;
			$armor->save();
		}
	}

	public function check_assign() {
		return (bool) static::where('user_id', '=', $this->user_id)->where('id', '=', $this->id)->first(array('id'));
	}

	public function invoke() {

		if (static::check_assign()) {

			$armor = static::find($this->id);
			$user = User::find($armor->user_id);

			if (($armor->invoked == 0) && ($armor->health > 0)) {

				$armor->invoked = 1;
				$armor->save();

				$user->recalculate();
			}
		}
	}

	public function withdraw() { 
		if (static::check_assign()) {

			$armor = static::find($this->id);
			$user = User::find($armor->user_id);

			if ($armor->invoked == 1) {

				$armor->invoked = 0;
				$armor->save();

				$user->recalculate();
			}
		}
	}

	public function needed() {

		$classes = array('S','A','B','C','D');
		$auras = array('99','54','37','15','2');

		return str_replace($classes,$auras,$this->class);
	}

	public function repair_cost() {

		$fator = array('S' => '10','A' => '5','B' => '4','C' => '3','D' => '2.5');

		if ($this->health <= 0) {
			$fator = array('S' => '30','A' => '15','B' => '8','C' => '3','D' => '2.5');
		}

		return ($this->healthmax - $this->health) * $fator[$this->class];
	}

	public function repair() {

		if (static::check_assign()) {
			
			$armor = static::find($this->id);
			$user = User::find($armor->user_id);

			if ($user->money >= $armor->repair_cost()) {

				$armor->health = $armor->healthmax;
				$armor->save();

				$user->money = $user->money - $armor->repair_cost();
				$user->save();
			}
		}
	}

	public function drop($confirmation) {

		if (static::check_assign()) {

			$armor = static::find($this->id);
			$user = User::find($armor->user_id);

			if (($user->money >= $armor->drop_cost()) && (Hash::check($confirmation, $user->password))) {

				if ($armor->invoked) {
					$armor->withdraw();
				}

				$armor->health = $armor->healthmax;
				$armor->user_id = 0;
				$armor->save();

				$user->money = $user->money - $armor->drop_cost();
				$user->armor_id = 0;
				$user->save();

				return 'Você se desfez da sua armadura';
			}

			else {
				return 'Senha Errada';
			}
		}
	}

	public function drop_cost() {
		return str_replace(array('S','A','B','C','D'), array(70000,50000,30000,15000,5000), $this->class);
	}
}