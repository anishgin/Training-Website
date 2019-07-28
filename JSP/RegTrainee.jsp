<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/main.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/jquery-ui-1.11.4/jquery-ui.min.css">
<script
	src="<%=request.getContextPath()%>/jquery-ui-1.11.4/external/jquery/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/jquery-ui-1.11.4/jquery-ui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trainee Registration</title>

<script>
	function tnameval() {
		if (document.getElementById("tname").value == "") {
			return false;
		} else {
			return true;
		}
	}

	function tusrval() {
		if (document.getElementById("tusr").value == "") {
			return false;
		} else {
			return true;
		}
	}

	function intprompt() {
		var x = confirm("Please Confirm before you Submit");
		if (x == false) {
			return false;
		} else
			if(tnameval && tusrval())
			{return true;}
			else
				alert("Please fill all fields");
				return false;
			
		
	}
</script>

</head>
<body>
	<!-- Menu -->
		<div id="menuWrapper" class="menuWrapper full">
		<div style="margin-top: 0px; z-index: 1000;" id="menu"
			class="menu full">
			<div class="wrap ma">
				<a href="#" class="logo"></a>
				<nav class="column pc80"> <a
					href="<%=request.getContextPath()%>/JSP/admin_home.jsp" class="transCB">Admin Home</a> / <a
					href="<%=request.getContextPath()%>" class="transCB">AUB Home
					Page</a> / <a href="" class="transCB">Training Schedule</a> / <a
					href="" class="transCB">AUB++</a> </nav>
			</div>
		</div>
	</div>
	<br><br>
<h2>Register Trainee</h2>	<br><br>
<%
	String barr[] =(String[])request.getSession().getAttribute("barr");
%>
	<form method="post"
					action="<%=request.getContextPath()%>/AleAdmin"
					onsubmit="return intprompt();">

		<table align="center" cellpadding="15px">
			<tr>
				<td>Trainee Name</td>
				<td><input type="text" name="tname" id="tname" onblur="tnameval()">
				</td>
				<td><div id="tnid" style="color: red"></div></td>
			</tr>
			<tr>
				<td>Trainee Emp ID</td>
				<td><input type="text" name="tusr"
					id="tusr" onblur="tusrval()" onkeydown="return ( event.ctrlKey || event.altKey || (47 &lt event.keyCode && event.keyCode &lt 58 && event.shiftKey==false) || (95 &lt event.keyCode && event.keyCode &lt 106) || (event.keyCode==8) || (event.keyCode==9)|| (event.keyCode &gt 34 && event.keyCode &lt 40) || (event.keyCode==46) )"></input>
				<td><div id="tuid" style="color: red"></div></td>
			<tr>
				<td>Batch</td>
				<td><select name="tbatch">
					
					<% for(int i=0;barr[i]!=null;i++){%>
					<option selected="selected" value=<%=barr[i]%> ><%=barr[i]%></option>
					<%} %>
			</select></td>
				<td><div id="tbid" style="color: red"></div></td>
			</tr>
		
		
			
		
		</table>
		<input type='hidden' name='param' value="tregister"></input>
		<center><br>
			<input type="submit" value="Submit" class="myButton"></input>
		</center>
		
	</form>


</body>
</html>