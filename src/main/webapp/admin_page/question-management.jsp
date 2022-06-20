<%@page import="java.util.List"%>
<%@page import="elementary_web.dto.AccountDTO"%>
<%@page import="elementary_web.dto.LessonDTO"%>
<%@page import="elementary_web.dto.ChapterDTO"%>
<%@page import="elementary_web.dto.QuestionDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản lý bài học</title>
</head>

<link type="text/css" href="../admin_page/css/question-management.css"
	rel="stylesheet" />
<link type="text/css"
	href="../admin_page/lib/ckeditor5/content-styles.css" rel="stylesheet" />

<body>
	<%
	LessonDTO lesson = (LessonDTO) request.getAttribute("lesson");
	List<QuestionDTO> questionList = (List<QuestionDTO>) lesson.getQuestionList();
	%>
	<%@ include file="menu-bar.jsp"%>
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>
		<!-- Static Table Start -->
		<div class="data-table-area mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="sparkline13-list">
							<div class="sparkline13-hd">
								<div class="main-sparkline13-hd">
									<h1>Chương dữ liệu</h1>

								</div>
							</div>
							<div class="sparkline13-graph">
								<div class="datatable-dashv1-list custom-datatable-overright">
									<div>
										<%
										int index = 1;
										for (QuestionDTO question : questionList) {
										%>
										<div class="question-container">
											<div class="question-number text-center">
												<a data-toggle="collapse" href="#collapse<%=index%>"><h3>
														Câu số<%=index%></h3></a>
											</div>
											<div class="question-edit-container panel-collapse collapse"
												id="collapse<%=index%>">
												<div class="row content-container">
													<div class="col-12 text-center">
														<h5>Nội Dung Câu Hỏi</h5>
													</div>
													<div class="col-12">
														<textarea name="content" class="editor"
															id="content_<%=index%>"><%=question.getContent()%></textarea>
													</div>

												</div>
												<div class="row explain-container">
													<div class="col-12 text-center">
														<h5>Giải thích</h5>
													</div>
													<div class="col-12">
														<textarea name="explain" class="editor"
															id="explain_<%=index%>"><%=question.getExplain()%></textarea>
													</div>


												</div>
												<div class="row answer-container list-group">
													<div class="col-12 text-center">
														<h5>Đáp Án</h5>
													</div>
													<%
													String answers = question.getAnswers();
													String[] answersArray = answers.split(";");
													int correctAnswer = Integer.parseInt(answersArray[0]);
													for (int i = 1; i < answersArray.length; i++) {
													%>
													<div class="answer list-group-item text-center">
														<div class="row">
															<div class="col-8">
																<input type="text" value="<%=answersArray[i]%>" />
															</div>
															<div class="col-2">
																<input type="radio" name="correct_<%=index%>"
																	<%if (correctAnswer == i) {%> checked <%}%>>
															</div>
															<div class="col-2">
																<button>
																	<i class="fa-solid fa-ban"></i>
																</button>
															</div>
														</div>
													</div>
													<%
													}
													%>
													<div class="row">
														<div class="col-12 text-center">
															<button>
																<i class="fa-solid fa-plus"></i>THÊM CÂU HỎI
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<%
										index++;
										}
										%>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Static Table End -->
		<%@ include file="footer.jsp"%>
	</div>
	<script type="text/javascript"
		src="../admin_page/lib/ckeditor5/ckeditor.js"></script>
	<script type="text/javascript"
		src="../admin_page/js/question-management.js"></script>
</body>

</html>