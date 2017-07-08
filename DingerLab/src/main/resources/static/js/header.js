function languageClick(obj){
	
	$('.activate').attr('class','');
	$(obj).attr('class','activate');
	
}

function fitMiddle(width){
	var windowWidth = $('header').width()*1;
	$('header>a').css({
		'margin-left' : (windowWidth/2)-(width/2)
	});
}
var plag = true;
function changeHeaderState(yPos){
	
	if(yPos == 0){
		plag = true;
		
		$('#category').css({
			'margin-top' : '80px',
			'height' : '50px'
		});
		
		$('header').animate({
			height : '80px'
		},'slow', function(){
			$('header > a').css({
				'font-size' : '40px'
			});
			fitMiddle($('header>a').width()*1);
			
			$('#language-list').css({
				'margin-top' : '32px'
			});
			
			
			
		});
		
		
	}else if(plag){

		plag = false;
		
		$('header > a').animate({
			'font-size' : '30px'
		}, 'slow', function(){
			fitMiddle($('header>a').width()*1);
			$('header').css({
				height : '55px'
			});
			
			$('#language-list').css({
				'margin-top' : '20px'
			});
			
			$('#category').css({
				'margin-top' : '55px',
				'height' : 'auto'
			});
		});
		
		
	}
}