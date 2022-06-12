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
	// Thời gian cần đếm ngược
	countDownTime = new Date(countDownTime.getTime() + 10 * 60000)

	// Đồng hồ hẹn giờ
	var x = setInterval(function() {

		// Thời gian hiện tại
		var now = new Date().getTime();

		// Khoảng cách giữa thời gian hiện tại và thời gian đếm ngược 
		var distance = countDownTime - now;

		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((distance % (1000 * 60)) / 1000);

		$("#count-down-timer p").text(minutes + ":" + seconds)
		// If the count down is finished, write some text
		/*if (distance < 0) {
			clearInterval(x);
		}*/
	}, 1000);
})
function testSubmit() {
	var reward = Math.round((lessonScore / 10) * numberOfRightAnswer);
	console.log(reward)
	//$.ajax({
	//url: './updateLessonProcress',
	//type: 'POST',
	//data: {
	//lessonID: lessonID,
	//numberOfRightAnswer: numberOfRightAnswer
	//},

	//success: (function() {
	//alert('Chúc mừng bạn đã hoàn thành bài học. Kết quả: ' + numberOfRightAnswer + "/" + 10);
	//})
	//})

}
function answerQuestion(div) {
	var answerDivArray = $(div).closest(".question-answer").find(".answer");

	//Bỏ onclick trên các đáp án
	//for (let i = 0; i < answerDivArray.length; i++) {
	//$(answerDivArray[i]).removeAttr('onclick');

	//}
	var radidoButton = $(div).find(".radioButton");
	radidoButton.prop("checked", true);
	var questionID = radidoButton.attr('name');
	var awswerUserPicked = radidoButton.val();
	userAnswers[questionNumber - 1] = awswerUserPicked;

	//Gửi request lên server để so sánh kết quả
	$.ajax({
		url: './checkTestAnswer',
		type: 'POST',
		data: {
			questionID: questionID,
			userAnswer: awswerUserPicked
		},
		success: (function(result) {

			if (result === 'true') {
				numberOfRightAnswer += 1;
			}
			// Đổi màu câu trả lời người dùng chọn
			for (let i = 0; i < answerDivArray.length; i++) {
				$(div).css({ 'background-color': 'white', 'color': 'black' });

			}
			$(div).css({ 'background-color': 'green', 'color': 'black' });


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
