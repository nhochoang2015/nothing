/**
 * 
 */
$(document).ready(function() {
	$("#questions-slick").slick({
		prevArrow: false,
		nextArrow: false,
		infinite: false,

	});
	$("#prev").click(function(e) {
		$("#questions-slick").slick('slickPrev');
	});

	$("#next").click(function(e) {
		$("#questions-slick").slick('slickNext');
	});

	$(".page-number").click(function(e) {
		var index = $(this).index();
		e.preventDefault();
		$('#questions-slick').slick('slickGoTo', index);

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