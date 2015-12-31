import javax.servlet.*;
import java.io.*;

public class servlet1 implements Servlet
{
	public void init(ServletConfig conf)
	{
		System.out.println("Init called");
	}
	public void service(ServletRequest request,ServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.println("<h1>Hello Servlet!</h1>");
	}
	public void destroy()
	{
		System.out.println("Destroy called");
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