<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	div { width: auto; text-align: center;}
	table {
	background-color: yellow; border-collapse: collapse; text-align: center; width: 100%;
}
	th{border-bottom: 1px gray dotted ;} 
	td{border-bottom: 1px gray solid ; height: 70px;}
 
</style>
<title>Insert title here</title>
</head> 
<body>
<c:forEach items="${list }" var="m">
<fmt:formatDate value="${m.dday }" var="d" pattern="Y-M-d"/>
<table>
<tr><th>${d } 할일</th></tr><tr><td>${m.memo }</td></tr> 
</table>
<div><button onclick="location.href='memoDelete.do?wnum=${m.wnum}'">삭제</button></div><tr> 
</c:forEach>
</body>
</html>