<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<h2 align="center">Update Profile</h2>
<form action="Update.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td>Student id</td>
		<td><input type="text" name="sid"></td>
	</tr>
	<tr>
		<td>Name</td>
		<td><input type="text" name="sname"></td>
	</tr>
	<tr>
		<td>Qualification</td>
				<td><select name="squal">
				<option >select</option>
						<option value="SSLC">SSLC</option>
						<option value="PUC">PUC</option>
						<option value="BE">BE</option>
						<option value="BCA">BCA</option>
						<option value="BSc">BSc</option>
						<option value="MBA">MBA</option>
				</select>
				</td>
			</tr>
	<tr>
		<td>Contact</td>
		<td><input type="text" name="scontact"></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" name="saddr"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="email" name="semail"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="spass"></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center"><input type="submit"
			value="Register"></td>
	</tr>
</table>
</form>
</form>
</body>
</html>