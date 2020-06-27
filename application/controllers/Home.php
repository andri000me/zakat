<?php 

/**
 * 
 */
class Home extends CI_Controller
{
	
	public function index()
	{
		$data = [
			'title'		=> 'Masjid Besar Nurul Huda',
			'conten'	=> 'conten_home/home',
			'fitrah'	=> $this->M_data->jumlah_fitrah(),
			'maal'		=> $this->M_data->jumlah_maal(),
			'beras_fitrah'	=> $this->M_data->jumlah_beras_fitrah(),
			'zakat_maal'=> $this->M_data->jumlah_zakat_maal(),
			'nominal'	=> $this->M_data->total_nominal_donatur(),
			'donatur'	=> $this->M_data->donatur()
		];
		$this->load->view('template_home/conten',$data);
	}
}