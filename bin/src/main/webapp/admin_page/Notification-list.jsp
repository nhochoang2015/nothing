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
						<div class="product-status-wrap">
							<h4>Danh sách thông báo</h4>
							<!--                            <h4>Products List</h4>-->
							<!-- <div class="add-product">
								 //////////////////////////////thêm vật phẩm
								<a href="product-edit.html">Thêm vật phẩm</a>								
								<a href="product-edit.html">Add Product</a>
								<a href="#">Xóa</a>
							</div> 
							-->
							<div class="col-sm-6">
                            <a href="#addnotify"  class="btn btn-success" data-toggle="modal"><i class="material-icons"></i> <span>Tạo thông báo</span></a>
                            <a href="#" class="btn btn-danger" data-toggle="modal"><i class="material-icons"></i> <span>Xóa thông báo</span></a>						
                        </div>
							<table>
								<tr>
									<th></th>
									<th>Tên thông báo</th>
									<th>Hình ảnh</th>								
								</tr>
								<!--                                <tr>-->
								<!--                                    <th>Image</th>-->
								<!--                                    <th>Product Title</th>-->
								<!--                                    <th>Status</th>-->
								<!--                                    <th>Purchases</th>-->
								<!--                                    <th>Product sales</th>-->
								<!--                                    <th>Stock</th>-->
								<!--                                    <th>Price</th>-->
								<!--                                    <th>Setting</th>-->
								<!--                                </tr>-->
								<td><input type="checkbox"></td>
								
								<!--                                    <td><img src="img/new-product/5-small.jpg" alt="" /></td>-->
								
								<td>Thông báo kiểm tra cuối tuần</td>	
								<td><img src="img/IMG_BOOK/demo.jpg" alt="" /></td>							
								
								</tr>
								<tr>

									<!--                                <tr>-->
									<!--                                    <td><img src="img/new-product/5-small.jpg" alt="" /></td>-->
									<!--                                    <td>Jewelery Title 1</td>-->
									<!--                                    <td>-->
									<!--                                        <button class="pd-setting">Active</button>-->
									<!--                                    </td>-->
									<!--                                    <td>50</td>-->
									<!--                                    <td>$750</td>-->
									<!--                                    <td>Out Of Stock</td>-->
									<!--                                    <td>$15</td>-->
									<!--                                    <td>-->
									<!--                                        <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>-->
									<!--                                        <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>-->
									<!--                                    </td>-->
									<!--                                </tr>-->


									


									<!--                                <tr>-->
									<!--                                    <td><img src="img/new-product/5-small.jpg" alt="" /></td>-->
									<!--                                    <td>Jewelery Title 4</td>-->
									<!--                                    <td>-->
									<!--                                        <button class="pd-setting">Active</button>-->
									<!--                                    </td>-->
									<!--                                    <td>120</td>-->
									<!--                                    <td>$1440</td>-->
									<!--                                    <td>In Stock</td>-->
									<!--                                    <td>$12</td>-->
									<!--                                    <td>-->
									<!--                                        <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>-->
									<!--                                        <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>-->
									<!--                                    </td>-->
									<!--                                </tr>-->
									<!--                                <tr>-->
									<!--                                    <td><img src="img/new-product/6-small.jpg" alt="" /></td>-->
									<!--                                    <td>Jewelery Title 5</td>-->
									<!--                                    <td>-->
									<!--                                        <button class="pd-setting">Active</button>-->
									<!--                                    </td>-->
									<!--                                    <td>30</td>-->
									<!--                                    <td>$540</td>-->
									<!--                                    <td>Out Of Stock</td>-->
									<!--                                    <td>$18</td>-->
									<!--                                    <td>-->
									<!--                                        <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>-->
									<!--                                        <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>-->
									<!--                                    </td>-->
									<!--                                </tr>-->
									<!--                                <tr>-->
									<!--                                    <td><img src="img/new-product/7-small.jpg" alt="" /></td>-->
									<!--                                    <td>Jewelery Title 6</td>-->
									<!--                                    <td>-->
									<!--                                        <button class="ps-setting">Paused</button>-->
									<!--                                    </td>-->
									<!--                                    <td>400</td>-->
									<!--                                    <td>$4000</td>-->
									<!--                                    <td>In Stock</td>-->
									<!--                                    <td>$10</td>-->
									<!--                                    <td>-->
									<!--                                        <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>-->
									<!--                                        <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>-->
									<!--                                    </td>-->
									<!--                                </tr>-->
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
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">	
                        
                        	<div class="form-group">
                                    <label>ID</label>
                                    <input value="443" name="id" type="text" class="form-control" readonly required>
                                </div>				
                            <div class="form-group">
                                <label>Tên thông báo</label>
                                <input name="name" type="text" class="form-control" required>
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