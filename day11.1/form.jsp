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
		else
		{
			return true;
		}
	}
</script>
</head>
<body>
	<form name="reg" action="prepdemo2.jsp" method="post" onsubmit="return validate()">
		Username:<input type="text" name="uname"><br>
		LAST NAME:<input type="text" name="lname"><br>
		Company:<input type="text" name="company"><br>
		Location:<input type="text" name="location"><br>
		EMAIL ID:<input type="text" name="email"><br>
		Phone no:<input type="number" name="ph_no"><br>
		Addess:  <input type="text" name="add"><br>
		<input type="submit" value="Register">
	</form>
</body>