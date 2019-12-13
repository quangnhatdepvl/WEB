<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" href="user/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="user/css/font-awesome.min.css">

<!-- Custom CSS -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="user/css/index.css">
<link rel="stylesheet" href="user/css/owl.carousel.css">
<link rel="stylesheet" href="user/css/style.css">
<link rel="stylesheet" href="user/css/responsive.css">
<link rel="stylesheet" href="user/css/login.css">


<!-- jsp5 shim and Respond.js for IE8 support of jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<fmt:setLocale value="${locale }" />

	<fmt:setBundle basename="language/messages" />
	<jsp:include page="header.jsp" />

	<c:url value="dang-ky" var="dangKy" />
	<!-- End header area -->
	<img src="user/img/dienthoai.jpg" style="width: 43%;">
	<img src="user/img/anh.jpg"
		style="position: relative; left: -172px; top: 2px; width: 29%">

	<form action="dang-nhap" method="post">
		<div class="loginbox">
			<div style="padding-top: 30%;">
				<br>
				<h2 style="color: black;"><fmt:message key="dangNhap"/></h2>
				<br> <input type="text" name="username"
					class="form-control border border-success"
					placeholder="<fmt:message key="label.userName"/>" autofocus="true "
					style="width: 250px; hight: 30px; border: 2px solid black;">
				<br> <input type="password" name="password"
					class="form-control border border-success" placeholder="<fmt:message key="label.passWord"/>"
					autofocus="true"
					style="width: 250px; hight: 30px; border: 2px solid black;">
				<br> <input type="submit" class="btn10" value="<fmt:message key="dangNhap"/>"
					style="width: 250px; height: 50px; color: white; background-color: #ffce93;"></input>
			</div>

			<br> <a href="forgot.jsp"><b><fmt:message key="label.forgot"/></b></a> <a
				href="${dangKy }"><b><fmt:message key="label.regis"/></b></a>
				</div>
	</form>
	<h6 style="color: red">${error }</h6>
	

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="user/js/owl.carousel.min.js"></script>
	<script src="user/js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="user/js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="user/js/main.js"></script>

	<!-- Slider -->
	<script type="text/javascript" src="user/js/bxslider.min.js"></script>
	<script type="text/javascript" src="user/js/script.slider.js"></script>
</body>
</html>