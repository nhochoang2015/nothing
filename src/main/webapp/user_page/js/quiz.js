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

		oTurn.turn("page", index);
		$(".page-number").each(function() {
			$(this).css({ 'background-color': ' white', 'color': ' black' });
		});
		$(this).css({ 'background-color': ' yellow', 'color': ' black' });

	});
})
function answerQuestion(div) {
	var answerDivArray = $(div).closest(".question-answer").find(".answer");
	for (let i = 0; i < answerDivArray.length; i++) {
		$(answerDivArray[i]).removeAttr('onclick');

	}
	var radidoButton = $(div).find(".radioButton");
	radidoButton.prop("checked", true);
	var questionNumber = radidoButton.attr('name');
	var awswerUserPicked = radidoButton.val();
	var correctAnswer = correctAnswers[questionNumber - 1];
	console.log('Right:' + correctAnswer);

	userAnswers[questionNumber - 1] = awswerUserPicked;
	if (awswerUserPicked == correctAnswer) {
		$(div).css({ 'background-color': 'green', 'color': 'black' });
		console.log("Đúng")
	} else {
		$(div).css({ 'background-color': 'red', 'color': 'white' });
		$(answerDivArray[correctAnswer - 1]).css({ 'background-color': 'green', 'color': 'black' })
		console.log("Sai")
	}
	var explainID = '#ex_' + questionNumber;
	var explainDiv = $(explainID);
	explainDiv.attr('hidden', false);

}
