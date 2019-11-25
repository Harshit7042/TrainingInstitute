<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Article</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css">
<body>
<center>
<div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Upload Article</h1>

<form action="ArticleUpload.do">


   <p>Article Id</p>
            <input type="number" name="aid" placeholder="Enter Id">
             <p>Institute Id</p>
            <input type="number" name="iid" placeholder="Enter Id">
             <p>Article</p>
            <input type="text" name="article" placeholder="Enter Article">
     
           
            <input type="submit" name="" value="Upload Article">

</form></div>
</body>
</html>