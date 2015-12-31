<%@ page import="java.sql.*" %>
<%
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:common");
		pst=con.prepareStatement("select * from Table1 where ID=?");
		pst.setInt(1,10);
		if(pst.execute())
		{			
			rs=pst.getResultSet();
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
	}
	finally
	{	
		rs.close();
		pst.close();
		con.close();
	}
	

	
%>