<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function returnPage() {
	location.href='./mgr/mgrHome.jsp';
}
</script>
<title>Insert title here</title>
<style type="text/css">
	body{	
		height: auto; 
		margin: 0 20% 0 15%; font-size:15px;  
		font-family: "나눔고딕"	}
	table{		border-collapse:collapse;text-align:center;		
		height: auto; border: black 1px solid;	}
	th{ border:1px solid gray;}
	td{ border:1px solid gray;}
	tr:HOVER{	background-color: yellow;	}
	caption{ margin:20px 0 50px 0; 	font-size: 20px; font-family: "궁서체"; font-size: 40px;}
	#pageNum{ margin-top: 20px;}
</style>
</head>
<body>
	<table>
		<caption>회원 목록</caption>
		<tr>
			<th width="80px">회원번호</th>
			<th width="100px">id</th>   
			<th width="140px">닉네임</th> 
			<th width="70px">이름</th>
			<th width="50px">성별</th>
			<th width="150px">전화번호</th> 
			<th width="70px">포인트</th>
			<th width="300px">이메일</th>
		</tr> 
		<c:if test="${total != 0 }">
		
			<c:forEach var="mem" items="${list }">
				<!-- 		주석 -->
				
				<tr onclick="location.href='memberView.do?mnum=${mem.mnum}&pageNum=${currentPage }'">
					<td>${mem.mnum}</td>
					<td>${mem.id}</td>
					<td> ${mem.nic}</td>
					<td>${mem.name}</td>
					<td>${mem.gender}</td>
					<td>${mem.pnum}</td>
					<td>${mem.point}</td>
					<td>${mem.email}</td>
		<c:set var="rowCnt" value="${rowCnt - 1}"></c:set>
				</tr>
			</c:forEach>
		</c:if>
		<!-- 			주석 -->
		<c:if test="${total == 0 }">
			<tr>
				<td colspan="7">데이터가 없습니다</td>
			</tr>
		</c:if>
	</table>

	<div id="pageNum" align="center">
		<c:if test="${startPage > pagePerBlk }">
			<a href="memberList.do?pageNum=${endPage-pagePerBlk}">[이전]</a>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<a href="memberList.do?pageNum=${i}">[${i}]</a>
		</c:forEach>
		<c:if test="${endPage < totalPage }">
			<a href="memberList.do?pageNum=${startPage+pagePerBlk}">[다음]</a>
		</c:if>
	</div>
	<div><button onclick="returnPage()">돌아가기</button></div>
</body>
</html>