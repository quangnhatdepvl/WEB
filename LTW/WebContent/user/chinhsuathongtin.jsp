<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="user/css/owl.carousel.css">
<link rel="stylesheet" href="user/css/style.css">
<link rel="stylesheet" href="user/css/responsive.css">
<link rel="stylesheet" href="user/css/login.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>

<body>
	<fmt:setLocale value="${locale }" />

	<fmt:setBundle basename="language/messages" />
	<jsp:include page="header.jsp" />
	<br>
	<div class="right" style="width: 70%; margin: auto;">

		<div class="col-md-12">



			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title"><fmt:message key="thayDoiThongTin" /></h3>
				</div>
				<div class="panel-body">
					<div class="bao">

						<div class="bao1">
							<form action="sua-thong-tin" method="post">
								<div class="form-group">
									<label class="col-sm-3 control-label"><fmt:message key="tenCuaBan" />: </label>
									<div class="col-sm-9">
										<input type="text" class="form-control"
											placeholder="Tên của bạn" name="name" value="${user.customer.name }">
									</div>
								
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><fmt:message key="sdt" />: </label>
									<div class="col-sm-9">
										<input type="text" class="form-control"
											placeholder="Số điện thoại" name="phone" value="${user.customer.phone }">
									</div>
									<div class="clear"></div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label"><fmt:message key="email" />: </label>
									<div class="col-sm-9">
										<input type="email" class="form-control"
											placeholder="Nhập email" name="email" value="${user.customer.email }">
									</div>
									<div class="clear"></div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><fmt:message key="diaChi" />: </label>
									<div class="col-sm-9">
										<input type="text" class="form-control"
											placeholder="Nhập địa chỉ nhà bạn" name="address" value="${user.customer.address }">
									</div>
									<div class="clear"></div>
								</div>

								<div class="form-group">
									<input class="btn btn-success" name="btn" type="submit"
										value="<fmt:message key="capNhat" />">
								</div>
								<p>${error}</p>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>


	</div>
</body>
</html>