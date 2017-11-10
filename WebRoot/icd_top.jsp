<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!-- 顶部 -->
<div id="top">
	<div id="site-nav">
		<div class="container sn-container" >
			<c:if test="${!empty sessionScope.curr_mbr}" var="flag">
				<div id="welcome" class="col-xs-5">喵，欢迎来天猫
					${sessionScope.curr_mbr.nick_name}！
					 <a href="${ctx}/member/logout">退出</a>
					 <a href="${ctx}/member/orders">个人中心</a>
					</div>
				<div class="col-xs-4" style="height: 10px; "></div>
				<div class="col-xs-3" style=" text-align: right;">
					<a href="#">消息</a>
					<a href="#">积分</a>
					
					<a href="#" >收藏的宝贝</a>
					<a href="#" >收藏的店铺</a>
					
					 <a href="${ctx}/view_cart.jsp"><i class="iconfont sn-icon">&#xe628;</i>&nbsp;&nbsp;&nabla;购物车</a>
				</div>
			</c:if>
			<c:if test="${!flag}">
				<div class="col-xs-5">喵，欢迎来天猫</div>
				<div class="col-xs-4"></div>
				<div class="col-xs-3" style="text-align: right;">
					<a href="${ctx}/member_login.jsp">请登录</a> 
					<a href="${ctx}/member_register.jsp">注册</a>
					 <a href="${ctx}/view_cart.jsp">购物车</a>
				</div>
			</c:if>
		</div>
	</div>
	<!-- /工具条 -->

	<!-- LOGO栏 -->
	
	<div class="wrapper row">
			<div class="col-xs-2" id="logo" style="width: 292px; ">
				<a href="${ctx}/main "> <img src="${ctx}/images/logo_zx.gif"
					style="width: 265px;" />
				</a>
			</div>
	
	<div id="subject" style="width: 1201px; ">
		
			<div class="col-xs-2"></div>
			<div class="col-xs-4" id="search">
				<form action="search" method="post">
					<div class="input-group">
						<input type="text" name="keyword" id="keyword"
							class="form-control" placeholder="手机  电脑" />
						<div class="input-group-btn">
							<button class="btn btn-primary" type="submit">
								<i class="icon icon-search"></i>
							</button>
						</div>
					</div>
				</form>
				<!--搜索栏下的关键词  -->
						<!-- <ul class="hd-hot-key">
						<li><a href="#">手机</a></li>
						<li class="key-highlight"><a href="#">电风扇</a></li>
						<li><a href="#">短裤男</a></li>
						<li class="key-highlight"><a href="#">凉鞋</a></li>
						<li><a href="#">泳衣</a></li>
						<li class="key-highlight"><a href="#">伞</a></li>
						<li><a href="#">蚊帐</a> --></li>
						
					</ul>
			</div>
			<div class="col-xs-2"></div>
			<%-- <div class="col-xs-2" id="cart">
				<a href="${ctx}/view_cart.jsp" class="btn btn-primary"
					style="width: 120px; height: 40px; line-height: 30px;"> <i
					class="icon icon-shopping-cart" ></i> 购物车 <!-- <span class="label label-badge" style="background-color: #eba5a3;">4</span> -->
				</a>
			</div> --%>
		</div>
	</div>
	<!-- /LOGO栏 -->

	<!-- 导航栏 -->
	<div id="navbar" class="navbar navbar-inverse">
		<div class="wrapper row">
			<div class="navbar-header col-xs-3 categories">
				<div id="title">
					<i class="icon icon-th-large"></i> 所有商品分类
				</div>
				<div id="menu"
					${param.tag == 'index' ? "" : "style='display: none'"}>
					<!--  -->
					<ul class="cate-list"
						${param.tag == 'index' ? "" : "id='categories'"}>
						<c:forEach items="${cates}" var="top">
							<li><a href="${ctx}/product/list?level=top&id=${top.id}"
								class="text-ellipsis"> ${top.name}<i
									class="icon-angle-right director"></i></a>
								<ul class="sub-list">
									<c:forEach items="${top.childs}" var="second">
										<li><a target="_blank"
											href="${ctx}/product/list?level=second&id=${second.id}">${second.name}</a></li>
									</c:forEach>
								</ul></li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<ul class="nav navbar-nav col-xs-9" >
				<c:forEach items="${top.childs}" var="second">
										<li><a target="_blank"
											href="${ctx}/product/list?level=second&id=${second.id}">${second.name}</a></li>
				</c:forEach>
				<li><img src="img/home/chaoshi.png" href="https://chaoshi.tmall.com/?targetPage=index&ali_trackid=2%3Amm_26632258_3504122_57622584%3A1509697779_243_1722190703&clk1=854ccd5028dc60cf605480cff2cc6a54&upsid=854ccd5028dc60cf605480cff2cc6a54" style="height: 30px; width: 110px; " alt="天猫超市">
				</a></li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="img/home/guoji.png" href="https://chaoshi.tmall.com/?targetPage=index&amp;ali_trackid=2%3Amm_26632258_3504122_57622584%3A1509697779_243_1722190703&amp;clk1=854ccd5028dc60cf605480cff2cc6a54&amp;upsid=854ccd5028dc60cf605480cff2cc6a54" style="height: 29px; width: 110px; " alt="天猫国际"></a></li>
				<li><a href="http://127.0.0.1:8088/dianqi/product/list?level=top&id=1" style="font: 40px;">手机</a></li>
				<li><a href="http://127.0.0.1:8088/dianqi/product/list?level=top&id=2" style="font: 40px;">电脑办公</a></li>
				<li><a href="http://127.0.0.1:8088/dianqi/product/list?level=top&id=3" style="font: 40px;">影音娱乐</a></li>
				<li><a href="http://127.0.0.1:8088/dianqi/product/list?level=top&id=4" style="font: 40px;">小 家 电</a></li>
				<li><a href="http://127.0.0.1:8088/dianqi/product/list?level=top&id=5" style="font: 40px;">大 家 电</a></li>
				
			</ul>
		</div>
	</div>
	<!-- /导航栏 -->
</div>
<!-- /顶部 -->
