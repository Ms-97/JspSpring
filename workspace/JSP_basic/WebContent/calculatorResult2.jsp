<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
table {
	border-collapse: collapse;
	border: lightgray;
}

input[type=text] {
	width: 245px;
	height: 20px;
}
#zAC {
	border: 1px solid black;
	width: 188px;
	height: 40px;
}
input[type=button] {
	border: 1px solid black;
	width: 60px;
	height: 40px;
}
input[type=submit] {
	border: 1px solid black;
	width: 60px;
	height: 40px;
}
#z0 {
	width: 188px;
	height: 40px;
}

.num {
	background-color: gray;
}
.op {
	background-color: pink;
}
.ac {
	background-color: orange;
}


</style>

<script>
$(document).ready(function () {
	for(let i=0; i<16; i++){
		if(i==1 || i==5 || i==9 || i==13){
			$('input[name="'+i+'"]').attr('class','op');
		}else if(i==0 || i==15){
 			$('input[name="'+i+'"]').attr('class','ac');
		}else{
			 $('input[name="'+i+'"]').attr('class','num');
		}
 	}
	
	
	
// 	if(value="÷" || value="×" || value="-" || value="+"){
// 		$('input[type="button"]').attr('class','op'));
// 	}else{            
// 		$('input[type="button"]').attr('class','num'));			
// 	}    
});

function fn_num(e) {
	let oldStr = document.querySelector('#display').value;
	let newStr = e.target.value;
	document.querySelector('#display').value = oldStr + newStr;
}

function fn_clear(){
	location.href = "calculator";
}

</script>

</head>
<body>
	<%!
String[][] data = {{"AC","/"},
				   { "7","8","9","*"},
              	   {"4","5","6","-"},
              	   {"1","2","3","+"},
              	   {"0","="}};	
              	   %>



<table border="1">
	<tr>
		<td colspan="4">
		<input type="text"  name="display" id="display" style="text-align:right" value="<%out.print(request.getAttribute("result"));%>"/>
		</td>
	<%int num=0;%>
	<%for(int i=0;i<data.length;i++){%>
	<tr>
	<%for(int j=0; j<data[i].length; j++){%>
		<%if(data[i][j] == data[4][0] || data[i][j] == data[0][0]) {%>
			<td colspan="3">
			<input type="button" id="<%="z"+data[i][j] %>" value="<%=data[i][j]%>"/>
			</td>
		<%}else {%>
	  	<td><input type="button" value="<%=data[i][j] %>"/></td>
	  	<%}%> 
	<%num++;}%>
	</tr>
	<%}%>
</table>
</body>
</html>