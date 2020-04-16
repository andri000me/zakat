<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Setting extends CI_Controller {
	public function __construct() {
		parent::__construct();
		if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 ){
				redirect(base_url("login"));
			}
	//	$this->load->library('Pdf');
	 }

	public function index()
	{
		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['conten'] = 'conten/setting_user_petugas';
		$data['title'] = 'Setting User Petugas';
		$data['user'] = $this->M_data->get_data('tbl_user');
		$this->load->view('template/conten',$data);
	}

	public function tambah_user(){
		$table='tbl_user';
		$data= array(	
						'nama_lengkap'  => $this->input->post('nama_user'),
						'nama_user' 	=> $this->input->post('panggilan'),
						'username' 		=> $this->input->post('username'),
						'password' 		=> md5($this->input->post('username')),
						'ket_pass' 		=> $this->input->post('username'),
						'level' 		=> $this->input->post('jabatan')
						 );
		$this->M_data->simpan_data($table,$data);
		redirect('admin/setting');
	}

	public function update_user($id){
		$table='tbl_user';
		$data= array(	'nama_lengkap'  => $this->input->post('nama_user'),
						'username' 		=> $this->input->post('username'),
						'password' 		=> md5($this->input->post('password')),
						'ket_pass' 		=> $this->input->post('password'),
						'level' 		=> $this->input->post('jabatan')
						 );
		$this->M_data->update_data($table,$data,array('id_user' => $id));
		redirect('admin/Setting');
	}

	public function user_koor()
	{
		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['conten'] = 'conten/setting_user_koor';
		$data['title'] = 'Setting User Koordinator';
		$data['koor'] = $this->M_data->get_data('tbl_koordinator');
		$this->load->view('template/conten',$data);
	}

	public function tambah_user_koor(){
		$table='tbl_koordinator';
		$data= array(	
						'nama_koor'  	=> $this->input->post('nama_koor'),
						'panggilan_koor'=> $this->input->post('panggilan'),
						'alamat_koor' 	=> $this->input->post('alamat_koor'),
						'username' 		=> $this->input->post('username'),
						'password' 		=> md5($this->input->post('username')),
						'ket_pass' 		=> $this->input->post('username'),
						'level'			=> '3'
						 );
		$this->M_data->simpan_data($table,$data);
		redirect('admin/setting/user_koor');
	}

	public function update_user_koor($id){
		$table='tbl_koordinator';
		$data= array(	'nama_koor'  	=> $this->input->post('nama_koor'),
						'panggilan_koor'=> $this->input->post('panggilan'),
						'alamat_koor' 	=> $this->input->post('alamat_koor'),
						'username' 		=> $this->input->post('username'),
						'password' 		=> md5($this->input->post('username')),
						'ket_pass' 		=> $this->input->post('username'),
						'level'			=> '3'
						 );
		$this->M_data->update_data($table,$data,array('id_koor' => $id));
		redirect('admin/Setting/user_koor');
	}

	public function hapus_user($id)
	{
		$table = 'tbl_koordinator';		
		$where = array('id_koor' => $id);
		$this->M_data->hapus_data($table,$where);
		redirect('admin/Setting/user_koor');
	}

	public function kop_laporan()
	{
		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['conten'] = 'conten/setting_kop';
		$data['title'] = 'Setting Kop Laporan';
		$data['kop']= $this->M_data->get_data_by_id('tbl_master_laporan', array('id_laporan' => 1 ));
		$this->load->view('template/conten',$data);
	}

	function edit(){
		$id = 1;
		$header = $this->input->post('header');
		$bidang = $this->input->post('bidang');
		$hijriyah = $this->input->post('hijriyah');
		$masehi = $this->input->post('masehi');
		$jabatan = $this->input->post('jabatan');
		$sekretaris = $this->input->post('sekretaris');
		$table = 'tbl_master_laporan';
		$where  = array('id_laporan' => $id);
		$data = array(
			'jabatan_laporan' => $header,
			'nama_pemilik_jabatan' => $bidang,
			'jabatan' => $jabatan,
			'nama_sekretaris' => $sekretaris
		);
		$this->M_data->update_data($table, $data, $where);
		redirect('admin/Setting/kop_laporan');
	}

	public function master_kwitansi()
	{
		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['conten'] 	 = 'conten/master_kwitansi';
		$data['title'] 		 = 'Setting Master Kwitansi';
		$data['get_data'] 	 = $this->M_data->get_data_by_id('tbl_master_kwitansi',array('id_kwitansi' => 1 ));
		$this->load->view('template/conten',$data);
	}

	public function update_master(){
		if (!empty($_FILES['filefoto']['name'])) {
			$image = $this->M_data->get_data_by_id('tbl_master_kwitansi',array('id_kwitansi' => 1));
			$path = './assets/img/';
			foreach ($image->result() as $row){
					unlink($path.$row->nama_foto);
			}
			$this->load->library('upload');
			$nmfile = "logo_".time(); //nama file saya beri nama langsung dan diikuti fungsi time
			$config['upload_path'] = './assets/img'; //path folder
			$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
			$config['max_size'] = '3072'; //maksimum besar file 3M
			$config['max_width']  = '5000'; //lebar maksimum 5000 px
			$config['max_height']  = '5000'; //tinggi maksimu 5000 px
			$config['file_name'] = $nmfile; //nama yang terupload nantinya

			$this->upload->initialize($config);

			if($_FILES['filefoto']['name'])
			{
					if ($this->upload->do_upload('filefoto'))
					{
						$gbr = $this->upload->data();
						$data = array(	'logo_organisasi'  => $gbr['file_name'],
										'nama_organisasi'  => $this->input->post('nama_organisasi'),
										'nama_lembaga' 	   => $this->input->post('nama_lembaga'),
										'pembayaran' 	   => $this->input->post('pembayaran'),
										'kota_kwitansi'	   => $this->input->post('kota_organisasi')
							);
						$where = array('id_kwitansi'=> 1);
						$this->M_data->update_data('tbl_master_kwitansi',$data,$where); //akses model untuk menyimpan ke database
						//pesan yang muncul jika berhasil diupload pada session flashdata
						$this->session->set_flashdata("berhasil", "<center><b>Update Foto & Data Success</b></center>");
						redirect('admin/setting/master_kwitansi');
					}else{
						//pesan yang muncul jika terdapat error dimasukkan pada session flashdata
						$this->session->set_flashdata("Gagal", "<center><b>Update Foto & Data Gagal</b></center>");
						redirect('admin/setting/master_kwitansi'); //jika gagal maka akan ditampilkan form upload
					}
			}
		}else {
			$data = array(
						'nama_organisasi'  => $this->input->post('nama_organisasi'),
						'nama_lembaga' 	   => $this->input->post('nama_lembaga'),
						'pembayaran' 	   => $this->input->post('pembayaran'),
						'kota_kwitansi'	   => $this->input->post('kota_organisasi')
					);
			$where = array(
				'id_kwitansi'=>1
			);
			$this->M_data->update_data('tbl_master_kwitansi',$data,$where);
			$this->session->set_flashdata("success", "<center><b>Update Data Success</b></center>");
			redirect('admin/setting/master_kwitansi');
		}
	}

	public function master_lokasi()
	{
		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['conten'] 	 	= 'conten/setting_lokasi';
		$data['title'] 		 	= 'Setting Master Lokasi';
		$data['lokasi'] 	 	= $this->M_data->get_data_by_id('tbl_master_lokasi',array('id_lokasi' => 1 ));
		$this->load->view('template/conten',$data);
	}

	public function update_master_lokasi(){
		if (!empty($_FILES['filefoto']['name'])) {
			$image = $this->M_data->get_data_by_id('tbl_master_lokasi',array('id_lokasi' => 1));
			$path = './assets/lokasi/';
			foreach ($image->result() as $row){
					unlink($path.$row->nama_foto);
			}
			$this->load->library('upload');
			$nmfile = "lok_".time(); //nama file saya beri nama langsung dan diikuti fungsi time
			$config['upload_path'] = './assets/lokasi'; //path folder
			$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
			$config['max_size'] = '3072'; //maksimum besar file 3M
			$config['max_width']  = '5000'; //lebar maksimum 5000 px
			$config['max_height']  = '5000'; //tinggi maksimu 5000 px
			$config['file_name'] = $nmfile; //nama yang terupload nantinya

			$this->upload->initialize($config);

			if($_FILES['filefoto']['name'])
			{
					if ($this->upload->do_upload('filefoto'))
					{
						$gbr = $this->upload->data();
						$data = array(	'foto_lokasi'	   => $gbr['file_name'],
										'nama_lokasi'	   => $this->input->post('nama_lokasi'),
										'alamat_lokasi'	   => $this->input->post('alamat_lokasi'),
										'kontak_lokasi'	   => $this->input->post('kontak_lokasi')
							);
						$where = array('id_lokasi'=> 1);
						$this->M_data->update_data('tbl_master_lokasi',$data,$where); //akses model untuk menyimpan ke database
						//pesan yang muncul jika berhasil diupload pada session flashdata
						$this->session->set_flashdata("berhasil", "<center><b>Update Logo / Data Success</b></center>");
						redirect('admin/setting/master_lokasi');
					}else{
						//pesan yang muncul jika terdapat error dimasukkan pada session flashdata
						$this->session->set_flashdata("Gagal", "<center><b>Update Logo / Data Gagal</b></center>");
						redirect('admin/setting/master_lokasi'); //jika gagal maka akan ditampilkan form upload
					}
			}
		}else {
			$data = array(
						'foto_lokasi'	   => $gbr['file_name'],
						'nama_lokasi'	   => $this->input->post('nama_lokasi'),
						'alamat_lokasi'	   => $this->input->post('alamat_lokasi'),
						'kontak_lokasi'	   => $this->input->post('kontak_lokasi')
					);
			$where = array(
				'id_lokasi'=>1
			);
			$this->M_data->update_data('tbl_master_lokasi',$data,$where);
			$this->session->set_flashdata("success", "<center><b>Update Data Lokasi Success</b></center>");
			redirect('admin/setting/master_lokasi');
		}
	}

	public function backup_data()
	{
		$data['name'] 			= $this->session->userdata('nama');
		$data['lengkap'] 		= $this->session->userdata('lengkap');
		$data['conten'] 	 	= 'conten/backup_data';
		$data['title'] 		 	= 'Backup All Data';
		$this->load->view('template/conten',$data);
	}

	public function backup()
	{
		$this->load->dbutil();
		   
		     $prefs = array(
		       'format' => 'zip',
		       'filename' => 'my_db_backup.sql'
		     );
		   
		     $backup =& $this->dbutil->backup($prefs);
		   
		     $db_name = 'db_zakat-' . date("Y-m-d-H-i-s") . '.zip'; // file name
		     $save  = 'assets/backup/' . $db_name; // dir name backup output destination
		   
		     $this->load->helper('file');
		     write_file($save, $backup);
		   
		     $this->load->helper('download');
		     force_download($db_name, $backup);
	}
}
