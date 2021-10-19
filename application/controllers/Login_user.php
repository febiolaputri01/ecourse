<?php

    class Login_user extends CI_Controller 
    {
        public function __construct(){
            parent::__construct();
            $this->load->model('Home_m');
        }

        public function index()
        {
            $data = array(
                'msg' => ''
            );
		    $this->load->view('pages/Login', $data);
        }

        public function getLogin()
        {
            $username = $this->input->post('username');
            $password = $this->input->post('pass');

            
            $user = $this->auth->login_user($username, $password);
            if ($user == true) {
                $this->session->set_userdata('id_member', $user->id_member);
                $this->session->set_userdata('username', $user->username);
                $this->session->set_userdata('password', $user->password);

                $data = array(
                    'msg' => 'sukses',                    
                );
                $this->load->view('pages/Login', $data);
                // $data['hasil'] = 1;
                // echo json_encode($data);
            }else {
                $data = array(
                    'msg' => "gagal"
                );
                $this->load->view('pages/Login', $data);
                // $data['hasil'] = 0;
                // echo json_encode($data);
            }
		}
		
		function logout(){
			//helper_log("logout", "Logout");
			$this->session->sess_destroy();
			redirect('Home_c','refresh');
		}
	}
	
	
    
?>
