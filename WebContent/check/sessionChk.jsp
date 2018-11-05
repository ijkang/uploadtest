<% 	
	String id = (String)session.getAttribute("id"); 

 /*  int mnum = (int)session.getAttribute("mnum");  */
	
	if (id == null ) {
		response.sendRedirect("main.jsp");
		return;
	}
%>