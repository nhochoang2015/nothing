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
		$('#questions-slick').slick('slickGoTo', index - 1);

	});
	var countDownTime = new Date();
	// Thời gian cần đếm ngược
	countDownTime = new Date(countDownTime.getTime() + 0.25 * 60000)

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
		if (distance < 0) {
			autoSubmitTest();
		}
	}, 1000);
})

function submitTest() {
	//	var reward = Math.round((chapterScore / 10) * numberOfRightAnswer);
	$('#submitTestModal').modal('hide');
	$.ajax({
		url: './submitTestResult',
		type: 'POST',
		dataType: 'text',
		data: {
			userAnswers: userAnswers,
			questionIDArray: questionIDArray,
			chapterID: chapterID
		},

		success: (function(result) {
			alert('Chúc mừng bạn đã hoàn thành bài Kiểm tra. Kết quả: ' + result + "/" + 10);
			window.location.replace("./subject-details?subjectID=" + subjectID);

		})
	})
}
function autoSubmitTest() {
	//	var reward = Math.round((chapterScore / 10) * numberOfRightAnswer);
	$.ajax({
		url: './submitTestResult',
		type: 'POST',
		dataType: 'text',
		data: {
			userAnswers: userAnswers,
			questionIDArray: questionIDArray,
			chapterID: chapterID
		},

		success: (function(result) {
			alert('Đã hết giờ. Kết quả: ' + result + "/" + 10);
			window.location.replace("./subject-details?subjectID=" + subjectID);

		})
	})
}
function answerQuestion(div) {
	var answerDivArray = $(div).closest(".question-answer").find(".answer");

	// Check radiobutton
	var radidoButton = $(div).find(".radioButton");
	radidoButton.prop("checked", true);
	// Lấy id và câu trả lời dựa trên name và value;
	// ID câu hỏi = name của raditon button
	// Câu trả lời người dùng chọn = value của radiobutton
	var questionID = radidoButton.attr('name');
	var awswerUserPicked = radidoButton.val();
	setAnswer(questionID, awswerUserPicked);

	// Đổi màu câu trả lời người dùng chọn
	for (let i = 0; i < answerDivArray.length; i++) {
		$(answerDivArray[i]).css({ 'background-color': 'white', 'color': 'black' });

	}
	$(div).css({ 'background-color': 'green', 'color': 'black' });


}
// Kiểm tra xem học sinh hoàn thành bài học chưa
function isLessonComplete() {
	for (let i = 0; i < userAnswers.length; i++) {
		if (userAnswers[i] === 0) return false;
	}
	return true;
}
function setAnswer(id, answerPicked) {
	console.log('ID:' + id)
	for (let i = 0; i < questionIDArray.length; i++) {
		console.log(questionIDArray[i])
		if (questionIDArray[i] == id) {
			userAnswers[i] = answerPicked;
			break;
		}
	}
	console.log(userAnswers);
	console.log(questionIDArray);
}
