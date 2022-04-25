<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<title>ADM_USER</title>
</head>

<body>
	<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

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
									<!--                                    <h1>Products <span class="table-project-n">Data</span> Table</h1>-->
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
											<!--                                //////////////////////////////Sửa lại Link Now-->
											<a href="product-edit.html">Thêm</a>
											<!--                                <a href="product-edit.html">Add Product</a>-->
										</div>
										<!--                                    ===-->
										<thead>

											<tr>
												<th data-field="state" data-checkbox="true"></th>

												<th data-field="id">ID</th>
												<th data-field="name" data-editable="true">Tài khoản</th>
												<th data-field="password">Mật khẩu</th>
												<th data-field="company" data-editable="true">Người
													dùng</th>
												<th data-field="price" data-editable="true">Địa chỉ</th>
												<th data-field="date" data-editable="true">Ngày tạo</th>
												<th data-field="task" data-editable="true">Trạng thái</th>
												<th data-field="">Công cụ</th>



												<!--                                                ===========================================================================-->
												<!--                                                <th data-field="id">ID</th>-->
												<!--                                                <th data-field="name" data-editable="true">Product Title</th>-->
												<!--                                                <th data-field="company" data-editable="true">Stock</th>-->
												<!--                                                <th data-field="price" data-editable="true">Price</th>-->
												<!--												<th data-field="date" data-editable="true">Date</th>-->
												<!--												<th data-field="task" data-editable="true">Status</th>-->
												<!--												<th data-field="email" data-editable="true">Total Sales</th>-->
												<!--                                                <th data-field="action">Action</th>-->
											</tr>
										</thead>
										<tbody>
											<tr>
												<td></td>


												<td>1</td>
												<td>dêdxx</td>

												<td><input type="password" value="123"></td>

												<td>Nguyễn Minh</td>
												<td>Linh trung , thủ đức</td>
												<td>Jul 14, 2017</td>
												<td>Hoạt động</td>



												<td>
													<button data-toggle="tooltip" title="Edit"
														class="pd-setting-ed">
														<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</button>
													<button data-toggle="tooltip" title="Trash"
														class="pd-setting-ed">
														<i class="fa fa-trash-o" aria-hidden="true"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td></td>


												<td>1</td>
												<td>dêdxx</td>

												<td><input type="password" value="123"></td>

												<td>Nguyễn Minh</td>
												<td>Linh trung , thủ đức</td>
												<td>Jul 14, 2017</td>
												<td>Hoạt động</td>



												<td>
													<button data-toggle="tooltip" title="Edit"
														class="pd-setting-ed">
														<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</button>
													<button data-toggle="tooltip" title="Trash"
														class="pd-setting-ed">
														<i class="fa fa-trash-o" aria-hidden="true"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td></td>


												<td>1</td>
												<td>dêdxx@gmail.com</td>

												<td><input type="password" value="123"></td>

												<td>Nguyễn Minh</td>
												<td>Linh trung , thủ đức</td>
												<td>Jul 14, 2017</td>
												<td>Hoạt động</td>



												<td>
													<button data-toggle="tooltip" title="Edit"
														class="pd-setting-ed">
														<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</button>
													<button data-toggle="tooltip" title="Trash"
														class="pd-setting-ed">
														<i class="fa fa-trash-o" aria-hidden="true"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td></td>


												<td>1</td>
												<td>dêdxx</td>
												<td>Nguyễn Minh</td>
												<td>Linh trung , thủ đức</td>
												<td>Jul 14, 2017</td>
												<td>Hoạt động</td>
												<td></td>



												<td>
													<button data-toggle="tooltip" title="Edit"
														class="pd-setting-ed">
														<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</button>
													<button data-toggle="tooltip" title="Trash"
														class="pd-setting-ed">
														<i class="fa fa-trash-o" aria-hidden="true"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td></td>


												<td>1</td>
												<td>dêdxx</td>
												<td>Nguyễn Minh</td>
												<td>Linh trung , thủ đức</td>
												<td>Jul 14, 2017</td>
												<td>Hoạt động</td>
												<td></td>



												<td>
													<button data-toggle="tooltip" title="Edit"
														class="pd-setting-ed">
														<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</button>
													<button data-toggle="tooltip" title="Trash"
														class="pd-setting-ed">
														<i class="fa fa-trash-o" aria-hidden="true"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td></td>


												<td>1</td>
												<td>dêdxx</td>
												<td>Nguyễn Minh</td>
												<td>Linh trung , thủ đức</td>
												<td>Jul 14, 2017</td>
												<td>Hoạt động</td>
												<td></td>



												<td>
													<button data-toggle="tooltip" title="Edit"
														class="pd-setting-ed">
														<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
													</button>
													<button data-toggle="tooltip" title="Trash"
														class="pd-setting-ed">
														<i class="fa fa-trash-o" aria-hidden="true"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td></td>
												<td>7</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td></td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>8</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>9</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>10</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>11</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>12</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>13</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>14</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>15</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>16</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>17</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>18</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>19</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>20</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>21</td>
												<td>Product Title</td>
												<td>In Of Stock</td>
												<td>$5</td>
												<td>Jul 14, 2017</td>
												<td>Active</td>
												<td>$700</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
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
</body>

</html>