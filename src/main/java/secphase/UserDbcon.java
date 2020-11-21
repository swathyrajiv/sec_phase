package secphase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;


public class UserDbcon {
	Connection dbCon = null;
	 static Statement theStat;
	PreparedStatement pstatement = null;
	public static void main(String[] args) {
		

	}
	 public void connectDb() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				dbCon = DriverManager.getConnection("jdbc:mysql://localhost:3307/simplilearnoct","root","");
				theStat =  dbCon.createStatement();
				
				
			} catch (ClassNotFoundException | SQLException e) {
				System.out.println("cant load the driver or cant connect to the db"+e);
			
			}
			}
	 public int insertUserDetails(String fname,String Lname,String phone,String email, String date, int noofpersons,String address) {
		 connectDb();

		  
		   String insertquery = "insert into userdetails(fname, Lname,phone,email,date,noofpersons,address) values('"+fname+"','"+Lname+"','"+phone+"','"+email+"','"+date+"','"+noofpersons+"','"+address+"')";
		   try {
			   if(theStat.executeUpdate(insertquery)>0) 
				   return 1;
			   else return 0; }
			  catch (SQLException |NullPointerException ex) { 
			 System.out.println("unable to add"+ex); }
		   return 1;
		 
	 }
	 public ArrayList<String> fetchItinery(String id) {
		 connectDb();
		 ArrayList<String> al = new ArrayList<String>();
		 String fetchQuery = "select * from flight_details where flight_id ='"+id+"'";
		
		 ResultSet rst = null;
			try {
				 
				rst = theStat.executeQuery(fetchQuery);
				while(rst.next()) {
					al.add(rst.getString("source_name"));
					al.add(rst.getString("destination_name"));
					al.add(rst.getString("airways_name"));
					al.add(rst.getString("ticket_charge"));
					
					
				}
			} catch (SQLException e) {
				
				System.out.println("cannot fetch"+e);
			}return al;
				 
	 }
	 public int updateContactus(String fname,String lname,String feedback) {
		 connectDb();
		 String insertQuery = "insert into contactus(fname,lname,feedback) values ('"+fname+"','"+lname+"','"+feedback+"')";
		 try {
			   if(theStat.executeUpdate(insertQuery)>0) 
				   return 1;
			   else return 0; }
			  catch (SQLException |NullPointerException ex) { 
			 System.out.println("unable to add"+ex); }
		   return 1;
	 }
	
public ArrayList<String> fetchUserFeedback()
{
	connectDb();
	String fetchQuery = "select * from contactus";
	ArrayList<String> al = new ArrayList<String>();
	 ResultSet rst = null;
		try {
			 
			rst = theStat.executeQuery(fetchQuery);
			while(rst.next()) {
				al.add(rst.getString("fname"));
			al.add(rst.getString("lname"));
				al.add(rst.getString("feedback"));
				
				
			}
		} catch (SQLException e) {
			
			System.out.println("cannot fetch"+e);
		}return al;
}
}
