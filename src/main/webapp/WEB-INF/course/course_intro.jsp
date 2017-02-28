<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>课程介绍</title>
<link href="${baseurl }/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="${baseurl }/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${baseurl }/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="${baseurl }/js/move-top.js"></script>
<script type="text/javascript" src="${baseurl }/js/easing.js"></script>
<script type="text/javascript" src="${baseurl }/js/bootstrap.js"></script>

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
			<div class="r_nr"><a href="#">我的学习</a>&nbsp;<a href="#">消息<em id="msg_num">2</em></a>&nbsp;<a href="#">购物车<em id="buy_num">1</em></a>&nbsp;<a href="${baseurl }/login.jsp">登录/注册</a></div>
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
						<li><a href="${baseurl }/icourse/getMain" class="active">主页</a></li>
							<li><a href="${baseurl }/icourse/getAll">课程</a></li>
							<li><a href="${baseurl }/icourse/getWord">单词</a></li>
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
	</div>
	<!--services-->
	<div class="content">
		<div class="incredible">
				<div class="container">
					<div >
						<ul class="breadcrumb" contenteditable="true">
							<li>​<a href="index.html">主页</a></li>
							<li><a href="course.html">课程</a></li>
							<li><a class="active" href="this">生活英语</a></li>
						</ul>
					</div>
					<div class="course_detail">
						<div class="container-fluid">
							<div class="course_intro">
								<div class="intro_left">
									<h3>${requestScope.course.name}</h3>
									<div class="course_img"><a href="#"><img  src="${baseurl }/${course.img}" /></a></div>									
								</div>
								<div class="intro_right">
									
										<div class="price">
											<h3>
												<strong>￥${requestScope.course.price}</strong>
											</h3>
										</div>
										<div class="intro_info">
											<ul>
												<li class="first_li">
													<i class="fa fa-user"></i>&nbsp;参加人数：
												</li>
												<li id="join_num">
													${requestScope.member }
												</li>
												<li>
													讲师：
												</li>
												<li id="teacher">
													${requestScope.name }
												</li>
											</ul>
										</div>
										<div>
												<div class="buy_now">
													<a href="${baseurl }/icourse/getOrder?id=${requestScope.course.id}"><button class="btn btn-danger btn-large" type="button">立即参加</button></a>
												</div>
												<div class="s_cart">
													<a href="${baseurl }/icourse/getShopCart?id=1"><button class="btn btn-warning btn-large" type="button">加入购物车</button></a>
												</div>
												
										</div>
											<div class="clearfix"></div>		
								</div>
								<div class="clearfix"></div>	
							</div>
							<div class="intro_detail">
								<div class="intro_dis">
									<div class="tabbable" id="tabs-942631"><!-- Only required for left/right tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a  data-toggle="tab" href="#panel-904948">简介</a></li>
											<li class=""><a  data-toggle="tab" href="#panel-392684">讨论区</a></li>
										</ul>

										<div class="tab-content">
											<div class="tab-pane active" contenteditable="true" id="panel-904948">
											<p id="course_brief">${requestScope.course.profile}</p>
											</div>

											<div class="tab-pane" contenteditable="true" id="panel-392684">
											<p id="discuss">讨论区。。。后台读取填充</p>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
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