<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institute Registration</title>
</head>
<link rel="stylesheet" type="text/css" href="style4.css">
<body>
<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Institute Register Here</h1>
<h2 align="center">Institute Register</h2>
<form action="institutereg.do">
            <p>Institute Id</p>
            <input type="text" name="iid" placeholder="Enter Institute Id">
            <p>Institute Name</p>
            <input type="text" name="iname" placeholder="Enter Name">
              <p>Affiliation date</p>
            <input type="text" name="affdate" placeholder="Enter Date">
              <p>Address</p>
            <input type="text" name="iaddr" placeholder="Enter Address">
              <p>Seat</p>
            <input type="number" name="iseats" placeholder="Enter Seats">
              <p>Course</p>
            <input type="number" name="icourse" placeholder="Enter Course">
              <p>Password</p>
            <input type="password" name="ipass" placeholder="Enter Password">
            <input type="submit" name="" value="Register">
        
</form>
</body>
</html>