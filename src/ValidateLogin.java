

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import database.DBConnection;

import java.sql.*;


@SuppressWarnings("serial")
@WebServlet("/ValidateLogin")
public class ValidateLogin extends HttpServlet {
	
  
	Connection myCon;
	public ValidateLogin()throws SQLException,ClassNotFoundException
	{
		myCon=DBConnection.getConnection();
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	PrintWriter out=response.getWriter();
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	@SuppressWarnings("unused")
	String pass1=null,uname1=null,redirect=null,name=null;
	PreparedStatement mySmt=null;
	ResultSet rs=null;
	
    HttpSession ses=request.getSession();

	try {
		mySmt=myCon.prepareStatement("select * from LoginAdmin where AdminID=?");
		mySmt.setString(1,uname);
		rs=mySmt.executeQuery();
		while(rs.next())
		{
			uname1=rs.getString("AdminID");
			pass1=rs.getString("Password");
			name=rs.getString("Name");
			
		}
	}

	catch (SQLException e) 
	{
		out.print(e);
		e.printStackTrace();
	}


	if(pass.equals(pass1))
	{
		System.out.println("Password Matched");
		ses.setAttribute("Login",name);
		redirect="LoginHome.jsp";

	}
	else
	{
		System.out.println("Wrong Password");
		
		redirect="LoginWrong.jsp";
	}
	
	   response.sendRedirect(redirect);
       

}
}
