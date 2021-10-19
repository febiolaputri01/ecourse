<?php

class About_m extends CI_Model
{
	public function getAll1(){
		return $this->db->get('tb_tentang');
	}

	public function getAll4(){
		return $this->db->get('tb_kontak');
	}
}