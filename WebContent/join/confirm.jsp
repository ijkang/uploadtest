<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.*" %>

<% String id = request.getParameter("id");
	MemberDao md = MemberDao.getInstance(); 
	int result   = md.confirmId(id);
	if (result == 1) {
		out.println("이미 사용중인 아이디입니다");
	} else {
		out.println("사용 가능한 아이디입니다");
	}
%>
	
