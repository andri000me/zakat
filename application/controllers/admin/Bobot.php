<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class bobot extends CI_Controller {
	public function __construct() {
		parent::__construct();
		if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 ){
				redirect(base_url("login"));
			}
	//	$this->load->library('Pdf');
	 }

	public function index()
	{
		$data = [
			'name'		=> $this->session->userdata('nama'),
			'lengkap'	=> $this->session->userdata('lengkap'),
			'conten'	=> 'conten/master_bobot',
			'title'		=> 'Master Bobot',
			'bobot'		=> $this->M_data->get_data('tbl_master_bobot')
		];
		$this->load->view('template/conten',$data);
	}

	public function tmbah_bobot()
	{
		$table = 'tbl_master_bobot';
		$data = array(
			'nominal_bobot'		=> $this->input->post('nilai_bobot'),
			'ket_bobot'		=> $this->input->post('keterangan')
		);
		$this->M_data->simpan_data($table,$data);
		redirect('admin/bobot');
	}

	public function edit_bobot($id)
	{
		$table = 'tbl_master_bobot';
		$data = array(
			'nominal_bobot'		=> $this->input->post('nilai_bobot'),
			'ket_bobot'		=> $this->input->post('keterangan')
		);
		$where = array('id_bobot' => $id);
		$this->M_data->update_data($table,$data,$where);
		redirect('admin/bobot');
	}
}