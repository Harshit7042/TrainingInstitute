<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student home</title>
</head>
<body  background="a.jpeg">
<h2 align="center">welcome Student</h2>
<font color="green" size="5">${requestScope.success }</font>
<form method="get" action="Update.jsp">
<input type="submit" id="1" value="Update Profile"/><br><br>
</form>

<form method="get" action="Response1.jsp">
<input type="submit" id="1" value="View Response"/><br><br>
</form>
<form method="get" action="Feedback.jsp">
<input type="submit" id="1" value="Send feedback"/><br><br>
</form>
<form method="get" action="ViewFaculty.do">
<input type="submit" id="1" value="View Faculty"/><br><br>
</form>
<form method="get" action="ViewArticle.jsp">
<input type="submit" id="1" value="View Article"/><br><br>
</form>
<form method="get" action="InstituteCheck.jsp">
<input type="submit" id="1" value="Check institute"/><br><br>
</form>
</body>
</html>