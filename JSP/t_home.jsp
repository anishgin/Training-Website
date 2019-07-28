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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/jquery-ui-1.11.4/jquery-ui.min.css">
<script src="<%=request.getContextPath()%>/jquery-ui-1.11.4/external/jquery/jquery.js"></script>
<script src="<%=request.getContextPath()%>/jquery-ui-1.11.4/jquery-ui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/CSS/main.css" />
<script language="JavaScript" type="text/javascript">
	<!-- window.history.forward(1);
	
	$(function() {
        $( "#dialog-1" ).dialog({
        	width:500,
        	
           autoOpen: false,  
           hide: "puff",
           show : "slide",
           height:200 
        });
        $( "#opener" ).click(function() {
           $( "#dialog-1" ).dialog( "open" );
        });
     });
	
	
</script>
<style style="text/css">

 .ui-widget-header,.ui-state-default, ui-button{
            background:#b9cd6d;
            border: 1px solid #b9cd6d;
            color: #FFFFFF;
            font-weight: bold;
         }
         
         
         


</style>

<title>Trainee Home Page</title>
</head>
<body>

<!--  
	<%
		//response.setHeader("Pragma", "no-cache");
		//response.setHeader("Cache-Control", "no-store");
		//response.setHeader("Expires", "0");
		//response.setDateHeader("Expires", -1);
	%>
	-->
	<div class="page page1 vab columnbb">
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
		<!-- body -->
		<%
			AleBeans b = (AleBeans) request.getSession().getAttribute("tb");
		%>
		<div class="columnbb pc60">
			<form method="post"
				action="<%=request.getContextPath()%>/AleExamController">
				
				<div id="dialog-1" title="<%=b.getTname()%>'s Details">	<table cellpadding=10px>
		<tr><td><strong>Batch</strong></td><td><%=b.getBatch() %></td><td><strong>Coordinator</strong></td><td><%=b.getCoor() %></td></tr>
		<tr><td><strong>StartDate</strong></td><td><%=b.getSday() %></td><td><strong>EndDate</strong></td><td><%=b.getEday() %></td></tr>
		</table></div>
      				
				<h3 class="blue2">
					Welcome
					<strong class="blue1" id="opener"><%=b.getTname()%></strong>
				</h3>
				

			</form>
		</div>
		<%--    To be Improved by Concatination of function --%>

				
		<h4>
			<%
				if (b.getExam() != null) {
			%>
	
		<br><br><br><br>
		
		<div class="columnbb pc40">		
		<div class="ui-widget">
	<div class="ui-state-highlight ui-corner-all" style="margin-top: 20px; padding: 0 .7em;">
		<p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
		<strong>Exam Active: </strong><a
				href="<%=request.getContextPath()%>/JSP/exam_home.jsp"><%=b.getExam()%></a></p>
	</div>
</div></div>	
			<%
				;
				}
			%>
			<%
				if (b.getExam() == null) {
			%>
			 
			<%
				;
				}
			%>

		</h4>
		
		<br><br><br>

		
		
		<div class="columnbb pc60" id="links">
		<h3>Learning Links</h3>
		<ul>
			<li><a href="http://inchnal02.in.alcatel-lucent.com/oxe_product_training/Basic%20telephony/Content/AUBA1.htm"><span>Basics</span></a></li>
			<li><a href="http://inchnal02.in.alcatel-lucent.com/oxe_product_training/Starter%20AUB%20training%20V%201.0/Content/StarterA1.htm"><span>Starters</span></a></li>
			<li><a href="http://inchnal02.in.alcatel-lucent.com/oxe_product_training/Advanced%20%20AUB%20training%20V%201.0/Content/AdvancedA1.htm"><span>Advanced</span></a></li>
			<li><a href="http://inchnal02.in.alcatel-lucent.com/oxe_product_training/Network_AUB_Training/Content/NetworkA1.htm"><span>Networking</span></a></li>
			<li><a href="http://inchnal02.in.alcatel-lucent.com/oxe_product_training/IPC_%20Expert_%20AUB_%20Training/Content/IPCA1.htm"><span>IPC Expert</span></a></li>
		</ul>
		
		</div>
		
		
      <br><br><br><br><br><br><br><br><br><br><br><br><br>
<div>
<h3 align="left">Exam Scores and Feedback</h3>
		<table border=1 align="center" class="hoverTable">
			<thead>
			<tr>
				<th>Exam Name</th>
				<th>Theory</th>
				<th>Practical</th>
				<th>Total</th>
				<th>Feedback</th>
				<th>Feedback Given by</th>
			</tr></thead>
			<tr>
				<td><strong>Starters</strong></td>
				<td>
					<%
						if (b.getStarters() == 0) {
					%> Not Taken <%
						;
						}
					%> <%
 	if (b.getStarters() > 0) {
 %> <%=b.getStarters()%> <%
 	;
 	}
 %>
				</td>
				<td>
					<%
						if (b.getpStarters() == 0) {
					%> Not Taken <%
						;
						}
					%> <%
 	if (b.getpStarters() > 0) {
 %> <%=b.getpStarters()%> <%
 	;
 	}
 %>
				</td>
				<td><%=b.getStarters() + b.getpStarters()%></td>
				<td><%=b.getfStarters()%></td><td><%=b.geteStarters()%></td>
			</tr>
			<tr>
				<td><strong>Networking</strong></td>
				<td>
					<%
						if (b.getNetworking() == 0) {
					%> Not Taken <%
						;
						}
					%> <%
 	if (b.getNetworking() > 0) {
 %> <%=b.getNetworking()%> <%
 	;
 	}
 %>
				</td>
				<td>
					<%
						if (b.getpNetworking() == 0) {
					%> Not Taken <%
						;
						}
					%> <%
 	if (b.getpNetworking() > 0) {
 %> <%=b.getpNetworking()%> <%
 	;
 	}
 %>
				</td>
				<td><%=b.getNetworking() + b.getpNetworking()%></td>
				<td><%=b.getfNetworking()%></td><td><%=b.geteNetworking()%></td>
			</tr>
			<tr>
				<td><strong>Advanced</strong></td>
				<td>
					<%
						if (b.getAdvanced() == 0) {
					%> Not Taken <%
						;
						}
					%> <%
 	if (b.getAdvanced() > 0) {
 %> <%=b.getAdvanced()%> <%
 	;
 	}
 %>
				</td>
				<td>
					<%
						if (b.getpAdvanced() == 0) {
					%> Not Taken <%
						;
						}
					%> <%
 	if (b.getpAdvanced() > 0) {
 %> <%=b.getpAdvanced()%> <%
 	;
 	}
 %>
				</td>
				<td><%=b.getAdvanced() + b.getpAdvanced()%></td>
				<td><%=b.getfAdvanced()%></td><td><%=b.geteAdvanced()%></td>
			</tr>
			<tr>
				<td><strong>IP</strong></td>
				<td>
					<%
						if (b.getIP() == 0) {
					%> Not Taken <%
						;
						}
					%> <%
 	if (b.getIP() > 0) {
 %> <%=b.getIP()%> <%
						;
						}
					%>
				</td>
				<td>
					<%
						if (b.getpIP() == 0) {
					%> Not Taken <%
						;
						}
					%> <%
 	if (b.getpIP() > 0) {
 %> <%=b.getpIP()%> <%
						;
						}
					%>
				</td>
				<td><%=b.getIP() + b.getpIP()%></td>
				<td><%=b.getfIP()%></td><td><%=b.geteIP()%></td>
			</tr>

		</table>
</div>

 <br><br> <br><br>


		
	</div>

		<div style="color:#00FF00;" id='footer' >
			2015 © Anish G<div class='footerContent'>
				Mail me <a>anish.ganesan@alcatel-lucent.com</a>.
			</div>
		</div>
		
  	
</body>
</html>