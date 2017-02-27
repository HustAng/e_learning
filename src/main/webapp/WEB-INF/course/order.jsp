<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>确认订单</title>
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

<body >
	<div class="t">
		<div class="t_n">
			<div class="r_nr"><a href="#">我的学习</a>&nbsp;<a href="#">消息<em id="msg_num">2</em></a>&nbsp;<a href="#">购物车<em id="buy_num">1</em></a>&nbsp;<a href="#">登录/注册</a></div>
		</div>
	</div>

	<div class="content">
		<div class="incredible">
			<div class="container">
					<div class="order_remind"><span class="fui-info-circle"></span>请仔细确认订单详情，注意课程有效时间，合理安排学习时间</div>
					<div>
						<form>
							<table class="table" contenteditable="true">
								<thead>
									<tr>
									<th>课程名称</th>
									<th>课程有效期</th>
									<th>单价（元）</th>
									<th>优惠（元）</th>
									<th>小计（元）</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><figure><img src="${baseurl }/images/free1.jpg"/><figcaption>${requestScope.course.name }</figcaption></figure></td>
										<td>付款后两年内有效</td>
										<td>${requestScope.course.price }</td>
										<td>0</td>
										<td>${requestScope.course.price }</td>
									</tr>
									<tr class="final_p" >
										<td colspan="4"></td>
										<td >小计：<span id="final_price">${requestScope.course.price }</span></td>
									</tr>
								</tbody>
							</table>
							<div class="total_p">
								<p>总计：</p><p>￥${requestScope.course.price }</p>
							</div>
							<div class="pay">
								<div class="suborder"><button class="btn btn-warning btn-large" type="button">提交订单</button></div>
								<div class="real_pay"><p>实付金额：</p><span>￥${requestScope.course.price }</span><a href="${baseurl }/course/getShopCart">返回购物车修改</a></div>
								<div class="clearfix"></div>
							</div>
						</form>
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