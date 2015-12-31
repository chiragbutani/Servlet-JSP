import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class servlet3 extends HttpServlet
{
	ServletConfig conf;
	public void init(ServletConfig conf)
	{
		this.conf=conf;	
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		//HttpSession session=request.getSession();
		ServletContext sc=conf.getServletContext();

		RequestDispatcher rd=sc.getRequestDispatcher("/dbdemo1.jsp");
		rd.include(request,response);
		//rd.forward(request,response);
		out.println("<br>servlet3..");
			
	}
}