<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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



</style>
<script>
	$(function() {
		$("#tooltip-3").tooltip({
			content : "Please Enter your registered Employee ID",
			track : true
		});
	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Alcatel University Board</title>
</head>
<body>

	<%
		String barr[] = (String[]) request.getSession()
				.getAttribute("barr");
	%>
	<%
		int len = barr.length;
		for (int i = 0; barr[i] != null; i++) {
			System.out.println("****" + barr[i]);
		}
	%>
	<!-- Menu -->
		<div id="menuWrapper" class="menuWrapper full">
		<div style="margin-top: 0px; z-index: 1000;" id="menu"
			class="menu full">
			<div class="wrap ma">
				<a href="#" class="logo"></a>
				<nav class="column pc80"> <a
					href="<%=request.getContextPath()%>" class="transCB">AUB Home
					Page</a> / <a href="" class="transCB">Training Schedule</a> / <a
					href="" class="transCB">AUB++</a> </nav>
			</div>
		</div>
	</div>
	
	
	
		<div style="height: 400px;" class="page page1 vab" id="page1">

		<div style="margin-top: 116.5px;" class="ma content mt3">
			<div class="columnbb pc40 right titleImg">
				<table width=500 cellspacing='5'>
		
		<tr>
			<td>
				<fieldset>
					<legend>Trainee Login</legend>
					<form method="post"
						action="<%=request.getContextPath()%>/AleController">

						<p>
							<label>Select the batch</label> <select name="tbatch">

								<%
									for (int i = 0; barr[i] != null; i++) {
								%>
								<option selected="selected" value=<%=barr[i]%>><%=barr[i]%></option>
								<%
									}
								%>
							</select>
						</p>

						<p>
							<label for="name">Employee ID</label> <br /> <input type="text"
								id="tooltip-3" title="tooltip" name="tname"> <br /> <label>Password</label>
							<br /> <input type="password" name="tpassword"> <br />
						</p>
						<input type="submit" value="Submit" class="myButton"> <input
							type='hidden' name='param' value="tLogin">

					</form>
				</fieldset>
			</td>
		
		</tr>
	</table>
			</div>
			<div class="columnbb pc60">
				<h2 class="homeTitle">
					<span class="blue2"><strong class="blue1">Welcome
							Trainee </strong><br>Good Day Today</span>
							<!-- <span class="blue2">Alcatel University Board</span> -->
				</h2>
				<h4>Login with your registered employee ID to get <br>access for Alcatel learning links and Exams<br>
				Please contact your AUB coordinator for the registration</h4>
		
			</div>
		</div>
	</div>
	
	
	
	

	
</body>
</html>