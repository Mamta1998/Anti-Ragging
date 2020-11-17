
<%@page import="database.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="database.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
    
    <%
    String track=null;
    try{
    	DateFormat df = new SimpleDateFormat("dd/MM/yy");
       Date d=new Date(); 
       String firstName=request.getParameter("fname");
       String lastName=request.getParameter("lname");
       String email=request.getParameter("email");
       long contactNo=Long.parseLong(request.getParameter("contactno"));
       
       String location=request.getParameter("location");
       String city=location;
       
       
       String collegeDetail=request.getParameter("college");
       String collegeID=collegeDetail.substring(0,collegeDetail.indexOf('-'));
       String collegeName=collegeDetail.substring(collegeDetail.indexOf('-')+1);
       
       String complain=request.getParameter("complain");
       
       String dateRecieved=df.format(d);
       String dateRecentlyUpdated=dateRecieved;
       int year=d.getYear()+1900;//;To get current year add 1900 to the value of year obtained from this date object 
       int month=d.getMonth();
       track=year+"-"+month+"-"+collegeID+"-";
       
       DBViewRegister dbv=new DBViewRegister();
       dbv.setFirstName(firstName);
       dbv.setLastName(lastName);
       dbv.setEmail(email);
       dbv.setContactNo(contactNo);
       dbv.setCity(city);
       dbv.setCollegeID(collegeID);
       dbv.setCollegeName(collegeName);
       dbv.setComplain(complain);
       dbv.setTrackID(track);
       dbv.setDateRecieved(dateRecieved);
       dbv.setDateRecentlyUpdated(dateRecentlyUpdated);
       
       
       DBackend dbb=new DBackend();
       track=dbb.insertRegistration(dbv);
       
    }
    catch(Exception e)
    {
    	out.print(e);
    }
    
    
    %>
<html lang="en" dir="ltr">
<head>    
    <title>Done</title>
    
	<link rel="stylesheet" type="text/css" href="css/styleDone.css">
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

            <div class="divi">
                <img src="css/images/done.png" alt="Italian Trulli">
              <h1>Your request has been submitted successfully.</h1>
             <%  out.print("<h2>Tracking ID:"+track+"</h2>");%>
              <button  class="register"onclick="window.location.href = 'index.jsp';"><i class="fa fa-fw fa-home"></i>Home</button>
            </div>
            
</body>
</html>