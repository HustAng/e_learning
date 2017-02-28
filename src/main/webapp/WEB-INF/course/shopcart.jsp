<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var = "baseurl" value="${pageContext.request.contextPath }"></c:set>
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
		function selectAll(){
			var all=document.getElementsByName("all");
			var goods=document.getElementsByName("goods");
			if(all[0].checked){
				for(var i=0;i<goods.length;i++){
				goods[i].checked="checked";
				}			
				selectGoods();
			}else{
				for(var i=0;i<goods.length;i++){
				goods[i].checked=all.checked;
				}			
				selectGoods();
			}
			sum();		
		}
		function selectGoods(){
			var goods=document.getElementsByName("goods");
			var itemPrice=document.getElementsByName("itemPrice");
				for(var i=0;i<goods.length;i++){
					if(goods[i].checked){
						itemPrice[i].innerHTML=goods[i].value;
					}
					else{
						itemPrice[i].innerHTML="0.00";
					}
				}
			sum();
		}

		function sum(){
			var totalPrice=document.getElementById("total_p");
			var realPrice=document.getElementById("real_pay");
			var itemPrice=document.getElementsByName("itemPrice");
			var money=0.00;
			for(var i=0;i<itemPrice.length;i++){
				money=money+parseFloat(itemPrice[i].innerHTML);
			}
			totalPrice.innerHTML=money.toFixed(2);
			realPrice.innerHTML="￥"+money.toFixed(2);
		}
	</script>
<!---End-smoth-scrolling-->
</head>

<body >
	<div class="t">
		<div class="t_n">
			<div class="r_nr"><a href="mylearning.html">我的学习</a>&nbsp;<a href="#">消息<em id="msg_num">2</em></a>&nbsp;<a href="shopcart.html">购物车<em id="buy_num">2</em></a>&nbsp;<a href="${baseurl }/login.jsp">登录/注册</a></div>
		</div>
	</div>

	<div class="content">
		<div class="incredible">
			<div class="container">
					
					<div class="order_remind"><h3>我的购物车</h3>共<span></span>件商品</div>
					<div>
						<form>
							<table class="table" contenteditable="true">
								<thead>
									<tr>
									<th><input type="checkbox" class="checkbox" name="all" onclick="selectAll()">全选</th>
									<th>课程名称</th>
									<th>课程有效期</th>
									<th>单价（元）</th>
									<th>优惠（元）</th>
									<th>小计（元）</th>
									</tr>
								</thead>
								<tbody>
								<c:if test="${empty requestScope.course }">
								没有信息
								</c:if>
								<c:if test="${!empty requestScope.course }">
								<c:forEach items="${course }" var="course1" begin="0" end="1">
								
								    <tr>
										<td><input type="checkbox" class="checkbox" name="goods" onclick="selectGoods()" value="${course1.price }"></td>
										<td>
											<figure><img src="${baseurl }/${course1.img}"/><figcaption>${course1.name }</figcaption></figure></td>
										<td>付款后两年内有效</td>
										<td>${course1.price }</td>
										<td>0</td>
										<td id="price">${course1.price }</td>
									</tr>
									<tr class="final_p" >
										<td colspan="4"></td>
										<td >小计：<span id="final_price" name="itemPrice">${course1.price }</span></td>
									</tr>
								</c:forEach>
								</c:if>
									<%-- <tr>
										<td><input type="checkbox" class="checkbox" name="goods" onclick="selectGoods()" value="199.00"></td>
										<td>
											<figure><img src="${baseurl }/images/free1.jpg"/><figcaption>宝宝启蒙英语</figcaption></figure></td>
										<td>付款后两年内有效</td>
										<td>239.00</td>
										<td>40</td>
										<td id="price">199.00</td>
									</tr>
									<tr class="final_p" >
										<td colspan="4"></td>
										<td >小计：<span id="final_price" name="itemPrice">00.00</span></td>
									</tr> --%>
									<%-- <tr>
										<td><input type="checkbox" class="checkbox" name="goods" onclick="selectGoods()" value="239.00"></td>
										<td>
											<figure><img src="${baseurl }/images/hot3.jpg"/><figcaption>学地道英语</figcaption></figure></td>
										<td>付款后两年内有效</td>
										<td>339.00</td>
										<td>100</td>
										<td id="price">239.00</td>
									</tr>									
									<tr class="final_p" >
										<td colspan="4"></td>
										<td >小计：<span id="final_price" name="itemPrice">00.00</span></td>
									</tr> --%>
								</tbody>
							</table>
							<div class="total_p">
								<p>总计：</p><p id="total_p">￥00.00</p>
							</div>
							<div class="pay">
								<div class="suborder"><button class="btn btn-warning btn-large" type="button">提交订单</button></div>
								<div class="real_pay"><p>实付金额：</p><span id="real_pay">￥</span><a href="${baseurl }/icourse/getMain">继续购买</a></div>
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