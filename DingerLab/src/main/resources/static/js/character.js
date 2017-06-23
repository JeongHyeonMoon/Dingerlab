/**
 * 
 */

$(document).ready(function(){
	$('.grid-cell').click(function(){
		$('#dialog-layer').css({
			height : $('body').height()
		}).show();
	});
});