<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>单词</title>
<link href="${baseurl }/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="${baseurl }/css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="${baseurl }/js/jquery-1.8.3.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="${baseurl }/js/move-top.js"></script>
<script type="text/javascript" src="${baseurl }/js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
</head>
<body class="bcg">
	<div class="t">
 		 <div class="t_n">
    		<div class="r_nr"><a href="#">我的学习</a>&nbsp;<a href="#">消息</a>&nbsp;<a href="#">购物车</a>&nbsp;<a href="login.html">登录/注册</a></div>
 	 	</div>
	</div>
	<div class="header" style="height: 80px">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					ANG English
				</div>
				<div class="top-menu">
					<span class="menu"><img src="images/nav.png" alt=""/> </span>
						<ul>
							<li><a href="${baseurl }/icourse/getMain" >主页</a></li>
							<li><a href="${baseurl }/icourse/getAll">课程</a></li>
							<li><a href="${baseurl }/icourse/getWord" class="active">单词</a></li>
							<li><a href="about.html">关于</a></li>
							<li><a href="service.html">服务</a></li>						
							<li><a href="contact.html">联系</a></li>
						</ul>
				</div>
				<div class="search">
					<div class="b-search">
						<form>
							<input type="text" value="课程搜索" onfocus="this.value = ''" onblur="if (this.value == '') {this.value = 'Search here';}">
							<input type="submit" value="">
						</form>
					</div>
				</div>	
				<!--script-nav-->
						 <script>
						 $("span.menu").click(function(){
						 $(".top-menu ul").slideToggle("slow" , function(){
						 });
						 });
						 </script>
					<div class="clearfix"></div>
				</div>
				</div>
					 <!-- Slider-starts-Here -->
	 <script src="js/responsiveslides.min.js"></script>
	 <script>
		$(function () {
		  $("#slider").responsiveSlides({
			auto:true,
			nav: false,
			speed: 500,
			namespace: "callbacks",
			pager:true,
		  });
		});
		
	   </script>
	 </div>
	<!--services-->
		<div class="content">
			<div class="services">
				<div class="container">
					<div class="services-grids">
						<div class="col-md-4 services-grid">
							<a href="#">
							<div class="ser1">
								 <img src="${baseurl }/images/s1.jpg" class="img-responsive" alt="" />
								 <h4>词库管理</h4>
								 <p>Words Management</p>
							</div>
							</a>
						</div>
						<div class="col-md-4 services-grid">
							<a href="#">
							<div class="ser1">
								<img src="${baseurl }/images/s2.jpg" class="img-responsive" alt="" />
								 <h4>背单词</h4>
								 <p>Recite Words</p>
							</div>
							</a>
						</div>
						<div class="col-md-4 services-grid">
							<a href="#">
							<div class="ser1">
								<img src="${baseurl }/images/s3.jpg" class="img-responsive" alt="" />
								 <h4>生词本</h4>
								 <p>Word Book</p>
							</div>
							</a>
						</div>
						<div class="clearfix"></div>
					</div>	
				</div>	
			</div>	
			</div>
				<!--footer-->
					<div class="footer-section">
						<div class="container">
							<div class="footer-top">
								<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">ANG 英语在线学习平台</a></p>
							</div>
							<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
</body>
</html>