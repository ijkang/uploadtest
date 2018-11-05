<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int result = Integer.parseInt(request.getParameter("result"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		if (result > 0) {
	%>
	<script type="text/javascript">
		alert("삭제되었습니다.");
		location.href = 'memberList.do';
	</script>
	<%
		} else {
	%>
	alert("삭제실패"); history.go(-1);
	<%
		}
	%>
</body>
</html>