<%@ page import="java.sql.*" %>
<%
	Connection con=null;
	//PreparedStatement pst=null;
	Statement st=null;
	
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:common");
		con.setAutoCommit(false);
		st=con.createStatement();
		//pst=con.prepareStatement("insert into Table1 (uname,email,ph_no) values (?,?,?)");
		for(int i=0;i<10;i++)
		{
			String q="insert into Table1 (uname,email,ph_no) values ('Chirag"+i+"','Chirag@gmail.com"+i+"','123456"+i+"')";
			st.addBatch(q);
		}
		int count[]=st.executeBatch();
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
		st.close();
		con.close();
	}
	

	
%>