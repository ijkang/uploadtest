<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#content{margin: 30% 30% 0 30%;}
</style>
<script type="text/javascript">
function chk(){
	if(frm.pass.value != frm.dbPass.value){
		alert("틀렸어 인마!");
		frm.pass.focus();
		frm.pass.value ="";
		return false;	
	}
	
}
</script>
</head>
<body>
<div id="content">

<form action="delete.do" method="post" name="frm" onsubmit="return chk()">
<input type="hidden" name="wnum" value="${wnum}">
<input type="hidden" name="dbPass" value="${dbPass}">
<input type="hidden" name="pageNum" value="${pageNum}">

<h3>비밀번호를 입력하세요</h3>

<tr><th><input type="password" name="pass" required="required"></th><th><input type="submit" value="확인"></th>
<th><input type="button" value="목록으로" onclick="ajax('list.do?pageNum=${pageNum}')"></th></tr>

</form>

</div>

</body>
</html>