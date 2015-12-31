<%@ page import="d11.b1"%>

	<jsp:useBean id="ab1" class="d11.b1" />
	
	<jsp:setProperty name="ab1" property="name" value="Pooja" />
	<jsp:getProperty name="ab1" property="name" />

	<jsp:getProperty name="ab1" property="line" />

	<jsp:setProperty name="ab1" property="name" param="name" />
	<jsp:getProperty name="ab1" property="name" />

	<jsp:getProperty name="ab1" property="line" />

	<jsp:setProperty name="ab1" property="name" param="*" />
	<jsp:getProperty name="ab1" property="name" />
	
	<jsp:getProperty name="ab1" property="line" />

	<jsp:setProperty name="ab1" property="name" value="Hetal" />
	<jsp:getProperty name="ab1" property="name" />

	<jsp:getProperty name="ab1" property="line" />

	<jsp:setProperty name="ab1" property="name" param="*" />
	<jsp:getProperty name="ab1" property="name" />