<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.*"%>
<!-- adminCheckModule.jsp 
	관리자 여부를 체크하는 모듈 (관리자는 status값이 9)
	1. 로그인이 되어있어야 하고=>loginCheckModule
	2. 정지회원은 아니어야 하고=>loginCheckModule
	3. status값이 9 여야
-->
<%@ include file="/login/loginCheckModule.jsp" %>
<%
	if(user.getStatus()!=9){
		String str="관리자계정만 가능합니다";
		%>
		<script>
			alert('<%=str%>');
			location.href="<%=request.getContextPath()%>/index.jsp";
		</script>
		<%
		return;
	}
	
%>