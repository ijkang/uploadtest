<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
header { font-size: 30px; font-family: '나눔고딕'; text-align: center;}
button { margin-top: 20px;}
</style>
</head>
<body>

<header>보낸 마니또</header>
<table>
   <tr><th>번호</th><th>보낸시간</th><th>내용</th><th>수신여부</th></tr>
 
<c:if test="${total != 0 }">   
<c:forEach var="h" items="${list}">
<tr>
     <td>${rowCnt }</td>
     <td>${h.helpdate}</td>
     <td>${h.context}</td>
     <td>${h.sendcheck}</td>
     </tr>
     <c:set var="rowCnt" value="${rowCnt - 1}"></c:set>
</c:forEach>
</c:if> 
<c:if test="${total == 0}">
 <tr><td colspan="7">데이터가 없습니다</td></tr>
</c:if>
<tr bgcolor="white"><th><button onclick="ajax('helper/helperInsertForm.jsp')">마니또 쓰기</button>
&nbsp;&nbsp;<button onclick="ajax('helper/helperHome.jsp ')">돌아가기</button></th>

</table>
<div align="center" style="font-size: 17px;">
<c:if test="${startPage > pagerPerBlk }">

  <a href="#" onclick="ajax('helpToList.do?pageNum=${endpage-pagePerBlk}')">[이전]</a>
</c:if> 
<c:forEach var="i" begin="${startPage}" end="${endPage}">
<a href="#" onclick="ajax('helpToList.do?pageNum=${i}&mnum=${mnum }')">[${i}]</a>
</c:forEach>
<c:if test="${endPage < totalPage}">
  <a href="#" onclick="ajax('helpToList.do?pageNum=${startPage+pagePerBlk }')">[다음]</a>
</c:if>
</div>
</body>
</html>