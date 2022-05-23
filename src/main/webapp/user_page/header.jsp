<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="elementary_web.dto.AccountDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>KidKinder - Kindergarten Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="user_page/img/favicon.ico" rel="icon">

<!-- BootStrap 4.4.1 -->
<link href="user_page/bootstrap-4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Google Web Fonts -->
<link rel="preconnect" href="user_page/https://fonts.gstatic.com">
<link href="user_page/css/css2.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="user_page/fonts/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="user_page/fonts/fontawesome/css/all.min.css">

<!-- Flaticon Font -->
<link href="user_page/lib/flaticon/font/flaticon.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="user_page/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="user_page/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="user_page/lib/slick/slick.css" />


<!-- Customized Bootstrap Stylesheet -->
<link href="user_page/css/style.css" rel="stylesheet">
<link href="user_page/fonts/chalk/stylesheet.css" rel="stylesheet">
<link href="user_page/css/header.css" rel="stylesheet">
</head>
<body>
<%
				AccountDTO accountDTO = (AccountDTO) session.getAttribute("account");
				if (accountDTO != null) {
				%>
	<!-- Navbar Start -->
	<div class="container-fluid bg-light position-relative shadow">
		<nav
			class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0 px-lg-5">
			<a href="user_page/"
				class="navbar-brand font-weight-bold text-secondary"
				style="font-size: 50px;"> <i class="fa-solid fa-book-open"></i>
				<span class="text-primary">LEARN</span>
			</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between"
				id="navbarCollapse">
				<div class="navbar-nav font-weight-bold mx-auto py-0">
					<a href="user_page/index.jsp" class="nav-item nav-link active">Home</a>
					<a href="about.jsp" class="nav-item nav-link">About</a> <a
						class="nav-item nav-link" data-toggle="modal" data-target="#store">Cửa
						hàng</a> <a href="team.jsp" class="nav-item nav-link">Teachers</a> <a
						href="gallery.jsp" class="nav-item nav-link">Gallery</a>
					<div class="nav-item dropdown">
						<a href="user_page/#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">Pages</a>
						<div class="dropdown-menu rounded-0 m-0">
							<a href="user_page/blog.jsp" class="dropdown-item">Blog Grid</a>
							<a href="single.jsp" class="dropdown-item">Blog Detail</a>
						</div>
					</div>
					<a href="user_page/contact.jsp" class="nav-item nav-link">Contact</a>
				</div>
				
				<div id="login-container">
					<i class="fa-solid fa-user fa-2xl" id="user-icon"></i> <br>
					<p id="account-name"><%=accountDTO.getNickName()%></p>
					<p id="point">
						ĐIỂM HIỆN CÓ:
						<%=accountDTO.getCoin()%></p>
				</div>
				<a id="logout-button" href="./logout"
					class="fa-solid fa-arrow-right-from-bracket fa-2xl"></a>
				<%
				} else {
				%>
				<div class="navbar-nav font-weight-bold mx-auto py-0">
					<a href="user_page/index.jsp" class="nav-item nav-link active">Home</a>
					<a href="about.jsp" class="nav-item nav-link">About</a> <a
						class="nav-item nav-link" data-toggle="modal" data-target="#store">Cửa
						hàng</a> <a href="team.jsp" class="nav-item nav-link">Teachers</a> <a
						href="Login-admin.jsp" class="nav-item nav-link">Admin</a>
					<div class="nav-item dropdown">
						<a href="user_page/#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">Pages</a>
						<div class="dropdown-menu rounded-0 m-0">
							<a href="user_page/blog.jsp" class="dropdown-item">Blog Grid</a>
							<a href="single.jsp" class="dropdown-item">Blog Detail</a>
						</div>
					</div>
					<a href="user_page/contact.jsp" class="nav-item nav-link">Contact</a>
				</div>
				<i class="fa-solid fa-user fa-2xl" id="user-icon"></i> <a
					href="./login" class="btn btn-primary px-4" id="login-button">Đăng
					nhập</a> <a href="user_page/" class="btn btn-primary px-4"
					id="sign-in-button">Đăng ký</a>
				<%
				}
				%>
			</div>
		</nav>
	</div>
	<!-- Navbar End -->


	<!-- Header Start -->
	<div class="container-fluid bg-primary px-0 px-md-5 mb-5 notification">
		<div class="row align-items-center px-3">
			<div class="col-lg-6 text-center text-lg-left notification-content">
				<h4 class="text-white mb-4 mt-5 mt-lg-0">Kids Learning Center</h4>
				<h1 class="display-3 font-weight-bold text-white">New Approach
					to Kids Education</h1>
				<p class="text-white mb-4">Sea ipsum kasd eirmod kasd magna, est
					sea et diam ipsum est amet sed sit. Ipsum dolor no justo dolor et,
					lorem ut dolor erat dolore sed ipsum at ipsum nonumy amet. Clita
					lorem dolore sed stet et est justo dolore.</p>
				<a href="user_page/" class="btn btn-secondary mt-1 py-3 px-5">Learn
					More</a>
			</div>
			<div class="col-lg-6 text-center text-lg-right notification-image">
				<img class="img-fluid mt-5" src="user_page/img/header.png" alt="">
			</div>
		</div>

		<div class="row align-items-center px-3">
			<div class="col-lg-6 text-center text-lg-left notification-content">
				<h4 class="text-white mb-4 mt-5 mt-lg-0">Kids Learning Center</h4>
				<h1 class="display-3 font-weight-bold text-white">New Approach
					to Kids Education</h1>
				<p class="text-white mb-4">Sea ipsum kasd eirmod kasd magna, est
					sea et diam ipsum est amet sed sit. Ipsum dolor no justo dolor et,
					lorem ut dolor erat dolore sed ipsum at ipsum nonumy amet. Clita
					lorem dolore sed stet et est justo dolore.</p>
				<a href="user_page/" class="btn btn-secondary mt-1 py-3 px-5">Learn
					More</a>
			</div>
			<div class="col-lg-6 text-center text-lg-right notification-image">
				<img class="img-fluid mt-5" src="user_page/img/header.png" alt="">
			</div>
		</div>
		<div class="row align-items-center px-3">
			<div class="col-lg-6 text-center text-lg-left notification-content">
				<h4 class="text-white mb-4 mt-5 mt-lg-0">Kids Learning Center</h4>
				<h1 class="display-3 font-weight-bold text-white">New Approach
					to Kids Education</h1>
				<p class="text-white mb-4">Sea ipsum kasd eirmod kasd magna, est
					sea et diam ipsum est amet sed sit. Ipsum dolor no justo dolor et,
					lorem ut dolor erat dolore sed ipsum at ipsum nonumy amet. Clita
					lorem dolore sed stet et est justo dolore.</p>
				<a href="user_page/" class="btn btn-secondary mt-1 py-3 px-5">Learn
					More</a>
			</div>
			<div class="col-lg-6 text-center text-lg-right notification-image">
				<img class="img-fluid mt-5" src="user_page/img/header.png" alt="">
			</div>
		</div>

	</div>
	<!-- Header End -->

	<div id="store" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title w-100 text-center">Cửa hàng</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>

				</div>
				<div class="modal-body">
					<ul class="nav nav-tabs">
						<li class="tabs" id="first-tab"><a data-toggle="tab"
							href="#avatar-tab">Avatar</a></li>
						<li class="tabs"><a data-toggle="tab" href="#frame-tab">Khung</a></li>
						<li class="tabs"><a data-toggle="tab" href="#items-tab">Vật
								phẩm</a></li>
					</ul>
					<div class="tab-content">
						<div id="avatar-tab" class="tab-pane active in">
							<div class="row store-container">
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
							</div>

						</div>
						<div id="frame-tab" class="tab-pane fade">
							<div class="row store-container">
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
							</div>
						</div>
						<div id="items-tab" class="tab-pane fade">
							<div class="row store-container">
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>Tên</p>
										<p>Giá</p>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				</div>
			</div>

		</div>
	</div>
</body>
</html>