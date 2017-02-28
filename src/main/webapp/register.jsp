<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册页面</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">

<link href="css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css">
<link href="css/bootstrap-social.css" rel="stylesheet" type="text/css">
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/Reg.js"></script>
<script src="scripts/jquery-3.1.1.js"></script>
</head>
<body class="templatemo-bg-image-1" onload="createCode();">
	<div class="container">
		<div class="col-md-12">
			<form id="register" class="form-horizontal templatemo-login-form-2"
				role="form"
				action="${pageContext.request.contextPath }/user/register"
				method="POST">
				<div class="row">
					<div class="col-md-12">
						<h1>注册</h1>
					</div>
				</div>
				<div class="row register">

					<div class="form-group">
						<div class="col-md-12">
							<div class="reg_lable">
								<label for="username">用户名</label>
							</div>
							<div class="templatemo-input-icon-container">
								<i class="fa fa-user"></i> <input type="text"
									class="form-control" id="username" placeholder=""
									name="username">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<div class="reg_lable">
								<label for="tel">电话</label>
							</div>
							<div class="templatemo-input-icon-container">
								<i class="fa fa-phone"></i> <input type="tel"
									class="form-control" id="tel" placeholder="" name="tel">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<div class="reg_lable">
								<label for="email">邮箱</label>
							</div>
							<div class="templatemo-input-icon-container">
								<i class="fa fa-inbox"></i> <input type="email"
									class="form-control" id="email" placeholder="" name="email">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<div class="reg_lable">
								<label for="password">密码</label>
							</div>
							<div class="templatemo-input-icon-container">
								<i class="fa fa-lock"></i> <input type="password"
									class="form-control" id="password" placeholder="" maxlength=""
									name="password">
							</div>
						</div>
					</div>
					<div>
						<div style="margin: 20px 0px 20px 0px;">
							<div class="reg_lable">
								<label for="sex" id="sex">性别</label>
							</div>
							<div>
								<div class="sex">
									<input type="radio" name="sex" placeholder="" value="男" checked>男
								</div>
								<div class="sex">
									<input type="radio" name="sex" placeholder="" value="女">女
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<div class="reg_lable">
								<label for="birth" class="control-label">生日</label>
							</div>
							<div class="templatemo-input-icon-container">
								<i class="fa fa-gift"></i> <input type="date"
									class="form-control" id="birth" placeholder="" name="birthStr">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-12">
							<div class="reg_lable">
								<label for="reg" class="control-label">验证码</label>
							</div>

							<div>
								<input type="text" class="form-control"
									style="width: 100px; display: inline; margin-left: 50px;"
									id="input1" onblur="validate()" required> <input
									type="button" id="checkCode" class="code" style="width: 60px"
									onclick="createCode()" /> <a onClick="Change()">换一个</a> <span
									id="Reg" style="color: red; font-size: 16px;"></span>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-md-12">
							<input type="submit" value="注册" class="btn btn-warning"
								id="submit">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>