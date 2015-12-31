<html>
<head>
<title>My First JSP</title>
</head>
<body>
	<%
		String Firstname=request.getParameter("fname");
		String Lastname=request.getParameter("lname");
		String Moblic_no=request.getParameter("cno");
		String Email_id=request.getParameter("email");
		String College_name=request.getParameter("cname");
		String Year=request.getParameter("year");
		
		out.println("FIRSTNAME:"+Firstname+" & LASTNAME:"+Lastname);
	%>
</body>