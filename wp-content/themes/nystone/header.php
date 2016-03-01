<!doctype html>
<html <?php language_attributes(); ?> class="no-js">
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
		<title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' |'; } ?> <?php bloginfo('name'); ?></title>

		<link href="//www.google-analytics.com" rel="dns-prefetch">
        <!-- <link href="<?php echo get_template_directory_uri(); ?>/img/icons/favicon.ico" rel="shortcut icon"> -->
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/stone_favicon.png" rel="apple-touch-icon-precomposed">

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		

		<!-- stylesheets -->
		<link rel = "stylesheet" type = "text/css" href = "<?php echo get_template_directory_uri(); ?>/fonts/avenir_next.css">
		<link rel = "stylesheet" type = "text/css" href = "<?php echo get_template_directory_uri(); ?>/fonts/futura.css">
		<link rel = "stylesheet" type = "text/css" href = "<?php echo get_template_directory_uri(); ?>/fonts/fontawesome.css">
		<link rel = "stylesheet" href = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

		<!-- scripts -->
		<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>      
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>		
		<script src="<?php echo get_template_directory_uri(); ?>/js/main.js"></script>	
		<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/js/lib/scrollbar/jquery.mCustomScrollbar.css" />
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>		
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/slidesjs/jquery.slides.min.js"></script>
		<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/js/lib/swiper/swiper.min.css" />
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/swiper/swiper.min.js"></script>
		<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/js/lib/vertical_nav/css/style.css" />
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/vertical_nav/js/main.js"></script>		
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/mlens.min.js"></script>		
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/jquery.imagelens.js"></script>		
		<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/js/lib/slick/slick.css"/>
		<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/lib/slick/slick.min.js"></script>
		<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/lib/onePageScroll/jquery.onepage-scroll.js"></script>
		<link href='<?php echo get_template_directory_uri(); ?>/js/lib/onePageScroll/onepage-scroll.css' rel='stylesheet' type='text/css'>
		<link href='<?php echo get_template_directory_uri(); ?>/js/lib/onePageScroll/component.css' rel='stylesheet' type='text/css'>

				<script src="<?php echo get_template_directory_uri(); ?>/js/advanced_search.js"></script>
		<!-- Plugin -->
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/color/jquery.colorpicker.js"></script>
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/tooltips/jquery.tooltipster.min.js"></script>
		<link href="<?php echo get_template_directory_uri(); ?>/js/lib/tooltips/tooltipster.css" rel="stylesheet" type="text/css"/>
		<link href="<?php echo get_template_directory_uri(); ?>/js/lib/color/jquery.colorpicker.css" rel="stylesheet" type="text/css"/>

		<!-- Plugin extensions -->
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/color/jquery.ui.colorpicker-nl.js"></script>
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/color/jquery.ui.colorpicker-rgbslider.js"></script>
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/color/jquery.ui.colorpicker-memory.js"></script>
		<script src="<?php echo get_template_directory_uri(); ?>/js/lib/color/jquery.ui.colorpicker-pantone.js"></script>	

		<?php wp_head(); ?>

	</head>

	<body <?php body_class(); ?> id="skrollr-body">
		<nav class="primary_nav home_nav">	
			<div class="left">
				<a href="<?php echo esc_url (home_url('/'));?>">
					<img class="small_logo" src="<?php echo get_template_directory_uri(); ?>/img/cr-thumb.png"/>
				</a>
			</div>
			<div class="nav_links_list hide_on_769">

				<ul>
					<li><?php wp_nav_menu( array( 'theme_location' => 'header-menu' ) ); ?></li>
				</ul>

				<div class="search_state_wrapper">
					<!-- <form class="searchform_wrapper"> -->

						<div class="searchform_content_wrapper search_state_box_animate">
							<?php echo do_shortcode("[wpbsearch]"); ?>
							<!-- <button class="searchform_button" type="submit"><a href="<?php bloginfo('url'); ?>/wordpress/search-page/" title="Search Page"></a></button> -->
						</div>
						<div class="search_state_cancel_btn">
							<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
								 viewBox="-483 485 32 32" enable-background="new -483 485 32 32" xml:space="preserve">
								<path fill="#FFFFFF" d="M-451.8,517.1c-0.2,0-0.5-0.1-0.7-0.3l-30.3-30.3c-0.4-0.4-0.4-1,0-1.4s1-0.4,1.4,0l30.3,30.3
								c0.4,0.4,0.4,1,0,1.4C-451.3,517-451.6,517.1-451.8,517.1L-451.8,517.1z M-482.2,517.1c-0.2,0-0.5-0.1-0.7-0.3c-0.4-0.4-0.4-1,0-1.4
								l30.3-30.3c0.4-0.4,1-0.4,1.4,0s0.4,1,0,1.4l-30.3,30.3C-481.7,517-481.9,517.1-482.2,517.1L-482.2,517.1z"/>
							</svg>
						</div>
					<!-- </form> -->
					<aside class="search_helpers_container">
						<div>
							<h4 class="search_results_header search_state_box_animate">Quick Links</h4>
							<ul class="search_results_list">
								<li class="search_results_item search_state_box_animate">
									<a href="/?s">Advanced Search</a>
								</li>
								<li class="search_results_item search_state_box_animate">
									<a href="/product-category/marble/">Marble Tiles</a>
								</li>
								<li class="search_results_item search_state_box_animate">
									<a href="/product-category/granite/">Granite</a>
								</li>
								<li class="search_results_item search_state_box_animate">
									<a href="/product-category/quartzite/">Quartzite</a>
								</li>
								<li class="search_results_item search_state_box_animate">
									<a href="/product-category/travertine/">Travertine Tiles</a>
								</li>
								<li class="search_results_item search_state_box_animate">
									<a href="/product-category/onyx/">Onyx Tiles</a>
								</li>
							</ul>
						</div>
					</aside>
				</div>
			</div>
			<div class="right">
				<div class="search_clear_wrapper" id="activate_search_state">
					<span class="search_clear_icon">
						<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
							 viewBox="170 72 642 654" enable-background="new 170 72 642 654" xml:space="preserve">
						<g>
							<path d="M444.6,116c-57.5,0-115,21.9-159,65.5c-87.5,87.5-87.5,229.3,0,316.7c84.6,84.1,219.8,87,308,8.7l175.4,175.1
								c2.5,2.5,6.8,2.5,9,0.2c2.5-2.2,2.5-6.7,0.2-8.9L602.7,498.3c0.2-0.2,0.2-0.2,0.5-0.2c87.5-87.5,87.7-229,0.2-316.5
								C559.6,137.9,502.1,116,444.6,116L444.6,116z M444.6,128.5c54.1,0,108.5,20.6,149.7,62c82.8,82.5,82.8,216.1,0,298.6
								c-82.8,82.5-216.7,82.5-299.4,0s-82.8-216.1,0-298.6C336.1,149.1,390.5,128.5,444.6,128.5L444.6,128.5z"/>
						</g>
						</svg>

					</span>
				</div>
				<div class="show_on_769 inline_block">
					<a class="toggle_mobile_menu toggle_full_screen_modal" data-full_screen_modal_type="mobile_menu">
						<div></div>
						<div></div>
						<div></div>
					</a>
				</div>				
			</div>
		</nav>
		<nav class="mobile_menu full_screen_modal" id="mobile_menu_full_screen_modal">
			<div class="mobile_nav_header">
				<div class="left">
					<a href="#">
						<img class="small_logo" src="<?php echo get_template_directory_uri(); ?>/img/logo_white.png"/>
					</a>
				</div>
				<div class="right">
					<a class="close_mobile_menu close_full_screen_modal">
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
					</a>
				</div>
			</div>
			<div class="nav_links_list nav_links_mobile">

					<?php wp_nav_menu( array( 'theme_location' => 'mobile-menu' ) ); ?>
				
			</div>
			<div class="mobile_nav_footer">
				<a>Get In Touch</a>
			</div>
		</nav>
