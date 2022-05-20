package c.seller;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/estore";
	private static String userName = "root";
	private static String password = "Kmss@shehan55";
	private static Connection con;
	
	public static Connection getConnetion() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch(Exception e) {
			System.out.print("Database connection is not success!!!!!");
		}
		
		return con;
	}

}
