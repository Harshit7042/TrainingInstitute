<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="style4.css">
<body>
<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Update Institute Details</h1>
<form action="Updateinfo.do">




<p>Institute Id</p>
            <input type="number" name="iid" placeholder="Enter Institute Id">
            <p>Institute Name</p>
            <input type="text" name="iname" placeholder="Enter Name">
             <p>Password</p>
            <input type="password" name="ipass" placeholder="Enter Password">
              <p>Affiliation Date</p>
            <input type="text" name="affdate" placeholder="Enter Date">
              <p>Address</p>
            <input type="text" name="iaddr" placeholder="Enter Address">
              <p>Seats</p>
            <input type="number" name="iseats" placeholder="Enter Seats">
              <p>Course</p>
            <input type="number" name="icourse" placeholder="Enter Course">
             
            
            <input type="submit" name="" value="Update Institute Information">


</form>
</body>
</html>