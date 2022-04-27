/**
 * 
 */
$(document).ready(function() {
	var oTurn = $("#flipbook").turn({
		height: 500,
		autoCenter: true,
		next: true
	});
	$("#prev").click(function(e) {
		e.preventDefault();
		oTurn.turn("previous");
	});

	$("#next").click(function(e) {
		e.preventDefault();
		oTurn.turn("next");
	});
})