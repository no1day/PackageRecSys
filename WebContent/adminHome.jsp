<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员操作</title>
	<link href="Style/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<!-- Custom styles for this template -->
    <link href="Style/css/blog.css" rel="stylesheet">
</head>
<body>
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="#">酒店宴席套餐推荐系统</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">上传菜品 <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">菜品订购情况</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">套餐订购情况</a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">
        <input class="form-control mr-sm-2" type="text" placeholder="请输入..." aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
      </form>
    </div>
  </nav>
</header>
<div class="container">
	

	<!-- 上传菜品 -->
	<div class="row mb-4" style="margin:100px 0">
    <div class="col-md-8">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-4 text-primary">菜品上传</strong>
          
          <p class="card-text">菜品名称：</p>
          <div class="form-label-group">
    	  	<input type="text" id="inputname" class="form-control" placeholder="菜名" required autofocus>
  		  </div>
  		  <p class="card-text">菜品类型：</p>
		  <div class="form-label-group">
            <select class="custom-select d-block w-250" id="country" required>
              <option value="">请选择...</option>
              <option>禽肉类</option>
            </select>
          </div>
          <p class="card-text">菜品价格：</p>
		  <div class="form-label-group">
		    <input type="text" id="inputprice" class="form-control" placeholder="价格" required>
		  </div>
		  <p class="card-text">菜品介绍：</p>
		  <div class="form-group">
    		<textarea class="form-control" rows="3"></textarea>
  		  </div>
        </div>
        <div class="col-auto d-none d-lg-block">
          <div class="col-sm-6 col-md-3" style="margin:13% 0">
          <a href="#" class="thumbnail">
            <img src="Style/images/add.png" width="220" height="220" alt="">
          </a>
    	  </div>
    	  <div class="" style="margin:10%">
          	<button class="btn btn-primary btn-lg btn-block" type="submit">上传</button>
    	  </div>
        </div>
      </div>
    </div>
  </div>

	<div class="row">
			<div>
				<h4><b>菜品订购量</b></h4>
			</div>
			<p></p>
			<div class="row">
				<iframe name="myFrame" action="adminDishList.jsp" height="400px" width="80%" frameborder="no" border="0"marginwidth="0" marginheight="0" scrolling="no"allowtransparency="yes"></iframe>
	        </div> 
		</div>
		<div class="row">
			<div>
				<h4><b>套餐订购量</b></h4>
			</div>
			<p></p>
			<div class="row">
				<iframe name="myFrame" action="adminPacList.jsp" height="400px" width="80%" frameborder="no" border="0"marginwidth="0" marginheight="0" scrolling="no"allowtransparency="yes"></iframe>
	        </div> 
		</div>

    
    
    
</div>
</body>
</html>