<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="user_page/css/subject-details.css" rel="stylesheet">
</head>

<body>
	<%@include file="header.jsp"%>
	<!-- Môn học -->
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<p class="section-title px-5 subject-title">
					<span class="px-2">MÔN HỌC</span>
				</p>
			</div>
			<div class="row">
				<div class="col-lg-4 mb-5">
					<div class="card border-0 bg-light shadow-sm pb-2 subject-image">
						<img class="card-img-top mb-2" src="user_page/img/class-1.jpg"
							alt="">
						<div class="card-body text-center">
							<h4 class="card-title">Chương 1</h4>

						</div>
						<div class="card-footer bg-transparent py-4 px-5 subject-lessons">
							<div class="row border-bottom">
								<div class="col-10 py-1">
									<a>Bài 1</a>
								</div>
								<div class="col-2 py-1">
									<i class="fa-solid fa-xmark"></i>
								</div>
							</div>
							<div class="row border-bottom">
								<div class="col-10 py-1">
									<a>Bài 2</a>
								</div>
								<div class="col-2 py-1">
									<i class="fa-solid fa-check"></i>
								</div>
							</div>
							<div class="row border-bottom">
								<div class="col-10 py-1">
									<a>Bài 2</a>
								</div>
								<div class="col-2 py-1">
									<i class="fa-solid fa-check"></i>
								</div>
							</div>
							<div class="row border-bottom">
								<div class="col-10 py-1">
									<a>Bài 2</a>
								</div>
								<div class="col-2 py-1">
									<i class="fa-solid fa-check"></i>
								</div>
							</div>
						</div>
						<a href="user_page/" class="btn btn-primary px-4 mx-auto mb-4">Kiểm
							tra</a>
					</div>
				</div>


			</div>
		</div>
	</div>



	<%@include file="footer.jsp"%>
	<script type="text/javascript" src="user_page/js/subject-details.js"></script>
</body>

</html>