<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
	CallableStatement cst=con.prepareCall("{call ins_data(?,?)}");
	cst.setInt(1,50);
	cst.setInt(2,75);
	cst.execute();

	 cst=con.prepareCall("{call sel_data()}");
	if(cst.execute())	
	{
	ResultSet rs=cst.getResultSet();
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

%>