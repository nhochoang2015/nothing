<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="elementary_web.dto.SubjectDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<title></title>
<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="admin_page/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
<%@ include file="menu-bar.jsp"%>
<%@ include file="header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>


	<!-- Start Welcome area -->
	<div class="all-content-wrapper">


		<div class="section-admin container-fluid">
			<div class="row admin text-center">
				<div class="col-md-12"></div>
			</div>
		</div>
		<div class="product-sales-area mg-tb-30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

						<div class="product-status-wrap">
							<h4>QUẢN LÝ MÔN HỌC</h4>

							<!--                            <h4>Products List</h4>-->
							<div class="add-product">
								<a href="admin_page/product-edit.html">Thêm vật phẩm</a> <a
									href="admin_page/product-edit.html">Add Product</a> <a
									href="admin_page/#">Xóa</a>
							</div>

							<div class="col-lg-8">
								<div class="form-group has-feedback has-search">
									<span class="glyphicon glyphicon-search form-control-feedback"></span>
									<input type="text" class="form-control"
										placeholder="Nhập tên hoặc mã môn học cần tìm">
								</div>
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#createSubject">Tạo
									môn học</button>

							</div>

							<table>

								<tr>
									<th class="text-center">Mã môn học</th>
									<th class="text-center">Tên môn học</th>
									<th class="text-center">Active</th>
									<th class="text-center">Chi tiết</th>
									<th class="text-center">Xóa môn học</th>

								</tr>
								<%
								List<SubjectDTO> subjectList = (ArrayList<SubjectDTO>) request.getAttribute("subjectList");
								for (SubjectDTO subject : subjectList) {
								%>
								<tr>
									<td><%=subject.getSubjectID()%></td>
									<td><%=subject.getSubjectName()%>
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#updateSubjectName"
											title="Sủa tên môn">
											<i class="glyphicon glyphicon-pencil" aria-pressed="false"></i>
										</button></td>

									<td id="hiddenResult"><%=subject.isActive()%></td>
									<td><a  title="Đến trang quản lý chương" href="chapter"><button
												type="button" class="btn btn-primary">Xem</button></a></td>
									<td><button type="button" class="btn btn-danger"
											id="btnDelete"
											onclick="location.href='./unactiveSubject?subjectID=<%=subject.getSubjectID()%>'"
											onclick="function();">Xóa</button>
										<button type="button" class="btn btn-danger" id="btnRestore"
											onclick="location.href='./activeSubject?subjectID=<%=subject.getSubjectID()%>'"
											onclick="function();">Phục hồi</button></td>

									</td>
								</tr>

								<!-- Modal -->
								<form action="./createSubject" method="post">
									<div class="modal fade" id="createSubject" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Tạo môn</h5>
												</div>
												<div class="modal-body">

													<div class="mb-3">
														<label for="validationCustom01" class="form-label">Tên
															môn</label> <input type="text" name="subjectName"
															class="form-control" id="validationCustom01"
															placeholder="Nhập tên môn cần tạo" required>
													</div>
												</div>
												<div class="modal-footer">
													<button type="submit" class="btn btn-primary"
														onclick="location.href='./createSubject?subjectName='">Xác
														nhận</button>
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form
									action="./renameSubject?subjectID=<%=subject.getSubjectID()%>&newSubjectName=''"
									method="post">
									<div class="modal fade" id="updateSubjectName" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Sửa tên
														môn</h5>
												</div>
												<div class="modal-body">

													<div class="mb-3">
														<label for="validationCustom01" class="form-label">Tên
															môn</label> <input name="newSubjectName" type="text"
															class="form-control" id="validationCustom02"
															placeholder="Nhập tên môn cần sửa" required>
													</div>



												</div>
												<div class="modal-footer">
													<button type="submit" class="btn btn-primary"
														onclick="location.href='./renameSubject?subjectID=<%=subject.getSubjectID()%>&newSubjectName='">Xác
														nhận</button>
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
								</form>
								<%
								}
								%>
							</table>
							<!-- Modal -->

							<!-- Modal -->
							<form action="./unactiveSubject" method="post">
								<div class="modal fade" id="deleteSubject" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">Sửa tên
													môn</h5>
											</div>
											<div class="modal-body">Ẩn môn học khỏi giao diện học
												sinh</div>
											<div class="modal-footer">
												<button type="submit" class="btn btn-primary">Xác
													nhận</button>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="traffic-analysis-area">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
						</div>
					</div>
				</div>
				<div class="product-new-list-area">
					<div class="container-fluid"></div>
				</div>
				<div class="product-sales-area mg-tb-30">
					<div class="container-fluid"></div>
				</div>
				<div class="calender-area mg-tb-30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="calender-inner">
									<div id='calendar'></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="footer.jsp"%>
				<script type="text/javascript">
					$(button).ready(function() {
						$("btnDelete").show();
						$("btnRestore").show();
						$("#btnDelete").click(function() {
							$("btnRestore").show();
						});
						$("#btnRestore").click(function() {
							$("btnDelete").show();
						});
					});
				</script>

			</div>
</body>

</html>