<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:include page="link.jsp"/>
    <link rel="stylesheet" type="text/css" href="user_page/lib/lightbox/css/login.css">

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
<!-- Header -->
<jsp:include page="header.jsp"/>



<div class="limiter">

    <div class="container-login100" style="background-image: url('images/login.jpg'); padding-top: 90px">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <form class="login100-form validate-form" action="/login" method="POST" >
                    <span class="login100-form-title p-b-49">
                        Đăng nhập
                    </span>

                <div class="wrap-input100 validate-input m-b-23" data-validate="Không được bỏ trống">
                    <span class="label-input100">Tên đăng nhập</span>
                    <input class="input100" type="text" id="username" name="username" placeholder="Nhập tên đăng nhập của bạn">
                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Không được bỏ trống">
                    <span class="label-input100">Mật khẩu</span>
                    <input class="input100" type="password" id="pass" name="pass" placeholder="Nhập mật khẩu của bạn">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>

                <div class="text-right p-t-8 p-b-31">
                    <a href="forgotpassword.jsp">
                        Quên mật khẩu?
                    </a>
                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">
                            Đăng nhập
                        </button>
                    </div>
                </div>

                <div class="txt1 text-center p-t-54 p-b-20">
                        <span>
                            Đăng nhập bằng
                        </span>
                </div>

                <div class="flex-c-m">
                    <a href="#" class="login100-social-item bg1" id="facebook">
                        <i class="fa fa-facebook"></i>
                    </a>

                    <a href="#" class="login100-social-item bg2" id="twit">
                        <i class="fa fa-twitter"></i>
                    </a>

                    <a href="#" class="login100-social-item bg3">
                        <i class="fa fa-google"></i>
                    </a>
                </div>

                <div class="flex-col-c p-t-155">
                        <span class="txt1 p-b-17">
                            Chưa có tài khoản?
                        </span>

                    <a href="signup.jsp" class="txt2">
                        Đăng ký
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<!-- Back to top -->
<div class="btn-back-to-top" id="myBtn">
        <span class="symbol-btn-back-to-top">
            <i class="zmdi zmdi-chevron-up"></i>
        </span>
</div>

<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>







</body>
</html>