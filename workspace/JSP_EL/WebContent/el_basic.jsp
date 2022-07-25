<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.jsp.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("message","pageContext message");
	request.setAttribute("message","request message");
	session.setAttribute("message","session message");
	application.setAttribute("message","application message");
	
	pageContext.setAttribute("num",1);
	
	pageContext.setAttribute("str","1,2,3");
	
	MemberVO member = new MemberVO();
	member.setId("mimi");
	member.setPwd("mimi");
	
	request.setAttribute("member",member);
	
	Map<String, String> dataMap = new HashMap<String,String>();
	dataMap.put("key","123");
	pageContext.setAttribute("map", dataMap);
	
	List<String> dataList = new ArrayList<String>();
	dataList.add("1234");
	pageContext.setAttribute("list", dataList);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>attribute message : ${sessionScope.message}</h1>
	<h1>parameter message : ${param.message}</h1>
	
	<ul>//연산자
		<%-- <li>  <% out.print(Integer.parseInt((String)pageContext.getAttribute("num"))+1); %> --%>
		<li> 산술연산 : ${num+1}</li>
		<li> 문자열 더하기 : ${num}${message }</li>
		<li> 비교연산 : ${num ge 3 } </li> <%-- (ge 는 >= 라고 생각하면됨) --%>
		<li> 유무연산 : ${empty num },${not empty requestScope.member}		
	</ul>
	
	<ul>//메소드 호출
		<li>${str}</li> <%-- out.println(pageContext.getAttribute("str")); --%>
		<li>일반메소드 호출 :${str.split(",")[2] }</li>
		<li>아이디 : ${member.getIdnPwd()}</li>
		<li>아이디 : ${member.idnPwd}</li>
		
		<li>Map : ${map.get("key")}		
		<li>Map : ${map.key}</li>
		
		<li>List : ${list.get(0)}</li>
		<li>List : ${list[0]}
	</ul>
</body>
</html>