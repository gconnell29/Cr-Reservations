<?php
/*
Template Name Posts: Products
*/
?>


<?php get_header(); ?>

		<div class="content_wrapper project_detail_content_wrapper">
			<div class="project_detail_banner_wrapper">
				<div class="img" style="background-image:url(<?php the_field('header_image'); ?>)"></div>
				<div class="img_overlay"></div>
				<!-- <p>Travertine</p> -->
			</div>		
			<div class="projects_content_wrapper">
				<div class="thin_inner_nav">
					<div class="left white_breadcrumbs" id="breadcrumbs">
						<a href="/projects">
							<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
								 viewBox="0 0 34.7 50.8" enable-background="new 0 0 34.7 50.8" xml:space="preserve">
								<polyline fill="#53585F" points="33.1,1 1.1,25 33.1,49 33.1,42.8 9.6,25 33.1,7.2 "/>
							</svg>
							<p>Projects</p>
						</a>
						<span>/</span>
						<a><p><?php the_title(); ?></p></a>
					</div>
					<h2 class="nav_page_title">Projects</h2>
				</div>
				<div class="project_detail_wrapper">
					<div class="single_item_slider project_images_slider">

						<div class="full_size_slider_item" style="background-image:url(<?php the_field('image'); ?>)">
						</div>
						<div class="full_size_slider_item" style="background-image:url(<?php the_field('image'); ?>)">
						</div>
						<div class="full_size_slider_item" style="background-image:url(<?php the_field('image'); ?>)">
						</div>

					</div>
					<div class="projects_details_data">
						<ul>
							<li><p><b>Client:</b> <?php the_field('name'); ?>, <?php the_field('location'); ?></p></li>
							<li><p><b>Material:</b> <?php the_field('material'); ?></p></li>
							<li><p><b>Architect:</b> <?php the_field('architect'); ?></p></li>
							<li><p><b>Developer:</b> <?php the_field('developer'); ?></p></li>
							<li><p><b>Scale:</b> <?php the_field('scale'); ?></p></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

<?php get_footer(); ?>
