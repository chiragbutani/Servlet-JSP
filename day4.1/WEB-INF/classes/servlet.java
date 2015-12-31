import javax.servlet.*;
import java.io.*;

public class servlet4 implements Servlet
{
	ServletConfig conf;
	String company="";
	String location="";
	public void init(ServletConfig conf)
	{
		this.conf=conf;
		company=(String)conf.getInitParameter("company");
		location=(String)conf.getInitParameter("location");
	}
	public void service(ServletRequest request,ServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.println("<h1>company "+conf.getInitParameter("company")+" @ "+conf.getInitParameter("location")+"</h1>");
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