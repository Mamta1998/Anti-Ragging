<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="database.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String user=request.getParameter("uname");
	String password=request.getParameter("pass");	
	String check=null;
	PrintWriter Sout=response.getWriter();
	Connection conn=DBConnection.getConnection();
	String query="Select password from loginadmin where Name=?";
	PreparedStatement myStmt=conn.prepareStatement(query);
	myStmt.setString(1,user);
	ResultSet myrs=myStmt.executeQuery();
	while(myrs.next())
	{
		check=myrs.getString("Password");
	}
	
	if(password.equals(check))
	{
	RequestDispatcher rs=request.getRequestDispatcher("LoginHome.jsp");
	
	rs.forward(request, response);
	}
	else
	{
		RequestDispatcher rs=request.getRequestDispatcher("LoginWrong.jsp");
		
		rs.forward(request, response);

	}
}
catch(Exception e)
{
	e.getMessage();
}
%>

</body>
</html>