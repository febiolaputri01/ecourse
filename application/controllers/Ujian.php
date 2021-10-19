<?php
defined('BASEPATH') or die('No direct script access allowed!');

class Ujian extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_ujian', 'ujian');
    }

    public function process()
    {
        try {
            date_default_timezone_set('Asia/Jakarta');

            $this->db->trans_begin();

            $member = getPost('member');

            $answerKey = 'answer';
            $answer = [];

            foreach ($_POST as $key => $value) {
                if (substr($answerKey, 0, strlen($answerKey)) == $answerKey) {
                    $idPertanyaan = explode('_', $key);

                    if (isset($idPertanyaan[1])) {
                        $answer[$idPertanyaan[1]] = $value;
                    }
                }
            }

            $insert['tanggal_ujian'] = date('Y-m-d H:i:s');
            $insert['id_member'] = $member;

            $this->ujian->insertHd($insert);
            $idHeader = $this->db->insert_id();

            foreach ($answer as $k => $v) {
                $insertDt = array();

                $insertDt['id_ujian'] = $idHeader;
                $insertDt['id_pertanyaan'] = $k;
                $insertDt['jawaban_ujian'] = $v;

                $this->ujian->insertDt($insertDt);
            }

            if ($this->db->trans_status() === TRUE) {
                $this->db->trans_commit();

                echo "<script>
                    alert('Berhasil menyelesaikan ujian');
                    window.location.href = '" . base_url() . "';
                </script>";
            } else {
                $this->db->trans_rollback();

                echo "<script>
                    alert('Gagal menyelesaikan ujian');
                    window.location.href = '" . base_url() . "';
                </script>";
            }
        } catch (Exception $ex) {
            $this->db->trans_rollback();

            throw new Exception($ex->getMessage());
        }
    }
}
