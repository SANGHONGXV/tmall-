<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<jsp:include page="/icd_meta.jsp" />
<title>天猫商城注册</title>
<jsp:include page="/icd_link.jsp" />
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

	<link rel="stylesheet" type="text/css" href="css/main.css">
		<script type="text/javascript" src="js/SHA1.js" id="cb"></script>
<script type="text/javascript" src="js/form.js" id="cb"></script>

</head>
<script type="text/javascript" >

 
function checkInfo(){

$("#password_msg").css("color","red");
$("#password_msg").css("font-size","14px");

				$("#mobile").bind({
					blur:function(){
						var val=$("#mobile").val();
						var reg=/^[1][3,4,5,7,8][0-9]{9}$/;
						
						var tdInfo="";
				
						if(val==""){
							tdInfo="*请输入手机号";
						}else if(!reg.test(val)){
							tdInfo="*请输入正确的手机号";
							flag3=false;
						}else{
							tdInfo="手机号可用";	
							flag3=true;
						}
						
						$("#tel_msg").text(tdInfo);
					},
					focus:function(){
						$("#tel_msg").text("");
					}
				});
			
			
			$("#password").bind({

				
					blur:function(){
						var val=$("#password").val();
						var reg=/^\w{6,16}$/;
						
						var tdInfo="";
				
						if(val==""){
							tdInfo="*请输入密码";
							flag2=false;
						}else if(!reg.test(val)){
							tdInfo="*由6到16位的字母数字或下划线组成";	
							flag2=false;
						}else{
							tdInfo="√";	
							flag2=true;
						}
						
						$("#password_msg").text(tdInfo);
						
					},
					focus:function(){
						$("#password_msg").text("");
					},
					change:function(){
						var val3=$("#password").val();
						AuthPasswd(val3);
					}
				});
				
				$("#password2").bind({
					blur:function(){
						var val=$("#password").val();
						var reval=$("#password2").val();
				
						if(reval==""){
							tdInfo="*请输入密码";
							flag6=false;
						}else if(val!=reval){
							tdInfo="*两次密码不一样";	
							flag6=false;
							
						}else{
							tdInfo="√";	
							flag6=true;
						}
						
						$("#reppassword_msg").text(tdInfo);
					},
					focus:function(){
						$("#reppassword_msg").text("");
					}
				});
				
			}




</script>



<body>
	<jsp:include page="/icd_top.jsp"></jsp:include>

	<!-- 主内容 -->
	<div class="wrapper" style="min-height: 500px;">
		<div class="panel" style="margin-top: 20px">
			<div class="panel-heading" style="font-size: 18px">
				<strong>会员注册</strong>
			</div>
			<div class="panel-body row">
				<div class="col-xs-3"></div>

				<div class="col-xs-6" style="padding: 30px 60px">
					<div class="panel" style="border: none;">
						<div class="panel-heading" style="background: none;">
							<strong>欢迎注册成为会员</strong>
						</div>
						<div class="panel-body">
							<form action="${ctx}/member_register" method="post" >
								<c:if test="${!empty msg}">
									<div class="form-group">
										<div id="formError" class="alert alert-danger">${msg}</div>
									</div>
									<c:remove var="msg" />
								</c:if>
								<div class="form-group" >
								<!--  地区编码-->
								<!-- <div class="select">
						<p id="selected"><span class="text">中国大陆</span><span class="code">+86</span></p>
						<ul class="select-list">
							<li class="active"><span class="text">中国大陆</span><span class="code">+86</span></li>
							<li><span class="text">台湾</span><span class="code">+886</span></li>
							<li><span class="text">香港</span><span class="code">+852</span></li>
							<li><span class="text">马来西亚</span><span class="code">+60</span></li>
							<li><span class="text">新加坡</span><span class="code">+65</span></li>
							<li><span class="text">日本</span><span class="code">+81</span></li>
							<li><span class="text">韩国</span><span class="code">+82</span></li>
						</ul>
						<i class="iconfont arrow">&#xe657;</i>
					</div> -->
								<!--  地区编码结束-->
									<input type="text" name="mobile" id="mobile" onblur=" checkInfo()"
										placeholder="请输入手机号" class="form-control input-lg">
										<label id="tel_msg" class="labelbox seclabel" style="width:240px; color: red"></label>
								</div>
								<!-- <label>验证</label>
					<div id="verify" class="haslight">
						请按住滑块，拖动到最右边
						<span class="iconfont verify-icon">&#xe662;</span>
						<p id="process"><span>验证通过</span></p>
					</div> -->
								
								<div class="form-group">
									<input type="password" name="pwd" id="password" value=""
										placeholder="请输入密码" class="form-control input-lg">
									<label id="password_msg" class="labelbox seclabel" style="width:240pxcolor: red"></label>
									
								</div>
								<div class="form-group">
									<input type="password" name="pwd2" id="password2" value=""
										placeholder="请再输入密码" class="form-control input-lg"  >
										<label id="reppassword_msg" class="labelbox seclabel" style="width:240px color: red"></label>
									
								</div>

								<button type="submit" class="btn btn-primary btn-wider btn-lg" >免费注册</button>
							
								
							</form>
						</div>
					</div>
				</div>

				<div class="col-xs-3"></div>

			</div>
		</div>
	</div>
	
	
	
<script src=" js/jquery-3.2.1.js"></script>
	<script>
	$(function () {
            $("#rg-btn").click(function () {
                $("#rg-tip").hide()
            })
             });
	</script>
	<!-- 注册协议 -->
	
	  <div id="rg-tip">
		<h4>注册协议</h4>
		<p><strong>【审慎阅读】</strong>您在申请注册流程中点击同意前，应当认真阅读以下协议。<em>请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：</em></p>
		<p>1、<em>与您约定免除或限制责任的条款；</em></p>
		<p>2、<em>与您约定法律适用和管辖的条款；</em></p>
		<p>3、<em>其他以粗体下划线标识的重要条款。</em></p>
		<p>如您对协议有任何疑问，可向平台客服咨询。</p>
		<p><strong>【特别提示】</strong>当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与淘宝发生争议的，适用《淘宝平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。</p>
		<p><em>阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。</em></p>
		<p><a href="http://www.taobao.com/go/chn/member/agreement.php">《淘宝服务协议》</a></p>
		<p><a href="http://www.taobao.com/go/chn/tb-fp/2014/law.php">《法律声明及隐私权政策》</a></p>
		<p><a href="http://ab.alipay.com/agreement/contract.htm">《支付宝服务协议》</a></p>
		<p>
			<button class="rg-btn"  id="rg-btn">同意协议</button>
		</p>
		<a href="main"><i class="iconfont close-icon" >&#xe663;</i></a>
	</div> 
	<!-- /主内容 -->

	<jsp:include page="/icd_bottom.jsp"></jsp:include>
 		
	<script src="${ctx}/zui/lib/jquery/jquery.js"></script>
	<script src="${ctx}/js/jquery.scrollUp.min.js"></script>
	<script src="${ctx}/zui/js/zui.js"></script>
	<script src="${ctx}/js/my.js"></script>
</body>
</html>