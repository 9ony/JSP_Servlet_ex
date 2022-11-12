<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "user.model.*"%>
<% 
	request.setCharacterEncoding("UTF-8");
//useBean액션을 이용해서 UserVO객체와 UserDAO객체를 생성해보자.
%>  
<jsp:useBean id="user" class="user.model.UserVO" scope="page" />
<%-- UserVO user=new UserVO(); 와 동일함 --%>
<jsp:setProperty property="*" name="user" />
<%
	if(user.getIdx()==0||user.getName()==null||user.getUserid()==null){
		response.sendRedirect("../index.jsp");
		return;
	}
%>
<jsp:useBean id="userDao" class="user.model.UserDAO" scope="session"/>
<%
	
	int n=userDao.updateUser(user);
	/* session.setAttribute("loginUser", user); */
	/* 회원정보 수정후 mypage가 세션값으로 가져와서 세션(key:loginuser)를 다시 setting해줌 
	   위와 같이 세팅해주면 modify폼에서 유저의 마일리지와 상태값은 input태그로 되있지않아서
	   myPage에서 0 과 null이뜬다 그래서 myPage에서 해당 idx값으로 db에서 조회해서 업데이트해줌*/
	String str=(n>0)?"수정처리완료":"수정실패";
	String loc=(n>0)?"../login/myPage.jsp":"javascript:history.back()";
%>
<script>
	alert('<%=str%>');
	location.href='<%=loc%>';
</script>