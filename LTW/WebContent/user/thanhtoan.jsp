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



	<div class="container"
		style="padding-left: 20%; /* padding: 7%; */ padding-right: 7%; padding-left: 7%;">
		<h2 class="section-title"
			style="margin-bottom: 20px; margin-top: 20px;">
			<fmt:message key="thanhToan" />
		</h2>
		<form action="thanh-toan" method="post">
			<div class="main-container">

				<div class="address-modal__form_input">
					<div class="input-with-status">
						<div class="input-with-status__wrapper">
							<label><fmt:message key="tenKhachHang" />:</label> <input
								style="width: 982px" type="text" maxlength="64" name="name"
								value="${user.user_fullname }">
						</div>
					</div>
				</div>

				<div class="address-modal__form_input">
					<div class="input-with-status">
						<div class="input-with-status__wrapper">
							<label><fmt:message key="sdt" />:</label> <input
								style="width: 982px" type="text" placeholder="Số điện thoại"
								name="phone" value="${user.phone }">
						</div>
					</div>
				</div>

				<div class="address-modal__form_input">
					<div class="input-with-status">
						<div class="input-with-status__wrapper">
							<label><fmt:message key="email" />:</label> <input
								style="width: 982px" type="email" placeholder="Địa chỉ email"
								name="email" value="${user.email }">
						</div>
					</div>
				</div>


				<div class="address-modal__form_input">
					<div class="input-with-status">
						<div class="input-with-status__wrapper">
							<label><fmt:message key="diaChi" />:</label> <input
								style="width: 982px" type="text"
								placeholder="Toà nhà, Tên Đường..." maxlength="128"
								name="address" value="${user.address }">
						</div>
					</div>
				</div>

			</div>

			<!-- End slider area -->
			<div class="checkout-product-ordered-list">
				<div class="checkout-product-ordered-list__header-block">
					<div class="checkout-product-ordered-list__headers">
						<div
							class="checkout-product-ordered-list__header checkout-product-ordered-list__header--product">
							<div class="checkout-product-ordered-list__title">
								<fmt:message key="tenSanPham" />
							</div>
						</div>
						<div
							class="checkout-product-ordered-list__header checkout-product-ordered-list__header--variation"></div>
						<div class="checkout-product-ordered-list__header">
							<fmt:message key="soluong" />
						</div>
						<div
							class="checkout-product-ordered-list__header checkout-product-ordered-list__header--subtotal"><fmt:message key="thanhTien"/>
							</div>
					</div>
				</div>
				<div class="checkout-product-ordered-list__content">
					<div class="checkout-shop-order-group">
						<div class="checkout-shop-order-group__orders">
							<div class="checkout-product-ordered-list-item">
								<div class="checkout-product-ordered-list-item-shop-info"></div>

								<div class="checkout-product-ordered-list-item__items">
									<c:set var="total" value="${0}" />
									<c:forEach items="${listPhone}" var="phone">
										<c:set var="total" value="${total +phone.price}" />
										<div
											class="checkout-product-ordered-list-item__item checkout-product-ordered-list-item__item--non-add-on">
											<div
												class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--product">
												<img
													class="checkout-product-ordered-list-item__product-image"
													src="${phone.url_img}" width="40" height="40"> <span
													class="checkout-product-ordered-list-item__product-info">
													<span
													class="checkout-product-ordered-list-item__product-name">${phone.name }</span>
												</span>
											</div>

											<div
												class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--variation"></div>
											<div class="checkout-product-ordered-list-item__header">1</div>
											<div
												class="checkout-product-ordered-list-item__header  checkout-product-ordered-list-item__header--subtotal">
												<fmt:formatNumber type="number" maxFractionDigits="0"
													value="${phone.price}" />
											</div>
										</div>
									</c:forEach>

								</div>
							</div>
						</div>



						<div class="_1pkbuI">
							<div class="_1wd2xT"><fmt:message key="tongSoTien"/></div>
							<div class="ZwtlWT">
								<fmt:formatNumber type="number" maxFractionDigits="0"
									value="${total}" />
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- phuongthuc -->
			<div class="_1nqViI _3Rq9ya">

				<input type="submit" value="<fmt:message key="thanhToan"/>">
				<p>${error }
			</div>

			<!-- phuongthuc -->
		</form>
	</div>
</body>
</html>