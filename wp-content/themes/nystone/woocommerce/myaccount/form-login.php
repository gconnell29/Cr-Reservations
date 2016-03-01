<?php
/**
 * Login Form
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.2.6
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

?>



<?php do_action( 'woocommerce_before_customer_login_form' ); ?>

<?php if ( get_option( 'woocommerce_enable_myaccount_registration' ) === 'yes' ) : ?>

<div class="full_screen full_screen_account"> 
	<div class="account_view_content_wrapper">
		<?php wc_print_notices(); ?>
		<div class="account_header">
			<h2>My Account</h2>
			<img class="footer_logo" src="<?php echo get_template_directory_uri(); ?>/img/logo_black.png"/>
		</div>
	</div>

	<div class="account_view_nav">
		<div class="col2-set" id="customer_login">

			<div class="col-1">

<?php endif; ?>

			<h3><?php _e( 'Log In', 'woocommerce' ); ?></h3>

			<form method="post" class="login">

			<?php do_action( 'woocommerce_login_form_start' ); ?>

				<p class="form-row form-row-wide">
					<!-- <label for="username"><?php _e( 'Username or email address', 'woocommerce' ); ?> <span class="required">*</span></label> -->
					<input type="text" class="input-text" name="username" id="username" placeholder="Username" value="<?php if ( ! empty( $_POST['username'] ) ) echo esc_attr( $_POST['username'] ); ?>" />
				</p>
				<p class="form-row form-row-wide">
					<!-- <label for="password"><?php _e( 'Password', 'woocommerce' ); ?> <span class="required">*</span></label> -->
					<input class="input-text" type="password" name="password" id="password" placeholder="Password" />
				</p>

			<?php do_action( 'woocommerce_login_form' ); ?>

				<p class="form-row">
					<?php wp_nonce_field( 'woocommerce-login' ); ?>
					<input type="submit" class="button" name="login" value="<?php esc_attr_e( 'Login', 'woocommerce' ); ?>" />
					<label for="rememberme" class="inline">
						<input name="rememberme" type="checkbox" id="rememberme" value="forever" /> <?php _e( 'Remember me', 'woocommerce' ); ?>
					</label>
				</p>
				<p class="lost_password">
					<a href="<?php echo esc_url( wp_lostpassword_url() ); ?>"><?php _e( 'Lost your password?', 'woocommerce' ); ?></a>
				</p>

			<?php do_action( 'woocommerce_login_form_end' ); ?>

			</form>

<?php if ( get_option( 'woocommerce_enable_myaccount_registration' ) === 'yes' ) : ?>

		</div>

		<div class="col-2">

			<h3><?php _e( 'Register', 'woocommerce' ); ?></h3>

			<form method="post" class="register">

			<?php do_action( 'woocommerce_register_form_start' ); ?>

			<?php if ( 'no' === get_option( 'woocommerce_registration_generate_username' ) ) : ?>

				<p class="form-row form-row-wide">
					<label for="reg_username"><?php _e( 'Username', 'woocommerce' ); ?> <span class="required">*</span></label>
					<input type="text" class="input-text" name="username" id="reg_username" value="<?php if ( ! empty( $_POST['username'] ) ) echo esc_attr( $_POST['username'] ); ?>" />
				</p>

			<?php endif; ?>

			<p class="form-row form-row-wide">
				<!-- <label for="reg_email"><?php _e( 'Email address', 'woocommerce' ); ?> <span class="required">*</span></label> -->
				<input type="email" class="input-text" name="email" placeholder="Email Address" id="reg_email" value="<?php if ( ! empty( $_POST['email'] ) ) echo esc_attr( $_POST['email'] ); ?>" />
			</p>

			<?php if ( 'no' === get_option( 'woocommerce_registration_generate_password' ) ) : ?>

				<p class="form-row form-row-wide">
					<!-- <label for="reg_password"><?php _e( 'Password', 'woocommerce' ); ?> <span class="required">*</span></label> -->
					<input type="password" class="input-text" name="password" placeholder="Password" id="reg_password" />
				</p>

			<?php endif; ?>

			<!-- Spam Trap -->
			<div style="<?php echo ( ( is_rtl() ) ? 'right' : 'left' ); ?>: -999em; position: absolute;"><label for="trap"><?php _e( 'Anti-spam', 'woocommerce' ); ?></label><input type="text" name="email_2" id="trap" tabindex="-1" /></div>

			<?php do_action( 'woocommerce_register_form' ); ?>
			<?php do_action( 'register_form' ); ?>

			<p class="form-row">
				<?php wp_nonce_field( 'woocommerce-register' ); ?>
				<input type="submit" class="button" name="register" value="<?php esc_attr_e( 'Register', 'woocommerce' ); ?>" />
			</p>

			<?php do_action( 'woocommerce_register_form_end' ); ?>

				</form>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>

<?php do_action( 'woocommerce_after_customer_login_form' ); ?>
