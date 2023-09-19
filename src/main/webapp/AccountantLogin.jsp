<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Accountant Login</title>
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
					<li><a href="AccountantLogin.jsp"
						style="text-decoration: none; color: white;">HOME</a></li>
					<li><a href="AccountantLogin.jsp"
						style="text-decoration: none; color: white;">NEW REGISTRATION</a></li>
					<li><a href="AccountantLogin.jsp"
						style="text-decoration: none; color: white;">MODIFY DETAILS</a></li>
					<li><a href="AccountantLogin.jsp"
						style="text-decoration: none; color: white;">CONTACT US</a></li>
				</ul>
			</nav>
		</div>




		<div id="div2" style="background-color: white; padding-top: 10%;">


			<br> <br>


			<div id="form">
				<form action="AccountantLogin" method="post">
					<p id="login">Login Form</p>
					<label for="username"> Username:</label> &nbsp; &nbsp; <input
						type="text" name="username"> <br> <br> <label
						for="password">Password:</label> &nbsp; &nbsp; <input
						type="password" name="password"> <br> <br> <input
						type="submit" value="Sign in">
				</form>
				<%
				String errorMessage = (String) request.getAttribute("Error");
				%>
				<%
				if (errorMessage != null) {
				%>
				<div id="Error" style="color: red;">
					<p id="p error"><%=errorMessage%></p>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>






</body>
</html>