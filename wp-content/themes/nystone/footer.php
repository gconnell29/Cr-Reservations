<footer>
			<ul class="links">
				<li>
					<?php wp_nav_menu( array( 'theme_location' => 'footer-menu' ) ); ?>
				</li>
			</ul>
			<div class="footer_row">
				<!-- <div class="location_footer location_footer_left">
					<b>Showroom</b>
					<p>30 W 21st Street</p>
					<p>New York, NY 10010</p>
					<p>2 0 1 . 6 8 1 . 3 3 5 2</p>
				</div> -->
				<!-- <ul class="social_links">
					<li>
						<a class="footer_social_link">
							<span class="fa fa-facebook"></span>
						</a>
					</li>
					<li>
						<a class="footer_social_link">
							<span class="fa fa-twitter"></span>
						</a>
					</li>
					<li>
						<a class="footer_social_link">
							<span class="fa fa-pinterest"></span>
						</a>
					</li>
					<li>
						<a class="footer_social_link">
							<span class="fa fa-instagram"></span>
						</a>
					</li>
					<li>
						<a class="footer_social_link">
							<span>
								<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
									 viewBox="0 0 145.7 143.7" enable-background="new 0 0 145.7 143.7" xml:space="preserve">
									<path fill="#7F7F7F" d="M124.6,142H20.7c-10.2,0-18.4-8.2-18.4-18.4V19.7c0-10.2,8.2-18.4,18.4-18.4h103.9
										c10.2,0,18.4,8.2,18.4,18.4v103.9C143,133.8,134.8,142,124.6,142z"/>
									<polyline fill="#FFFFFF" points="43.7,73.4 43.7,108.1 73.7,90.7 43.7,73.4 43.7,73.4 "/>
									<polyline fill="#FFFFFF" points="73.7,90.7 73.7,125.4 103.7,108.1 103.7,73.4 73.7,90.7 "/>
									<g>
										<polyline fill="#FFFFFF" points="73.7,56.1 103.7,73.4 103.7,38.7 73.7,56.1 	"/>
										<polyline fill="#FFFFFF" points="73.7,90.7 103.7,73.4 73.7,56.1 73.7,90.7 	"/>
									</g>
									<polyline fill="#FFFFFF" points="43.7,38.7 43.7,73.4 73.7,56 43.7,38.7 43.7,38.7 "/>
									<polyline fill="#FFFFFF" points="43.6,38.9 73.7,56.1 73.5,21.4 43.6,38.9 43.6,38.9 "/>
								</svg>
							</span>
						</a>
					</li>
				</ul> -->
				<div class="location_footer location_footer_right">
					<b><a href="mailto:info@cr-restorations.com">info@cr-restorations.com</a></b>
					<p>New Jersey</p>
					<p>Florida (Broward County)</p>
					<p>2 0 1 . 6 8 1 . 3 3 5 2</p>
					<p>2 0 1 . 6 5 8 . 4 3 2 0</p>
				</div>
			</div>
			<div class="footer_row footer_row_2_last">
				<p class="copright">Copyright &#xa9; 2014 C.R. RESTORATION. All rights reserved.</p>
			</div>
			<!-- <div class="footer_row footer_row_last">
				<img class="footer_logo" src="<?php echo get_template_directory_uri(); ?>/img/logo_bluegray.png"/>
			</div> -->
		</footer>
		<div class="search_state_curtain"></div>
		<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/lib/skrollr.min.js"></script>
    	<script type="text/javascript">
	    	var s = skrollr.init({
                    mobileCheck: function(){
                        //hack - forces mobile version to be off;
                        return false;
                    },        
                    forceHeight: false
                });
          </script>

		<?php wp_footer(); ?>

		<!-- analytics -->

	</body>
</html>
