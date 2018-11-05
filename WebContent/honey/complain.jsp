<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* th{border:1px black solid;} */
/* td{border:1px black solid;} */

</style>
</head>
<body>
<form action="../complain.do" method="post">
<input type="hidden" name="mnum" value="${mnum}">
<table>
<tr><th>제목</th><td><input type="text" name="title"></td><th>위험도</th><td><select name="hazard">
<option value="1">거슬림</option>
<option value="2">신경쓰임</option>
<option value="3">짜증남</option>
<option value="4">화남</option>
<option value="5">극혐</option>
</select></td></tr>
<tr><th>내용</th><td colspan="3"><textarea cols="40" rows="5" name="content"></textarea></td>
<tr><th colspan="3"><input type="submit" value="확인"></th></tr>
</table>

</form>
</body>
</html>