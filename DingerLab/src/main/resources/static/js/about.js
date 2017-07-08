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
	
	$(window).on('scroll', function(){
		var pos = $(this).scrollTop();
		changeHeaderState(pos);
		
		var headList = $('body').find('h2');
		
		//스크롤 시에 category 글씨체 bold 처리해야함.
	});
	
	$('.small-category').click(function(){
		var smallCategory = $(this).html();
		
		var headList = $('body').find('h2');
		
		$.each(headList, function(index, h2){
			var text = $(h2).html();
			if(text == smallCategory){
				var offSet = $(h2).offset().top*1;
				console.log(offSet);
				$('html, body').stop().animate({
					scrollTop : offSet - 100
				},function(){
					
				});
			}
		});
	});
	
});