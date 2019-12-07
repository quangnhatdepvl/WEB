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
<link rel="stylesheet" href="user/csss/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="user/csss/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="user/csss/owl.carousel.css">
<link rel="stylesheet" href="user/csss/style.css">
<link rel="stylesheet" href="user/csss/responsive.css">
<link rel="stylesheet" href="user/csss/login.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- jsp5 shim and Respond.js for IE8 support of jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>


<body>
	<c:url value="danh-sach-san-pham" var="nokia" scope="request">
		<c:param name="model" value="nokia" />
	</c:url>
	<c:url value="danh-sach-san-pham" var="samsung" scope="request">
		<c:param name="model" value="samsung" />
	</c:url>
	<c:url value="danh-sach-san-pham" var="apple" scope="request">
		<c:param name="model" value="apple" />
	</c:url>
	<c:url value="danh-sach-san-pham" var="htc" scope="request">
		<c:param name="model" value="htc" />
	</c:url>
	<c:url value="danh-sach-san-pham" var="lg" scope="request">
		<c:param name="model" value="lg" />
	</c:url>

	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8" style="float: right;">
					<div class="user-menu">
						<ul style="float: right;">
							<li><a href="${pageContext.request.contextPath }/trang-chu"><i
									class="fa fa-user"></i> Home</a></li>
							<li><a href="cart.jsp"><i class="fa fa-user"></i> My
									Cart</a></li>
							<c:choose>
								<c:when test="${username == null }">
									<li><a
										href="${pageContext.request.contextPath }/dang-nhap"><i
											class="fa fa-user"></i> Login</a></li>
								</c:when>
								<c:otherwise>
									<li><div class="w3-container">
											<div class="w3-dropdown-hover">
												<button class="w3-button">
													<i class="fa fa-user"></i> ${username }
												</button>
												<div class="w3-dropdown-content w3-bar-block w3-border">
													<a href="#" class="w3-bar-item w3-button">Cài đặt tài
														khoản </a> <a
														href="${pageContext.request.contextPath }/dang-xuat"
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
							<a href="./"><img src="user/img/logo.png"></a>
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

						<li class=""><a href="trang-chu"
							style="font-family: sans-serif; font-size: 15px; padding-left: 48px; padding-right: 48px;"><b>Home<b></b></b></a></li>
						<a href="${nokia }"><img src="user/img/brand1.png" alt="a"
							class="product-thumb"></a>
						<a href="${samsung }"><img src="user/img/brand3.png" alt=""
							class="product-thumb"></a>
						<a href="${apple }"><img src="user/img/brand4.png" alt=""
							class="product-thumb"></a>
						<a href="${htc }"><img src="user/img/brand5.png" alt=""
							class="product-thumb"></a>
						<a href="${lg }"><img src="user/img/brand6.png" alt=""
							class="product-thumb"></a>




					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->

</body>
</html>