<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#commentList').load("commentList.do?wnum=${wnum}");
	 $('#comment').load("honey/comment.jsp?wnum=${wnum}");
}); 
</script>
<link rel="stylesheet" type="text/css" href="CSS/honey.css">
</head>
<body>
<input type="hidden" name="wnum" value="${wnum}">
<input type="hidden" name="click" value="${click}">
<div id="d3"> 
<table id="t2">
<tr><th>회원번호</th><td>${hn.mnum}</td><th>닉네임</th><td colspan="3">${hn.nic}</td></tr>
<tr><th>글번호</th><td>${hn.wnum}</td><th>조회</th><td>${hn.click}</td><th>추천</th><td>${hn.good}</td></tr>
<tr><th>제목</th><td colspan="5">${hn.title}</td></tr>
<tr><th>내용</th><td colspan="5">
<c:if test="${hn.filepath != '1' }">
<div><img src="img/${hn.filepath}" width="50%" height="50%"></div>
</c:if>
<div><pre>${hn.content}</pre></div></td></tr>
</table>
</div>
<%-- <input type="button" value="신고" onclick="location.herf='complain.do?mnum=${hn.mnum}&pageNum=${pageNum }'"> --%>
<div id="d4Left">
<button id="btn1" onclick="window.open('good.do?wnum=${hn.wnum}&pageNum=${pageNum}')"><img alt="" src="CSS/추천.jpg"></button>
<button id="btn2" onclick="ajax('list.do?pageNum=${pageNum}')"><img src="CSS/목록.png"></button> 
<button id="btn3" onclick="ajax('check.do?wnum=${hn.wnum}&pageNum=${pageNum}')"><img alt="" src="CSS/휴지통.gif"></button>
</div>
<div id="d4">
<!-- <button onclick="window.open('honey/complain.jsp','windows팝업','width=400,height=200')"><img alt="" src="CSS/comp1.jpg"></button> -->
<span id="comment"><input type="hidden" name="wnum" value="${wnum}"></span> 
</div> 
<div id="commentList">
</div>
</body>
</html> 