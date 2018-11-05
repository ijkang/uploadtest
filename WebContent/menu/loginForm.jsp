<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	// function openJoin(url) {
	// 	var name = '_blank';
	// 	var specs = 'menubar=no,status=no,toolbar=no';
	// 	var newWindow = window.open(url, name, specs);
	// 	newWindow.focus();
	// }

	// function getReturnValue(returnValue) {
	// 	alert(returnValue);
	// }

	// $('#openNewWindowButton').click(function() {
	// 	alert("눌렀음");
	// 	openNewWindow('/wwwn.naver.com');
	// });
</script>
<title>Insert title here</title>
</head>
<body>
	<form action="memberLogin.do" method="post">
		<input size="18px" type="text" name="id"
			required="required" placeholder="아이디" >
		<p>
		<input type="password" size="18px" name="pass" required="required" placeholder="비밀번호" >
		<p>
			<input type="submit" value="확인" onclick="loacation.href='login.do'"
			style="margin-left: 125px;"	>
	</form>

	<button id="openNewWindowButton"
		onclick="openJoin('./join/joinForm.jsp')"
		style="margin-left: 100px;">회원가입</button>
</body>
</html>