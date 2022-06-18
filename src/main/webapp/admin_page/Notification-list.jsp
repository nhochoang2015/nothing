<%@page import="java.util.ArrayList"%>
<%@page import="elementary_web.dto.NotificationDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Product List | Admin Page</title>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<%@ include file="menu-bar.jsp"%>s
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>

		<div class="product-status mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="col-sm-6">
							<a href="#addnotify" class="btn btn-success" data-toggle="modal"><i
								class="material-icons"></i> <span>Tạo thông báo</span></a>
						</div>
						<div class="product-status-wrap">

							<h4>Danh sách thông báo</h4>
							<%List<NotificationDTO> notesDTOList =(ArrayList<NotificationDTO>) request.getAttribute("notesDTOList"); 
							for(NotificationDTO note : notesDTOList){
							
							%>
							<ul class="list-group">
								<li class="list-group-item"><span
									class="caption-subject text-uppercase pull-left"><b>
											Tiêu đề: <%= note.getTitle() %> </b></span>
									<div class="portlet-title">
										<div class="row">
											<div class="actions graph-lp"></div>
											<div class="actions graph-rp">
												<a class="btn btn-primary" data-toggle="collapse"
													href="#collapseExample<%=note.getNotificationID() %>" role="button" aria-expanded="false"
													aria-controls="collapseExample"
													title="Xem nội dung thông báo">Xem nội dung</a> <a
													href="#updateNotification" class="btn btn-warning"
													data-toggle="modal" title="Sửa nội dung thông báo"><span><i
														class="glyphicon glyphicon-pencil" aria-pressed="false"></i></span></a>
												<a href="#deleteNotification" class="btn btn-danger"
													data-toggle="modal" title="Xóa thông báo"><span><i
														class="fa fa-trash-o" aria-pressed="false"></i></span></a>
											</div>
										</div>
										<div class="collapse" id="collapseExample<%=note.getNotificationID() %>">
											<div class="card card-body"><%=note.getContent() %></div>
										</div>
									</div></li>
							</ul>
							<%} %>
							<div class="custom-pagination">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item disabled"><a class="page-link"
											href="#">trước</a></li>
										<!--                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>-->
										<li class="page-item active"><a class="page-link"
											href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">Tiếp</a></li>
										<!--                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>-->
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	<!-- model -->
	<div id="addnotify" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="add" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Thêm vật phẩm</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">

						<div class="form-group">
							<label>Tên thông báo</label> <input name="name" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Nội dung thông báo</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>

					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- model -->
	<div id="updateNotification" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="add" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Sửa thông báo</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">

						<div class="form-group">
							<label>Sửa tên thông báo</label> <input name="name" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Sửa nội dung thông báo</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>

					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Update">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>