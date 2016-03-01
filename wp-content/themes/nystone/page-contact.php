<?php get_header(); ?>

		<div class="content_wrapper">
			<div class="contact_page_background" style="background-image:url('<?php echo get_template_directory_uri(); ?>/img/contact_page_background.jpg');"></div>
			<div class="about_content_wrapper location_content_wrapper">
				<h1 class="futura"><?php the_title(); ?></h1>
				<!-- <a class="toggle_full_screen_modal clear_btn" data-full_screen_modal_type="contact">Contact Us</a> -->
				<div class="two_location_wrapper">
					
					<div>
						<div>
							<h2>New Jersey</h2>
							<!-- <h4>Warehouse</h4> -->
							<!-- <p>New Jersy Place</p> -->
							<p>Jersey City, NJ 07306</p>
							<p class="phone_number">201.681.3352</p>
							<p class="email">info@cr-restorations.com</p>
							<!-- <p class="hours">Hours: M-F 8AM - 5PM, S 9AM - 12:30P, Su 10AM - 1:00PM</p> -->
							<!-- <a class="clear_btn toggle_full_screen_modal" data-full_screen_modal_type="location_images_1">Click to see gallery</a> -->
						</div>
						<div>
							<h2>Florida</h2>
							<!-- <h4>Showroom</h4> -->
							<!-- <p>30 West 21st Street</p> -->
							<p>Broward County, FL 10010</p>
							<p class="phone_number">201.681.3352</p>
							<p class="email">info@cr-restorations.com</p>
							<!-- <p class="hours">Hours: M-F 8AM - 5PM, S 9AM - 12:30P, Su 10AM - 1:00PM</p> -->
							<!-- <a class="clear_btn toggle_full_screen_modal" data-full_screen_modal_type="location_images_1">Click to see gallery</a> -->
						</div>					
					</div>
					<div class="maps">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.9638719732966!2d-73.99455188459422!3d40.74082047932877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a37133f9d3%3A0x9e989383178307b7!2s30+W+21st+St%2C+New+York%2C+NY+10010!5e0!3m2!1sen!2sus!4v1450303075943" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.085975055494!2d-74.0734223490973!3d40.73813367922763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2572600ed4b79%3A0x952a48f9dfda304d!2s31+Howell+St%2C+Jersey+City%2C+NJ+07306!5e0!3m2!1sen!2sus!4v1450303110119" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
					<div class="contact_form">
						<div class="request_sample_form">

							<?php echo do_shortcode( '[contact-form-7 id="65" title="Contact"]' );?>
							
							<!-- <label>
								<input id="fname" type="text" class="peeky_placeholder" placeholder="Name">
								<span>Name</span>
							</label>

							<label>
								<input type="tel" class="peeky_placeholder" placeholder="Email">
								<span>Phone</span>
							</label>
							<label>
								<input type="email" class="peeky_placeholder" placeholder="Company">
								<span>Email</span>
							</label>
							<label class="textarea_wrapper">
								<textarea placeholder="Comment..." class="stone_textarea"></textarea>					
							</label>
							<input class="primary_btn primary_btn_nogradient" type="submit" value="Submit"> -->

					</div>
				</div>
		</div>

<?php get_footer(); ?>
