/**
 * 
 */

$(document).ready(function(){
	googleMapInit();
	
	$(window).on('scroll', function(){
		var pos = $(this).scrollTop();
		changeHeaderState(pos);
	});
	
});

function googleMapInit(){
	 
	var myLatlng = new google.maps.LatLng(37.5855560, 127.030004);
	
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
		title : 'Dinger\' Lab'
	});
	
	var infowindow = new google.maps.InfoWindow({
		content : '<h4>Dinger\' Lab</h4>',
		maxWidth : 300
	});
	
	infowindow.open(map, marker);
}