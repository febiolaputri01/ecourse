<div class="home">
		<div class="breadcrumbs_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="breadcrumbs">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="courses.html">Courses</a></li>
								<li>Course Details</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>			
	</div>

	<!-- Course -->

	<div class="course">
		<div class="container">
			<div class="row">

				<!-- Course -->
				<div class="col-lg-12">
					
					<div class="course_container">
						<div class="course_title"><?= $detail->nama_kursus ?></div>
						<div class="course_info d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
						</div>

                        <!-- Course Image -->
                        
                        <div class="course_image" align="center">
                            <img src="<?= base_url('assets/images/'.$detail->foto_kursus)?>" width="700" height="400" controls="controls">
                        </div>

						<!-- Course Tabs -->
						<div class="course_tabs_container">
							<div class="tabs d-flex flex-row align-items-center justify-content-start">
								<div class="tab active">description</div>
								<div class="tab">videos</div>
							</div>
							<div class="tab_panels">

								<!-- Description -->
								<div class="tab_panel active">
									<div class="course_price">Rp. <?= number_format($detail->harga_kursus,2,',','.');?></div><br>
									<div class="tab_panel_title"><?= $detail->nama_kursus ?></div>
									<div class="tab_panel_content">
										<div class="tab_panel_text">
											<p><?= $detail->deskripsi_kursus ?></p>
										</div>
									</div>
								</div>

								<!-- Curriculum -->
								<div class="tab_panel tab_panel_2">
									<div class="tab_panel_content">
										<div class="tab_panel_title"><?= $detail->nama_kursus ?></div>
										<div class="tab_panel_content">
											<div class="tab_panel_text">
												<p><?= $detail->deskripsi_kursus ?></p>
											</div>

											<!-- Dropdowns -->
											<ul class="dropdowns">
												<li class="has_children">
													<div class="dropdown_item">
														<div class="dropdown_item_title"><span>Video 1 :</span> Lorem Ipsn gravida nibh vel velit auctor aliquet.</div>
														<div class="dropdown_item_text">
															<p>Lorem Ipsn gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auci elit consequat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus.</p>
														</div>
													</div>
													<ul>
														<li>
															<div class="dropdown_item">
																<div class="course_image" align="center">
                            										<video src="<?= base_url('assets/video/'.$video->judul_video)?>" width="700" height="400" controls="controls">
                        										</div>
															</div>
														</li>
													</ul>
												</li>
											</ul>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				
			</div>
		</div>
	</div>
