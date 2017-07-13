/**
 * 
 */

$(document).ready(function(){
	fitMiddle($('header>a').width()*1);
	
	$(window).on('scroll', function(){
		var pos = $(this).scrollTop();
		changeHeaderState(pos);
	});
	
	$('.grid-cell').click(function(){
		var cId = $(this).attr('data');
		$('#modal-container>h1').html($(this).find('h3').html());
		
		characterAjax('./api/detail/', 'GET', getCharacterDetail, cId);
	});
	
	$('.quiteBtn').click(function(){
		$('#modal').fadeOut('fast',function(){});
		$('#video-container').empty();
	});
	
	$('#modal-section').click(function(event){
		return false;
	});
	
	$('#modal').click(function(event){
		event.stopPropagation();
		$('#modal').fadeOut('fast',function(){});
		$('#video-container').empty();
	});
	
	$('.small-category').click(function(){
		var cId = $(this).find('.cId').val();
		$('.swiper-wrapper').empty();
		$('#video-container').empty();
		characterAjax('./api/detail/', 'GET', getCharacterDetail, cId);
	});
	
	
		
});


function swiperSetting(){
	var swiper = new Swiper('.swiper-container', {
		pagination : '.swiper-pagination',
		paginationClickable : true,
		
		prevButton : '.swiper-button-prev',
		nextButton : '.swiper-button-next',
		
		spaceBetween : 30,
		
		autoplay : 3000,
		loop : true
	});
}

function characterAjax(url, method, successCb, cId){
	$.ajax({
		url : url+cId,
		method : method,
		success : function(result){
			successCb(result);
		},
		error : function(err){
			console.log(err.message);
		}
	});
}

function getCharacterDetail(result){
	$('.swiper-wrapper').empty();
	$('#video-container').empty();
	$('#modal').fadeIn('slow', function(){
		$.each(result.images, function(key, value){
			
			var slide = $('<div class="swiper-slide">' +
								'<img alt="bg1" src="images/character'+value+'">' + 
							'</div>');
			
			console.log(slide.html());
			$('.swiper-wrapper').append(slide);
		});
		swiperSetting();
		var iframe = $('<iframe width="640" height="360" src="'+result.contents.cdYoutubeUrl+'?autoplay=1" frameborder="0" allowfullscreen></iframe>')
		$('#video-container').append(iframe);
		$('.cdName').html(result.contents.cdName);
		$('.cdTop1').html(result.contents.cdTop1);
		$('.cdTop2').html(result.contents.cdTop2);
		$('.description-subtitle').html(result.contents.cdSubTitle);
		$('.description-contents').html(result.contents.cdDescription);
	});
	
}

