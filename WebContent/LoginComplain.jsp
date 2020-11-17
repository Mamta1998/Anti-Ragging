
<%@page import="java.sql.*"%>
<%@page import="database.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>Complain Section</title>
<script src="script/Dropdown.js"></script>
<link rel="stylesheet" type="text/css" href="css/styleLoginFeedback.css">
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
	<div >
		<h1 align="center" style="color='white';">Received Complains</h1>
		<table class="w3-table-all">
			<tr class="w3-red">
				<th>SNo</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>ContactNo</th>
				<th>City</th>
				<th>College ID</th>
				<th>College Name</th>
				<th>Complain</th>
				<th>Track ID</th>
				<th>Date Request Received</th>
				<th>Date Request Update</th>
				<th>Status</th>
			</tr>

			<%
				try {
					Connection myCon = DBConnection.getConnection();
					PreparedStatement mySmt = myCon.prepareStatement("select * from register where Status='Received' or Status='Pending'or Status='Open'or Status='Action Under Process'");
					ResultSet myRes = mySmt.executeQuery();
					if (myRes.next() == false) {
						response.sendRedirect("LoginComplainComplete.jsp");
					} else {
						myRes.beforeFirst();
					while (myRes.next()) {
						out.print("<tr>");
						out.print("<td>");
						out.print("\t" + myRes.getString("SNo"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("FirstName"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("LastName"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("Email"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("ContactNo"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("City"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("CollegeID"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("CollegeName"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("Complain"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("TrackID"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("DateRecieved"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("DateRecentlyUpdated"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("Status"));
						out.print("</td>");
					}
				}
			%>
		</table>
	</div>
	<div class="divi1">
		<form method="get" action="UpdateComplain">
			<p>
				<strong>Select the SNo to mark as reviewed:</strong>
			</p>
			<select style="width: 230px;" name="sno" class="mail" required>

				<%
					Connection myCon1 = DBConnection.getConnection();
						Statement mySmt1 = myCon1.createStatement();
						ResultSet myRes1 = mySmt1.executeQuery("select SNo from Register where Status='Received' or Status='Pending'or Status='Open'or Status='Action Under Process'");
						while (myRes1.next()) {
							out.print("<option value=" + myRes1.getString("SNo") + ">" + myRes1.getString("SNo") + "</option>");
						}
						
				      }
			          catch (Exception e) {
				          System.out.println(e);
		                	}
				%>
			</select> <br>
			<p>
				<strong>Select action taken:</strong>
			</p>
			<select style="width: 230px;" name="options" class="mail" required>
			<option value="Received">Received</option>
			<option value="Pending">Pending</option>
			<option value="Open">Open</option>
			<option value="Action Under Process" >Action under Process</option>
			<option value="Resolved">Resolved</option>
			</select> <br>
			<input type="submit" value="Submit " class="register">
		</form>
	</div>
	

</body>
</html>