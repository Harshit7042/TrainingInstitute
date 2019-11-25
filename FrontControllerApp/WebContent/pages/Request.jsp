<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sending Request</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css">
<body>

<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Send Request To College</h1>

<form action="request.do">
            <p>Student Name</p>
            <input type="text" name="sname" placeholder="Enter Name">
            <p>Student Qualification</p>
            <input type="text" name="squal" placeholder="Enter Qualification">
            <p>Student Marks</p>
            <input type="number" name="marks" placeholder="Enter Marks">
            <input type="submit" name="" value="Send Request">
          
</form></div>

</body>
</html>