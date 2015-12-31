<%@ page import="java.sql.*" %>
<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:common");
	PreparedStatement pst=con.prepareStatement("select * from Table4  where ID=?");
	
	pst.setInt(1,1);
	
	if(pst.execute())
	{
	ResultSet rs=pst.getResultSet();
	//boolean flag=false;	
	if(rs.next())
	{
		//flag=true;
		out.println("username/password are correct.");
	}
	else	
	{
		out.println("username/password are incorrect!!");
	}
	}
	}catch(Exception e)
	{
		out.println(e);	
	}
	//out.println("</table>");

%>