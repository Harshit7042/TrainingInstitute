<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css">
<body>
<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Institute send response to student</h1>

<form action="SendResponse.do" id="login">

            <p>Student Name</p>
            <input type="text" name="sname" placeholder="Enter name">
            <p>Response</p>
            <input type="text" name="response" placeholder="Enter Response">
            <input type="submit" name="" value="Send Response">
            


</form>
</body>
</html>