
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
	href="vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="logo.png" />
<script src="ckeditor/ckeditor.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"/>
			
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">

									<form class="forms-sample" enctype="multipart/form-data">
										<div class="form-group">
											<label for="exampleInputName1">Tiêu đề</label> <input
												type="text" class="form-control" id="exampleInputName1"
												placeholder="">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail3">Tóm tắt</label> <input
												type="text" class="form-control" id="exampleInputEmail3"
												placeholder="">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword4">Tác giả</label> <input
												type="text" class="form-control" id="exampleInputPassword4"
												placeholder="">
										</div>
										<div class="form-group">
											<label>Hình ảnh</label> <input type="file" name="img[]"
												class="file-upload-default" accept="image/">
											<div class="input-group col-xs-12">
												<input type="text" class="form-control file-upload-info"
												 placeholder="Upload Image"> <span
													class="input-group-append">
													<button class="file-upload-browse btn btn-primary"
														type="button">Upload</button>
												</span>
											</div>
										</div>

										<div class="form-group">
											<label for="exampleTextarea1">Nội dung</label>
											<textarea class="form-control" id="noiDung" rows="4"></textarea>
										</div>
										<a href="quanlytintuc.jsp"><button type="button"
												class="btn btn-primary mr-2">
												<i class="ace-icon fa fa-plus-circle bigger-120 blue"></i>
												Thêm
											</button></a>
										<button class="btn btn-light">Cancel</button>
									</form>
								</div>
							</div>
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
	<script>
		// Replace the <textarea id="editor1"> with a CKEditor
		// instance, using default configuration.
		CKEDITOR.replace('noiDung');
	</script>


	<!-- plugins:js -->
	<script src="vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="vendors/chart.js/Chart.min.js"></script>
	<script src="vendors/datatables.net/jquery.dataTables.js"></script>
	<script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="js/off-canvas.js"></script>
	<script src="js/hoverable-collapse.js"></script>
	<script src="js/template.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="js/dashboard.js"></script>
	<script src="js/data-table.js"></script>
	<script src="js/jquery.dataTables.js"></script>
	<script src="js/dataTables.bootstrap4.js"></script>
	<!-- End custom js for this page-->
</body>

</html>

