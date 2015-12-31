<html>
<head>
<title>My First JSP</title>
</head>
<body>	
	<%
		System.out.println("Hiiiii.");
	%>
	<jsp:forward page="header.html" />
	<hr>
	<%
	out.println("Hello World!");
	//response.sendRedirect("http://www.google.com");
	%>
	
</body>