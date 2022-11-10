<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*,user.model.*"%>

<link rel="stylesheet" type="text/css" href="../css/layout.css">
<script src="../js/userCheck.js"></script>

<%
	request.setCharacterEncoding("UTF-8");
	String method=request.getMethod();
	out.println("method: "+method+"<br>");
	//get방식 일때는 입력 폼을 보여주고
	//post방식일때는 아이디 사용 가능 여부 결과를 보여주자
	if(method.equalsIgnoreCase("get")){
%>
<div class="container m2" style="margin-top:2em">
	<form name="idf" action="idcheck.jsp" method="post">
		<label for="userid">아이디</label>
		<input type="text" name="userid" id="userid" placeholder="user ID"
		 autofocus="autofocus">
		<button type="button" onclick="id_check()">확 인</button>
	</form>
</div>
<%}else{
		//post 방식이라면 ==> userid값 받아서
		String userid=request.getParameter("userid");
		%>
		<jsp:useBean id="userDao" class="user.model.UserDAO" scope="session"/>
		<%
		boolean isUse=userDao.idCheck(userid);
		if(isUse){
			%>
			<div class='container'>
				<h3>ID로 [<span style='color:red;font-weight:bold;'><%=userid %></span>]을 사용할 수 있습니다</h3>
				<br>
				<button onclick="setId('<%=userid%>')">닫 기</button>
			</div>
			<%
		}else{
			%>
			<div class='container'>
				<h3>ID로 [<span style='color:red;font-weight:bold;'><%=userid %></span>]이미 사용중입니다</h3>
				<br>
				<button onclick="history.back()">닫 기</button>
			</div>
			<%
		}
	}
%>