<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Response1.do">
<font color="green" size="5">${requestScope.success }</font>
<table>
<tr>
		<td>Student name</td>
		<td><input type="text" name="sname"></td>
	</tr>

	<tr>
		<td colspan="2" align="center"><input type="submit" value="View"></td>
	</tr>
</table>
</form>
</body>
</html>