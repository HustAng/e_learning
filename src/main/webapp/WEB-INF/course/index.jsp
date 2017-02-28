<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>首页</title>
<link href="${baseurl }/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="${baseurl }/css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Car Racing Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="/js/jquery-1.8.3.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="${baseurl }/js/move-top.js"></script>
<script type="text/javascript" src="${baseurl }/js/easing.js"></script>
<script type="text/javascript" src="${baseurl }/js/bootstrap.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
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
<body>
	<div class="t">
 		 <div class="t_n">
    		<div class="r_nr"><a href="#">我的学习</a>&nbsp;<a href="#">消息<em id="msg_num">2</em></a>&nbsp;<a href="#">购物车<em id="buy_num">1</em></a>&nbsp;<a href="${baseurl }/login.jsp">登录/注册</a></div>
 	 	</div>
	</div>
	<div class="header">
		
		<div class="container">
			<div class="header-top">
				<div class="logo">
					ANG English
				</div>
				<div class="top-menu">
					<span class="menu"><img src="${baseurl }/images/nav.png" alt=""/> </span>
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
							<input type="text" value="课程搜索" onFocus="this.value = ''" onBlur="if (this.value == '') {this.value = 'Search here';}">
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
	 <script src="${baseurl }/js/responsiveslides.min.js"></script>
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
	 <div class="slider">
		  <div class="callbacks_container">
			  <ul class="rslides" id="slider">
				
					<div class="slid banner1">
						  <div class="caption">
								<h3>2017学习计划</h3>
								<p> 2017年，给自己一个全新开始的机会，大声向自己、向世界宣誓：我绝不虚度！</p>
								<a href="#" class="button">立即报名</a>
						  </div>
					</div>
				
				
					 <div class="slid banner2">	
						  <div class="caption">
								<h3>5折起</h3>
								<p> 今天学习节，实力开挂,超强师资队伍助你高考英语提分，脱颖而出！</p>
								<a href="#" class="button">立即报名</a>
						  </div>
					 </div>


					<div class="slid banner3">	
						<div class="caption">
								<h3>最高立减300元</h3>
								<p> 搞定寒假,学霸模式，开启世界名校，让你的寒假充满电！</p>
								<a href="#" class="button">立即报名</a>
						</div>
					</div>
				
			  </ul>
		 </div>
	 </div>
	 </div>
	<!--free course-->
		<div class="content">
			<div class="incredible">
				<div class="container">
					<h3>免费好课</h3>
					<c:if test="${empty requestScope.courses1}">
							   没有课程
					</c:if>
					<c:if test="${!empty requestScope.courses1}">
						<div class="incredible-grids">
							<c:forEach items="${courses1 }" var="course" begin="0" end="3">
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl}/${course.img}" class="img-responsive" alt="${course.name }的图片">
								<h4><a href="getCourse?id=${course.id }">"${course.name }"</a></h4>
								<p>"${course.profile }"</p>
								<p><span>免费</span>（${arr1[course.id]}人学过）</p>
							</div>
							</c:forEach>
						</div>
					</c:if>
							<%-- <div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free2.jpg" class="img-responsive" alt="/">
								<h4><a href="#">口语就该这么练</a></h4>
								<p>英语学了十几年还是搞不懂音标？英语启蒙教育有啥应聘升职要求口语流利，自己的发音却很土？</p>
								<p><span>免费</span>（3378人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free3.jpg" class="img-responsive" alt="/">
								<h4><a href="#">玩转英语--倒背如流</a></h4>
									<p>没有思维就没有语言，用词汇组成不同句子表达不同的意思。英语思维训练让你在校园和职场所向披靡！</p>
								<p><span>免费</span>（1888人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free4.jpg" class="img-responsive" alt="/">
								<h4><a href="#">基础入门英语词汇</a></h4>
								<p>通过经典美剧日常生活片段中学习经典之句，做到真正寓教于乐，学以致用。我们可以一起和憨豆先生迷失在城市。</p>
								<p><span>免费</span>（3586人学过）</p>
							</div> --%>
							<div class="clearfix"></div>
						</div>
				</div>
			</div>
		<!--hot course-->
		<div class="incredible">
				<div class="container">
					<h3>热门课程</h3>
					<c:if test="${empty requestScope.courses2 }">
						   没有信息
					</c:if>
						<c:if test="${!empty requestScope.courses2 }">
						<div class="incredible-grids">
						  <c:forEach items="${courses2}" var = "course2" begin="0" end="3">
						     <div class="col-md-3 incredible-grid">
								<img src="${baseurl}/${course2.img}" class="img-responsive" alt="${course2.name }的图片">
								<h4><a href="getCourse?id=${course2.id }">"${course2.name }"</a></h4>
								<p>"${course2.profile }"</p>
								<p><span>"￥${course2.price }"</span>（"${arr2[course2.id]}"人学过）</p>
							</div>
						  </c:forEach>
						 </div>
						</c:if>
							<%--<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/hot2.jpg" class="img-responsive" alt="/">
								<h4><a href="#">帮你学音标语音</a></h4>
								<p>帮你学英语</p>
								<p><span>￥299</span>（468人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/hot3.jpg" class="img-responsive" alt="/"> 
								<h4><a href="#">紧跟商业趋势--学地道英语</a></h4>
									<p>BenAtive商务英语</p>
								<p><span>￥199</span>（1888人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/hot4.jpg" class="img-responsive" alt="/">
								<h4><a href="#">英语口语革命零基础</a></h4>
								<p>李先知</p>
								<p><span>￥188</span>（3586人学过）</p>
							</div> --%>
							<div class="clearfix"></div>
						</div>
				</div>
			</div>
				<!--名师-->
					<div class="models">
						<div class="container">
							<h3>名师大咖</h3>
							<div class="clients">
								<ul id="flexiselDemo3">
									<li><img src="${baseurl }/images/m1.jpg" class="img-responsive" alt=""/><h4>周雷</h4><p>北京大学英语系英语语言文学硕士</p></li>
									<li><img src="${baseurl }/images/m2.jpg" class="img-responsive" alt=""/><h4>孙菁笛</h4><p>悉尼大学硕士</p></li>
									<li><img src="${baseurl }/images/m3.jpg" class="img-responsive" alt=""/><h4>刘强</h4><p>2012财年新东方集团优秀教师</p></li>
									<li><img src="${baseurl }/images/m4.jpg" class="img-responsive" alt=""/><h4>史学冬</h4><p>从事高等英语教育18年</p></li>
									<li><img src="${baseurl }/images/m5.jpg" class="img-responsive" alt=""/><h4>孙思扬</h4><p>英语专八教育8年</p></li>
									<li><img src="${baseurl }/images/m1.jpg" class="img-responsive" alt=""/><h4>周雷</h4><p>北京大学英语系英语语言文学硕士</p></li>
									<li><img src="${baseurl }/images/m2.jpg" class="img-responsive" alt=""/><h4>孙菁笛</h4><p>悉尼大学硕士</p></li>
									<li><img src="${baseurl }/images/m3.jpg" class="img-responsive" alt=""/><h4>刘强</h4><p>2012财年新东方集团优秀教师</p></li>
									<li><img src="${baseurl }/images/m4.jpg" class="img-responsive" alt=""/><h4>史学冬</h4><p>从事高等英语教育18年</p></li>
									<li><img src="${baseurl }/images/m5.jpg" class="img-responsive" alt=""/><h4>孙思扬</h4><p>英语专八教育8年</p></li>
								</ul>
									<script type="text/javascript">
								$(window).load(function() {
									
								  $("#flexiselDemo3").flexisel({
										visibleItems: 5,
										animationSpeed: 1000,
										autoPlay: true,
										autoPlaySpeed: 3000,    		
										pauseOnHover: true,
										enableResponsiveBreakpoints: true,
										responsiveBreakpoints: { 
											portrait: { 
												changePoint:480,
												visibleItems: 1
											}, 
											landscape: { 
												changePoint:640,
												visibleItems: 2
											},
											tablet: { 
												changePoint:768,
												visibleItems: 3
											}
										}
									});
									});
								</script>
								<script type="text/javascript" src="${baseurl }/js/jquery.flexisel.js"></script>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
				<!--footer-->
					<div class="footer-section">
						<div class="container">
							<div class="footer-top">
								<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="#">ANG 英语在线学习平台</a></p>
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