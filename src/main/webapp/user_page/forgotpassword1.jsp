<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Quên mật khẩu</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:include page="link.jsp"/>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    
</head>
<body>
<!-- Header -->
<jsp:include page="header.jsp"/>

<

<div class="limiter">

    <div class="container-login100" style="background-image: url('images/login.jpg');">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <form class="login100-form validate-form">
                    <span class="login100-form-title p-b-49">
                        Quên mật khẩu
                    </span>

                <div class="wrap-input100 validate-input m-b-23" data-validate="Không được bỏ trống">
                    <span class="label-input100">Mật khẩu mới</span>
                    <input class="input100" type="text" name="username" placeholder="Email">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>
                <div class="wrap-input100 validate-input m-b-23" data-validate="Không được bỏ trống">
                    <span class="label-input100">Nhập lại mật khẩu</span>
                    <input class="input100" type="text" name="username" placeholder="Email">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>
                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">
                            <a href="./contact.jsp" style="color: #fff">Đăng nhập</a>
                        </button>
                    </div>
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