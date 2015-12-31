<%@ page import="java.util.Date"%>
<%@ page isThreadSafe="true"%>
<html>
<head>
<title>My First JSP</title>
</head>
<body>

	<hr>
	<%
		out.println("Date Object:"+new Date());
	%>
</body>