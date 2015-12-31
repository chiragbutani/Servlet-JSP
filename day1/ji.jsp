<html>
<head>
<title>
	jsp page
</title>
</head>

<body>
	<%
	for(int i=1;i<=3;i++)
	{
	
		out.println("<table border=1>");
		out.println("<tr>");
			out.println("<td>"+"i"+"</td>");
			out.println("<td>"+i+"</td>");
		out.println("</tr>");
		out.println("</table>");	
	}
	
	%>

</body>
</html>