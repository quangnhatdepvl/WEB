<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ustora Demo</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/login.css">

<!-- jsp5 shim and Respond.js for IE8 support of jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8" style="float: right;">
					<div class="user-menu">
						<ul style="float: right;">
							<li><a href="index.jsp	"><i class="fa fa-user"></i>
									Home</a></li>
							<li><a href="cart.jsp"><i class="fa fa-user"></i> My
									Cart</a></li>
									<li style="background-color: #ffce93;"><a href="login.jsp"><i
									class="fa fa-user"></i> Login</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="header-right">
						<ul class="list-unstyled list-inline">
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->

	<div class="site-branding-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="logo">
						<h1>
							<a href="index.jsp"><img src="img/logo.png"></a>
						</h1>
					</div>
				</div>


			</div>
		</div>
	</div>
	<!-- End site branding area -->

	<div class="mainmenu-area">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class=""><a href="index.jsp">Home</a></li>
						<a href="nokia.jsp"><img src="img/brand1.png" alt="a"
							class="product-thumb"></a>
						<a href="samsung.jsp"><img src="img/brand3.png" alt=""
							class="product-thumb"></a>
						<a href="apple.jsp"><img src="img/brand4.png" alt=""
							class="product-thumb"></a>
						<a href="htc.jsp"><img src="img/brand5.png" alt=""
							class="product-thumb"></a>
						<a href="lg.jsp"><img src="img/brand6.png" alt=""
							class="product-thumb"></a>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->
	<img src="img/dienthoai.jpg" style="width: 43%;">
	<img src="img/anh.jpg"
		style="position: relative; left: -172px; top: 2px; width: 29%">
	<form action="RegisterController" method="post">
		<div class="loginbox">
			<div style="padding-top: 30%;">
				<br>
				<h2 style="color: black;">Đăng ký nhanh</h2>
				<br> <input type="text" name="username"
					class="form-control border border-success"
					placeholder="Tên đăng nhập" autofocus="true "
					style="width: 250px; hight: 30px; border: 2px solid black;">
				<br> <input type="password" name="password"
					class="form-control border border-success" placeholder="Mật khẩu"
					autofocus="true"
					style="width: 250px; hight: 30px; border: 2px solid black;">
				<br> <input type="password" name="confirm"
					class="form-control border border-success"
					placeholder="Nhập lại mật khẩu" autofocus="true"
					style="width: 250px; hight: 30px; border: 2px solid black;">
				<br>

			</div>
			<input type="submit" class="btn10"
				style="width: 200px; height: 50px; color: white; background-color: #ffce93;">Đăng
			ký</input> <br>

			<h6 style="color: red">${error }</h6>
		</div>
	</form>
	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="js/main.js"></script>

	<!-- Slider -->
	<script type="text/javascript" src="js/bxslider.min.js"></script>
	<script type="text/javascript" src="js/script.slider.js"></script>
</body>
</html>