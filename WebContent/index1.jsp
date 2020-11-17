<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="database.*,java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
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
			<div style="margin-top:20%;"><img src="css/images/anti3.jpg"  width="100%"></div>
		</div>
		<div class="main">
			<div ><img src="css/images/anti1.jpg"  width="100%"></div>
			<br>
			
			
			
			<div class="div11">
			<div>
			 <form action="index1.jsp" method="post" >
			<select  name="location" class="contact-form-text"  required>
             <option value="" hidden>Select City</option>
				<%
				try
				{
					Connection myCon = DBConnection.getConnection();
						Statement mySmt1 = myCon.createStatement();
						ResultSet myRes1 = mySmt1.executeQuery("select * from City");
						while (myRes1.next()) {
							String str=myRes1.getString("State");
							out.print("<option value='"+str + "'>" +str + "</option>");
						}
				%>
			</select> 
			<input type="submit" class="contact-form-btn" value="Display">
			</form>
			<%
			
				String state=request.getParameter("location");
			    int totalComplains=0,totalReceived=0,totalPending=0,totalResolved=0;
			    
				PreparedStatement mySmt = myCon.prepareStatement("select count(State) from Register where State=? ");
				mySmt.setString(1,state);
				ResultSet myRes = mySmt.executeQuery();
				while (myRes.next()) 
				{
					totalComplains=myRes.getInt(1);
				}
				
				PreparedStatement mySmt2 = myCon.prepareStatement("select count(State) from Register where State=? and Status=? ");
				mySmt2.setString(1,state);
				mySmt2.setString(2,"Received");
				ResultSet myRes2 = mySmt2.executeQuery();
				while (myRes2.next()) 
				{
					totalReceived=myRes2.getInt(1);
				}
				
				PreparedStatement mySmt3 = myCon.prepareStatement("select count(State) from Register where State=? and Status=? ");
				mySmt3.setString(1,state);
				mySmt3.setString(2,"Pending");
				ResultSet myRes3 = mySmt3.executeQuery();
				while (myRes3.next()) 
				{
					totalPending=myRes3.getInt(1);
				}
				
				
				PreparedStatement mySmt4 = myCon.prepareStatement("select count(State) from Register where State=? and Status=? ");
				mySmt4.setString(1,state);
				mySmt4.setString(2,"Resolved");
				ResultSet myRes4 = mySmt4.executeQuery();
				while (myRes4.next()) 
				{
					totalResolved=myRes4.getInt(1);
				}
				
				out.println("<div class=\"divi\">"+
						"<h2>Total Complaints Status</h2>\r\n" + 
						"			<table align='center'>\r\n" + 
						"			<tr>\r\n" + 
						"			<td>      Total Complaints :</td><td>"+totalComplains+"</td>\r\n" + 
						"			</tr>\r\n" + 
						"			<tr>\r\n" + 
						"			<td>Total Complaints Received :  </td><td>"+totalReceived+"</td>\r\n" + 
						"			</tr>\r\n" + 
						"			<tr>\r\n" + 
						"			<td>Total Complaints Pending :   </td><td>"+totalPending+"</td>\r\n" + 
						"			</tr>\r\n" + 
						"			<tr>\r\n" + 
						"			<td>Total Complaints Resolved :  </td><td>"+totalResolved+"</td>\r\n" + 
						"			</tr>\r\n" + 
						"			</table>\r\n" + 
						"			");
				
				}
				 catch (Exception e) {
			          System.out.println(e);
	                	}
			
			%>
			
			
			</div>
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

