<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Perhitungan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {
            redirect(base_url("login"));
        }
        //	$this->load->library('Pdf');
    }

    public function index()
    {
        $data = [
            'name'        => $this->session->userdata('nama'),
            'lengkap'    => $this->session->userdata('lengkap'),
            'conten'    => 'conten/spk_kriteria',
            'title'        => 'Perhitungan AHP',
            'bobot'     => $this->M_data->get_data('tbl_master_bobot'),
            // 'header_css' => array(
            //     'assets/template/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css',
            //     'assets/template/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css',
            //     'assets/template/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css',
            //     'assets/template/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css',
            //     'assets/template/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css',
            // ),
            'footer_js' => array(
                // 'assets/template/vendors/datatables.net/js/jquery.dataTables.min.js',
                // 'assets/template/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js',
                // 'assets/template/vendors/datatables.net-buttons/js/dataTables.buttons.min.js',
                // 'assets/template/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js',
                // 'assets/template/vendors/datatables.net-buttons/js/buttons.flash.min.js',
                // 'assets/template/vendors/datatables.net-buttons/js/buttons.html5.min.js',
                // 'assets/template/vendors/datatables.net-buttons/js/buttons.print.min.js',
                // 'assets/template/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js',
                // 'assets/template/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js',
                // 'assets/template/vendors/datatables.net-responsive/js/dataTables.responsive.min.js',
                // 'assets/template/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js',
                // 'assets/template/vendors/datatables.net-scroller/js/dataTables.scroller.min.js',
                // 'assets/template/vendors/jszip/dist/jszip.min.js',
                // 'assets/template/vendors/pdfmake/build/pdfmake.min.js',
                // 'assets/template/vendors/pdfmake/build/vfs_fonts.js',
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function hasil_perhitungan()
    {
        $data = [
            'name'        => $this->session->userdata('nama'),
            'lengkap'     => $this->session->userdata('lengkap'),
            'conten'      => 'conten/hasil_spk_kriteria',
            'title'       => 'Hasil Perbandingan Kriteria',
            'kriteria'    => $this->M_data->hasil_kriteria(),
            'footer_js'   => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_kriteria()
    {
        $table = 'tbl_spk_kriteria';
        $data = array(
            'C11'   => $this->input->post('C11'),
            'C12'   => $this->input->post('C12'),
            'C13'   => $this->input->post('C13'),
            'C14'   => $this->input->post('C14'),
            'C15'   => $this->input->post('C15'),
            'C21'   => $this->input->post('C21'),
            'C22'   => $this->input->post('C22'),
            'C23'   => $this->input->post('C23'),
            'C24'   => $this->input->post('C24'),
            'C25'   => $this->input->post('C25'),
            'C31'   => $this->input->post('C31'),
            'C32'   => $this->input->post('C32'),
            'C33'   => $this->input->post('C33'),
            'C34'   => $this->input->post('C34'),
            'C35'   => $this->input->post('C35'),
            'C41'   => $this->input->post('C41'),
            'C42'   => $this->input->post('C42'),
            'C43'   => $this->input->post('C43'),
            'C44'   => $this->input->post('C44'),
            'C45'   => $this->input->post('C45'),
            'C51'   => $this->input->post('C51'),
            'C52'   => $this->input->post('C52'),
            'C53'   => $this->input->post('C53'),
            'C54'   => $this->input->post('C54'),
            'C55'   => $this->input->post('C55')

        );
        $this->M_data->simpan_data($table, $data);
        redirect('admin/perhitungan/hasil_perhitungan');
    }

    public function alternatif()
    {
        $data = [
            'name'      => $this->session->userdata('nama'),
            'lengkap'   => $this->session->userdata('lengkap'),
            'conten'    => 'conten/perhitungan_alternatif',
            'title'     => 'Perhitungan Alternatif',
            'bobot'     => $this->M_data->get_data('tbl_master_bobot'),
            // 'header_css' => array(
            //     'assets/template/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css',
            //     'assets/template/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css',
            //     'assets/template/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css',
            //     'assets/template/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css',
            //     'assets/template/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css',
            // ),
            'footer_js' => array(
                // 'assets/template/vendors/datatables.net/js/jquery.dataTables.min.js',
                // 'assets/template/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js',
                // 'assets/template/vendors/datatables.net-buttons/js/dataTables.buttons.min.js',
                // 'assets/template/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js',
                // 'assets/template/vendors/datatables.net-buttons/js/buttons.flash.min.js',
                // 'assets/template/vendors/datatables.net-buttons/js/buttons.html5.min.js',
                // 'assets/template/vendors/datatables.net-buttons/js/buttons.print.min.js',
                // 'assets/template/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js',
                // 'assets/template/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js',
                // 'assets/template/vendors/datatables.net-responsive/js/dataTables.responsive.min.js',
                // 'assets/template/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js',
                // 'assets/template/vendors/datatables.net-scroller/js/dataTables.scroller.min.js',
                // 'assets/template/vendors/jszip/dist/jszip.min.js',
                // 'assets/template/vendors/pdfmake/build/pdfmake.min.js',
                // 'assets/template/vendors/pdfmake/build/vfs_fonts.js',
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    // public function edit_bobot($id)
    // {
    // 	$table = 'tbl_master_bobot';
    // 	$data = array(
    // 		'nominal_bobot'		=> $this->input->post('nilai_bobot'),
    // 		'ket_bobot'		=> $this->input->post('keterangan')
    // 	);
    // 	$where = array('id_bobot' => $id);
    // 	$this->M_data->update_data($table,$data,$where);
    // 	redirect('admin/bobot');
    // }
}
