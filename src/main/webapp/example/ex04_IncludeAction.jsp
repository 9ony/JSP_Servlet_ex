<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>include 액션을 이용해 ex03.jsp페이지를 포함시켜 봅시다!</h1>
<h2>include액션은 소스를 포함시키는 방식이 아니라, 실행결과를 포함시키는 방식이다.</h2>
<h3>JSP흐름을 ex03.jsp로 이동시켜 그 실행 *결과물*을 현재 위치에 포함시킨다</h3>

<hr color='blue'>

<%-- <jsp:include page="ex03.jsp"></jsp:include> --%>
<!-- 보통 위아니면 밑에처럼 include를 사용한다. -->
<jsp:include page="ex03.jsp"/>
<!-- 스페이스바or 엔터등 사이에 공백을주면 에러가난다 그러면 -->
<%-- 
<jsp:include page="ex03.jsp">
</jsp:include> 
--%>
<!-- 공백안에 jsp:param 을넣어 표준을 지켜야함 -->
<%-- 
<jsp:include page="ex03.jsp">
	<jsp:param value="1" name="idx"></jsp:param>
</jsp:include> 
--%>