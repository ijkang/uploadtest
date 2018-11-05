<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
header {	font-size: 30px;	font-family: '나눔고딕';	text-align: center;}
button {	margin-top: 20px;}
table {
	border-collapse: collapse;
}
/* #content:HOVER{background-color: white; color: black;}  */
/* #read{color: gray;} */
/* #unread{color: blue;} */
/* *{font-size: 10px;} */
</style>
</head>
<body>
	<header>받은 마니또</header>
	<table>
		<tr>
			<th>번호</th>
			<th>전송시간</th>
			<th>내용</th>
			<th>평가</th>
		</tr>
		<c:if test="${total != 0 }">
			<c:forEach var="h" items="${list}">
			<c:if test="${h.sendcheck eq 'Y'}">
				<tr id="read">
					<td>${rowCnt }</td>
					<td>${h.helpdate}</td>
					<td>${h.context}</td>
					<td>완료</td>
				</tr>
			</c:if>
			<c:if test="${h.sendcheck eq 'N'}">
					<tr id="unread">
					<td>${rowCnt }</td>
					<td>${h.helpdate}</td>
					<td id="content"><a href="#" onclick="window.open('helper/grade.jsp?wnum=${h.wnum}')">${h.context}</a></td>
					<td>${h.sendcheck}</td>
				</tr>
			</c:if>
				<c:set var="rowCnt" value="${rowCnt - 1}"></c:set>
			</c:forEach>
		</c:if>
		<c:if test="${total == 0}">
			<tr>
				<td colspan="7">데이터가 없습니다</td>
			</tr>
		</c:if>
		<tr bgcolor="white">
			<th><button onclick="ajax('helper/helperHome.jsp ')">돌아가기</button></th>
	</table>

	<!-- 페이징 처리  -->
	<div align="center" style="font-size: 17px;">
		<c:if test="${startPage > pagerPerBlk }">
			<a href="#"
				onclick="ajax('helpFromList.do?pageNum=${endpage-pagePerBlk}')">[이전]</a>
		</c:if>

		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<a href="#"
				onclick="ajax('helpFromList.do?pageNum=${i}&mnum=${mnum }')">[${i}]</a>
		</c:forEach>

		<c:if test="${endPage < totalPage}">
			<a href="#"
				onclick="ajax('helpFromList.do?pageNum=${startPage+pagePerBlk }')">[다음]</a>
		</c:if>
	</div>
	<!-- 페이징 처리 끝 -->
</body>
</html>