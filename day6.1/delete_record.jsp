<%@ page import="java.sql.*" %>
<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:day6.1");
	Statement st=con.createStatement();

	String id=request.getParameter("id");		

	String query="delete from Table4 where id="+id;
	System.out.println("Query:"+query);

	int count=st.executeUpdate(query);
	if(count>0)
	{
		//out.println("User Updated successfully!");
		response.sendRedirect("form.jsp?deleted=true");
	}
	else
	{
		//out.println("User Update error!!");
		response.sendRedirect("form.jsp?deleted=false");
	}
	}
	catch(Exception e)
	{
		out.println(e);
	}
	

%>