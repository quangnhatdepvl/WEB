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
	        <div class="col-lg-12 stretch-card" style = "width :14%">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Bảng thống kê điện thoại còn lại</h4>
                  <div class="table-responsive pt-3" >
                    <table class="table table-bordered" >
                      <thead>
                        <tr>
                         
                          <th>
							ID điện thoại
                          </th>
                          <th>
                            Tên điện thoại
                          </th>
						  <th>
							Kiểu điện thoại
                          </th>
                          <th>
							Nhà sản xuất 
                          </th>
                          <th>
                          Giá cả
                          </th>
						      <th>
                         Số lượng
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="table-info" >
                        
                          <td>
                            01
                          </td>
                          <td>
							Iphone 11 pro max
                          </td>
                          <td>
                          Smart Phone
                          </td>
                          <td>
                            Apple
                          </td>
						   <td>
                           30,990,000 Vnđ
                          </td>
				   <td>
                           10 cái
                          </td>
						 
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
           
          </div>
        </div>
		  
      <!-- partial -->
      
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

