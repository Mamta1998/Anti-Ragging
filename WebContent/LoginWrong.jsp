<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>    
    <title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/styleLogin.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
        <header>
                <div class="navbar">
                <div class="logo"><img src="css/images/logo.jpeg"></div>
				<a href="Login.jsp"class="active"><i class="fa fa-fw fa-user"></i> Login</a>
                <a href="about.jsp"><i class="fas fa-info"></i> About</a>
                <a href="Feedback.jsp"><i class="fas fa-edit"></i> Feedback</a>
                <a href="Contact Us.jsp" ><i class="fa fa-fw fa-envelope"></i> Contact Us</a>
                <a href="FAQ_s.jsp" ><i class="far fa-question-circle"></i> FAQ's</a>
                <a href="Register.jsp"><i class='fas fa-address-card'></i> Registration</a>
                <a href="index.jsp" ><i class="fa fa-fw fa-home"></i> Home</a>
                 </div>   
                </div>
            </header>
		<div class="side_reg">
			<div class="left">
			  <img src="css/images/HelloWorld.png" alt="Hello World" style="width:100%;opacity:0.9;">
			  <h1 style="margin-top:-5px;">Welcome to Anti Ragging Portal...</h1>
			  
			  <p>Thanks for visiting our site.</p>
			  <p> Register for our free Hello World Account.<br><br><br><br><br><br><br><br><br><br>
			  Here you can find answers to all your queries
			  and can access our great exclusive art gallery.</p> 
		    </div>
		
            <div class="right">
		        <div class="Login color">
					<div><img src="css/images/Hi.png" class="Hi"></div>
					<form method="post" action="ValidateLogin" >
						<div class="div-signin"><h1>Sign in</h1></div>
						<p><strong>User ID</strong></p>
						<input type="text" name="uname" placeholder="UserID" required class="mail">
						<br>
						<p><strong>Password</strong></p>
						<input type="password" name="pass" placeholder="Password" required class="mail">
						<br>
						<p>Invalid UserID/Password</p>
						 
						<input type="submit" class="next" value="Login"></button>
						<br>
					</form>
		        </div>
		    </div>
	  </div>
    </body>
</html>