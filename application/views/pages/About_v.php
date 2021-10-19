<!-- Home -->
	
	<!-- ==================== START - HEADER ==================== -->

	<div class="home">
		<div class="breadcrumbs_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="breadcrumbs">
							<ul>
								<li><a href="<?php echo site_url('Home_c') ?>">Home</a></li>
								<li>About</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>			
	</div>

	<!-- ==================== FINISH - HEADER ==================== -->


	<!-- ==================== START - ISI ABOUT ==================== -->

	<!-- About -->

	<div class="about">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<h2 class="section_title">About With Unicat</h2>
						<div class="section_subtitle"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel gravida arcu Vestibulum</p></div>
					</div>
				</div>
			</div>
			<div class="row about_row">
				
				<?php foreach ($tentang->result() as $result) { ?>
				<!-- About Item -->
				<div class="col-lg-4 about_col about_col_left">
					<div class="about_item">
						<div class="about_item_image"><img src="<?php echo base_url('assets/'); ?>img/<?php echo $result->foto_tentang ?>" alt=""></div>
						<div class="about_item_title"><a href="#"><?php echo $result->nama_tentang ?></a></div>
						<div class="about_item_text">
							<p><?php echo substr($result->deskripsi_tentang, 0, 100)."....." ?></p>
						</div>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
	</div>

	<!-- ==================== FINISH - ISI ABOUT ==================== -->