

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Date;
import java.text.*;
import database.DBConnection;


@SuppressWarnings("serial")
@WebServlet("/UpdateComplain")
public class UpdateComplain extends HttpServlet {
       
    Connection myCon;
    public UpdateComplain() throws ClassNotFoundException, SQLException {
       myCon=DBConnection.getConnection();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			DateFormat df = new SimpleDateFormat("dd/MM/yy");
		       Date d=new Date(); 
		       String dateRecieved=df.format(d);
			
		    int choice = Integer.parseInt(request.getParameter("sno"));
			String option=request.getParameter("options");	
		    PreparedStatement mySmt = myCon.prepareStatement("update register set Status=? ,DateRecentlyUpdated=? where SNo=?");
				mySmt.setString(1,option);
				mySmt.setString(2,dateRecieved);
				mySmt.setInt(3, choice);
				mySmt.execute();
				
				response.sendRedirect("LoginComplain.jsp");
			}
			catch (Exception e) {
				System.out.println(e);
			}
	}

}
