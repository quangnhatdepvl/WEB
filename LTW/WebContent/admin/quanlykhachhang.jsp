<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>BackEnd</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="logo.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.jsp -->
    	<jsp:include page="header.jsp"/>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.jsp -->
			  <nav class="sidebar sidebar-offcanvas" id="sidebar">
			<ul class="nav">
			  <li class="nav-item">
				<a class="nav-link" href="admin_index.jsp">
				  <i class="mdi mdi-home menu-icon"></i>
				  <span class="menu-title">Trang quản lý</span>
				</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
				  <i class="mdi mdi-circle-outline menu-icon"></i>
				  <span class="menu-title">Quản lý Kho </span>
				  <i class="menu-arrow"></i>
				</a>
				<div class="collapse" id="ui-basic">
				  <ul class="nav flex-column sub-menu">
					<li class="nav-item"> <a class="nav-link" href="sanphamdaban.jsp">Sản phẩm đã bán</a></li>
					<li class="nav-item"> <a class="nav-link" href="sanphamconlai.jsp">Sản phẩm còn lại</a></li>
				  </ul>
				</div>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="quanlydienthoai.jsp">
				  <i class="mdi mdi-view-headline menu-icon"></i>
				  <span class="menu-title">Quản lý điện thoại</span>
				</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="quanlydonhang.jsp">
				  <i class="mdi mdi-chart-pie menu-icon"></i>
				  <span class="menu-title">Quản lý đơn hàng</span>
				</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="quanlythanhtoan.jsp">
				  <i class="mdi mdi-chart-pie menu-icon"></i>
				  <span class="menu-title">Quản lý thanh toán</span>
				</a>
			  </li>
			  <li class="nav-item active">
				<a class="nav-link" href="quanlykhachhang.jsp">
				  <i class="mdi mdi-grid-large menu-icon"></i>
				  <span class="menu-title">Quản lý khách hàng</span>
				</a>
			  </li>
			  
			  
			</ul>
		  </nav>
	        <div class="col-lg-12 stretch-card" style = "width :14%">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Bảng thống kê điện thoại đã bán</h4>
                  <div class="table-responsive pt-3" >
                    <table class="table table-bordered" >
                      <thead>
                        <tr>
                         
                         <th style="width: 5%;">STT</th>
                          	<th style="width: 15%;">
                            Tên	khách hàng 
                          </th>
						<th style="width: 10%;">Năm sinh</th>
                         	<th style="width: 13%;">
							Số điện thoại
                          </th>
		<th style="width: 20%;">
							Địa chỉ
                          </th>
						   <th>
							Sản phẩm đã mua
                          </th>
						   
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="table-info" >
                       
                          <td>
                            01
                          </td>
                          <td>
							Nguyễn Văn A
                          </td>
                          <td>
							1999
                          </td>
                          <td>
                           0912226362
                          </td>
						   <td>
                           Thủ Đức, Hồ Chí Minh
                          </td>
				   <td>
                          Iphone 8 plus
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

