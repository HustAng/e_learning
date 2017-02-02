<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/user/login"
		method="POST">
		邮箱：<input type="text" name="email"> <br>
		<br> 密码：<input type="password" name="password"> <br>
		<br> <input type="submit" value="用户登录">
	</form>
	<br>
	<br>
	<form action="${pageContext.request.contextPath }/admin/login"
		method="POST">
		用户名：<input type="text" name="username"> <br>
		<br> 密　码：<input type="password" name="password"> <br>
		<br> <input type="submit" value="管理员登录">
	</form>
	<br>
	<br>
	<form action="${pageContext.request.contextPath }/teacher/login"
		method="POST">
		邮箱：<input type="text" name="email"> <br>
		<br> 密码：<input type="password" name="password"> <br>
		<br> <input type="submit" value="教师登录">
	</form>
</body>
</html>