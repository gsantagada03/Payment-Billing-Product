<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Student"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Students To Modify</title>
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
			style="background-color: white; padding-top: 10%; overflow: auto;">
			<table border="1" style="background-color: black;">
				<tr style="background-color: grey;">
					<th width="100">Name</th>
					<th width="100">Modify</th>
				</tr>

				<%
				List<Student> students = (List<Student>) request.getAttribute("students");
				for (Student student : students) {
				%>
				<tr style="background-color: lightgrey;" align="center">
					<td><%=student.getName()%></td>
					<td>
						<form action="ModifyStudentForm.jsp" method="POST">
							<input type="hidden" name="studentName"
								value="<%=student.getName()%>">
							<button type="submit">Modify</button>
						</form>
					</td>

					<%
					}
					%>