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

	<div class="row">
		<div class="col">
			<form class="needs-validation" novalidate>
				<div class="form-row">
					<div class="col-md-9 mb-3" style="margin: auto">
						<label for="validationCustom01">Tên chỗ nghỉ, điểm đến: </label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fa-solid fa-magnifying-glass"></i> </span>
							</div>
							<input type="text" class="form-control" id="validationCustom01"
								placeholder="nhập địa điểm" required>
						</div>
						<div class="valid-feedback">Hoàn thành!</div>
					</div>
				</div>
				<div class="col">
					<div class="col-md-9 mb-3" style="margin: auto">
						<label for="validationCustom03">Ngày nhận phòng:</label> <input
							type="date" class="form-control" id="validationCustom03"
							placeholder="City" value="">
						<div class="invalid-feedback">Vui lòng nhập ngày nhận phòng.</div>
					</div>
					<div class="col">
						<div class="col-md-9 mb-3" style="margin: auto">
							<label for="validationCustom04">Ngày trả phòng:</label> <input
								type="date" class="form-control" id="validationCustom04"
								placeholder="State" required>
							<div class="invalid-feedback">Vui lòng nhập ngày trả phòng.</div>
						</div>
					</div>
					<div class="col">
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
													+ x + ' - Số Phòng: ' + y;
										}
									</script>
								</div>
							</div>



						</div>

					</div>

				</div>

				<button class="btn btn-primary" type="submit">Tìm</button>
			</form>
		</div>
		<div class="col"></div>
	</div>

	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>

	<%@include file="footer.jsp"%>
</body>

</html>