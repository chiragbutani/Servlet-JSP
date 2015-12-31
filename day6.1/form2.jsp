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
		else if(document.reg.lname.value=="")
		{
			alert("Please fill the lastname field.");
			return false;
		}
		else if(document.reg.company.value=="")
		{
			alert("Please fill the company field.");
			return false;
		
		}
		else if(document.reg.location.value=="")
		{
			alert("Please fill the location field.");
			return false;
		
		}
		else if(document.reg.email.value=="")
		{
			alert("Please fill the email field.");
			return false;
		
		}
		else if(document.reg.ph_no.value=="")
		{
			alert("Please fill the phone no field.");
			return false;
		
		}
		else if(document.reg.add.value=="")
		{
			alert("Please fill the address field.");
			return false;
		
		}
		else
		{
			return true;
		}
	}
</script>
</head>
<body>
	<form name="reg" action="dbdemo1.jsp" method="post" onsubmit="return validate()">
		Username:<input type="text" name="uname"><br>
		LAST NAME:<input type="text" name="lname"><br>
		Company:<input type="text" name="company"><br>
		Location:<input type="text" name="location"><br>
		EMAIL ID:<input type="text" name="email"><br>
		Phone no:<input type="text" name="ph_no"><br>
		Addess:  <input type="text" name="add"><br>
		<input type="submit" value="Register">
	</form>
	<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:day6.1");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from Table4");
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