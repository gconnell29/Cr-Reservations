<?php get_header(); ?>

		<div class="content_wrapper">
			<div class="projects_content_wrapper">
				<h1 class="futura">Projects</h1>
				<div class="four_swatches_wrapper">

					<?php
					  $args = array(
					    'post_type' => 'projects'
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>

					<a href="<?php the_permalink(); ?>">
						<div class="product_swatch">
							<div class="product_swatch_image clickable_img" style="background-image:url(<?php the_field('image'); ?>)"></div>
							<h4><?php the_field('name'); ?></h4>
						</div>
					</a>

					<?php
				    		}
				  		}
					  else {
					    echo 'No Projects Found';
					  }
				  	?>

				</div>
			</div>
			<div class="client_logos_content_wrapper">
				<h1 class="futura">Find our Stone</h1>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/yoo.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/yoo.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/sheraton.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/sheraton.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/marriott.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/marriott.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/one_cp.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/one_cp.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/hotelZ.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/hotelZ.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/fendi.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/fendi.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/chanel.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/chanel.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/vs.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/vs.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/ubs.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/ubs.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/juice.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/juice.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/cipriani.png)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/cipriani.png"/>
					</div>
				</a>
				<a class="client_logo_link" href="#">
					<div>
						<div class="background_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/client_logos/aroma.jpg)"></div>
						<img src="<?php echo get_template_directory_uri(); ?>/img/client_logos/aroma.jpg"/>
					</div>
				</a>
			</div>
		</div>	

<?php get_footer(); ?>
