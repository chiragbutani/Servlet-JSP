<%@ page import="java.sql.*" %>
<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:common");
	Statement st=con.createStatement();

	String id=request.getParameter("hid_id");
	String uname=request.getParameter("uname");	
	String email=request.getParameter("email");
	String ph_no=request.getParameter("ph_no");	

	String query="update Table1 set uname='"+uname+"',email='"+email+"',ph_no="+ph_no+" where id="+id;
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