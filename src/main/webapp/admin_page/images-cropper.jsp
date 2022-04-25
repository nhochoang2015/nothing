<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>

<title>Image Cropper | jeweler - Material Admin Template</title>

</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="admin_page/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<%@ include file="menu-bar.jsp"%>
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>

		<!-- Basic Image cropper Start -->
		<div class="dual-list-box-area mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="sparkline10-list shadow-reset">
							<div class="sparkline10-hd">
								<div class="main-sparkline10-hd">
									<h1>Images Cropper</h1>
								</div>
							</div>
							<div class="sparkline10-graph">
								<div class="basic-login-form-ad">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="dual-list-box-inner">
												<div class="row">
													<div class="col-md-6 col-md-6 col-sm-6 col-xs-12">
														<div class="image-crop">
															<img src="admin_page/img/cropper/1.jpg" alt="">
														</div>
													</div>
													<div class="col-md-6 col-md-6 col-sm-6 col-xs-12">
														<div class="preview-img-pro-ad">
															<h4>Preview image</h4>
															<div class="img-preview img-preview-custom"></div>
															<h4 class="comon-method">Comon method</h4>
															<p>You can upload new image to crop.</p>
															<div class="btn-group images-cropper-pro">
																<label title="Upload image file" for="inputImage"
																	class="btn btn-primary img-cropper-cp"> <input
																	type="file" accept="image/*" name="file"
																	id="inputImage" class="hide"> Upload new image
																</label> <label title="Donload image" id="download"
																	class="btn btn-primary">Download</label>
															</div>
															<h4 class="comon-method">Other method</h4>
															<p>
																You may set cropper options with
																<code>$(image}).cropper(options)</code>
															</p>
															<div class="btn-group images-action-pro">
																<button class="btn btn-white" id="zoomIn" type="button">Zoom
																	In</button>
																<button class="btn btn-white" id="zoomOut" type="button">Zoom
																	Out</button>
																<button class="btn btn-white" id="rotateLeft"
																	type="button">Rotate Left</button>
																<button class="btn btn-white" id="rotateRight"
																	type="button">Rotate Right</button>
																<button class="btn btn-warning img-cropper-cp-t"
																	id="setDrag" type="button">New crop</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Basic Image cropper End-->
		<%@ include file="footer.jsp"%>

	</div>


</body>

</html>