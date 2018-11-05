<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> 
	반환된 값..<p>
	<c:forEach var="i" begin="25" end="30">
	<c:forEach items="${list}" var="s">
		<fmt:formatDate value="${s.dday }" pattern="d" var="d"/><Br> 
		<c:if test="${d==i}"> 
		</c:if>
	
	</c:forEach>
	</c:forEach>
</body>   
</html>