<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.*"%>
<%
	//Context명을 동적으로 알아낼수 있음 context==/MyWeb
	//절대경로방식을 쓴다 top과 foot은 왜? 공통모듈이라서
	//ex)     /MyWeb/memo/list.jsp
	String myctx=request.getContextPath(); //myctx에 context경로 저장
	UserVO loginUser=(UserVO)session.getAttribute("loginUser");
	boolean isLogin=(loginUser!=null)?true:false;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>layout</title>
    <link rel="stylesheet" type="text/css" href="<%=myctx%>/css/layout.css">
</head>
<body>
    <div id="wrap" class="container">
        <!-- 헤더: 로고 이미지, 검색폼, 목차 ------------ -->
        <header>
            <!-- 헤더영역 -->
            <a href="<%=myctx%>/index.jsp"><img src="<%=myctx%>/images/ex43image.JPG"></a>
        </header>
        <div class="clear"></div>
        <!-- 네비게이션바 : 메뉴 ---------------------- -->
        <nav>
           <ul>
            <li><a href="<%=myctx%>/index.jsp">Home</a></li>
            <li><a href="<%=myctx%>/member/join.jsp">Signup</a></li>
            <%if(!isLogin){ %>
            <li><a href="<%=myctx%>/login/login.jsp">Signin</a></li>
            <%} else{ %>
            <li><a href="<%=myctx%>/login/logout.jsp">Logout</a></li>
            <%} %>
            <li><a href="<%=myctx%>/member/list.jsp">Users</a></li>
            <li><a href="<%=myctx%>/index.jsp">Board</a></li>
            <%if(isLogin){ %>
            <li><a href="#"><%=loginUser.getUserid()%>님 로그인중...</a></li>
            <%} %>
           </ul>
        </nav>
        <div class="clear"></div>
        <!-- 컨텐츠 영역------------------------------- -->
        <article>