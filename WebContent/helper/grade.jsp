<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../check/sessionChk.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>

<body>
	<form action="../helpRead.do">
	<h3>기분을 평가해주세요 ${wnum } 글번호${wnum }</h3>
	<label for="m1">아주좋음</label><input id="m1" type="radio" value="10">
	<label for="m2">좋음</label><input id="m2" type="radio" value="5">
	<label for="m3">보통</label><input id="m3" type="radio" value="0">
	<label for="m4">나쁨</label><input id="m4" type="radio" value="-5">
	<label for="m5">아주나쁨</label><input id="m5" type="radio" value="-10">
	<p>
	<input type="hidden" value="<%=request.getParameter("wnum") %>" name="wnum">
	<input type="submit" value="확인">
	</form>
</body>
</html>