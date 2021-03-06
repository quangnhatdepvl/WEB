<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý khách hàng</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="admin/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="admin/vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="admin/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="logo.png" />
<link rel="stylesheet"
	href="admin/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>
	<fmt:setLocale value="${locale }" />

	<fmt:setBundle basename="language/messages" />
	<jsp:include page="header.jsp" />

	<div class="col-lg-12 stretch-card" style="width: 14%">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive pt-3">
					<table class="table table-bordered">
						<thead>

							<tr>

								<th style="width: 5%;"><fmt:message key="stt" /></th>
								<th style="width: 15%;"><fmt:message key="tenKhachHang" />
								</th>
								<th style="width: 15%;"><fmt:message key="sdt" /></th>
								<th style="width: 18%;"><fmt:message key="diaChi" /></th>
								<th style="width: 18%;"><fmt:message key="tenDienThoai" />
								</th>
								<th><fmt:message key="ngayMua" /></th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listBookPhone}" var="list">
								<c:forEach items="${list.listPhone}" var="listPhone">
								<tr class="table-info">

									<td>${list.customer.customerId}</td>
									<td>${list.customer.name}</td>
									<td>${list.customer.phone}</td>
									<td>${list.customer.address}</td>
									<td>${listPhone.name }</td>
									<td>${list.dateCreate}</td>

								</tr>
								</c:forEach>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	<!-- plugins:js -->
	<script src="admin/vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="admin/vendors/chart.js/Chart.min.js"></script>
	<script src="admin/vendors/datatables.net/jquery.dataTables.js"></script>
	<script src="admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="admin/js/off-canvas.js"></script>
	<script src="admin/js/hoverable-collapse.js"></script>
	<script src="admin/js/template.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="admin/js/dashboard.js"></script>
	<script src="admin/js/data-table.js"></script>
	<script src="admin/js/jquery.dataTables.js"></script>
	<script src="admin/js/dataTables.bootstrap4.js"></script>
	<!-- End custom js for this page-->
</body>

</html>

