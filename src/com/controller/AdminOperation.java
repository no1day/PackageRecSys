package com.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Administrator;

@Resource
@WebServlet("/AdminOperation")
public class AdminOperation {
	
	private static final long serialVersionUID = 1L;
	public AdminOperation() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		this.doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setCharacterEncoding("UTF-8");
		String op = request.getParameter("op");
		int method = Integer.parseInt(op);
			switch(method)
		       {
		    	case 0:
					login(request,response);
					break;
		        case 1:
			        break;    
		    	case 2:
			        break;       
		        case 3:
				    break;
		        case 4:
				    break;
				default:
					
		       }

	}

	private void login(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		
	}
}
