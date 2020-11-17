
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
			<div class="dropdown">
				<%
				HttpSession ses = request.getSession();
				String str = (String) ses.getAttribute("Login");
				out.println("<button onclick=\"myFunction()\" class=\"dropbtn active\"><i class=\"fa fa-fw fa-user\"></i>"+str+"</button>");
		       	%>
			<div id="myDropdown" class="dropdown-content">
				<a href="Profile"><i class='far fa-smile'></i>Profile</a>
                <a href="Logout"><i class='fas fa-hiking'></i>Logout</a>
			</div>
			</div>
			<a href="index.jsp"><i class="fa fa-fw fa-home"></i>Home</a>
		</div>

	</header>
	
	<div>
	<%
	try {
		Connection myCon = DBConnection.getConnection();
		PreparedStatement mySmt = myCon.prepareStatement("select * from Register");
		ResultSet myRes = mySmt.executeQuery();
		if (myRes.next() == false) {
			out.println("<h1>No Record Found</h1>");
		} else {
	%>
		<h1 align="center" style="color="white";">Received Complains</h1>
		<table class="w3-table-all">
			<tr class="w3-red">
				<th>SNo</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>ContactNo</th>
				<th>City</th>
				<th>State</th>
				<th>College ID</th>
				<th>College Name</th>
				<th>Complain</th>
				<th>Track ID</th>
				<th>Date Request Received</th>
				<th>Date Request Update</th>
				<th>Status</th>
			</tr>

			<%
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
						out.print("\t" + myRes.getString("State"));
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
						out.print("\t" + myRes.getString("DateRecentUpdate"));
						out.print("</td>");
						out.print("<td>");
						out.print("\t" + myRes.getString("Status"));
						out.print("</td>");
					}
				}
				}
			catch(Exception e)
			{
				System.out.println(e);
			}
			%>
		</table>
	</div>
	<button  class="register"onclick="window.location.href = 'LoginHome.jsp';"> Menu</button>
	

</body>
</html>