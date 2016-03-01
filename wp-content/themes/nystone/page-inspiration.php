<?php get_header(); ?>

	<!-- <div class="home_page_force_height"></div> -->
		<div class="applications_content_wrapper">
			<!-- <p class="tip" data-0="opacity:1;transform:translateY(0px);" data-1="opacity:1;transform:translateY(0px);" data-200="opacity:0;transform:translateY(100px);">Discover some applications of arguably the most beautiful material the world has to offer. Hover over one of the <span class="small_tooltip"></span> 's to view details.</p>	 -->
			<p class="tip" data-0="opacity:1;transform:translateY(0px);" data-1="opacity:1;transform:translateY(0px);" data-200="opacity:0;transform:translateY(100px);">Get inspired by some of our stone applications below</p>		
	<div class="applications_image_grid">

				<div class="application_image_wrapper">
					<div class="application_image" style="background-image:url(<?php the_field('image_1'); ?>)"></div>
					<div class="applications_tooltip_wrapper" style="top:52%;left:28%;">
						<div class="applications_tooltip_egg inactive">
							<p><?php the_field('image_1_text'); ?><br><a class="deactivate_egg clear_btn">Hide this info</a></p>
						</div>
					</div>
					<div class="applications_stone_names">
						<h2><?php the_field('image_1_name'); ?> </h2>
						
						<h2> <?php the_field('image_1_stone'); ?></h2> 
					</div>
				</div>

				<div class="application_image_wrapper">
					<div class="application_image" style="background-image:url(<?php the_field('image_2'); ?>)"></div>
					<div class="applications_tooltip_wrapper" style="top:50%;right:10%;">
						<div class="applications_tooltip_egg inactive">
							<p><?php the_field('image_2_text'); ?><br><a class="deactivate_egg clear_btn">Hide this info</a></p>
						</div>
					</div>
					<div class="applications_stone_names">
						<h2><?php the_field('image_2_name'); ?></h2>
						
						<h2><?php the_field('image_2_stone'); ?></h2> 
					</div>
				</div>
					
				<div class="application_image_wrapper">
					<div class="application_image" style="background-image:url(<?php the_field('image_3'); ?>)"></div>
					<div class="applications_tooltip_wrapper" style="top:50%;right:10%;">
						<div class="applications_tooltip_egg inactive">
							<p><?php the_field('image_3_text'); ?><br><a class="deactivate_egg clear_btn">Hide this info</a></p>
						</div>
					</div>
					<div class="applications_stone_names">
						<h2><?php the_field('image_3_name'); ?></h2> 
						
						<h2><?php the_field('image_3_stone'); ?></h2> 
					</div>
				</div>

				<div class="application_image_wrapper">
					<div class="application_image" style="background-image:url(<?php the_field('image_4'); ?>)"></div>
					<div class="applications_tooltip_wrapper" style="top: 35%;left: 12%;">
						<div class="applications_tooltip_egg inactive">
							<p><?php the_field('image_4_text'); ?><br><a class="deactivate_egg clear_btn">Hide this info</a></p>
						</div>
					</div>
					<div class="applications_stone_names">
						<h2><?php the_field('image_4_name'); ?></h2> 
						
						<h2><?php the_field('image_4_stone'); ?></h2> 
					</div>
				</div>

				<div class="application_image_wrapper application_image_wrapper_split application_image_wrapper_split_50">
					<div class="application_image" style="background-image:url(<?php the_field('image_5'); ?>)"></div>
					<div class="applications_tooltip_wrapper" style="top: 48%;left: 33%;">
						<div class="applications_tooltip_egg inactive">
							<p><?php the_field('image_5_text'); ?><br><a class="deactivate_egg clear_btn">Hide this info</a></p>
						</div>
					</div>
					<div class="applications_stone_names">
						<h2><?php the_field('image_5_name'); ?></h2>
						
						<h2><?php the_field('image_5_stone'); ?></h2> 
					</div>
				</div>

				<div class="application_image_wrapper application_image_wrapper_split application_image_wrapper_split_50">
					<div class="application_image" style="background-image:url(<?php the_field('image_6'); ?>)"></div>
					<div class="applications_tooltip_wrapper" style="top: 5%;left: 50%;">
						<div class="applications_tooltip_egg inactive">
							<p><?php the_field('image_6_text'); ?><br><a class="deactivate_egg clear_btn">Hide this info</a></p>
						</div>
					</div>
					<div class="applications_stone_names">
						<h2><?php the_field('image_6_name'); ?></h2>
						
						<h2><?php the_field('image_6_stone'); ?></h2> 
					</div>
				</div>

				<div class="application_image_wrapper">
					<div class="application_image" style="background-image:url(<?php the_field('image_7'); ?>)"></div>
					<div class="applications_tooltip_wrapper" style="top: 41%;left: 45%;">
						<div class="applications_tooltip_egg inactive">
							<p><?php the_field('image_7_text'); ?><br><a class="deactivate_egg clear_btn">Hide this info</a></p>
						</div>
					</div>
					<div class="applications_stone_names">
						<h2><?php the_field('image_7_name'); ?></h2>
						
						<h2><?php the_field('image_7_stone'); ?></h2>
					</div>
				</div>				
			</div>
		</div>


<?php get_footer(); ?>
