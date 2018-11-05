<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	legend{text-shadow: 2px 2px 0px #eee, 4px 4px 0px #000; font-size: 40px; text-align: center;}
	fieldset { text-align: center; width: 40%; margin : 100px 30% 0 30%;}
	table{ margin : 0 0 0 60px;}
	#button{ margin : 0 0 0 40px;}
</style>
</head>
<body>
	<c:if test="${msg ne null }">
	<script type="text/javascript">
			alert("회원가입 성공 입니다"); 
			window.close()
	</script>
	</c:if> 
	<form action="../mgrLogin.do" method="post" >
		<fieldset>
			<legend>Administrator Login</legend>
			<table>
				<tr>
					<th>ID</th>
					<td><input type="text" name="id" required="required"></td>
				</tr><tr>
					<th>Password</th>
					<td><input type="password" name="password" required="required"></td>
				</tr><tr>
					<td colspan="2"><input id="button" type="submit" value="로그인">
						<input id="button" type="button" value="관리자아이디 생성"
						onclick="window.open('mgrJoinForm.jsp','window팝업','width=400,height=300,menubar=no,status=no,toolbar=no,resizable=no,left=500,top=200');"></td>
				</tr>
			</table>
		</fieldset>
	</form> 
</body>
</html>