<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.util.*"%>
<%@page import="com.Beans.AleBeans"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/main.css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exam Home</title>
</head>
<body>

<%
		AleBeans b = (AleBeans)request.getSession().getAttribute("tb");
	%>
 
 Welcome <%=b.getTname() %><br></br><br></br>
 Please verify your details:<br></br>
 Batch  Code: <%=b.getBatch() %><br></br>
 Start date:  <%=b.getSday() %><br></br>
 End date:  <%=b.getEday() %><br></br>
 Coordinator :  <%=b.getCoor() %><br></br>
 
 
 	<form method="post" action="<%=request.getContextPath()%>/AleExamController">
		
<b>Exam Confirmation:</b><br>
You have selected <%=b.getExam() %> exam<br>
Please Confirm by clicking the button<br>
The Exam has 50 questions and each carries 1 mark<br>
Please Check the Answers and Submit<br>
No Negative Marks<br><br>

	<input type='hidden' name='Usr' value="<%=b.getUsr()%>">	
  	<input type='submit' align="middle" value="Confirm" >
  	<input type='hidden' name='Path' value="<%=b.getPath()%>">
  	<input type='hidden' name='Exam' value="<%=b.getExam()%>">
  	<input type='hidden' name='param' value="takeexam">  
	</form>
 
 
 
</body>
</html>