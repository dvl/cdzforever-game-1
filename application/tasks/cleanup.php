<?php

class Cleanup_Task {

	public function run() {
		
		static::fight();
		static::pratices();
		static::logins();
		static::messages();

		echo "[*] Limpeza finalizada";
	}

	public function fight() {
		echo "[*] Encerrando desafios nao aceitos a mais de 6 hrs...\n";

		$i = 0;
		$fights = Fight::where('status', '=', 0)->get();

		foreach ($fights as $fight) {
			if (strtotime('+6 hours',strtotime($fight->created_at)) - time() <= 0) {
				$fight->status = 1;
				$fight->save();
				$i++;
			}
		}

		echo "[!] {$i} desafios finalizados.\n\n";

		echo "[*] Apagando desafios não aceitos com mais de 2 semanas do banco da dados...\n";

		$i = 0;
		$fights = Fight::where('status', '=', 1)->where('winner', '=', 0)->get();

		foreach ($fights as $fight) {
			if (strtotime('+2 weeks',strtotime($fight->created_at)) - time() <= 0) {
				$fight->delete();
				$i++;
			}
		}

		echo "[!] {$i} desafios removidos.\n\n";

	}

	public function pratices() {
		echo "[*] Finalizando treinos...\n\n";	
	}

	public function logins() {
		echo "[*] Apagando entradas antigas na tablela logins...\n\n";
	}

	public function messages() {
		echo "[*] Apagando mensagens não arquivadas com mais de 2 semanas...";

		$i = 0;
		$msgs = Message::where('archive', '=', 0)->get();

		foreach ($msgs as $msg) {
			if (strtotime('+2 weeks',strtotime($msg->created_at)) - time() <= 0) { 
				$msg->delete();
				$i++;
			}
		}

		echo " {$i} registros eliminados.\n\n";
	}

}