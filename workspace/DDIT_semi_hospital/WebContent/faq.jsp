<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>세계를 선도하는 대덕병원입니다</title>
  <!-- 헤더, 푸더 외부 css파일 -->
  <link rel="stylesheet" href="css/header_footer.css">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<style>



</style>

</head>
<body class="hold-transition layout-top-nav layout-footer-fixed" style="height: auto;">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <!-- 로고자리 -->
    <ul class="navbar-nav"></ul>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">로고</a> 
      </li>
    <!-- 카테고리 -->
    <ul class="navbar-nav" id="top_menu">
      <li class="nav-item d-none d-sm-inline-block dropdown">
        <a id="dropdownSubMenu1" href="#"
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
		class="nav-link dropdown-toggle">진료예약</a>
			<ul aria-labelledby="dropdownSubMenu1"
			class="dropdown-menu border-0 shadow"
			style="left: 0px; right: inherit;">
				<li><a href="#" class="dropdown-item">온라인 예약 </a></li>
				<li><a href="#" class="dropdown-item">예약 확인 및 취소</a></li>
			</ul>
      </li>
      <li class="nav-item d-none d-sm-inline-block ">
        <a href="#" class="nav-link">진료안내</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block  dropdown">
        <a id="dropdownSubMenu1" href="#"
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
		class="nav-link dropdown-toggle">나눔소통</a>
			<ul aria-labelledby="dropdownSubMenu1"
			class="dropdown-menu border-0 shadow"
			style="left: 0px; right: inherit;">
				<li><a href="#" class="dropdown-item">공지사항</a></li>
				<li><a href="#" class="dropdown-item">자주 묻는 질문</a></li>
				<li><a href="#" class="dropdown-item">Q&A</a></li>
			</ul>
      </li>
      <li class="nav-item d-none d-sm-inline-block  dropdown">
        <a id="dropdownSubMenu1" href="#"
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
		class="nav-link dropdown-toggle">병원안내</a>
			<ul aria-labelledby="dropdownSubMenu1"
			class="dropdown-menu border-0 shadow"
			style="left: 0px; right: inherit;">
				<li><a href="#" class="dropdown-item">병원 소개</a></li>
				<li><a href="#" class="dropdown-item">병원 소식</a></li>
			</ul>
      </li>
      <li class="nav-item d-none d-sm-inline-block  dropdown">
        <a id="dropdownSubMenu1" href="#"
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
		class="nav-link dropdown-toggle">회원서비스</a>
			<ul aria-labelledby="dropdownSubMenu1"
			class="dropdown-menu border-0 shadow"
			style="left: 0px; right: inherit;">
				<li><a href="#" class="dropdown-item">마이페이지</a></li>
				<li><a href="#" class="dropdown-item">진료기록</a></li>
				<li><a href="#" class="dropdown-item">로그인</a></li>
				<li><a href="#" class="dropdown-item">회원가입</a></li>
			</ul>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      
      
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">로그인</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">회원가입</a>
      </li>
      
      

     
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item"></a>
          
          
          
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  

  <!-- Content Wrapper. Contains page content -->
  <div>
    <!-- Content Header (Page header) -->
    <div class="">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-12">
          	<div class="card">

				<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1" class=""></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2" class=""></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="3" class=""></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="4" class=""></li>
					</ol>
				<div class="carousel-inner">
					<div class="carousel-item">
						<img class="d-block w-100" src="img/header/1.jpg" alt="First slide">
					</div>
					<div class="carousel-item active">
						<img class="d-block w-100" src="img/header/2.jfif" alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="img/header/3.jfif" alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="img/header/4.jpg" alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="img/header/5.jfif" alt="Third slide">
					</div>
				</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-custom-icon" aria-hidden="true">
							<i class="fas fa-chevron-left"></i>
						</span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-custom-icon" aria-hidden="true">
							<i class="fas fa-chevron-right"></i>
						</span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
</div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
		<div class="container-fluid">
		<!-- 본문 세로4행 -->
					<!-- 본문 세로4행 -->
					<div class="row  top_bottom_blank">
						<div class="col-sm-1"></div>
						<div class="col-sm-2">
							<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">진료예약</button></a><br />
						</div>
						<div class="col-sm-2">
							<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">외래진료</button></a><br />
						</div>
						<div class="col-sm-2">
							<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">진료비관련</button></a><br />
						</div>
						<div class="col-sm-2">
							<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">서류발급관련</button></a><br />
						</div>
						<div class="col-sm-2">
							<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">병원이용관련</button></a><br />
						</div>
						<div class="col-sm-1"></div>
					</div>
					<div class="row">
						<div class="col-sm-2"></div>
						<div class="col-sm-8">
							<div id="accordion">
								<div class="card card-light">
									<div class="card-header">
										<h4 class="card-title w-100">
											<a class="d-block w-100" data-toggle="collapse"
												href="#collapseOne" aria-expanded="true"> 진료 예약을 할 때 알아야 할 사항은? </a>
										</h4>
									</div>
									<div id="collapseOne" class="collapse show"
										data-parent="#accordion" style="">
										<div class="card-body">
										초진 예약시 환자의 인적사항(이름, 주민등록번호, 주소, 전화번호 등)으로 예약이&nbsp;가능합니다.
										</div>
									</div>
								</div>
								
								<div class="card card-light">
									<div class="card-header">
										<h4 class="card-title w-100">
											<a class="d-block w-100" data-toggle="collapse"
												href="#collapseTwo" aria-expanded="true"> 진료 예약을 할 때 알아야 할 사항은? </a>
										</h4>
									</div>
									<div id="collapseTwo" class="collapse"
										data-parent="#accordion" style="">
										<div class="card-body">
										초진 예약시 환자의 인적사항(이름, 주민등록번호, 주소, 전화번호 등)으로 예약이&nbsp;가능합니다.
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										<br/>
										</div>
									</div>
								</div>
								
								<div class="card card-light">
									<div class="card-header">
										<h4 class="card-title w-100">
											<a class="d-block w-100" data-toggle="collapse"
												href="#collapseThree" aria-expanded="true"> 진료 예약을 할 때 알아야 할 사항은? </a>
										</h4>
									</div>
									<div id="collapseThree" class="collapse"
										data-parent="#accordion" style="">
										<div class="card-body">
										초진 예약시 환자의 인적사항(이름, 주민등록번호, 주소, 전화번호 등)으로 예약이&nbsp;가능합니다.
										</div>
									</div>
								</div>
							</div>


						</div>
  	 	</div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  
  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- Default to the left -->
    <strong>대덕병원</strong> 대전광역시 중구 계룡로 846, 3-4층, 대표 : 김형민, 사업자번호 : 000-00-00000, 전화 : 042-000-0000, 팩스 : 042-000-0000&nbsp;&nbsp;
	<a href="#">사이트맵</a>
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
	Copyright &copy; 2022 대덕병원 All rights reserved.
    </div>
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
</body>
</html>
    