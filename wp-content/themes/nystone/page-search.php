<?php get_header(); ?>

		<div class="search_results_content_wrapper">
			<div class="search_filter_row">
				<!-- <div class="left filter_options_wrapper">
					<div class="option_button filter_option_btn">
						<p>Slab</p>
						<input type="checkbox"/>
					</div>
					<span>/</span>
					<div class="option_button filter_option_btn">
						<p>Tile</p>
						<input type="checkbox"/>
					</div>
				</div> -->
				<h1 title="advanced_search">Advanced Search</h1>
			</div>
			<div class="search_filter_row">
				<div class="pantone_swatches_wrapper">
					<div id="colorpicker-layout" value=""></div>
					<input id="colorpicker-selected-value" value="No colors selected" type="text">
				</div>
			</div>
			<div class="search_filter_row">
				<div class="filter_options_wrapper filter_flex_slider">
					<div class="option_button filter_option_btn">
						<div class="filter_color"></div>
						<p>
							<span>Marble</span>
						</p>
						<input type="checkbox"/>
					</div>
					<div class="option_button filter_option_btn">
						<div class="filter_color"></div>
						<p>
							<span>Granite</span>
						</p>
						<input type="checkbox"/>
					</div>
					<div class="option_button filter_option_btn">
						<div class="filter_color"></div>
						<p>
							<span>Limestone</span>
						</p>
						<input type="checkbox"/>
					</div>
					<div class="option_button filter_option_btn">
						<div class="filter_color"></div>
						<p>
							<span>Quartzite</span>
						</p>
						<input type="checkbox"/>
					</div>
					<div class="option_button filter_option_btn">
						<div class="filter_color"></div>
						<p>
							<span>Travertine</span>
						</p>
						<input type="checkbox"/>
					</div>
					<div class="option_button filter_option_btn">
						<div class="filter_color"></div>
						<p>
							<span>Onyx</span>
						</p>
						<input type="checkbox"/>
					</div>
					<div class="option_button filter_option_btn">
						<div class="filter_color"></div>
						<p>
							<span>Porcelain</span>
						</p>
						<input type="checkbox"/>
					</div>
				</div>
			</div>

			<div class="search_filter_row search_input_row">
				<form>
					<label for="otherCriteria" class="advanced_search_label">Other Criteria:</label>
					<input type="search" id="otherCriteria" placeholder=""/>
					<input class="primary_btn" type="submit" value="Search">
				</form>
			</div>

			<div class="search_filter_row product_results">

				<?php get_template_part('loop'); ?>

				<?php get_template_part('pagination'); ?>

			</div>


		</div>





<?php get_footer(); ?>

