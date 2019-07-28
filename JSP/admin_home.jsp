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
<title>Administrator Home</title>

<script> 
function doSome(){
		document.getElementById('form1').submit();
	}

function display_exams() {
	document.getElementById("exams").style.display = 'block';
	document.getElementById("viewall").style.display = 'none';
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
					href="<%=request.getContextPath()%>" class="transCB">AUB Home
					Page</a> / <a href="" class="transCB">Training Schedule</a> / <a
					href="" class="transCB">AUB++</a> </nav>
			</div>
		</div>
	</div>
<h2>Administrator's Home</h2>
<%
		AleBeans b = (AleBeans)request.getSession().getAttribute("ad");
	%>
	<form id="form1" method="post"
		action="<%=request.getContextPath()%>/AleAdmin">

		<ul>
			<li><h3>Manage Batches</h3>
				<ul>
					<li><a href="javascript:doSome();">Batch View</a> <input
						type="hidden" name="param" value=batchview /></li>
					<li><a
						href="<%=request.getContextPath()%>/JSP/batchcreate.jsp">Create
							Batch </a></li>
				</ul></li>
		</ul>

		<ul>
			<li><h3>Manage Trainees</h3>
				<ul>
					<li><a href="<%=request.getContextPath()%>/AleAdmin?param=bAdmin">Register
							Trainee </a><input
						type="hidden" name="param" value=bAdmin /></li>

				</ul></li></ul>
</form>
<form id="form2" method="post"
		action="<%=request.getContextPath()%>/AleAdmin">

			<ul>
			 <li><h3>Manage Exams</h3>
			<ul><li onclick="display_exams()"><a>Select an Exam to Activate</a>
	
	
		<div id="exams" style="display: none;">
		<h4><%if(b.getExam()!=null){ %>
				Current Active Exam :<%=b.getExam()%>  <% ;} %>
		<%if(b.getExam()==null){ %>
				There are no Active Exams <% ;} %>		
	
	</h4>
		<select name="ActExam">
			<option selected="selected" value=Noexam>No Exam</option>
			<option value=Starters>Starters</option>
			<option value=Networking>Networking</option>
			<option value=Advanced>Advanced</option>
			<option value=IP>IP</option>
		</select> <input type="submit" value="Activate"> <input type='hidden'
			name='param' value="ActivateExam">
	</li></ul></li></div>

		</ul></form>
		
		
</body>
</html>