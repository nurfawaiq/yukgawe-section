<?php

namespace App\Models;

use CodeIgniter\Model;

class ContactModel extends Model
{
	protected $table                = 'contacts';
	protected $primaryKey           = 'id_contact';
	protected $returnType           = 'object';
	protected $allowedFields        = ['name_contact', 'name_alias', 'phone', 'email', 'address', 'info_contact', 'id_group'];
	protected $useTimestamps		= true;
	protected $useSoftDeletes		= false;

	protected $validationRules    = [
        'id_group'     => 'required',
        'name_contact' => 'required|min_length[3]',
    ];
    protected $validationMessages = [
        'id_group'        => [
            'required' => 'Grup belum dipilih',
        ],
		'name_contact'        => [
            'required' => 'Nama kontak tidak boleh kosong',
            'min_length' => 'Nama kontak minimal 3 karakter',
        ],
    ];
	protected $skipValidation		= false;

	function getAll() {
		$builder = $this->db->table('contacts');
		$builder->join('groups', 'groups.id_group = contacts.id_group');
		$query = $builder->get();
		return $query->getResult();
	}

	function getPaginated($num, $keyword = null) {
		$builder = $this->builder();
		$builder->join('groups', 'groups.id_group = contacts.id_group');
		if($keyword != '') {
			$builder->like('name_contact', $keyword);
			$builder->orLike('name_alias', $keyword);
			$builder->orLike('address', $keyword);
			$builder->orLike('phone', $keyword);
			$builder->orLike('email', $keyword);
			$builder->orLike('name_group', $keyword);
		}
		return [
			'contacts' => $this->paginate($num),
			'pager' => $this->pager,
		];
	}

}
