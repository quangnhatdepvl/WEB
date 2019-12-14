<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý điện thoại</title>
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
	<div class="container-scroller">
		<!-- partial:partials/_navbar.jsp -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">

			<div class="navbar-brand-wrapper d-flex justify-content-center">
				<div
					class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
					<a class="navbar-brand brand-logo" href="admin_index.jsp"><img
						src="logo.png" alt="logo" /></a>

					<button class="navbar-toggler navbar-toggler align-self-center"
						type="button" data-toggle="minimize">
						<span class="mdi mdi-sort-variant"></span>
					</button>
				</div>
			</div>

			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end">

				<ul class="navbar-nav mr-lg-4 w-100">
					<li class="nav-item nav-search d-none d-lg-block w-100">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text" id="search"> <i
									class="mdi mdi-magnify"></i>
								</span>
							</div>
							<input type="text" class="form-control" placeholder="Tìm kiếm"
								aria-label="search" aria-describedby="search">
						</div>
					</li>
				</ul>

				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item dropdown mr-1"><a
						class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center"
						id="messageDropdown" href="#" data-toggle="dropdown"> <i
							class="mdi mdi-message-text mx-0"></i> <span class="count"></span>
					</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="messageDropdown">
							<p class="mb-0 font-weight-normal float-left dropdown-header">Tin
								nhắn</p>
						</div></li>

					<li class="nav-item dropdown mr-4"><a
						class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center notification-dropdown"
						id="notificationDropdown" href="#" data-toggle="dropdown"> <i
							class="mdi mdi-bell mx-0"></i> <span class="count"></span>
					</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="notificationDropdown">
							<p class="mb-0 font-weight-normal float-left dropdown-header">Thông
								báo</p>


						</div></li>
					<li class="nav-item nav-profile dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						id="profileDropdown"> <img src="logo.png" alt="profile" /> <span
							class="nav-profile-name"> Admin</span>
					</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="profileDropdown">
							<a class="dropdown-item"> <i
								class="mdi mdi-settings text-primary"></i> Cài đặt tài khoản
							</a> <a class="dropdown-item"> <i
								class="mdi mdi-logout text-primary"></i> Đăng xuất
							</a>
						</div></li>
				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="mdi mdi-menu"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_sidebar.jsp -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="index.jsp">
							<i class="mdi mdi-home menu-icon"></i> <span class="menu-title">Trang
								quản lý</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <i
							class="mdi mdi-circle-outline menu-icon"></i> <span
							class="menu-title">Quản lý kho </span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="sanphamdaban.jsp">Sản phẩm đã bán</a></li>
								<li class="nav-item"><a class="nav-link"
									href="sanphamconlai.jsp">Sản phẩm còn lại</a></li>
							</ul>
						</div></li>
					<li class="nav-item active"><a class="nav-link"
						href="quanlydienthoai.jsp"> <i
							class="mdi mdi-view-headline menu-icon"></i> <span
							class="menu-title">Quản lý điện thoại</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="quanlydonhang.jsp"> <i
							class="mdi mdi-chart-pie menu-icon"></i> <span class="menu-title">Quản
								lý đơn hàng</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="quanlythanhtoan.jsp"> <i
							class="mdi mdi-chart-pie menu-icon"></i> <span class="menu-title">Quản
								lý thanh toán</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="quanlykhachhang.jsp"> <i
							class="mdi mdi-grid-large menu-icon"></i> <span
							class="menu-title">Quản lý khách hàng</span>
					</a></li>
				</ul>
			</nav>
			<!-- partial -->
			<div class="col-xs-12">
				<table id="datatable-buttons"
					class="table table-striped table-bordered dataTable no-footer"
					role="grid" aria-describedby="datatable-buttons_info">
					<thead>
						<tr role="row">
							<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
								colspan="1" aria-label="SST: activate to sort column ascending"
								style="width: 50px;">STT</th>
							<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
								colspan="1"
								aria-label="Tên sản phẩm: activate to sort column ascending"
								style="width: 200px;">Tên sản phẩm</th>
							<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
								colspan="1"
								aria-label="Kiểu điện thoại: activate to sort column ascending"
								style="width: 200px;">Kiểu điện thoại</th>
							<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
								colspan="1"
								aria-label="Hãnh sản xuất: activate to sort column ascending"
								style="width: 200px;">Hãng sản xuất</th>
							<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
								colspan="1" aria-label="Giá: activate to sort column ascending"
								style="width: 150px;">Giá</th>
							<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
								colspan="1"
								aria-label="Thao tác: activate to sort column ascending"
								style="width: 150px;">Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listPhone}" var="phone">

							<tr role="row" class="odd">
								<td>${phone.id}</td>
								<td>${phone.name}</td>
								<td>${phone.typeTel }</td>
								<td>${phone.nhaSanXuat} </td>
								<td><fmt:formatNumber type="number" maxFractionDigits="0"
										value="${phone.price}" /></td>
								<!-- phần xóa  -->
								<td class="center"><a data-toggle="modal"
									data-target="#myModal1" style="display: inline-block">
										<button title="Xóa bài viết" type="button"
											class="btn btn-xs btn-danger btn-round text-center">
											<i class="ace-icon fa fa-trash-o"></i>
										</button>
								</a> <a href="">
										<button title="Sửa bài viết"
											class="btn btn-xs btn-info btn-round text-center">
											<i class="ace-icon fa fa-pencil"></i>
										</button>
								</a></td>
								<!-- kết thúc phần xóa  -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="add.jsp"><button type="button"
						class="btn btn-white btn-warning btn-round"
						style="margin-right: 5px; position: absolute; right: 20px;">
						<i class="ace-icon fa fa-plus-circle bigger-120 blue"></i> Thêm
					</button></a>

				<c:forEach begin="1" end="${countpage}" step="1" var="count">
					<c:url value="admin-quan-ly-dien-thoai" var="pages">
						<c:param name="page" value="${(count-1)}">
						</c:param>
					</c:url>
					<a href="${pages }">${count} &VerticalBar;</a>
				</c:forEach>
			</div>


			<!-- content-wrapper ends -->
			<!-- partial:partials/_footer.jsp -->

			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

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