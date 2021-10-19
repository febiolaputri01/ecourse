<?php

class Courses_m extends CI_Model
{
	public function getAll1(){
		return $this->db->get('tb_kursus');
	}
	
	public function getAll4(){
		return $this->db->get('tb_kontak');
	}

	public function getDetail($id)
	{
		return $this->db->get_where('tb_kursus', array('id_kursus'=> $id))->row();
	}

	public function getVideo($id)
	{
		return $this->db->get_where('tb_video', array('id_kursus'=> $id))->row();
	}

	public function getPengajar($id)
	{
		return $this->db->get_where('tb_pengajar', array('id_pengajar'=> $id))->row();
	}
}
