<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	public function __construct() {
		parent::__construct();
		if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 3 ){
				redirect(base_url("login"));
			}
	//	$this->load->library('Pdf');
	 }

	public function index()
	{
		$data = [
			'name'		=> $this->session->userdata('nama'), 
			'lengkap'	=> $this->session->userdata('lengkap'),
			'conten'	=> 'conten_koor/dashboard',
			'title'		=> 'Dashboard',
			'rt'		=> $this->M_data->penerima_zakat_rt($this->session->userdata('id_koor')),
			'nominal_donatur'	=> $this->M_data->total_nominal_donatur()
		];
		$this->load->view('template_koor/conten',$data);
	}
}