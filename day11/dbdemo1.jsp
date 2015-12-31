<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from tab1");
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