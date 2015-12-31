<%@ page import="java.sql.*" %>
<%
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:common");
	st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	rs=st.executeQuery("select * from Table4");
	
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

	}
	finally{
	rs.close();
	st.close();
	con.close();
	}
	

	
%>