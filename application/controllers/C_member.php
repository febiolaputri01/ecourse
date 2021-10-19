<?php

class C_member extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_member', 'member');
    }

    public function index()
    {
        $data['view_file'] = 'admin/moduls/V_member';
        $data['result'] = $this->member->member()->result();
        return $this->load->view('admin/admin_view', $data);
    }

    public function add_produk()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $nama_member = $this->input->post('nama_member');
        $email_member = $this->input->post('email_member');

        $dataInsert['username'] = $username;
        $dataInsert['password'] = $password;
        $dataInsert['nama_member'] = $nama_member;
        $dataInsert['email_member'] = $email_member;

        if ($this->member->insert($dataInsert)) {
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

        $getData = $this->member->member($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Tidak ada data yang ditemukan');
        }


        if ($this->member->delete($id)) {
            return JSONResponseDefault('OK', 'Data berhasil dihapus');
        } else {
            return JSONResponseDefault('FAILED', 'Gagal menghapus data');
        }
    }

    public function modal_edit_produk()
    {
        $id = getPost('id');

        if ($id == null) return JSONResponseDefault('FAILED', 'ID tidak ditemukan');

        $getData = $this->member->member($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Data tidak ditemukan');
        }

        $data['data'] = $getData->row();

        return JSONResponse(array(
            'RESULT' => 'OK',
            'HTML' => $this->load->view('admin/moduls/member/edit', $data, true)
        ));
    }

    public function edit_produk()
    {
        $id = getPost('id_member');

        if ($id == null) return JSONResponseDefault('FAILED', 'ID tidak ditemukan');

        $getData = $this->member->member($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Data tidak ditemukan');
        }

        $username = getPost('username');
        $password = getPost('password');
        $nama_member = getPost('nama_member');
        $email_member = getPost('email_member');

        $updateData['username'] = $username;
        $updateData['password'] = $password;
        $updateData['nama_member'] = $nama_member;
        $updateData['email_member'] = $email_member;

        if ($this->member->update($id, $updateData)) {
            return JSONResponseDefault('OK', 'Data berhasil diubah');
        } else {
            return JSONResponseDefault('FAILED', 'Gagal mengubah data');
        }
    }
}