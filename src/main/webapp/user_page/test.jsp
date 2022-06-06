<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="elementary_web.dto.QuestionDTO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" type="text/css" href="user_page/css/test.css" />
</head>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="container py-5" id="count-down-container">
		<div class="row pt-5">
			<div class="col-lg-12" id="count-down-timer">
				<span class="fa-solid fa-clock fa-2x"></span>
				<p></p>
			</div>
		</div>
		<%
		List<QuestionDTO> questionList = (List<QuestionDTO>) request.getAttribute("questionList");
		%>
		<div class="row pt-5">
			<div class="col-lg-12" id="questions-slick">
				<%
				int index = 1;
				for (QuestionDTO question : questionList) {
				%>
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
								<%
								String answer = question.getAnswers();
								String[] arrayAnswer = answer.split(";");
								for (int i = 1; i < arrayAnswer.length; i++) {
								%>
								<div class="answer" onclick="answerQuestion(this)">
									<input type="radio" name="<%=index%>" value="<%=i%>"
										class="radioButton" disabled="disabled"> <label><%=arrayAnswer[i]%></label>
								</div>
								<%
								}
								%>

							</div>
						</div>


					</div>
				</div>

				<%
				index++;
				}
				%>
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

			</div>

			<div class="col-lg-12" id="page-list">
				<ul class="col-lg-12">
					<li class="col-lg-1"><a id="prev"><i
							class="fa-solid fa-circle-arrow-left fa-4x"></i> </a></li>
					<li class="col-lg-1 page-number"><a>1</a></li>
					<li class="col-lg-1 page-number"><a>2</a></li>
					<li class="col-lg-1 page-number"><a>3</a></li>
					<li class="col-lg-1 page-number"><a>4</a></li>
					<li class="col-lg-1 page-number"><a>5</a></li>
					<li class="col-lg-1 page-number"><a>6</a></li>
					<li class="col-lg-1 page-number"><a>7</a></li>
					<li class="col-lg-1 page-number"><a>8</a></li>
					<li class="col-lg-1 page-number"><a>9</a></li>
					<li class="col-lg-1 page-number"><a>10</a></li>

					<li class="col-lg-1"><a id="next"> <i
							class="fa-solid fa-circle-arrow-right fa-4x"></i>
					</a></li>

				</ul>
			</div>
		</div>


	</div>
	<%@include file="footer.jsp"%>
	<script type="text/javascript" src="user_page/lib/turnjs4/turn.js"></script>
	<script type="text/javascript" src="user_page/js/test.js"></script>
</body>

</html>