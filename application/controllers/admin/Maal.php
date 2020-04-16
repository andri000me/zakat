<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Maal extends CI_Controller {
	public function __construct() {
		parent::__construct();
		if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 ){
				redirect(base_url("login"));
			}
		$this->load->library('Pdf');
	 }

	public function index()
	{

		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['conten'] 		= 'conten/zakat_maal';
		$data['title'] 			= 'Zakat Mall, Infaq dan Shodaqoh';
		$data['maal']			= $this->M_data->zakat_maal();
		$data['petugas']		= $this->M_data->get_data('tbl_koordinator');
		$this->load->view('template/conten',$data);
	}

	public function tambah_data_zakat_maal()
	{
		$date = date("Y-m-d");
		$table='tbl_zakat_maal';
		$data= array('nama_pemberi_zakat' 	=> $this->input->post('pemberi_zakat'),
						'kategori_zakat' 	=> $this->input->post('kategori'),
						'nominal_zakat'		=> $this->input->post('nominal'),
						'alamat' 			=> $this->input->post('alamat'),
						'petugas1'			=> $this->input->post('petugas1'),
						'petugas2'			=> $this->input->post('petugas2'),
						'tanggal'			=> $date
						 );
		$this->M_data->simpan_data($table,$data);
		redirect('admin/Maal');
	}

	public function update_data_maal($id){
		$date = date("Y-m-d");
		$table='tbl_zakat_maal';
		$data= array(
						'nama_pemberi_zakat' => $this->input->post('pemberi_zakat'),
						'kategori_zakat' 	 => $this->input->post('kategori'),
						'nominal_zakat' 	 => $this->input->post('nominal'),
						'alamat' 			 => $this->input->post('alamat'),
						'petugas1' 			 => $this->input->post('petugas1'),
						'petugas2' 			 => $this->input->post('petugas2'),
						'tanggal' 			 => $date
						 );
		$this->M_data->update_data($table,$data,array('id_zakat_maal' => $id));
		redirect('admin/Maal');
	}

	public function hapus_data($id){
		$table = 'tbl_zakat_maal';
		$where = array('id_zakat_maal' => $id);
		$this->M_data->hapus_data($table,$where);
		redirect('admin/Maal');
	}

	public function print_kwitansi($id){
		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['data_peserta'] = $this->M_data->get_data_by_id('tbl_zakat_maal',array('id_zakat_maal' => $id ));
		$peserta = $this->M_data->get_data_by_id('tbl_zakat_maal',array('id_zakat_maal' => $id ));
		foreach ($peserta->result() as $row) { 
			$nama = $row->nama_pemberi_zakat;
			$nominal = $row->nominal_zakat;
		}
		$title_page = 'Kwitansi_'.$nama;
		$data['data_master'] = $this->M_data->get_data_by_id('tbl_master_kwitansi',array('id_kwitansi' => 1 ));
		$html= $this->load->view('conten/print_kwitansi', $data,true);
		$this->pdf->pdf_create($html,$title_page,'A4','portraid');
	}
}
