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