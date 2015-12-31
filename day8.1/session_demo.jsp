<%@ page import="java.sql.*" %>
<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:database");
	Statement st=con.createStatement();
	String query="select * from Table2 where uname='"+request.getParameter("uname")+"' and password='"+request.getParameter("pass")+"'";
	System.out.println("Query:"+query);
	ResultSet rs=st.executeQuery(query);
	//boolean flag=false;	
	if(rs.next())
	{
		//flag=true;
		out.println("username/password are correct.");
		String uname=rs.getString("uname");
		session.setAttribute("user",uname);
		response.sendRedirect("home_page.jsp");
	}
	else	
	{
		out.println("username/password are incorrect!!");
	}
	//out.println("</table>");

%>