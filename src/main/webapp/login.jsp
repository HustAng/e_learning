<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>登录</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-social.css" rel="stylesheet" type="text/css">	
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-image-1">
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-login-form-2" role="form" action="${pageContext.request.contextPath }/user/login" method="POST">
				<div class="row">
					<div class="col-md-12">
						<h1>登录</h1>
					</div>
				</div>
				<div class="row">
					<div class="templatemo-one-signin col-md-6">
				        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="username" class="control-label">邮箱</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-user"></i>
				            	<input type="text" class="form-control" id="username" placeholder="" name="email">
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <label for="password" class="control-label">密码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<input type="password" class="form-control" id="password" placeholder="" name="password">
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <div class="checkbox">
				                <label>
				                  <input type="checkbox"> 记住密码
				                </label>
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <input type="submit" value="登录" class="btn btn-warning">
				          </div>
				        </div>
				        <div class="form-group">
				          	<div class="col-md-12">
				        		<a href="forgot-password.html" class="text-center"> 忘记密码?</a>
										<a href="register.jsp" class="text-center" id="register">&nbsp; 立即注册！</a>
										<a href="${pageContext.request.contextPath }/adminLogin.jsp" class="text-center"> 管理员登录</a>
				       	 	</div>
				    	</div>
					</div>
					<div class="templatemo-other-signin col-md-6">
						<label class="margin-bottom-15">
							<label class="control-label">第三方登录</label>
						</label>
						<a class="btn btn-block btn-social btn-facebook margin-bottom-15">
						    <i class="fa fa-qq"></i> QQ 登录
						</a>
						<a class="btn btn-block btn-social btn-twitter margin-bottom-15">
						    <i class="fa fa-weixin"></i> 微信登录
						</a>
						<a class="btn btn-block btn-social btn-google-plus">
						    <i class="fa fa-weibo"></i> 微博登录
						</a>
					</div>   
				</div>				 	
		      </form>		      		      
		</div>
	</div>
	<br>
	<br>
</body>
<%-- <head>
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
</body> --%>
</html>