package com.model;

import java.sql.*;
import java.util.*;

import com.entity.Administrator;
import com.entity.Dish;

public class DbOperation {

	Connection conn;
	
	static DbOperation instance = null;
	
	DbOperation()
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
	public static DbOperation getInstance()
	{

		if(instance == null)
			instance = new DbOperation();

		return instance;
	}
	
	//管理员登录
	public String login(String name)
	{
		String password = null;
		try {
			if(name==null) name ="";
			
			if(name != ""){
				Statement stat=null;
				ResultSet rs = null;
	            stat=conn.createStatement();
	            rs = stat.executeQuery("select password from administrator where name='"+name+"'");
	            if(!rs.next())
	            {
	            	return "";	
	            }
	            password = rs.getString("password");
	            
	   	    }
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return password;
	}
	
	//管理员上传菜品
	public void insertDish(Dish dish)
	{
		try {

	        String name=dish.getdname();
	        String description = dish.getdescription();        
	        int price=dish.getdprice();
	        String type=dish.getdtype();
	        String food_material=dish.getfood_material();
	        //String pic = dish.getdpic();

	        System.out.print(name);
	        System.out.print(type);
			String sql = "insert into dish(name,description,type,price,food_material)"
							+ " values('"+name+"','"+description+"','"+type+"',"
							+price+",'"+food_material+"');";

	      	Statement stat=null;
			stat=conn.createStatement();
			stat.executeUpdate(sql); 
			if(stat!=null){
		    	   stat.close();
		    }			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
