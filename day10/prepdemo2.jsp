<%@ page import="java.sql.*" %>
<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:database");
	PreparedStatement pst=con.prepareStatement("select * from Table2 where uname=? and password=?");
	pst.setString(1,request.getParameter("uname"));
	pst.setString(2,request.getParameter("pass"));
	//String query="select * from Table2 where uname='"+request.getParameter("uname")+"' and password='"+request.getParameter("pass")+"'";
	//System.out.println("Query:"+query);
	//Statement st=con.createStatement();
	
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