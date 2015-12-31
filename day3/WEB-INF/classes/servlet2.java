import javax.servlet.*;
import java.io.*;

public class servlet2 extends GenericServlet
{
	
	public void service(ServletRequest request,ServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.println("<h1>This is servlet 2.</h1>");
	}
}