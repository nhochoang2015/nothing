<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="booking.dto.SubjectDTO"%>
<%@page import="booking.dto.ChapterDTO"%>


<!DOCTYPE html>
<html lang="en">
<head>
<link href="user_page/css/index.css" rel="stylesheet">
</head>

<body>
	<%@include file="header.jsp"%>
	<%@include file="banner.jsp"%>
	<!-- Đặt tour -->
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<p class="section-title px-5">
					<span class="px-2">Đặt Khách Sạn</span>
				</p>
			</div>
			<div class="row">

				<div class="col-lg-4 mb-5">
					<div class="card border-0 bg-light shadow-sm pb-2">

						<div class="card-body text-center">
							<h4 class="card-title">Tìm khách sạn</h4>
						</div>
						<form class="needs-validation" novalidate>
							<div class="form-row">
								<div class="col-md-9 mb-3" style="margin: auto">
									<label for="validationCustom01">Tên chỗ nghỉ, điểm đến:
									</label>
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"><i
												class="fa-solid fa-magnifying-glass"></i> </span>
										</div>
										<input type="text" class="form-control"
											id="validationCustom01" placeholder="nhập địa điểm" required>
									</div>
									<div class="valid-feedback">Hoàn thành!</div>
								</div>
							</div>
							<div class="form-row">
								<div class="col-md-9 mb-3" style="margin: auto">
									<label for="validationCustom03">Ngày nhận phòng:</label> <input
										type="date" class="form-control" id="validationCustom03"
										placeholder="City" value="">
									<div class="invalid-feedback">Vui lòng nhập ngày nhận
										phòng.</div>
								</div>
								<div class="col-md-9 mb-3" style="margin: auto">
									<label for="validationCustom04">Ngày trả phòng:</label> <input
										type="date" class="form-control" id="validationCustom04"
										placeholder="State" required>
									<div class="invalid-feedback">Vui lòng nhập ngày trả
										phòng.</div>
								</div>
								<div class="col-md-9 mb-3" style="margin: auto">
									<label for="validationCustom05">Nhập số người: </label>
									<div class="dropdown show ">
										<a class="btn dropdown-toggle col-md-12 mb-3 "
											style="border-color: #ced4da; background-color: #fff; border-radius: 5px;"
											href="#" role="button" id="dropdownMenuLink1"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">Số người: 0 - Số phòng: 0 </a>

										<div class="dropdown-menu form-group row"
											aria-labelledby="dropdownMenuLink1">
											<div>
												<label for="validationCustom06">Số người lớn: </label> <input
													name="" id="soNguoi" type="number" value="0"
													class="form-control" required min=0 max=20>
												<div class="invalid-feedback">Vui lòng nhập số người</div>
											</div>
											<div>
												<label for="validationCustom07">Số phòng: </label> <input
													name="" id="soPhong" type="number" value="0"
													class="form-control" required min=0 max=20>
												<div class="invalid-feedback">Vui lòng nhập số phòng</div>
											</div>
											<button class="btn btn-success" type="button"
												onclick="myFunction()">Xác nhận</button>
											<script>
												function myFunction() {
													var x = document
															.getElementById("soNguoi").value;
													var y = document
															.getElementById("soPhong").value;
													document
															.getElementById("dropdownMenuLink1").innerHTML = 'Số Người: '
															+ x
															+ ' - Số Phòng: '
															+ y;
												}
											</script>
										</div>
									</div>



								</div>
							</div>
							<button class="btn btn-primary" type="submit">Tìm</button>
						</form>

						<script>
							// Example starter JavaScript for disabling form submissions if there are invalid fields
							(function() {
								'use strict';
								window
										.addEventListener(
												'load',
												function() {
													// Fetch all the forms we want to apply custom Bootstrap validation styles to
													var forms = document
															.getElementsByClassName('needs-validation');
													// Loop over them and prevent submission
													var validation = Array.prototype.filter
															.call(
																	forms,
																	function(
																			form) {
																		form
																				.addEventListener(
																						'submit',
																						function(
																								event) {
																							if (form
																									.checkValidity() === false) {
																								event
																										.preventDefault();
																								event
																										.stopPropagation();
																							}
																							form.classList
																									.add('was-validated');
																						},
																						false);
																	});
												}, false);
							})();
						</script>

					</div>
				</div>
				<div class="col">Đã tìm thấy khách sạn</div>
				<div class="col">
					<div class="col-lg-12 mb-5">
						<div class="card border-0 bg-light shadow-sm pb-2">
							<div class="row">
								<div class="col">
									<img src="user_page/img/pic_hoi_an1.jpg" alt="#"
										class="img-thumbnail">
								</div>
								<div class="col">
									<div class="row">
										<div class="col">
										<strong>KHÁCH SẠN MAKKE </strong>
										<a> <span> Vũng tàu</span>  </a> - <a> <span> Vũng tàu</span>  </a> - <span>Ưu điểm vị trí</span>
										</div>
										<div class="col">
										Chất lượng: 
										Số lượng đánh giá
										
										</div>
									</div>
									<div class="row">
										<div class="row">
										
										</div>
									</div>
									<a><h3>Hội An Department</h3></a> <a href="#">Hội An </a> <a
										href="#">Xem trên bản đồ </a>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>






	<!-- 
	<div class="container-fluid py-5">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7 mb-5 mb-lg-0">
					<p class="section-title pr-5">
						<span class="pr-2">Book A Seat</span>
					</p>
					<h1 class="mb-4">Book A Seat For Your Kid</h1>
					<p>Invidunt lorem justo sanctus clita. Erat lorem labore ea,
						justo dolor lorem ipsum ut sed eos, ipsum et dolor kasd sit ea
						justo. Erat justo sed sed diam. Ea et erat ut sed diam sea ipsum
						est dolor</p>
					<ul class="list-inline m-0">
						<li class="py-2"><i class="fa fa-check text-success mr-3"></i>Labore
							eos amet dolor amet diam</li>
						<li class="py-2"><i class="fa fa-check text-success mr-3"></i>Etsea
							et sit dolor amet ipsum</li>
						<li class="py-2"><i class="fa fa-check text-success mr-3"></i>Diam
							dolor diam elitripsum vero.</li>
					</ul>
					<a href="user_page/" class="btn btn-primary mt-4 py-2 px-4">Book
						Now</a>
				</div>
				<div class="col-lg-5">
					<div class="card border-0">
						<div class="card-header bg-secondary text-center p-4">
							<h1 class="text-white m-0">Book A Seat</h1>
						</div>
						<div class="card-body rounded-bottom bg-primary p-5">
							<form>
								<div class="form-group">
									<input type="text" class="form-control border-0 p-4"
										placeholder="Your Name" required="required" />
								</div>
								<div class="form-group">
									<input type="email" class="form-control border-0 p-4"
										placeholder="Your Email" required="required" />
								</div>
								<div class="form-group">
									<select class="custom-select border-0 px-4"
										style="height: 47px;">
										<option selected>Select A Class</option>
										<option value="1">Class 1</option>
										<option value="2">Class 1</option>
										<option value="3">Class 1</option>
									</select>
								</div>
								<div>
									<button class="btn btn-secondary btn-block border-0 py-3"
										type="submit">Book Now</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	-->
	<!-- 	
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<p class="section-title px-5">
					<span class="px-2">Our Teachers</span>
				</p>
				<h1 class="mb-4">Meet Our Teachers</h1>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 text-center team mb-5">
					<div class="position-relative overflow-hidden mb-4"
						style="border-radius: 100%;">
						<img class="img-fluid w-100" src="user_page/img/team-1.jpg" alt="">
						<div
							class="team-social d-flex align-items-center justify-content-center w-100 h-100 position-absolute">
							<a class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light text-center px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<h4>Julia Smith</h4>
					<i>Music Teacher</i>
				</div>
				<div class="col-md-6 col-lg-3 text-center team mb-5">
					<div class="position-relative overflow-hidden mb-4"
						style="border-radius: 100%;">
						<img class="img-fluid w-100" src="user_page/img/team-2.jpg" alt="">
						<div
							class="team-social d-flex align-items-center justify-content-center w-100 h-100 position-absolute">
							<a class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light text-center px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<h4>Jhon Doe</h4>
					<i>Language Teacher</i>
				</div>
				<div class="col-md-6 col-lg-3 text-center team mb-5">
					<div class="position-relative overflow-hidden mb-4"
						style="border-radius: 100%;">
						<img class="img-fluid w-100" src="user_page/img/team-3.jpg" alt="">
						<div
							class="team-social d-flex align-items-center justify-content-center w-100 h-100 position-absolute">
							<a class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light text-center px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<h4>Mollie Ross</h4>
					<i>Dance Teacher</i>
				</div>
				<div class="col-md-6 col-lg-3 text-center team mb-5">
					<div class="position-relative overflow-hidden mb-4"
						style="border-radius: 100%;">
						<img class="img-fluid w-100" src="user_page/img/team-4.jpg" alt="">
						<div
							class="team-social d-flex align-items-center justify-content-center w-100 h-100 position-absolute">
							<a class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light text-center px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<h4>Donald John</h4>
					<i>Art Teacher</i>
				</div>
			</div>
		</div>
	</div> -->
	<!--
	<div class="container-fluid py-5">
		<div class="container p-0">
			<div class="text-center pb-2">
				<p class="section-title px-5">
					<span class="px-2">Testimonial</span>
				</p>
				<h1 class="mb-4">What Parents Say!</h1>
			</div>
			<div class="owl-carousel testimonial-carousel">
				<div class="testimonial-item px-3">
					<div class="bg-light shadow-sm rounded mb-4 p-4">
						<h3 class="fas fa-quote-left text-primary mr-3"></h3>
						Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr
						eirmod clita lorem. Dolor tempor ipsum clita
					</div>
					<div class="d-flex align-items-center">
						<img class="rounded-circle" src="user_page/img/testimonial-1.jpg"
							style="width: 70px; height: 70px;" alt="Image">
						<div class="pl-3">
							<h5>Parent Name</h5>
							<i>Profession</i>
						</div>
					</div>
				</div>
				<div class="testimonial-item px-3">
					<div class="bg-light shadow-sm rounded mb-4 p-4">
						<h3 class="fas fa-quote-left text-primary mr-3"></h3>
						Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr
						eirmod clita lorem. Dolor tempor ipsum clita
					</div>
					<div class="d-flex align-items-center">
						<img class="rounded-circle" src="user_page/img/testimonial-2.jpg"
							style="width: 70px; height: 70px;" alt="Image">
						<div class="pl-3">
							<h5>Parent Name</h5>
							<i>Profession</i>
						</div>
					</div>
				</div>
				<div class="testimonial-item px-3">
					<div class="bg-light shadow-sm rounded mb-4 p-4">
						<h3 class="fas fa-quote-left text-primary mr-3"></h3>
						Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr
						eirmod clita lorem. Dolor tempor ipsum clita
					</div>
					<div class="d-flex align-items-center">
						<img class="rounded-circle" src="user_page/img/testimonial-3.jpg"
							style="width: 70px; height: 70px;" alt="Image">
						<div class="pl-3">
							<h5>Parent Name</h5>
							<i>Profession</i>
						</div>
					</div>
				</div>
				<div class="testimonial-item px-3">
					<div class="bg-light shadow-sm rounded mb-4 p-4">
						<h3 class="fas fa-quote-left text-primary mr-3"></h3>
						Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr
						eirmod clita lorem. Dolor tempor ipsum clita
					</div>
					<div class="d-flex align-items-center">
						<img class="rounded-circle" src="user_page/img/testimonial-4.jpg"
							style="width: 70px; height: 70px;" alt="Image">
						<div class="pl-3">
							<h5>Parent Name</h5>
							<i>Profession</i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	Testimonial End -->
	<!--
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<p class="section-title px-5">
					<span class="px-2">Latest Blog</span>
				</p>
				<h1 class="mb-4">Latest Articles From Blog</h1>
			</div>
			<div class="row pb-3">
				<div class="col-lg-4 mb-4">
					<div class="card border-0 shadow-sm mb-2">
						<img class="card-img-top mb-2" src="user_page/img/blog-1.jpg"
							alt="">
						<div class="card-body bg-light text-center p-4">
							<h4 class="">Diam amet eos at no eos</h4>
							<div class="d-flex justify-content-center mb-3">
								<small class="mr-3"><i class="fa fa-user text-primary"></i>
									Admin</small> <small class="mr-3"><i
									class="fa fa-folder text-primary"></i> Web Design</small> <small
									class="mr-3"><i class="fa fa-comments text-primary"></i>
									15</small>
							</div>
							<p>Sed kasd sea sed at elitr sed ipsum justo, sit nonumy diam
								eirmod, duo et sed sit eirmod kasd clita tempor dolor stet
								lorem. Tempor ipsum justo amet stet...</p>
							<a href="user_page/" class="btn btn-primary px-4 mx-auto my-2">Read
								More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-4">
					<div class="card border-0 shadow-sm mb-2">
						<img class="card-img-top mb-2" src="user_page/img/blog-2.jpg"
							alt="">
						<div class="card-body bg-light text-center p-4">
							<h4 class="">Diam amet eos at no eos</h4>
							<div class="d-flex justify-content-center mb-3">
								<small class="mr-3"><i class="fa fa-user text-primary"></i>
									Admin</small> <small class="mr-3"><i
									class="fa fa-folder text-primary"></i> Web Design</small> <small
									class="mr-3"><i class="fa fa-comments text-primary"></i>
									15</small>
							</div>
							<p>Sed kasd sea sed at elitr sed ipsum justo, sit nonumy diam
								eirmod, duo et sed sit eirmod kasd clita tempor dolor stet
								lorem. Tempor ipsum justo amet stet...</p>
							<a href="user_page/" class="btn btn-primary px-4 mx-auto my-2">Read
								More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-4">
					<div class="card border-0 shadow-sm mb-2">
						<img class="card-img-top mb-2" src="user_page/img/blog-3.jpg"
							alt="">
						<div class="card-body bg-light text-center p-4">
							<h4 class="">Diam amet eos at no eos</h4>
							<div class="d-flex justify-content-center mb-3">
								<small class="mr-3"><i class="fa fa-user text-primary"></i>
									Admin</small> <small class="mr-3"><i
									class="fa fa-folder text-primary"></i> Web Design</small> <small
									class="mr-3"><i class="fa fa-comments text-primary"></i>
									15</small>
							</div>
							<p>Sed kasd sea sed at elitr sed ipsum justo, sit nonumy diam
								eirmod, duo et sed sit eirmod kasd clita tempor dolor stet
								lorem. Tempor ipsum justo amet stet...</p>
							<a href="user_page/" class="btn btn-primary px-4 mx-auto my-2">Read
								More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	Blog End -->
	<%@include file="footer.jsp"%>
</body>

</html>