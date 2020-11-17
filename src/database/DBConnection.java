package database;
import java.sql.*;

public class DBConnection {
	
	public static Connection getConnection() throws ClassNotFoundException,SQLException{
	String url="jdbc:mysql://localhost:3306/antiRagging";
	String user="root";
	String password="root";

	//Register your Driver
	Class.forName("com.mysql.jdbc.Driver");

	//making connection with the help of connection url
	//CONNECTION URL:-"jdbc:mysql://localhost:3306/database_name"
	//where jdbc is the API, mysql is the database, 
	//localhost is the server name on which mysql is running, we may also use IP address,
	//3306 is the port number and  the database name. 
	
	Connection mycon=DriverManager.getConnection(url,user,password);
	System.out.println("Connection Successful!!");
	return mycon;
	
}
}
