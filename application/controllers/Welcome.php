<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_welcome');  
	}

	public function index()
	{
		$member = $this->M_welcome->getAll();
		$data['member'] = $member;

		$pertanyaan = $this->M_welcome->getAll2();
		$data['pertanyaan'] = $pertanyaan;

		$this->load->view('home', $data);
	}

	// public function detail($id)
	// {
	// 	$this->load->model('M_welcome');
	//	$detail = $this->M_welcome->detail_data($id);
	//	$data['detail'] = $detail;
	//	$this->load->view('detail', $data);
	// }
}