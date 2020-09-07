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
            'conten'    => 'conten/spk_alt_ghorim',
            'title'     => 'Perhitungan Alternatif',
            'bobot'     => $this->M_data->get_data('tbl_master_bobot'),
            'footer_js' => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function hasil_alt_ghroim()
    {
        $data = [
            'name'        => $this->session->userdata('nama'),
            'lengkap'     => $this->session->userdata('lengkap'),
            'conten'      => 'conten/hasil_alt_ghorim',
            'title'       => 'Hasil Perbandingan Alternatif Ghorim',
            'ghorim'      => $this->M_data->hasil_ghorim(),
            'footer_js'   => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_alt_ghorim()
    {
        $table = 'tbl_alt_ghorim';
        $data = array(
            'G11'   => $this->input->post('G11'),
            'G12'   => $this->input->post('G12'),
            'G13'   => $this->input->post('G13'),
            'G21'   => $this->input->post('G21'),
            'G22'   => $this->input->post('G22'),
            'G23'   => $this->input->post('G23'),
            'G31'   => $this->input->post('G31'),
            'G32'   => $this->input->post('G32'),
            'G33'   => $this->input->post('G33')

        );
        $this->M_data->simpan_data($table, $data);
        redirect('admin/perhitungan/hasil_alt_ghroim');
    }

    public function alt_budak()
    {
        $data = [
            'name'      => $this->session->userdata('nama'),
            'lengkap'   => $this->session->userdata('lengkap'),
            'conten'    => 'conten/spk_alt_budak',
            'title'     => 'Perhitungan Alternatif',
            'bobot'     => $this->M_data->get_data('tbl_master_bobot'),
            'footer_js' => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function hasil_alt_budak()
    {
        $data = [
            'name'        => $this->session->userdata('nama'),
            'lengkap'     => $this->session->userdata('lengkap'),
            'conten'      => 'conten/hasil_alt_budak',
            'title'       => 'Hasil Perbandingan Alternatif Ghorim',
            'budak'      => $this->M_data->hasil_budak(),
            'footer_js'   => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_alt_budak()
    {
        $table = 'tbl_alt_budak';
        $data = array(
            'B11'   => $this->input->post('B11'),
            'B12'   => $this->input->post('B12'),
            'B13'   => $this->input->post('B13'),
            'B21'   => $this->input->post('B21'),
            'B22'   => $this->input->post('B22'),
            'B23'   => $this->input->post('B23'),
            'B31'   => $this->input->post('B31'),
            'B32'   => $this->input->post('B32'),
            'B33'   => $this->input->post('B33')

        );
        $this->M_data->simpan_data($table, $data);
        redirect('admin/perhitungan/hasil_alt_budak');
    }

    public function alt_miskin()
    {
        $data = [
            'name'      => $this->session->userdata('nama'),
            'lengkap'   => $this->session->userdata('lengkap'),
            'conten'    => 'conten/spk_alt_miskin',
            'title'     => 'Perhitungan Alternatif',
            'bobot'     => $this->M_data->get_data('tbl_master_bobot'),
            'footer_js' => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function hasil_alt_miskn()
    {
        $data = [
            'name'        => $this->session->userdata('nama'),
            'lengkap'     => $this->session->userdata('lengkap'),
            'conten'      => 'conten/hasil_alt_miskin',
            'title'       => 'Hasil Perbandingan Alternatif Miskin',
            'miskin'      => $this->M_data->hasil_miskin(),
            'footer_js'   => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_alt_miskin()
    {
        $table = 'tbl_alt_miskin';
        $data = array(
            'M11'   => $this->input->post('M11'),
            'M12'   => $this->input->post('M12'),
            'M13'   => $this->input->post('M13'),
            'M21'   => $this->input->post('M21'),
            'M22'   => $this->input->post('M22'),
            'M23'   => $this->input->post('M23'),
            'M31'   => $this->input->post('M31'),
            'M32'   => $this->input->post('M32'),
            'M33'   => $this->input->post('M33')

        );
        $this->M_data->simpan_data($table, $data);
        redirect('admin/perhitungan/hasil_alt_miskin');
    }

    public function alt_ibnu_sabil()
    {
        $data = [
            'name'      => $this->session->userdata('nama'),
            'lengkap'   => $this->session->userdata('lengkap'),
            'conten'    => 'conten/spk_alt_ibnu_sabil',
            'title'     => 'Perhitungan Alternatif',
            'bobot'     => $this->M_data->get_data('tbl_master_bobot'),
            'footer_js' => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function hasil_alt_ibnu_sabil()
    {
        $data = [
            'name'        => $this->session->userdata('nama'),
            'lengkap'     => $this->session->userdata('lengkap'),
            'conten'      => 'conten/hasil_alt_ibnu_sabil',
            'title'       => 'Hasil Perbandingan Alternatif Ibnu Sabil',
            'ibnu_sabil'  => $this->M_data->hasil_ibnu_sabil(),
            'footer_js'   => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_alt_ibnu_sabil()
    {
        $table = 'tbl_alt_ibnu_sabil';
        $data = array(
            'IS11'   => $this->input->post('IS11'),
            'IS12'   => $this->input->post('IS12'),
            'IS13'   => $this->input->post('IS13'),
            'IS21'   => $this->input->post('IS21'),
            'IS22'   => $this->input->post('IS22'),
            'IS23'   => $this->input->post('IS23'),
            'IS31'   => $this->input->post('IS31'),
            'IS32'   => $this->input->post('IS32'),
            'IS33'   => $this->input->post('IS33')

        );
        $this->M_data->simpan_data($table, $data);
        redirect('admin/perhitungan/hasil_alt_ibnu_sabil');
    }

    public function alt_mualaf()
    {
        $data = [
            'name'      => $this->session->userdata('nama'),
            'lengkap'   => $this->session->userdata('lengkap'),
            'conten'    => 'conten/spk_alt_mualaf',
            'title'     => 'Perhitungan Alternatif',
            'bobot'     => $this->M_data->get_data('tbl_master_bobot'),
            'footer_js' => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function hasil_alt_mualaf()
    {
        $data = [
            'name'        => $this->session->userdata('nama'),
            'lengkap'     => $this->session->userdata('lengkap'),
            'conten'      => 'conten/hasil_alt_mualaf',
            'title'       => 'Hasil Perbandingan Alternatif Mualaf',
            'mualaf'  => $this->M_data->hasil_mualaf(),
            'footer_js'   => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }

    public function tambah_alt_mualaf()
    {
        $table = 'tbl_alt_mualaf';
        $data = array(
            'MU11'   => $this->input->post('MU11'),
            'MU12'   => $this->input->post('MU12'),
            'MU13'   => $this->input->post('MU13'),
            'MU21'   => $this->input->post('MU21'),
            'MU22'   => $this->input->post('MU22'),
            'MU23'   => $this->input->post('MU23'),
            'MU31'   => $this->input->post('MU31'),
            'MU32'   => $this->input->post('MU32'),
            'MU33'   => $this->input->post('MU33')

        );
        $this->M_data->simpan_data($table, $data);
        redirect('admin/perhitungan/hasil_alt_mualaf');
    }

    public function hasil_perangkingan()
    {
        $data = [
            'name'        => $this->session->userdata('nama'),
            'lengkap'     => $this->session->userdata('lengkap'),
            'conten'      => 'conten/hasil_perangkingan',
            'title'       => 'Hasil Perangkingan',
            // 'mualaf'  => $this->M_data->hasil_mualaf(),
            'footer_js'   => array(
                'assets/js/ahp.js',
                'assets/js/sweetalert2.all.min.js',
                'assets/js/alert.js'
            )
        ];
        $this->load->view('template/conten', $data);
    }
}
