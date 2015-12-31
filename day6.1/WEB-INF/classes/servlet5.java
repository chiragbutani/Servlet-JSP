import javax.servlet.*;
import java.util.*;
import java.io.*;

public class servlet5 implements Servlet
{
	ServletConfig conf;
	String company="";
	String location="";
	Enumeration e;
	String param="";
	String value="";
	public void init(ServletConfig conf)
	{
		this.conf=conf;
		e=conf.getInitParameterNames();
		while(e.hasMoreElements())
		{
			param=(String)e.nextElement();
			value=(String)conf.getInitParameter(param);
			System.out.println("param:"+param+" & value:"+value);
		}
	}
	public void service(ServletRequest request,ServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		e=conf.getInitParameterNames();
		//e=request.getParameterNames();
		while(e.hasMoreElements())
		{
			param=(String)e.nextElement();
			value=(String)conf.getInitParameter(param);
			out.println("<h1>param:"+param+" & value:"+value+"<hr>");
		}
		//out.println("<h1>company "+conf.getInitParameter("company")+" @ "+conf.getInitParameter("location")+"</h1>");
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