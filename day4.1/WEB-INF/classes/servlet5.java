import javax.servlet.*;
import java.util.*;
import java.io.*;

public class servlet5 implements Servlet
{
	ServletConfig conf;
	String Fname="";
	String Sname="";
	String mail="";
	String add="";
	String c_name="";
	String male="";
	String fmale="";
	Enumeration e;
	//String param="";
	//String value="";
	public void init(ServletConfig conf)
	{
		this.conf=conf;
		e=conf.getInitParameterNames();
		while(e.hasMoreElements())
		{
			param=(String)e.nextElement();
			value=(String)conf.getInitParameter(param);
			System.out.println("First name:"+Fname+"Second name:"+Sname);
			System.out.println("E-mail:"+mail+"Address:"+add+"college name:"+c_name+);
			System.out.println("male:"+male+"female:"+fmale);
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
			System.out.println("First name:"+Fname+"Second name:"+Sname);
			System.out.println("E-mail:"+mail+"Address:"+add+"college name:"+c_name+);
			System.out.println("male:"+male+"female:"+fmale);
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