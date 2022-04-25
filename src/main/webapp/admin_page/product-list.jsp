<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
							<h4>Danh sách vật phẩm</h4>
							<!--                            <h4>Products List</h4>-->
							<!-- <div class="add-product">
								 //////////////////////////////thêm vật phẩm
								<a href="product-edit.html">Thêm vật phẩm</a>								
								<a href="product-edit.html">Add Product</a>
								<a href="#">Xóa</a>
							</div> 
							-->
							<div class="col-sm-6">
                            <a href="#addproductmodel"  class="btn btn-success" data-toggle="modal"><i class="material-icons"></i> <span>Thêm vật phẩm</span></a>
                            <a href="#" class="btn btn-danger" data-toggle="modal"><i class="material-icons"></i> <span>Xóa vật phẩm</span></a>						
                        </div>
							<table>
								<tr>
									<th></th>
									<th>Hình ảnh</th>
									<th>Tên</th>
									<th>Loại</th>
									<th>Số điểm cần thiết</th>
									
								</tr>
								
								<td><input type="checkbox"></td>
								<td><img src="img/IMG_BOOK/Sach3.jpg" alt="" /></td>
								
								
								<td>Khung hỏa long</td>								
								<td>Khung</td>
								<td>1000 điểm</td>
								</tr>
								<tr>

									


									<td><input type="checkbox"></td>
								<td><img src="img/IMG_BOOK/Sach3.jpg" alt="" /></td>
								<!--                                    <td><img src="img/new-product/5-small.jpg" alt="" /></td>-->
								
								<td>Khung hỏa long</td>								
								<td>Khung</td>
								<td>1000 điểm</td>
								</tr>
								<tr>







									



									<td><input type="checkbox"></td>
								<td><img src="img/IMG_BOOK/Sach3.jpg" alt="" /></td>
								
								
								<td>Khung hỏa long</td>								
								<td>Khung</td>
								<td>1000 điểm</td>
									</td>
								</tr>
								




								<tr>
									<td><input type="checkbox"></td>
								<td><img src="img/IMG_BOOK/Sach3.jpg" alt="" /></td>
								
								
								<td>Khung hỏa long</td>								
								<td>Khung</td>
								<td>1000 điểm</td>
								</tr>


								<td><input type="checkbox"></td>
								<td><img src="img/IMG_BOOK/Sach3.jpg" alt="" /></td>
								<!--                                    <td><img src="img/new-product/5-small.jpg" alt="" /></td>-->
								
								<td>Khung hỏa long</td>								
								<td>Khung</td>
								<td>1000 điểm</td>
								</tr>
								<tr>



									
							</table>
							<div class="custom-pagination">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item disabled" ><a class="page-link" href="#" >trước</a></li>
										<!--                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>-->
										<li class="page-item active" ><a class="page-link" href="#" >1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">Tiếp</a></li>
										
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
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">	
                        	
                        	<div class="form-group">
                                    <label>ID</label>
                                    <input value="1" name="id" type="text" class="form-control" readonly required>
                                </div>
                                				
                            <div class="form-group">
                                <label>Tên vật phẩm</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Loại vật phẩm</label>
                                <select name="loaivatpham" class="form-select" aria-label="Default select example">
                                    <option>Avatar</option>
                                    <option>Khung</option>
                                    <option>Vật phẩm</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <table>
                                	<tr>
                                		<td><input name="image" type="text" class="form-control" required style="min-width:500px;"></td>
                                		<td><button class="btn btn-primary">Tải lên</button></td>
                                	</tr>
                                </table>
                                
                                
                            </div>
                            <div class="form-group">
                                <label>Điểm số</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            
                            

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
</body>

</html>