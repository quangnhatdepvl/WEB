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

<!-- jsp5 shim and Respond.js for IE8 support of jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<jsp:include page="header.jsp" />

	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Shopping Cart</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Page title area -->


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-sidebar">
						<h2 class="sidebar-title">TÌM KIẾM SẢN PHẨM</h2>
						<form action="#">
							<input type="text" placeholder="Nhập tên sản phẩm..."> <input
								type="submit" value="Tìm kiếm">
						</form>
					</div>

					<div class="single-sidebar">
						<!-- Lấy dữ liệu lên. Phân loại bằng thương hiệu. Lấy top 4 lượt xem cao nhất-->
						<h2 class="sidebar-title">Products</h2>
						<div class="thubmnail-recent">
							<img src="user/img/product-thumb-1.jpg" class="recent-thumb"
								alt="">
							<h2>
								<a href="single-product.jsp">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>$700.00</ins>
							</div>
						</div>

					</div>

					<div class="single-sidebar">
						<h2 class="sidebar-title">Thương hiệu</h2>
						<ul>
							<li><a href="nokia.jsp"><img src="user/img/brand1.png"
									style="width: 30%"> 99+ sản phẩm khác</a></li>
							<li><a href="samsung.jsp"><img src="user/img/brand3.png"
									style="width: 30%">99+ sản phẩm khác </a></li>
							<li><a href="apple.jsp"><img src="user/img/brand4.png"
									style="width: 30%">99+ sản phẩm khác</a></li>
							<li><a href="htc.jsp"><img src="user/img/brand5.png"
									style="width: 30%">99+ sản phẩm khác</a></li>
							<li><a href="lg.jsp"><img src="user/img/brand6.png"
									style="width: 30%">99+ sản phẩm khác</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-8">
					<div class="product-content-right">
						<div class="woocommerce">
							<form method="post" action="#">
								<table cellspacing="0" class="shop_table cart">
									<thead>
										<tr>
											<th class="product-remove">&nbsp;</th>
											<th class="product-thumbnail">&nbsp;</th>
											<th class="product-name">Tên sản phẩm</th>
											<th class="product-price">Giá cả</th>
											<th class="product-quantity">Số lượng</th>
											<th class="product-subtotal">Thành tiền</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="total" value="${0}" />
										<c:forEach items="${listPhone}" var="phone">
											<c:url value="shopping-cart" var="cart">
												<c:param name="delete" value="${phone.id }" />
											</c:url>
											<c:set var="total" value="${total +phone.price}" />
											<tr class="cart_item">

												<td class="product-remove"><a title="Remove this item"
													class="remove" href="${cart}">×</a></td>

												<td class="product-thumbnail"><a
													href="single-product.jsp"><img width="145" height="145"
														alt="poster_1_up" class="shop_thumbnail"
														src="user/img/product-thumb-2.jpg"></a></td>

												<td class="product-name"><a
													href="${pageContext.request.contextPath }/chi-tiet-san-pham?id=${phone.id }">${phone.name }</a></td>

												<td class="product-price"><span class="amount"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${phone.price}" /></span>
												</td>

												<td class="product-quantity">
													<div class="quantity buttons_added">
														<span class="amount">1</span>
													</div>
												</td>
												<td class="product-subtotal"><span class="amount"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${phone.price}" /></span>
												</td>
											</tr>


										</c:forEach>

									</tbody>

								</table>
								<p style="color: red">Tổng giá: <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${total}" /> vnd</p>
							</form>

							<div class="cart-collaterals">

								<button style="width: 16%; padding-left: 14px;">Thanh
									toán</button>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- End footer bottom area -->

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