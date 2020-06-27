<?php 

/**
 * 
 */
class Panitia extends CI_Controller
{
	public function __construct() {
		parent::__construct();
		if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 ){
				redirect(base_url("login"));
			}
	//	$this->load->library('Pdf');
	 }
	
	function index()
	{
		$data = [
			'name'		=> $this->session->userdata('nama'),
			'lengkap'	=> $this->session->userdata('lengkap'),
			'conten'	=> 'conten/panitia',
			'title'		=> 'Data Panitia Zakat',
			'jabatan'	=> $this->M_data->get_data('tbl_jabatan'),
			'alamat'	=> $this->M_data->get_data('tbl_master_alamat'),
			'panitia'	=> $this->M_data->panitia(),
			'header_css'=> array(
				'assets/template/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css',
				'assets/template/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css',
				'assets/template/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css',
				'assets/template/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css',
				'assets/template/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css',
			),
			'footer_js' => array(
				'assets/template/vendors/datatables.net/js/jquery.dataTables.min.js',
				'assets/template/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js',
				'assets/template/vendors/datatables.net-buttons/js/dataTables.buttons.min.js',
				'assets/template/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js',
				'assets/template/vendors/datatables.net-buttons/js/buttons.flash.min.js',
				'assets/template/vendors/datatables.net-buttons/js/buttons.html5.min.js',
				'assets/template/vendors/datatables.net-buttons/js/buttons.print.min.js',
				'assets/template/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js',
				'assets/template/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js',
				'assets/template/vendors/datatables.net-responsive/js/dataTables.responsive.min.js',
				'assets/template/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js',
				'assets/template/vendors/datatables.net-scroller/js/dataTables.scroller.min.js',
				'assets/template/vendors/jszip/dist/jszip.min.js',
				'assets/template/vendors/pdfmake/build/pdfmake.min.js',
				'assets/template/vendors/pdfmake/build/vfs_fonts.js',
				'assets/js/sweetalert2.all.min.js',
				'assets/js/alert.js'
			)
		];
		$this->load->view('template/conten',$data);
	}

	function upload($name, $directory)
	{
		$nama_panitia =  $this->input->post('nama_panitia');
		$gbr_name = '';
		$config['upload_path'] = './assets/'.$directory; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['max_size'] = '6072'; //maksimum besar file 3M
        $config['max_width']  = '5000'; //lebar maksimum 5000 px
        $config['max_height']  = '5000'; //tinggi maksimu 5000 px
        $config['file_name'] = 'PANITIA_'.date('dmYHis'); //nama yang terupload nantinya

        $this->upload->initialize($config);
        if($this->upload->do_upload($name)){
        	$fileData = $this->upload->data();
        	$gbr_name = $fileData['file_name'];
        }
        return $gbr_name;
	}

	public function tambah_data_panitia()
	{
		$gambar = $this->upload('filefoto','foto_panitia'); //(filefoto)= name pada form yang barada di view, galler adalah folder directory
		$data = array(
					'foto_panitia' 		=> $gambar,
					'nama_panitia' 		=> $this->input->post('nama_panitia'),
					'jabatan_panitia' 	=> $this->input->post('jabatan'),
					'alamat'			=> $this->input->post('alamat'),
					'kontak'	=> $this->input->post('kontak')
				);
		$table = 'tbl_panitia';
		$this->M_data->simpan_data($table,$data);//akses model untuk menyimpan ke database
		$this->session->set_flashdata('panitia', 'Ditambahkan');
		redirect('admin/Panitia');
	}

	public function hapus_panitia($id)
	{
		$image = $this->M_data->get_data_by_id('tbl_panitia',array('id_panitia'=>$id));
		$path = './assets/foto_panitia/';
		foreach ($image->result() as $row){
				unlink($path.$row->foto_panitia);
		}
		$table = 'tbl_panitia';
		$where = array('id_panitia' => $id);
		$this->M_data->hapus_data($table,$where);
		$this->session->set_flashdata('panitia', 'Dihapus');
		redirect('admin/panitia');
	}

	function update_data_panitia($id){
		$gambar = $this->M_data->get_data_by_id('tbl_panitia',array('id_panitia' => $id ));
		foreach ($gambar->result() as $row) 
		{
			$foto = $row->foto_panitia; //untuk mengambil gambar pada colom gambar di database berdasarkan ID
		}
		if ($_FILES["filefoto"]['error']) {
			
			$data = array(
					'foto_panitia' 		=> $foto,
					'nama_panitia' 		=> $this->input->post('nama_panitia'),
					'jabatan_panitia' 	=> $this->input->post('jabatan'),
					'alamat' 			=> $this->input->post('alamat'),
					'kontak'			=> $this->input->post('kontak')
				);
		$this->M_data->update_data('tbl_panitia',$data,array('id_panitia' => $id ));
		$this->session->set_flashdata('panitia', 'Diubah');
		redirect('admin/panitia');
		} else {
			unlink('./assets/foto_panitia/'.$foto);
			$gambar = $this->upload('filefoto','foto_panitia');
			$data = array(
					'foto_panitia' 		=> $gambar,
					'nama_panitia' 		=> $this->input->post('nama_panitia'),
					'jabatan_panitia' 	=> $this->input->post('jabatan'),
					'alamat' 			=> $this->input->post('alamat'),
					'kontak'			=> $this->input->post('kontak')
				);
		$this->M_data->update_data('tbl_panitia',$data,array('id_panitia' => $id ));
		$this->session->set_flashdata('panitia', 'Diperbarui');
		redirect('admin/panitia');	
		}
	}
}