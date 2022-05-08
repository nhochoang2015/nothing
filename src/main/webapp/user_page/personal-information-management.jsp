<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

input[type=submit] {
	background-color: #04AA6D;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}

.container-image {
	position: relative;
	width: 50%;
	max-width: 300px;
}

.image {
	display: block;
	width: 100%;
	height: auto;
}

.overlay {
	position: absolute;
	bottom: 0;
	background: rgb(0, 0, 0);
	background: rgba(0, 0, 0, 0.5); /* Black see-through */
	color: #f1f1f1;
	width: 100%;
	transition: .5s ease;
	opacity: 0;
	color: white;
	font-size: 20px;
	padding: 20px;
	text-align: center;
}

.container:hover .overlay {
	opacity: 1;
}
</style>


</head>
<body>

<%@include file="header.jsp"%>

	<h2>Chỉnh sửa thông tin cá nhân</h2>

	<div class="container">
		<form action="/action_page.php">

			<div class="row">
				<div class="col-25">
					<label for="fname">Ảnh đại diện</label>
				</div>
				<div class="col-75">
					<div class="container-image">
					<img src="user_page/img/img_avatar.png" alt="Avatar" class="image">
					<div class="overlay">My Name is John</div>
				</div>
				</div>
				
			</div>

			<!--  <div class="row">
      <div class="col-25">
        <label for="fname">Ảnh đại diện</label>
      </div>
      <div class="col-75">
        <img src="user_page/img/img_avatar.png" alt="Avatar" class="image">
  	<div class="overlay">My Name is John</div>
      </div>
    </div> -->

			<div class="row">
				<div class="col-25">
					<label for="fname">Tên tài khoản</label>
				</div>
				<div class="col-75">
					<input type="text" id="fname" name="firstname"
						placeholder="Your name..">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">Tên người dùng</label>
				</div>
				<div class="col-75">
					<input type="text" id="lname" name="lastname"
						placeholder="Your last name..">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="country">Số điện thoại</label>
				</div>
				<div class="col-75">
					<input type="text" id="lname" name="lastname"
						placeholder="Your last name..">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">Email</label>
				</div>
				<div class="col-75">
					<input type="text" id="lname" name="lastname"
						placeholder="Your last name..">
				</div>
			</div>

			<button type="submit" class="btn btn-primary">Lưu</button>
			&emsp;
			<button type="submit" class="btn btn-primary">Thoát</button>

		</form>
	</div>
	
	 <%@include file="footer.jsp"%>

</body>
</html>
