<?php get_header(); ?>

<div class="testimonial_page">
	<h1 class="futura"><?php the_title(); ?></h1>
	<div class="testimonial_content">

		<?php
		  $args = array(
		    'post_type' => 'testimonials'
		    );
		  $products = new WP_Query( $args );
		  if( $products->have_posts() ) {
		    while( $products->have_posts() ) {
		      $products->the_post();
		?>

		<div class="testimonial_post">
			<p><?php the_field('text'); ?></p>		 
			<span><?php the_field('name'); ?></span>
			<span><?php the_field('location'); ?></span>
		</div>

		<?php
	    		}
	  		}
		  else {
		    echo 'No Projects Found';
		  }
	  	?>
	</div>
</div>

<?php get_footer(); ?>
