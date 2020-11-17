package database;
import java.sql.*;
public class DBackend {

	Connection myCon;
	public DBackend() throws ClassNotFoundException, SQLException
	{
		myCon=DBConnection.getConnection();
		
	}
	public String insertRegistration(DBViewRegister dbv) throws SQLException
	{
		
		/*------------------getting SNo to add in trackID-------------*/
	 String trackID=dbv.getTrackID();
	 int position=0;
	 PreparedStatement mySmt1=myCon.prepareStatement("SELECT COUNT(SNo)FROM Register");
	 ResultSet rs=mySmt1.executeQuery();
	 while(rs.next())
	 {
		 position=rs.getInt(1);
	 }
	 
	 trackID=trackID+(position+1);
	 
	 /*------------------Inserting values in database-------------*/
	 PreparedStatement mySmt=myCon.prepareStatement("insert into register(FirstName,LastName,Email,ContactNo,City,CollegeID,CollegeName,Complain,TrackID,DateRecieved,DateRecentlyUpdated) values(?,?,?,?,?,?,?,?,?,?,?)");	
	 mySmt.setString(1, dbv.getFirstName());
	 mySmt.setString(2, dbv.getLastName());
	 mySmt.setString(3, dbv.getEmail());
	 mySmt.setLong(4, dbv.getContactNo());
	 mySmt.setString(5, dbv.getCity());
	 mySmt.setString(6, dbv.getCollegeID());
	 mySmt.setString(7, dbv.getCollegeName());
	 mySmt.setString(8, dbv.getComplain());
	 mySmt.setString(9, trackID);
	 mySmt.setString(10, dbv.getDateRecieved());
	 mySmt.setString(11, dbv.getDateRecentlyUpdated());
	 
		
	 mySmt.execute();
	 
	 return trackID;
	 
	}
	public void insertContact(DBViewContact dbv)throws SQLException
	{
		PreparedStatement mySmt=myCon.prepareStatement("insert into Contact(Name,TrackID,Email,ContactNo,Query) values(?,?,?,?,?)");	
		 mySmt.setString(1, dbv.getName());
		 mySmt.setString(2, dbv.getTrackID());
		 mySmt.setString(3, dbv.getEmail());
		 mySmt.setLong(4, dbv.getContactNo());
		 mySmt.setString(5, dbv.getQuery());
		 mySmt.execute();
	}
	public void insertFeedback(DBViewFeedback dbv)throws SQLException
	{
		PreparedStatement mySmt=myCon.prepareStatement("insert into feedback(Name,contact,OE,Comment) values(?,?,?,?)");	
		 mySmt.setString(1, dbv.getName());
		 mySmt.setString(2, dbv.getContact());
		 mySmt.setString(3, dbv.getOverallExperience());
		 mySmt.setString(4, dbv.getComment());
		 mySmt.execute();
	}


}
