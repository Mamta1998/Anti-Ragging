
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DBConnection;

@SuppressWarnings("serial")
@WebServlet("/UpdateContact")
public class UpdateContact extends HttpServlet {
	
   Connection myCon;
    public UpdateContact() throws ClassNotFoundException, SQLException {
        myCon=DBConnection.getConnection();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int choice=0;
		    choice = Integer.parseInt(request.getParameter("sno"));
				PreparedStatement mySmt = myCon.prepareStatement("update Contact set Status='Reviewed' where SNo=?");
				mySmt.setInt(1, choice);
				mySmt.execute();
				response.sendRedirect("LoginContact.jsp");
			}
			catch (Exception e) {
				System.out.println(e);
			}
		}
	}