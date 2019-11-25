<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institute home</title>
</head>
<body>

<h2 align="center">welcome</h2>
<font color="green" size="5">${requestScope.success }</font>

<form method="get" action="ViewStudent.jsp">
<input type="submit" id="1" value="View Student"/><br><br>
</form>

<form method="get" action="UploadArticle.jsp">
<input type="submit" id="1" value="Upload Article"/><br><br>
</form>

<form method="get" action="Faculty.jsp">
<input type="submit" id="1" value="Insert Faculty Details"/><br><br>
</form>


<form method="get" action="Updateinfo.jsp">
<input type="submit" id="1" value="Update info"/><br><br>
</form>
<form method="get" action="SendResponse.jsp">
<input type="submit" id="1" value="Send Response"/><br><br>
</form>
<form method="get" action="ViewRequest.jsp">
<input type="submit" id="1" value="View Request"/><br><br>
</form>
<form method="get" action="Viewfeedback.jsp">
<input type="submit" id="1" value="View feedback"/><br><br>
</form>


</body>
</html>