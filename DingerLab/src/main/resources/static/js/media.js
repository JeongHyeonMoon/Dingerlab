/**
 * 
 */
$(function(){
	$(".youtube").YouTubeModal({autoplay:1, width:640, height:480});
});

$(document).ready(function(){
	var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        slidesPerView: 3,
        paginationClickable: true,
        
        spaceBetween: 30,
        
        prevButton : '.swiper-button-prev',
		nextButton : '.swiper-button-next',
		
		autoplay : 3000,
		loop : true
    });
	
	$(window).on('scroll', function(){
		var pos = $(this).scrollTop();
		changeHeaderState(pos);
	});
});
