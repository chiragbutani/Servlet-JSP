<%@ page errorPage="error_page.jsp"%>
<html>
<head>
<title>My First JSP</title>
</head>
<body>
	<%
		double d=10/0;
		out.println(d);
		
	%>
</body>