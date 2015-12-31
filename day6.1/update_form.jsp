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
</script>
</head>
	<%
	//try{
	String id=request.getParameter("id");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:day6.1");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select uname,lname,company,location,email,ph_no,add from Table4 where ID="+id);	
	String uname="";
	String lname="";
	String company="";
	String location="";
	String email="";
	String ph_no="";
	String add="";
	
	if(rs.next())
	{
		uname=rs.getString(1);
		lname=rs.getString(2);
		company=rs.getString(3);
		location=rs.getString(4);
		email=rs.getString(5);
		ph_no=rs.getString(6);
		add=rs.getString(7);	
	}
	
	//}
	//catch(Exception e)
	//{
	//	out.println(e);
	//	e.printStackTrace();
	//}
	%>
<body>
	<form name="reg" action="update_record.jsp" method="post" onsubmit="return validate()">
		Username:<input type="text" name="uname" value="<%=uname%>"><br>
		LAST NAME:<input type="text" name="lname" value="<%=lname%>"><br>
		Company:<input type="text" name="company" value="<%=company%>"><br>
		Location:<input type="text" name="location" value="<%=location%>"><br>
		EMAIL ID:<input type="text" name="email" value="<%=email%>"><br>
		Phone no:<input type="text" name="ph_no" value="<%=ph_no%>"><br>
		Addess:  <input type="text" name="add" value="<%=add%>"><br>
		<input type="hidden" name="hid_id" value="<%=id%>">
		<input type="submit" value="Update">
	</form>


	
</body>