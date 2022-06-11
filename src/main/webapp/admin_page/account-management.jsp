<%@page import="java.util.List"%>
<%@page import="elementary_web.dto.AccountDTO"%>
<%@page import="elementary_web.dto.RoleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<title>account_management</title>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        
</head>

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
									
									<table id="table" data-toggle="table" data-pagination="true"
										data-search="true" data-show-columns="true"
										data-show-pagination-switch="true" data-show-refresh="true"
										data-key-events="true" data-show-toggle="true"
										data-resizable="true" data-cookie="true"
										data-cookie-id-table="saveId" data-show-export="true"
										data-click-to-select="true" data-toolbar="#toolbar">
										<!--                                    ====-->
										<div class="add-product">
											
											<a data-target="#addAccountModal" data-toggle="modal">Thêm</a>
											
										</div>
										
										<thead>

											<tr>
												
												
												<th data-field="id">ID</th>
												
												<th data-field="name" data-editable="true">Tên tài
													khoản</th>
												
												<th data-field="tienxu">Tiền xu</th>
												
												<th data-field="email" data-editable="true">Email</th>
											
												<th data-field="price" data-editable="true">Nick name</th>
												
												<th data-field="pass" data-editable="true">Mật khẩu</th>
											
												<th data-field="sdt" data-editable="true">SDT</th>
												
												<th data-field="tichluy" data-editable="true">Điểm tích
													lũy</th>
												
												<th data-field="tichluytuan" data-editable="true">Điểm
													tích lũy tuần</th>
													
												<th data-field="tichluythang" data-editable="true">Điểm
													tích lũy tháng</th>
													
												<th data-field="role" data-editable="true">Mã vai trò</th>
												
												<th data-field="active" data-editable="true">Active</th>
												
												
											</tr>
										</thead>
										<tbody>
											<%
												List<AccountDTO> listaccountdto = (List<AccountDTO>)request.getAttribute("accountlistdto");
												for(AccountDTO accountdto : listaccountdto){
											%>
											<tr>										
												<td><%=accountdto.getAccountID()%></td>
												<td><%=accountdto.getAccountName()%></td>
												<td><%=accountdto.getCoin()%></td>
												<td><%=accountdto.getEmail()%></td>
												<td><%=accountdto.getNickName()%></td>
											
												<td><input type="password" value="<%=accountdto.getPassword()%>" readonly required></td>
												<td><%=accountdto.getPhoneNumber()%></td>
												<td><%=accountdto.getTotalPoint()%></td>
												<td><%=accountdto.getWeeklyPoint()%></td>
												<td><%=accountdto.getMonthlyPoint()%></td>
												<td>
													<%=accountdto.getRoleName()%>
												</td>																							
												<td><input type="checkbox"<%if(accountdto.isActive()) {%>checked<%}%> onclick="return false;"></td>
												<td>
													<a href="../admin/editAccount?accountID=<%=accountdto.getAccountID()%>"  class="btn btn-success"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
												</td>
											</tr>
											  <% } %>
										</tbody>
									</table>
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
	<!-- ....................................................... -->
	<div id="addAccountModal" class="modal" onload="disableSubmitBtn()">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="../admin/addAccount" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">ADD Account</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>ID</label>
                                <input name="accountID" type="text" class="form-control" required readonly>
                            </div>
                            <div class="form-group">
                                <label>Tên tài khoản</label>
                                <input name="accountName" type="text" class="form-control" required>
                                <div id="accountAddMessage"></div>
                            </div>
                            <div class="form-group">
                                <label>Tiền xu</label>
                                <input name="coin" type="number" class="form-control" required>
                                <div id="accountAddMessage"></div>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input name="email" type="email" class="form-control" required>
                                <div id="accountAddMessage"></div>
                            </div>
                            <div class="form-group">
                                <label>Nick name</label>
                                <input name="nickName" type="text" class="form-control" required>
                                <div id="accountAddMessage"></div>
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu</label>
                                <input name="password" type="text" class="form-control" required>
                                <div id="accountAddMessage"></div>
                            </div>
                            <div class="form-group">
                                <label>SDT</label>
                                <input name="phoneNumber" type="text" class="form-control" required>
                                <div id="accountAddMessage"></div>
                            </div>
                            <div class="form-group">
                                <label>Điểm tích lũy</label>
                                <input name="totalPoint" type="number" class="form-control" value="0" required readonly>
                            </div>
                            <div class="form-group">
                                <label>Điểm tích lũy Tuần</label>
                                <input name="weeklyPoint" type="number" class="form-control" value="0" required readonly>
                            </div>
                            <div class="form-group">
                                <label>Điểm tích lũy Tháng</label>
                                <input name="monthlyPoint" type="number" class="form-control" value="0" required readonly>
                            </div>
                            <div class="form-group">
                                <label>Vai trò</label>
                                <select name="roleName" class="form-select" aria-label="Default select example">
                                        <%List<RoleDTO> listRoledto =(List<RoleDTO>)request.getAttribute("listRoledto");
                                        	for(RoleDTO roledto : listRoledto){%>
                                            <option value="<%=roledto.getRoleName()%>"><%=roledto.getRoleName()%></option>
                                        <%}%>  
                                </select>
                            </div>
							<div class="form-group">
                                <label>Active</label>
                                <input name="active" type="checkbox" class="form-control" >
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
</body>

</html>