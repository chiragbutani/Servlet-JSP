<%@ page import="java.sql.*" %>
<html>
<head>
<title>My First JSP</title>
<script type="text/javascript">
	function validate()
	{
		if(document.reg.uname.value=="")
		{
			alert("Please fill the Username field.");
			return false;
		}
		else
		{
			return true;
		}
	}
	function conf()
	{
		var c=confirm("Are you sure?");
		if(c==true)
			return true;
		else
			return false;
	}
</script>
</head>
<body>
	<form name="reg" action="dbdemo1.jsp" method="post" onsubmit="return validate()">
		Username:<input type="text" name="uname"><br>		
		EMAIL ID:<input type="text" name="email"><br>
		Phone no:<input type="text" name="ph_no"><br>
		<input type="submit" value="Register">
	</form>
	
	<%
	if(request.getParameter("updated")!=null)
	{
	if(request.getParameter("updated").equals("true"))
	{
		out.println("<font color=green>Record updated successfully!</font>");
	}
	else
	{
		out.println("<font color=red>Record not updated!</font>");
	}
	}

	if(request.getParameter("deleted")!=null)
	{
	if(request.getParameter("deleted").equals("true"))
	{
		out.println("<font color=green>Record deleted successfully!</font>");
	}
	else
	{
		out.println("<font color=red>Record not deleted!</font>");
	}
	}

	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:common");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select ID,uname,email,ph_no from Table1");
	ResultSetMetaData rsmd=rs.getMetaData();
	int cc=rsmd.getColumnCount();
	out.println("<table border=1><tr>");
	out.println("<td align=center><b>SR. NO.</b>");	
	for(int i=2;i<=cc;i++)
	{
		out.println("<td align=center><b>"+rsmd.getColumnName(i).toUpperCase()+"</b>");
	}	
	out.println("<td align=center><b>ACTION</b>");	
	out.println("</tr>");
	int count=1;
	while(rs.next())
	{
		out.println("<tr>");
		out.println("<td>"+count);		
		for(int i=2;i<=cc;i++)
		{
			out.println("<td>"+rs.getString(i));
		}
		String id=rs.getString(1);
		out.println("<td><a href='update_form.jsp?id="+id+"'>Update</a> | <a href='delete_record.jsp?id="+id+"' onclick='return conf()'>Delete</a>");
		out.println("</tr>");
		count++;
	}
	out.println("</table>");
	}
	catch(Exception e)
	{
		out.println(e);
		//e.printStackTrace();
	}
	%>
</body>