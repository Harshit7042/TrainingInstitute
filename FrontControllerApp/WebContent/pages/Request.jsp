<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sending Request</title>
</head>
<body>
<center>
<div class="wrap">
<h2 align="center">Register</h2>
<form action="request.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td>Request id</td>
		<td><input type="text" name="sname"></td>
	</tr>
	<tr>
		<td>Student id</td>
		<td><input type="text" name="squal"></td>
	</tr>
	<tr>
		<td>Institute Id</td>
		<td><input type="number" name="marks"></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center"><input type="submit"
			value="send"></td>
	</tr>
</table>
</form></div>
</center>
</body>
</html>