<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp"/>
<script type="text/javascript">
	function check(){
		if(!form.idx.value){
			alert('사번을 입력하세요');
			form.idx.focus();
			return;
		}
		if(!form.java.value){
			form.java.value=0;
		}else if(form.java.value>100){
			alert('0~100 숫자만 입력해주세요');
			form.java.focus();
			return;
		}
		if(!form.db.value){
			form.db.value=0;
		}else if(form.db.value>100){
			alert('0~100 숫자만 입력해주세요');
			form.db.focus();
			return;
		}
		if(!form.jsp.value){
			form.jsp.value=0;
		}else if(form.jsp.value>100){
			alert('0~100 숫자만 입력해주세요');
			form.jsp.focus();
			return;
		}
		form.submit();
	}
</script>
<style>
	td{
		text-align:center;
		padding : 10px;
	}
</style>
<div class="container">
	<h1>성적입력</h1>
	<form name="form" action="result.jsp" method="post">
		<table border="1">
			<tr>
				<td colspan="2" width="150px">사번</td>
				<td><input type="number" name="idx"></td>
			</tr>
			<tr>
				<td rowspan="3">과목</td>
				<td>Java</td>
				<td><input type="number" name="java" id="sub"></td>
			</tr>
			<tr>
				<td>Database</td>
				<td><input type="number" name="db" id="sub"></td>
			</tr>
			<tr>
				<td>JSP</td>
				<td><input type="number" name="jsp" id="sub"></td>
			</tr>
			<tr>
				<td colspan="3"><button type="button" onclick="check()">저장</button></td>
			</tr>
		</table>
	</form>
</div>


<jsp:include page="/foot.jsp"/>