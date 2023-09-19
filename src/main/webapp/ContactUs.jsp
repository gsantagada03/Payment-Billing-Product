<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Student"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us</title>
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

		<div id="div2"
			style="background-color: white; padding-top: 10%; position: relative">


			<img src="images/contactusimage.jpg"
				style="width: 25%; position: absolute; bottom: 0; margin-top: 26%; height: 60%">
			<h3 style="color: blue;">Contact Us:</h3>
			<input type="text"
				style="bottom: 0; margin-top: 5%; margin-left: 25%; width: 50%; height: 50%">


			<div style="display: flex; align-items: center;">
				<h4 style="color: blue; margin-left: 30%;">Email:</h4>
				<input type="text" style="color: black; margin-right: 50px;">
				<form action="ContactUs" method="post">
					<button type="submit" style="margin-left: 10px;">Submit</button>
				</form>
			</div>
		</div>
	</div>