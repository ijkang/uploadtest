<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
<link href="../CSS/joinForm.css" rel="stylesheet" type="text/css">
</head><body>

<form action="update.do" method="post">
<%-- <input type="hidden" name="mnum" value="${mem.mnum }"> --%>
<table><caption>회원정보 수정</caption>
	<tr><th>이름</th><td>${member.name }</td></tr>
	<tr><th>별명</th><td><input type="text" name="nic" 
		required="required" value="${member.nic }" ></td></tr>	
		
	<tr><th>아이디</th><td>${member.id }</td></tr>
	
	<tr><th>비밀번호</th><td><input type="password" name="pass"
		required="required" value="${member.pass }"></td></tr>
	<tr><th>비밀번호 확인</th><td><input type="password" name="pass2"
		required="required" value="${member.pass }"></td></tr>
	<tr><th>이메일</th><td><input type="email" name="email" 
		value="${member.email }"	required="required" ></td>
	<tr><th>휴대폰번호</th><td><input type="tel" name="pnum" placeholder="xxx-xxxx-xxxx"
		value="${member.pnum }" required="required"></td></tr>
	<tr><th>주소</th><td><input type="text" name="addr" 
		value="${member.addr }" required="required"></td></tr>
	
	<tr><th colspan="4"> 
		<input type="submit" value="확인">	
	</th></tr></table></form>
</body>
</html>
