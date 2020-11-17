<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="database.*,java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>    
        <title>Register</title>
	<link rel="stylesheet" type="text/css" href="css/styleRegistration.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
        <header>
                <div class="navbar">
                <div class="logo"><img src="css/images/logo.jpeg"></div>
                <a href="Login.jsp"><i class="fa fa-fw fa-user"></i> Login</a>
                <a href="about.jsp"><i class="fas fa-info"></i> About</a>
                <a href="Feedback.jsp"><i class="fas fa-edit"></i> Feedback</a>
                <a href="Contact Us.jsp" ><i class="fa fa-fw fa-envelope"></i> Contact Us</a>
                <a href="FAQ_s.jsp" ><i class="far fa-question-circle"></i> FAQ's</a>
                <a href="Register.jsp"class="active"><i class='fas fa-address-card'></i> Registration</a>
                <a href="index.jsp" ><i class="fa fa-fw fa-home"></i> Home</a>
                 </div>   
                
            </header>
			
	<div  class="contact-section">
        
          <h1>REGISTER YOUR COMPLAINT HERE</h1>
	      <form class="contact-form" action="DoneRegister.jsp" method="post" >
            <input type="text" class="contact-form-text" name="fname" required placeholder="First Name"> 
            <input type="text" class="contact-form-text" name="lname" required placeholder="Last Name">
            <input type="email" class="contact-form-text" name="email" required placeholder="Email"> 
            <input type="text" class="contact-form-text" name="contactno"  pattern="[789][0-9]{9}" required placeholder="Enter 10 digit Contact Number">
            
            
              <select  name="location" class="contact-form-text"  required>
             <option value="" hidden>Select City</option>
				
			<%	try
				{
					Connection myCon1 = DBConnection.getConnection();
						Statement mySmt1 = myCon1.createStatement();
						ResultSet myRes1 = mySmt1.executeQuery("select * from City");
						while (myRes1.next()) {
							String str= myRes1.getString("cityname");
							out.print("<option value='"+str + "'>" +str + "</option>");
						}
				      }
			          catch (Exception e) {
				          System.out.println(e);
		                	}
				%>
			</select>
            
            <select  name="college" class="contact-form-text"  required>
             <option value="" hidden>Select College</option>
				<%
			 try
				{
				 System.out.println("here");
					Connection myCon = DBConnection.getConnection();
						Statement mySmt = myCon.createStatement();
						ResultSet myRes = mySmt.executeQuery("select * from college");
						while (myRes.next()) {
							String str= myRes.getString("collegeID")+"-"+myRes.getString("collegeName");
							out.print("<option value='"+ str + "'>" +str + "</option>");
						System.out.println(str);
						}
				      }
			          catch (Exception e) {
				          System.out.println(e);
		                	}
				%>
			</select>  
            <textarea class="contact-form-text" name="complain" required placeholder="What Is Your Complaint"></textarea>

			<input type="submit" class="contact-form-btn" value="Register">
		  </form>
        
	</div>
               
    

</body>
</html>