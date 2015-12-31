<html>
<head>
<title>My First JSP</title>
<script type="text/javascript">
	function validate()
	{
		if(document.reg.uname.value=="")
		{
			alert("Please fill the Username field.");
			return false;
		}
		else if(document.reg.lname.value=="")
		{
			alert("Please fill the lastname field.");
			return false;
		}
		else if(document.reg.company.value=="")
		{
			alert("Please fill the company field.");
			return false;
		
		}
		else if(document.reg.location.value=="")
		{
			alert("Please fill the location field.");
			return false;
		
		}
		else if(document.reg.email.value=="")
		{
			alert("Please fill the email field.");
			return false;
		
		}
		else if(document.reg.ph_no.value=="")
		{
			alert("Please fill the phone no field.");
			return false;
		
		}
		else if(document.reg.add.value=="")
		{
			alert("Please fill the address field.");
			return false;
		
		}
		else
		{
			return true;
		}
	}
</script>
</head>
<body>
	<form name="reg" action="form.jsp" method="post" onsubmit="return validate()">
		Username:<input type="text" name="uname"><br>
		LAST NAME:<input type="text" name="lname"><br>
		Company:<input type="text" name="company"><br>
		Location:<input type="text" name="location"><br>
		EMAIL ID:<input type="text" name="email"><br>
		Phone no:<input type="text" name="ph_no"><br>
		Addess:  <input type="text" name="add"><br>
		<input type="submit" value="Register">
	</form>
</body>