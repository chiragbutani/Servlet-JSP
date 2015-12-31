import javax.servlet.*;
import java.io.*;

public class h1 implements Servlet
{
	public void init(ServletConfig conf)
	{
		System.out.println("init start");
	}
	public void service(ServletRequest request,ServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		out.println("<h1>hello Servlet</h1>");
	}
	public void destroy()
	{
		System.out.println("destroy method");
	}
	public String getServletInfo()
	{
		return null;
	}
	public ServletConfig getServletConfig()
	{
		return null;
	}

}