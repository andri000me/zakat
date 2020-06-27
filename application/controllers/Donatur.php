<?php 

/**
 * 
 */
class Donatur extends CI_Controller
{

	
	
	public function index()
	{
		$data = [
			'title'		=> 'Data Penerima Zakat',
			'penerima'	=> $this->M_data->pagination_penerima()
		];

		$this->load->view('conten_home/donatur', $data);
	}
}