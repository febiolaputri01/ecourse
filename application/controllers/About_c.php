<?php 

class About_c extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->model('About_m');
	}

	public function index(){
		$tentang = $this->About_m->getAll1();
		$data['tentang'] = $tentang;

		$kontak = $this->About_m->getAll4();
		$data['kontak'] = $kontak;

		$this->load->view('parts/header', $data);
		$this->load->view('pages/About_v', $data);
		$this->load->view('parts/footer', $data);
	}
}