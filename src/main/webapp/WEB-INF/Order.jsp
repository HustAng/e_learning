<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"/>
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/qiantai/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="${pageContext.request.contextPath}/qiantai/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/qiantai/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/easing.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/bootstrap.js"></script>

 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
<%
String uuid=UUID.randomUUID().toString();
uuid=uuid.substring(0, 7);
request.setAttribute("uuid", uuid);
%>
</head>
<body >
	<div class="t">
		<div class="t_n">
			<div class="r_nr"><a href="mylearning.html">我的学习</a>&nbsp;<a href="#">消息<em id="msg_num">2</em></a>&nbsp;<a href="shopcart.html">购物车<em id="buy_num">1</em></a>&nbsp;<a href="#">登录/注册</a></div>
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
									<th>小计（元）</th>
									<th>选择支付银行</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${courseList }" var="course">
									<tr>
										<td><figure><img src="${pageContext.request.contextPath}/qiantai/images/free1.jpg"/><figcaption>${course.name }</figcaption></figure></td>
										<td>付款后两年内有效</td>
										<td>${course.price }</td>
										<td>${course.price }</td>
										<td>
										<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C"/>中国工商银行<br>
 									<%--<img src="${pageContext.request.contextPath}/order/bank_img/icbc.bmp" align="middle"/> --%>
										<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行<br>
										<%-- <img src="${pageContext.request.contextPath}/order/bank_img/bc.bmp" align="middle"/> --%>
										<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>中国农业银行<br>
 										<%-- <img src="${pageContext.request.contextPath}/order/bank_img/abc.bmp" align="middle"/>--%>
										<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>中国建设银行<br>
 										<%--<img src="${pageContext.request.contextPath}/order/bank_img/ccb.bmp" align="middle"/><br/><br/>--%>
										<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>中国交通银行<br>
										<%--<img src="${pageContext.request.contextPath}/order/bank_img/bcc.bmp" align="middle"/><br/>--%>
										</td>
									</tr>
									<tr class="final_p" >
										<td colspan="4"></td>
										<td >小计：<span id="final_price">${course.price }</span></td>
									</tr>
									
								</tbody>
							</table>
							<div class="total_p">
								<p>总计：</p><p>${course.price }</p>
							</div>
							
							<div class="pay">
								<div class="suborder"><a href="javascript:void(0)" class="btn btn-warning btn-large" onclick="pay('${uuid}','${course.price }')">提交订单</a></div>
								<div class="real_pay"><p>实付金额：</p><span>${course.price }</span><a href="shopcart.html">返回购物车修改</a></div>
								<div class="clearfix"></div>
							</div>
							</c:forEach>
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
						
						function pay(uuid,price)
						{
							var bank=$("input[name='pd_FrpId']:checked").val();
							window.location.href='${pageContext.request.contextPath}/course/order?p2_Order='+uuid+'&&p3_Amt='+price+'&&pd_FrpId='+bank;
						}
					</script>
			<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		</div>
	</div>
</body>
</html>