<%@ page import="java.sql.*" %>
<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:database");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from Table2");
	out.println("<table border=1>");
	while(rs.next())
	{
		out.println("<tr>");
		if((rs.getString(2)).equal(rs))
		{
			out.println("Success");
		}
		else
		{
			out.println("not Success");
		}
		
		out.println("</tr>");
	}
	out.println("</table>");

%>