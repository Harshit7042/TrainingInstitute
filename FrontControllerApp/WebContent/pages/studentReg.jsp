<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/stylesheet.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Register</title>
</head>
<link rel="stylesheet" type="text/css" href="style4.css">
<body>
<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Student Register Here</h1>
<h2 align="center">Student Register</h2>
<form action="studreg.do">
            <p>Student Id</p>
            <input type="text" name="sid" placeholder="Enter Student Id">
            <p>Student Name</p>
            <input type="text" name="sname" placeholder="Enter Name">
              <p>Qualification</p>
            <input type="text" name="squal" placeholder="Enter Qualification">
              <p>Contact</p>
            <input type="text" name="scontact" placeholder="Enter Contact no">
              <p>Address</p>
            <input type="text" name="saddr" placeholder="Enter Address">
              <p>Email</p>
            <input type="email" name="semail" placeholder="Enter Email">
              <p>Password</p>
            <input type="password" name="spass" placeholder="Enter Password">
             <p>Institute Id</p>
             <input type="number" name="iid" placeholder="Enter Institute Id">
            <input type="submit" name="" value="Register">
</form>
</body>
</html>