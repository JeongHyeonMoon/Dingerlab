$(document).ready(function(){
	
	fitMiddle($('header>a').width()*1);
	
	$('#video-section').css({
		height : $(window).height()
	});
	
	$(window).on('scroll', function(){
		var pos = $(this).scrollTop();
		var videoSectionHeight = $('#video-section').height();
		
		if(pos >= videoSectionHeight){
			$('header>a').css('color','black');
		}else{
			$('header>a').css('color','white');
		}
	});
});

function scrollMove(){
	var screenHeight = $(window).height();
	$('html, body').stop().animate({
		scrollTop : $('#video-section').height() * 1
	}, function(){
		$('header>a').css('color','black');
	});
	
}