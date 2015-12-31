<%@ page import="java.sql.*" %>
<%
	Connection con=null;
	PreparedStatement pst=null;
	
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:common");
		con.setAutoCommit(false);
		pst=con.prepareStatement("insert into Table1 (uname,email,ph_no) values (?,?,?)");
		pst.setString(1,"Chirag");
		pst.setString(2,"Chirag@gmail.com");
		pst.setString(3,"123456");
		int count=pst.executeUpdate();
		if(count>0)
		{
			con.commit();
			out.println("success!!");
		}
		else
		{
			con.rollback();
			out.println("failed!!");
		}
		
		
	}
	finally
	{	
		pst.close();
		con.close();
	}
	

	
%>