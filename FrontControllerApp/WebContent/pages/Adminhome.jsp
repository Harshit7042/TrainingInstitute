<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<center>
<h2 align="center">welcome admin</h2>
<font color="green" size="5">${requestScope.success }</font>
<form method="get" action="Approve.jsp">
<input type="submit" id="1" value="Approve Institute"/><br><br>
</form>
<form method="get" action="Delete.jsp">
<input type="submit" id="1" value="Delete"/><br><br>
</form>
<form method="get" action="ViewStudent1.jsp">
<input type="submit" id="1" value="View Student1"/><br><br>
</form>
<form method="get" action="ViewComplaint.do">
<input type="submit" id="1" value="View Complaint"/><br><br>
</form></center>

	
</body>
</html>