
<%@page import="database.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html lang="en" dir="ltr">
<head>    
    <title>Complain Section</title>
    <script src="script/Dropdown.js"></script>
	<link rel="stylesheet" type="text/css" href="css/styleDone1.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
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

            <div class="divi">
                <img src="css/images/done.png" alt="Italian Trulli">
              <h1>No more pending Complain left</h1>
                <button  class="register"onclick="window.location.href = 'ShowAllComplain.jsp';">Show All</button>
            </div>
            
</body>
</html>