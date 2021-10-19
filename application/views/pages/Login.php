<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login User</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/styles/bootstrap4/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/plugins/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/styles/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/styles/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/styles/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/styles/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/styles/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/styles/util.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/styles/main.css">
<!--===============================================================================================-->
</head>
<body>
	<?php
		$msg;
		if($msg == null){
			
		}elseif ($msg == "sukses") {
			redirect('Home_c');
		}
		else {
			echo "<script type='text/javascript'>alert('Username atau password anda');</script>";
		}
	?>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w" action="<?= site_url('login_user/getLogin')?>" method="post">
				<input type="hidden" class="txt_csrfname" name="<?= $this->security->get_csrf_token_name(); ?>" value="<?= $this->security->get_csrf_hash(); ?>" readonly>
					<span class="login100-form-title p-b-51">
						Login
                    </span>
                    
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input class="input100" type="text" name="username" id="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" id="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn" id="login">
							Login
						</button>
					</div>

				<!-- </form> -->
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/js/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/styles/bootstrap4/popper.js"></script>
	<script src="<?= base_url()?>assets/styles/bootstrap4/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/js/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/js/moment.min.js"></script>
	<script src="<?= base_url()?>assets/js/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/js/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/js/main.js"></script>

</body>
</html>
<!-- <script type="text/javascript">
	$(function() {
        $('#login').click(function(){
            var pm1=$('#username').val();
            var pm2=$('#password').val();
            $.ajax({
                type: "POST",
                url : "<?php echo base_url(); ?>login_user/getlogin",
                data : "username="+pm1+"&password="+pm2+"",
                datatype : 'json',
                beforeSend: function(msg){$("#login").val('Loading...');},
                success: function(msg){
                    var data_cek = JSON.parse(''+msg+'' );
                    if (data_cek.hasil=='1') {
                        $("#login").val('Login Sukses');
                        window.location.assign("<?=base_url()?>Home_c");
                    }else{
                        $("#login").val('Login');
                        alert("Username atau password anda salah")
                    }
                }
            });
        });
	});
</script> -->
