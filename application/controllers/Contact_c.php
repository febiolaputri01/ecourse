<?php 

class Contact_c extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->model('Contact_m');
	}

	public function index(){
		$kontak = $this->Contact_m->getAll1();
		$data['kontak'] = $kontak;
		
		$this->load->view('parts/header', $data);
		$this->load->view('pages/Contact_v', $data);
		$this->load->view('parts/footer', $data);
	}
}