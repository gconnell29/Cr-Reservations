<?php
/**
 * Single Product Image
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.0.14
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

global $post, $woocommerce, $product;

?>
<div class="product_detail_wrapper">
<script>
	$(function(){
		$("#product_detail_swatch").imageLens({ lensSize: 200,borderColor:"#2D2F33" });
	});	
</script>
<div class="left_column">
<div class="left_on_690">
	<div class="product_detail_swatch_mask">

	<?php
		if ( has_post_thumbnail() ) {

			$image_title 	= esc_attr( get_the_title( get_post_thumbnail_id() ) );
			$image_caption 	= get_post( get_post_thumbnail_id() )->post_excerpt;
			$image_link  	= wp_get_attachment_url( get_post_thumbnail_id() );
			$image       	= get_the_post_thumbnail( $post->ID, apply_filters( 'single_product_large_thumbnail_size', 'shop_single' ), array(
				'title'	=> $image_title,
				'alt'	=> $image_title,
				'class' => 'product_detail_swatch',
				'id' => 'product_detail_swatch'
				) );

			$attachment_count = count( $product->get_gallery_attachment_ids() );

			if ( $attachment_count > 0 ) {
				$gallery = '[product-gallery]';
			} else {
				$gallery = '';
			}

			echo apply_filters( 'woocommerce_single_product_image_html', sprintf( '<a href="%s" itemprop="image" class="woocommerce-main-image zoom" title="%s" data-rel="prettyPhoto' . $gallery . '">%s</a>', $image_link, $image_caption, $image ), $post->ID );

		} else {

			echo apply_filters( 'woocommerce_single_product_image_html', sprintf( '<img src="%s" alt="%s" />', wc_placeholder_img_src(), __( 'Placeholder', 'woocommerce' ) ), $post->ID );

		}
	?>
		</div>
			<p><b>Name:</b> <?php the_title(); ?></p>
			<p><b>Type:</b> <?php the_field('type'); ?></p>
			<p><b>Origin:</b> <?php the_field('origin'); ?></p>
		</div>
		<div class="pantone_product_detail_container">
<!-- 			<div class="pantone_logo"></div> -->
			<div class="pantone_thumbnails_wrapper">
<!-- 				<div class="pantone_thumb" style="background:#a0ab4c"></div>
				<div class="pantone_thumb" style="background:#9bae89"></div>
				<div class="pantone_thumb" style="background:#5d7975"></div>
				<div class="pantone_thumb" style="background:#233745"></div>
				<div class="pantone_thumb" style="background:#c3d7ee"></div> -->
			</div>
		</div>

		<div class="right_on_690">
			<div class="paragraph_with_header">
				<p><b>Material Description:</b></p>
				<p><?php the_field('description'); ?></p>
			</div>
			<div class="product_detail_actions">
				<a class="primary_btn toggle_full_screen_modal" data-full_screen_modal_type="request_sample">Sample Request</a>
				<a class="primary_btn toggle_full_screen_modal" data-full_screen_modal_type="bookmatch">Bookmatch</a>
				<a class="primary_btn toggle_full_screen_modal like_btn" data-full_screen_modal_type="register">
					<i class="fa fa-thumbs-o-up"></i>
				</a>
				<br>
				<!-- <a class="clear_btn">Download Material Specification</a> -->
				<!-- <span>|</span> -->
				<?php echo do_shortcode("[yith_wcwl_add_to_wishlist]"); ?>
				
			</div>
		</div>
	</div>
					<!-- <div class="right_column">
						<div class="lots_wrapper">
							<h2><a class="clear_btn">Click on image below to view live inventory</a></h2>
							<div class="lots_rows" id="lots_scroll_wrapper">
								
							</div>
							
							<div class="blur_wrapper">
								<div class="extra_photos blur_img" style="background-image:url(<?php echo get_template_directory_uri(); ?>/img/product_detail_extraphoto.jpg)">
							</div>
							<h2 class="overlay-text"><a href="/" target="blank">View Inventory</a></h2>
							</div>
							</a>
						</div>
					</div>
				</div> -->


<!-- popup modals -->
		<div class="request_sample_modal full_screen_modal dark_background_full_screen_modal" id="request_sample_full_screen_modal">
			<div class="inner_modal_box">
				<a class="right_alligned_close_modal close_full_screen_modal">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 viewBox="69 47.5 64.5 64.5" enable-background="new 69 47.5 64.5 64.5" xml:space="preserve">
						<g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M127.1,51.9l1,1c0,0,0,0.1,0,0.1L73,108.1c0,0-0.1,0-0.1,0
									l-1-1c0,0,0-0.1,0-0.1L127.1,51.9C127,51.9,127.1,51.9,127.1,51.9z"/>
							</g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M73,51.9l55.1,55.1c0,0,0,0.1,0,0.1l-1,1c0,0-0.1,0-0.1,0
									L71.9,53c0,0,0-0.1,0-0.1L73,51.9C72.9,51.9,73,51.9,73,51.9z"/>
							</g>
						</g>
					</svg>
					<p>(esc)</p>
				</a>
				<h1>Sign up for Sample Request</h1>
				<?php echo do_shortcode( '[contact-form-7 id="211" title="Sample Request"]' );?>
			</div>
		</div>

		<div class="request_sample_modal full_screen_modal dark_background_full_screen_modal" id="register_full_screen_modal">
			<div class="inner_modal_box">
				<a class="right_alligned_close_modal close_full_screen_modal">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 viewBox="69 47.5 64.5 64.5" enable-background="new 69 47.5 64.5 64.5" xml:space="preserve">
						<g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M127.1,51.9l1,1c0,0,0,0.1,0,0.1L73,108.1c0,0-0.1,0-0.1,0
									l-1-1c0,0,0-0.1,0-0.1L127.1,51.9C127,51.9,127.1,51.9,127.1,51.9z"/>
							</g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M73,51.9l55.1,55.1c0,0,0,0.1,0,0.1l-1,1c0,0-0.1,0-0.1,0
									L71.9,53c0,0,0-0.1,0-0.1L73,51.9C72.9,51.9,73,51.9,73,51.9z"/>
							</g>
						</g>
					</svg>
					<p>(esc)</p>
				</a>
				<h1>Create Account</h1>
				<p>(to add products to your favorites)</p>
				<form class="request_sample_form">
					<?php echo do_shortcode( '[profilepress-registration id="1"]' );?>
					
					<!-- <label>
						<input id="fname" type="text" class="peeky_placeholder" placeholder="Name">
						<span>Name</span>
					</label>

					<label>
						<input type="email" class="peeky_placeholder" placeholder="Email">
						<span>Email</span>
					</label>
					<div class="input_row_split">
						<label>
							<input type="password" class="peeky_placeholder" placeholder="Password">
							<span>Password</span>
						</label>
						<label>
							<input type="password" class="peeky_placeholder" placeholder="Confirm Password">
							<span>Confirm Password</span>
						</label>
					</div>
					<label>
						<input type="text" class="peeky_placeholder" placeholder="Occupation">
						<span>Occupation</span>
					</label>
					<label>
						<input type="text" class="peeky_placeholder" placeholder="Company">
						<span>Company</span>
					</label>
					<label>
						<input type="tel" class="peeky_placeholder" placeholder="Phone">
						<span>Phone</span>
					</label>
					<input class="primary_btn primary_btn_nogradient" type="submit" value="Register"> -->
				</form>
			</div>
		</div>

		<div class="request_sample_modal full_screen_modal dark_background_full_screen_modal" id="request_sample_full_screen_modal">
			<div class="inner_modal_box">
				<a class="right_alligned_close_modal close_full_screen_modal">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 viewBox="69 47.5 64.5 64.5" enable-background="new 69 47.5 64.5 64.5" xml:space="preserve">
						<g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M127.1,51.9l1,1c0,0,0,0.1,0,0.1L73,108.1c0,0-0.1,0-0.1,0
									l-1-1c0,0,0-0.1,0-0.1L127.1,51.9C127,51.9,127.1,51.9,127.1,51.9z"/>
							</g>
							<g>
								<path stroke="#ffffff" stroke-width="3" stroke-miterlimit="10" d="M73,51.9l55.1,55.1c0,0,0,0.1,0,0.1l-1,1c0,0-0.1,0-0.1,0
									L71.9,53c0,0,0-0.1,0-0.1L73,51.9C72.9,51.9,73,51.9,73,51.9z"/>
							</g>
						</g>
					</svg>
					<p>(esc)</p>
				</a>
				<h1>Sign up for Sample Request</h1>
				<?php echo do_shortcode( '[contact-form-7 id="211" title="Sample Request"]' );?>
			</div>
		</div>

	<?php do_action( 'woocommerce_product_thumbnails' ); ?>

</div>
