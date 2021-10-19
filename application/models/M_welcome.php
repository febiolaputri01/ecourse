<?php
 
class M_welcome extends CI_Model {
 
	public function getAll()
	{
		return $this->db->get('tb_member');  
	}

	public function getAll2()
	{
		return $this->db->get('tb_pertanyaan');  
	}

	// public function detail_data($id = NULL){
	//	$query = $this->db->get_where('tb_artikel', array('id_artikel' => $id))-> row();
	//	return $query;

	//	return $this->db->get('tb_profildasar');  
	// }
}