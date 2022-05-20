package c.seller;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

public class SellerDButil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	public static List<Seller> validate(String userName, String password){
		
		ArrayList<Seller> sel = new ArrayList<>();
		
		//validate
		try {
			con = DBconnect.getConnetion();
			stmt = con.createStatement();
			String sql = "select * from seller where username='"+userName+"' and password='"+password+"'";
		    rs = stmt.executeQuery(sql);
		    
		    if(rs.next()) {
		    	int id = rs.getInt(1);
		    	String name = rs.getString(2);
		    	String email = rs.getString(3);
		    	String phone = rs.getString(4);
		    	String userS = rs.getString(5);
		    	String passS = rs.getString(6);
		    	String category = rs.getString(7);
		    	
		    	Seller se = new Seller(id,name,email,phone,userS,passS,category);
		    	sel.add(se);
		    }
		    
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return sel;
		
	}
	
	public static boolean sellerregister(String name, String email, String phone, String username, String password, String category) {
		boolean isSuccess = false;
		
		
		
		try {
			
			con = DBconnect.getConnetion();
			stmt = con.createStatement();
			String sql = "insert into seller values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"','"+category+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	public static boolean updateprofile(String id, String name, String email, String phone, String username, String password, String category) {
		
		try {
			con = DBconnect.getConnetion();
			stmt = con.createStatement();
			String sql = "update seller set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"',category='"+category+"'"
					+"where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Seller>getSellerDetails(String id){
		
		int convrtedID = Integer.parseInt(id);
		
		ArrayList<Seller> sel = new ArrayList<>();
		
		try {
			con = DBconnect.getConnetion();
			stmt = con.createStatement();
			String sql = "select * from seller where id='"+convrtedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id1 = rs.getInt(1);
				String name1 = rs.getString(2);
		    	String email1 = rs.getString(3);
		    	String phone1 = rs.getString(4);
		    	String userS1 = rs.getString(5);
		    	String passS1 = rs.getString(6);
		    	String category1 = rs.getString(7);
		    	
		    	Seller s = new Seller(id1,name1,email1,phone1,userS1,passS1,category1);
		    	sel.add(s);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return sel;
	}
	
	public static boolean deleteseller(String id) {
		
		int action= JOptionPane.showConfirmDialog(null, "Do you really want to Delete","Delete",JOptionPane.YES_NO_OPTION);
		if(action==0) {
		
		int convID = Integer.parseInt(id);
		
		try {
			con = DBconnect.getConnetion();
			stmt = con.createStatement();
			String sql = "delete from seller where id='"+convID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;	
			}
			else {
				isSuccess = false;	
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		}
		
		return isSuccess;
	}

	

	

	
	
	
}
