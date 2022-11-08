<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 1 --%>
<%
for(int i=0; i<5; i++){%>
	<%="<h1>Hello JSP<h2>"%>
	<%}%>
<%-- 2 --%>
<%
int i=1;
while(i<10){
	for(int j=1;j<10;j++){%>
		<%="<h3>"+i+"*"+j+"="+(i*j)+"</h3>" %>
	<%}
	i++;
}
%>
<%-- 3 --%>

<table border="1" padding='2px;'>
<%for(int dan=1;dan<10;dan++){%><th><%=dan %>단</th><%} %>
<%for(i=1;i<10;i++){%>
	<tr>
	<%for(int j=1;j<10;j++){%>
		<%="<td>"+i+"*"+j+"="+(i*j)+"</td>"%>
	<% }%>
	</tr>
<%}%>
</table>