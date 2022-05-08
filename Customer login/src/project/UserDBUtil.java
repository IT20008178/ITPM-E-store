package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	public static List<User> validate(String email,String password){
		
		ArrayList<User> usr = new ArrayList<>();
		//create database connection
		String url = "jdbc:mysql://localhost:3306/shopping";
		String user="root";
		String pass ="nushara29";
				
		
		//validate
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "select * from user where email='"+email+"' and password = '"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		
		return usr;
		
		
		
	}
	
}
