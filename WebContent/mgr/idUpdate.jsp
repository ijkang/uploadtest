<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%=request.getParameter("mnum") %>
<%=request.getParameter("nic") %>
	
<form action="../nickChange.do" onsubmit="return chk()">
		변경할 닉네임 : <input type="text" name="nic"> 
		<p>
			변경 사유 : <select><option>부적절한 닉네임</option>
				<option>비속어 닉네임</option></select>
		<p>
			<input type="submit" value="변경">
	</form>
</body>
</html>