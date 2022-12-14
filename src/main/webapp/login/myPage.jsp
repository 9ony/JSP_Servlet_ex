<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.*" %>
<!-- 로그인 체크모듈 포함------------------------------------ -->
<%@ include file="/login/loginCheckModule.jsp" %>
<!-- --------------------------------------------------- -->
<script type="text/javascript" src="../js/userCheck.js"></script>

<jsp:include page="/top.jsp" />
<% 
	//modify에서 회원수정후 마이페이지에서 수정전정보를 보여줘서 user를 업데이트해줌
 	int idx=user.getIdx();
	UserDAO userDao=new UserDAO();
	user=userDao.selectUserByIdx(idx);
 %>
<div class="container">
	<h1><%=user.getName()%>님 정보</h1>
	<p>회원 인증 페이지- 로그인 해야 들어올 수 있는 페이지</p>
	<ul style="list-style-type: none">
		<li>아이디: <b><%=user.getUserid() %></b> </li>
		<li>연락처: <b><%=user.getAllHp()%></b></li>
		<li>마일리지:<b><%=user.getMileage()%></b> </li>
		<li>회원상태:<b><%=user.getStatusStr()%></b> </li>
		<li>주소: <b><%=user.getAllAddr()%></b></li>
	</ul>
	<button onclick="location.href='../member/modify.jsp'">회원정보 수정</button>
	<button onclick="open_delcheck(<%=user.getIdx()%>)">회원탈퇴</button>
</div>

<jsp:include page="/foot.jsp" />