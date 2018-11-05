<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="comment.do"> 
<textarea rows="3" cols="55" name="content2"></textarea>
<input name="wnum" value="<%=Integer.parseInt(request.getParameter("wnum")) %>" type="hidden">
<input id="cmtInput" type="submit" value="확인">
</form> 

</body>
</html>