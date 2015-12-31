<%@ page import="java.sql.*" %>
<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:day6.1");
	Statement st=con.createStatement();

	String id=request.getParameter("hid_id");
	String uname=request.getParameter("uname");
	String lname=request.getParameter("lname");	
	String company=request.getParameter("company");
	String location=request.getParameter("location");
	String email=request.getParameter("email");
	String ph_no=request.getParameter("ph_no");
	String add=request.getParameter("add");	

	String query="update Table4 set uname='"+uname+"',lname='"+lname+"',company='"+company+"',location='"+location+"',email='"+email+"',ph_no="+ph_no+",add='"+add+"' where id="+id;
	System.out.println("Query:"+query);

	int count=st.executeUpdate(query);
	if(count>0)
	{
		//out.println("User Updated successfully!");
		response.sendRedirect("form.jsp?updated=true");
	}
	else
	{
		//out.println("User Update error!!");
		response.sendRedirect("form.jsp?updated=false");
	}
	}
	catch(Exception e)
	{
		out.println(e);
	}
	

%>