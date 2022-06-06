<%@page import="java.util.List"%>
<%@page import="elementary_web.dto.AccountDTO"%>
<%@page import="elementary_web.dto.RoleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<title>EDIT ACCOUNT</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<link href="css/manager.css" rel="stylesheet" type="text/css" />
</head>
<style>
img {
	width: 200px;
	height: 120px;
}
</style>

<body>
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
									<h1>
										Bảng <span class="table-project-n">dữ liệu</span>
									</h1>
								</div>
							</div>
							<div class="sparkline13-graph">
								<div class="datatable-dashv1-list custom-datatable-overright">
									<div id="toolbar">
										<select class="form-control">
											<option value="">Xuất danh sách</option>
											<option value="all">Xuất toàn bộ danh sách</option>
											<option value="selected">Xuất danh sách đã chọn</option>

											<!--												<option value="">Export Basic</option>-->
											<!--												<option value="all">Export All</option>-->
											<!--												<option value="selected">Export Selected</option>-->
										</select>
									</div>

									<div class="container">
										<%
										AccountDTO accountDTO = (AccountDTO) request.getAttribute("accountDTO");
										%>
										<div id="editAccount">
											<div class="modal-dialog">
												<div class="modal-content">
													<form
														action="./edit?accountID=<%=accountDTO.getAccountID()%>"
														method="post">
														<div class="modal-header">
															<h4 class="modal-title">Edit Account</h4>
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">&times;</button>
														</div>
														<div class="modal-body">
															<div class="form-group">
																<label>ID</label> <input name="accountID" type="text"
																	class="form-control"
																	value="<%=accountDTO.getAccountID()%>" required
																	readonly>
															</div>
															<div class="form-group">
																<label>Tên tài khoản</label> <input name="accountName"
																	type="text" class="form-control"
																	value="<%=accountDTO.getAccountName()%>" required>
															</div>
															<div class="form-group">
																<label>Tiền xu</label> <input name="coin" type="number"
																	class="form-control" value="<%=accountDTO.getCoin()%>"
																	required>
															</div>
															<div class="form-group">
																<label>Email</label> <input name="email" type="email"
																	class="form-control" value="<%=accountDTO.getEmail()%>"
																	required>
															</div>
															<div class="form-group">
																<label>Nick name</label> <input name="nickName"
																	type="text" class="form-control"
																	value="<%=accountDTO.getNickName()%>" required>
															</div>
															<div class="form-group">
																<label>Mật khẩu</label> <input name="password"
																	type="text" class="form-control"
																	value="<%=accountDTO.getPassword()%>" required>
															</div>
															<div class="form-group">
																<label>SDT</label> <input name="phoneNumber" type="text"
																	class="form-control"
																	value="<%=accountDTO.getPhoneNumber()%>" required>
															</div>
															<div class="form-group">
																<label>Điểm tích lũy</label> <input name="totalPoint"
																	type="number" class="form-control"
																	value="<%=accountDTO.getTotalPoint()%>" required
																	readonly>
															</div>
															<div class="form-group">
																<label>Điểm tích lũy Tuần</label> <input
																	name="weeklyPoint" type="number" class="form-control"
																	value="<%=accountDTO.getWeeklyPoint()%>" required
																	readonly>
															</div>
															<div class="form-group">
																<label>Điểm tích lũy Tháng</label> <input
																	name="monthlyPoint" type="number" class="form-control"
																	value="<%=accountDTO.getMonthlyPoint()%>" required
																	readonly>
															</div>
															<div class="form-group">
																<label>Vai trò</label> <select name="roleName"
																	class="form-select" aria-label="Default select example">
																	<%
																	List<RoleDTO> listRoledto = (List<RoleDTO>) request.getAttribute("listRoledto");
																	for (RoleDTO roledto : listRoledto) {
																	%>
																	<option value="<%=roledto.getRoleName()%>"><%=roledto.getRoleName()%></option>
																	<%
																	}
																	%>
																</select>
															</div>
															<div class="form-group">
																<label>Active</label> <input name="active"
																	type="checkbox" class="form-control"
																	<%if (accountDTO.isActive()) {%> checked <%}%>>
															</div>
														</div>
														<div class="modal-footer">
															<input type="button" class="btn btn-default"
																data-dismiss="modal" value="Cancel"> <input
																type="submit" class="btn btn-success" value="save">
														</div>
													</form>
												</div>
											</div>
										</div>



										<!-- Static Table End -->
										<%@ include file="footer.jsp"%>
									</div>
</body>
</html>