<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/honey.css">
</head> 
<body>  
<div id="left"></div>
<div id="center">
<c:forEach var="h" items="${list}">
 <div id="nic">익명</div><div id="content2">${h.content2}</div><p>
</c:forEach> 
</div>
</body>
</html>
