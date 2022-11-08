<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.text.*"%>
<!-- page directive (page 지시어) -->
<!-- 1. html 주석 -->
<h1>처음 해보는 JSP</h1>
<% //scriptlet 태그 : 이안에는 자바코드 기술
	/*2.자바주석 장문 */
	//단문주석
	Date today=new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String str=sdf.format(today);
	//out: JspWriter타입
	out.println("<h2>"+str+"</h2>");
%>

<%-- JSP 주석 
	<%= %> : 출력식(expression) => out.println(변수) 과 동일하다.
--%>
<h2 style="color:tomato"><%=str%></h2>