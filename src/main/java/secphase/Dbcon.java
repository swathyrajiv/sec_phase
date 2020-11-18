package secphase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;




public class Dbcon {
	
	Connection dbCon = null;
	 static Statement theStat;
	PreparedStatement pstatement = null;
	
	
	public static void main(String args[]) {
		
		
	} public void connectDb() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		dbCon = DriverManager.getConnection("jdbc:mysql://localhost:3307/simplilearnoct","root","");
		theStat =  dbCon.createStatement();
		
		
	} catch (ClassNotFoundException | SQLException e) {
		System.out.println("cant load the driver or cant connect to the db"+e);
	
	}
	}

	public int insertData(String newu,String pass ){
		connectDb();
		
		String insertData = "update  adminlogin set username ='"+newu+"',password = '"+pass+"'";
	   try {
			if(theStat.executeUpdate(insertData)>0)
				   return 1;
			else 
				return 0;
	  } catch (SQLException |NullPointerException ex) {
			// TODO Auto-generated catch block
			System.out.println("unable to add"+ex);
		} 
			
				return 1 ;
			}
		
	   
	 
			
			  public String[] fetchAdminLogin() { 
				  connectDb();
				  String userdetails[] = new String[2]; 
				  
			  
			  String qry = "select username,password from adminlogin"; 
			  try {
				  ResultSet rst = theStat.executeQuery(qry); 
				  while(rst.next())
				  { 
					   userdetails[0] =rst.getString("username"); 
					  userdetails[1] = rst.getString("password");
			  
			  }
			  
			  } catch (SQLException | NullPointerException e) { // TODO Auto-generated catch block
			  System.out.println("cant load "+e); } 
			  return(userdetails);
			  
			  }
			 
	
				/*
				 * public int insertSource(String source){ connectDb();
				 * 
				 * String insertData = "insert into source(sourcename) values('"+source+"')";
				 * try { if(theStat.executeUpdate(insertData)>0) return 1; else return 0; }
				 * catch (SQLException |NullPointerException ex) { // TODO Auto-generated catch
				 * block System.out.println("unable to add"+ex); }
				 * 
				 * return 1 ; } public int insertDestination(String destination) { connectDb();
				 * 
				 * String insertData =
				 * "insert into destination(destination_name) values('"+destination+"')"; try {
				 * if(theStat.executeUpdate(insertData)>0) return 1; else return 0; } catch
				 * (SQLException |NullPointerException ex) { // TODO Auto-generated catch block
				 * System.out.println("unable to add"+ex); }
				 * 
				 * return 1 ; } public int insertairways(String airways) { connectDb();
				 * 
				 * String insertData =
				 * "insert into airways(airways_name) values('"+airways+"')"; try {
				 * if(theStat.executeUpdate(insertData)>0) return 1; else return 0; } catch
				 * (SQLException |NullPointerException ex) { // TODO Auto-generated catch block
				 * System.out.println("unable to add"+ex); }
				 * 
				 * return 1 ; } public ArrayList<String> addsourcedrop() {
				 * 
				 * connectDb();
				 * 
				 * String fetchqry = "select sourcename from source"; ResultSet rst = null;
				 * 
				 * ArrayList<String>source = new ArrayList<String>();
				 * 
				 * try { rst = theStat.executeQuery(fetchqry);
				 * 
				 * while(rst.next()) {
				 * 
				 * source.add(rst.getString("sourcename"));
				 * 
				 * 
				 * }
				 * 
				 * 
				 * 
				 * } catch (SQLException e) { // TODO Auto-generated catch block
				 * e.printStackTrace(); } return source; } public ArrayList<String>
				 * adddestinationdrop() {
				 * 
				 * connectDb();
				 * 
				 * String fetchqry = "select destination_name from destination"; ResultSet rst =
				 * null; ArrayList<String>destination = new ArrayList<String>();
				 * 
				 * try { rst = theStat.executeQuery(fetchqry);
				 * 
				 * while(rst.next()) {
				 * 
				 * destination.add(rst.getString("destination_name"));
				 * 
				 * 
				 * 
				 * 
				 * }
				 * 
				 * } catch (SQLException e) { // TODO Auto-generated catch block
				 * e.printStackTrace(); } return destination; } public ArrayList<String>
				 * addairwaysdrop() {
				 * 
				 * connectDb();
				 * 
				 * String fetchqry = "select airways_name from airways"; ResultSet rst = null;
				 * ArrayList<String>airways = new ArrayList<String>();
				 * 
				 * try { rst = theStat.executeQuery(fetchqry);
				 * 
				 * while(rst.next()) {
				 * 
				 * airways.add(rst.getString("airways_name"));
				 * 
				 * 
				 * 
				 * 
				 * }
				 * 
				 * } catch (SQLException e) { // TODO Auto-generated catch block
				 * e.printStackTrace(); } return airways; }
				 */
			   public int addflightdetails(String source, String destination, String airways,int ticketcharge){
				   connectDb();
				   String insertquery = "insert into flight_details (source_name,destination_name,airways_name,ticket_charge) values('"+source+"','"+destination+"','"+airways+"','"+ticketcharge+"')";
				   try {
					   if(theStat.executeUpdate(insertquery)>0) 
						   return 1;
					   else return 0; }
					  catch (SQLException |NullPointerException ex) { 
					 System.out.println("unable to add"+ex); }
				   return 1;
				   
			   }
				public ArrayList<String> fetchsource(String source,String destination) {
					connectDb();
					ResultSet rst = null;
					String fetchQuery = "select source_name from flight_details where source_name='"+source+"' and destination_name ='"+destination+"'  ";				
					
					ArrayList<String> fetchsource =  new ArrayList<String>();
					
					try {
						rst = theStat.executeQuery(fetchQuery);
						while(rst.next()) {
							
							fetchsource.add(rst.getString("source_name"));
							
							
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						System.out.println("cannot fetch"+e);
					}return fetchsource;
					
					
				}
				public ArrayList<String> fetchdestination(String source,String destination) {
					connectDb();
					ResultSet rst = null;
					String fetchQuery = "select destination_name from flight_details where source_name='"+source+"' and destination_name ='"+destination+"'  ";				
					
					ArrayList<String> fetchdestination =  new ArrayList<String>();
					try {
						rst = theStat.executeQuery(fetchQuery);
						while(rst.next()) {
							
							
							fetchdestination.add(rst.getString("destination_name"));
							
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						System.out.println("cannot fetch"+e);
					}return fetchdestination;
					
					
				}
				public ArrayList<String> fetchairways(String source,String destination) {
					connectDb();
					ResultSet rst = null;
					String fetchQuery = "select airways_name from flight_details where source_name='"+source+"' and destination_name ='"+destination+"'  ";				
					
					ArrayList<String> fetchairways =  new ArrayList<String>();
					try {
						rst = theStat.executeQuery(fetchQuery);
						while(rst.next()) {
							
							
							fetchairways.add(rst.getString("airways_name"));
							
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						System.out.println("cannot fetch"+e);
					}return fetchairways;
					
					
				}
				public ArrayList<Integer> fetchTicketCharge(String source,String destination) {
					connectDb();
					ResultSet rst = null;
					String fetchQuery = "select ticket_charge from flight_details where source_name='"+source+"' and destination_name ='"+destination+"'  ";
					ArrayList<Integer>fetchticket_charge = new ArrayList<Integer>();
					try {
						rst = theStat.executeQuery(fetchQuery);
						while(rst.next()) {
							
							
							fetchticket_charge.add(rst.getInt("ticket_charge"));
							
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						System.out.println("cannot fetch"+e);
					}return fetchticket_charge;
					
				}
				public ArrayList<Integer> fetchflightid(String source,String destination) {
					connectDb();
					ResultSet rst = null;
					String fetchQuery = "select flight_id from flight_details where source_name='"+source+"' and destination_name ='"+destination+"'  ";
					ArrayList<Integer>fetch_flightid = new ArrayList<Integer>();
					try {
						rst = theStat.executeQuery(fetchQuery);
						while(rst.next()) {
							
							
							fetch_flightid.add(rst.getInt("flight_id"));
							
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						System.out.println("cannot fetch"+e);
					}return fetch_flightid;
					
				}
				
}

