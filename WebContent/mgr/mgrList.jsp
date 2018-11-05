<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
	border: 1px solid black;  
		height: auto; 
		width:600px;
		margin: 0 20% 0 30%; font-size:15px;  
		font-family: "나눔고딕"	}
	table{		border-collapse:collapse;text-align:center;		
		height: auto; border: black 1px solid;	margin: 50px 10% 0 10%}
		
	th{ border:1px solid gray; width : 150px;}
	td{ border:1px solid gray;}
	tr:HOVER{	background-color: yellow;	}
	caption{ margin:20px 0 50px 0; 	font-size: 20px; font-family: "궁서체"; font-size: 40px;}
	#pageNum{ margin-top: 20px;}
</style>
<script type="text/javascript">
	function returnPage() {
		location.href='./mgr/mgrHome.jsp';
	}

</script>
</head>
<body>
	<table>
		<caption>운영진 목록</caption>
		<tr>
			<th>관리자등급</th>
			<th>관리자번호</th>
			<th>id</th>
		</tr>
		<c:if test="${total != 0 }">
			<c:forEach var="mgr" items="${list }">
				<tr><td>${mgr.master}</td>
					<td>${mgr.masterNum}</td>
					<td>${mgr.masterId}</td>
		<c:set var="rowCnt" value="${rowCnt - 1}"></c:set>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${total == 0 }">
			<tr>
				<td colspan="7">데이터가 없습니다</td>
			</tr>
		</c:if>
	</table>
	<div align="center" id="pageNum">
		<c:if test="${startPage > pagePerBlk }">
			<a href="mgrList.do?pageNum=${endPage-pagePerBlk}">[이전]</a>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<a href="mgrList.do?pageNum=${i}">[${i}]</a>
		</c:forEach>
		<c:if test="${endPage < totalPage }">
			<a href="mgrList.do?pageNum=${startPage+pagePerBlk}">[다음]</a>
		</c:if>
	</div> 
<div><button id="back" onclick="returnPage()">돌아가기</button></div>
</body> 
</html>