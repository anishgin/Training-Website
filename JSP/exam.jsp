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
</head>

<body>

<form  method="post" action="<%=request.getContextPath()%>/AleResultController">
<% AleBeans b =(AleBeans)request.getSession().getAttribute("tb"); %>
 <%=b.getUsr()%>,
<input type='hidden' name='Tname' value="<%=b.getTname()%>">
<input type='hidden' name='Batch' value="<%=b.getBatch()%>">
<input type='hidden' name='Usr' value="<%=b.getUsr()%>">
<input type='hidden' name='Exam' value="<%=b.getExam()%>">
<input type='hidden' name='Path' value="<%=b.getPath()%>">


<%
	ArrayList<AleBeans> dlist = (ArrayList)request.getSession().getAttribute("blist");


 	if (dlist!=null) {
 		Iterator itr= dlist.iterator();
 %>
	<%int i=0;
		while (itr.hasNext()) {
			
			
				AleBeans dbean = (AleBeans) itr.next();
						
	%>
	<fieldset title="Quetion" >
	<%=i+1%>). <%=dbean.getQuestion()%><br>
	<input type="radio" name="val<%=i%>" value="<%=dbean.getCh1()%>"><%=dbean.getCh1()%><br>
	<input type="radio" name="val<%=i%>" value="<%=dbean.getCh2()%>"><%=dbean.getCh2()%><br>
	<input type="radio" name="val<%=i%>" value="<%=dbean.getCh3()%>"><%=dbean.getCh3()%><br>
	<input type="radio" name="val<%=i%>" value="<%=dbean.getCh4()%>"><%=dbean.getCh4()%><br>
	<input type="radio" name="val<%=i%>" value="noans" checked="checked">I am not answering<br>
	</fieldset>		
	
	<%
	i++;	}}
	%>
	<input type="submit" value="Submit the Quiz" > <input type='hidden' name='rparam' value="equiz">
</form>

</body>
</html>