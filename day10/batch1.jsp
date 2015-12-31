<%@ page import="java.sql.*" %>
<%
	Connection con=null;
	PreparedStatement pst=null;
	
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:common");
		con.setAutoCommit(false);
		pst=con.prepareStatement("insert into Table1 (uname,email,ph_no) values (?,?,?)");
		for(int i=0;i<10;i++)
		{
			pst.setString(1,"Chirag"+i);
			pst.setString(2,"Chirag@gmail.com"+i);
			pst.setString(3,"123456"+i);
			pst.addBatch();
		}
		int count[]=pst.executeBatch();
		if(count.length>0)
		{
			out.println("success!!");
			con.commit();
		}
		else
		{
			con.rollback();
		}
		
		
	}
	finally
	{	
		pst.close();
		con.close();
	}
	

	
%>