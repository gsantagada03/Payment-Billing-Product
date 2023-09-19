<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Accountant Home</title>
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

			<%
			String modificationMessage = (String) request.getAttribute("Modification");
			if (modificationMessage != null) {
			%>
			<div id="modificationDiv" style="color: blue;">
				<p id="p modification"><%=modificationMessage%></p>
			</div>
			<%
			}
			%>
			<%
			String queryMessage = (String) request.getAttribute("Query");
			if (queryMessage != null) {
			%>
			<div id="queryDiv" style="color: blue;">
				<p id="p modification"><%=queryMessage%></p>
			</div>
			<%
			}
			%>



			<form action="searchStudent" method="post">
				<div style="margin-bottom: 10px;">
					<label for="find" style="width: 120px; display: inline-block;">Find
						student:</label> <input type="text" id="find" name="find"
						style="width: 150px;">
				</div>



				<input type="submit" value="Search" style="width: 100px;">
			</form>

			<%
			String registrationMessage = (String) request.getAttribute("Registration");
			if (registrationMessage != null) {
			%>
			<div id="registrationDiv" style="color: blue;">
				<p id="p registration"><%=registrationMessage%></p>
			</div>
			<%
			}
			%>



			<form action="AccountantLogout" method="post">
				<div id="logout" style="margin-top: 100px;">
					<input type="submit" value="LOG OUT">
				</div>
			</form>



		</div>
	</div>



</body>
</html>