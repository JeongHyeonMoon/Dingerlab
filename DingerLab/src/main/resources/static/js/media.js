/**
 * 
 */

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
});