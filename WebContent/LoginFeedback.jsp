
<%@page import="java.sql.*"%>
<%@page import="database.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>Feedback</title>
<script src="script/Dropdown.js"></script>
<link rel="stylesheet" type="text/css" href="css/styleLoginFeedback1.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>


<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
		<header>
		<div class="navbar">
			<div class="logo">
				<img src="css/images/logo.jpeg">
			</div>
			
			<a href="index.jsp"><i class="fa fa-fw fa-home"></i>Home</a>
		</div>

	</header>
	<div class="divi">
		<h1 align="center">Received Feedback</h1>
		<table class="w3-table-all">
			<tr class="w3-red">
				<th>SNo</th>
				<th>Name</th>
				<th>Email</th>
				<th>Overall Experience</th>
				<th>Comments</th>
				<th>Status</th>
			</tr>

			<%
				try {
					Connection myCon = DBConnection.getConnection();
					PreparedStatement mySmt = myCon.prepareStatement("select * from feedback where Status='Received' or Status='Pending'or Status='Open'or Status='Action Under Process'");
					ResultSet myRes = mySmt.executeQuery();
					if (myRes.next() == false) {
						response.sendRedirect("LoginFeedbackComplete.jsp");
					} else {
						myRes.beforeFirst();
					while (myRes.next()) {
						out.print("<tr>");
						out.print("<td>");
						out.print("\t" + myRes.getString("SNo"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("Name"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("contact"));
						out.print("</td>");
						
						out.print("<td>");
						out.print("\t" + myRes.getString("OE"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("Comment"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("Status"));
						out.print("</td>");
						out.print("</tr>");
					}
				}
			%>
		</table>
	</div>
	<div class="divi1">
		<form method="get" action="UpdateFeedback">
			<p>
				<strong>Select the SNo to mark as reviewed:</strong>
			</p>
			<select style="width: 230px;" name="sno" class="mail" required>

				<%
					Connection myCon1 = DBConnection.getConnection();
						Statement mySmt1 = myCon1.createStatement();
						ResultSet myRes1 = mySmt1.executeQuery("select SNo from feedback where Status='Received' or Status='Pending'or Status='Open'or Status='Action Under Process'");
						while (myRes1.next()) {
							out.print("<option value=" + myRes1.getString("SNo") + ">" + myRes1.getString("SNo") + "</option>");
						}
				      }
			          catch (Exception e) {
				          System.out.println(e);
		                	}
				%>
			</select> <br>
			<input type="submit" value="Submit " class="register">
		</form>
	</div>
	

</body>
</html>