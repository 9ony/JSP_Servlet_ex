<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" info="에러 처리하는 방법을 알아보자"%>
<%@ page errorPage = "ex10_myerror.jsp" %>
<%-- 이 페이지에서 에러가 발생하면 myerror.jsp페이지에서 해당 에러를 
처리해서 보여주겠다는 의미. 그러면 myerror.jsp페이지에서는 **반드시
isErrorPage속성값을 true**로 주어야 한다. 그래야 exception내장객체를
사용할 수 있다. 
--%>

<h1>JSP에서 발생된 에러를 처리해봅시다.</h1>
<h2><%= this.getServletInfo() %></h2>
<%
	Random ran=new Random();
	int num=ran.nextInt(100)+10;
%>
<h3>랜덤한 정수<%=num %></h3>
<%
//일부러 에러유도함 error페이지 테스트
int b=num/0; //ArithmeticException
out.println("b"+b);
%>