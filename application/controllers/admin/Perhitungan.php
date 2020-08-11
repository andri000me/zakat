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
            'conten'    => 'conten/perhitungan',
            'title'        => 'Perhitungan AHP',
            'kriteria'  => $this->M_data->get_data('tbl_master_kriteria'),
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

    // public function tmbah_bobot()
    // {
    // 	$table = 'tbl_master_bobot';
    // 	$data = array(
    // 		'nominal_bobot'		=> $this->input->post('nilai_bobot'),
    // 		'ket_bobot'		=> $this->input->post('keterangan')
    // 	);
    // 	$this->M_data->simpan_data($table,$data);
    // 	redirect('admin/bobot');
    // }

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
