<html>
<head>
<title>My First JSP</title>
</head>
<body>
	<%
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		out.println("username:"+uname+" & pass:"+pass);
	%>
</body>