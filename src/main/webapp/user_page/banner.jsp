<%@page import="java.util.ArrayList"%>
<%@page import="elementary_web.dto.NotificationDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<style>
.my-custom-scrollbar {
	position: relative;
	height: 200px;
	overflow: auto;
	background-image:
		url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTus_gWso6gF6nj8_d9LncWXFphmHgbK4Ad4A&usqp=CAU');
	background: rgb(255, 214, 195);
	margin-bottom: 30px;
}

.table-wrapper-scroll-y {
	display: block;
}

.graycolor {
	color: graytext;
}
</style>
</head>
<body>
	<!-- Banner Start -->
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
				<h3>Thông báo</h3>

				<div class="table-wrapper-scroll-y my-custom-scrollbar">
					<table class="table table-bordered table-striped mb-0">
						<%
						List<NotificationDTO> notesDTOList = (ArrayList<NotificationDTO>) request.getAttribute("notesDTOList");
						%>

						<thead>
							<tr>
								<th scope="col">Tiêu đề</th>
								<th scope="col">Ngày đăng</th>


							</tr>
						</thead>
						<%
						for (NotificationDTO note : notesDTOList) {
						%>
						<tbody>
							<tr>
								<td><a href="./notificationPage?notificationID=<%=note.getNotificationID()%>"> <%=note.getTitle()%></a></td>
								<th scope="row">20/10/2020</th>


							</tr>
						</tbody>
						<%
						}
						%>
					</table>

				</div>

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
</body>
</html>