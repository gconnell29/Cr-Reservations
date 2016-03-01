<?php get_header(); ?>

		<!-- <div class="home_page_force_height"></div> -->
		<div class="full_screen full_screen_resources full_screen_matspecs full_screen_fabrication"> 
			<h5>Fabrication</h5>
			<div class="fabrication_col_left">

				<?php
					  $args = array(
					    'post_type' => 'fabricators',
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>

				<div class="fabrication_item">
					<b><?php the_field('location'); ?></b>
					<p><?php the_field('street_address'); ?></p>
					<p><?php the_field('city_state_zip'); ?></p>
					<p><?php the_field('phone_number'); ?></p>
				</div>
				
				<?php
				    		}
				  		}
					  else {
					    echo 'No Locations Found';
					  }
				  	?>

			</div>
			<div class="fabrication_col_right">
				<div class="fabrication_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/fabrication_image.jpg);">
				</div>
			</div>
		</div>

<?php get_footer(); ?>
