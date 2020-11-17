<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
      <title>Home</title>
      <link rel="stylesheet" type="text/css" href="css/styleTracking.css">
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
                <a href="Register.jsp"><i class='fas fa-address-card'></i> Registration</a>
                <a href="index.jsp" class="active"><i class="fa fa-fw fa-home"></i> Home</a>
               </div>   
              </div>
	  </header>
	
	<br>
	<div class="divi">
		<h1 >Track your Complain</h1>
	    <div >
		<form method="post" action="TrackingProgress.jsp">
		 <h2> Enter Tracking ID :#<h2></h2>
		<input  type="text" name="track" class="mail p" required>
		<input type="submit" class="register" value="Track">
		</form>
	</div>
	</div>

</body>
</html> 

