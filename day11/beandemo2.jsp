<%@ page import="d11.b1"%>
<%
	b1 bean=new b1();
	bean.setName("Jigar");
	out.println("value of name:"+bean.getName());
	out.println(bean.getLine());
%>