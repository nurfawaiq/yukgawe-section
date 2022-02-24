<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class UserSeeder extends Seeder
{
	public function run()
	{
		// 1 data
		// $data = [
		// 	'name_user' => 'Administrator',
		// 	'email_user' => 'dev.yukcoding@gmail.com',
		// 	'password_user' => password_hash('12345', PASSWORD_BCRYPT),
		// ];
		// $this->db->table('users')->insert($data);

		// multi data
		$data = [
			[
				'name_user' => 'M. Nur Fawaiq',
				'email_user' => 'nurfawaiq2@gmail.com',
				'password_user' => password_hash('12345', PASSWORD_BCRYPT),
			],
			[
				'name_user' => 'Steven Noor',
				'email_user' => 'steven@yukcoding.dev',
				'password_user' => password_hash('steven', PASSWORD_BCRYPT),
			]
		];
		$this->db->table('users')->insertBatch($data);
	}
}
