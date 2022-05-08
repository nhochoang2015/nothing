<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<style>
.tabs{
  background-color:#f5f5f5;
  padding-top:30px;
  padding-bottom:30px;
}

.tabs .tab-pane{
  margin-left:20px;
}

.tabs h3{
  font-size:20px;
  margin-top:10px;
  margin-bottom:60px;
}

.tabs p{
  font-size:14px;
}

.tabs a{
  font-size:15px;
  font-family:OpenSans,sans-serif;
  font-weight:700;
  color:#fff;
  padding:30px;
}

.tabs li{
  background-color:#333;
  margin-top:1px;
  text-align:center;
  height:110px;
  width:110px;
  padding-top:45px;
  -webkit-border-radius:3px;
  border-radius:3px;
}

.tabs li.active{
  background-color:#ff8b38;
}

</style>


</head>
<body>
 	<%@include file="header.jsp"%>
<div class="tabs">
		<div class="container">
			<div class="row">
				<div class="col-xl-2">
					<ul class="nav nav-pills nav-stacked flex-column">
						<li class="active"><a href="#tab_a" data-toggle="pill">Nhiệm vụ ngày</a></li>
						<li ><a href="#tab_b" data-toggle="pill">Nhiệm vụ tuần</a></li>
						<li><a href="#tab_c" data-toggle="pill">Nhiệm vụ tháng</a></li>
					</ul>
				</div>
				<div class="col-xl-6">
					<div class="tab-content">
						<div class="tab-pane active" id="tab_a">
							<h3>Nhiệm vụ ngày</h3>
							<p>1. Hoàn thành nhiệm vụ học 5 bài</p>
							<p>2. Làm bài tập "Phép cộng có nhớ trong phạm vi 100"</p>
							
						</div>
						<div class="tab-pane" id="tab_b">
							<h3>Nhiệm vụ tuần</h3>
							<p>1. Hoàn thành nhiệm vụ học 5 bài</p>
							<p>2. Làm bài tập "Phép cộng có nhớ trong phạm vi 100"</p>
						</div>
						<div class="tab-pane" id="tab_c">
							<h3>Nhiệm vụ tháng</h3>
							<p>1. Hoàn thành nhiệm vụ học 5 bài</p>
							<p>2. Làm bài tập "Phép cộng có nhớ trong phạm vi 100"</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<button type="submit" class="btn btn-primary">Thoát</button>
	
	<script type="text/javascript">
	$(function() {
		var $a = $(".tabs li");
		$a.click(function() {
			$a.removeClass("active");
			$(this).addClass("active");
		});
	});
</script>
	<%@include file="footer.jsp"%>
	
</body>
</html>