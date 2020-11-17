<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="database.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/style1.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
      <meta name="viewport" content="width=device-width, initial-scale=1">  
</head>
<body>
<header style="width:100%;">
              <div class="navbar">
              <div class="logo"><img src="css/images/logo.jpeg"></div>
              <a href="Login.jsp"><i class="fa fa-fw fa-user"></i> Login</a>
                <a href="about.jsp"><i class="fas fa-info"></i> About</a>
                <a href="Feedback.jsp"><i class="fas fa-edit"></i> Feedback</a>
                <a href="Contact Us.jsp" ><i class="fa fa-fw fa-envelope"></i> Contact Us</a>
                <a href="FAQ_s.jsp" ><i class="far fa-question-circle"></i> FAQ's</a>
                <a href="Register.jsp"><i class='fas fa-address-card'></i> Registration</a>
                <a href="index.jsp" class="active"><i class="fa fa-fw fa-home"></i> Home</a>
               </div>   
              
	  </header>
	  <br>
	
	<div class="divk">
		<h1 class="title">ANTI RAGGING PORTAL</h1>
	    <div class="button">
		  <a href="https://www.youtube.com/watch?v=T2zVIRuP79c" class="btn">WATCH VIDEO</a>
		  <a href="Tracking.jsp" class="btn">TRACK COMPLAINT</a>
	    </div>
	</div>
	  <div class="arrow bounce"></div>


	<div class="row">
		<div class="side">
			<h2 align="center">Anti Ragging Portal</h2>
			<div><img src="css/images/anti2.jpg"  width="100%"></div>
			<br>
			<div><img src="css/images/anti3.jpg"  width="100%"></div>
		</div>
		<div class="main">
			<div ><img src="css/images/anti1.jpg"  width="100%"></div>
			<br>
			<div class="div11">
			<div style="margin-top:10%;">
			 <form action="index1.jsp" method="post" >
			<select  name="location" class="contact-form-text"  required>
             <option value="" hidden>Select State to View Status</option>
		 		<%
			 try
				{
					Connection myCon1 = DBConnection.getConnection();
						Statement mySmt1 = myCon1.createStatement();
						ResultSet myRes1 = mySmt1.executeQuery("select * from City");
						while (myRes1.next()) {
							String str=myRes1.getString("cityName");
							out.print("<option value='"+str + "'>" +str + "</option>");
						}
				      }
			          catch (Exception e) {
				          System.out.println(e);
		                	}
				%>
			</select> 
			<input type="submit" class="contact-form-btn" value="Display">
			</form>
			
			
			
			</div>
			<h1 align="center"><u>Our Vision</u></h1>
			<p>Ragging has ruined countless innocent lives and careers. In order to eradicate it, Honourable Supreme Court in Civil Appeal No. 887 of 2009, passed the judgement wherein guidelines were issued for setting up of a Central Crisis Hotline and Anti-Ragging database. 
               In accordance with the orders, we have developed this web portal. 
               This portal contains<br>
               1. Complain confirmed by students or his/her parents or guardians, which will then be stored electronically and will contain the details of each student.<br>
               2. Record of registered complaints received and the status of the action taken. <br>
               The aim of the portal is to eliminate ragging in all its forms from universities, deemed universities and other higher educational institutions in the country. This will be achieved by preventing its occurrence and punishing those who indulge in ragging, in accordance with the Supreme Court Regulations.
            </p>
            </div>
		</div>
	</div>

	  
</body>
</html>