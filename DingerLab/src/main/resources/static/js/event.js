/**
 * 
 */

$(document).ready(function(){
	$(window).on('scroll', function(){
		var pos = $(this).scrollTop();
		changeHeaderState(pos);
	});
});