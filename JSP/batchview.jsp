<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.Beans.AleBeans"%>
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
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Batches</title>
<script>
	function doSome() {
		document.getElementById('form1').submit();
	}

	function display_exams() {
		document.getElementById("exams").style.display = 'block';
		document.getElementById("viewall").style.display = 'none';
	}
</script>
<script>
	$(function() {
		$("#tview").tooltip({
			content : "Click on individual batch for batch information",
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
					href="<%=request.getContextPath()%>/JSP/admin_home.jsp" class="transCB">Admin Home</a> / <a
					href="<%=request.getContextPath()%>" class="transCB">AUB Home
					Page</a> / <a href="" class="transCB">Training Schedule</a> / <a
					href="" class="transCB">AUB++</a> </nav>
			</div>
		</div>
	</div>
	<br><br>
<h2>Batch View</h2>	<br><br>

	<form id="form1" method="post"
		action="<%=request.getContextPath()%>/AleAdmin">

		<%
			ArrayList<AleBeans> alist = (ArrayList) request.getSession()
					.getAttribute("bvlist");
		%>
		<%
			if (alist != null) {
				Iterator itr = alist.iterator();
		%>
		<center>
			<table border=1 class=hoverTable>
			<thead>
				<tr>
					<th id="tview" title="tooltip">Batch</th>
					<th>Cordinator</th>
					<th>Start Date</th>
					<th>End Date</th>


				</tr></thead>
				<%
					while (itr.hasNext()) {
							AleBeans bbean = (AleBeans) itr.next();
				%>
				<tr>

					<td><a 
						href="<%=request.getContextPath()%>/AleAdmin?param=baDetails&selb=<%=bbean.getBatch()%>"><%=bbean.getBatch()%></a></td>

					<td><%=bbean.getCoor()%></td>
					<td><%=bbean.getSday()%></td>
					<td><%=bbean.getEday()%></td>



				</tr>
				<%
					}
				%>
			</table>
			<%
				}
			%>

		</center>
	</form>

</body>
</html>