<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<jsp:include page="/top.jsp"/>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("idx");
	if(id==null||id.trim().isEmpty()){
		response.sendRedirect("ex06.jsp");
		return;
	}
	int java=Integer.parseInt(request.getParameter("java"));
	int db=Integer.parseInt(request.getParameter("db"));
	int jsp=Integer.parseInt(request.getParameter("jsp"));
	int avg = (java+db+jsp)/3;
%>
<style>
	td{
		text-align:center;
		padding : 10px;
	}
	p{
		width:180px;
		text-align:left;
	}
</style>
<div class="container">
	<h1>처리결과</h1>
	<form name="form" action="result.jsp" method="post">
		<table border="1">
			<tr>
				<td colspan="2" width="150px">사번</td>
				<td><p><%=id%></p></td>
			</tr>
			<tr>
				<td rowspan="3">과목</td>
				<td style="text-align:center">Java</td>
				<td><p><%=java%></p></td>
			</tr>
			<tr>
				<td>Database</td>
				<td><p><%=db%></p></td>
			</tr>
			<tr>
				<td>JSP</td>
				<td><p><%=jsp%></p></td>
			</tr>
			<tr>
				<td colspan="2">평균</td>
				<td><p><%=avg %></p></td>
			</tr>
			<tr>
				<td colspan="3"><button type="button" onclick="location.href='ex06.jsp'">입력화면</button></td>
			</tr>
		</table>
	</form>
</div>


<jsp:include page="/foot.jsp"/>