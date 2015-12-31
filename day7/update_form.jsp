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
	Connection con=DriverManager.getConnection("jdbc:odbc:common");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select uname,email,ph_no from Table1 where ID="+id);	
	String uname="";
	String email="";
	String ph_no="";
	if(rs.next())
	{
		uname=rs.getString(1);
		email=rs.getString(2);
		ph_no=rs.getString(3);
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
		EMAIL ID:<input type="text" name="email" value="<%=email%>"><br>
		Phone no:<input type="text" name="ph_no" value="<%=ph_no%>"><br>
		<input type="hidden" name="hid_id" value="<%=id%>">
		<input type="submit" value="Update">
	</form>


	
</body>