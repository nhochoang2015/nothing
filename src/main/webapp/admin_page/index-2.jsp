<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<title></title>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="admin_page/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<%@ include file="menu-bar.jsp"%>

	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>

		<div class="section-admin container-fluid">
			<div class="row admin text-center">
				<div class="col-md-12">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<div class="admin-content analysis-progrebar-ctn res-mg-t-15">
								<!--                                ********************************************-->
								<h4 class="text-left text-uppercase">
									<b>Sản phẩm đang bán</b>
								</h4>
								<div class="row vertical-center-box vertical-center-box-tablet">
									<div class="col-xs-3 mar-bot-15 text-left">
										<label class="label bg-green">30% <i
											class="fa fa-level-up" aria-hidden="true"></i></label>
									</div>
									<div class="col-xs-9 cus-gh-hd-pro">
										<h2 class="text-right no-margin">10,000</h2>
									</div>
								</div>
								<div class="progress progress-mini">
									<div style="width: 78%;" class="progress-bar bg-green"></div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"
							style="margin-bottom: 1px;">
							<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
								<!--                                ********Tax ĐEUCTION -->
								<h4 class="text-left text-uppercase">
									<b>Đơn hàng xử lý</b>
								</h4>

								<div class="row vertical-center-box vertical-center-box-tablet">
									<div class="text-left col-xs-3 mar-bot-15">
										<label class="label bg-red">15% <i
											class="fa fa-level-down" aria-hidden="true"></i></label>
									</div>
									<div class="col-xs-9 cus-gh-hd-pro">
										<h2 class="text-right no-margin">5,000</h2>
									</div>
								</div>
								<div class="progress progress-mini">
									<div style="width: 38%;"
										class="progress-bar progress-bar-danger bg-red"></div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
								<!--                                ****************REVENUE-->
								<h4 class="text-left text-uppercase">
									<b>Sản phẩm đã bán</b>
								</h4>
								<!--                                <h4 class="text-left text-uppercase"><b>Revenue</b></h4>-->
								<div class="row vertical-center-box vertical-center-box-tablet">
									<div class="text-left col-xs-3 mar-bot-15">
										<label class="label bg-blue">50% <i
											class="fa fa-level-up" aria-hidden="true"></i></label>
									</div>
									<div class="col-xs-9 cus-gh-hd-pro">
										<h2 class="text-right no-margin">3,000</h2>

									</div>
								</div>
								<div class="progress progress-mini">
									<div style="width: 60%;" class="progress-bar bg-blue"></div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<div class="admin-content analysis-progrebar-ctn res-mg-t-30">
								<!--                                ******************-->
								<h4 class="text-left text-uppercase">
									<b>Doanh thu trong năm</b>
								</h4>

								<div class="row vertical-center-box vertical-center-box-tablet">
									<div class="text-left col-xs-3 mar-bot-15">
										<label class="label bg-purple">80% <i
											class="fa fa-level-up" aria-hidden="true"></i></label>
									</div>
									<div class="col-xs-9 cus-gh-hd-pro">
										<h2 class="text-right no-margin">$100,000</h2>
									</div>
								</div>
								<div class="progress progress-mini">
									<div style="width: 60%;" class="progress-bar bg-purple"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="product-sales-area mg-tb-30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<div class="product-sales-chart">
							<div class="portlet-title">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<div class="caption pro-sl-hd">
											<!--                                            ***********8-->
											<span class="caption-subject text-uppercase"><b>QUẢN
													LÝ MÔN HỌC</b></span>

										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<div class="actions graph-rp">
											<div class="btn-group" data-toggle="buttons">
												<label class="btn btn-grey active"> <input
													type="radio" name="options" class="toggle" id="option1"
													checked="">Hôm nay
												</label> <label class="btn btn-grey"> <input type="radio"
													name="options" class="toggle" id="option2">Tuần
												</label>

											</div>
										</div>
									</div>

								</div>
							</div>
							<ul class="list-inline cus-product-sl-rp">


								<li>
									<h5>
										<i class="fa fa-circle" style="color: #24caa1;"></i>Sách kinh
										tế
									</h5>
								</li>
								<li>
									<h5>
										<i class="fa fa-circle" style="color: #3f4d9f;"></i>Sách văn
										học
									</h5>
								</li>
								<li>
									<h5>
										<i class="fa fa-circle" style="color: #ff7f5a;"></i>Tiểu
										thuyết
									</h5>
								</li>
							</ul>
							<div id="sparklinehome" class="sparkline-container">Loading..</div>
						</div>
						<div class="product-status-wrap">
							<h4>QUẢN LÝ MÔN HỌC</h4>
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
									<input type="text" class="form-control" placeholder="Nhập tên hoặc mã môn học cần tìm">
								</div>
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#exampleModal">Tạo
									môn học</button>

							</div>
							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Tạo môn
												học</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">form tạo môn học</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Đóng</button>
											<button type="button" class="btn btn-primary">Tạo</button>
										</div>
									</div>
								</div>
							</div>
							<table>
								<tr>
									<th class="text-center">Mã môn học</th>
									<th class="text-center">Tên môn học</th>
									<th class="text-center">Chi tiết</th>
									<th class="text-center">Xóa môn học</th>

								</tr>
								<tr>
									<td>MH01</td>
									<td>Môn học 01</td>
									
									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>
								<tr>
									<td>MH02</td>
									<td>Môn học 02</td>
									
									
									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>
								<tr>
									<td>MH03</td>
									<td>Môn học 03</td>
									
									
									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>
								<tr>
									<td>MH04</td>
									<td>Môn học 04</td>
									
									
									<td><a href="admin_page/#" class="btn btn-info"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xem </span></a></td>
									<td><a href="admin_page/#" class="btn btn-danger"
										data-toggle="modal"><i class="material-icons"></i> <span>
												Xóa</span></a></td>
								</tr>

								<tr>
									<td>MH05</td>
									<td>Môn học 05</td>
									
									
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

					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="white-box analytics-info-cs mg-b-10 res-mg-t-30">
							<h3 class="box-title">Số lượt truy cập</h3>

							<ul class="list-inline two-part-sp">
								<li>
									<div id="sparklinedash"></div>
								</li>
								<li class="text-right sp-cn-r"><i class="fa fa-level-up"
									aria-hidden="true"></i> <span class="counter text-success">8659</span></li>
							</ul>
						</div>
						<div class="white-box analytics-info-cs mg-b-10">
							<h3 class="box-title">Tổng đơn hàng</h3>

							<ul class="list-inline two-part-sp">
								<li>
									<div id="sparklinedash2"></div>
								</li>
								<li class="text-right"><i class="fa fa-level-up"
									aria-hidden="true"></i> <span class="counter text-purple">7469</span></li>
							</ul>
						</div>
						<div class="white-box analytics-info-cs mg-b-10">
							<h3 class="box-title">Tổng sản phẩm đã bán</h3>

							<ul class="list-inline two-part-sp">
								<li>
									<div id="sparklinedash3"></div>
								</li>
								<li class="text-right"><i class="fa fa-level-up"
									aria-hidden="true"></i> <span class="counter text-info">6011</span></li>
							</ul>
						</div>
						<div class="white-box analytics-info-cs">
							<h3 class="box-title">Tỷ lệ đặt hoàn tất đặt hàng</h3>
							<ul class="list-inline two-part-sp">
								<li>
									<div id="sparklinedash4"></div>
								</li>
								<li class="text-right"><i class="fa fa-level-down"
									aria-hidden="true"></i> <span class="text-danger">18%</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="traffic-analysis-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
					<!--                    ///////////////////////////////////////******* SITE TRAFFIC*-->

				</div>
			</div>
		</div>
		<div class="product-new-list-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="single-new-trend mg-t-30">


							<a href="admin_page/#"><img
								src="admin_page/img/IMG_BOOK/Sach3.jpg" alt=""></a>

							<div class="overlay-content">
								<a href="admin_page/#">
									<h2>70,000 VND</h2>
								</a> <a href="admin_page/#" class="btn-small">Hiện tại</a>
								<div class="product-action">
									<ul>
										<li><a data-toggle="tooltip" title="Shopping"
											href="admin_page/#"><i class="fa fa-shopping-bag"
												aria-hidden="true"></i></a></li>
										<li><a data-toggle="tooltip" title="Quick view"
											href="admin_page/#"><i class="fa fa-heart"
												aria-hidden="true"></i></a></li>
									</ul>
								</div>
								<a href="admin_page/#"> <br>
									<h4>65,000 VND</h4> <strike>
										<h5>80,000</h5>
								</strike>

								</a>
								<div class="pro-rating">
									<i class="fa fa-star color"></i> <i class="fa fa-star color"></i>
									<i class="fa fa-star color"></i> <i class="fa fa-star color"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="single-new-trend mg-t-30">

							<a href="admin_page/#"><img
								src="admin_page/img/IMG_BOOK/SachP.jpg" alt=""></a>
							<div class="overlay-content">
								<a href="admin_page/#">
									<h2>90,000 VND</h2>
								</a> <a href="admin_page/#" class="btn-small">Hiện tại</a>
								<div class="product-action">
									<ul>
										<li><a data-toggle="tooltip" title="Shopping"
											href="admin_page/#"><i class="fa fa-shopping-bag"
												aria-hidden="true"></i></a></li>
										<li><a data-toggle="tooltip" title="Quick view"
											href="admin_page/#"><i class="fa fa-heart"
												aria-hidden="true"></i></a></li>
									</ul>
								</div>
								<a href="admin_page/#"> <br>
									<h4>65,000 VND</h4> <strike>
										<h5>80,000</h5>
								</strike> <!--                                    <h4>Princes Diamond</h4>-->
								</a>
								<div class="pro-rating">
									<i class="fa fa-star color"></i> <i class="fa fa-star color"></i>
									<i class="fa fa-star color"></i> <i class="fa fa-star color"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="single-new-trend mg-t-30">

							<a href="admin_page/#"><img
								src="admin_page/img/IMG_BOOK/[www.fahasa.com]SACH_MEDOTHAIDAYCONTULAP.jpg"
								alt=""></a>
							<!--                                 width="270"/><a href="admin_page/#"><img src="admin_page/img/new-product/7.jpg" alt=""></a>-->
							<div class="overlay-content">
								<a href="admin_page/#">
									<h2>99,000 VND</h2>
								</a> <a href="admin_page/#" class="btn-small">Hiện tại</a>
								<div class="product-action">
									<ul>
										<li><a data-toggle="tooltip" title="Shopping"
											href="admin_page/#"><i class="fa fa-shopping-bag"
												aria-hidden="true"></i></a></li>
										<li><a data-toggle="tooltip" title="Quick view"
											href="admin_page/#"><i class="fa fa-heart"
												aria-hidden="true"></i></a></li>
									</ul>
								</div>
								<a href="admin_page/#"> <br>
									<h4>65,000 VND</h4> <!--                                    <br>-->
									<strike>
										<h5>80,000</h5>
								</strike> <!--                                    <h4>Princes Diamond</h4>-->
								</a>
								<div class="pro-rating">
									<i class="fa fa-star color"></i> <i class="fa fa-star color"></i>
									<i class="fa fa-star color"></i> <i class="fa fa-star color"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="single-new-trend mg-t-30">


							<a href="admin_page/#"><img
								src="admin_page/img/IMG_BOOK/Sach3.jpg" alt=""></a>
							<!--                            <a href="admin_page/#"><img src="admin_page/img/new-product/5.jpg" alt=""></a>-->
							<div class="overlay-content">
								<a href="admin_page/#">
									<h2>70,000 VND</h2>
								</a> <a href="admin_page/#" class="btn-small">Hiện tại</a>
								<div class="product-action">
									<ul>
										<li><a data-toggle="tooltip" title="Shopping"
											href="admin_page/#"><i class="fa fa-shopping-bag"
												aria-hidden="true"></i></a></li>
										<li><a data-toggle="tooltip" title="Quick view"
											href="admin_page/#"><i class="fa fa-heart"
												aria-hidden="true"></i></a></li>
									</ul>
								</div>
								<a href="admin_page/#"> <br>
									<h4>65,000 VND</h4> <!--                                    <br>-->
									<strike>
										<h5>80,000</h5>
								</strike> <!--                                    <h4>Princes Diamond</h4>-->
								</a>
								<div class="pro-rating">
									<i class="fa fa-star color"></i> <i class="fa fa-star color"></i>
									<i class="fa fa-star color"></i> <i class="fa fa-star color"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="product-sales-area mg-tb-30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<div class="product-sales-chart">
							<div class="portlet-title">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<div class="caption pro-sl-hd">

											<!--                                            ************************************************-->
											<span class="caption-subject text-uppercase"><b>Thống
													kê</b></span>
											<!--                                            <span class="caption-subject text-uppercase"><b>Order Statistic</b></span>-->
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<div class="actions graph-rp">
											<a href="admin_page/#"
												class="btn btn-dark-blue btn-circle active tip-top"
												data-toggle="tooltip" title="Upload"> <!--                                            <a href="admin_page/#" class="btn btn-dark-blue btn-circle active tip-top" data-toggle="tooltip" title="Upload">-->
												<i class="fa fa-cloud-download" aria-hidden="true"></i>
											</a> <a href="admin_page/#"
												class="btn btn-dark btn-circle active tip-top"
												data-toggle="tooltip" title="Refresh"> <i
												class="fa fa-reply" aria-hidden="true"></i>
											</a> <a href="admin_page/#"
												class="btn btn-blue-grey btn-circle active tip-top"
												data-toggle="tooltip" title="Delete"> <i
												class="fa fa-trash-o" aria-hidden="true"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<ul class="list-inline cus-product-sl-rp">

								<li>
									<h5>
										<i class="fa fa-circle" style="color: #24caa1;"></i>Sách kinh
										tế
									</h5>
								</li>
								<li>
									<h5>
										<i class="fa fa-circle" style="color: #888;"></i>Sách văn học
									</h5>
								</li>
								<li>
									<h5>
										<i class="fa fa-circle" style="color: #ff7f5a;"></i>Tiểu
										thuyết
									</h5>
								</li>
							</ul>
							<div id="extra-area-chart"></div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="analytics-rounded mg-b-10 res-mg-t-30">
							<div class="analytics-rounded-content">
								<h5>Phân phối tỷ lệ phần trăm</h5>
								<!--                                <h5>Percentage distribution</h5>-->
								<h2>
									<span class="counter">60</span>/20
								</h2>
								<div class="text-center">
									<div id="sparkline51"></div>
								</div>
							</div>
						</div>
						<div class="analytics-rounded">
							<div class="analytics-rounded-content">
								<h5>Tỷ lệ phần trăm</h5>
								<!--                                <h5>Percentage division</h5>-->
								<h2>
									<span class="counter">150</span>/<span class="counter">54</span>
								</h2>
								<div class="text-center">
									<div id="sparkline52"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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

	</div>


</body>

</html>