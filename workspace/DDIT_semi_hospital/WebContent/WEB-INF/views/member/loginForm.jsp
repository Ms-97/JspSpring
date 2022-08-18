<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Starter</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">

	<div class="hold-transition login-page">
	   <div class="login-box">
		<div class="login-logo">
			<h1><a href="http://www.naver.com" ><img src="https://drive.google.com/uc?export=download&id=1X43Ce5Fc941QhyBXHc-yj0mjiUJPlTss"></a></h1>
		</div>
		<!-- /.login-logo -->
		<div class="card">
		 <div class="card-body login-card-body">
			<p class="login-box-msg"></p>

			<form action="login.do"	method="post">
				<input name="retUrl" value="${retUrl }" type="hidden" />
				<div class="form-group has-feedback">
					<input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요." value="${pastID }">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" name="pwd" placeholder="패스워드를 입력하세요."  value="">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-sm-8">
						<div class="checkbox icheck">
			
						</div>
					</div>
					<!-- /.col -->
					<div class="col-12">
						<button type="submit" class="btn btn-primary btn-block">로그인</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			

			<div class="social-auth-links text-center mb-3">
<p>- OR -</p>

<button type="button" class="btn btn-block btn-danger" onclick="OpenWindow('../member/Tos.html','회원등록',600,700);" >회원등록</button>
<a href=""onclick="window.open('<%=request.getContextPath()%>/member/regist.do', '_blank', 'width=900,height=1000');"class="btn btn-block btn-danger">
<i class=""></i> 회원가입
</a>

</div>

<p class="mb-1">
<a href="register.html" class="text-center">아이디 찾기</a>
</p>

<p class="mb-0">
<a href="register.html" class="text-center">비밀번호 찾기</a>
</p> 
			

		</div>
		<!-- /.login-box-body -->
	  </div>	
	</div>
	<!-- /.login-box -->
	
  </div>    



<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js" ></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
</body>
</html>
    





