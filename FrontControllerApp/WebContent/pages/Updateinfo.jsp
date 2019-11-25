<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Update profile</h2>
<form action="Updateinfo.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td>Institute id</td>
		<td><input type="number" name="iid"></td>
	</tr>
	<tr>
		<td>Institute name</td>
		<td><input type="text" name="iname"></td>
	</tr>
	<tr>
		<td>Affiliation date</td>
		<td><input type="text" name="affdate"></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" name="iaddr"></td>
	</tr>
	<tr>
		<td>Seat</td>
		<td><input type="number" name="iseats"></td>
	</tr>
	<tr>
		<td>Course</td>
		<td><input type="number" name="icourse"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="ipass"></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center"><input type="submit"
			value="Update"></td>
	</tr>
</table>
</form>
</body>
</html>