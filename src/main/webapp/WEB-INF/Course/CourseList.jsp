<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>课程列表</title>
</head>
<body>
	<ul>
		<li>课程名称</li>
		<li>课程详细说明</li>
		<li>开始时间</li>
		<li>结束时间</li>
		<li>价格</li>
		<li>课时</li>
	</ul>
	<c:forEach items="${courseList}" var="course">
		<ul>
			<li>${course.name }</li>
			<li>${course.profile }</li>
			<li>${course.starttime }</li>
			<li>${course.endtime }</li>
			<li>${course.price }</li>
			<li>${course.period }</li>
			<li><a href="">修改课程信息</a></li>
			<li><a href="">删除课程</a></li>
		</ul>
	</c:forEach>
</body>
</html>