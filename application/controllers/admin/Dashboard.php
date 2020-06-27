<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
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
			'conten'	=> 'conten/dashboard',
			'title'		=> 'Dashboard',
			'jumlah_beras' => $this->M_data->jumlah_beras_fitrah(),
			'jumlah_maal'  => $this->M_data->jumlah_zakat_maal(),
			'fitrah'	=> $this->M_data->jumlah_fitrah(),
			'maal'		=> $this->M_data->jumlah_maal(),
			'user'		=> $this->M_data->jumlah_user(),
			'koor'		=> $this->M_data->jumlah_koor(),
			'rt01'		=> $this->M_data->penerima_rt01(),
			'rt02'		=> $this->M_data->penerima_rt02(),
			'rt03'		=> $this->M_data->penerima_rt03(),
			'rt18'		=> $this->M_data->penerima_rt18(),
			'rt19'		=> $this->M_data->penerima_rt19(),
			'rt20'		=> $this->M_data->penerima_rt20(),
			'nominal_donatur'	=> $this->M_data->total_nominal_donatur(),
			'jumlah_donatur'	=> $this->M_data->donatur()
		];
		$this->load->view('template/conten',$data);
	}
}