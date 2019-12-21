<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>


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
<script src="admin/ckeditor/ckeditor.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />

	<!-- partial -->
	<div class="main-panel">
		<div class="content-wrapper">
			<div class="row">
				<div class="col-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">

							<form action="admin-quan-ly-dien-thoai" method="post"
								 <c:if test="${phone.id == null }">
										enctype="multipart/form-data"
									</c:if>>
								

								<label>Tên điện thoại</label>
								 <input	type="text" name="name"	value="${phone.name }" 
								 <c:if test="${phone.id != null }">
										readonly="readonly"
									</c:if> > 
									<label for="exampleInputEmail3">Loại
									điện thoại</label> 
									<input type="text" 
									name="typePhone" value="${phone.typeTel }" placeholder="">
								<label >Nhà sản xuất</label> <input
									type="text" class="form-control" name="nhaSanXuat"
									value="${phone.nhaSanXuat }">
									 <label>Giá</label>
									  <input type="text" name="price" value="${phone.price }">
									   <label>Ngày sản xuất</label>
									  <input type="date" name="price" value="${phone.ngaySanXuat }">
									    <label>Số lượng</label>
									  <input type="date" name="price" value="${phone.soLuong }">
									  


								<label>Hình ảnh</label>
								<c:choose>
									<c:when test="${phone.url_img == null }">
										<input type="file" name="img" accept="image/">
									</c:when>
									<c:otherwise>
										<img src="${phone.url_img }">
									</c:otherwise>
								</c:choose>



								<br> <label>Miêu tả</label>
								<textarea class="form-control" id="noiDung" name="des" rows="4">${phone.description }</textarea>

								<input type="submit"
									<c:choose>
									<c:when test="${phone.id == null }">
										value="Thêm"
									</c:when>
									<c:otherwise>
											value="Sửa"
									</c:otherwise>
								</c:choose>>
								
								<input type="hidden" name="id" value="${phone.id }">
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

