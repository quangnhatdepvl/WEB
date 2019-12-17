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
	<br>
	<div class="right" style="
    width: 70%;
    margin: auto;
"> 

          
            <div class="col-md-12">
                
                <form action="" method="post" accept-charset="utf-8" id="register">
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Thay đổi mật khẩu</h3>
    </div>
    <div class="panel-body">
        <div class="bao">
            <div class="leftabl">
                <h3>Nhập thông tin vào các ô bên dưới</h3>              
            </div>
            <div class="bao1">
			    
                <div class="form-group">
                    <input type="password" placeholder="Mật khẩu hiện tại " class="form-control" name="password" id="username" value="">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Mật khẩu mới" class="form-control" name="password_new" id="password" value="">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Xác nhận mật khẩu mới" class="form-control" name="confirm_password" id="password" value="">
                </div>
                
                <div class="form-group"><input class="btn btn-success" type="submit" value="Đổi mật khẩu"></div>
            </div>
        </div>
    </div>
</div>
</form>



 

            </div>
           
        </div>   
	
	
	</body></html>