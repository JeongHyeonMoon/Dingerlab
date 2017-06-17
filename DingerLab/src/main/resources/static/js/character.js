/**
 * 
 */

$(document).ready(function(){
	$('.grid-cell').click(function(){
		var thisObj = $(this).find('h3').html();
		console.log(thisObj);
	});
});