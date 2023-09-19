<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Student"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Students</title>
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
					<th width="100">Course</th>
					<th width="100">Mobile</th>
					<th width="100">Father's name</th>
					<th width="100">Mother's name</th>
					<th width="100">Qualification</th>
					<th width="100">Date of birth</th>
					<th width="100">Date of joining</th>
					<th width="100">Date of submission</th>
					<th width="100">Paid</th>
					<th width="100">Fee</th>
					<th width="100">Balance</th>
					<th width="100">Address</th>
					<th width="100">Trainer</th>
				</tr>

				<%
				List<Student> students = (List<Student>) request.getAttribute("students");
				for (Student student : students) {
				%>
				<tr style="background-color: lightgrey;" align="center">
					<td><%=student.getName()%></td>
					<td><%=student.getCourse()%></td>
					<td><%=student.getMobile()%></td>
					<td><%=student.getFatherName()%></td>
					<td><%=student.getMotherName()%></td>
					<td><%=student.getQualification()%></td>
					<td><%=student.getDateOfBirth()%></td>
					<td><%=student.getDateOfJoining()%></td>
					<td><%=student.getDateOfSubmission()%></td>
					<td><%=student.getPaid()%></td>
					<td><%=student.getFee()%></td>
					<td><%=student.getBalance()%></td>
					<td><%=student.getAddress()%></td>
					<td><%=student.getTrainer()%></td>
				</tr>
				<%
				}
				%>
			</table>

		</div>
	</div>