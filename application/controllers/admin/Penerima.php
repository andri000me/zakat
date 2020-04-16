<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penerima extends CI_Controller {
	public function __construct() {
		parent::__construct();
		if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 ){
				redirect(base_url("login"));
			}
	//	$this->load->library('Pdf');
			$this->load->library('PHPExcel');
	 }

	public function index()
	{

		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['conten'] 		= 'conten/penerima_zakat';
		$data['title'] 			= 'Data Penerima Zakat';
		$data['koor']			= $this->M_data->get_data('tbl_koordinator');
		$data['master_penerima']= $this->M_data->get_data('tbl_master_penerima');
		$data['penerima']		= $this->M_data->penerima_zakat();
		$this->load->view('template/conten',$data);
	}

	public function tambah_penerima()
	{
		$table='tbl_penerima_zakat';
		$data= array(	
						'nama_penerima'  => $this->input->post('nama_penerima'),
						'ket_penerima' 	 => $this->input->post('ket_penerima'),
						'koordinator' 	 => $this->input->post('koor')
						 );
		$this->M_data->simpan_data($table,$data);
		redirect('admin/penerima');
	}

	public function update_data_penerima($id)
	{
		$table='tbl_penerima_zakat';
		$data= array(	'nama_penerima'  => $this->input->post('nama_penerima'),
						'ket_penerima' 	 => $this->input->post('ket_penerima'),
						'koordinator' 	 => $this->input->post('koor')
						 );
		$this->M_data->update_data($table,$data,array('id_penerima' => $id));
		redirect('admin/penerima');
	}

	public function hapus_data_penerima($id)
	{
		$table = 'tbl_penerima_zakat';		
		$where = array('id_penerima' => $id);
		$this->M_data->hapus_data($table,$where);
		redirect('admin/penerima');
	}

	public function import(){
		$config['upload_path'] = './assets/doc/';
		$config['allowed_types'] = 'xlsx|xls';

		$this->load->library('upload', $config);

		if (! $this->upload->do_upload()){
		$this->session->set_flashdata("gagal","<center><strong>Import Data GAGAL !!!</strong></center>");
		redirect('admin/penerima');
		}else{
		$data = array('upload_data' => $this->upload->data());
        $upload_data = $this->upload->data(); //Returns array of containing all of the data related to the file you uploaded.
        $filename = $upload_data['file_name'];
        $this->M_data->upload_data_penerima($filename);
        unlink('./assets/doc/'.$filename);
        $this->session->set_flashdata("berhasil","<center><strong>Import Data BERHASIL!!!</strong></center>");
		redirect('admin/penerima');}
	}
}