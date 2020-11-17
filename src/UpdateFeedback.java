

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import database.DBConnection;

/**
 * Servlet implementation class UpdateFeedback
 */
@SuppressWarnings("serial")
@WebServlet("/UpdateFeedback")
public class UpdateFeedback extends HttpServlet {
	Connection myCon;
	public UpdateFeedback() throws ClassNotFoundException, SQLException
	{
		myCon=DBConnection.getConnection();
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		try {
			
		int choice=0;
	    choice = Integer.parseInt(request.getParameter("sno"));
			PreparedStatement mySmt = myCon.prepareStatement("update feedback set Status='Reviewed' where SNo=?");
			mySmt.setInt(1,choice);
			mySmt.execute();
			response.sendRedirect("LoginFeedback.jsp");
		}
		catch (Exception e) {
			System.out.println(e);
		}
	}

}
