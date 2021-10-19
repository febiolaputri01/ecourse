	<!-- Home -->

	<!-- ==================== START - SLIDER ==================== -->

	<div class="home_s">
		<div class="home_slider_container">			
			<!-- Home Slider -->
			<div class="owl-carousel owl-theme home_slider">
				<?php foreach ($slider->result() as $result) : ?>
				<!-- Home Slider Item -->
				<div class="owl-item">
					<div class="home_slider_background" style="background-image:url(<?php echo base_url()?>assets/images/<?php echo $result->foto_slider ?>)"></div>
				</div>
				<?php endforeach; ?>
			</div>
		</div>
		<!-- Home Slider Nav -->
		<div class="home_slider_nav home_slider_prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>
		<div class="home_slider_nav home_slider_next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
	</div>

	<!-- ==================== FINISH - SLIDER ==================== -->


	<!-- ==================== START - KURSUS ==================== -->

	<!-- Popular Courses -->
	<div class="courses">
		<div class="section_background parallax-window" data-parallax="scroll" data-image-src="<?php echo base_url('assets/'); ?>images/courses_background.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<h2 class="section_title">Paket Kursus</h2>
					</div>
				</div>
			</div>
			<div class="row courses_row">				
				<!-- Course -->
				<?php $a=0; $b=3; foreach ($kursus_login as $result) { $a++; if ($a<=$b) {  ?>
				<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="<?php echo base_url('assets/images/'.$result->foto_kursus); ?>" alt=""></div>
						<div class="course_body">
							<h3 class="course_title"><a href="
							<?php
								if ($this->session->userdata('username') == null) {
									echo '#';
								}else{
									if($result->sub_detail !=""){
										echo base_url('Courses_c/detail/'.$result->id_kursus);
									}else{
										echo '#';
									}
									
								}
							?>
							"><?php echo $result->nama_kursus ?></a></h3>
							<div class="course_text">
								<p><?php echo substr($result->deskripsi_kursus, 0, 50)." ....." ?></p>
							</div>
						</div>
						<div class="course_footer">
							<div class="course_footer_content d-flex flex-row align-items-center justify-content-start">
								<div class="course_info">
									<i class="fa fa-graduation-cap" aria-hidden="true"></i>
									<span>7 Video</span>
								</div>
								
								<div class="course_price ml-auto">Rp. <?php echo number_format($result->harga_kursus,2,',','.'); ?></div>
							</div>
						</div>
					</div>
				</div>
				<?php } } ?>

			</div>
			<div class="row">
				<div class="col">
					<div class="courses_button trans_200"><a href="<?= site_url('Courses_c')?>">view all courses</a></div>
				</div>
			</div>
		</div>
	</div>

	<!-- ==================== FINISH - KURSUS ==================== -->


	<!-- ==================== START - REGISTER ==================== -->
	<?php 
		if ($this->session->userdata == null) :
	?>
	<!-- Counter -->
	<div class="counter">
		<div class="counter_background" style="background-image:url(<?php echo base_url('assets/'); ?>images/counter_background.jpg)"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="counter_content">
						<h2 class="counter_title">Register Now</h2>
						<div class="counter_text"><p>Untuk bisa mengikuti paket kursus, Anda harus melakukan registrasi terlebih dahulu, supaya pihak pengajar bisa tahu progres dari kursus tersebut. Silahkan isi form yang ada disamping ini.</p></div><br><br>
					</div>
				</div>
			</div>

			<div class="counter_form">
				<div class="row fill_height">
					<div class="col fill_height">
						<form class="counter_form_content d-flex flex-column align-items-center justify-content-center" action="<?php echo base_url(). 'Home_c/tambah_aksi'; ?>" method="POST">
							<div class="counter_form_title">courses now</div>
								<input type="text" class="counter_input" placeholder="Username" name="username" required="required">
								<input type="password" class="counter_input" placeholder="Password" name="password" required="required">
								<input type="text" class="counter_input" placeholder="Nama" name="nama_member" required="required">
								<input type="email" class="counter_input" placeholder="Email" name="email_member" required="required">
							<button type="submit" class="counter_form_button">submit</button>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
	<?php endif;?>
	<!-- ==================== FINISH - REGISTER ==================== -->


	<!-- ==================== START - PENGAJAR ==================== -->

	<!-- Team -->
	<div class="team">
		<div class="team_background parallax-window" data-parallax="scroll" data-image-src="<?php echo base_url('assets/'); ?>images/team_background.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<h2 class="section_title">Tim Pengajar</h2>
					</div>
				</div>
			</div>
			<div class="row team_row">
				<!-- Team Item -->
				<?php foreach ($pengajar->result() as $result) : ?>
				<div class="col-lg-3 col-md-6 team_col">
					<div class="team_item">
						<div class="team_image"><img src="<?php echo base_url()?>assets/images/<?php echo $result->foto_pengajar ?>" alt=""></div>
						<div class="team_body">
							<div class="team_title"><?php echo $result->nama_pengajar ?></div>
							<div class="team_subtitle"><?php echo $result->deskripsi_pengajar ?></div>
						</div>
					</div>
				</div>
				<?php endforeach; ?>
			</div>
		</div>
	</div>

	<!-- ==================== FINISH - PENGAJAR ==================== -->
