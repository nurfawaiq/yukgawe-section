<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\GroupModel;
use App\Models\ContactModel;

class Contacts extends ResourceController
{
	protected $helpers = ['custom'];

	function __construct() {
		$this->group = new GroupModel();
		$this->contact = new ContactModel();
	}
	
	/**
	 * Return an array of resource objects, themselves in array format
	 *
	 * @return mixed
	 */
	public function index()
	{
		$keyword = $this->request->getGet('keyword');
		$data = $this->contact->getPaginated(10, $keyword);
		return view('contact/index', $data);
	}

	/**
	 * Return the properties of a resource object
	 *
	 * @return mixed
	 */
	public function show($id = null)
	{
		//
	}

	/**
	 * Return a new resource object, with default properties
	 *
	 * @return mixed
	 */
	public function new()
	{
		$data['groups'] = $this->group->findAll();
		return view('contact/new', $data);
	}

	/**
	 * Create a new resource object, from "posted" parameters
	 *
	 * @return mixed
	 */
	public function create()
	{
		$data = $this->request->getPost();
		$save = $this->contact->insert($data);
		if(!$save) {
			return redirect()->back()->withInput()->with('errors', $this->contact->errors());
		} else {
			return redirect()->to(site_url('contacts'))->with('success', 'Data Berhasil Disimpan');
		}
	}

	/**
	 * Return the editable properties of a resource object
	 *
	 * @return mixed
	 */
	public function edit($id = null)
	{
		$contact = $this->contact->find($id);
		if(is_object($contact)) {
			$data['contact'] = $contact;
			$data['groups'] = $this->group->findAll();
			return view('contact/edit', $data);
		} else {
			throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound();
		}
	}

	/**
	 * Add or update a model resource, from "posted" properties
	 *
	 * @return mixed
	 */
	public function update($id = null)
	{
		$data = $this->request->getPost();
		$save = $this->contact->update($id, $data);
		if(!$save) {
			return redirect()->back()->withInput()->with('errors', $this->contact->errors());
		} else {
			return redirect()->to(site_url('contacts'))->with('success', 'Data Berhasil Diupdate');
		}
	}

	/**
	 * Delete the designated resource object from the model
	 *
	 * @return mixed
	 */
	public function delete($id = null)
	{
		$this->contact->delete($id);
		return redirect()->to(site_url('contacts'))->with('success', 'Data Berhasil Dihapus');
	}
}
