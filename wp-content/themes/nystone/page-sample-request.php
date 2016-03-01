<?php get_header(); ?>

		<!-- <div class="home_page_force_height"></div> -->
		<div class="full_screen full_screen_sample_request"> 
			<div class="sample_request_hero" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/sample_request_hero_2.jpg)">
				<a class="toggle_full_screen_modal" data-full_screen_modal_type="request_sample">Request a Sample</a>
			</div>
			<h1>Our Samples are 3 x 6</h1>
			<p>Although samples are indicative of the material, each slab has different characteristics.</p>
			<p>Therefore it is recommended that slabs are inspected prior to purchase.</p>	
			<div class="sample_request_hero" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/sample_request_hero.jpg)">
				<!--<a class="toggle_full_screen_modal" data-full_screen_modal_type="request_sample">Request a Sample</a>-->
			</div>		
		</div>

<?php get_footer(); ?>


<!-- popup modals -->
		<div class="request_sample_modal full_screen_modal dark_background_full_screen_modal" id="request_sample_full_screen_modal">
			<div class="inner_modal_box">
				<a class="right_alligned_close_modal close_full_screen_modal">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 viewBox="69 47.5 64.5 64.5" enable-background="new 69 47.5 64.5 64.5" xml:space="preserve">
						<g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M127.1,51.9l1,1c0,0,0,0.1,0,0.1L73,108.1c0,0-0.1,0-0.1,0
									l-1-1c0,0,0-0.1,0-0.1L127.1,51.9C127,51.9,127.1,51.9,127.1,51.9z"/>
							</g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M73,51.9l55.1,55.1c0,0,0,0.1,0,0.1l-1,1c0,0-0.1,0-0.1,0
									L71.9,53c0,0,0-0.1,0-0.1L73,51.9C72.9,51.9,73,51.9,73,51.9z"/>
							</g>
						</g>
					</svg>
					<p>(esc)</p>
				</a>
				<h1>Request A Sample</h1>
				<?php echo do_shortcode( '[contact-form-7 id="239" title="Request A Sample"]' );?>
			</div>
		</div>

		<div class="request_sample_modal full_screen_modal dark_background_full_screen_modal" id="register_full_screen_modal">
			<div class="inner_modal_box">
				<a class="right_alligned_close_modal close_full_screen_modal">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 viewBox="69 47.5 64.5 64.5" enable-background="new 69 47.5 64.5 64.5" xml:space="preserve">
						<g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M127.1,51.9l1,1c0,0,0,0.1,0,0.1L73,108.1c0,0-0.1,0-0.1,0
									l-1-1c0,0,0-0.1,0-0.1L127.1,51.9C127,51.9,127.1,51.9,127.1,51.9z"/>
							</g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M73,51.9l55.1,55.1c0,0,0,0.1,0,0.1l-1,1c0,0-0.1,0-0.1,0
									L71.9,53c0,0,0-0.1,0-0.1L73,51.9C72.9,51.9,73,51.9,73,51.9z"/>
							</g>
						</g>
					</svg>
					<p>(esc)</p>
				</a>
				<h1>Create Account</h1>
				<p>(to add products to your favorites)</p>
				<form class="request_sample_form">
					<?php echo do_shortcode( '[profilepress-registration id="1"]' );?>
					
					<!-- <label>
						<input id="fname" type="text" class="peeky_placeholder" placeholder="Name">
						<span>Name</span>
					</label>

					<label>
						<input type="email" class="peeky_placeholder" placeholder="Email">
						<span>Email</span>
					</label>
					<div class="input_row_split">
						<label>
							<input type="password" class="peeky_placeholder" placeholder="Password">
							<span>Password</span>
						</label>
						<label>
							<input type="password" class="peeky_placeholder" placeholder="Confirm Password">
							<span>Confirm Password</span>
						</label>
					</div>
					<label>
						<input type="text" class="peeky_placeholder" placeholder="Occupation">
						<span>Occupation</span>
					</label>
					<label>
						<input type="text" class="peeky_placeholder" placeholder="Company">
						<span>Company</span>
					</label>
					<label>
						<input type="tel" class="peeky_placeholder" placeholder="Phone">
						<span>Phone</span>
					</label>
					<input class="primary_btn primary_btn_nogradient" type="submit" value="Register"> -->
				</form>
			</div>
		</div>
