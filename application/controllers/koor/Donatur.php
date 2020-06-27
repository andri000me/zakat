<?php 

/**
 * 
 */
class Donatur extends CI_Controller
{
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
	 		'title'		=> 'Data Pemberi Donatur Zakat',
	 		'conten'	=> 'conten_koor/donatur',
	 		'donatur'	=> $this->M_data->get_data('tbl_donatur'),
	 		'header_css'=> array(
	 			'assets/template/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css',
				'assets/template/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css',
				'assets/template/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css',
				'assets/template/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css',
				'assets/template/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css',
	 		),
	 		'footer_js'	=> array(
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
	 	$this->load->view('template_koor/conten', $data);
	 }

	 function upload($name, $directory){
		$gbr_name = '';
		$config['upload_path'] = './assets/'.$directory; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['max_size'] = '6072'; //maksimum besar file 3M
        $config['max_width']  = '5000'; //lebar maksimum 5000 px
        $config['max_height']  = '5000'; //tinggi maksimu 5000 px
        $config['file_name'] = 'DONATUR_'.date('dmYHis'); //nama yang terupload nantinya

        $this->upload->initialize($config);
        if($this->upload->do_upload($name)){
        	$fileData = $this->upload->data();
        	$gbr_name = $fileData['file_name'];
        }
        return $gbr_name;
	}

	public function tambah_data_donatur()
	{
		$date = date('Y-m-d H:i:s');
		$gambar = $this->upload('filefoto','bukti_penerima'); //(filefoto)= name pada form yang barada di view, galler adalah folder directory
		$data = array(
					'bukti_terima' 		=> $gambar,
					'nama_donatur' 		=> $this->input->post('nama_donatur'),
					'alamat_donatur' 	=> $this->input->post('alamat_donatur'),
					'nominal'			=> $this->input->post('nominal'),
					'petugas_penerima'	=> $this->input->post('petugas'),
					'data_validation' 	=> $date
				);
		$table = 'tbl_donatur';
		$this->M_data->simpan_data($table,$data);//akses model untuk menyimpan ke database
		$this->session->set_flashdata('donatur', 'Ditambahkan');
		redirect('koor/Donatur');
	}

	public function hapus_donatur($id)
	{
		$image = $this->M_data->get_data_by_id('tbl_donatur',array('id_donatur'=>$id));
		$path = './assets/bukti_penerima/';
		foreach ($image->result() as $row){
				unlink($path.$row->bukti_terima);
		}
		$table = 'tbl_donatur';
		$where = array('id_donatur' => $id);
		$this->M_data->hapus_data($table,$where);
		$this->session->set_flashdata('donatur', 'Dihapus');
		redirect('koor/Donatur');
	}

	public function update_data_donatur($id){
		$dateubah = date('Y-m-d H:i:s');
		$table='tbl_donatur';
		$data= array(
						'nama_donatur' 		 => $this->input->post('nama_donatur'),
						'alamat_donatur' 	 => $this->input->post('alamat_donatur'),
						'nominal' 			 => $this->input->post('nominal'),
						'petugas_penerima' 	 => $this->input->post('petugas'),
						'data_validation'	 => $dateubah
						 );
		$this->M_data->update_data($table,$data,array('id_donatur' => $id));
		$this->session->set_flashdata('donatur', 'Diubah');
		redirect('koor/Donatur');
	}
}