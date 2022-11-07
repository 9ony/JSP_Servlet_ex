<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,memo.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/memo.css">
</head>
<body>
<!-- MemoListServlet에서 저장한 memoArr을 꺼내자 -->
<div id="wrap">
<table border="1">
<tr>
	<th colspan="4"><h2>::한줄 메모장 목록::</h2></th>
</tr>
<tr>
	<td width="10%"><b>글번호</b></td>
	<td width="60%"><b>메모내용</b></td>
	<td width="20%"><b>작성자</b></td>
	<td width="10%"><b>수정|삭제</b></td>
</tr>
<%
	//내장객체: request => HttpServletRequest
	Object obj = request.getAttribute("memoarr");
	/* out.println(obj); */
	/* obj 형변환 >> List로 */
	List<MemoVO> memoArr=(List<MemoVO>)obj;
	if(memoArr!=null){
		for(MemoVO memo:memoArr){
%>
	<tr>
		<td><b><%=memo.getIdx()%></b></td>
		<td><b><%=memo.getMsg()%><span class='mdate'>[ <%=memo.getWdate()%> ]</span></b></td>
		<td><b><%=memo.getName()%></b></td>
		<td><b><a href="MemoUpdate?idx=<%=memo.getIdx()%>">수정</a>|<a href="MemoDelete?idx=<%=memo.getIdx()%>">삭제</a></b></td>
	</tr>
<%
		}//for-------------
	}else{
		out.println("<b>잘못된 경로 입니다<b>");
	}
%>
</table>
</div>
</body>
</html>