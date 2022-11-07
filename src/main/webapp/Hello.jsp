<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.time{
		color:brown;
	}
</style>
</head>
<body>
	<h1>Hello JSP</h1>
	<h1>안녕 제이에스피</h1>
	<hr color="red">
	<%
		java.util.Date today=new java.util.Date();
		String str=today.toString();
		out.println("<h2 class='time'>"+str+"</h2>");
	%>
</body>
</html>