<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>修改个人信息</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href='http://fonts.useso.com/css?family=Open+Sans:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/lib/font-awesome/css/font-awesome.css">

<script
	src="${pageContext.request.contextPath }/lib/jquery-1.11.1.min.js"
	type="text/javascript"></script>



<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/stylesheets/theme.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/stylesheets/premium.css">

</head>
<body class=" theme-blue">

	<!-- Demo page code -->

	<script type="text/javascript">
		$(function() {
			var match = document.cookie.match(new RegExp('color=([^;]+)'));
			if (match)
				var color = match[1];
			if (color) {
				$('body').removeClass(function(index, css) {
					return (css.match(/\btheme-\S+/g) || []).join(' ')
				})
				$('body').addClass('theme-' + color);
			}

			$('[data-popover="true"]').popover({
				html : true
			});

		});
	</script>
	<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.navbar-default .navbar-brand, .navbar-default .navbar-brand:hover {
	color: #fff;
}
</style>

	<script type="text/javascript">
		$(function() {
			var uls = $('.sidebar-nav > ul > *').clone();
			uls.addClass('visible-xs');
			$('#main-menu').append(uls.clone());
		});
	</script>

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

	<!-- Le fav and touch icons -->
	<link rel="shortcut icon"
		href="${pageContext.request.contextPath }//assets/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144"
		href="${pageContext.request.contextPath }//assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114"
		href="${pageContext.request.contextPath }//assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
		href="${pageContext.request.contextPath }//assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed"
		href="${pageContext.request.contextPath }//assets/ico/apple-touch-icon-57-precomposed.png">


	<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
	<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
	<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
	<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
	<!--[if (gt IE 9)|!(IE)]><!-->

	<!--<![endif]-->

	<div class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="" href="${pageContext.request.contextPath }/index.html"><span
				class="navbar-brand"><span class="fa fa-paper-plane"></span>ANG
					English</span></a>
		</div>

		<div class="navbar-collapse collapse" style="height: 1px;">
			<ul id="main-menu" class="nav navbar-nav navbar-right">
				<li class="dropdown hidden-xs"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <span
						class="glyphicon glyphicon-user padding-right-small"
						style="position: relative; top: 3px;"></span> 章鱼小丸子 <i
						class="fa fa-caret-down"></i>
				</a>

					<ul class="dropdown-menu">
						<li><a
							href="${pageContext.request.contextPath }/editInfo.html">个人设置</a></li>
						<li class="${pageContext.request.contextPath }/divider"></li>
						<li><a tabindex="-1"
							href="${pageContext.request.contextPath }/sign-in.html">退出账号</a></li>
					</ul></li>
			</ul>

		</div>
	</div>


	<div class="sidebar-nav">
		<ul>
			<li><a href="${pageContext.request.contextPath }/media.html"
				class="nav-header"><i class="fa fa-fw fa-list-alt"></i> 课程管理</a></li>
			<li><a href="${pageContext.request.contextPath }/faq.html"
				class="nav-header"><i class="fa fa-book"></i>单词管理</a></li>
			<li><a href="http://portnine.com/bootstrap-themes/aircraft"
				class="nav-header" target="blank"><i class="fa fa-fw fa-heart"></i>
					听力管理</a></li>
			<li><a href="#" data-target=".dashboard-menu" class="nav-header"
				data-toggle="collapse"><i class="fa fa-fw fa-bar-chart-o"></i>
					收益分析<i class="fa fa-collapse"></i></a></li>
			<li><ul class="dashboard-menu nav nav-list collapse in">
					<li><a
						href="${pageContext.request.contextPath }/courseIncome.html"><span
							class="fa fa-caret-right"></span> 课程收益</a></li>
					<li><a
						href="${pageContext.request.contextPath }/wordIncome.html"><span
							class="fa fa-caret-right"></span> 单词收益</a></li>
					<li><a
						href="${pageContext.request.contextPath }/teacherIncome.html"><span
							class="fa fa-caret-right"></span> 教师收益</a></li>
				</ul></li>

			<li data-popover="true" data-content="" rel="popover"
				data-placement="right"><a href="#" data-target=".premium-menu"
				class="nav-header collapsed" data-toggle="collapse"><i
					class="fa fa-fw fa-group"></i> 信息管理<i class="fa fa-collapse"></i></a></li>
			<li><ul class="premium-menu nav nav-list collapse">
					<li><a href="${pageContext.request.contextPath }/admin/users"><span
							class="fa fa-caret-right"></span> 用户管理</a></li>
					<%-- <li><a
						href="${pageContext.request.contextPath }/teacher.html"><span
							class="fa fa-caret-right"></span> 教师管理</a></li>
					<li><a
						href="${pageContext.request.contextPath }/manager.html"><span
							class="fa fa-caret-right"></span> 管理员管理</a></li> --%>
				</ul></li>

			<li><a href="#" data-target=".accounts-menu"
				class="nav-header collapsed" data-toggle="collapse"><i
					class="fa fa-wrench"></i> 个人设置<i class="fa fa-collapse"></i></a></li>
			<li><ul class="accounts-menu nav nav-list collapse">
					<li><a href="${pageContext.request.contextPath }/login.html"><span
							class="fa fa-caret-right"></span>切换账号</a></li>
					<li><a
						href="${pageContext.request.contextPath }/sign-up.html"><span
							class="fa fa-caret-right"></span> 注册新账号</a></li>
					<li><a
						href="${pageContext.request.contextPath }/reset-password.html"><span
							class="fa fa-caret-right"></span>修改个人信息</a></li>
				</ul></li>
		</ul>
	</div>

	<div class="content">
		<div class="header">

			<h1 class="page-title">修改个人信息</h1>
			<ul class="breadcrumb">
				<li><a href="index.html">主页</a></li>
				<li class="active">修改个人信息</li>
			</ul>

		</div>
		<div class="main-content">

			<ul class="nav nav-tabs">
				<li class="active"><a
					href="${pageContext.request.contextPath }/#home" data-toggle="tab">个人信息</a></li>
				<li><a href="${pageContext.request.contextPath }/#profile"
					data-toggle="tab">密码</a></li>
			</ul>
			<form:form action="${pageContext.request.contextPath }/admin/user"
				method="POST" modelAttribute="user">
				<c:if test="${user.id != null }">
					<form:hidden path="id" />
					<input type="hidden" name="_method" value="PUT">
					<!-- 对于 _method 不能使用 form:hidden 标签, 因为 modelAttribute 对应的 bean 中没有 _method 这个属性 -->
					<%-- <form:hidden path="_method" value="PUT" /> --%>
					<div class="row">
						<div class="col-md-4">
							<br>
							<div id="myTabContent" class="tab-content">
								<div class="tab-pane active in" id="home">
									<form id="tab">
										<div class="form-group">
											<label>用户名</label>
											<form:input path="username" class="form-control" />
										</div>
										<div class="form-group">
											<label>邮箱</label>
											<form:input path="email" class="form-control" />
										</div>
										<div class="form-group">
											<label>电话</label>
											<form:input path="tel" class="form-control" />
										</div>
										<div class="form-group">
											<label>权限</label>
											<form:select path="roleId" items="${roles }" itemLabel="name"
												itemValue="id" class="form-control"></form:select>
										</div>
										<div class="form-group">
											<%
												Set<String> genders = new HashSet<String>();
														genders.add("男");
														genders.add("女");
														request.setAttribute("genders", genders);
											%>
											<label>性别</label>
											<form:radiobuttons path="sex" items="${genders }"
												 />
										</div>
										<div class="form-group">
											<label>生日</label>
											<form:input path="birth" class="form-control" />
										</div>
										<div class="form-group">
											<label>余额</label>
											<form:input path="balance" class="form-control" />
										</div>
										<%-- <div class="form-group">
											<label>照片</label>
											<form:input path="img" class="form-control" />
										</div> --%>
										<div class="form-group">
											<label>教育背景</label>
											<form:input path="backgroud" class="form-control" />
										</div>
										<div class="form-group">
											<button class="btn btn-primary">确认修改</button>
										</div>
									</form>
								</div>

								<div class="tab-pane fade" id="profile">

									<form id="tab2">
										<div class="form-group">
											<label>新密码</label> <input type="password"
												class="form-control">
										</div>
										<div>
											<button class="btn btn-primary">确认修改</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</form:form>

		</div>
	</div>


	<script
		src="${pageContext.request.contextPath }/lib/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>


</body>
</html>
