<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
	response.setStatus(200); //오류아니라고 처리 200이 정상임
%>
<script>
	alert('<%=exception.getMessage()%>');
	history.back();
</script>