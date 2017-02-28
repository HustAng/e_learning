<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>课程</title>
<link href="${baseurl }/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="${baseurl }/css/style.css" rel="stylesheet" type="text/css" media="all" />
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

<body>
	<div class="t">
		<div class="t_n">
			<div class="r_nr"><a href="mylearning.html">我的学习</a>&nbsp;<a href="#">消息<em id="msg_num">2</em></a>&nbsp;<a href="shopcart.html">购物车<em id="buy_num">1</em></a>&nbsp;<a href="${baseurl }/login.jsp">登录/注册</a></div>
		</div>
	</div>
<div class="header">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					ANG English
				</div>
				<div class="top-menu">
					<span class="menu"><img src="images/nav.png" alt=""/> </span>
						<ul>
							<li><a href="${baseurl }/icourse/getMain" >主页</a></li>
							<li><a href="${baseurl }/icourse/getAll" class="active">课程</a></li>
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
<div class="content">
	<div class="incredible">
		<div class="container">

			<div class="toplist">
				<div class="span3">
					<div class="tabbable" id="tabs-601711">
						<ul class="nav nav-tabs">
							<li>
								<a href="#life_free" data-toggle="tab">免费排行</a>
							</li>
							<li class="active">
								<a href="#life_pay" data-toggle="tab">付费排行</a>
							</li>
						</ul>
						<div class="tab-content" id="life_top">
							<div class="tab-pane" id="life_free">
						<c:forEach items="${course4 }" var="course" begin="0" end="9">
								<ul>
								<li><a href="getCourse?id=${course.id }"><img src="${baseurl }/images/top1.png"  alt="/">${course.name }</a></li>
								<%-- <li><a href="#"><img src="${baseurl }/images/top2.png" alt="/">英语口语革命</a></li>
								<li><a href="#"><img src="${baseurl }/images/top3.png"  alt="/">BEC商务英语中级</a></li>
								<li><a href="#"><img src="${baseurl }/images/top4.png"  alt="/">看热门美剧学地道英语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top5.png"  alt="/">英语零基础直达大学六级</a></li>
                                <li><a href="#"><img src="${baseurl }/images/top6.png"  alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top7.png"  alt="/">新概念英语4,5册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top8.png"  alt="/">英语高级口译长线备考</a></li>
								<li><a href="#"><img src="${baseurl }/images/top9.png"  alt="/">大学水平直达CATTI笔译</a></li> --%>
								</ul>
						</c:forEach>
							</div>
							<div class="tab-pane active" id="life_pay">
						<c:forEach items="${course5 }" var="course" begin="0" end="9">
								<ul>
								<li><a href="getCourse?id=${course.id }"><img src="${baseurl }/images/top1.png"  alt="/">${course.name }</a></li>
								<%-- <li><a href="#"><img src="${baseurl }/images/top2.png" alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top3.png"  alt="/">BEC商务英语中级</a></li>
								<li><a href="#"><img src="${baseurl }/images/top4.png"  alt="/">看热门美剧学地道英语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top5.png"  alt="/">英语零基础直达大学六级</a></li>
                                <li><a href="#"><img src="${baseurl }/images/top6.png"  alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top7.png"  alt="/">英语口语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top8.png"  alt="/">英语高级口译长线备考</a></li>
								<li><a href="#"><img src="${baseurl }/images/top9.png"  alt="/">零基础直达BEC商务英语</a></li> --%>
								</ul>
						</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			  <div class="e_course">
					<h3>生活英语</h3>
					<a class="more" href="${baseurl }/icourse/getAllByDetailId?id=1">更多》</a>
						<div class="incredible-grids"  >
						<c:forEach items="${course1 }" var="course" begin="0" end="3">
						    <div class="col-md-3 incredible-grid">
								<img src="${baseurl }/${course.img}" class="img-responsive" alt="/">
								<a class="course_title" href="getCourse?id=${course.id }">"${course.name}"</a>
								<p>"${course.profile }"</p>
								<p><span>￥"${course.price }"</span>（<span class="normal">${arr1[course.id]}</span>人学过）</p>
							</div>
						</c:forEach>
							<%-- <div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free2.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">口语就该这么练</a>
								<p>英语学了十几年还是搞不懂音标？英语启蒙教育有啥应聘升职要求口语流利，自己的发音却很土？</p>
								<p><span>免费</span>（<span class="normal">3378</span>人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free3.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">玩转英语--倒背如流</a>
									<p>没有思维就没有语言，用词汇组成不同句子表达不同的意思。英语思维训练让你在校园和职场所向披靡！</p>
								<p><span>免费</span>（<span class="normal">1888</span>人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free4.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">0基础入门英语词汇</a>
								<p>通过经典美剧日常生活片段中学习经典之句，做到真正寓教于乐，学以致用。我们可以一起和憨豆先生迷失在城市。</p>
								<p><span>免费</span>（<span class="normal">3586</span>人学过）</p>
							</div> --%>
						</div>
			  </div>
			</div>
		</div>

			<div class="incredible">
		<div class="container">
			<div class="toplist">
				<div class="span3">
					<div class="tabbable" id="tabs-601711">
						<ul class="nav nav-tabs">
							<li>
								<a href="#test_free" data-toggle="tab">免费排行</a>
							</li>
							<li class="active">
								<a href="#test_pay" data-toggle="tab">付费排行</a>
							</li>
						</ul>
						<div class="tab-content" id="test_top">
							<div class="tab-pane" id="test_free">
						<c:forEach items="${course6 }" var="course" begin="0" end="9">
								<ul>
								<li><a href="getCourse?id=${course.id }"><img src="${baseurl }/images/top1.png"  alt="/">${course.name }</a></li>
								<%-- <li><a href="#"><img src="${baseurl }/images/top2.png" alt="/">英语口语革命</a></li>
								<li><a href="#"><img src="${baseurl }/images/top3.png"  alt="/">BEC商务英语中级</a></li>
								<li><a href="#"><img src="${baseurl }/images/top4.png"  alt="/">看热门美剧学地道英语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top5.png"  alt="/">英语零基础直达大学六级</a></li>
                                <li><a href="#"><img src="${baseurl }/images/top6.png"  alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top7.png"  alt="/">新概念英语4,5册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top8.png"  alt="/">英语高级口译长线备考</a></li>
								<li><a href="#"><img src="${baseurl }/images/top9.png"  alt="/">大学水平直达CATTI笔译</a></li> --%>
								</ul>
						</c:forEach>
							</div>
						
						<c:forEach items="${course7 }" var="course" begin="0" end="9">
							<div class="tab-pane active" id="test_pay">
								<ul>
								<li><a href="getCourse?id=${course.id }"><img src="${baseurl }/images/top1.png"  alt="/">${course.name }</a></li>
								<%-- <li><a href="#"><img src="${baseurl }/images/top2.png" alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top3.png"  alt="/">BEC商务英语中级</a></li>
								<li><a href="#"><img src="${baseurl }/images/top4.png"  alt="/">看热门美剧学地道英语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top5.png"  alt="/">英语零基础直达大学六级</a></li>
                                <li><a href="#"><img src="${baseurl }/images/top6.png"  alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top7.png"  alt="/">英语口语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top8.png"  alt="/">英语高级口译长线备考</a></li>
								<li><a href="#"><img src="${baseurl }/images/top9.png"  alt="/">零基础直达BEC商务英语</a></li> --%>
								</ul>
							</div>
						</c:forEach>
						</div>
					</div>
				</div>
			</div>

			  <div class="e_course">
					<h3>考试英语</h3>
					<a class="more" href="${baseurl }/icourse/getAllByDetailId?id=2">更多》</a>
						<div class="incredible-grids"  >
						<c:if test="${empty requestScope.course2 }">
						   没有课程信息
						</c:if>
						<c:if test="${!empty requestScope.course2}">
						<c:forEach items="${course2 }" var="course" begin="0" end="3">
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/${course.img}" class="img-responsive" alt="/">
								<a class="course_title" href="getCourse?id=${course.id }">"${course.name }"</a>
								<p>"${course.profile }"</p>
								<p><span>￥"${course.price }"</span>（<span class="normal">${arr2[course.id]}</span>人学过）</p>
							</div>
						</c:forEach>
						</c:if>
							<%-- <div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free2.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">口语就该这么练</a>
								<p>英语学了十几年还是搞不懂音标？英语启蒙教育有啥应聘升职要求口语流利，自己的发音却很土？</p>
								<p><span>免费</span>（<span class="normal">3378</span>人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free3.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">玩转英语--倒背如流</a>
									<p>没有思维就没有语言，用词汇组成不同句子表达不同的意思。英语思维训练让你在校园和职场所向披靡！</p>
								<p><span>免费</span>（<span class="normal">1888</span>人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free4.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">0基础入门英语词汇</a>
								<p>通过经典美剧日常生活片段中学习经典之句，做到真正寓教于乐，学以致用。我们可以一起和憨豆先生迷失在城市。</p>
								<p><span>免费</span>（<span class="normal">3586</span>人学过）</p>
							</div> --%>
						</div>
			  </div>
			</div>
		</div>

			<div class="incredible">
		<div class="container">

			<div class="toplist">
				<div class="span3">
					<div class="tabbable" id="tabs-601711">
						<ul class="nav nav-tabs">
							<li>
								<a href="#business_free" data-toggle="tab">免费排行</a>
							</li>
							<li class="active">
								<a href="#business_pay" data-toggle="tab">付费排行</a>
							</li>
						</ul>
						<div class="tab-content" id="business_top">
							<div class="tab-pane" id="business_free">
						<c:forEach items="${course8 }" var="course" begin="0" end="9">
								<ul>
								<li><a href="getCourse?id=${course.id }"><img src="${baseurl }/images/top1.png"  alt="/">${course.name }</a></li>
								<%-- <li><a href="#"><img src="${baseurl }/images/top2.png" alt="/">英语口语革命</a></li>
								<li><a href="#"><img src="${baseurl }/images/top3.png"  alt="/">BEC商务英语中级</a></li>
								<li><a href="#"><img src="${baseurl }/images/top4.png"  alt="/">看热门美剧学地道英语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top5.png"  alt="/">英语零基础直达大学六级</a></li>
                                <li><a href="#"><img src="${baseurl }/images/top6.png"  alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top7.png"  alt="/">新概念英语4,5册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top8.png"  alt="/">英语高级口译长线备考</a></li>
								<li><a href="#"><img src="${baseurl }/images/top9.png"  alt="/">大学水平直达CATTI笔译</a></li> --%>
								</ul>
						</c:forEach>
							</div>
							<div class="tab-pane active" id="business_pay">
						<c:forEach items="${course9 }" var="course" begin="0" end="9">
								<ul>
								<li><a href="getCourse?id=${course.id }"><img src="${baseurl }/images/top1.png"  alt="/">${course.name }</a></li>
								<%-- <li><a href="#"><img src="${baseurl }/images/top2.png" alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top3.png"  alt="/">BEC商务英语中级</a></li>
								<li><a href="#"><img src="${baseurl }/images/top4.png"  alt="/">看热门美剧学地道英语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top5.png"  alt="/">英语零基础直达大学六级</a></li>
                                <li><a href="#"><img src="${baseurl }/images/top6.png"  alt="/">新概念英语2,3册</a></li>
								<li><a href="#"><img src="${baseurl }/images/top7.png"  alt="/">英语口语</a></li>
								<li><a href="#"><img src="${baseurl }/images/top8.png"  alt="/">英语高级口译长线备考</a></li>
								<li><a href="#"><img src="${baseurl }/images/top9.png"  alt="/">零基础直达BEC商务英语</a></li> --%>
								</ul>
						</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			  <div class="e_course">
					<h3>商务英语</h3>
					<a class="more" href="${baseurl }/icourse/getAllByDetailId?id=1">更多》</a>
						<div class="incredible-grids"  >
						<c:if test="${empty requestScope.course3 }">
						   没有课程信息
						</c:if>
						<c:if test="${!empty requestScope.course3}">
						<c:forEach items="${course3 }" var="course" begin="0" end="3">
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/${course.img}" class="img-responsive" alt="/">
								<a class="course_title" href="#">"${course.name }"</a>
								<p>"${course.profile }"</p>
								<p><span>￥"${course.price }"</span>（<span class="normal">${arr3[course.id]}</span>人学过）</p>
							</div>
						</c:forEach>
						</c:if>
							<%-- <div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free2.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">口语就该这么练</a>
								<p>英语学了十几年还是搞不懂音标？英语启蒙教育有啥应聘升职要求口语流利，自己的发音却很土？</p>
								<p><span>免费</span>（<span class="normal">3378</span>人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free3.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">玩转英语--倒背如流</a>
									<p>没有思维就没有语言，用词汇组成不同句子表达不同的意思。英语思维训练让你在校园和职场所向披靡！</p>
								<p><span>免费</span>（<span class="normal">1888</span>人学过）</p>
							</div>
							<div class="col-md-3 incredible-grid">
								<img src="${baseurl }/images/free4.jpg" class="img-responsive" alt="/">
								<a class="course_title" href="#">0基础入门英语词汇</a>
								<p>通过经典美剧日常生活片段中学习经典之句，做到真正寓教于乐，学以致用。我们可以一起和憨豆先生迷失在城市。</p>
								<p><span>免费</span>（<span class="normal">3586</span>人学过）</p>
							</div> --%>
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
								$(document).ready(function () {
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
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span>
</a>
</div>
</div>
</body>

</html>