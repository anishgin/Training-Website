<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.util.*"%>
<%@page import="com.Beans.AleBeans"%>
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/CSS/main.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/jquery-ui-1.11.4/jquery-ui.min.css">
<script
	src="<%=request.getContextPath()%>/jquery-ui-1.11.4/external/jquery/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/jquery-ui-1.11.4/jquery-ui.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<script>
	function intprompt() {
		if (document.getElementById("cpwd1").value == document.getElementById("cpwd2").value) {
			var x = confirm("Please Confirm before you Submit");
			if (x == false) {
				return false;
			} else
				var field = document.getElementById("cpwd1").value;
			if (field.length < 8) {
				alert("Please input minimum 8 characters ");
				return false;
			} else
				return true;
		} else
			alert("Password Not Matching");
		return false;
	}
	
	$(function() {
		$("#cpwd1").tooltip({
			content : "Password must contain minimum 8 characters",
			track : true
		}),
		$("#cpwd2").tooltip({
			content : "Password must contain minimum 8 characters",
			track : true
		});
	});

</script>
</head>
<body>
	<div id="menuWrapper" class="menuWrapper full">
		<div style="margin-top: 0px; z-index: 1000;" id="menu"
			class="menu full">
			<div class="wrap ma">
				<a href="#" class="logo"></a>
				<nav class="column pc80"> / <a
					href="<%=request.getContextPath()%>/JSP/admin_home.jsp"
					class="transCB">Admin Home</a> /<a
					href="<%=request.getContextPath()%>" class="transCB">AUB Home
					Page</a> / <a href="" class="transCB">Training Schedule</a> / <a
					href="" class="transCB">AUB++</a> </nav>
			</div>
		</div>
	</div>
	<br><br>
	<h3>You have to change the Password for first time</h3>

	<%
		AleBeans bc = (AleBeans) request.getSession().getAttribute("tb");
	%>


	<form method="post"
		action="<%=request.getContextPath()%>/AleController"
		onsubmit="return intprompt();">
		
		<label>New Password</label> <br /> <input type="password" id="cpwd1"
			name="pwd1" title="tooltip"></input> <br /> <label>Retype New Password</label> <br />
		<input type="password" id="cpwd2" name="tpassword" title="tooltip"> <br /><br> <input
			type="submit" value="Submit" class="myButton"><input
			type='hidden' name='param' value="CPwd"></input> <input type='hidden'
			name='tname' value="<%=bc.getUsr()%>"> <input type='hidden'
			name='tbatch' value="<%=bc.getBatch()%>">

	</form>
</body>
</html>