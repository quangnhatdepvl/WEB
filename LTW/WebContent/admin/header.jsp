<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<!-- partial:partials/_sidebar.jsp -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link"
						href="admin_index.jsp"> <i class="mdi mdi-home menu-icon"></i>
							<span class="menu-title">Trang quản lý</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <i
							class="mdi mdi-circle-outline menu-icon"></i> <span
							class="menu-title">Quản lý Kho </span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="sanphamdaban.jsp">Sản phẩm đã bán</a></li>
								<li class="nav-item"><a class="nav-link"
									href="sanphamconlai.jsp">Sản phẩm còn lại</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="admin-quan-ly-dien-thoai"> <i
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
