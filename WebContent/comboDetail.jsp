<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dishDetail</title>
<link href="Style/css/bootstrap.min.css" rel="stylesheet">
<style>
  .img_shadow {
    display: inline-block;
    *display: inline;
    padding: 6px;
    border: 1px solid #ccc;
    background-color: #fff;
    position: relative;
    *zoom: 1;
    float: left;
}
</style>
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
          <a class="nav-link" href="#">菜品详情 <span class="sr-only">(current)</span></a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">
        <input class="form-control mr-sm-2" type="text" placeholder="请输入..." aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
      </form>
    </div>
  </nav>
</header>
<div class="album py-5 bg-light">
<div class="container" style="float:center;padding:100px 0"">
<!-- 

<div class="fix">
        	<span id="imgShadow" class="img_shadow l"><img alt="北京最好吃的云南过桥米线" title="北京最好吃的云南过桥米线" src="http://upload2.95171.cn/Topics/20120111/10c64703-83c9-4e89-b87a-2dadc4eac0bb.jpg?x-oss-process=image/interlace,1/sharpen,100/resize,m_fill,w_500,h_335,limit_0" width="600" /></span>
            <div class="cell pl30 f14">
            	<h3 class="f24 fw">云南过桥米线</h3>
                <p class="mt10 pb28">过桥米线分很多种，从秀才、举人、进士一直到状元，级别越高，价钱越贵。汤是用大骨、老母鸡、云南宣威火腿经长时间熬煮而成，端上桌时滚烫，将小碟中的肉片、鱼丸、牛丸、鱼豆腐一起倒进去，瞬间煮熟，锅中的米线软硬适中，吃起来鲜香美味。过瘾！</p>
                <strong class="res_o_score co"><span class="fa">¥</span>30</strong><span class="ml20 mr15">|</span><strong class="f13">总人气：9777</strong>
                <p class="g9 mt10 i">价格仅供参考</p>
                <div class="mt10">

                   <p>食材：<a href="/specials/search/t72"   class="g3 n">肉类</a>、<a href="/specials/search/t69"   class="g3 n">蔬菜</a>、<a href="/specials/search/t70"   class="g3 n">菌菇</a>、<a href="/specials/search/t75"   class="g3 n">米面</a></p>
                   <p>口味：<a href="/specials/search/t85"  class="g3 n">咸鲜</a>、<a href="/specials/search/t86"  class="g3 n">辣</a></p>
                   <p>菜系：<a href="/specials/search/t97"   class="g3 n">火锅</a></p>
                </div>        
                <p class="mt10">共（8）家北京人气餐厅供应（云南过桥米线）: <a class='mr10' target='_blank' href='/shop/C38K04O38060/'>云之味</a><a class='mr10' target='_blank' href='/shop/E56D17R43527/'>云南味道 永定路店</a><a class='mr10' target='_blank' href='/shop/D37H23M06570/'>一品滇香酒楼</a><a class='mr10' target='_blank' href='/shop/D24K22N13460/'>昆明大厦—金碧中餐厅</a><a class='mr10' target='_blank' href='/shop/E48C23O20380/'>滇草香 工体店</a><a class='mr10' target='_blank' href='/shop/D00L02R49583/'>千景树云南菜馆 欧陆时尚店</a><a class='mr10' target='_blank' href='/shop/C25H23N41457/'>滇草香云南原生态火锅 双井店</a><a class='mr10' target='_blank' href='/shop/D32H30J03600/'>张八一贵州酸 劲松店</a></p>           
            </div>
  </div>
   -->
  <div class="row mb-4">
    <div class="col-md-10">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"> 
        <div class="col-auto d-none d-lg-block">
          <img alt="北京最好吃的云南过桥米线" title="北京最好吃的云南过桥米线" src="http://upload2.95171.cn/Topics/20120111/10c64703-83c9-4e89-b87a-2dadc4eac0bb.jpg?x-oss-process=image/interlace,1/sharpen,100/resize,m_fill,w_500,h_335,limit_0" width="600" />
        </div>
        <div class="col p-4 d-flex flex-column position-static">
          <p class="card-text">菜品名称：</p>
          <p class="card-text">菜品名称：</p>
          <p class="card-text">菜品名称：</p>
          <p class="card-text">菜品名称：</p>
          <p class="card-text">菜品名称：</p>
          <p class="card-text">菜品名称：</p>
        </div>
      </div>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <tbody>
            <tr>
              <td><h3>百年好合宴：</h3></td>
              <td>订购量：</td>
              <td>¥： 1588</td>
              <td><a href="#" class="btn btn-primary">立即订购</a></td>
            </tr>
          </tbody>
       </table>
    </div>
    </div>
  </div>
</div>
</div>
</body>
</html>