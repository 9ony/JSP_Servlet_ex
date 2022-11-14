<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.*,java.util.*"%>
    
<script type="text/javascript" src="../js/userCheck.js"></script>

<link rel="stylesheet" type="text/css" href="../css/layout.css">

<jsp:useBean id="userDao" class="user.model.UserDAO" scope="page"/>

<%
  request.setCharacterEncoding("UTF-8");
  String idx = request.getParameter("idx");
  UserVO user = userDao.selectUserByIdx(Integer.parseInt(idx));
%>

<div class="container m2" style="margin-top:2em">
	<form name="delf" action="deleteAccountEnd.jsp" method="post">
		<h3 style="color:'blue'"><%=user.getName()%> 님</h3>
		<h3>삭제를 원하시면 비밀번호를 입력 후 확인을 눌러주세요.</h3>
		<label for="pwd">비밀번호</label>
		<input type="password" name="pwd" id="pwd" placeholder="user pwd"
		 autofocus="autofocus"><br>
		<button type="button" onclick="del_check('<%=user.getPwd()%>','<%=idx%>')">확 인</button>
		<!-- del_check()함수를 통해 user의 비밀번호와 idx값 >> deleteAccountEnd.jsp로 넘겨줌 -->
		<button onclick="self.close()">취 소</button>
	</form>
</div>