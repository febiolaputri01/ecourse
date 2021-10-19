<!-- ==================== START - HEADER ==================== -->

	<div class="home">
		<div class="breadcrumbs_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="breadcrumbs">
							<ul>
								<li><a href="<?php echo site_url('Home_c') ?>">Home</a></li>
								<li>Contact</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>			
	</div><br><br>

	<!-- ==================== FINISH - HEADER ==================== -->


	<!-- ==================== START - MAPS ==================== -->

	<!-- Contact -->

	<div class="contact">
		
		<div class="container">
			<div class="row">

				<?php foreach ($kontak->result() as $result) { ?>
				<!-- Courses Main Content -->
				<div class="col-lg-12" align="center">
					<?php echo $result->script_embed_code ?>
				</div>
				<?php } ?>
			</div>
		</div>

	<!-- ==================== FINISH - MAPS ==================== -->


	<!-- ==================== START - CONTACT INFO ==================== -->	

		<div class="contact_info_container">
			<div class="container">
				<div class="row">

					<!-- Contact Info -->
					<div class="col-lg-12">
						<div class="contact_info">
							<div class="contact_info_title">Contact Info</div>
							<?php foreach ($kontak->result() as $result) { ?>
							<div class="contact_info_text">
								<p<?php echo $result->deskripsi_kontak ?></p>
							</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!-- ==================== FINISH - CONTACT INFO ==================== -->