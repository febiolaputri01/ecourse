<?php

class Courses_c extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->model('Courses_m');
		$this->load->model('Home_m');
	}

	public function index(){
		$kursus = $this->Home_m->getAllKursus();
		$data['kursus'] = $kursus;

		$kontak = $this->Courses_m->getAll4();
		$data['kontak'] = $kontak;

		$this->load->view('parts/header', $data);
		$this->load->view('pages/Courses_v', $data);
		$this->load->view('parts/footer', $data);
	}

	public function detail($id)
	{
		$data['detail'] = $this->Courses_m->getDetail($id);
		//print_r($this->db->last_query());
		$data['video'] = $this->Courses_m->getVideo($id);
	//	$data['pengajar'] = $this->Courses_m->getPengajar($data['detail']->id_pengajar);

		$this->load->view('parts/header', $data);
		$this->load->view('pages/Detail', $data);
		$this->load->view('parts/footer', $data);
	}
}
