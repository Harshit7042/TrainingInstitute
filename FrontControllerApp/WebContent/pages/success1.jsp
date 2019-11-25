<%@page import="com.keane.training.domain.Institute"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<font color="green" size="10">${requestScope.success }</font>
<h3>Welcome ${requestScope.details.iname }</h3>
<h4>Please note your password for further use
${requestScope.details.ipass }</h4>


<span><a href="index.jsp">Click here </a> to login</span>
</body>
</html>