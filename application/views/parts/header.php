<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Unicat</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Unicat project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="shortcut icon" href="<?php echo base_url(); ?>assetsadmin/img/favicon-elecomp.png" type="image/x-icon" />

	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/bootstrap4/bootstrap.min.css">
	<link href="<?php echo base_url('assets/'); ?>plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url('assets/'); ?>plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>plugins/OwlCarousel2-2.2.1/animate.css">
	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/responsive.css">

	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/about.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/about_responsive.css">

	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/course.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/course_responsive.css">

	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/courses.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/courses_responsive.css">

	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/contact.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/'); ?>styles/contact_responsive.css">

</head>
<body>

<div class="super_container">

	

	<header class="header">
			
		<?php
			if ($this->session->userdata('username') != null) :
		?>
	
		<div class="top_bar">
			<div class="top_bar_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="top_bar_content d-flex flex-row align-items-center justify-content-start">
									
								<div class="top_bar_login ml-auto">
									<div class="login_button"><a href="<?= site_url('Login_user/logout')?>">Logout</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>				
		</div>
		<?php endif;?>

		<!-- Header Content -->
		<div class="header_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo_container">
								<a href="#">
									<div class="logo_text">Unic<span>at</span></div>
								</a>
							</div>
							<nav class="main_nav_contaner ml-auto">
								<?php
									if ($this->session->userdata('username') == null) {
								?>
								<ul class="main_nav">
									<li><a href="<?php echo site_url('Home_c') ?>">Beranda</a></li>
									<li><a href="<?php echo site_url('About_c') ?>">Profil Kami</a></li>
									<li><a href="<?php echo site_url('Courses_c') ?>">Paket Kursus</a></li>
									<li><a href="<?php echo site_url('Contact_c') ?>">Kontak Kami</a></li>
									<li><a href="<?php echo site_url('Login_user') ?>">Login</a></li>
								</ul>
								<?php }else{?>
								<ul class="main_nav">
									<li><a href="<?php echo site_url('Home_c') ?>">Beranda</a></li>
									<li><a href="<?php echo site_url('About_c') ?>">Profil Kami</a></li>
									<li><a href="<?php echo site_url('Courses_c') ?>">Paket Kursus</a></li>
									<li><a href="<?php echo site_url('Ujian_online') ?>">Ujian Online</a></li>
									<li><a href="<?php echo site_url('E_sertifikat') ?>">E-sertifikat</a></li>
									<li><a href="<?php echo site_url('Contact_c') ?>">Kontak Kami</a></li>
								</ul>
								<?php } ?>
								<div class="search_button"><i class="fa fa-search" aria-hidden="true"></i></div>
									

								<!-- Hamburger -->

								<div class="shopping_cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
								<div class="hamburger menu_mm">
									<i class="fa fa-bars menu_mm" aria-hidden="true"></i>
								</div>
							</nav>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Search Panel -->
		<div class="header_search_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_search_content d-flex flex-row align-items-center justify-content-end">
							<form action="#" class="header_search_form">
								<input type="search" class="search_input" placeholder="Search" required="required">
								<button class="header_search_button d-flex flex-column align-items-center justify-content-center">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>			
		</div>			
	</header>

	<!-- Menu -->

	<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
		<div class="search">
			<form action="#" class="header_search_form menu_mm">
				<input type="search" class="search_input menu_mm" placeholder="Search" required="required">
				<button class="header_search_button d-flex flex-column align-items-center justify-content-center menu_mm">
					<i class="fa fa-search menu_mm" aria-hidden="true"></i>
				</button>
			</form>
		</div>
		<?php
			if ($this->session->userdata('username') == null) {
		?>
		<nav class="menu_nav">
			<ul class="menu_mm">
				<li class="menu_mm"><a href="<?php echo site_url('Home_c') ?>">Beranda</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('About_c') ?>">Profil Kami</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('Courses_c') ?>">Paket Kursus</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('Contact_c') ?>">Kontak Kami</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('Login_user') ?>">Login</a></li>
			</ul>
		</nav>
		<?php 
			}else{ 
		?>	
		<nav class="menu_nav">
			<ul class="menu_mm">
				<li class="menu_mm"><a href="<?php echo site_url('Home_c') ?>">Beranda</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('About_c') ?>">Profil Kami</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('Courses_c') ?>">Paket Kursus</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('Ujian_online') ?>">Ujian Online</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('E_sertifikat') ?>">E-sertifikat</a></li>
				<li class="menu_mm"><a href="<?php echo site_url('Contact_c') ?>">Kontak Kami</a></li>
		</nav>
		<?php } ?>
	</div>
