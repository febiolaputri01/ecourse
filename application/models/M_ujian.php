<?php
defined('BASEPATH') or die('No direct script access allowed!');

class M_ujian extends CI_Model
{
    private $tablehd = 'tb_ujian';
    private $tabledt = 'tb_detail_ujian';

    public function insertHd($data = array())
    {
        return $this->db->insert($this->tablehd, $data);
    }

    public function insertDt($data = array())
    {
        return $this->db->insert($this->tabledt, $data);
    }
}
