/**
 * 
 */

$(document).ready(function(){
	fitMiddle($('header>a').width()*1);
	
	$(window).on('scroll', function(){
		var pos = $(this).scrollTop();
		changeHeaderState(pos);
	});
});