<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Article</title>
</head>
<body>
<center>
<div class="wrap">
<h2 align="center">Article </h2>
<form action="ArticleUpload.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td>Article id</td>
		<td><input type="number" name="aid"></td>
	</tr>
	<tr>
		<td>Institute id</td>
		<td><input type="number" name="iid"></td>
	</tr>
	<tr>
		<td>Article</td>
		<td><input type="text" name="article"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit"
			value="upload"></td>
	</tr>
</table>
</form></div>
</body>
</html>