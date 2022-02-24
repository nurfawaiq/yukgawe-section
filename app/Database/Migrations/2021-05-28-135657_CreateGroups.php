<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateGroups extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_group'          => [
				'type'           => 'BIGINT',
				'constraint'     => 20,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'name_group'       => [
				'type'       => 'VARCHAR',
				'constraint' => '50',
			],
			'info_group' => [
				'type' => 'TEXT',
				'null' => true,
			],
			'created_at' => [
				'type' => 'DATETIME',
				'null' => true,
			],
			'updated_at' => [
				'type' => 'DATETIME',
				'null' => true,
			],
			'deleted_at' => [
				'type' => 'DATETIME',
				'null' => true,
			],
		]);
		$this->forge->addKey('id_group', true);
		$this->forge->createTable('groups');
	}

	public function down()
	{
		$this->forge->dropTable('groups');
	}
}
