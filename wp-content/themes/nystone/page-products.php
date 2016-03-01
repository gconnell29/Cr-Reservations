<?php
/*
Template Name Posts: Products
*/
?>

<?php get_header(); ?>

		<div class="content_wrapper">
			<div class="products_content_wrapper">
				<h1 class="futura">Products</h1>
				<div class="five_swatches_wrapper">

					<?php
					  $args = array(
					    'post_type' => 'products',
					    // 'category_name' => 'Slabs' 
					    );
					  $products = new WP_Query( $args );
					  if( $products->have_posts() ) {
					    while( $products->have_posts() ) {
					      $products->the_post();
					?>


					<a href="<?php the_permalink(); ?>">
						<div class="product_swatch">
							<div class="product_swatch_image" style="background-image:url(<?php the_field('image'); ?>)"></div>
							<h4><?php the_field('name'); ?></h4>
						</div>
					</a>

					<?php
							    		}
							  		}
								  else {
								    echo 'No Products Found';
								  }
							  	?>


<!-- 					<a href="../views/material_category.html">

	
					
					<a href="../views/material_category.html">
						<div class="product_swatch">
							<div class="product_swatch_image clickable_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/material_granite.jpg)"></div>
							<h4>Colorquartz</h4>
						</div>
					</a>
					<a href="../views/material_category.html">
						<div class="product_swatch">
							<div class="product_swatch_image clickable_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/material_granite.jpg)"></div>
							<h4>Porcelain</h4>
						</div>
					</a> -->
					
				</div>
			</div>
		</div>

<?php get_footer(); ?>
