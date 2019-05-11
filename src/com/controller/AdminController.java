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
import com.entity.Combo;
import com.entity.Dish;
import com.model.DbOperation;
import com.model.OutPut;;

@Resource
@WebServlet("/AdminController")
public class AdminController  extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	public AdminController() {
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
		        	insertDish(request,response);
			        break;    
		    	case 2:
		    		searchDishes(request,response);
			        break;       
		        case 3:
		        	searchCombo(request,response);
				    break;
		        case 4:
				    break;
				default:
					
		       }

	}

	//管理员登录
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String real_password = null;
		real_password = DbOperation.getInstance().login(name);
		if(!password.equals(real_password))
		{	
			request.setAttribute("提示", "密码错误！请重新输入！");	
			System.out.print("no");
		}
		else {
			System.out.print("yes");
			request.getRequestDispatcher("adminHome.jsp").forward(request, response);  
		}
	}

	//管理员上传菜品
	private void insertDish(HttpServletRequest request, HttpServletResponse response) {
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		String price=request.getParameter("price");
		String type=request.getParameter("type");
		String food_material=request.getParameter("food_material");
		//图片没写
		System.out.print(name);
		System.out.print(description);
		System.out.print(price);
		System.out.print(type);
		System.out.print(food_material);
		
		Dish dish = new Dish();
		dish.setdname(name);
		dish.setdescription(description);
		dish.setdprice(Integer.parseInt(price));
		dish.setdtype(type);
		dish.setfood_materiale(food_material);
		
		DbOperation.getInstance().insertDish(dish);
		
		request.setAttribute("提示", "上传成功！");	
		System.out.print("yes");
	}
	
	//所有菜品订购情况
	private void searchDishes(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		List<String> result=new ArrayList<String>();
    	Set<Dish> sts = DbOperation.getInstance().searchDishes();

    	String str = "";
    	str= "<table frame=\"border\" bordercolor=\"black\" style=\"width: 600px; \" >	";
    	result.add(str);
    	str = "<tr><td style=\"border:1px solid black;\">编号</td><td style=\"border:1px solid black;\">菜品名称</td><td style=\"border:1px solid black;\">菜品类型</td><td style=\"border:1px solid black;\">价格</td><td style=\"border:1px solid black;\">订购量</td></tr>";
    	result.add(str);
    	Iterator<Dish> it = sts.iterator();  
    	while(it.hasNext())
        {
    		Dish dish = it.next();
        	str = "<tr>";
        	str = str + "<td style=\"border:1px solid black;\">" + dish.getdid() + "</td>";
        	str = str + "<td style=\"border:1px solid black;\">" + dish.getdname() + "</td>";
        	str = str + "<td style=\"border:1px solid black;\">" + dish.getdtype() + "</td>";
        	str = str + "<td style=\"border:1px solid black;\">" + dish.getdprice() + "</td>";
        	str = str + "<td style=\"border:1px solid black;\">" + dish.getcount() + "</td>";
        	str = str + "</tr>";
        	result.add(str);
        }
    	str="</table>";
    	result.add(str);

		try {
			OutPut.outputToClient(result,response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//固定套餐订购情况
	private void searchCombo(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		List<String> result=new ArrayList<String>();
    	Set<Combo> sts = DbOperation.getInstance().searchCombo();

    	String str = "";
    	str= "<table frame=\"border\" bordercolor=\"black\" style=\"width: 600px; \" >	";
    	result.add(str);
    	str = "<tr><td style=\"border:1px solid black;\">编号</td><td style=\"border:1px solid black;\">套餐名称</td><td style=\"border:1px solid black;\">套餐类型</td><td style=\"border:1px solid black;\">总价</td><td style=\"border:1px solid black;\">订购量</td></tr>";
    	result.add(str);
    	Iterator<Combo> it = sts.iterator();  
    	while(it.hasNext())
        {
    		Combo combo = it.next();
        	str = "<tr>";
        	str = str + "<td style=\"border:1px solid black;\">" + combo.getcid() + "</td>";
        	str = str + "<td style=\"border:1px solid black;\">" + combo.getcname() + "</td>";
        	str = str + "<td style=\"border:1px solid black;\">" + combo.getctype() + "</td>";
        	str = str + "<td style=\"border:1px solid black;\">" + combo.getcprice() + "</td>";
        	str = str + "<td style=\"border:1px solid black;\">" + combo.getcount() + "</td>";
        	str = str + "</tr>";
        	result.add(str);
        }
    	str="</table>";
    	result.add(str);

		try {
			OutPut.outputToClient(result,response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
