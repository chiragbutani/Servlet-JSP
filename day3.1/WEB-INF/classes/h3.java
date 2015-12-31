import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class h3 extends HttpServlet
{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		out.println("<h1>hello HttpServlet</h1>");
		new h4().dispaly();
	}
	

}