<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,memo.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메모 수정</title>
<link rel="stylesheet" type="text/css" href="css/memo.css">
<script type="text/javascript">
	function check(){
		/* window.document << 는 생략해도됨 html구조 보려고 한것 */
		if(window.document.frm.name.value==""){
			alert('이름을 입력하세요');
			frm.name.focus();
			return;
		}
		if(!frm.msg.value){
			alert('메모내용을 입력하세요')
			frm.msg.focus();
			return;
		}
		if(frm.msg.value.length>100){
			alert('메모 내용은 100자까지만 가능해요');
			frm.msg.select();
			return;
		}
		frm.submit();
	}
</script>
</head>
<body>
<!-- /MyWeb/memo/input.html=> 현재디렉토리
	/MyWeb/MemoAdd 로 설정할거임!
 -->
 <%
 	MemoVO vo=(MemoVO) request.getAttribute("memo");
 	if(vo==null){
 		%>
 		<script>
 			alert("값이 없어요");
 			history.back();
 		</script>
 		<%
 	}
 %>
	<div id="wrap">
		<form name="frm" action="MemoEdit" method="post">
			<table border="1">
				<tr>
					<th colspan="2"> <h1>:: 메모 수정::</h1></th>
				</tr>
				<tr>
					<td width="20%"><b>번호</b></td>
					<td width="40%">
						<input type="text" name="idx" value="<%=vo.getIdx()%>" readonly placeholder="idx"
						> 
						
					</td>
				</tr>
				<tr>
					<td width="20%"><b>작성자</b></td>
					<td width="80%">
						<input type="text" name="name" value="<%=vo.getName()%>"> 
					</td>
				</tr>
				<tr>
					<td width="20%"><b>메모내용</b></td>
					<td width="80%">
						<input type="text" name="msg" value="<%=vo.getMsg()%>"> 
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="check()">글 수정</button>
						<!-- 버튼타입을 button으로 변경
							이유 : check함수에 return을 넣어도 submit을 수행하기 때문에
								  함수 check()에서 서브밋을 수행하자!
						 -->
						<button type="button" onclick="location.href='MemoList'">수정취소</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>