<?php

class C_pertanyaan extends CI_Controller
{
	public function __construct()
    {
        parent::__construct();
        $this->load->model('M_pertanyaan', 'pertanyaan');
    }

    public function index()
    {
        $data['view_file'] = 'admin/moduls/V_pertanyaan';
        $data['result'] = $this->pertanyaan->pertanyaan()->result();
        return $this->load->view('admin/admin_view', $data);
    }

    public function add_produk()
    {
        $deskripsi_pertanyaan = $this->input->post('deskripsi_pertanyaan');
        $jawaban_a = $this->input->post('jawaban_a');
        $jawaban_b = $this->input->post('jawaban_b');
        $jawaban_c = $this->input->post('jawaban_c');
        $jawaban_d = $this->input->post('jawaban_d');
        $kunci_jawaban = $this->input->post('kunci_jawaban');

        $dataInsert['deskripsi_pertanyaan'] = $deskripsi_pertanyaan;
        $dataInsert['jawaban_a'] = $jawaban_a;
        $dataInsert['jawaban_b'] = $jawaban_b;
        $dataInsert['jawaban_c'] = $jawaban_c;
        $dataInsert['jawaban_d'] = $jawaban_d;
        $dataInsert['kunci_jawaban'] = $kunci_jawaban;

        if ($this->pertanyaan->insert($dataInsert)) {
            echo json_encode(array(
                'RESULT' => 'OK',
                'MESSAGE' => 'Data berhasil ditambahkan'
            ));
            exit;
        } else {
            echo json_encode(array(
                'RESULT' => 'FAILED',
                'MESSAGE' => 'Gagal menambahkan data'
            ));
            exit;
        }
    }

    public function hapus_produk()
    {
        $id = getPost('id', null);

        if ($id == null) return JSONResponseDefault('FAILED', 'ID tidak ditemukan');

        $getData = $this->pertanyaan->pertanyaan($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Tidak ada data yang ditemukan');
        }


        if ($this->pertanyaan->delete($id)) {
            return JSONResponseDefault('OK', 'Data berhasil dihapus');
        } else {
            return JSONResponseDefault('FAILED', 'Gagal menghapus data');
        }
    }

    public function modal_edit_produk()
    {
        $id = getPost('id');

        if ($id == null) return JSONResponseDefault('FAILED', 'ID tidak ditemukan');

        $getData = $this->pertanyaan->pertanyaan($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Data tidak ditemukan');
        }

        $data['data'] = $getData->row();

        return JSONResponse(array(
            'RESULT' => 'OK',
            'HTML' => $this->load->view('admin/moduls/pertanyaan/edit', $data, true)
        ));
    }

    public function edit_produk()
    {
        $id = getPost('id_pertanyaan');

        if ($id == null) return JSONResponseDefault('FAILED', 'ID tidak ditemukan');

        $getData = $this->pertanyaan->pertanyaan($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Data tidak ditemukan');
        }

        $deskripsi_pertanyaan = getPost('deskripsi_pertanyaan');
        $jawaban_a = getPost('jawaban_a');
        $jawaban_b = getPost('jawaban_b');
        $jawaban_c = getPost('jawaban_c');
        $jawaban_d = getPost('jawaban_d');
        $kunci_jawaban = getPost('kunci_jawaban');

        $updateData['deskripsi_pertanyaan'] = $deskripsi_pertanyaan;
        $updateData['jawaban_a'] = $jawaban_a;
        $updateData['jawaban_b'] = $jawaban_b;
        $updateData['jawaban_c'] = $jawaban_c;
        $updateData['jawaban_d'] = $jawaban_d;
        $updateData['kunci_jawaban'] = $kunci_jawaban;

        if ($this->pertanyaan->update($id, $updateData)) {
            return JSONResponseDefault('OK', 'Data berhasil diubah');
        } else {
            return JSONResponseDefault('FAILED', 'Gagal mengubah data');
        }
    }
}