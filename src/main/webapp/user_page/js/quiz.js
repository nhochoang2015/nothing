/**
 * 
 */
$(document).ready(function() {
	var oTurn = $("#flipbook").turn({
		height: 600,
		autoCenter: true,
		next: true
	});

	oTurn.bind("turning", function(event, page, view) {
		if (page == 1) {
			event.preventDefault(); //will not happen at page 1
		} else {

			var questionNumber = page;

			if (questionNumber % 2 === 0) {

				questionNumber /= 2;
			} else {
				questionNumber -= 1;
				questionNumber /= 2;
			}

			$(".page-number").each(function() {
				var index = $(this).index();

				if (index === questionNumber) {
					$(this).css({ 'background-color': ' yellow', 'color': ' black' });

				} else {
					$(this).css({ 'background-color': ' white', 'color': ' black' });
				}

			});


		}
	});
	$("#prev").click(function(e) {
		e.preventDefault();
		oTurn.turn("previous");
	});

	$("#next").click(function(e) {
		e.preventDefault();
		oTurn.turn("next");
	});

	$(".page-number").click(function() {
		var index = $(this).index() * 2;

		console.log(index);
		oTurn.turn("page", index);
		$(".page-number").each(function() {
			$(this).css({ 'background-color': ' white', 'color': ' black' });
		});
		$(this).css({ 'background-color': ' yellow', 'color': ' black' });

	});
	$(".answer").click(function() {
		$(this).closest(".answer").find(".radioButton").prop("checked", true);
	})
})