<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Students Registration</title>
<link rel="stylesheet" href="style.css"
	href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap">
</head>
<body style="background-color: lightgrey;">

	<div id="wrapper" style="margin-bottom: 10px">
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

		<div id="div2"
			style="background-color: white; padding-top: 4%; padding-bottom: 50%;">

			<div style="padding: 5%">
				<h3 style="color: #000080;">Student detail:</h3>

				<form action="StudentRegistration" method="post">
					<label for="name" style="width: 120px; display: inline-block;">Name:</label>
					<input type="text" id="name" name="name" style="width: 150px;"
						required="required"> <br> <br> <label
						for="course" style="width: 120px; display: inline-block;">Course:</label>
					<input type="text" id="course" name="course" style="width: 150px;"
						required="required"> <br> <br> <label
						for="mobile" style="width: 120px; display: inline-block;">Mobile:</label>
					<input type="text" id="mobile" name="mobile" style="width: 150px;"
						required="required"> <br> <br> <label
						for="father" style="width: 120px; display: inline-block;">Fathers'name:</label>
					<input type="text" id="father" name="father" style="width: 150px;"
						required="required"> <br> <br> <label
						for="mother" style="width: 120px; display: inline-block;">Mother's
						name:</label> <input type="text" id="mother" name="mother"
						style="width: 150px;" required="required"> <br> <br>
					<label for="qualification"
						style="width: 120px; display: inline-block;">Qualification:</label>
					<input type="text" id="qualification" name="qualification"
						style="width: 150px;" required="required"> <br> <br>
					<label for="birth" style="width: 120px; display: inline-block;">Date
						of birth:</label> <input type="date" id="birth" name="birth"
						style="width: 150px;" required="required"> <br> <br>
					<label for="joining" style="width: 120px; display: inline-block;">Date
						of joining:</label> <input type="date" id="joining" name="joining"
						style="width: 150px;" required="required"> <br> <br>
					<label for="submission"
						style="width: 120px; display: inline-block;">Date of
						submission:</label> <input type="date" id="submission" name="submission"
						style="width: 150px;" required="required"> <br> <br>
					<label for="paid" style="width: 120px; display: inline-block;">Paid:</label>
					<input type="text" id="paid" name="paid" style="width: 150px;"
						required="required"> <br> <br> <label for="fee"
						style="width: 120px; display: inline-block;">Fee:</label> <input
						type="text" id="fee" name="fee" style="width: 150px;"
						required="required"> <br> <br> <label
						for="balance" style="width: 120px; display: inline-block;">Balance:</label>
					<input type="text" id="balance" name="balance"
						style="width: 150px;" required="required"> <br> <br>
					<label for="adrress" style="width: 120px; display: inline-block;">Address:</label>
					<input type="text" id="address" name="address"
						style="width: 150px;" required="required"> <br> <br>
					<label for="trainer" style="width: 120px; display: inline-block;">Trainer:</label>
					<input type="text" id="trainer" name="trainer"
						style="width: 150px;" required="required"> <br> <br>
					<br> <input type="submit" value="Create">
				</form>
			</div>


		</div>
	</div>

</body>
</html>