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
								<li>Courses</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>			
	</div>

	<!-- ==================== FINISH - HEADER ==================== -->


	<!-- ==================== START - KURSUS ==================== -->

	<!-- Courses -->

	<div class="courses">
		<div class="container">
			<div class="row">

				<!-- Courses Main Content -->
				<div class="col-lg-12">
					<div class="courses_container">
						<div class="row courses_row">
							
							<!-- Course -->
							<?php foreach ($kursus as $result) { ?>
							<div class="col-lg-4 course_col">								
								<div class="course">
									<div class="course_image"><img src="<?php echo base_url('assets/'); ?>images/<?php echo $result->foto_kursus ?>" alt=""></div>
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
											<p><?php echo substr($result->deskripsi_kursus, 0, 100)." ....." ?></p>
										</div>
									</div>
									<div class="course_footer">
										<div class="course_footer_content d-flex flex-row align-items-center justify-content-start">
											<div class="course_info">
												<i class="fa fa-graduation-cap" aria-hidden="true"></i>
													<span>5 Video</span>
											</div>
											<div class="course_price ml-auto">Rp. <?php echo number_format($result->harga_kursus) ?></div>
										</div>
									</div>
								</div>								
							</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ==================== FINISH - KURSUS ==================== -->
