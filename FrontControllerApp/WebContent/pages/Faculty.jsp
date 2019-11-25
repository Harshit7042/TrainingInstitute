<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Student Register</h2>
<form action="FacultyData.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td>Faculty id</td>
		<td><input type="number" name="fid"></td>
	</tr>
	<tr>
		<td>Faculty name</td>
		<td><input type="text" name="fname"></td>
	</tr>
	<tr>
		<td>Department</td>
				<td><select name="fdept">
				<option >select</option>
						<option value="cse">cse</option>
						<option value="ece">ece</option>
						<option value="eee">eee</option>
						<option value="ise">ise</option>
						<option value="civil">civil</option>
						<option value="Me">Me</option>
				</select>
				</td>
			</tr>
	<tr>
		<td>Institute id</td>
		<td><input type="number" name="iid"></td>
	</tr>
	
		<td colspan="2" align="center"><input type="submit"
			value="Insert"></td>
	</tr>
</table>
</form>
</body>
</html>