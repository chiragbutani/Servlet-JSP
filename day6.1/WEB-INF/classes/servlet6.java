import javax.servlet.*;
import javax.servlet.http.*;
//import java.util.*;
import java.io.*;

public class servlet6 extends HttpServlet
{
		
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		processRequest(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		processRequest(request,response);
	}
	public void processRequest(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		out.println("username:"+uname+" & pass:"+pass);
	}
}