package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SingletonConnection {

	private static Connection connection;
	
	 static {
		  try {
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			connection=DriverManager.getConnection
					("jdbc:mysql://localhost:3306/bd_catal","root","");
			
		     
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	public static Connection getConnection() {
		return connection;
	}
}
