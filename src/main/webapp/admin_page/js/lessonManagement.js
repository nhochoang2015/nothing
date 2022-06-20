/*$('#createLessonModal').on('show.bs.modal	', function(e) {
	// Lấy dữ liệu
	$.ajax({
		url: '../admin/getLessonBeforeList',
		type: 'POST',
		dataType: "json",
		data: {
			chapterID: chapterID
		},
		success: (function(result) {
			alert('Chúc mừng bạn đã hoàn thành bài Kiểm tra. Kết quả: ' + result + "/" + 10);
			window.location.replace("./subject-details?subjectID=" + subjectID);

		})
	})
})*/
$(document).ready(function() {
	$('#lessonScoreInput').on('input', function() {
		inputValue = $('#lessonScoreInput').val();
		if (inputValue < 0) {
			$('#lessonScoreInput').val("0");
		} else
			if (inputValue > 1000) {
				$('#lessonScoreInput').val("1000");
			}
	})
})
