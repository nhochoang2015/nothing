<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" type="text/css" href="user_page/css/quiz.css" />
</head>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="container py-5">
		<div class="row pt-5">
			<div class="col-lg-12" id="flipbook">
				<div class="hard"></div>
				<div class="page question">
					<div class="col-lg-12 question-container">
						<div class="row">
							<div class="col-lg-12 question-number">
								<span>Câu hỏi số 1</span>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 question-content">
								<p>Nội dung câu hỏi.Nội dung câu hỏiNội dung câu hỏiNội dung
									câu hỏiNội dung câu hỏiNội dung câu hỏiNội dung câu hỏiNội dung
									câu hỏiNội dung câu hỏi</p>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 question-answer">
								<input type="radio" id="answer1" name="answer" value="40">
								<label for="answer1">Đáp án 1</label><br> <input
									type="radio" id="answer2" name="answer" value="40"> <label
									for="answer2">Đáp án 2</label><br> <input type="radio"
									id="answer3" name="answer" value="40"> <label
									for="answer3">Đáp án 3</label><br> <input type="radio"
									id="answer4" name="answer" value="40"> <label
									for="answer4">Đáp án 4</label><br>

							</div>
						</div>


					</div>
				</div>
				<div class="page explain">
					<div class="col-lg-12 explain-container">
						<div class="row">
							<div class="col-lg-12 explain-title">
								<span>Giải thích</span>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 explain-content">
								<p>Giai thich Giai thich Giai thich Giai thich Giai
									thichGiai thich</p>
							</div>
						</div>

					</div>
				</div>
				<div class="page">Page 3</div>
				<div class="page">Page 4</div>
				<div class="hard"></div>
			</div>
			<div class="col-lg-12" id="flip-control">
				<a id="prev"><i class="fa-solid fa-circle-arrow-left fa-4x"></i>
				</a> <a id="next"> <i class="fa-solid fa-circle-arrow-right fa-4x"></i>
				</a>
			</div>
		</div>

	</div>
	<%@include file="footer.jsp"%>
	<script type="text/javascript" src="user_page/lib/turnjs4/turn.js"></script>
	<script type="text/javascript" src="user_page/js/quiz.js"></script>
</body>

</html>