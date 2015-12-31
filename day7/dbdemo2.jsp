<%@ page import="java.sql.*" %>
<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:day6");
	Statement st=con.createStatement();

	String uname=request.getParameter("uname");
	String lname=request.getParameter("lname");
	String company=request.getParameter("company");
	String location=request.getParameter("location");
	String Email=request.getParameter("email");
	String ph_no=request.getParameter("ph_no");
	String Address=request.getParameter("add");

	String query="insert into Table4 (uname,lname,company,location,Email,ph_no,Address) values ('"+uname+"','"+lname+"','"+company+"','"+location+"','"+email+"',"+ph_no+",'"+add+"')";
	System.out.println("Query:"+query);

	int count=st.executeUpdate(query);
	if(count>0)
	{
		out.println("User registered successfully!");
	}
	else
	{
		out.println("User registration error!!");
	}
	}
	catch(Exception e)
	{
		out.println(e);
	}
	

%>