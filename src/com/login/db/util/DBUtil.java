package com.login.db.util;

import java.sql.* ;

public class DBUtil {
	private static Connection connection ;
	public static Connection getConnection() {
		String username = "root" ;
		String password = "sachin" ;
		String urlSQL = "jdbc:mysql://localhost:3306/PROJECT" ;
		// String urlOracle = "jdbc:oracle:thin@localhost:1521:XE" ;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(urlSQL,username,password) ;
			System.out.println("connected.......");
		}
		catch (SQLException e){
			System.out.println("Connection Failure.. DBUtil - " + e);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Class Not Found - "+ e);
		}
		return connection;
		
	}
	public static void main(String []args) {
		System.out.println(getConnection());
	}
	
}
