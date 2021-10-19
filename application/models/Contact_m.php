<?php

class Contact_m extends CI_Model
{
	public function getAll1(){
		return $this->db->get('tb_kontak');
	}
}