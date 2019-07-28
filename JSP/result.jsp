<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <%@page import="java.util.*"%>
<%@page import="com.Beans.AleBeans"%>
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>

<%
	AleBeans score= (AleBeans)request.getSession().getAttribute("Score");
 %>	
	<h1>Hi <%=score.getTname() %></h1>
	<h2>You Have Scored :<%=score.getScore()%> in <%=score.getExam() %></h2>
	Thanks for participating

</body>
</html>