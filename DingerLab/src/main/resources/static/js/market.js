$(document).ready(function(){
	
	$('#modal').click(function(event){
		event.stopPropagation();
		$('#modal').fadeOut('fast',function(){});
	});
	
	$('#modal-section').click(function(event){
		return false;
	});
	
	$('.quiteBtn').click(function(){
		$('#modal').fadeOut('fast',function(){});
	});
	
	$('.grid-cell').click(function(){
		var xPos = $(this).find('.xPos').val();
		var yPos = $(this).find('.yPos').val();
		var title = $(this).find('h3').html();
		var description = $(this).find('.description').val();
		
		$('#modal-container>h1').html(title);
		$('#modal-description').html('위치 : '+description);
		$('#modal').fadeIn('slow', function(){
			googleMapInit(yPos*1, xPos*1, title);
		});
	});
	
	$('.offline-grid').click(function(){
		var url = $(this).attr('url');
		window.open(url,'');
	});
//	
});


function googleMapInit(xPos, yPos, title){
	 
	var myLatlng = new google.maps.LatLng(xPos, yPos);
	
	var mapOptions = {
			zoom : 18,
			center : myLatlng,
			mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	
	var map = 
		new google.maps.Map(
				document.getElementById('googleMap'), 
				mapOptions);
	
	var marker = new google.maps.Marker({
		position : myLatlng,
		map: map,
		title : title
	});
	
	var infowindow = new google.maps.InfoWindow({
		content : '<h4>' + title + '</h4>',
		maxWidth : 300
	});
	
	infowindow.open(map, marker);
}