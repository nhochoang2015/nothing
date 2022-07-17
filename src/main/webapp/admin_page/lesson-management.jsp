<%@page import="java.util.List"%>
<%@page import="booking.dto.AccountDTO"%>
<%@page import="booking.dto.LessonDTO"%>
<%@page import="booking.dto.ChapterDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản lý bài học</title>
</head>
<link rel="stylesheet" href="../admin_page/css/lessonManagement.css">

<body>
	<%
	ChapterDTO chapter = (ChapterDTO) request.getAttribute("chapter");
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
									<!--                                    ====-->
									<div class="add-product">
										<a data-target="#createLessonModal" data-toggle="modal">Tạo
											bài học</a>
									</div>
									<table id="lessonTable">
										<!--   data-toggle="table" data-pagination="true"
										data-search="true" data-show-columns="true"
										data-show-pagination-switch="true" data-show-refresh="true"
										data-key-events="true" data-show-toggle="true"
										data-resizable="true" data-cookie="true"
										data-cookie-id-table="saveId" data-show-export="true"
										data-click-to-select="true" data-toolbar="#toolbar"-->

										<thead>

											<tr>
												<th>ID Bài học</th>
												<th>Tên Bài học</th>
												<th>Điểm</th>
												<th>Hoạt Động</th>
												<th>Sửa bài học</th>
												<th>Xem câu hỏi</th>
											</tr>
										</thead>
										<tbody>
											<%
											List<LessonDTO> lessonList = chapter.getLessonList();
											for (LessonDTO lesson : lessonList) {
											%>
											<tr>
												<td><%=lesson.getLessonID()%></td>
												<td><%=lesson.getLessonName()%></td>
												<td><%=lesson.getScore()%></td>
												<td>
													<%
													if (lesson.isActive()) {
													%> Có <%
													} else {
													%> Không <%
													}
													%>
												</td>
												<td><a
													href="../admin/editLessonPage?chapterID=<%=chapter.getChapterID()%>&lessonID=<%=lesson.getLessonID()%>"
													class="btn btn-success"><i
														class="fa-solid fa-pen-to-square"></i></a></td>
												<td><a
													href="../admin/questionManagement?lessonID=<%=lesson.getLessonID()%>"
													class="btn btn-success"><i
														class="fa-solid fa-circle-question"></i></a></td>
											</tr>
											<%
											}
											%>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ....................................................... -->
		<div id="createLessonModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="../admin/addLesson" method="post">
						<div class="modal-header">
							<h4 class="modal-title">Thêm bài học</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<input name="chapterID" hidden="true"
								value="<%=chapter.getChapterID()%>">
							<div class="form-group">
								<label>Tên bài học</label> <input name="lessonName"
									id="lessonName" type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Bài học tiên quyết</label> <select name="lessonBeforeID">
									<option value="0">Không</option>
									<%
									for (LessonDTO lesson : lessonList) {
									%>
									<option value="<%=lesson.getLessonID()%>"><%=lesson.getLessonName()%></option>
									<%
									}
									%>
								</select>
							</div>
							<div class="form-group">
								<label>Điểm</label> <input id="lessonScoreInput" name="score"
									type="number" class="form-control" min="0" max="1000" required
									value="0">
							</div>
						</div>
						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal"
								value="Hủy"> <input type="submit"
								class="btn btn-success" value="Thêm">
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- Static Table End -->
		<%@ include file="footer.jsp"%>
	</div>


	<script src="../admin_page/js/lessonManagement.js"
		type="text/javascript"></script>
</body>

</html>