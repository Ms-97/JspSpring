<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function fn_clear(){
	location.href="calculator"
}
</script>
</head>
<body>
<form method="post">
	<table border="1">
		<tr>
			<td colspan="4">
				<input type="text" name="display" style="text-align:right" value="<%out.print(request.getAttribute("result"));%>"/>
			</td>
			</tr>
			
			<tr>
			<td colspan="3">
				<input type="button" name="ac" value="AC" onclick="fn_clear()"/>
			</td>
			<td colspan="1">
				<input type="button" name="division" value="/"/>
			</td>
			</tr>
			
			<tr>
			<td><input type="button" name="num7" value="7"/></td>
			<td><input type="button" name="num8" value="8"/></td>
			<td><input type="button" name="num9" value="9"/></td>
			<td><input type="button" name="multi" value="*"/></td>
			</tr>
			
			<tr>
			<td><input type="button" name="num4" value="4"/></td>
			<td><input type="button" name="num5" value="5"/></td>
			<td><input type="button" name="num6" value="6"/></td>
			<td><input type="button" name="minus" value="-"/></td>
			</tr>
			
			<tr>
			<td><input type="button" name="num1" value="1"/></td>
			<td><input type="button" name="num2" value="2"/></td>
			<td><input type="button" name="num3" value="3"/></td>
			<td><input type="button" name="plus" value="+"/></td>
			</tr>
			
			<tr>
			<td colspan="3">
				<input type="button" name="num0" value="0"/>
			</td>
			<td colspan="1">
				<input type="submit"  value="="/>
			</td>
			</tr>
	</table>
	
	
</form>
</body>
</html>