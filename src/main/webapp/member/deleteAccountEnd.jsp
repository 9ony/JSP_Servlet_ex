<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.*"%>
<jsp:useBean id="userDao" class="user.model.UserDAO" scope="session" />
<%
	UserVO user=(UserVO)session.getAttribute("loginUser");
	int n = userDao.deleteUser(Integer.parseInt(request.getParameter("idx")));
	
	if(n>0){%>
		<%if(user.getStatus()!=9){//어드민이 아닐경우%>
			<script>
				alert('탈퇴완료');
				opener.parent.location="/MyWeb";
				<%@ include file="/login/logout.jsp" %>
				opener.parent.location.reload();
			</script>
		<%}else{//어드민일경우 삭제후 myPage새로고침%>
			<script>
				alert('삭제완료');
				opener.parent.location.reload();//부모창을 새로고침한다!
			</script>
	<%}
	}
	else{%>
		<script>alert('존재하지 않은 계정입니다.');</script>
	<%}//if-------------	
%>
<script>window.close();</script>