<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="../check/sessionChk.jsp"%> --%>
<!DOCTYPE html><html> <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
caption { margin-bottom: 20px;} 
table {border:1px solid black;}
tr{border:1px solid black;}
th{border:1px solid black;}
td{border:1px solid black};
</style>
<title>Insert title here</title></head>
<body>
<table>   
<caption>꿀단지 BEST</caption>
   <tr style="background-color:aqua;"><th>닉네임</th><th>제목</th><th>추천횟수</th><th>조회수</th></tr>
<c:if test="${total != 0 }">   
<c:forEach var="h" items="${list}">
<tr>
     <td>${h.nic}</td> 
     <td><a href="#" onclick="ajax('view.do?wnum=${h.wnum}&mnum=${h.mnum }&pageNum=${currentPage}')">${h.title}</a></td>
     <td>${h.good}</td>
     <td>${h.click}</td>
     </tr>  
</c:forEach>
</c:if>
<c:if test="${total == 0}">
 <tr><td colspan="7">데이터가 없습니다</td></tr>
</c:if>
</table>
</body>
</html>