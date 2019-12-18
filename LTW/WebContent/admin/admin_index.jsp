<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>BackEnd</title>
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
</head>

<body>

	<div class="container-scroller">
		<jsp:include page="header.jsp"/>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">

					<div class="row">
						<div class="col-md-12 grid-margin">
							<div class="d-flex justify-content-between flex-wrap">
								<div class="d-flex align-items-end flex-wrap">
									<div class="mr-md-3 mr-xl-5">
										<h2>Xin chào bạn,</h2>

									</div>

								</div>

							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body dashboard-tabs p-0">
									<ul class="nav nav-tabs px-4" role="tablist">
										<a class="nav-link active" id="overview-tab" data-toggle="tab"
											href="#overview" role="tab" aria-controls="overview"
											aria-selected="true">Tuần </a>
										<li class="nav-item"></li>
										<li class="nav-item"><a class="nav-link" id="sales-tab"
											data-toggle="tab" href="#sales" role="tab"
											aria-controls="sales" aria-selected="false">Tháng</a></li>
										<li class="nav-item"><a class="nav-link"
											id="purchases-tab" data-toggle="tab" href="#purchases"
											role="tab" aria-controls="purchases" aria-selected="false">Năm</a>
										</li>
									</ul>
									<div class="tab-content py-0 px-0">
										<div class="tab-pane fade show active" id="overview"
											role="tabpanel" aria-labelledby="overview-tab">
											<div class="d-flex flex-wrap justify-content-xl-between">
												<div
													class="d-none d-xl-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-calendar-heart icon-lg mr-3 text-primary"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Ngày bắt đầu</small>
														<div class="dropdown">
															<a
																class="btn btn-secondary dropdown-toggle p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium"
																href="#" role="button" id="dropdownMenuLinkA"
																data-toggle="dropdown" aria-haspopup="true"
																aria-expanded="false">
																<h5 class="mb-0 d-inline-block">03/02/2017</h5>
															</a>
															<div class="dropdown-menu"
																aria-labelledby="dropdownMenuLinkA">
																<a class="dropdown-item" href="#">01/01/2019</a> <a
																	class="dropdown-item" href="#">01/01/2019</a> <a
																	class="dropdown-item" href="#">01/01/2019</a>
															</div>
														</div>
													</div>
												</div>
												<div
													class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-currency-usd mr-3 icon-lg text-danger"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Doanh thu trong
															tuần</small>
														<h5 class="mr-2 mb-0">$2000</h5>
													</div>
												</div>
												<div
													class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-eye mr-3 icon-lg text-success"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Lượng truy cập</small>
														<h5 class="mr-2 mb-0">50000 lượt</h5>
													</div>
												</div>


											</div>
										</div>
										<div class="tab-pane fade" id="sales" role="tabpanel"
											aria-labelledby="sales-tab">
											<div class="d-flex flex-wrap justify-content-xl-between">
												<div
													class="d-none d-xl-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-calendar-heart icon-lg mr-3 text-primary"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Ngày bắt đầu</small>
														<div class="dropdown">
															<a
																class="btn btn-secondary dropdown-toggle p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium"
																href="#" role="button" id="dropdownMenuLinkA"
																data-toggle="dropdown" aria-haspopup="true"
																aria-expanded="false">
																<h5 class="mb-0 d-inline-block">01/01/2019</h5>
															</a>
															<div class="dropdown-menu"
																aria-labelledby="dropdownMenuLinkA">
																<a class="dropdown-item" href="#">01/01/2019</a> <a
																	class="dropdown-item" href="#">01/01/2019</a> <a
																	class="dropdown-item" href="#">01/01/2019</a>
															</div>
														</div>
													</div>
												</div>
												<div
													class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-currency-usd mr-3 icon-lg text-danger"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Doanh thu trong
															tháng</small>
														<h5 class="mr-2 mb-0">$100000</h5>
													</div>
												</div>
												<div
													class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-eye mr-3 icon-lg text-success"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Lượng truy cập </small>
														<h5 class="mr-2 mb-0">2500000 lượt</h5>
													</div>
												</div>


											</div>
										</div>
										<div class="tab-pane fade" id="purchases" role="tabpanel"
											aria-labelledby="purchases-tab">
											<div class="d-flex flex-wrap justify-content-xl-between">
												<div
													class="d-none d-xl-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-calendar-heart icon-lg mr-3 text-primary"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Ngày bắt đầu</small>
														<div class="dropdown">
															<a
																class="btn btn-secondary dropdown-toggle p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium"
																href="#" role="button" id="dropdownMenuLinkA"
																data-toggle="dropdown" aria-haspopup="true"
																aria-expanded="false">
																<h5 class="mb-0 d-inline-block">01/01/2019</h5>
															</a>
															<div class="dropdown-menu"
																aria-labelledby="dropdownMenuLinkA">
																<a class="dropdown-item" href="#">01/01/2019</a> <a
																	class="dropdown-item" href="#">01/01/2019</a> <a
																	class="dropdown-item" href="#">01/01/2019</a>
															</div>
														</div>
													</div>
												</div>
												<div
													class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-currency-usd mr-3 icon-lg text-danger"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Doanh thu trong năm</small>
														<h5 class="mr-2 mb-0">$100000</h5>
													</div>
												</div>
												<div
													class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
													<i class="mdi mdi-eye mr-3 icon-lg text-success"></i>
													<div class="d-flex flex-column justify-content-around">
														<small class="mb-1 text-muted">Lượng truy cập</small>
														<h5 class="mr-2 mb-0">12000000 lượt</h5>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<p class="card-title">Lượng truy cập trang web</p>
									<p class="mb-4">Với những bộ anime hot nhất thu người xem
										đông đảo.</p>
									<div id="cash-deposits-chart-legend"
										class="d-flex justify-content-center pt-3"></div>
									<canvas id="cash-deposits-chart"></canvas>
								</div>
							</div>
						</div>
						<div class="col-md-5 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<p class="card-title">Doanh thu</p>
									<h1>$ 500000</h1>
									<h5>Tổng doanh thu qua các năm.</h5>
									<div id="total-sales-chart-legend"></div>
								</div>
								<canvas id="total-sales-chart"></canvas>
							</div>
						</div>
					</div>

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

