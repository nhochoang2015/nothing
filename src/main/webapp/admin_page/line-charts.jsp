<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>Line Charts | jeweler - Material Admin Template</title>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="admin_page/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<%@ include file="menu-bar.jsp"%>

	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>

		<!-- Charts Start-->
		<div class="charts-area mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro responsive-mg-b-30">
							<div class="alert-title">
								<h2>Basic Line Chart</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="basic-chart">
								<canvas id="basiclinechart"></canvas>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro">
							<div class="alert-title">
								<h2>Line Chart Multi Axis</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="axis-chart">
								<canvas id="linechartmultiaxis"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro mg-tb-30">
							<div class="alert-title">
								<h2>Line Chart Stepped</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="stepped-chart">
								<canvas id="linechartstepped"></canvas>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro mg-tb-30">
							<div class="alert-title">
								<h2>Line Chart Interpolation</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="polation-chart">
								<canvas id="linechartinterpolation"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro responsive-mg-b-30">
							<div class="alert-title">
								<h2>Chart Line styles</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="styles-chart">
								<canvas id="linechartstyles"></canvas>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro">
							<div class="alert-title">
								<h2>Chart Line point circle</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="circle-chart">
								<canvas id="linechartpointcircle"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro mg-t-30">
							<div class="alert-title">
								<h2>Chart Line Point rectRot</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="rectRot-chart">
								<canvas id="linechartpointrectRot"></canvas>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro mg-t-30">
							<div class="alert-title">
								<h2>Chart Line point cross</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="cross-chart">
								<canvas id="linechartpointcross"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Charts End-->
		<%@ include file="footer.jsp"%>

	</div>


</body>

</html>