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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alcatel University Board</title>
<script>
	$(function() {
		$("#tooltip-1").tooltip({
			content : "Training Schedule of current Active Batch",
			track : true
		}), $("#tooltip-2").tooltip({
			content : "Trainee Learning and Evaluation",
			track : true
		});

	});
</script>
<script>
	function doSome() {

		document.getElementById('form1').submit();

	}
</script>
</head>
<body>

	<!-- PAGE 1 -->
	<div style="height: 400px;" class="page page1 vab" id="page1">

		<div style="margin-top: 116.5px;" class="ma content mt3">
			<div class="columnbb pc40 right titleImg">
				<img alt="TopStyle 5"
					src="<%=request.getContextPath()%>/images/ALE_Logo1.jpg">
			</div>
			<div class="columnbb pc60">
				<h2 class="homeTitle">
					<span class="blue2"><strong class="blue1">Welcome
							to </strong>the new</span>&nbsp;training area<br> <span class="blue2">Alcatel
						University Board</span>
				</h2>
				<div class="homeLinks">
					<p id="tooltip-1" title="tooltip">
						<a href='#'><span>Training Schedule</span></a>
					</p>
					<p>
					<form id="form1" method="post"
						action="<%=request.getContextPath()%>/AleController">
						<a href="javascript:doSome();" id="tooltip-2" title="tooltip">Trainee
							Portal</a> <input type="hidden" name="param" value=tPortal />
						</p>
					</form>
					<!--   <p><a href="<%=request.getContextPath()%>/JSP/t_login.jsp"><span>Trainee
								Exam Portal</span></a> -->
					<p class='has-sub'>
						<!--	<a href='#'><span>Learning Links</span></a>
						 <ul>
							<li><a href='LoanController?param=RequestLoan'>Request Loan</a></li> 
							<li><a href='#'><span>Starters</span></a></li>
							<li><a href='#'><span>Advanced</span></a></li>
							<li><a href='#'><span>SIP</span></a></li>
							<li class='last'><a href='#'><span>Networking</span></a></li>
						</ul>
					<li class='last'><a href='#'><span>About Site</span></a></li>
				</ul> -->
					</p>
					<p>
						<a href="<%=request.getContextPath()%>/JSP/adminIndex.jsp"><span>Administrator</span></a>
					</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>