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
        <h1>Insert Faculty</h1>
<form action="FacultyData.do">

<p>Faculty Id</p>
            <input type="number" name="fid" placeholder="Enter Id">
            <p>Faculty Name</p>
            <input type="text" name="fname" placeholder="Enter Name">
            <p>Department</p>
            <input type="text" name="fdept" placeholder="Enter Department">
            <p>Institute Id</p>
            <input type="number" name="iid" placeholder="Enter Institute Id">
            <input type="submit" name="" value="Insert Faculty">

</form>
</body>
</html>