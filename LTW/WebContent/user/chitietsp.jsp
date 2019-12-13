<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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

	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>INFORMATION DETAILS</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
						<div class="single-sidebar" style="border-right: outset;">
					
							<!-- Lấy dữ liệu lên. Phân loại bằng thương hiệu. Lấy top 4 lượt xem cao nhất-->
							<h2 class="sidebar-title">Products</h2>
										<c:forEach items="${listPhone}" var="phone">
							<div class="thubmnail-recent">
					
								<img src="${phone.url_img }" class="recent-thumb" alt="">
								<h2>
									<a href="${pageContext.request.contextPath }/chi-tiet-san-pham?id=${phone.id }">${phone.name }</a>

								</h2>
								<div class="product-sidebar-price">
									<p style="color: red">
										Giá:
										<fmt:formatNumber type="number" maxFractionDigits="0"
											value="${phone.price}" />
										vnd
									</p>
								</div>
								</div>
								</c:forEach>
							</div>
						
				
			
				</div>

				<div class="col-md-8">
					<div class="product-content-right">
						<div class="product-breadcroumb">
							<c:url value="danh-sach-san-pham" var="danhSach">
								<c:param name="model" value="${phone.nhaSanXuat }" />
							</c:url>
							<a href="">Home</a> <a href="${danhSach }">${phone.nhaSanXuat }</a>
							<a href="#">${phone.name} </a>
						</div>

						<div class="row">
							<div class="col-sm-6">
								<div class="product-images">
									<div class="product-main-img">
										<img src="${phone.url_img }" alt="">

									</div>

								</div>
							</div>

							<div class="col-sm-6">
								<div class="product-inner">
									<h2 class="product-name">${phone.name }</h2>
									<div class="product-inner-price">
										<b style="color: red">Giá: <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${phone.price}" /> vnd</b>

									</div>

									<form action="" class="cart">
										
										<c:url value="shopping-cart" var="add">
											<c:param name="id" value="${phone.id }" />
										</c:url>
										<a href="${add }">
										<button class="add_to_cart_button" type="button"
											style="margin-top: 10px;">Thêm vào giỏ hàng</button></a>
									
									</form>

									<div class="product-inner-category">
										<p>
											Thể loại: <a href="#">Smartphone</a>. Cùng thể loại: <a
												href="#">Mới nhất</a>, <a href="#">màn hình đẹp</a>, <a
												href="#">cấu hình mạnh</a>, <a href="#">giá đẹp</a>.
										</p>
									</div>

									<div role="tabpanel">
										<ul class="product-tab" role="tablist">
											<li role="presentation" class="active"><a href="#home"
												aria-controls="home" role="tab" data-toggle="tab">Mô tả</a></li>
											<li role="presentation"><a href="#profile"
												aria-controls="profile" role="tab" data-toggle="tab">Thông
													số chi tiết</a></li>
										</ul>
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane fade in active"
												id="home">
												<h4>Mô tả</h4>
												<hr>
												<p>${phone.description }</p>
											</div>
											<div role="tabpanel" class="tab-pane fade" id="profile">
												<h4>Thông số kĩ thuật</h4>
												<hr>
												<li>Vi xử lý <b>A13 Bionic</b> tiến trình 7mm (được
													đánh giá là con chip di động mạnh mẽ nhất thời điểm ra
													mắt).
												</li>
												<li>Màn hình <b>OLED</b> công nghệ Super Retina XDR 5.8
													inch (độ phân giải 1125 × 2436 pixels) trên 11 Pro và 6.5
													inch (độ phân giải 1242 × 2688 pixels) trên 11 Pro Max.
												</li>
												<li>Mật độ điểm ảnh trên màn hình đạt 458 ppi, độ tương
													phản 2,000,000:1, độ sáng tối đa 1200 nits (HDR).</li>
											</div>
										</div>

									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>



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
</body>
</html>