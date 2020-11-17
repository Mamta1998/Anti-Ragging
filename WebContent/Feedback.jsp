<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Feedback</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="css/styleFeedback.css" rel="stylesheet" type="text/css"
	media="all" />
	<link rel="stylesheet" type="text/css" href="css/styleRegistration.css">
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
		<div class="content">
		<div  class="contact-section">
	<h1>Give Your Feedback</h1>
	
		<form class="contact-form" method="post" action="DoneFeedback.jsp">
								<input type="text" class="contact-form-text" name="name" required
						placeholder="Your Name">
					
					<input type="text" class="contact-form-text" name="contact"
						pattern="[789][0-9]{9}" required placeholder="Your Contact Number">

					<div class="contact-form-text">
								
							<label for="bad">Bad</label> <input type="radio" class="contact-form-text" id="bad"
						name="experience" value="bad" required />
								<label for="average">Average</label> <input type="radio" class="contact-form-text"
						id="average" name="experience" value="average" required />
									<label for="good">Good</label> <input type="radio" id="good" class="contact-form-text"
						name="experience" value="good" required />
						</div>
									
					<textarea class="contact-form-text" rows="30" cols="30"  name="feed" required
						placeholder="Your Feedback" style="height: 200px"></textarea>
								<input type="submit" class="contact-form-btn" value="Submit">
			
		</form>

	</div>
	</div>


</body>
</html>
