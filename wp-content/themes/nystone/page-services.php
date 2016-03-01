<?php get_header(); ?>

	<!-- <div class="full_width_hero full_width_hero_thin" style="background-image:url(<?php the_field('main_image'); ?>)">
	</div> -->
	<div class="services_page">
		<h1 class="futura"><?php the_title(); ?></h1>
		<div class="services_content">
			<?php
				if ($pageURL == "beta.stone.dev" + "/services/") {
			?>
			
			<div class="service_name">Kitchens</div>
			<div class="service_images">
				<img src="<?php echo get_template_directory_uri(); ?>/img/slide1.jpg" alt="slide1">
				<img src="<?php echo get_template_directory_uri(); ?>/img/slide2.jpg" alt="slide1">
				<img src="<?php echo get_template_directory_uri(); ?>/img/slide3.jpg" alt="slide1">
				<img src="<?php echo get_template_directory_uri(); ?>/img/slide4.jpg" alt="slide1">
			</div>
			<p class="service_desc">Whether your bathroom space is large or small, CR Restoration has the experience to turn it into a space that you will love. From flooring and fixtures to lighting, cabinetry and countertops.</p>
				<?php } ?>
		</div>
	</div>

<?php get_footer(); ?>
