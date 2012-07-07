<?php

class Cleanup_Task {

	public function run() {
		
		static::fight();
		static::pratices();
		static::logins();
	}

	public function fight() {
		echo "[*] Encerrando desafios nao aceitos a mais de 6 hrs...";

		$fights = Fight::where('status', '=', 0)->get();

		foreach ($fights as $fight) {
			if (strtotime('+6 hours',strtotime($fight->created_at)) - time() <= 0) {
				$fight->status = 1;
				$fight->save();
			}
		}

		echo " Ok!\n\n";

	}

	public function pratices() {
		echo "[*] Finalizando treinos...\n\n";	
	}

	public function logins() {
		echo "[*] Apagando entradas antigas na tablela logins...\n\n";
	}

}

// criar uma tarefa cron que chame esse arquivo a cada X minutos
// $ php artisan cleanup