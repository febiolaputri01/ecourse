<?php

class Home_m extends CI_Model
{
	public function getAll1(){
		return $this->db->get('tb_slider');
	}

	public function getAll2(){
		return $this->db->get('tb_pengajar');
	}

	public function getAll3(){
		return $this->db->get('tb_kursus');
	}

	public function getAll4(){
		return $this->db->get('tb_kontak');
	}

	function input_data($data,$table){
		$this->db->insert($table,$data);
	}

	function getAllKursus(){
		$subquery = $this->db->select('c.id_detail_paket')
							 ->from('tb_kursus b, tb_detail_paket_member c')
							 ->where('a.id_kursus = b.id_kursus')
							 ->where('c.id_kursus = a.id_kursus')
							 ->get_compiled_select();

		return $this->db->select('a.*, ('.$subquery.') as sub_detail')
						->from('tb_kursus a')
						->get()->result();
	}

}
