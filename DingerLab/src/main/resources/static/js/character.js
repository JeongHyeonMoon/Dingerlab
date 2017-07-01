/**
 * 
 */

$(document).ready(function(){
	$('.grid-cell').click(function(){
		$('.swiper-wrapper').empty();
		$('#video-container').empty();
		$('#modal-container>h1').html($(this).find('h3').html());
		$.ajax({
			url : '/api/detail/'+$(this).attr('data'),
			method : 'GET',
			success : function(result){
				$('#modal').fadeIn('slow', function(){
					$.each(result.images, function(key, value){
						
						var slide = $('<div class="swiper-slide">' +
											'<img alt="bg1" src="images/character'+value+'">' + 
										'</div>');
						
						console.log(slide.html());
						$('.swiper-wrapper').append(slide);
					});
					swiperSetting();
					var iframe = $('<iframe width="640" height="360" src="'+result.contents.cdYoutubeUrl+'" frameborder="0" allowfullscreen></iframe>')
					$('#video-container').append(iframe);
					$('.cdName').html(result.contents.cdName);
					$('.cdTop1').html(result.contents.cdTop1);
					$('.cdTop2').html(result.contents.cdTop2);
					$('.description-subtitle').html(result.contents.cdSubTitle);
					$('.description-contents').html(result.contents.cdDescription);
				});
			}, error : function(err){
				console.log(err.message);
			}
		});
	});
	
	$('.quiteBtn').click(function(){
		$('#modal').fadeOut('fast',function(){});
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


