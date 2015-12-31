import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class servlet3 extends HttpServlet
{
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		ServletContext application=getServletConfig().getServletContext();

		try{
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
				application.setAttribute("user",uname);
				session.setAttribute("user",uname);
				response.sendRedirect("home_page.jsp");
			}
			else	
			{
				out.println("username/password are incorrect!!");
			}
		}
		catch(Exception e)
		{}		
	}
}