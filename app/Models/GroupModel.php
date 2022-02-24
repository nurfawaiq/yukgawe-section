<?php

namespace App\Models;

use CodeIgniter\Model;

class GroupModel extends Model
{
	protected $table                = 'groups';
	protected $primaryKey           = 'id_group';
	protected $returnType           = 'object';
	protected $allowedFields        = ['name_group', 'info_group'];
	protected $useTimestamps		= true;
	protected $useSoftDeletes		= true;

}
