<%@ page import="java.sql.*" %>
<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:database");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from Table1");
	out.println("<table border=1>");
	while(rs.next())
	{
		out.println("<tr>");
		out.println("<td>"+rs.getString("ID"));
		out.println("<td>"+rs.getString(2));
		out.println("<td>"+rs.getString(3));
		out.println("<td>"+rs.getString("ph_no"));
		out.println("</tr>");
	}
	out.println("</table>");

%>