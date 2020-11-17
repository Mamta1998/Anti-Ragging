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
			  
			  <h3 align="center">Thanks for visiting our site.</h3>
			  <p>Ragging is the action of scolding, teasing, criticizing or nagging a person.
			     It is generally committed by the senior students.</p>
			     <p>Ragging often takes place in hostels.
			     There are a few senor students in every hostels.</p>
			     <p> The new students were subjected to simple teasing and mock interviews. 
			     Today, it has degenerated into torture of the innocent. </p>
			     <p>The new students who resist and complain to authorities are tortured the most. 
			     Ragging has some positive effects, but it should be discouraged. 
			     Effective steps need to be taken to deal with this problem.</p>
			  </p> 
		    </div>
		
            <div class="right">
		        <div class="Login color">
					<div><img src="css/images/Hi.png" class="Hi"></div>
					<form method="post" action="admin_login.jsp" >
						<div class="div-signin"><h1>Sign in</h1></div>
						<p><strong>User ID</strong></p>
						<input type="text" name="uname" placeholder="UserID" required class="mail">
						<br>
						<p><strong>Password</strong></p>
						<input type="password" name="pass"  placeholder="Password" required class="mail">
						<br>
						<br>
						<input type="submit" class="next" value="Login">
						<br>
					</form>
		        </div>
		    </div>
	  </div>
    </body>
</html>