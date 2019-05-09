<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>确认宴席预订</title>
<!-- Custom styles for this template -->
<link href="Style/css/signin.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="Style/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body class="text-center">
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="#">酒店宴席套餐推荐系统 </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">宴席预订</a></li>
				</ul>
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">你好，张三先生！</button>
			</div>
		</nav>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<h5 class="col-md-4">百年好合套餐</h5>
				<ul class="list-unstyled">
					<div class="row">
						<li class="col-md-3">和风大拼盘</li>
						<li class="col-md-2">x1</li>
						<li class="col-md-2">￥66</li>
					</div>
				</ul>
				<h5>合计：</h5>
			</div>
			<div class="col-md-5">
				<div>
					<h4>宴席预订</h4>
				</div>
				<form class="form-horizontal">
					<div class="form-row">
						<label for="exampleInputName2" class="col-md-3 control-label">姓名:</label>
						<input type="text" class="col-md-6 form-control"
							id="exampleInputName2" placeholder="姓名">
					</div>
					<div class="form-row">
						<label for="exampleInputName2" class="col-md-3 control-label">号码:</label>
						<input type="tel" class="col-md-6 form-control"
							id="exampleInputAmount" placeholder="+86">
					</div>
					<button class="btn btn-primary" type="submit">立即预定</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>