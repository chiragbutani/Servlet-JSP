<%@ page import="java.sql.*" %>
<%
	Connection con=null;
	PreparedStatement pst=null;
	
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:common");
		pst=con.prepareStatement("update Table1 set uname=?,email=?,ph_no=? where ID=?");
		pst.setString(1,"Chirag Butani");
		pst.setString(2,"Chirag@gmail.com");
		pst.setString(3,"123456");
		pst.setInt(4,10);
		pst.executeUpdate();
	}
	finally
	{	
		pst.close();
		con.close();
	}
	

	
%>