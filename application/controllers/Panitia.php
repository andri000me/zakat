<?php 

/**
 * 
 */
class Panitia extends CI_Controller
{
	
	public function index()
	{
		$data = [
			'title'		=> 'Data Panitia',
			'conten'	=> 'conten_home/panitia',
			'panitia'	=> $this->M_data->panitia()
		];
		$this->load->view('template_home/conten', $data);
	}
}