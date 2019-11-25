<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<STYLE>

</STYLE>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
</head>
<body>

<body background="img5.jpeg" link="#000" alink="#017bf5" vlink="#000">
		<div class="main" id="home">
			<br />
			<h3 align="center">
				<font face="sans-serif" size="6" color="#2c3e50">LOGO</font>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<font face="sans" size="4">
					<a href="..\pages\AdminLogin.jsp">ADMIN LOGIN</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="..\pages\InstituteLogin.jsp">INSTITUTE LOGIN</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="..\pages\InstituteReg.jsp">INSTITUTE REGISTRATION</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="..\pages\Login.jsp">STUDENT LOGIN</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="..\pages\studentReg.jsp">STUDENT REGISTRATION</a>
				</font>
			</h3>
			<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br><br><br>
			<h1 align="center">
				<font face="sans-serif" color="#2980b9" size="7">
				SIMPLE AND ONE PAGE WEBSITE
				</font>
			</h1>
			<h3 align="center">
				<font face="Lato" color="#000" size="5">
					USING HTML ONLY (NO CSS USED)
				</font>
			</h3>
			<br />
			<h3 align="center">
			<a href="#">
				<font face="Lato" color="#000">GET STARTED</font>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#">
				<font face="Lato" color="#f00">SUBSCRIBE US</font>
			</a>
			</h3>
		</div>

		<!-- portfolio -->
		<br><br><br><br><br><br><br><br><br><br>
		<!-- <hr> -->
		<br><br><br><br><br><br>
		<div class="portfolio">
			<hr color="#fff" width="20%">
				<p align="center"><font face="sans-serif" color="#2ecc17" size="5.5">PORTFOLIO</font></p>
			<hr color="#fff" width="20%">
			<br><br>
			<table align="center" cellspacing="10" cellpadding="15">
				<tr>
					<td>
						<img src="img1.jpeg" height="200" width="300">
					</td>
					<td>
						<img src="img2.jpeg" height="200" width="300">
					</td>
					<td>
						<img src="img3.jpeg" height="200" width="300">
					</td>
				</tr>
				<tr>
					<td>
						<img src="img4.jpeg" height="200" width="300">
					</td>
					<td>
						<img src="img5.jpeg" height="200" width="300">
					</td>
					<td>
						<img src="img6.jpeg" height="200" width="300">
					</td>
				</tr>
				<tr>
					<th colspan="3" rowspan="2"><a href="#">LOAD MORE</a></th>
				</tr>
			</table>
		</div>

		<!-- contact us -->

		<br><br><br><br><br><br><br><br><br><br>
		<div class="contact">
			<hr color="#000" width="20%">
				<p align="center"><font face="sans-serif" color="#017bf5" size="5.5">CONTACT US</font></p>
			<hr color="#000" width="20%">
			<br><br>
			<form name="f1" id="contact-form">
				<table align="center" cellpadding="5" cellspacing="12" border="1" height="200">
					<tr>
						<td>
							<input type="text" name="first_name" placeholder="First Name" required="required" />
						</td>
						<td>
							<input type="text" name="Last_name" placeholder="Last Name" required="required" />
						</td>
					</tr>
					<tr>
						<td><input type="email" name="email" placeholder="Email" required="required" /></td>
						<td><input type="text" name="subject" placeholder="Subject" required="required" /></td>
					</tr>
					<tr>
						<th colspan="2">
							<textarea placeholder="Enter Message" required=""></textarea>
						</th>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" name="contact-submit" value="SEND">
						</th>
					</tr>
				</table>
			</form>
		</div>
		<br><br><br><br><br>
		<hr color="#000">
		<p align="center">
			<a href="index.html"><font face="sans-serif" size="7" color="#f00">LOGO</font></a>
		</p>
		<p align="center">
			<font face="sans-serif" size="4" color="#000">
				Proudly made by fullyworld web tutorials. Free to use.
			</font>
		</p>
</body>
</html>