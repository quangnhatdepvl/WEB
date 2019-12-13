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
	<!-- End header area -->
	<div class="container"
		style="padding-left: 20%; /* padding: 7%; */ padding-right: 7%; padding-left: 7%;">
		<h2 class="section-title"
			style="margin-bottom: 20px; margin-top: 20px;">Thanh toán</h2>
		<div class="main-container">

			<div class="address-modal__form_input">
				<div class="input-with-status">
					<div class="input-with-status__wrapper">
						<input class="input-with-status__input" type="text"
							placeholder="Tên" maxlength="64" value="">
					</div>
				</div>
			</div>

			<div class="address-modal__form_input">
				<div class="input-with-status">
					<div class="input-with-status__wrapper">
						<input class="input-with-status__input" type="text"
							placeholder="Số điện thoại" value="">
					</div>
				</div>
			</div>

			<select
				style="width: 100%; height: 48px; padding-left: 20px; border: 1px solid #ccc; color: #8b758b;">
				<option value="tp">An Giang</option>
				<option value="tp">Bà Rịa - Vũng Tàu</option>
				<option value="tp">Bắc Kạn</option>
				<option value="tp">Bắc Giang</option>
				<option value="tp">Bạc Liêu</option>
				<option value="tp">Bắc Ninh</option>
				<option value="tp">Bến Tre</option>
				<option value="tp">Bình Dương</option>
				<option value="tp">Bình Định</option>
				<option value="tp">Bình Phước</option>
				<option value="tp">Bình Thuận</option>
				<option value="tp">Cà Mau</option>
				<option value="tp">Cần Thơ</option>
				<option value="tp">Cao Bằng</option>
				<option value="tp">Đà Nẵng</option>
				<option value="tp">Đắk Lắk</option>
				<option value="tp">Đắk Nông</option>
				<option value="tp">Điện Biên</option>
				<option value="tp">Đồng Nai</option>
				<option value="tp">Đồng Tháp</option>
				<option value="tp">Gia Lai</option>
				<option value="tp">Hà Giang</option>
				<option value="tp">Hà Nam</option>
				<option value="tp">Hà Nội</option>
				<option value="tp">Hà Tĩnh</option>
				<option value="tp">Hải Dương</option>
				<option value="tp">Hải Phòng</option>
				<option value="tp">Hậu Giang</option>
				<option value="tp">TP. Hồ Chí Minh</option>
				<option value="tp">Hòa Bình</option>
				<option value="tp">Hưng Yên</option>
				<option value="tp">Khánh Hòa</option>
				<option value="tp">Kiên Giang</option>
				<option value="tp">Kon Tum</option>
				<option value="tp">Lai Châu</option>
				<option value="tp">Lâm Đồng</option>
				<option value="tp">Lạng Sơn</option>
				<option value="tp">Lào Cai</option>
				<option value="tp">Long An</option>
				<option value="tp">Nam Định</option>
				<option value="tp">Nghệ An</option>
				<option value="tp">Ninh Bình</option>
				<option value="tp">Ninh Thuận</option>
				<option value="tp">Phú Thọ</option>
				<option value="tp">Phú Yên</option>
				<option value="tp">Quảng Bình</option>
				<option value="tp">Quảng Nam</option>
				<option value="tp">Quảng Ngãi</option>
				<option value="tp">Quảng Ninh</option>
				<option value="tp">Quảng Trị</option>
				<option value="tp">Sóc Trăng</option>
				<option value="tp">Sơn La</option>
				<option value="tp">Tây Ninh</option>
				<option value="tp">Thái Bình</option>
				<option value="tp">Thái Nguyên</option>
				<option value="tp">Thanh Hóa</option>
				<option value="tp">Thừa Thiên Huế</option>
				<option value="tp">Tiền Giang</option>
				<option value="tp">Trà Vinh</option>
				<option value="tp">Tuyên Quang</option>
				<option value="tp">Vĩnh Long</option>
				<option value="tp">Vĩnh Phúc</option>
				<option value="tp">Yên Bái</option>
			</select>
			<div class="address-modal__form_input">
				<div class="input-with-status">
					<div class="input-with-status__wrapper">
						<input class="input-with-status__input" type="text"
							placeholder="Toà nhà, Tên Đường..." maxlength="128" value="">
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
						<div class="checkout-product-ordered-list__title">Sản phẩm</div>
					</div>
					<div
						class="checkout-product-ordered-list__header checkout-product-ordered-list__header--variation"></div>
					<div class="checkout-product-ordered-list__header">Số lượng</div>
					<div
						class="checkout-product-ordered-list__header checkout-product-ordered-list__header--subtotal">Thành
						tiền</div>
				</div>
			</div>
			<div class="checkout-product-ordered-list__content">
				<div class="checkout-shop-order-group">
					<div class="checkout-shop-order-group__orders">
						<div class="checkout-product-ordered-list-item">
							<div class="checkout-product-ordered-list-item-shop-info"></div>
							<div class="checkout-product-ordered-list-item__items">
								<div
									class="checkout-product-ordered-list-item__item checkout-product-ordered-list-item__item--non-add-on">
									<div
										class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--product">
										<img class="checkout-product-ordered-list-item__product-image"
											src="https://cf.shopee.vn/file/63595fad5b62870a24e56d9f6483ebe4_tn"
											width="40" height="40"> <span
											class="checkout-product-ordered-list-item__product-info">
											<span
											class="checkout-product-ordered-list-item__product-name">Ổ
												cứng SSD 128GB Colorful SL300 chính hãng NWH Phân phối</span>
										</span>
									</div>
									<div
										class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--variation"></div>
									<div class="checkout-product-ordered-list-item__header">1</div>
									<div
										class="checkout-product-ordered-list-item__header  checkout-product-ordered-list-item__header--subtotal">₫383.000</div>
								</div>
							</div>
						</div>
					</div>
					<div class="_1pkbuI">
						<div class="_1wd2xT">Tổng số tiền (1 sản phẩm):</div>
						<div class="ZwtlWT">₫415.100</div>
					</div>
				</div>
			</div>
		</div>
		<!-- phuongthuc -->
		<div class="_1nqViI _3Rq9ya">
			<button
				class="stardust-button stardust-button--primary stardust-button--large _1rgnQx">Đặt
				hàng</button>
		</div>

		<!-- phuongthuc -->

	</div>
</body>
</html>