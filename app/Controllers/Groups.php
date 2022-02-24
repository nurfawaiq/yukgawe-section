<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourcePresenter;
// use App\Models\GroupModel;

class Groups extends ResourcePresenter
{
	// function __construct() {
	// 	$this->group = new GroupModel();
	// }
	protected $modelName = 'App\Models\GroupModel';
	protected $helpers = ['custom'];

	/**
	 * Present a view of resource objects
	 *
	 * @return mixed
	 */
	public function index()
	{
		// helper('custom');
		$data['groups'] = $this->model->findAll();
		return view('group/index', $data);
	}

	/**
	 * Present a view to present a specific resource object
	 *
	 * @param mixed $id
	 *
	 * @return mixed
	 */
	public function show($id = null)
	{
		//
	}

	/**
	 * Present a view to present a new single resource object
	 *
	 * @return mixed
	 */
	public function new()
	{
		return view('group/new');
	}

	/**
	 * Process the creation/insertion of a new resource object.
	 * This should be a POST.
	 *
	 * @return mixed
	 */
	public function create()
	{
		$validate = $this->validate([
			'name_group' => [
				'rules'  => 'required|min_length[3]',
				'errors' => [
					'required' => 'Nama grup tidak boleh kosong',
					'min_length' => 'Nama grup minimal 3 karakter',
				],
			],
		]);
		if(!$validate) {
			return redirect()->back()->withInput();
		}

		$data = $this->request->getPost();
		$this->model->insert($data);
		return redirect()->to(site_url('groups'))->with('success', 'Data Berhasil Disimpan');
	}

	/**
	 * Present a view to edit the properties of a specific resource object
	 *
	 * @param mixed $id
	 *
	 * @return mixed
	 */
	public function edit($id = null)
	{
		$group = $this->model->where('id_group', $id)->first();
		if(is_object($group)) {
			$data['group'] = $group;
			return view('group/edit', $data);
		} else {
			throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound();
		}
	}

	/**
	 * Process the updating, full or partial, of a specific resource object.
	 * This should be a POST.
	 *
	 * @param mixed $id
	 *
	 * @return mixed
	 */
	public function update($id = null)
	{
		$validate = $this->validate([
			'name_group' => [
				'rules'  => 'required|min_length[3]',
				'errors' => [
					'required' => 'Nama grup tidak boleh kosong',
					'min_length' => 'Nama grup minimal 3 karakter',
				],
			],
		]);
		if(!$validate) {
			return redirect()->back()->withInput();
		}
		
		$data = $this->request->getPost();
		$this->model->update($id, $data);
		return redirect()->to(site_url('groups'))->with('success', 'Data Berhasil Diupdate');
	}

	/**
	 * Present a view to confirm the deletion of a specific resource object
	 *
	 * @param mixed $id
	 *
	 * @return mixed
	 */
	public function remove($id = null)
	{
		//
	}

	/**
	 * Process the deletion of a specific resource object
	 *
	 * @param mixed $id
	 *
	 * @return mixed
	 */
	public function delete($id = null)
	{
		// $this->model->where('id_group', $id)->delete();
		$this->model->delete($id);
		return redirect()->to(site_url('groups'))->with('success', 'Data Berhasil Dihapus');
	}


	public function trash()
	{
		$data['groups'] = $this->model->onlyDeleted()->findAll();
		return view('group/trash', $data);
	}

	public function restore($id = null)
	{
		$this->db = \Config\Database::connect();
		if($id != null) {
			$this->db->table('groups')
				->set('deleted_at', null, true)
				->where(['id_group' => $id])
				->update();
			
		} else {
			$this->db->table('groups')
				->set('deleted_at', null, true)
				->where('deleted_at is NOT NULL', NULL, FALSE)
				->update();
		}
		if($this->db->affectedRows() > 0) {
			return redirect()->to(site_url('groups'))->with('success', 'Data Berhasil Direstore');
		}
	}

	public function delete2($id = null)
	{
		if($id != null) {
			$this->model->delete($id, true);
			return redirect()->to(site_url('groups/trash'))->with('success', 'Data Berhasil Dihapus Permanen');
		} else {
			$this->model->purgeDeleted();
			return redirect()->to(site_url('groups/trash'))->with('success', 'Data Trash Berhasil Dihapus Permanen');
		}
	}
}
