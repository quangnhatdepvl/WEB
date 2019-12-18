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
	<jsp:include page="header.jsp"/>
      <!-- partial -->
      <div class="col-xs-12">
        <table id="datatable-buttons" class="table table-striped table-bordered dataTable no-footer" role="grid"
          aria-describedby="datatable-buttons_info">
          <thead>
            <tr role="row">           
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="SST: activate to sort column ascending" style="width: 50px;">STT</th>
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Tên sản phẩm: activate to sort column ascending" style="width: 200px;">Tên sản phẩm</th>
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Hãnh sản xuất: activate to sort column ascending" style="width: 200px;">Hãng sản xuất</th>
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Giá: activate to sort column ascending" style="width: 150px;">Giá</th>
				 <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Hãng sản xuất: activate to sort column ascending" style="width: 200px;">Tên khách hàng</th>
				 <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Tuổi: activate to sort column ascending" style="width: 50px;">Tuổi</th>
				 <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Địa chỉ: activate to sort column ascending" style="width: 200px;">Địa chỉ</th>
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Thao tác: activate to sort column ascending" style="width: 150px;">Thao tác</th>
            </tr>
          </thead>
          <tbody>
            <tr role="row" class="odd">
              <td></td>
              <td></td>
              <td></td>
			  <td></td>
              <td></td>
			  <td></td>
              <td></td>

              <!-- phần xóa  -->
              <td class="center">
                <a data-toggle="modal" data-target="#myModal1" style="display: inline-block">
                  <button title="Xóa bài viết" type="button" class="btn btn-xs btn-danger btn-round text-center">xác nhận
                  
                  </button></a>
                <a href="">
                  <button title="Sửa bài viết" class="btn btn-xs btn-info btn-round text-center">Hủy                 
                  </button>
                </a>
              </td>
              <!-- kết thúc phần xóa  -->
            </tr>
            <tr role="row" class="even">
             <td></td>
              <td></td>
              <td></td>
			  <td></td>
              <td></td>
			  <td></td>
              <td></td>

              <!-- phần xóa  -->
              <td class="center">
                <a data-toggle="modal" data-target="#myModal1" style="display: inline-block">
                  <button title="Xóa bài viết" type="button" class="btn btn-xs btn-danger btn-round text-center">xác nhận
                  
                  </button></a>
                <a href="">
                  <button title="Sửa bài viết" class="btn btn-xs btn-info btn-round text-center">Hủy                 
                  </button>
                </a>
              </td>
              <!-- kết thúc phần xóa  -->
            </tr>
            <tr role="row" class="odd">
              <td></td>
              <td></td>
              <td></td>
			  <td></td>
              <td></td>
			  <td></td>
              <td></td>

              <!-- phần xóa  -->
              <td class="center">
                <a data-toggle="modal" data-target="#myModal1" style="display: inline-block">
                  <button title="Xóa bài viết" type="button" class="btn btn-xs btn-danger btn-round text-center">xác nhận
                  
                  </button></a>
                <a href="">
                  <button title="Sửa bài viết" class="btn btn-xs btn-info btn-round text-center">Hủy                 
                  </button>
                </a>
              </td>
              <!-- kết thúc phần xóa  -->
            </tr>
            <tr role="row" class="even">
              <td></td>
              <td></td>
              <td></td>
			  <td></td>
              <td></td>
			  <td></td>
              <td></td>

              <!-- phần xóa  -->
              <td class="center">
                <a data-toggle="modal" data-target="#myModal1" style="display: inline-block">
                  <button title="Xóa bài viết" type="button" class="btn btn-xs btn-danger btn-round text-center">xác nhận
                  
                  </button></a>
                <a href="">
                  <button title="Sửa bài viết" class="btn btn-xs btn-info btn-round text-center">Hủy                 
                  </button>
                </a>
              </td>
              <!-- kết thúc phần xóa  -->
            </tr>
          
          </tbody>
        </table>
       
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

<!-- start script slider charts -->
<script>
function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script> 
<!-- end script slider chát -->

  <!-- plugins:js -->
  <script src="vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
    <!-- Plugin js for this page-->
    <script src="vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/chart.js"></script>
  <!-- End custom js for this page-->

</body>

</html>
