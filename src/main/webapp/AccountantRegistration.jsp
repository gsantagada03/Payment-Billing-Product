<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Accountant Registration</title>
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
					<li><a href="HomeAdmin.jsp"
						style="text-decoration: none; color: white;">HOME</a></li>
					<li><a href="AdminLogin.jsp"
						style="text-decoration: none; color: white;">NEW REGISTRATION</a></li>
					<li><a href="AdminLogin.jsp"
						style="text-decoration: none; color: white;">MODIFY DETAILS</a></li>
					<li><a href="AdminLogin.jsp"
						style="text-decoration: none; color: white;">CONTACT US</a></li>
				</ul>
			</nav>
		</div>




		<div id="div2" style="background-color: white; padding-top: 10%;">


			<form id="AccountantForm" action="AccountantRegistration"
				method="post">
				<div style="margin-bottom: 10px;">
					<label for="branch" style="width: 120px; display: inline-block;">Branch:</label>
					<select id="branch" name="branch" style="width: 150px;">
						<option value="" style="display: none;">Select a branch</option>
						<option value="Downtown Branch">Downtown Branch</option>
						<option value="Eastside Office">Eastside Office</option>
						<option value="West End Location">West End Location</option>
						<option value="Northside Office">Northside Office</option>
						<option value="Southtown Division">Southtown Division</option>
					</select>
				</div>

				<div style="margin-bottom: 10px;">
					<label for="username" style="width: 120px; display: inline-block;">Username:</label>
					<input type="text" id="username" name="username"
						style="width: 150px;" required="required">
				</div>

				<div style="margin-bottom: 10px;">
					<label for="password" style="width: 120px; display: inline-block;">Password:</label>
					<input type="password" id="password" name="password"
						style="width: 150px;" required="required">
				</div>

				<div style="margin-bottom: 10px;">
					<label for="dateOfJoining"
						style="width: 120px; display: inline-block;">Date of
						Joining:</label> <input type="date" id="dateOfJoining"
						name="dateOfJoining" style="width: 150px;" required="required">
				</div>

				<div style="margin-bottom: 10px;">
					<label for="dateOfBirth"
						style="width: 120px; display: inline-block;">Date of
						Birth:</label> <input type="date" id="dateOfBirth" name="dateOfBirth"
						style="width: 150px;" required="required">
				</div>

				<div style="margin-bottom: 10px;">
					<label for="salary" style="width: 120px; display: inline-block;">Salary:</label>
					<input type="text" id="salary" name="salary" style="width: 150px;"
						required="required">
				</div>

				<div>

					<p id="usernameError" style="color: red; visibility: hidden;">
						Invalid username</p>
					<p id="passwordError" style="color: red; visibility: hidden;">
						Invalid password</p>

					<input type="submit" value="Create">

					<div></div>


				</div>
			</form>



		</div>
	</div>

	<script src="script.js"></script>

</body>
</html>