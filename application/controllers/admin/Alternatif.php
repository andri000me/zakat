<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alternatif extends CI_Controller {
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
			'conten'	=> 'conten/master_alternatif',
			'title'		=> 'Master Kriteria',
			'alternatif'	=> $this->M_data->get_data('tbl_master_alternatif')
		];
		$this->load->view('template/conten',$data);
	}

	public function tambah_alternatif()
	{
		$table = 'tbl_master_alternatif';
		$data = array(
			'kode_alternatif'		=> $this->input->post('nilai_alternatif'),
			'nama_alternatif'		=> $this->input->post('keterangan')
		);
		$this->M_data->simpan_data($table,$data);
		redirect('admin/alternatif');
	}

	public function edit_kriteria($id)
	{
		$table = 'tbl_master_kriteria';
		$data = array(
			'kode_kriteria'		=> $this->input->post('kd_kriteria'),
			'nama_kriteria'		=> $this->input->post('ket_kriteria')
		);
		$where = array('id_kriteria' => $id);
		$this->M_data->update_data($table,$data,$where);
		redirect('admin/kriteria');
	}
}