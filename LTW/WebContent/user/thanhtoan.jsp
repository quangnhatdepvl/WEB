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

	<jsp:include page="header.jsp" />
	<!-- End header area -->

	<div class="container"
		style="padding-left: 20%; /* padding: 7%; */ padding-right: 7%; padding-left: 7%;">
		<h2 class="section-title"
			style="margin-bottom: 20px; margin-top: 20px;">Thanh toán</h2>
		<div class="main-container">
			<form method="post" action="ThanhToanController">
				<div class="address-modal__form_input">
					<div class="input-with-status">
						<div class="input-with-status__wrapper">
							<input class="input-with-status__input" type="text"
								placeholder="Tên" maxlength="64" name="tenkhachhang" value="">
						</div>
					</div>
				</div>

				<div class="address-modal__form_input">
					<div class="input-with-status">
						<div class="input-with-status__wrapper">
							<input class="input-with-status__input" type="text"
								placeholder="Số điện thoại" name="sdtkhachhang" value="">
						</div>
					</div>
				</div>

				<select
					style="width: 100%; height: 48px; padding-left: 20px; border: 1px solid #ccc; color: #8b758b;"
					name="thanhpho">
					<option value="An Giang">An Giang</option>
					<option value="Vung Tau">Bà Rịa - Vũng Tàu</option>
					<option value="Bac Kan">Bắc Kạn</option>
					<option value="Bac Giang">Bắc Giang</option>
					<option value="Bac Lieu">Bạc Liêu</option>
					<option value="Bac Ninh">Bắc Ninh</option>
					<option value="Ben Tre">Bến Tre</option>
					<option value="Binh Duong">Bình Dương</option>
					<option value="Binh Dinh">Bình Định</option>
					<option value="Binh phuoc">Bình Phước</option>
					<option value="Binh Thuan">Bình Thuận</option>
					<option value="Ca Mau">Cà Mau</option>
					<option value="Can Tho">Cần Thơ</option>
					<option value="Cao Bang">Cao Bằng</option>
					<option value="Da Nang">Đà Nẵng</option>
					<option value="Dak Lak">Đắk Lắk</option>
					<option value="Dak Nong">Đắk Nông</option>
					<option value="Dien Bien">Điện Biên</option>
					<option value="Dong Nai">Đồng Nai</option>
					<option value="Dong Thap">Đồng Tháp</option>
					<option value="Gia Lai">Gia Lai</option>
					<option value="Ha Giang">Hà Giang</option>
					<option value="Ha Nam">Hà Nam</option>
					<option value="Ha Noi">Hà Nội</option>
					<option value="Ha Tinh">Hà Tĩnh</option>
					<option value="Hai Duong">Hải Dương</option>
					<option value="Hai Phong">Hải Phòng</option>
					<option value="Hau Giang">Hậu Giang</option>
					<option value="HCM">TP. Hồ Chí Minh</option>
					<option value="Hoa Binh">Hòa Bình</option>
					<option value="Hung Yen">Hưng Yên</option>
					<option value="Khanh Hoa">Khánh Hòa</option>
					<option value="Kien Giang">Kiên Giang</option>
					<option value="Kon Tum">Kon Tum</option>
					<option value="Lai Chau">Lai Châu</option>
					<option value="Lam Dong">Lâm Đồng</option>
					<option value="Lang Son">Lạng Sơn</option>
					<option value="Lao Cai">Lào Cai</option>
					<option value="Long An">Long An</option>
					<option value="Nam Dinh">Nam Định</option>
					<option value="Nghe An">Nghệ An</option>
					<option value="Ninh Binh">Ninh Bình</option>
					<option value="Ninh Thuan">Ninh Thuận</option>
					<option value="Phu Tho">Phú Thọ</option>
					<option value="Phu Yen">Phú Yên</option>
					<option value="Quang Binh">Quảng Bình</option>
					<option value="Quang Nam">Quảng Nam</option>
					<option value="Quang Ngai">Quảng Ngãi</option>
					<option value="Quang Ninh">Quảng Ninh</option>
					<option value="Quang Tri">Quảng Trị</option>
					<option value="Soc Trang">Sóc Trăng</option>
					<option value="Son La">Sơn La</option>
					<option value="Tay Ninh">Tây Ninh</option>
					<option value="Thai Binh">Thái Bình</option>
					<option value="Thai Nguyen">Thái Nguyên</option>
					<option value="Thanh Hoa">Thanh Hóa</option>
					<option value="Thua Thien Hue">Thừa Thiên Huế</option>
					<option value="Tien Giang">Tiền Giang</option>
					<option value="Tra Vinh">Trà Vinh</option>
					<option value="Tuyen Quang">Tuyên Quang</option>
					<option value="Vinh Long">Vĩnh Long</option>
					<option value="Vinh Phuc">Vĩnh Phúc</option>
					<option value="Yen Bai">Yên Bái</option>
				</select>
				<div class="address-modal__form_input">
					<div class="input-with-status">
						<div class="input-with-status__wrapper">
							<input class="input-with-status__input" type="text"
								placeholder="Toà nhà, Tên Đường..." name="diachikhachhang"
								maxlength="128" value="">
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
												<img
													class="checkout-product-ordered-list-item__product-image"
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
			</form>
			<!-- phuongthuc -->
		</div>
	</div>
</body>
</html>