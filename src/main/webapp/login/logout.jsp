<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//로그아웃 처리방법
	//[1] 세션에서 특정변수(키)를 제거하는 방법
	//session.removeAttribute("loginUser"); 잘안씀 로그인유저정보는 지워지지만 다른정보는 안지워질수잇어서
	//[2] 세션에 저장된 모든 변수를 제거하는 방법 => 권장
	session.invalidate(); //세션에있는 모든것을 지움
	response.sendRedirect("../index.jsp");//그러고 홈으로이동
%>