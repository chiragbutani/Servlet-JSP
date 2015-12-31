<%	
	String uname=(String)session.getAttribute("user");
	out.println("Hi again, "+uname);
	String uname2=(String)application.getAttribute("user");
	out.println("Hi again, "+uname2);
	

%>