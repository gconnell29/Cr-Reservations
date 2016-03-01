$(document).ready(function(){
	$(function() {
	    $('#colorpicker-layout').colorpicker({
	        parts:  ['swatches'],
	        swatches: 'pantone',
	        autoOpen:true,
	        inline:true,
	        alpha:  true
	    });
	});
	$(function() {
    	$(document).on('click','.ui-colorpicker-swatch',function(){
    		var selected_pantone_key = $(this).prop('title');
    		var selected_pantone_color = $(this).css('background-color');
    		$('.ui-colorpicker-swatch').removeClass('selected');
    		$("#colorpicker-selected-value").val(selected_pantone_key);
    		$("#colorpicker-selected-value").css('background-color',selected_pantone_color);
    		$(this).addClass('selected');
	    });
	});
});