<html>
<head>
<title>My First JSP</title>
</head>
<body>
	<%
		for(int i=0;i<10;i++)
		{
			out.println("Line : "+(i+1)+"<br>");
		}
	%>
</body>