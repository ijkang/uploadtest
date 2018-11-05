<%@page import="dao.ManagerDao"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function rec(){
		opener.frm.id.value=chk.id.value;
		opener.frm.result.value=chk.result.value;
		window.close();
	} 
</script>
<body>
	<form name="chk">
		ID : ${id } 는 ${msg }<p>
		<button onclick="rec()">확인</button>
		<input type="hidden" value=${id } name="id">
		<input type="hidden" value=${result } name="result">
	</form>
</body>
</html>