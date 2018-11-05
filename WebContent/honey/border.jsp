<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../check/sessionChk.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/honey.css">
</head>
<body>
<form action="insert.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="${id }"> 
<table id="t3">
<tr><th>회원번호</th><td><input type="hidden" readonly="readonly" name="mnum" value="${mnum}">${mnum}</td></tr>
<tr><th>제목</th><td><input type="text"  name="title" style="width: 10cm"></td></tr>
<tr><th>사진</th><td><input type="file" name="selectFile"></td></tr>
<!-- <th>분류</th><td><select name="" size="1"> -->
<!-- <option value="">꿀팁</option> -->
<!-- <option value="">허세</option> -->
<!-- <option value="">여행</option> -->
<!-- </select></td></tr><br><br> -->

<tr><td colspan="2"><textarea  rows="20" cols="60" name="content"></textarea>
</td></tr>
<tr><td><input type="submit" value="확인"></td></tr>
</table>
</form>

</body>
</html>