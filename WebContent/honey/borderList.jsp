<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../check/sessionChk.jsp"%>
<!DOCTYPE html>
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/honey.css">
</head>
<body> 
<c:if test="${control==5}">
<script type="text/javascript">

	ajax('view.do?wnum=${wnum}');
	
</script>
</c:if>
<table>
<caption>꿀단지 목록</caption>
   <tr><th>글번호</th><th>ID</th><th>닉네임</th> 
   <th>제목</th>
   <th>추천횟수</th><th>조회수</th><th>작성날짜</th></tr>
<c:if test="${total != 0 }">   
<c:forEach var="h" items="${list}">

 <tr><td>${h.wnum}</td>
     <td>${h.id}</td>
     <td>${h.nic}</td>
<%--      <td><a href="ajax('view.do?mnum='${h.mnum}'&pageNum='${currentPage}'')">${h.title}</a></td> --%>
     <td><a href="#" onclick="ajax('view.do?wnum=${h.wnum}&mnum=${h.mnum }&pageNum=${currentPage}')">${h.title}</a></td>
     
     <td>${h.good}</td>
     <td>${h.click}</td>
     <td>${h.dday}</td>
    
</c:forEach>
</c:if> 
<c:if test="${total == 0}">
 <tr><td colspan="7">데이터가 없습니다</td></tr>
</c:if>
<tr bgcolor="white"><th ><button onclick="ajax('honeyBorder.do')">글쓰기</button></th>

</table>
<div align="center" style="font-size: 17px;">
<c:if test="${startPage > pagerPerBlk }">

<%--   <a href="ajax('list.do?pageNum=${endpage-pagePerBlk}')">[이전]</a> --%>
  <a href="#" onclick="ajax('list.do?pageNum=${endpage-pagePerBlk}')">[이전]</a>
</c:if>
<c:forEach var="i" begin="${startPage}" end="${endPage}">
<a href="#" onclick="ajax('list.do?pageNum=${i}')">[${i}]</a>
</c:forEach>
<c:if test="${endPage < totalPage}">
  <a href="#" onclick="ajax('list.do?pageNum=${startPage+pagePerBlk }')">[다음]</a>
</c:if>
</div>
</body>
</html>