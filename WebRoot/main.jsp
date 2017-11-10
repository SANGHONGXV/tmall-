<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<jsp:include page="/icd_meta.jsp" />
<title>天猫商城</title>
<jsp:include page="/icd_link.jsp" />
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/my.css">
</head>
<body style="background-color: white;">
<jsp:include page="/icd_top.jsp">
		<jsp:param value="index" name="tag" />
		
	</jsp:include>



<!--轮播图  -->
<div id="banner">
			<div class="banner-bg bg0"><!-- 宽度100%纯色背景层 -->
				<div class="bn-container bn-container0"><!-- 控制banner内容整体居中 -->
					<div class="banner-con"><!-- 控制banner图片的宽度 -->
						<a class="big-banner" href="#"><img src="img/banner1.jpg"></a>
					</div>
				</div>
			</div>
			<div class="banner-bg bg1">
				<div class="bn-container bn-container1">
					<div class="banner-con">
						<a class="big-banner" href="#"><img src="img/banner2.jpg"></a>
						<a class="small-banner0" href="#"><img src="img/banner-ad1.png"></a>
						<a class="small-banner1" href="#"><img src="img/banner-ad2.png"></a>
					</div>
				</div>
			</div>
			<div class="banner-bg bg2">
				<div class="bn-container bn-container2">
					<div class="banner-con">
						<a class="big-banner" href="#"><img src="img/banner3.jpg"></a>
					</div>
				</div>
			</div>
			<div class="banner-bg bg3">
				<div class="bn-container bn-container3">
					<div class="banner-con">
						<a class="big-banner" href="#"><img src="img/banner4.jpg"></a>
					</div>
				</div>
			</div>
			<div class="banner-bg bg4">
				<div class="bn-container bn-container4">
					<div class="banner-con">
						<a class="big-banner" href="#"><img src="img/banner5.jpg"></a>
						<a class="small-banner0" href="#"><img src="img/banner-ad3.png"></a>
						<a class="small-banner1" href="#"><img src="img/banner-ad4.png"></a>
					</div>
				</div>
			</div>
			<div class="banner-bg bg5">
				<div class="bn-container bn-container5">
					<div class="banner-con">
						<a class="big-banner" href="#"><img src="img/banner6.jpg"></a>
						<a class="small-banner0" href="#"><img src="img/banner-ad2.png"></a>
						<a class="small-banner1" href="#"><img src="img/banner-ad6.png"></a>
					</div>
				</div>
			</div>
			<ul class="slider-nav">
				<li class="active"></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul><!-- end slider-nav -->
			<div id="vip">
				<div class="vip-con">
					<div class="avatar">
						<div class="default"></div>
						<img class="logged" src="img/vip-avatar.jpg">
					</div>
					<div class="login default">
					<c:choose>
           <c:when test="${sessionScope.curr_mbr.nick_name}">
						<p>Hi~你好！</p>
						<a class="login-btn" href="member_login.jsp">
							<i class="iconfont">&#xe63a;</i>
							请登录
						</a>
						<a class="register" href="member_register.jsp">免费注册 &gt;</a>
						<span class="seprate"></span>
						</c:when>
						<c:otherwise>
						
						<p>Hi,${sessionScope.curr_mbr.nick_name}！</p>
						<a class="login-btn" href="#">
							<i class="iconfont">&#xe63a;</i>
							我的信息
						</a>
						<a href="member/logout">退出</a>
						
						</c:otherwise>
						</c:choose>
						
					</div>
					
					
					
					<div class="login logged">
						<p>亲爱的<br><span class="vip-name"></span><br>欢迎回来！</p>
						<span class="seprate"></span>
					</div>
					<div class="more-info default">
						<ul>
							<li><i class="iconfont vip-icon">&#xe61c;</i><span>退货保障</span></li>
							<li><i class="iconfont vip-icon">&#xe61a;</i><span>花呗分期</span></li>
							<li><i class="iconfont vip-icon">&#xe61b;</i><span>极速退款</span></li>
						</ul>
						<a href="#">更多特权&gt;</a>
					</div>
					<div class="more-info logged">
						<a href="#">
							<p><i class="iconfont vip-icon"></i>我的积分</p>
							<span class="score number"></span>
						</a>
						<span class="seprate"></span>
						<a href="#">
							<p><i class="iconfont vip-icon"></i>我的优惠券</p>
							<span id="coupon" class="number"></span> 张
						</a>
					</div>
					<div class="recommend">
						<p>推荐活动</p>
						<a href="#">
							<img src="img/recommend.jpg" alt="推荐活动">
							<span>氨基酸洗面奶</span>
							<span>999积分</span>
						</a>
					</div>
				</div>
			</div>
		</div>


	<!-- 轮播图+公告 -->
	
	<%-- <div class="wrapper row">
		<div class="col-xs-9">
			<div id="myNiceCarousel" class="carousel slide" data-ride="carousel">
				<!-- 圆点指示器 -->
				<ol class="carousel-indicators">
					<c:forEach items="${tops}" var="top" varStatus="vs">
						<li data-target="#myNiceCarousel" data-slide-to="${vs.index}"
							${vs.index == 0 ? "class='active'" : ""}></li>
					</c:forEach>
				</ol>
				<!-- 轮播项目 -->
				<div class="carousel-inner">
					<c:forEach items="${tops}" var="top" varStatus="vs">
						<div class='item ${vs.index == 0 ? "active" : ""}'>
							<a href="${ctx}/news/detail?id=${top.id}" target="_blank"><img
								alt="${top.title}" src="${pic_base}${top.thumbnail}"></a>
						</div>
					</c:forEach>
				</div>

				<!-- 项目切换按钮 -->
				<a class="left carousel-control" href="#myNiceCarousel"
					data-slide="prev"> <span class="icon icon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#myNiceCarousel"
					data-slide="next"> <span class="icon icon-chevron-right"></span>
				</a>
			</div>
		</div>

		<div id="news" class="col-xs-3" style="padding: 0">
			<div class="panel">
				<div class="panel-heading">
					<span style="font-size: 16px">优惠快讯</span> <a
						href="${ctx}/news/list" class="pull-right" style="margin-top: 4px">更多
						<i class="icon-angle-right"></i>
					</a>
				</div>
				<div class="panel-body">
					<ul>
						<c:forEach items="${news}" var="n" varStatus="vs">
							<li class="text-ellipsis"><a
								${vs.index==0 ? 'class="hot"' : ""} target="_blank"
								href="${ctx}/news/detail?id=${n.id}">${n.title}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div> --%>

	<!-- 商品列表 -->
	<div class="wrapper">

		<div class="list">
			<header style="border: 0">
				<strong><i class="icon panel-icon icon-heart"
					style="color: #0000CC"></i> 猜你喜欢</strong>
				<div class="pull-right">
					<a href="${ctx}/product/list?level=hots">更多</a>
				</div>
			</header>
			<section class="cards cards-condensed row" style="margin: 0">
				<c:forEach items="${hots}" var="h">
					<div class="col-xs-2">
						<div class="card">
							<a href="${ctx}/product_detail?id=${h.id}" target="_blank"><img
								src="${pic_base}${h.thumbnail}" alt=""></a>
							<div class="card-heading">
								<span class="pull-right price"><fmt:formatNumber
										value="${h.sale_price}" pattern="￥#,##0.00" /> </span> <a
									href="${ctx}/product_detail?id=${h.id}" target="_blank">${h.name}</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</section>
		</div>

		<!-- 第二行 -->
		<div class="list">
			<header style="border: 0">
				<strong><i class="icon-tablet" style="color: #0000CC"></i>
					热门手机</strong>
				<div class="pull-right">
					<a href="${ctx}/product/list?id=1">更多</a>
				</div>
			</header>
			<section class="cards cards-condensed row" style="margin: 0">
				<c:forEach items="${phones}" var="h">
					<div class="col-xs-2">
						<div class="card">
							<a href="${ctx}/product_detail?id=${h.id}" target="_blank"><img
								src="${pic_base}${h.thumbnail}" alt=""></a>
							<div class="card-heading">
								<span class="pull-right price"><fmt:formatNumber
										value="${h.sale_price}" pattern="￥#,##0.00" /> </span> <a
									href="${ctx}/product_detail?id=${h.id}" target="_blank">${h.name}</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</section>
		</div>
		<!-- /第2行 -->

		<!-- 第3行 -->
		<div class="list" style="border: 0">
			<header>
				<strong><i class="icon-desktop" style="color: #0000CC"></i>
					电脑办公</strong>
				<div class="pull-right">
					<a href="${ctx}/product/list?id=2">更多</a>
				</div>
			</header>
			<section class="cards cards-condensed row" style="margin: 0">
				<c:forEach items="${computers}" var="h">
					<div class="col-xs-2">
						<div class="card">
							<a href="${ctx}/product_detail?id=${h.id}" target="_blank"><img
								src="${pic_base}${h.thumbnail}" alt=""></a>
							<div class="card-heading">
								<span class="pull-right price"><fmt:formatNumber
										value="${h.sale_price}" pattern="￥#,##0.00" /> </span> <a
									href="${ctx}/product_detail?id=${h.id}" target="_blank">${h.name}</a>
							</div>
						</div>
					</div>
				</c:forEach>

			</section>
		</div>
		<!-- 第3行 -->
		<!-- 广告 -->
		<div class="list">
			<a target="_blank" href="${ctx}/product_detail?id=4"><img
				src="img/banner_ad.jpg" alt=""></a>
		</div>
		<!-- /广告 -->
	</div>

	<!-- /商品列表 -->

	<jsp:include page="/icd_bottom.jsp"></jsp:include>

	<script src="${ctx}/zui/lib/jquery/jquery.js"></script>
	<script src="${ctx}/js/jquery.scrollUp.min.js"></script>
	<script src="${ctx}/zui/js/zui.js"></script>
	<script src="${ctx}/js/my.js"></script>
	
	<!--右侧边框  -->
	<div id="tip-bar">
		<div class="bar-con">
			<div id="top-blank"></div>
			<a href="#" class="privilege">
				<i class="iconfont tip-icon default">&#xe639;</i>
				<img class="logged" src="img/privilege.jpg"">
				<div class="tip">
					<span>我的特权</span>
					<b class="triangle"></b>
				</div>
			</a>
			<a href="#" class="property">
				<i class="iconfont tip-icon">&#xe642;</i>
				<div class="tip">
					<span>我的资产</span>
					<b class="triangle"></b>
				</div>
			</a>
			<a href="#">
				<i class="iconfont tip-icon">&#xe610;</i>
				<div class="tip">
					<span>我关注的品牌</span>
					<b class="triangle"></b>
				</div>
			</a><a href="#">
				<i class="iconfont tip-icon">&#xe617;</i>
				<div class="tip">
					<span>我的收藏</span>
					<b class="triangle"></b>
				</div>
			</a>
			<a href="#">
				<i class="iconfont tip-icon">&#xe612;</i>
				<div class="tip">
					<span>我看过的</span>
					<b class="triangle"></b>
				</div>
			</a>
			<a href="#">
				<i class="iconfont tip-icon">&#xe63e;</i>
				<div class="tip">
					<span>我要充值</span>
					<b class="triangle"></b>
				</div>
			</a>
			<a href="#" class="feed-back">
				<i class="iconfont tip-icon">&#xe616;</i>
				<div class="tip">
					<span>用户反馈</span>
					<b class="triangle"></b>
				</div>
			</a>
			<a href="#" class="qrcode">
				<i class="iconfont tip-icon">&#xe641;</i>
				<div class="tip">
					<div class="tip-inner">
						<img class="ewm" src="img/ewm.png" alt="二维码">
						<img class="award" src="img/award.png" alt="福利">
					</div>
					<b class="triangle"></b>
				</div>
			</a>
		</div>
		<a href="${ctx}/view_cart.jsp"" class="shopping-cart">
			<div class="wrap">
				<i class="iconfont tip-icon" >&#xe615;</i>
				购物车
				<span class="cart-count logged default"></span>
			</div>
		</a>
		<a href="#site-nav" class="back-top">
			<i class="iconfont tip-icon">&#xe633;</i>
			<div class="tip">
				<span>返回顶部</span>
				<b class="triangle"></b>
			</div>
		</a>
	</div>
	<script type="text/javascript" src="js/index.js" id="cb"></script>
	
	
</body>
</html>