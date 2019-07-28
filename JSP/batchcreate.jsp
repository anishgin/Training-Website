<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/main.css" />


	  <link rel="stylesheet" href="<%=request.getContextPath()%>/jquery-ui-1.11.4/jquery-ui.min.css">
<script src="<%=request.getContextPath()%>/jquery-ui-1.11.4/external/jquery/jquery.js"></script>
<script src="<%=request.getContextPath()%>/jquery-ui-1.11.4/jquery-ui.min.js"></script>
  <script>
  
	function bcode() {
		if (document.getElementById("bcode").value == "") {
			return false;
		} else {
			return true;
		}
	}

	function Coor() {
		if (document.getElementById("coor").value == "") {
			return false;
		} else {
			return true;
		}
	}
	
	function db() {
		if (document.getElementById("datepicker").value == "") {
			return false;
		} else {
			if (document.getElementById("datepicker2").value == "")
				return false;
			else
			return true;
		}
	}

	function intprompt() {
		var x = confirm("Please Confirm before you Submit");
		if (x == false) {
			return false;
		} 
		else
			if(bcode()&&Coor()&&db())
			{return true;}
			else
				alert("Please fill all fields");
				return false;	
		
	}
  
  $(function() {
    $( "#datepicker" ).datepicker({dateFormat:"yy-mm-dd"});
  });
  $(function() {
	    $( "#datepicker2" ).datepicker({dateFormat:"yy-mm-dd"});
	  });
  
  
	$(function() {
		$("#coor").tooltip({
			content : "Name of the Coordinator of this batch",
			track : true
		}),
		$("#bcode").tooltip({
			content : "This should have 5 characters eg:MAY15,JUN14. First 3 characters for month eg., JUN, JUL; Next 2 characters for year eg.,15 for 2015",
			track : true
		}),
		$("#datepicker").tooltip({
			content : "Click to select Start date",
			track : true
		}),
		$("#datepicker2").tooltip({
			content : "Click to select End date",
			track : true
		});
	});

  </script>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Batch</title>
</head>
<body>

		<div id="menuWrapper" class="menuWrapper full">
		<div style="margin-top: 0px; z-index: 1000;" id="menu"
			class="menu full">
			<div class="wrap ma">
				<a href="#" class="logo"></a>
				<nav class="column pc80"> / <a href="<%=request.getContextPath()%>/JSP/admin_home.jsp" class="transCB">Admin Home</a> /<a
					href="<%=request.getContextPath()%>" class="transCB">AUB Home
					Page</a> / <a href="" class="transCB">Training Schedule</a> / <a
					href="" class="transCB">AUB++</a> </nav>
			</div>
		</div>
	</div>

<h2>Create Batch</h2>
<form method="post" action="<%=request.getContextPath()%>/AleAdmin" onsubmit="return intprompt();">

<table cellpadding="20px"><tr><td>Batch Code</td><td><input type="text" maxlength="5" id="bcode" name="batchcode" title="tooltip"></td></tr>
<tr><td>Coordinator</td><td><input type="text" id="coor" title="tooltip" name="coordinator"></td></tr>
<tr><td>Start Date</td><td><input id="datepicker" name="sday" title="tooltip"></td></tr>
<tr><td>End Date</td><td><input id="datepicker2"  name="eday" title="tooltip"></td></tr></table>


<input type="submit" value="Create Batch" class="myButton"> 
<input type='hidden' name='param' value="batchcreate">

</form>



</body>
</html>