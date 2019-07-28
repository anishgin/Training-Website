<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/main.css" />
<title>Alcatel University Board</title>
</head>
<body>
<fieldset>
					<legend>Login</legend>
					<form method="post"
						action="<%=request.getContextPath()%>/AleController">
						<p>
							<label for="name">UserName</label> <br /> <input type="text"
								name="name"> <br /> <label for="email">Password</label>
							<br /> <input type="password" name="password"> <br />
						</p>
						<p><blink><font color="red">Invalid Credentials. Please Contact your Coordinator</font></blink></p>
						<input type="submit" value="Submit" class="myButton"> <input
							type='hidden' name='param' value="Login"> <input
							type="submit" value="Register" class="myButton"> <input
							type='hidden' name='param' value="Register">

					</form>
				</fieldset>
</body>
</html>