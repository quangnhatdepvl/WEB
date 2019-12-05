<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/login.css">
</head>
<body>


	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8" style="float: right;">
					<div class="user-menu">
						<ul style="float: right;">
							<li><a href="index.jsp	"><i class="fa fa-user"></i> Home</a></li>
							<li><a href="cart.jsp"><i class="fa fa-user"></i> My
									Cart</a></li>
							<c:choose>
								<c:when test="${username == null }">
									<li><a href="login.jsp"><i class="fa fa-user"></i>
											Login</a></li>
								</c:when>
								<c:otherwise>
									<li><div class="w3-container">
											<div class="w3-dropdown-hover">
												<button class="w3-button">
													<i class="fa fa-user"></i> ${username }
												</button>
												<div class="w3-dropdown-content w3-bar-block w3-border">
													<a href="#" class="w3-bar-item w3-button">Cài đặt tài khoản </a>
														 <a href="LogoutController"
														class="w3-bar-item w3-button">Đăng xuất</a>

												</div>
											</div>
										</div></li>
								</c:otherwise>
							</c:choose>
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

				<c:url value="ListPhoneController" var="nokia">
					<c:param name="model" value="nokia" />
				</c:url>
				<c:url value="ListPhoneController" var="samsung">
					<c:param name="model" value="samsung" />
				</c:url>
				<c:url value="ListPhoneController" var="apple">
					<c:param name="model" value="apple" />
				</c:url>
				<c:url value="ListPhoneController" var="htc">
					<c:param name="model" value="htc" />
				</c:url>
				<c:url value="ListPhoneController" var="lg">
					<c:param name="model" value="lg" />
				</c:url>


				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class=""><a href="index.jsp"
							style="font-family: sans-serif; font-size: 15px; padding-left: 48px; padding-right: 48px;"><b>Home</b></a>
						</li>
						<li class=""><a href="${nokia}"><img
								src="img/brand1.png" alt="a" class="product-thumb"></a></li>
						<li class=""><a href="${samsung}"><img
								src="img/brand3.png" alt="" class="product-thumb"></a></li>
						<li class=""><a href="${apple}"><img
								src="img/brand4.png" alt="" class="product-thumb"></a></li>
						<li class=""><a href="${htc}"><img
								src="img/brand5.png" alt="" class="product-thumb"></a></li>
						<li class=""><a href="${lg}"><img
								src="img/brand6.png" alt="" class="product-thumb"></a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>