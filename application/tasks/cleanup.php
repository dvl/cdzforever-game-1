<?php

class Cleanup_Task {

	public function run() {
		
		static::fight();
		static::pratices();
		static::logins();
	}

	public function fight() {
		echo "[*] Encerrando desafios nao aceitos a mais de 5 hrs\n\n";
	}

	public function pratices() {
		echo "[*] Finalizando treinos\n\n";	
	}

	public function logins() {
		echo "[*] Apagando entradas antigas na tablela logins\n\n";
	}

}

// criar uma tarefa cron que chame esse arquivo a cada X minutos
// $ php artisan cleanup