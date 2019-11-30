<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

	<jsp:include page="header.jsp/">
		<div class="maincontent-area">
			<div class="zigzag-bottom"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="latest-product">
							<h2 class="section-title">Latest Products</h2>

							<div class="product-carousel owl-carousel owl-theme owl-responsive-1000 owl-loaded">
								<div class="owl-stage-outer">
									<div class="owl-stage">

										<c:forEach items="${listPhone}" var="phone">
											<div class="owl-item cloned">
												<div class="single-product">

													<div class="single-product">
														<div class="product-f-image">
															<img src="img/product-1.jpg" alt="">
															<div class="product-hover">
																<a href="#" class="add-to-cart-link"><i
																	class="fa fa-shopping-cart"></i> Add to cart</a> <a
																	href="single-product.html" class="view-details-link"><i
																	class="fa fa-link"></i> See details</a>
															</div>
														</div>

														<h2>
															<a href="single-product.html">${phone.name }</a>
														</h2>

														<div class="product-carousel-price">
															<ins>${phone.price}</ins>

														</div>
													</div>

												</div>
											</div>
										</c:forEach>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div></body>

</html>