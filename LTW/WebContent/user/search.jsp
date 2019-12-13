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

<!-- jsp5 shim and Respond.js for IE8 support of jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<jsp:include page="header.jsp" />
	<div class="maincontent-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest-product">					
						<div
							class="product-carousel owl-carousel owl-theme owl-responsive-1000 owl-loaded">
							<div class="owl-stage-outer">
								<div class="owl-stage">

									<c:forEach items="${listPhoneSearch}" var="phone">
										<div class="owl-item cloned"
											style="width: 22%; border-style: ridge;">
											<div class="single-product">
												<div class="single-product">
													<div class="product-f-image">
														<img src="${phone.url_img}" style="width: 100%">
														<div class="product-hover">
															<a
													href="${pageContext.request.contextPath }/shopping-cart?id=${phone.id }"
													class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>
													Add to cart</a> <a
													href="${pageContext.request.contextPath }/chi-tiet-san-pham?id=${phone.id }"
													class="view-details-link"><i class="fa fa-link"></i>
													See details</a>

														</div>
													</div>

													<h2>
														<a href="single-product.html">${phone.name }</a> <br>
														<b style="color: red">Giá: <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${phone.price}" /> vnd</b>
													</h2>

												</div>
											</div>
										</div>
										
									</c:forEach>
									<br>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>