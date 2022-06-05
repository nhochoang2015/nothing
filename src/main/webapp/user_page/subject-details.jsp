<%@page import="elementary_web.dto.SubjectDTO"%>
<%@page import="elementary_web.dto.ChapterDTO"%>
<%@page import="elementary_web.dto.LessonDTO"%>

<%@page import="java.util.ArrayList"%>
<%@page import="elementary_web.dto.LessonCompleteDTO"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="user_page/css/subject-details.css" rel="stylesheet">
</head>

<body>
	<%@include file="header.jsp"%>
	<!-- Môn học -->
	<%
	AccountDTO account = (AccountDTO) session.getAttribute("account");
	SubjectDTO subject = (SubjectDTO) request.getAttribute("subject");
	List<LessonCompleteDTO> lessonCompleteList = (List<LessonCompleteDTO>) request.getAttribute("lessonCompleteList");
	%>
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<p class="section-title px-5 subject-title">
					<span class="px-2"><%=subject.getSubjectName()%></span>
				</p>
			</div>
			<%
			ArrayList<ChapterDTO> chaperDTOList = (ArrayList<ChapterDTO>) subject.getChapterList();
			%>
			<div class="row">
				<%
				for (ChapterDTO chapter : chaperDTOList) {
				%>
				<div class="col-lg-4 mb-5">
					<div class="card border-0 bg-light shadow-sm pb-2 subject-image">
						<img class="card-img-top mb-2" src="user_page/img/class-1.jpg"
							alt="">
						<div class="card-body text-center">
							<h4 class="card-title">
								<%=chapter.getChapterName()%></h4>
						</div>
						<div class="card-footer bg-transparent py-4 px-5 subject-lessons">
							<%
							ArrayList<LessonDTO> lessonList = (ArrayList<LessonDTO>) chapter.getLessonList();
							for (LessonDTO lesson : lessonList) {
							%>
							<div class="row border-bottom">

								<div class="col-10 py-1">
									<a <%if (account != null) {%>
										href="./quiz?lessonID=<%=lesson.getLessonID()%>&subjectID=<%=subject.getSubjectID()%>"
										<%%> <%} else {%> href="./login" <%}%>> <%=lesson.getLessonName()%>
									</a>
								</div>
								<%
								if (lessonCompleteList != null) {
								%>
								<div class="col-2 py-1">
									<%
									if (lesson.isComplete(lessonCompleteList)) {
									%>
									<i class="fa-solid fa-check"></i>
									<%
									} else {
									%>
									<i class="fa-solid fa-xmark"></i>
									<%
									}
									%>
								</div>
								<%
								}
								%>
							</div>
							<%
							}
							%>



						</div>
						<a href="user_page/" class="btn btn-primary px-4 mx-auto mb-4">Kiểm
							tra</a>
					</div>
				</div>

				<%
				}
				%>
			</div>


		</div>
	</div>


	<%
	String notify = (String) request.getAttribute("notify");
	if (notify != null) {
	%>

	<script type="text/javascript">
	alert('<%=notify%>');
	</script>
	<%
	}
	%>
	<%@include file="footer.jsp"%>
	<script type="text/javascript" src="user_page/js/subject-details.js"></script>
</body>

</html>