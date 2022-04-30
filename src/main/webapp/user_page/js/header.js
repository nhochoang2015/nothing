/**
 * 
 */

$(document).ready(function() {
	$(".notification").slick({
		prevArrow: false,
		nextArrow: false
	});

	$("#store").on('shown.bs.modal', function(e) {
		console.log("test");
		$("#first-tab").css({ "border-right": "1px solid grey", "border-top": "1px solid grey", "border-left": "1px solid grey"});
		$("#first-tab").addClass("active");


	});
	$(".tabs a").on("click", function() {
		$(".tabs").each(function() {
			$(this).css({ "border": "none"});
		})
		tab = $(this).closest(".tabs");
		tab.css({ "border-right": "1px solid grey", "border-top": "1px solid grey", "border-left": "1px solid grey" });

	});

});