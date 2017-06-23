/**
 * 
 */
$(document).ready(function(){
	fitMiddle($('header>a').width()*1);
	
	var swiper = new Swiper('.swiper-container', {
		pagination : '.swiper-pagination',
		paginationClickable : true,
		
		prevButton : '.swiper-button-prev',
		nextButton : '.swiper-button-next',
		
		spaceBetween : 30,
		
		autoplay : 3000,
		loop : true
	});
	
});