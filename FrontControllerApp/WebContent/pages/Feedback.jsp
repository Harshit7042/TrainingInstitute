<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css">
<body>

<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Send Feedback</h1>
<h2 align="center">Send FeedBack</h2>
<form action="feedback.do">
            <p>Feedback Id</p>
            <input type="number" name="cid" placeholder="Enter Id">
             <p>Student Id</p>
            <input type="number" name="sid" placeholder="Enter Id">
             <p>Institute Id</p>
            <input type="number" name="iid" placeholder="Enter Id">
             <p>Feedback</p>
            <input type="text" name="feedback" placeholder="Enter Feedback">
           
            <input type="submit" name="" value="Send Feedback">
            <a href="#">Lost your password?</a><br>
            <a href="#">Don't have an account?</a>
</form></div>

</body>
</html>