package com.square.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

public abstract class UserUtil {

	private static ResourceBundle rb;
	static
	{
	
		try {
			rb=ResourceBundle.getBundle("square");
			Class.forName(rb.getString("driver"));
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}
	public static Connection getConn() throws SQLException
	{
		String url=rb.getString("url");
		String uname=rb.getString("uname");
		Connection conn=DriverManager.getConnection(url,uname,"");
		return conn;
	}
	public static void closeConn(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}
	public static int validateUser(String Username,String Password) 
	{
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			ResultSet results=stmt.executeQuery("select count(*) from user where email='"+Username+"' and password='"+Password+"'");
			while(results.next())
			{
				int id=results.getInt(1);
				
				return id;
			}
			
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
				UserUtil.closeConn(conn);
		}
		
		
	return 0;
		
	}
	public static void cancelBooking(int bid)
	{

		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			stmt.execute("delete from booking where booking_id='"+bid+"'");
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
		
	
		
	}
	public static void addInMain(int workerid)
	{
		
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			stmt.execute("insert into worker(worker_name,worker_contact_no,worker_category,worker_sex,worker_dob,worker_exp,worker_startdate,"+
			"worker_enddate,worker_ranking,worker_starttime,worker_endtime,worker_avail,worker_rent,worker_image,worker_language,worker_rcount)select worker_name,worker_contact_no,worker_category,worker_sex,worker_dob,worker_exp,worker_startdate,"+
			"worker_enddate,worker_ranking,worker_starttime,worker_endtime,worker_avail,worker_rent,worker_image,worker_language,worker_rcount from rawworker where worker_id='"+workerid+"'");
			//System.out.println(results.getString(0));	
			stmt.execute("delete from rawworker where worker_id='"+workerid+"'");
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
		
	}
	public static int fetchUserId(String Username)
	{
		
		
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			ResultSet results=stmt.executeQuery("select * from user where email='"+Username+"'");
			//System.out.println(results.getString(0));
			while(results.next())
			{
				int id=results.getInt(1);
				return id;
			}
				
		
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
		return 0;
	
		
	
	}
}
