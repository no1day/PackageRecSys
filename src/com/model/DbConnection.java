package com.model;

import java.sql.*;
import java.util.*;


public class DbConnection {

	Connection conn;
	
	static DbConnection instance = null;
	
	DbConnection()
	{
		init();
	}
	void init() 
	{
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/banquet_order?useSSL=false&serverTimezone=GMT%2B8", "root", "7068069825");
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 	
	}
	public static DbConnection getInstance()
	{

		if(instance == null)
			instance = new DbConnection();

		return instance;
	}
	
}
