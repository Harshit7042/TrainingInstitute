<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
        <h1>Institute Login Here</h1>
<h2 align="center">Login</h2>
<form action="login.do" id="login">

<p>Student Id</p>
            <input type="text" name="sid" placeholder="Enter Student Id">
            <p>Password</p>
            <input type="password" name="spass" placeholder="Enter Password">
            <input type="submit"  value="Login">
            <a href="#">Lost your password?</a><br>
</form>
	
</body>
</html>