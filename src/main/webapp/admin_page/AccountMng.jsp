<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<link rel="stylesheet"
	href="admin_page/https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="admin_page/https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="admin_page/https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="admin_page/https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="admin_page/https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="admin_page/https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Product List | jeweler - Material Admin Template</title>
</head>

<body>

	<%@ include file="menu-bar.jsp"%>s
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>

		<div class="product-status mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-status-wrap">
							<h4>QUẢN LÝ TÀI KHOẢN</h4>
							<!--                            <h4>Products List</h4>-->
							<!-- <div class="add-product">
								 //////////////////////////////thêm vật phẩm
								<a href="admin_page/product-edit.html">Thêm vật phẩm</a>								
								<a href="admin_page/product-edit.html">Add Product</a>
								<a href="admin_page/#">Xóa</a>
							</div> 
							-->
							<div class="col-lg-8">
								<div class="form-group has-feedback has-search">
									<span class="glyphicon glyphicon-search form-control-feedback"></span>
									<input type="text" class="form-control" placeholder="Search">
								</div>
							</div>
							<table>
								<tr>
									<th>Mã tài khoản</th>
									<th>Tên tài khoản</th>
									<th>Chi tiết</th>
									<th>Xóa tài khoản</th>

								</tr>
								<tr>
									<td>HS01</td>
									<td>Tài khoản 01</td>

									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>
								<tr>
									<td>HS02</td>
									<td>Tài khoản 02</td>

									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>
								<tr>
									<td>HS03</td>
									<td>Tài khoản 03</td>

									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>
								<tr>
									<td>HS04</td>
									<td>Tài khoản 04</td>

									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>

								<tr>
									<td>HS05</td>
									<td>Tài khoản 05</td>
									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>
							</table>
							<div class="custom-pagination">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item disabled"><a class="page-link"
											href="admin_page/#">trước</a></li>
										<!--                                        <li class="page-item"><a class="page-link" href="admin_page/#">Previous</a></li>-->
										<li class="page-item active"><a class="page-link"
											href="admin_page/#">1</a></li>
										<li class="page-item"><a class="page-link"
											href="admin_page/#">2</a></li>
										<li class="page-item"><a class="page-link"
											href="admin_page/#">3</a></li>
										<li class="page-item"><a class="page-link"
											href="admin_page/#">Tiếp</a></li>

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
	<div id="addproductmodel" class="modal fade">
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
							<label>ID</label> <input value="1" name="id" type="text"
								class="form-control" readonly required>
						</div>

						<div class="form-group">
							<label>Tên vật phẩm</label> <input name="name" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Loại vật phẩm</label> <select name="loaivatpham"
								class="form-select" aria-label="Default select example">
								<option>Avatar</option>
								<option>Khung</option>
								<option>Vật phẩm</option>
							</select>
						</div>
						<div class="form-group">
							<label>Hình ảnh</label>
							<table>
								<tr>
									<td><input name="image" type="text" class="form-control"
										required style="min-width: 500px;"></td>
									<td><button class="btn btn-primary">Tải lên</button></td>
								</tr>
							</table>


						</div>
						<div class="form-group">
							<label>Điểm số</label> <input name="price" type="text"
								class="form-control" required>
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
</body>

</html>