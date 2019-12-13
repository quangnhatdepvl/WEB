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

	<jsp:include page="header.jsp" />

	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<c:forEach items="${sortByDate }" var="ph">
					<li><img src="${ph.url_img}" alt="Slide"> <c:url
							value="chi-tiet-san-pham" var="buy">
							<c:param name="id" value="${ph.id }"></c:param>
						</c:url>
						<div class="caption-group">
							<h2 class="caption title">${ph.name }</h2>
									<p style="color: red">
											Giá:
											<fmt:formatNumber type="number" maxFractionDigits="0"
												value="${ph.price}" />
											vnd
										</p>
							<a class="caption button-radius" href="${buy }"><span
								class="icon"></span>Shop now</a>
						</div></li>
				</c:forEach>
			</ul>
		</div>
		<!-- ./Slider -->
	</div>
	<!-- End slider area -->
	<!-- End promo area -->
	<div class="maincontent-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest-product">
						<h2 class="section-title">Latest Products</h2>
						<div
							class="product-carousel owl-carousel owl-theme owl-loaded owl-responsive-1000"
							style="height: 400px;">
							<c:forEach items="${sortByPrice }" var="phone">
								<c:url value="chitietsp.jsp" var="chitiet">
									<c:param name="sanpham" value="${phone.id }" />
								</c:url>
								<div class="single-product" style="width: 125%">
									<div class="product-f-image">
										<img src="${phone.url_img }" alt="">
										<div class="product-hover">
											<form action="shopping-cart" method="post">
												<a
													href="${pageContext.request.contextPath }/shopping-cart?id=${phone.id }"
													class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>
													Add to cart</a>
													 <a
													href="${pageContext.request.contextPath }/chi-tiet-san-pham?id=${phone.id }"
													class="view-details-link"><i class="fa fa-link"></i>
													See details</a>
											</form>
										</div>
									</div>

									<h2>${phone.name }</h2>

									<div class="product-carousel-price">
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
				</div>
			</div>
		</div>
	</div>
	<!-- End main content area -->



	<!-- End product widget area -->
	<!-- End footer top area -->

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

	<!-- Slider -->
	<script>
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<script type="text/javascript" src="user/js/bxslider.min.js"></script>
	<script type="text/javascript" src="user/js/script.slider.js"></script>
</body>
</html>