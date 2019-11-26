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
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/login.css">

<!-- jsp5 shim and Respond.js for IE8 support of jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<li><img src="img/h4-slide.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							iPhone <span class="primary">6 <strong>Plus</strong></span>
						</h2>
						<h4 class="caption subtitle">Dual SIM</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/h4-slide2.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							by one, get one <span class="primary">50% <strong>off</strong></span>
						</h2>
						<h4 class="caption subtitle">school supplies & backpacks.*</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/h4-slide3.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Apple <span class="primary">Store <strong>Ipod</strong></span>
						</h2>
						<h4 class="caption subtitle">Select Item</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/h4-slide4.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Apple <span class="primary">Store <strong>Ipod</strong></span>
						</h2>
						<h4 class="caption subtitle">& Phone</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
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
						<div class="product-carousel owl-carousel owl-theme owl-loaded owl-responsive-1000" style="height: 400px;">
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-1.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>
									<a href="single-product.jsp">Samsung Galaxy s5- 2015</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$700.00</ins>
									<del>$100.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-2.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>Nokia Lumia 1320</h2>
								<div class="product-carousel-price">
									<ins>$899.00</ins>
									<del>$999.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-3.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>LG Leon 2015</h2>

								<div class="product-carousel-price">
									<ins>$400.00</ins>
									<del>$425.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-4.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>
									<a href="single-product.jsp">Sony microsoft</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$200.00</ins>
									<del>$225.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-5.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>iPhone 6</h2>

								<div class="product-carousel-price">
									<ins>$1200.00</ins>
									<del>$1355.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-6.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="single-product.jsp" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>
									<a href="single-product.jsp">Samsung gallaxy note 4</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$400.00</ins>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End main content area -->



	<div class="product-widget-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top Sellers</h2>
						<a href="" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Apple new mac book 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Recently Viewed</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Sony Smart Air Condtion</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top New</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product.jsp"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="single-product.jsp">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End product widget area -->
	<!-- End footer top area -->

	<!-- End footer bottom area -->

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="js/main.js"></script>

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
	<script type="text/javascript" src="js/bxslider.min.js"></script>
	<script type="text/javascript" src="js/script.slider.js"></script>
</body>
</html>