<?php get_header(); ?>

		<!-- <div class="home_page_force_height"></div> -->
		<div class="full_screen full_screen_resources full_screen_matspecs"> 
			<h2>Application's Guide</h2>
			<h3>[Considerations &#x26; Specifications]</h3>
			<h5>Types of Stone</h5>
			<div class="stone_types">
                
                   <?php
					  $args = array(
					    'post_type' => 'typesofstone'
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>
				<b><?php the_field('type_of_stone'); ?>:</b>
				<p><?php the_field('description'); ?></p>
                
                   <?php
				    		}
				  		}
					  else {
					    echo 'No Stones Found';
					  }
				  	?>
                      

			</div>
			<h5>Material Suitabilities</h5>
			<div class="content_w_bullets">
                <?php
					  $args = array(
					    'name' => '$material-suitabilities'
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>
                    
                <b><?php the_field('intro'); ?></b>
                <?php the_field('text'); ?>
               
                  <?php
				    		}
				  		}
					  else {
					    echo 'No Stones Found';
					  }
				  	?>
			</div>
			<h5>Things to Consider before Application</h5>
			<ul class="italic_horiz_list">
				<li><p>Abrasion</p></li>
				<li><p>Absorption</p></li>
				<li><p>Acid Sensitivity</p></li>
				<li><p>Heavy Traffic</p></li>
				<li><p>Freezing</p></li>
			</ul>
			<img src="<?php echo get_template_directory_uri(); ?>/img/material_specs_table.jpg" class="mat_specs_table_img">
			<label>The above table is general, for specific information please speak with our stone experts at the showroom or warehouse</label>
			<h5>Recommended Countertops</h5>
				<div class="five_swatches_wrapper">

					<?php
					  $args = array(
					    'post_type' => 'recommendedcountertops'
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>

					<a href="/product-category<?php the_field('link'); ?>">
						<div class="product_swatch">
							<div class="product_swatch_image" style="background-image:url(<?php the_field('image'); ?>)">)"></div>
							<h4><?php the_field('stone'); ?></h4>
						</div>
					</a>

					<?php
				    		}
				  		}
					  else {
					    echo 'No Stones Found';
					  }
				  	?>
					
				</div>			

			<h5>Recommended Flooring</h5>
				<div class="five_swatches_wrapper">
                    
                    <?php
					  $args = array(
					    'post_type' => 'recommendedflooring'
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>
                    
					<a href="/product-category<?php the_field('link'); ?>">
						<div class="product_swatch">
							<div class="product_swatch_image" style="background-image:url(<?php the_field('image'); ?>)"></div>
							<h4><?php the_field('stone'); ?></h4>
						</div>
					</a>
                    
                    <?php
				    		}
				  		}
					  else {
					    echo 'No Stones Found';
					  }
				  	?>
			
				</div>	

			<h5>Recommended Exterior</h5>
				<div class="five_swatches_wrapper">

  					<?php 
					  $args = array(
					    'post_type' => 'recommendedexterior'
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>

					<a href="/product-category<?php the_field('link'); ?>">
						<div class="product_swatch">
							<div class="product_swatch_image" style="background-image:url(<?php the_field('image'); ?>)">)"></div>
							<h4><?php the_field('stone'); ?></h4>
						</div>
					</a>

					<?php
				    		}
				  		}
					  else {
					    echo 'No Stones Found';
					  }
				  	?>

					
				</div>		

			<h5>Luxury Stones</h5>
				<div class="five_swatches_wrapper">

					<?php 
					  $args = array(
					    'post_type' => 'luxurystones'
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>

					<a href="/product-category<?php the_field('link'); ?>">
						<div class="product_swatch">
							<div class="product_swatch_image" style="background-image:url(<?php the_field('image'); ?>)">)"></div>
							<h4><?php the_field('stone'); ?></h4>
						</div>
					</a>

					<?php
				    		}
				  		}
					  else {
					    echo 'No Stones Found';
					  }
				  	?>

				</div>			
		</div>

<?php get_footer(); ?>
