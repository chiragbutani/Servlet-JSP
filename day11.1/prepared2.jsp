<%@ page import="java.sql.*" %>
<%
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	
	
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chirag","root","root");
		pst=con.prepareStatement("select * from tab1");
		pst.setInt(1,1);
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
	
	
	

	
%>