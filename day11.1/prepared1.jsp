<%@ page import="java.sql.*" %>
<%
	Connection con=null;
	PreparedStatement pst=null;
	
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:common");
		pst=con.prepareStatement("insert into Table1 (uname,email,ph_no) values (?,?,?)");
		pst.setString(1,"Chirag");
		pst.setString(2,"Chirag@gmail.com");
		pst.setString(3,"123456");
		pst.executeUpdate();
	}
	finally
	{	
		pst.close();
		con.close();
	}
	

	
%>