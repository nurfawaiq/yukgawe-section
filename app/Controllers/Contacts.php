<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\GroupModel;
use App\Models\ContactModel;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

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


	public function export()
	{
		// $contacts = $this->contact->findAll();
		$filename = "contacts-".date('ymd').".xlsx";
		$keyword = $this->request->getGet('keyword');
		$db = \Config\Database::connect();
		$builder = $db->table('contacts');
		$builder->join('groups', 'groups.id_group = contacts.id_group');
		if($keyword != '') {
			$builder->like('name_contact', $keyword);
			$builder->orLike('name_alias', $keyword);
			$builder->orLike('address', $keyword);
			$builder->orLike('phone', $keyword);
			$builder->orLike('email', $keyword);
			$builder->orLike('name_group', $keyword);
			$filename = "contacts-filter-".date('ymd').".xlsx";
		}
		$query = $builder->get();
		$contacts = $query->getResult();

		$spreadsheet = new Spreadsheet();
		$sheet = $spreadsheet->getActiveSheet();
		$sheet->setCellValue('A1', 'No');
		$sheet->setCellValue('B1', 'Nama');
		$sheet->setCellValue('C1', 'Alias');
		$sheet->setCellValue('D1', 'Telepon');
		$sheet->setCellValue('E1', 'Email');
		$sheet->setCellValue('F1', 'Alamat');
		$sheet->setCellValue('G1', 'Info');

		$column = 2;
		foreach ($contacts as $key => $value) {
			$sheet->setCellValue('A'.$column, ($column-1));
			$sheet->setCellValue('B'.$column, $value->name_contact);
			$sheet->setCellValue('C'.$column, $value->name_alias);
			$sheet->setCellValue('D'.$column, $value->phone);
			$sheet->setCellValue('E'.$column, $value->email);
			$sheet->setCellValue('F'.$column, $value->address);
			$sheet->setCellValue('G'.$column, $value->info_contact);
			$column++;
		}

		$sheet->getStyle('A1:G1')->getFont()->setBold(true);
		$sheet->getStyle('A1:G1')->getFill()
			->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
			->getStartColor()->setARGB('FFFFFF00');
		$styleArray = [
			'borders' => [
				'allBorders' => [
					'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
					'color' => ['argb' => 'FF000000'],
				],
			],
		];
		$sheet->getStyle('A1:G'.($column-1))->applyFromArray($styleArray);

		$sheet->getColumnDimension('A')->setAutoSize(true);
		$sheet->getColumnDimension('B')->setAutoSize(true);
		$sheet->getColumnDimension('C')->setAutoSize(true);
		$sheet->getColumnDimension('D')->setAutoSize(true);
		$sheet->getColumnDimension('E')->setAutoSize(true);
		$sheet->getColumnDimension('F')->setAutoSize(true);
		$sheet->getColumnDimension('G')->setAutoSize(true);

		$writer = new Xlsx($spreadsheet);
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename='.$filename);
		header('Cache-Control: max-age=0');
		$writer->save('php://output');
		exit();
	}

	public function import()
	{
		$file = $this->request->getFile('file_excel');
		$extension = $file->getClientExtension();
		if($extension == 'xlsx' || $extension == 'xls') {
			if($extension == 'xls') {
				$reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
			} else {
				$reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
			}
			$spreadsheet = $reader->load($file);
			$contacts = $spreadsheet->getActiveSheet()->toArray();
			foreach ($contacts as $key => $value) {
				if($key == 0) {
					continue;
				}
				$data = [
					'name_contact' => $value[1],
					'name_alias' => $value[2],
					'phone' => $value[3],
					'email' => $value[4],
					'address' => $value[5],
					'info_contact' => $value[6],
					'id_group' => 0,
				];
				$this->contact->insert($data);
			}
			return redirect()->back()->with('success', 'Data Excel Berhasil Diimport');
		} else {
			return redirect()->back()->with('error', 'Format File Tidak Sesuai');
		}
	}

}
