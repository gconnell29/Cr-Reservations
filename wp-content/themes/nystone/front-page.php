<?php get_header(); ?>

		<!-- <div class="home_page_force_height"></div> -->
		<div class="full_screen full_screen_welcome"> 
			<div class="swiper-container">
				<div class=" full_screen swiper-wrapper img-swiper home_view_background_image_slider full_screen_swiper">

					<?php
			  $args = array(
			    'post_type' => 'sliders'
			    );
			  $products = new WP_Query( $args );
			  if( $products->have_posts() ) {
			    while( $products->have_posts() ) {
			      $products->the_post();
			?>

					<div class="swiper-slide">
						<div class = "img_cover"></div>
						<div class = "material_slider_img" data-swiper-parallax="-100" style = "background-image:url(<?php the_field('image'); ?>)"></div>
						<div class = "material_slider_details" data-swiper-parallax="-400">
							<a href="/<?php the_field('product_link'); ?>"><p><?php the_field('text'); ?></p></a>
						</div>
					</div>

					<?php
			    		}
			  		}
				  else {
				    echo 'No Sliders Found';
				  }
				  ?>

				</div>
			</div>
			<div class="dead_center element_fixed" data-0="opacity:1;transform:translateY(0px);" data-1="opacity:1;transform:translateY(0px);" data-90="opacity:0;transform:translateY(-100px);">
				<img class="large_logo" src="<?php echo get_template_directory_uri(); ?>/img/cr-logo.png"/>
			</div>
			<p class="futura dead_center_bottom element_fixed bold_italic" data-0p="opacity:1;transform:translateY(0px);" data-90="opacity:0;transform:translateY(-100px);">Restoring houses and building relationships</p>
			<div class="stone_transparent futura dead_center_bottom element_fixed bold_italic" id="show_newsletter_join_box" data-0p="opacity:0;transform:translateY(30px);" data-20="opacity:0;transform:translateY(30px);" data-140="opacity:1;transform:translateY(0px);">
				<p>Join our Newsletter</p>
				<div class="newsletter_form_wrapper">
					<div class="newsletter_join_step_1">
						<h1>Subscribe</h1>
						<form>
							<input type="email" required class="peeky_placeholder" placeholder="Email">
							<div type="submit" class="submit" id="newsletter_list_email_submit"><p>Sign up</p></div>
						</form>
					</div>
					<div class="newsletter_join_step_2">
						<h1>Thank you for joining our Newsletter</h1>
						<p>Please help us better provide you with interesting content in our newsletter. Which best describes your occupation?</p>
						<form class="occupation_options_wrapper checkbox_option_button_wrapper">
							<div class="option_button filter_option_btn option_button_radio">
								<div class="filter_color"></div>
								<p>
									<span>Designer</span>
								</p>
								<input type="checkbox"/>
							</div>
							<div class="option_button filter_option_btn option_button_radio">
								<div class="filter_color"></div>
								<p>
									<span>Architect</span>
								</p>
								<input type="checkbox"/>
							</div>
							<div class="option_button filter_option_btn option_button_radio">
								<div class="filter_color"></div>
								<p>
									<span>Fabricator</span>
								</p>
								<input type="checkbox"/>
							</div>														
							<div class="option_button filter_option_btn option_button_radio">
								<div class="filter_color"></div>
								<p>
									<span>Developer</span>
								</p>
								<input type="checkbox"/>
							</div>
							<div class="option_button filter_option_btn option_button_radio">
								<div class="filter_color"></div>
								<p>
									<span>Other</span>
								</p>
								<input type="checkbox"/>
							</div>
							<input type="submit" value="Submit" class="submit"/>
						</form>
					</div>
				</div>
			</div>
		</div> <!-- end full_screen -->

		<div class="home_content_cont">
			<div class="home_content">
				<p>Searching for a construction company that does it all? Weather is a simple renovation or a full custom job, C.R. RESTORATION has just what it takes to get things done right. We tackle each project, small or large, with the same attention to detail, expertise and integrity.  We stay true to what has made us a success from day one, meeting the needs of each and every client 100% of the time.</p>
				<p>C.R RESTORATION strongly believes that the purpose of a home renovation is to improve the quality of life for the homeowner. We will make every effort to turn it into the house of your dreams. At the same time, we make the “vision of a dream” affordable. We provide expert consultation to each client in the project planning stage, and then work with them closely.</p>
				<p>We are insured and licensed to ensure your safety and the safety of your home. If you have any questions, please call (201) 681-3352. You can also complete a short form, and one of our staff will respond as soon as possible.</p>
			</div>
		</div>

<?php get_footer(); ?>
