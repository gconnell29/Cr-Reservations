<?php
/**
 * My Account page
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

?>

<div class="full_screen full_screen_account"> 

	<div class="account_view_content_wrapper">
		<?php wc_print_notices(); ?>
		<div class="account_header">
			<h2>My Account</h2>
			<img class="footer_logo" src="<?php echo get_template_directory_uri(); ?>/img/logo_black.png"/>
		</div>
	</div>
	<ul class="account_view_nav">
		<li><a href="/wishlist">Favorite Materials</a></li>
		<li><a href="/contact">Schedule a Tour</a></li>
		<li><a href="/resources/sample-request">Sample Request</a></li>
		<li>
			<?php
				printf( __( '<a href="%s">Edit Account Details</a>', 'woocommerce' ),
					wc_customer_edit_account_url()
				);
			?>
		</li>
		<li>
			<?php
				printf(
					__( '<a href="%2$s">Log out</a>', 'woocommerce' ) . ' ',
					$current_user->display_name,
					wc_get_endpoint_url( 'customer-logout', '', wc_get_page_permalink( 'myaccount' ) )
				);
			?>
		</li>
	</ul>	
</div>
