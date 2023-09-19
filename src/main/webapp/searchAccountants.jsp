
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Accountant"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Accountants</title>
<link rel="stylesheet" href="style.css">
</head>
<body style="background-color: lightgrey;">
	<div id="wrapper">
		<div id="div1" style="background-color: #008080;">
			<h1 id="titolo">PAYMENT BILLING SYSTEM</h1>
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

		<div id="div2"
			style="background-color: white; padding-top: 10%; overflow: auto;">
			<h2>Search Results</h2>
			<table border="1" style="background-color: black;">
				<tr style="background-color: grey;">
					<th width="100">Username</th>
					<th width="100">Password</th>
					<th width="100">Date of Joining</th>
					<th width="100">Date of Birth</th>
					<th width="100">Salary</th>
					<th width="100">Remove accountant</th>
				</tr>
				<%
				List<Accountant> accountants = (List<Accountant>) request.getAttribute("accountants");
				for (Accountant accountant : accountants) {
				%>
				<tr style="background-color: lightgrey;" align="center">
					<td><%=accountant.getUserName()%></td>
					<td><%=accountant.getPassword()%></td>
					<td><%=accountant.getDateOfJoining()%></td>
					<td><%=accountant.getDateOfBirth()%></td>
					<td><%=accountant.getSalary()%></td>
					<td>
						<form name="removeForm" action="RemoveAccountantServlet"
							method="post">
							<input type="hidden" name="username"
								value="<%=accountant.getUserName()%>"> <input
								type="submit" value="Remove">
						</form>
					</td>
				</tr>
				<%
				}
				%>
			</table>


		</div>
	</div>


</body>
</html>