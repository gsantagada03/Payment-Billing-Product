<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modify Detail</title>
<link rel="stylesheet" href="style.css"
	href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap">
</head>
<body style="background-color: lightgrey;">

	<div id="wrapper">
		<div id="div1" style="background-color: #008080;">
			<h1 id="titolo" style="color: white;">PAYMENT BILLING SYSTEM</h1>
			<img id="immaginelogin" src="images/immaginelogin.jpg">


			<nav>
				<ul>
					<li><a href="AccountantHome.jsp"
						style="text-decoration: none; color: white;">HOME</a></li>
					<li><a href="NewRegistration.jsp"
						style="text-decoration: none; color: white;">NEW REGISTRATION</a></li>
					<li><a href="ModifyDetail.jsp"
						style="text-decoration: none; color: white;">MODIFY DETAILS</a></li>
					<li><a href="ContactUs.jsp" style="text-decoration: none; color: white;">CONTACT
							US</a></li>
				</ul>
			</nav>
		</div>




		<div id="div2" style="background-color: white; padding-top: 10%;">


			<form action="searchStudentToModify" method="post">
				<div style="margin-bottom: 10px;">
					<label for="find" style="width: 120px;">Find student to
						modify:</label> <input type="text" id="find" name="find"
						style="width: 150px;">
				</div>


				<input type="submit" value="Search" style="width: 100px;">
			</form>

		</div>
	</div>