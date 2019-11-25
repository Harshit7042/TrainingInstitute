<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Institute send response to student</h2>
<form action="SendResponse.do" id="login">

<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	
	<tr>
		<td>Student name </td>
		<td><input type="number" name="sname"></td>
	</tr>
	<tr>
		<td>Response</td>
		<td><input type="text" name="response"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="send"></td>
	</tr>
</table>
</form>
</body>
</html>