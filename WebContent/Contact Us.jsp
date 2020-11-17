<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>    
    <title>Contact</title>
	<link rel="stylesheet" type="text/css" href="css/styleContact.css">
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
           <a href="Contact Us.jsp"class="active" ><i class="fa fa-fw fa-envelope"></i> Contact Us</a>
           <a href="FAQ_s.jsp" ><i class="far fa-question-circle"></i> FAQ's</a>
           <a href="Register.jsp"><i class='fas fa-address-card'></i> Registration</a>
           <a href="index.jsp" ><i class="fa fa-fw fa-home"></i> Home</a>
            </div>   
          </div>
          </header>

          <div  class="contact-section">
              <h1>Contact Us</h1>
              <form class="contact-form" action="DoneContact.jsp" method="post" >
                <input type="text" class="contact-form-text" name="name" required placeholder="Your name">
                <input type="text" class="contact-form-text" name="trackid"  placeholder="Tracking ID">
                <input type="email" class="contact-form-text" name="email" required placeholder="Your email">
                <input type="text" class="contact-form-text" name="contact" required placeholder="Your phone">
                <textarea class="contact-form-text" name="query" required placeholder="Your Query"></textarea>
                <input type="submit" class="contact-form-btn" value="Contact" >
              </form>
          </div>
                  
        
  </body>
</html>