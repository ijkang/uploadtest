<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function nicChange(){
		window.open('./mgr/idUpdate.jsp?nic=${mem.nic}&mnum=${mem.mnum}');
	}
</script>
<style type="text/css">
body {
	width: auto;
	height: auto;
	margin: 0 20% 0 20%
}

table {
	text-align: center;
	width: 600px;
	height: auto;
	margin: 0 10% 0 10%;
	border: black 1px solid;
}

caption {
	font-size: 20px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<table>
		<c:forEach var="mem" items="${list }">
			<caption>${mem.id }정보</caption>
			<tr>
				<th>회원번호</th>
				<td>${mem.mnum}</td>
			</tr>

			<tr>
				<th>id</th>
				<td>${mem.id }</td>
			</tr>

			<tr>
				<th>닉네임</th>
				<td>${mem.nic}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${mem.name}</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>${mem.gender}</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${mem.pnum}</td>
			</tr>
			<tr>
				<th>포인트</th>
<%-- 				<td>${mem.point}<input type="button" name="pointUpdate" --%>
<!-- 					value="포인트 증감" onclick="window.open('./admin/pointUpdate.jsp')"></td> -->
			</tr>
			<tr>
				<th>이메일</th>
				<td>${mem.email}</td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="확인"
					onclick="history.go(-1)">
					<input type="button" value="회원 삭제"
					onclick="location.href='memberDelete.do?mnum=${mem.mnum }&pageNum=${pageNum }'"></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>