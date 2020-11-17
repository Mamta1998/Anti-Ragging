<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="database.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.sql.*" %>
<%@page import="database.*"%>


<!DOCTYPE html>
<html>

<head>
	<meta charset='UTF-8'>
	
	<title>Tracking Progress</title>
	
	
	<link rel="stylesheet" type="text/css" href="css/styleTrackingProgress.css">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
      <meta name="viewport" content="width=device-width, initial-scale=1">  
	<script>
		$(function() {
			$(".meter > span").each(function() {
				$(this)
					.data("origWidth", $(this).width())
					.width(0)
					.animate({
						width: $(this).data("origWidth")
					}, 1200);
			});
		});
	</script>
	
	<style>
		.meter { 
			height: 20px;  /* Can be anything */
			position: relative;
			margin: 60px 0 20px 0; /* Just for demo spacing */
			background: #555;
			-moz-border-radius: 25px;
			-webkit-border-radius: 25px;
			border-radius: 25px;
			padding: 10px;
			-webkit-box-shadow: inset 0 -1px 1px rgba(255,255,255,0.3);
			-moz-box-shadow   : inset 0 -1px 1px rgba(255,255,255,0.3);
			box-shadow        : inset 0 -1px 1px rgba(255,255,255,0.3);
		}
		.meter > span {
			display: block;
			height: 100%;
			   -webkit-border-top-right-radius: 8px;
			-webkit-border-bottom-right-radius: 8px;
			       -moz-border-radius-topright: 8px;
			    -moz-border-radius-bottomright: 8px;
			           border-top-right-radius: 8px;
			        border-bottom-right-radius: 8px;
			    -webkit-border-top-left-radius: 20px;
			 -webkit-border-bottom-left-radius: 20px;
			        -moz-border-radius-topleft: 20px;
			     -moz-border-radius-bottomleft: 20px;
			            border-top-left-radius: 20px;
			         border-bottom-left-radius: 20px;
			background-color: rgb(43,194,83);
			background-image: -webkit-gradient(
			  linear,
			  left bottom,
			  left top,
			  color-stop(0, rgb(43,194,83)),
			  color-stop(1, rgb(84,240,84))
			 );
			background-image: -moz-linear-gradient(
			  center bottom,
			  rgb(43,194,83) 37%,
			  rgb(84,240,84) 69%
			 );
			-webkit-box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			-moz-box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			position: relative;
			overflow: hidden;
		}
		.meter > span:after, .animate > span > span {
			content: "";
			position: absolute;
			top: 0; left: 0; bottom: 0; right: 0;
			background-image: 
			   -webkit-gradient(linear, 0 0, 100% 100%, 
			      color-stop(.25, rgba(255, 255, 255, .2)), 
			      color-stop(.25, transparent), color-stop(.5, transparent), 
			      color-stop(.5, rgba(255, 255, 255, .2)), 
			      color-stop(.75, rgba(255, 255, 255, .2)), 
			      color-stop(.75, transparent), to(transparent)
			   );
		
			z-index: 1;
			-webkit-background-size: 50px 50px;
			-moz-background-size: 50px 50px;
			-webkit-animation: move 2s linear infinite;
			   -webkit-border-top-right-radius: 8px;
			-webkit-border-bottom-right-radius: 8px;
			       -moz-border-radius-topright: 8px;
			    -moz-border-radius-bottomright: 8px;
			           border-top-right-radius: 8px;
			        border-bottom-right-radius: 8px;
			    -webkit-border-top-left-radius: 20px;
			 -webkit-border-bottom-left-radius: 20px;
			        -moz-border-radius-topleft: 20px;
			     -moz-border-radius-bottomleft: 20px;
			            border-top-left-radius: 20px;
			         border-bottom-left-radius: 20px;
			overflow: hidden;
		}
		
		.animate > span:after {
			display: none;
		}
		
		@-webkit-keyframes move {
		    0% {
		       background-position: 0 0;
		    }
		    100% {
		       background-position: 50px 50px;
		    }
		}
		
		
		
		.nostripes > span > span, .nostripes > span:after {
			-webkit-animation: none;
			background-image: none;
		}
	</style>
</head>

<body>
	<header>
		<div class="navbar">
		<div class="logo"><img src="css/images/logo.jpeg"></div>
		<a href="Login.jsp"><i class="fa fa-fw fa-user"></i> Login</a>
		  <a href="about.jsp"><i class="fas fa-info"></i> About</a>
		  <a href="Feedback.jsp"><i class="fas fa-edit"></i> Feedback</a>
		  <a href="Contact Us.jsp" ><i class="fa fa-fw fa-envelope"></i> Contact Us</a>
		  <a href="FAQ's.jsp" ><i class="far fa-question-circle"></i> FAQ's</a>
		  <a href="Register.jsp"><i class='fas fa-address-card'></i> Registration</a>
		  <a href="index.jsp" class="active"><i class="fa fa-fw fa-home"></i> Home</a>
		 </div>   
		
</header>
<%
		String firstName=null,lastName=null,email=null,contactNo=null,collegeID=null,collegeName=null,complain=null;
		
		String trackID=request.getParameter("track");
		String status=null;
		DBViewRegister dbv=new DBViewRegister();
		String width=null;
		Connection myCon = DBConnection.getConnection();
		PreparedStatement mySmt = myCon.prepareStatement("select * from Register where TrackID=?");
		mySmt.setString(1,trackID);
		ResultSet myRes = mySmt.executeQuery();
		while(myRes.next())
		{
			dbv.setFirstName(myRes.getString("FirstName"));
			dbv.setLastName(myRes.getString("LastName"));
			dbv.setEmail(myRes.getString("Email"));
			dbv.setContactNo(Long.parseLong(myRes.getString("ContactNo")));
			dbv.setCity(myRes.getString("City"));
			dbv.setCollegeID(myRes.getString("CollegeID"));
			dbv.setCollegeName(myRes.getString("CollegeName"));
			dbv.setComplain(myRes.getString("Complain"));
			dbv.setTrackID(myRes.getString("TrackID"));
			dbv.setDateRecieved(myRes.getString("DateRecieved"));
			dbv.setDateRecentlyUpdated(myRes.getString("DateRecentlyUpdated"));
			dbv.setStatus(myRes.getString("Status"));
		}
		%>
	<div class="divi">
	<%out.println("<h1>Progress of #"+trackID+"</h1>"); %>
     <div id="page-wrap">
		<div class="meter">
		
		
		<%
		if(dbv.getStatus().equals("Received"))
			width="width: 10%";
		else if(dbv.getStatus().equals("Open"))
			width="width: 30%";
		else if(dbv.getStatus().equals("Pending"))
			width="width: 50%";
		else if(dbv.getStatus().equals("Action Under Process"))
			width="width: 70%";
		else if(dbv.getStatus().equals("Resolved"))
			width="width: 100%";
		System.out.println(width);
		
		out.print("<span style=\""+width+"\"></span>");
		%>
			
     			<div class="div1">
				 <i class="fas fa-arrow-up"></i>
				 <p>Received</p>
			    </div>
			    <div class="div1">
				 <i class="fas fa-arrow-up"></i>
				 <p>open</p>
			    </div>
				<div class="div1">
				 <i class="fas fa-arrow-up"></i>
				 <p>Pending</p>
			    </div>
				<div class="div1">
				 <i class="fas fa-arrow-up"></i>
				 <p>Action</p>
			    </div>
				<div class="div1">
				 <i class="fas fa-arrow-up"></i>
				 <p>Resolved</p>
			    </div>
		</div> 
	  </div>
	  	   <div class="divii">
	  	   <div align="center">
	  	   <table>
	  	   <%out.print("<tr><td><h2> Name:</h2></td><td><h2>"+dbv.getFirstName()+" "+dbv.getLastName()+"</h2></td></tr>"+
	  	               "<tr><td><h2> Email:</h2></td><td><h2>"+dbv.getEmail()+"</h2></td></tr>"+
	  			       "<tr><td><h2> Contact No:</h2></td><td><h2>"+dbv.getContactNo()+"</h2></td></tr>"+
	  			       "<tr><td><h2> Location:</h2></td><td><h2>"+dbv.getCity()+"</h2></td></tr>"+
	  			       "<tr><td><h2> Date Received:</h2></td><td><h2>"+dbv.getDateRecieved()+"</h2></td></tr>"+
	  			       "<tr><td><h2> Date Recently Update:</h2></td><td><h2>"+dbv.getDateRecentlyUpdated()+"</h2></td></tr>"+
	  		  	       "<tr><td><h2> College:</h2></td><td><h2>"+dbv.getCollegeID()+"-"+dbv.getCollegeName()+"</h2></td></tr>"+
	  		  	       "<tr><td><h2> Complain:</h2></td><td><h2>"+dbv.getComplain()+"</h2></td></tr>"); %>
	  	   </table>
	  	   </div> 
	  	   </div>
	</div>	

	<button  class="register"onclick="window.location.href = 'index.jsp';"><i class="fa fa-fw fa-home"></i>Home</button>
		
	

	</div>
	
</body>

</html>