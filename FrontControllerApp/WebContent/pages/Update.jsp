<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<link rel="stylesheet" type="text/css" href="style4.css">
<body>
<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Update Student Details</h1>
<h2 align="center">Update Student Details</h2>
<form action="Update.do">
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
            
            <input type="submit" name="" value="Update Student Information">

</form>
</body>
</html>