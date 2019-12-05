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
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="shortcut icon" href="../../images/favicon.png" />

</head>

<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.jsp -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="navbar-brand-wrapper d-flex justify-content-center">
        <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">  
          <a class="navbar-brand brand-logo" href="admin_index.jsp"><img src="logo.png" alt="logo"/></a>

          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-sort-variant"></span>
          </button>
        </div>  
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <ul class="navbar-nav mr-lg-4 w-100">
          <li class="nav-item nav-search d-none d-lg-block w-100">
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text" id="search">
                  <i class="mdi mdi-magnify"></i>
                </span>
              </div>
              <input type="text" class="form-control" placeholder="TÃ¬m kiáº¿m" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown mr-1">
            <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-message-text mx-0"></i>
              <span class="count"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="messageDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">Tin nháº¯n</p>
              
   
            </div>
          </li>
          <li class="nav-item dropdown mr-4">
            <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center notification-dropdown" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-bell mx-0"></i>
              <span class="count"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="notificationDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">ThÃ´ng bÃ¡o</p>
            </div>
          </li>
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="logo.png" alt="profile"/>
              <span class="nav-profile-name">Admin</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="mdi mdi-settings text-primary"></i>
                CÃ i Äáº·t tÃ i khoáº£n
              </a>
              <a class="dropdown-item">
                <i class="mdi mdi-logout text-primary"></i>
                ÄÄng xuáº¥t
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_sidebar.jsp -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">Trang quáº£n lÃ½</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="mdi mdi-circle-outline menu-icon"></i>
               <span class="menu-title">Quáº£n lÃ½ kho </span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="sanphamdaban.jsp">Sáº£n pháº©m ÄÃ£ bÃ¡n</a></li>
					<li class="nav-item"> <a class="nav-link" href="sanphamconlai.jsp">Sáº£n pháº©m cÃ²n láº¡i</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
           <a class="nav-link" href="quanlydienthoai.jsp">
              <i class="mdi mdi-view-headline menu-icon"></i>
               <span class="menu-title">Quáº£n lÃ½ Äiá»n thoáº¡i</span>
            </a>
          </li>
         <li class="nav-item active">
            <a class="nav-link" href="quanlydonhang.jsp">
              <i class="mdi mdi-chart-pie menu-icon"></i>
             <span class="menu-title">Quáº£n lÃ½ ÄÆ¡n hÃ ng</span>
            </a>
          </li>
		  <li class="nav-item">
				<a class="nav-link" href="quanlythanhtoan.jsp">
				  <i class="mdi mdi-chart-pie menu-icon"></i>
				  <span class="menu-title">Quáº£n lÃ½ thanh toÃ¡n</span>
				</a>
			  </li>
          <li class="nav-item">
            <a class="nav-link" href="quanlykhachhang.jsp">
              <i class="mdi mdi-grid-large menu-icon"></i>
               <span class="menu-title">Quáº£n lÃ½ khÃ¡ch hÃ ng</span>
            </a>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="col-xs-12">
        <table id="datatable-buttons" class="table table-striped table-bordered dataTable no-footer" role="grid"
          aria-describedby="datatable-buttons_info">
          <thead>
            <tr role="row">           
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="SST: activate to sort column ascending" style="width: 50px;">STT</th>
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="TÃªn sáº£n pháº©m: activate to sort column ascending" style="width: 200px;">TÃªn sáº£n pháº©m</th>
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="HÃ£nh sáº£n xuáº¥t: activate to sort column ascending" style="width: 200px;">HÃ£ng sáº£n xuáº¥t</th>
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="GiÃ¡: activate to sort column ascending" style="width: 150px;">GiÃ¡</th>
				 <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="HÃ£ng sáº£n xuáº¥t: activate to sort column ascending" style="width: 200px;">TÃªn khÃ¡ch hÃ ng</th>
				 <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Tuá»i: activate to sort column ascending" style="width: 50px;">Tuá»i</th>
				 <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Äá»a chá»: activate to sort column ascending" style="width: 200px;">Äá»a chá»</th>
              <th tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"
                aria-label="Thao tÃ¡c: activate to sort column ascending" style="width: 150px;">Thao tÃ¡c</th>
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

              <!-- pháº§n xÃ³a  -->
              <td class="center">
                <a data-toggle="modal" data-target="#myModal1" style="display: inline-block">
                  <button title="XÃ³a bÃ i viáº¿t" type="button" class="btn btn-xs btn-danger btn-round text-center">xÃ¡c nháº­n
                  
                  </button></a>
                <a href="">
                  <button title="Sá»­a bÃ i viáº¿t" class="btn btn-xs btn-info btn-round text-center">Há»§y                 
                  </button>
                </a>
              </td>
              <!-- káº¿t thÃºc pháº§n xÃ³a  -->
            </tr>
            <tr role="row" class="even">
             <td></td>
              <td></td>
              <td></td>
			  <td></td>
              <td></td>
			  <td></td>
              <td></td>

              <!-- pháº§n xÃ³a  -->
              <td class="center">
                <a data-toggle="modal" data-target="#myModal1" style="display: inline-block">
                  <button title="XÃ³a bÃ i viáº¿t" type="button" class="btn btn-xs btn-danger btn-round text-center">xÃ¡c nháº­n
                  
                  </button></a>
                <a href="">
                  <button title="Sá»­a bÃ i viáº¿t" class="btn btn-xs btn-info btn-round text-center">Há»§y                 
                  </button>
                </a>
              </td>
              <!-- káº¿t thÃºc pháº§n xÃ³a  -->
            </tr>
            <tr role="row" class="odd">
              <td></td>
              <td></td>
              <td></td>
			  <td></td>
              <td></td>
			  <td></td>
              <td></td>

              <!-- pháº§n xÃ³a  -->
              <td class="center">
                <a data-toggle="modal" data-target="#myModal1" style="display: inline-block">
                  <button title="XÃ³a bÃ i viáº¿t" type="button" class="btn btn-xs btn-danger btn-round text-center">xÃ¡c nháº­n
                  
                  </button></a>
                <a href="">
                  <button title="Sá»­a bÃ i viáº¿t" class="btn btn-xs btn-info btn-round text-center">Há»§y                 
                  </button>
                </a>
              </td>
              <!-- káº¿t thÃºc pháº§n xÃ³a  -->
            </tr>
            <tr role="row" class="even">
              <td></td>
              <td></td>
              <td></td>
			  <td></td>
              <td></td>
			  <td></td>
              <td></td>

              <!-- pháº§n xÃ³a  -->
              <td class="center">
                <a data-toggle="modal" data-target="#myModal1" style="display: inline-block">
                  <button title="XÃ³a bÃ i viáº¿t" type="button" class="btn btn-xs btn-danger btn-round text-center">xÃ¡c nháº­n
                  
                  </button></a>
                <a href="">
                  <button title="Sá»­a bÃ i viáº¿t" class="btn btn-xs btn-info btn-round text-center">Há»§y                 
                  </button>
                </a>
              </td>
              <!-- káº¿t thÃºc pháº§n xÃ³a  -->
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
<!-- end script slider chÃ¡t -->

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
