<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institute Login</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css">
<body>
<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Institute Login Here</h1>
<h2 align="center">Institute Login</h2>
<form action="instituteLogin.do" id="login">

<p>Institute Name</p>
            <input type="text" name="iname" placeholder="Enter Institute Name">
            <p>Password</p>
            <input type="password" name="ipass" placeholder="Enter Password">
            <input type="submit" name="" value="Login">
            <a href="#">Lost your password?</a><br>
</form>
	
</body>
</html>