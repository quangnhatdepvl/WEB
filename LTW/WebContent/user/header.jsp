<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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


	<c:url value="language" var="english" scope="request">
		<c:param name="choose" value="en" />
	</c:url>
	<c:url value="language" var="vietnam" scope="request">
		<c:param name="choose" value="vi" />
	</c:url>

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
	<fmt:setLocale value="${locale }" />

	<fmt:setBundle basename="language/messages" />
	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="logo" style="margin-bottom: -36px">
					<a href="${english }"> <img
						src="user/img/en.png" height="25" style="padding: 0px 0px">
					</a>
					 <a  href="${vietnam }" title="Vietnamese"> <img
						src="user/img/vi.png" height="25" style="padding: 0px 0px">
					</a>
					<form action="#" height="25"
						style="padding: -16px 0px; margin-top: -39px;">
						<input type="text" placeholder="Nhập tên sản phẩm..."
							style="width: 30%; margin-left: 108px; height: 5%"> <input
							type="submit" value="Search">
					</form>
				</div>
				<div class="col-md-8" style="float: right; margin-top: -18">
					<div class="user-menu">
						<ul style="float: right;">
							<li><a href="${pageContext.request.contextPath }/trang-chu"><i
									class="fa fa-user"></i> Home</a></li>

							<c:choose>
								<c:when test="${user.user_name == null }">
									<li><a
										href="${pageContext.request.contextPath }/dang-nhap"><i
											class="fa fa-user"></i><fmt:message key="login" /></a></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="${pageContext.request.contextPath }/shopping-cart"><i
											class="fa fa-user"></i> My Cart</a></li>
									<li><div class="w3-container">
											<div class="w3-dropdown-hover">
												<button class="w3-button">
													<i class="fa fa-user"></i> ${user.user_name }
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

						<a href="trang-chu"><img src="user/img/logo2.png" alt="a"
							class="product-thumb"></a>
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