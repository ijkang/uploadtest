<%@page import="com.sun.xml.internal.bind.v2.runtime.Name"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../check/sessionChk.jsp"%>
<!DOCTYPE><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css"> 
header{ margin: 20px 0; text-align: center; }
div{margin: 20px 0 ;}   
#submit{margin-left: 130px;} 
body{ width: 320px; height: 300px;}
textarea { margin: 10px;}
</style> 
</head> 
<body> 
	<header> 
		<%=request.getParameter("curYear")%>년<%=request.getParameter("curMonth")%>월
		<%=request.getParameter("curDay")%>일의 스케줄 작성
	</header>
	<article>
		<form action="../diaryWrite.do">
			<div id=content>
				<input type="hidden" value="<%=request.getParameter("monthMove")%>" name="monthMove"> 
				<input type="hidden" value="<%=request.getParameter("curYear")%>" name="curYear"> 
				<input type="hidden" value="<%=request.getParameter("curMonth")%>" name="curMonth">
				<input type="hidden" value="<%=request.getParameter("curDay")%>"	name="curDay">
				<input type="hidden" value="${mnum }" name="mnum">
				<input type="hidden" value="${id }" name="id">
				<textarea name="memo" rows="10" cols="40"></textarea>
			</div>
			<div id=submit>
				<select name="open" required="required"><option value="y" >공개</option><option value="n">비공개</option></select> <input id="submit" type="submit" value="작성완료">
			</div>
		</form>
	</article>
</body>
</html>
