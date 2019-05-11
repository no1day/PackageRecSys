<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.entity.Dish" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>菜品订购情况</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <div class="table-responsive">
     <table class="table table-striped table-sm" width="450" border="100" cellSpacing=1 style="font-size:15pt;border:dashed 1pt">
     <tr>
	    <td>菜品编号</td>
	    <td>菜品名称</td>
	    <td>菜品类型</td>
	    <td>价格</td>
	    <td>订购量</td>
     </tr>
    <%
     response.setCharacterEncoding("UTF-8");
     request.setCharacterEncoding("UTF-8");
     
       ArrayList<Dish> result=new ArrayList<Dish>();    
       result=(ArrayList<Dish>)request.getAttribute("result");
       
       if(!result.isEmpty()){
       for(int i=0;i<result.size();i++){
    	   Dish dish=result.get(i);
            out.print("<tr>");
            out.print("<td>"+dish.getdid()+"</td>");
            out.print("<td>"+dish.getdname()+"</td>");
            out.print("<td>"+dish.getdtype()+"</td>");
            out.print("<td>"+dish.getdprice()+"</td>");
            out.print("<td>"+dish.getcount()+"</td>"); 
          
     %>
       
    <% 
    out.print("</tr>");
            }
       }
 
     %>
      </table>
  </body>
</html>

