<%@page import="java.util.UUID"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String uuid=UUID.randomUUID().toString();
uuid=uuid.substring(0, 8);
request.setAttribute("uuid", uuid);
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
<form action="${pageContext.request.contextPath }/course/order" method="post">
	<c:forEach items="${courseList}" var="course">
	<input name="p2_Order"  value="${uuid}"  /><br/>
	课程名称<input type="text" name="p5_pid" value="${course.name}" readonly="readonly"/><br/>
	金　额：<input type="text" name="p3_Amt" value="${course.price}" readonly="readonly"/><br/>
	</c:forEach>
	选择银行：<br/>
	<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C"/>
	<img src="order/bank_img/icbc.bmp" align="middle"/>
	<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>
	<img src="order/bank_img/bc.bmp" align="middle"/><br/><br/>
	<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>
	<img src="order/bank_img/abc.bmp" align="middle"/>
	<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>
	<img src="order/bank_img/ccb.bmp" align="middle"/><br/><br/>
	<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>
	<img src="order/bank_img/bcc.bmp" align="middle"/><br/>
	<input type="submit" value="确认支付"/>
</form>
  </body>
</html>
