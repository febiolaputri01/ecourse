<?php

class C_kursus extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_kursus', 'kursus');
    }

    public function index()
    {
        $data['view_file'] = 'admin/moduls/V_kursus';
        $data['result'] = $this->kursus->kursus()->result();
        return $this->load->view('admin/admin_view', $data);
    }

    private function uploader($upload, $index = array())
    {
        $data = array();

        foreach ($index as $key => $value) {
            if (isset($_FILES[$value]['size']) > 0) {
                if ($upload->upload($value)) {
                    $file_name = $upload->get_file_name();

                    $data[$key] = $file_name;
                } else {
                    return false;
                }
            } else {
                $data[$key] = null;
            }
        }

        return $data;
    }

    public function remover($upload, $index = array(), $location)
    {
        foreach ($index as $key => $value) {
            if (!$upload->remove($value, $location)) {
                return false;
            }
        }

        return true;
    }

    public function add_produk()
    {
        $nama_kursus = $this->input->post('nama_kursus');
        $harga_kursus = $this->input->post('harga_kursus');
        $deskripsi_kursus = $this->input->post('deskripsi_kursus');
        
        $upload = new FileUploadLibrary();
        $upload->setConfig(array(
            'upload_path' => realpath('assets/img'),
            'allowed_types' => 'jpg|png|jpeg',
            'max_size' => 2048, //2 MB
            'encrypt_name' => true
        ));
        $upload->initialize();

        $dataUpload = $this->uploader(
            $upload,
            array(
                'foto_kursus' => 'foto_kursus'
            )
        );

        $dataInsert['nama_kursus'] = $nama_kursus;
        $dataInsert['harga_kursus'] = $harga_kursus;
        $dataInsert['deskripsi_kursus'] = $deskripsi_kursus;

        foreach ($dataUpload as $key => $value) {
            $dataInsert[$key] = $value;
        }

        if ($this->kursus->insert($dataInsert)) {
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

        $getData = $this->kursus->kursus($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Tidak ada data yang ditemukan');
        }

        $upload = new FileUploadLibrary();
        $row = $getData->row();

        $remove = $this->remover(
            $upload,
            array(
                $row->foto_kursus
            ),
            'assets/img'
        );

        if (!$remove) {
            return JSONResponseDefault('FAILED', 'Gagal menghapus beberapa gambar');
        }

        if ($this->kursus->delete($id)) {
            return JSONResponseDefault('OK', 'Data berhasil dihapus');
        } else {
            return JSONResponseDefault('FAILED', 'Gagal menghapus data');
        }
    }

    public function modal_edit_produk()
    {
        $id = getPost('id');

        if ($id == null) return JSONResponseDefault('FAILED', 'ID tidak ditemukan');

        $getData = $this->kursus->kursus($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Data tidak ditemukan');
        }

        $data['data'] = $getData->row();

        return JSONResponse(array(
            'RESULT' => 'OK',
            'HTML' => $this->load->view('admin/moduls/kursus/edit', $data, true)
        ));
    }

    private function edit_img_remover($upload, $row, $index = array())
    {
        $data = array();
        $deletedData = array();

        foreach ($index as $key => $value) {
            if ($_FILES[$value]['size'] > 0) {
                $data[$key] = $value;
                $deletedData[] = $row->$key;
            }
        }

        $this->remover($upload, $deletedData, 'assets/img');

        return $this->uploader($upload, $data);
    }

    public function edit_produk()
    {
        $id = getPost('id_kursus');

        if ($id == null) return JSONResponseDefault('FAILED', 'ID tidak ditemukan');

        $getData = $this->kursus->kursus($id);

        if ($getData->num_rows() == 0) {
            return JSONResponseDefault('FAILED', 'Data tidak ditemukan');
        }

        $nama_kursus = getPost('nama_kursus');
        $harga_kursus = getPost('harga_kursus');
        $deskripsi_kursus = getPost('deskripsi_kursus');

        $updateData['nama_kursus'] = $nama_kursus;
        $updateData['harga_kursus'] = $harga_kursus;
        $updateData['deskripsi_kursus'] = $deskripsi_kursus;

        $upload = new FileUploadLibrary();
        $upload->setConfig(array(
            'upload_path' => realpath('assets/img'),
            'allowed_types' => 'jpg|png|jpeg',
            'max_size' => 2048, //2 MB
            'encrypt_name' => true
        ));
        $upload->initialize();

        $dataUpload = $this->edit_img_remover(
            $upload,
            $getData->row(),
            array(
                'foto_kursus' => 'foto_kursus'
            )
        );

        foreach ($dataUpload as $key => $value) {
            $updateData[$key] = $value;
        }

        if ($this->kursus->update($id, $updateData)) {
            return JSONResponseDefault('OK', 'Data berhasil diubah');
        } else {
            return JSONResponseDefault('FAILED', 'Gagal mengubah data');
        }
    }
}
