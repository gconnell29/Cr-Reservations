$(document).ready(function() {

	/*var mySwiper = new Swiper('.swiper-container', {
	    speed: 800,
	    spaceBetween: 0,
	    autoplay:2100,
	    infinite:true,
	    effect: 'fade',
	    loop:true,
	    parallax: true,
        paginationClickable: true
	});  

	$('.search_clear_wrapper').on('click',function(event) {
		event.preventDefault();
		event.stopImmediatePropagation();
		activate_search_state();
	});

	$('.search_state_cancel_btn').on('click',function(event) {
		event.preventDefault();
		event.stopImmediatePropagation();
		close_search_state();
	});

	$(".search_state_curtain").on('click',function(){
		close_search_state();
	});

	$("#newsletter_list_email_submit").on('click',function(){
		$(".newsletter_join_step_1").hide();
		$(".newsletter_join_step_2").fadeIn(500);
		$("#show_newsletter_join_box").addClass('newsletter_occupation_box_active');
	});

	var $window = $(this);
	var window_width = $window.width();
	var window_height = $window.height();
	$(".home_page_force_height").height(window_height);
	
	$window.resize(function(){
		var window_height = $window.height();
		$(".home_page_force_height").height(window_height);
	});

  	$(document).on("mouseover",".applications_tooltip_egg.inactive",function() {
 		$(this).find("p").show();
	    $(this).addClass("active_egg").delay(350).queue(function(textFadeIn){
			$(this).addClass("egg_show_text");
			$(this).removeClass("inactive");
			textFadeIn();
		});
	});

  	$(document).on("click",".deactivate_egg",function() {
		var $parent_egg = $(this).closest(".applications_tooltip_egg");
		$parent_egg.find("p").hide();
	    $parent_egg.removeClass("egg_show_text").delay(5).queue(function(deactivateEgg){
			$parent_egg.removeClass("active_egg").delay(750).queue(function(inactiveEgg){	
				$parent_egg.addClass("inactive");
				inactiveEgg();
			});
			deactivateEgg();
		});		
	});
 

	$("#view_similar_products").click(function(){
		
		$('html,body').animate({
	        scrollTop: $(window).scrollTop() + 480
	    });
		$(".similar_products_row").addClass("similar_products_row_active");
	});

	$("#show_newsletter_join_box").click(function(){
		$(this).addClass("newsletter_join_box_active");
	});

	$(".toggle_full_screen_modal").click(function(){
		var modal_link_type=$(this).attr("data-full_screen_modal_type");
		if(modal_link_type==="product_specs"){
			var modal_box_to_open=$(this).attr("data-product_specs_count");
			show_in_page_modal(modal_link_type,modal_box_to_open);
		}else{
			show_in_page_modal(modal_link_type);
		}
	});

	$(".close_full_screen_modal").click(function(){
		hide_full_modal();
	});

	$(".dark_background_full_screen_modal").click(function(){
		if($(this).attr("id")==="product_specs_full_screen_modal"){
			return
		}else{
			hide_full_modal();
		}	
	});

	$(".inner_modal_box").click(function(event){
		event.stopImmediatePropagation();
	});

	$(document).on("click","button.slick-arrow",function(event) {
		event.stopImmediatePropagation();
	});	

	$(document).keyup(function(e) {
		if($(".full_screen_modal").hasClass("active")){
			if (e.keyCode == 27){
				$('.close_full_screen_modal').click(); 
			}			
		}

		if($(".search_state_wrapper").hasClass("search_state_active")){					
			if (e.keyCode == 27){
				close_search_state();
			}	
		}
	});

	function show_in_page_modal(modal_link_type,modal_box_to_open){
		
		var $modal_to_open = $("#"+modal_link_type+"_full_screen_modal.full_screen_modal");

		$modal_to_open.show().delay(50).queue(function(nextM){
			$modal_to_open.addClass("active");
			nextM();
		});
		console.log(modal_box_to_open);
		if(modal_link_type==="product_specs"){
			$('.modal_box_flexslider .inner_modal_box_item').removeClass("active_product_spec_modal_box next_product_spec_modal_box prev_product_spec_modal_box");
			var $product_specs_modal_box_to_open=$('.modal_box_flexslider .inner_modal_box_item:nth-child('+modal_box_to_open+')');
			$product_specs_modal_box_to_open.addClass("active_product_spec_modal_box");
			$product_specs_modal_box_to_open.nextAll('.modal_box_flexslider .inner_modal_box_item').each(function(){
				$(this).removeClass("active_product_spec_modal_box prev_product_spec_modal_box").addClass("next_product_spec_modal_box");
			});
			$product_specs_modal_box_to_open.prevAll('.modal_box_flexslider .inner_modal_box_item').each(function(){
				$(this).removeClass("active_product_spec_modal_box next_product_spec_modal_box").addClass("prev_product_spec_modal_box");
			});
			var prev_count=$('.modal_box_flexslider .inner_modal_box_item.prev_product_spec_modal_box').length;
			var after_count=$('.modal_box_flexslider .inner_modal_box_item.next_product_spec_modal_box').length;
			product_specs_arrow_disabler();
		}

		
		$("body").addClass("no_scroll");
	}

	$(".product_specs_next").click(function(){
		product_specs_arrow_disabler();
		var $inner_modal_box_active=$('.modal_box_flexslider .inner_modal_box_item.active_product_spec_modal_box');
		$inner_modal_box_active.next('.modal_box_flexslider .inner_modal_box_item').removeClass('next_product_spec_modal_box').addClass('active_product_spec_modal_box');
		$inner_modal_box_active.removeClass('active_product_spec_modal_box').addClass('prev_product_spec_modal_box');
	});

	$(".product_specs_prev").click(function(){
		product_specs_arrow_disabler();
		var $inner_modal_box_active=$('.modal_box_flexslider .inner_modal_box_item.active_product_spec_modal_box');
		$inner_modal_box_active.prev('.modal_box_flexslider .inner_modal_box_item').removeClass('prev_product_spec_modal_box').addClass('active_product_spec_modal_box');
		$inner_modal_box_active.removeClass('active_product_spec_modal_box').addClass('next_product_spec_modal_box');
	});

	function product_specs_arrow_disabler(){
		setTimeout(function(){
			var prev_count=$('.modal_box_flexslider .inner_modal_box_item.prev_product_spec_modal_box').length;
			var after_count=$('.modal_box_flexslider .inner_modal_box_item.next_product_spec_modal_box').length;		
			console.log("PREV COUNT = " + prev_count + "   AFTER COUNT = " + after_count);
			if(prev_count<1){
				$(".product_specs_prev").addClass("product_specs_arrow_disabled");
			}else{
				$(".product_specs_prev").removeClass("product_specs_arrow_disabled");
			}

			if(after_count<1){
				$(".product_specs_next").addClass("product_specs_arrow_disabled");
			}else{
				$(".product_specs_next").removeClass("product_specs_arrow_disabled");
			}
		}, 50);
	}

	function hide_full_modal(){
		$(".full_screen_modal").removeClass("active").delay(600).queue(function(nextM){
			$(".full_screen_modal").hide();
			nextM();
		});
		if($('.modal_box_flexslider').length>1){
			$('.modal_box_flexslider .inner_modal_box_item').removeClass("active_product_spec_modal_box next_product_spec_modal_box prev_product_spec_modal_box");
		}
		$("body").removeClass("no_scroll");
	}

	$(function() {
	  $('input.peeky_placeholder').on('change', function() {
	    var input = $(this);
	    if (input.val().length) {
	      input.addClass('populated');
	    } else {
	      input.removeClass('populated');
	    }
	  });
	  
	  setTimeout(function() {
	    $('#fname').trigger('focus');
	  }, 500);
	});	

	$(function(){
      $(".single_item_slider").slidesjs({
        width: 940,
        height: 410,
        navigation: {
          effect: "fade"
        },
        play: {
	      active: false,
	      auto: true,
	      interval: 7000,
	      effect: "fade",
	      swap: false,
	      pauseOnHover: false,
	      restartDelay: 2500
	   },
        pagination: {
          effect: "fade"
        },
        effect: {
          fade: {
            speed: 50
          }
        }        
      });
    });   

	function activate_search_state(){
		console.log("open");
		$("body").addClass("no_scroll");
		$(".search_state_curtain").show().queue(function(nextM){
			$(".search_state_curtain").addClass("active_curtain");
			nextM();
		});
		$(".search_state_wrapper").show().queue(function(nextL){
			$(".search_state_wrapper").addClass("search_state_active");
			nextL();
		});
		$($("nav.primary_nav .nav_links_list > ul li a").get().reverse()).each(function(i) {
			$(this).show().delay((i++)*30).queue(function(nextEach){
				$(this).addClass("shrink_nav_item");
				nextEach();
			});
		});
		$($(".search_state_box_animate").get().reverse()).each(function(i) {
			console.log(((i++)*50));
			$(this).show().delay((i++)*50).addClass("search_item_animated");

		}).delay(500).queue(function(fadeinCancel){
			$(".search_state_cancel_btn").addClass("search_state_cancel_btn_animated");
			fadeinCancel();
		});

		$(".searchform_input").focus();
	}	

	$("div").on("click", ".option_button", function(event){

		event.stopImmediatePropagation()
		event.preventDefault();
		var $inner_checkbox = $(this).find("input");
		var $option_clicked = $(this);

		if($option_clicked.hasClass("option_button_radio")){
			var $option_wrapper = $option_clicked.closest(".checkbox_option_button_wrapper");
			$option_wrapper.find(".option_button_radio").removeClass("selected");
			$option_wrapper.find(".option_button_radio").find("input").attr('checked', false);
		}
		if($option_clicked.hasClass("selected")){
			$option_clicked.removeClass("selected");
			if($inner_checkbox.length > 0){
				$inner_checkbox.attr('checked', false);
			}
		} else{
			$option_clicked.addClass("selected");
			if($inner_checkbox.length > 0){
				$inner_checkbox.attr('checked', true);
			}
		}
	});
  $('.filter_flex_slider').slick({
	  dots: false,
	  infinite: false,
	  speed: 330,
	  cssEase:"ease-in-out",
	  slidesToShow: 7,
	  slidesToScroll:2,
	  responsive: [
	    {
	      breakpoint: 1024,
	      settings: {
	        slidesToShow: 5,
	        slidesToScroll: 2,
	      }
	    },
	    {
	      breakpoint: 600,
	      settings: {
	        slidesToShow: 2,
	        slidesToScroll: 2
	      }
	    },
	    {
	      breakpoint: 480,
	      settings: {
	        slidesToShow: 1,
	        slidesToScroll: 1
	      }
	    }
	    // You can unslick at a given breakpoint now by adding:
	    // settings: "unslick"
	    // instead of a settings object
	  ]			  	
  });
	function close_search_state(){
		$("body").removeClass("no_scroll");
		$(".search_state_curtain").removeClass("active_curtain").queue(function(nextJ){
			$(".search_state_curtain").hide();
			nextJ();
		});
		$(".search_state_wrapper").removeClass("search_state_active").queue(function(nextK){
			$(".search_state_wrapper").hide();
			nextK();
		}).delay(300).queue(function(refixElements){
			$(".search_state_box_animate").each(function(i) {
				$(this).removeClass("search_item_animated");
			});
			$(".search_state_cancel_btn").removeClass("search_state_cancel_btn_animated");
			refixElements();
		});		
		$("nav.primary_nav .nav_links_list > ul li a").each(function(i) {
			$(this).show().delay((i++)*25).queue(function(nextEach3){
				$(this).removeClass("shrink_nav_item");
				nextEach3();
			});
		});		
	}*/
});
