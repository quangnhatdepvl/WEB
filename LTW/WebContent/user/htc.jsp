<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8" style="float: right;">
					<div class="user-menu">
						<ul style="float: right;">
							<li><a href="index.jsp	"><i class="fa fa-user"></i> Home</a></li>
							<li><a href="cart.jsp"><i class="fa fa-user"></i> My
									Cart</a></li>
							<li><a href="login.jsp"><i class="fa fa-user"></i> Login</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="header-right">
						<ul class="list-unstyled list-inline">
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->

	<div class="site-branding-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="logo">
						<h1>
							<a href="./"><img src="img/logo.png"></a>
						</h1>
					</div>
				</div>


			</div>
		</div>
	</div>
	<!-- End site branding area -->

	<div class="mainmenu-area">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">

						<li class=""><a href="index.jsp"
							style="font-family: sans-serif; font-size: 15px; padding-left: 48px; padding-right: 48px;"><b>Home<b></b></b></a></li>
						<a href="nokia.jsp"><img src="img/brand1.png" alt="a"
							class="product-thumb"></a>
						<a href="samsung.jsp"><img src="img/brand3.png" alt=""
							class="product-thumb"></a>
						<a href="apple.jsp"><img src="img/brand4.png" alt=""
							class="product-thumb"></a>
						<a href="htc.jsp"><img src="img/brand5.png" alt=""
							class="product-active"></a>
						<a href="lg.jsp"><img src="img/brand6.png" alt=""
							class="product-thumb"></a>




					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->
	
</body>
</html>