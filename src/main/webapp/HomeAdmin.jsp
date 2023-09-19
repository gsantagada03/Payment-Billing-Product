<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Home</title>
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


			<%
			String deleteMessage = (String) request.getAttribute("Delete");
			%>
			<%
			if (deleteMessage != null) {
			%>
			<div id="message" style="color: red;">
				<%=deleteMessage%>
			</div>
			<%
			}
			%>


			<%
			String message = (String) request.getAttribute("Registration");
			%>
			<%
			if (message != null) {
			%>
			<div id="message" style="color: green;">
				<%=message%>
			</div>
			<%
			}
			%>
			<br> <br> <br>







			<form action="SearchAccountant" method="post">
				<div style="margin-bottom: 10px;">
					<label for="branch" style="width: 120px; display: inline-block;">Branch:</label>
					<select id="branch" name="branch" style="width: 150px;">
						<option value="Downtown Branch">Downtown Branch</option>
						<option value="Eastside Office">Eastside Office</option>
						<option value="West End Location">West End Location</option>
						<option value="Northside Office">Northside Office</option>
						<option value="Southtown Division">Southtown Division</option>
					</select>
				</div>

				<div style="margin-bottom: 10px;">
					<label for="find" style="width: 120px; display: inline-block;">Find
						accountant:</label> <input type="text" id="find" name="find"
						style="width: 150px;">
				</div>


				<input type="submit" value="Search" style="width: 100px;">
			</form>

			<form action="AccountantRegistration">
				<a href="AccountantRegistration.jsp"
					style="display: flex; justify-content: flex-end;"> Create New
					Accountant </a>
			</form>
			<div id="logout" style="margin-top: 100px;">
				<form action="AdminLogout" method="post">
					<input type="submit" value="LOG OUT">
				</form>
			</div>

		</div>
	</div>
</body>
</html>