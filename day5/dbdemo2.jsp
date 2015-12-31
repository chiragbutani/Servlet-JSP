<%@ page import="java.sql.*" %>
<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:database");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(request.getParameter("query"));
	ResultSetMetaData rsmd=rs.getMetaData();
	int cc=rsmd.getColumnCount();
	out.println("<table border=1><tr>");	
	for(int i=1;i<=cc;i++)
	{
		out.println("<td><b>"+rsmd.getColumnName(i).toUpperCase()+"</b>");
	}
	out.println("</tr>");
	while(rs.next())
	{
		out.println("<tr>");
		for(int i=1;i<=cc;i++)
		{
			out.println("<td>"+rs.getString(i));
		}
		out.println("</tr>");
	}
	out.println("</table>");

%>