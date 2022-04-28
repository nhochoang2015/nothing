/**
 * 
 */
$(document).ready(function() {
	var oTurn = $("#flipbook").turn({
		height: 500,
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
	var countDownTime = new Date();
	countDownTime = new Date(countDownTime.getTime() + 10 * 60000)

	// Update the count down every 1 second
	var x = setInterval(function() {

		// Get today's date and time
		var now = new Date().getTime();

		// Find the distance between now and the count down date
		var distance = countDownTime - now;

		// Time calculations for days, hours, minutes and seconds
		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((distance % (1000 * 60)) / 1000);

		// Display the result in the element with id="demo"
		$("#count-down-timer p").text(minutes + ":" + seconds)
		// If the count down is finished, write some text
		/*if (distance < 0) {
			clearInterval(x);
			document.getElementById("demo").innerHTML = "EXPIRED";
		}*/
	}, 1000);

})