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




  	</section>-->
	<!-- Main content -->
	<section class="content register-page">
		<div class="register-box">
			<div class="login-logo">
    		 <h1><a href="http://www.naver.com" class="h_logo"><span class="blind">대 덕 병 원</span></a></h1>
  			</div>
			<!-- form start -->
			<div class="card">				
				<div class="register-card-body">
					<form role="form" class="form-horizontal" action="regist" method="post">						
						<input type="hidden" name="picture" />
						
						  <div class="form-group row">
							 <label for="id" class="col-sm-6" style="font-size:0.9em;" >
							 </div>
							 	<span style="color:red;font-weight:bold;">*</span>아이디</label>	
							<div class="col-sm-12 input-group input-group-sm">
								<input name="id" 
									onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);"
								type="text" class="form-control" id="id" placeholder="13글자 영문자,숫자 조합">
								<span class="input-group-append-sm">	
									<button type="button" onclick="idCheck_go();"  class="btn btn-primary btn-block">중복확인</button>
								</span>								
						</div>
													
							
						<div class="col-sm-12 form-group row">
							<label for="pwd" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>비밀번호</label>
							<div class="col-sm-12 input-group-sm">								
								<input class="form-control" name="pwd" type="password" class="form-control" id="pwd"
										placeholder="20글자 영문자,숫자,특수문자 조합" />
							</div>			
							
							
							<div class="col-sm-12 form-group row">
							<label for="pwd" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>비밀번호확인</label>
							<div class="col-sm-12 input-group-sm">								
								<input class="form-control" name="pwd" type="password" class="form-control" id="pwd"
										placeholder="20글자 영문자,숫자,특수문자 조합" />
						</div>
						
							
						
							
					
						
						<div class="fcol-sm-12 orm-group row">
							<label for="name" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>이 름</label>
							<div class="col-sm-12 input-group-sm">								
								<input class="form-control" name="name" type="text" class="form-control" id="name"
										placeholder="이름을 입력하세요"
										onkeyup="this.value=this.value.trim();" />	
						</div>		
						</div>
						<div class="form-group row">
							<label for="name" class="col-sm-12" style="font-size:0.9em;">
							</div>주민번호</label>
							<div class="col-sm-12">	
								<div class="input-group-sm">
									<label class="float-left" style="padding: 0; text-align: center;"></label>										
									<input style="width:45%;" name="phone" type="text" class="form-control float-left" />
									<label class="float-left" style="padding: 0; text-align: center;">&nbsp;-&nbsp;</label>
									<input style="width:45%;" name="phone" type="text" class="form-control float-right" />						
								</div>
							</div>
						</div>		
								
						<div class="col-sm-12 form-group row">
						</div>
							<label for="email" class="col-sm-12" style="font-size:0.9em;">이메일</label>
							<div class="col-sm-12 input-group-sm">
								<input name="email" type="email" class="form-control" id="email"
										placeholder="example@naver.com">
							
						</div>
						<div class="form-group row">
							<label for="phone" class="col-sm-3 control-label">전화번호</label>
							<div class="col-sm-9">	
								<div class="input-group-sm">
									<select style="width:75px;" name="phone" id="phone" class="form-control float-left">
										<option value="">-선택-</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="017">017</option>
										<option value="018">018</option>
									</select>							
									<label class="float-left" style="padding: 0; text-align: center;">&nbsp;-&nbsp;</label>										
									<input style="width:68px;" name="phone" type="text" class="form-control float-left" />
									<label class="float-left" style="padding: 0; text-align: center;">&nbsp;-</label>
									<input style="width:68px;" name="phone" type="text" class="form-control float-right" />						
								</div>
							</div>
						</div>
						
						<div class="card-footer">
							<div class="row">								
								<div class="col-sm-12">
									<button type="button" id="registBtn" onclick="regist_go();" class="btn btn-primary btn-block">가&nbsp;&nbsp;&nbsp;입&nbsp;&nbsp;&nbsp;하&nbsp;&nbsp;&nbsp;기</button>
							 	</div>
							 	
							 	
							
							</div>
						</div>
					</form>					
				</div><!-- register-card-body -->
			</div>
		</div>
	</section>		<!-- /.content -->
</div>
<!-- /.content-wrapper -->	



<form role="imageForm" action="upload/picture" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" 
		   style="display:none;" onchange="picture_go();" />
	<input id="oldFile" type="hidden" name="oldPicture" value="" />
	<input type="hidden" name="checkUpload" value="0" />	
</form>

<script>
	function picture_go(){
		//alert("file change");
		var form = $('form[role="imageForm"]');
		var picture = form.find('[name=pictureFile]')[0];
		
	   //이미지 확장자 jpg 확인
	   var fileFormat = picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
		if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
	   		alert("이미지는 jpg/jpeg 형식만 가능합니다.");
	   		picture.value="";      
	   		return;
		} 

		//이미지 파일 용량 체크
	   if(picture.files[0].size>1024*1024*1){
	      alert("사진 용량은 1MB 이하만 가능합니다.");
	      picture.value="";
	      return;
	   };
	   
		
		//alert(picture.value);
		//업로드 확인변수 초기화 (사진변경)
   		form.find('[name="checkUpload"]').val(0);	
		document.getElementById('inputFileName').value=picture.value;
		
		if (picture.files && picture.files[0]) {
		  var reader = new FileReader();
		  reader.onload = function (e) {
			  $('div#pictureView').css({
			     'background-image':'url('+e.target.result+')',
			     'background-position':'center',
			     'background-size':'cover',
			     'background-repeat':'no-repeat'
			  });
			}
			  
		 reader.readAsDataURL(picture.files[0]);
	   }
	}
	
	function upload_go(){
		//alert("upload btn click");
		if(!$('input[name="pictureFile"]').val()){
			alert("사진을 선택하세요.");
			$('input[name="pictureFile"]').click();
			return;
		}
		if($('input[name"checkUpload"]').val()==1){
			alert("이미업로드 된 사진입니다.");
			return;
		}
		
	var formData = new FormData($('form[role="imageForm"]')[0]);
	$.ajax({
		url:"picture..do",
		data:formData,
		type:"post",
		processData:false,
		contentType:false,
		success:function(data){
			
		},
		error:function(error){
			alert("현재 사진 업로드가 불가합니다. \n 관리자에게 연락바랍니다.")
		}
	}); ㅅ
		
		
	}
	
	
</script>
  
<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js" ></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
</body>
</html>
    





