<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//단일 값 받아오기
	String id = request.getParameter("userid");
	String pw = request.getParameter("passwd");
	String gender = request.getParameter("gender");
	String photo = request.getParameter("photo");
	String job = request.getParameter("job");
	String intro = request.getParameter("intro");
	String secret = request.getParameter("secret");
	
	//다중값 받아오기 (hobby,long)
	//String[] getParameterValues("파라미터이름")
	String[] hobbies=request.getParameterValues("hobby");
	String[] langs=request.getParameterValues("lang");
	
	
	
%>

<ul>
	<li>이름: <%=id %></li>
	<li>비밀번호: <%=pw %></li>
	<li>성별: <%=gender %></li>
	<li>파일명: <%=photo %></li>
	<li>직업: <%=job %></li>
	<li>자기소개: <%=intro %></li>
	<li>비밀: <%=secret %></li>
	<li>취미: 
		<%if(hobbies!=null){
			for(String hobby:hobbies){
				out.println(hobby+", ");		
			}
		}
		%>
	</li>
	<li>사용가능 언어: 
		<%if(langs!=null){
			for(String lang:langs){
				out.println(lang+", ");		
			}
		}
		%>
	</li>
</ul>

<hr color='red'>

<h1>request의 주요 메서드</h1>
<%
	String server=request.getServerName();//서버 도메인명
	int port=request.getServerPort(); //서버 포트번호
	StringBuffer buf=request.getRequestURL(); //요청한 url (리턴타입: Stringbuffer)
	String url = buf.toString();
	String uri = request.getRequestURI();//요청한 url의 컨텍스트명 이후 url 반환 >> uri
	String myctx = request.getContextPath();//"/MyWeb" 컨텍스트명 반환
	String queryString = request.getQueryString();
	String cip = request.getLocalAddr();
	String protocol = request.getProtocol();
	
	//컨텍스트명과 확장자.jsp를 제외한 url생성
	int i=uri.indexOf(".jsp");
	int end=0;
	if(i>0)
		end=i;
	String str=uri.substring(myctx.length(),end);
	
	String str2 = uri.replace(myctx+"/","").replace(".jsp","");
	
	String str3 = request.getServletPath();

%>
<h2>서버 도메인명: <%=server %></h2>
<h2>서버 포트번호: <%=port %></h2>
<h2>요청 URL: <%=url %></h2>
<h2>요청 URI: <%=uri %></h2>
<h2>컨텍스트명: <%=myctx %></h2>
<h2>Query String: <%=queryString %></h2>
<h2>클라이언트 IP: <%=cip %></h2>
<h2>프로토콜: <%=protocol %></h2>
<hr color='blue'>

<h2>바꾼 URI str1: <%=str %></h2>
<h2>바꾼 URI str2: <%=str2 %></h2>
<h2>바꾼 URI str3: <%=str3 %></h2>