<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<a href="ex09_response.jsp">돌아가기</a>
<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	out.println(userid+"<br>"+pwd);
	//유효성 체크
	if(userid==null||pwd==null){
		response.sendRedirect("ex09_response.jsp");
		//브라우저의 url을 ex09_response.jsp로 바꾸어서 새롭게 요청을 보내는 방식으로 이동한다
		return;
	}
	if(userid.equals("") ||userid.trim().isEmpty()){
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}
	if(userid.equalsIgnoreCase("killer")){
		response.sendError(response.SC_FORBIDDEN);
		return;
	}
%>