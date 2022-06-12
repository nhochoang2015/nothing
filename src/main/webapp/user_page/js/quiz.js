/**
 * 
 */
var numberOfRightAnswer = 0;
var userAnswers = Array(10).fill(0);
$(document).ready(function() {
	var oTurn = $("#flipbook").turn({
		height: 600,
		autoCenter: true,
		next: true
	});

	oTurn.bind("turning", function(event, page, view) {
		if (page == 1) {
			event.preventDefault();
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

	//Bỏ onclick trên các đáp án
	for (let i = 0; i < answerDivArray.length; i++) {
		$(answerDivArray[i]).removeAttr('onclick');

	}
	var radidoButton = $(div).find(".radioButton");
	radidoButton.prop("checked", true);
	var questionNumber = radidoButton.attr('name');
	var awswerUserPicked = radidoButton.val();
	userAnswers[questionNumber - 1] = awswerUserPicked;

	//Gửi request lên server để so sánh kết quả
	$.ajax({
		url: './checkQuizAnswer',
		type: 'POST',
		data: {
			lessonID: lessonID,
			questionNumber: questionNumber,
			userAnswer: awswerUserPicked
		},
		success: (function(data) {
			var dataArray = data.split(':');
			var correctAnswer = dataArray[1];
			var result = dataArray[0];
			var explain = dataArray[2];
			if (result === 'true') {
				$(div).css({ 'background-color': 'green', 'color': 'black' });
				numberOfRightAnswer += 1;
				console.log("Đúng")
			} else {
				$(div).css({ 'background-color': 'red', 'color': 'white' });
				$(answerDivArray[correctAnswer - 1]).css({ 'background-color': 'green', 'color': 'black' })
				console.log("Sai")
			}
			// Hiện giải thích


			var explainID = '#ex_' + questionNumber;
			var explainDiv = $(explainID);
			var explainP = $(explainID + ' p');
			explainP.text(explain);
			explainDiv.attr('hidden', false);





			// Kiểm tra xem học sinh hoàn thành bài học chưa
			if (isLessonComplete()) {
				$("#back-button-container").attr('hidden', false);
				var reward = Math.round((lessonScore / 10) * numberOfRightAnswer);
				console.log(reward)
				$.ajax({
					url: './updateLessonProcress',
					type: 'POST',
					data: {
						lessonID: lessonID,
						numberOfRightAnswer: numberOfRightAnswer
					},

					success: (function() {
						alert('Chúc mừng bạn đã hoàn thành bài học. Kết quả: ' + numberOfRightAnswer + "/" + 10);
					})
				})
			}
		})
	})

}
// Kiểm tra xem học sinh hoàn thành bài học chưa
function isLessonComplete() {
	for (let i = 0; i < userAnswers.length; i++) {
		if (userAnswers[i] === 0) return false;
	}
	return true;
}


