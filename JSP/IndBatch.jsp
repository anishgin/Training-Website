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


<title>Individual Batch</title>
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
	
	<br><br> <h2>Selected batch details</h2><br>
<%
	ArrayList<AleBeans>  alist = (ArrayList)request.getSession().getAttribute("ibdet");
%> <%
 	if (alist!= null) {
 		Iterator itr =alist.iterator();
 		int i=1;
 %>
<center>
<table border=1 class="hoverTable">
<thead>
	<tr>
		<th>Sl No.</th>
		<th>Name</th>
		<th>Emp ID</th>
		<th colspan=3>Starters</th>
		<th colspan=3>Networking</th>
		<th colspan=3>Advanced</th>
		<th colspan=3>IP</th>
		<th>Total</th>
						
				
	</tr></thead>
	<%
		while (itr.hasNext()) {
			AleBeans bbean = (AleBeans) itr.next();
	%>
	<tr>
		<td><%=i %></td>
		<td><%=bbean.getTname()%></td>
	    <td><%=bbean.getTusr()%></td>
	    <td><%=bbean.getStarters()%></td><td><%=bbean.getpStarters()%></td><td><%=bbean.getStarters()+bbean.getStarters()%></td>
		<td><%=bbean.getNetworking()%></td><td><%=bbean.getpNetworking()%></td><td><%=bbean.getNetworking()+bbean.getpNetworking()%></td>
	    <td><%=bbean.getAdvanced()%></td><td><%=bbean.getpAdvanced()%></td><td><%=bbean.getAdvanced()+bbean.getpAdvanced()%></td>
	    <td><%=bbean.getIP()%></td><td><%=bbean.getpIP()%></td><td><%=bbean.getIP()+bbean.getIP()%></td>
	    
	    <!-- Total Calculation  -->
	    
	    
	    <%int total=0, score=0;
	    if(bbean.getStarters()>0)
	    	{
	    	total=total+50;
	    	score=score+bbean.getStarters();
	    	}
	    if(bbean.getpStarters()>0)
    	{
    	total=total+50;
    	score=score+bbean.getpStarters();
    	}
	    if(bbean.getNetworking()>0)
    	{
    	total=total+50;
    	score=score+bbean.getNetworking();
    	}
	    if(bbean.getpNetworking()>0)
    	{
    	total=total+50;
    	score=score+bbean.getpNetworking();
    	}
	    if(bbean.getAdvanced()>0)
    	{
    	total=total+50;
    	score=score+bbean.getAdvanced();
    	}
	    if(bbean.getpAdvanced()>0)
    	{
    	total=total+50;
    	score=score+bbean.getpAdvanced();
    	}
	    if(bbean.getIP()>0)
    	{
    	total=total+50;
    	score=score+bbean.getIP();
    	}
	    if(bbean.getpIP()>0)
    	{
    	total=total+50;
    	score=score+bbean.getpIP();
    	}
	    System.out.println(score+"out of"+total);
	    
	    %>
	
		<td><%=((float)score/(float)total)*100%>%</td>
		
	</tr>
	<%
		i++; }
	%>
</table>
<%
	}
%>
		
</center>
</body>
</html>