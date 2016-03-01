<?php get_header(); ?>

		<!-- <div class="home_page_force_height"></div> -->
		<div class="full_screen full_screen_resources full_screen_matspecs full_screen_faq"> 
			<h5>Faq</h5>
            
            	   <?php
					  $args = array(
					    'post_type' => 'faq'
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>

					<b><?php the_field('question'); ?></b>
			        <p><?php the_field('answer'); ?></p>

					<?php
				    		}
				  		}
					  else {
					    echo 'No Projects Found';
					  }
				  	?>
            

		</div>

<?php get_footer(); ?>
