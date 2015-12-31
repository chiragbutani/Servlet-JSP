<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chirag","root","root");
	CallableStatement cst=con.prepareCall("{call ins1v(?,?,?,?,?,?,?)}");

	cst.setString(1,"abc");
	cst.setString(2,"xyz");
	cst.setString(3,"dvfj");
	cst.setString(4,"fdufh");
	cst.setString(5,"gsfhg");
	cst.setInt(6,6454);
	cst.setString(7,"bfn");
	cst.execute();

	// CallableStatement cst=con.prepareCall("{call sel_data()}");
		
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