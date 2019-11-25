<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<center>
<div class="wrap">
<h2 align="center">Check Institute</h2>
<form action="institutecheck.do" >
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td>Request id</td>
		<td><input type="text" name="iid"></td>
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