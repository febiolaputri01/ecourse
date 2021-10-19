<?php

class Home_c extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->model('Home_m');
		$this->load->helper('url');
	}

	public function index(){
		$slider = $this->Home_m->getAll1();
		$data['slider'] = $slider;

		$pengajar = $this->Home_m->getAll2();
		$data['pengajar'] = $pengajar;

		$kursus = $this->Home_m->getAll3();
		//print_r($this->db->last_query());
		$data['kursus'] = $kursus;

		$kontak = $this->Home_m->getAll4();
		$data['kontak'] = $kontak;

		$data['kursus_login'] = $this->Home_m->getAllKursus();

		$this->load->view('parts/header', $data);
		$this->load->view('pages/Home_v', $data);
		$this->load->view('parts/footer', $data);
	}

	function tambah_aksi(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$nama_member = $this->input->post('nama_member');
		$email_member = $this->input->post('email_member');
		
		$data = array(
			'username' => $username,
			'password' => $password,
			'nama_member' => $nama_member,
			'email_member' => $email_member
			);
		$this->Home_m->input_data($data,'tb_member');
		redirect('Home_c');
	}
}
