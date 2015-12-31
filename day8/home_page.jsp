<%	
	String uname=(String)application.getAttribute("user");
	out.println("Welcome, "+uname);
	out.println("<br><a href=second.jsp>Second page</a>");
	session.invalidate();

%>