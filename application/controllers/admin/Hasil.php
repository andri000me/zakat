<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Hasil extends CI_Controller
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
            'conten'    => 'conten/hasil_spk',
            'title'        => 'Hasil Perhitungan AHP',
            'kriteria'    => $this->M_data->hasil_kriteria(),
            'ghorim'      => $this->M_data->hasil_ghorim(),
            'budak'       => $this->M_data->hasil_budak(),
            'miskin'      => $this->M_data->hasil_miskin(),
            'ibnu_sabil'  => $this->M_data->hasil_ibnu_sabil(),
            'mualaf'      => $this->M_data->hasil_mualaf(),
            'rank'        => $this->M_data->hasil_rank()
        ];
        $this->load->view('template/conten', $data);
    }
}
