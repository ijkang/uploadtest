<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
caption { font-size: 30px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<table border="red 1px solid">
		<caption>이벤트 D-day</caption> 
		<tr><th style="background: red;">Event</th><th style="background: red;">할일</th></tr>
		<c:forEach items="${list }" var="m">
		<fmt:formatDate value="${m.dday }" var="d" pattern="D"/>
		<c:set var="now" value="<%=new Date() %>"/>
		<fmt:formatDate value="${now }" var="n" pattern="D"/>
		<tr><td>D-${d-n }</td><td>${m.memo}</td></tr> 
		</c:forEach>
	</table>
</body>
</html>