<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.*"%>
<%@page import="com.Beans.AleBeans"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Trainers Home</title>
<script>
	function Vaempid() {
		if (document.getElementById("Vempid").value == "") {
			return false;
		} else {
			return true;
		}
	}

	function Vapscore() {
		if (document.getElementById("Vpscore").value == "") {
			return false;
		} else {
			return true;
		}
	}
	
	function Vafb() {
		if (document.getElementById("Vfb").value == "") {
			return false;
		} else {
			return true;
		}
	}

	function intprompt() {
		var x = confirm("Please Confirm before you Submit");
		if (x == false) {
			return false;
		} 
		else
			if(Vaempid()&&Vapscore()&&Vafb())
			{return true;}
			else
				alert("Please fill all fields");
				return false;	
		
	}
	
	$(function() {
			$("#Vempid").tooltip({
			content : "Only digits",
			track : true
			});
	  });
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
					href="<%=request.getContextPath()%>" class="transCB">AUB Home
					Page</a> / <a href="" class="transCB">Training Schedule</a> / <a
					href="" class="transCB">AUB++</a> </nav>
			</div>
		</div>
	</div>
	<br>	<br>	
	<h2>Trainer's Home</h2>
	<%
		String barr[] = (String[]) request.getSession()
				.getAttribute("barr");
	%>
		<%
		AleBeans b = (AleBeans) request.getSession()
				.getAttribute("b");
	%>
	<%
		int len = barr.length;
		for (int i = 0; barr[i] != null; i++) {
			System.out.println("****" + barr[i]);
		}
	%>
	
 <h3 >Welcome <%=b.getNtrainer() %></h3>

	<br>	<br>

	<form method="post"
		action="<%=request.getContextPath()%>/AleController" onsubmit="return intprompt();">

<table class="columnbb pc60">
<tr><td><label>Select the batch</label></td><td> <select name="tbatch">

				<%
									for (int i = 0; barr[i] != null; i++) {
								%>
				<option selected="selected" value=<%=barr[i]%>><%=barr[i]%></option>
				<%
									}
								%>
			</select></td></tr>
<tr><td>Practicals of Exam</td><td><select name="pexam">
			<option value=Starters>Starters</option>
			<option value=Networking>Networking</option>
			<option value=Advanced>Advanced</option>
			<option value=IP>IP</option>
		</select></td></tr>	
			
<tr><td>Trainee Employee ID</td><td><input type="text" name="empid" maxlength="6" id="Vempid" title="tooltip" onblur="Vaempid()" onkeydown="return ( event.ctrlKey || event.altKey || (47 &lt event.keyCode && event.keyCode &lt 58 && event.shiftKey==false) || (95 &lt event.keyCode && event.keyCode &lt 106) || (event.keyCode==8) || (event.keyCode==9)|| (event.keyCode &gt 34 && event.keyCode &lt 40) || (event.keyCode==46) )"></input></td></tr>




<tr><td>Practical Score</td><td><input type="text" maxlength="2" name="pscore" id="Vpscore" onblur="Vapscore()" onkeydown="return ( event.ctrlKey || event.altKey || (47 &lt event.keyCode && event.keyCode &lt 58 && event.shiftKey==false) || (95 &lt event.keyCode && event.keyCode &lt 106) || (event.keyCode==8) || (event.keyCode==9)|| (event.keyCode &gt 34 && event.keyCode &lt 40) || (event.keyCode==46) )"></input></td></tr>
<tr><td>Feedback</td><td><textarea name="fb" rows="4" cols="50" id="Vfb" onblur="Vafb()"></textarea></td></tr>			
			
			
			</table>
		
			<br>	<br>	<br>	<br>	<br>	<br>
			<br>	<br>	<br>	<br>	<br>	<br>
			
			
		<div class="columnbb pc60" align="center">
		<input type="Submit" value="UPDATE THE PRACTICAL SCORE" ></input>	
		 <input	type='hidden' name='param' value="InvScore">
		 <input	type='hidden' name='eInv' value="<%=b.getUtrainer()%>">
		 
		 </div>	
		</form>
</body>
</html>