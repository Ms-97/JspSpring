<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function fn_num(e){
let oldStr = document.querySelector("#display").value;
let newStr = e.target.value;
document.querySelector('#display').value = oldStr + newStr;
   
}

</script>
</head>
<body>
<form method="post">
   <table border="1">
      <tr>
         <td colspan="4">
            <input type="text" id="display" name="display" style="text-align:right"  />
         </td>
         </tr>
         
         <tr>
         <td colspan="3">
            <input type="button" name="ac" value="AC"/>
         </td>
         <td colspan="1">
            <input type="button" name="division" value="/"onclick="fn_num(event)"/>
         </td>
         </tr>
         
         <tr>
         <td><input type="button" name="num7" value="7" onclick="fn_num(event)"/></td>
         <td><input type="button" name="num8" value="8"onclick="fn_num(event)"/></td>
         <td><input type="button" name="num9" value="9"onclick="fn_num(event)"/></td>
         <td><input type="button" name="multi" value="*"onclick="fn_num(event)"/></td>
         </tr>
         
         <tr>
         <td><input type="button" name="num4" value="4"onclick="fn_num(event)"/></td>
         <td><input type="button" name="num5" value="5"onclick="fn_num(event)"/></td>
         <td><input type="button" name="num6" value="6"onclick="fn_num(event)"/></td>
         <td><input type="button" name="minus" value="-"onclick="fn_num(event)"/></td>
         </tr>
         
         <tr>
         <td><input type="button" name="num1" value="1"onclick="fn_num(event)"/></td>
         <td><input type="button" name="num2" value="2"onclick="fn_num(event)"/></td>
         <td><input type="button" name="num3" value="3"onclick="fn_num(event)"/></td>
         <td><input type="button" name="plus" value="+"onclick="fn_num(event)"/></td>
         </tr>
         
         <tr>
         <td colspan="3">
            <input type="button" name="num0" value="0"onclick="fn_num(event)"/>
         </td>
         <td colspan="1">
            <input type="submit"  value="="/>
         </td>
         </tr>
   </table>
   
   
</form>
</body>
</html>