import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class servlet3 extends HttpServlet
{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.println("<h1>This is HTTP servlet.</h1>");
		out.println("<hr>"+new temp().callme());
	}
}