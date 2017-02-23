<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>用户管理</title>
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
<script type="text/javascript">
	$(function() {
		$(".delete").click(function() {
			if (confirm("确认删除这条用户记录吗？")) {
				var href = $(this).attr("href");
				$("#deleteForm").attr("action", href).submit();
			}
			return false;
		});
	})
</script>



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
						<li class="divider"></li>
						<li><a tabindex="-1"
							href="${pageContext.request.contextPath }/sign-in.html">退出账号</a></li>
					</ul></li>
			</ul>

		</div>
	</div>

	<form id="deleteForm" action="" method="POST">
		<input type="hidden" name="_method" value="DELETE">
	</form>
	<div class="sidebar-nav">
		<ul>
			<li><a
				href="${pageContext.request.contextPath }/courseManage.html"
				class="nav-header"><i class="fa fa-fw fa-list-alt"></i> 课程管理</a></li>
			<li><a
				href="${pageContext.request.contextPath }/wordManage.html"
				class="nav-header"><i class="fa fa-book"></i>单词管理</a></li>
			<li><a
				href="${pageContext.request.contextPath }/lisenningManage.html"
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
					<%-- <li><a href="${pageContext.request.contextPath }/teacher.html"><span
							class="fa fa-caret-right"></span> 教师管理</a></li>
					<li><a href="${pageContext.request.contextPath }/manager.html"><span
							class="fa fa-caret-right"></span> 管理员管理</a></li> --%>
				</ul></li>

			<li><a href="#" data-target=".accounts-menu"
				class="nav-header collapsed" data-toggle="collapse"><i
					class="fa fa-wrench"></i> 个人设置<i class="fa fa-collapse"></i></a></li>
			<li><ul class="accounts-menu nav nav-list collapse">
					<li><a href="${pageContext.request.contextPath }/login.html"><span
							class="fa fa-caret-right"></span>切换账号</a></li>
					<li><a href="${pageContext.request.contextPath }/sign-up.html"><span
							class="fa fa-caret-right"></span> 注册新账号</a></li>
					<li><a
						href="${pageContext.request.contextPath }/editInfo.html"><span
							class="fa fa-caret-right"></span>修改个人信息</a></li>
				</ul></li>
		</ul>
	</div>

	<div class="content">
		<div class="header">

			<h1 class="page-title">用户管理</h1>
			<ul class="breadcrumb">
				<li><a href="${pageContext.request.contextPath }/index.html">信息管理</a></li>
				<li class="active">用户管理</li>
			</ul>

		</div>
		<div class="main-content">

			<div class="btn-toolbar list-toolbar">
				<a href="#AddUser" role="button" data-toggle="modal"
					style="color: #fff;"><button class="btn btn-primary">
						<i class="fa fa-plus"></i> 添加新用户
					</button></a>
				<button class="btn btn-default">导入</button>
				<button class="btn btn-default">导出</button>
				<div class="btn-group"></div>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th></th>
						<th>用户名</th>
						<th>邮箱</th>
						<th>联系电话</th>
						<th style="width: 3.5em;"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.users }" var="user">
						<tr>
							<td>${user.username }</td>
							<td>${user.email }</td>
							<td>${user.tel }</td>
							<td><span class="label label-warning">vip</span></td>
							<td><a
								href="${pageContext.request.contextPath }/admin/user/${user.id }"
								role="button" data-toggle="modal"><i class="fa fa-pencil"></i></a>
								<a class="delete"
								href="${pageContext.request.contextPath }/admin/user/${user.id }"
								role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<ul class="pagination" style="margin-left: 300px; margin-top: 30px;">
				<li><a href="#">&laquo;上一页</a></li>
				<li id="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">下一页&raquo;</a></li>
			</ul>

			<div class="modal small fade" id="myModal" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h3 id="myModalLabel">删除提示</h3>
						</div>
						<div class="modal-body">
							<p class="error-text">
								<i class="fa fa-warning modal-icon"></i>
							<h3>确定要删除该用户吗?</h3>
							</p>
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal"
								aria-hidden="true">取消</button>
							<button class="btn btn-danger" data-dismiss="modal">删除</button>
						</div>
					</div>
				</div>
			</div>

			<div class="modal small fade" id="editUser" tabindex="-2"
				role="dialog" aria-labelledby="editUser" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h3 id="myModalLabel">修改用户信息</h3>
						</div>
						<div class="modal-body">
							<div class="panel-body">
								<form>
									<div class="form-group">
										<label>用户名</label> <input type="text"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>昵称</label> <input type="text"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>邮箱</label> <input type="email"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>等级</label> <select class="form-control span12">
											<option>普通</option>
											<option selected>vip</option>
										</select>
									</div>
									<div class="clearfix"></div>
								</form>
							</div>

						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal"
								aria-hidden="true">取消</button>
							<button class="btn btn-danger" data-dismiss="modal">保存</button>
						</div>
					</div>
				</div>
			</div>

			<div class="modal small fade" id="AddUser" tabindex="-3"
				role="dialog" aria-labelledby="AddUser" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h3 id="myModalLabel">添加新用户</h3>
						</div>
						<div class="modal-body">
							<div class="panel-body">
								<form>
									<div class="form-group">
										<label>用户名</label> <input type="text"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>昵称</label> <input type="text"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>密码</label> <input type="password"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>邮箱</label> <input type="email"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>性别</label>&nbsp;&nbsp;&nbsp; <input type="radio"
											name="sex" value="男">男&nbsp;&nbsp;&nbsp; <input
											type="radio" name="sex" value="女">女
									</div>
									<div class="form-group">
										<label>电话</label> <input type="tel"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>生日</label> <input type="date"
											class="form-control span12">
									</div>
									<div class="form-group">
										<label>等级</label> <select class="form-control span12">
											<option>普通</option>
											<option selected>vip</option>
										</select>
									</div>

									<div class="clearfix"></div>
								</form>
							</div>

						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal"
								aria-hidden="true">取消</button>
							<button class="btn btn-danger" data-dismiss="modal">保存</button>
						</div>
					</div>
				</div>
			</div>









		</div>
	</div>


	<script src="lib/bootstrap/js/bootstrap.js"></script>
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

<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理用户</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".delete").click(function() {
			if (confirm("确认删除这条用户记录吗？")) {
				var href = $(this).attr("href");
				$("#deleteForm").attr("action", href).submit();
			}
			return false;
		});
	})
</script>
</head>
<body>
	<form id="deleteForm" action="" method="POST">
		<input type="hidden" name="_method" value="DELETE">
	</form>
	<c:if test="${empty requestScope.users}">没有任何用户信息</c:if>
	<c:if test="${!empty requestScope.users}">
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>id</th>
				<th>用户名</th>
				<th>邮箱</th>
				<th>电话</th>
				<th>角色编号</th>
				<th>性别</th>
				<th>生日</th>
				<th>余额</th>
				<th>照片</th>
				<th>教育背景</th>
				<th>编辑</th>
				<th>删除</th>
			</tr>
			<c:forEach items="${requestScope.users }" var="user">
				<tr>
					<td>${user.id }</td>
					<td>${user.username }</td>
					<td>${user.email }</td>
					<td>${user.tel }</td>
					<td>${user.roleId}</td>
					<td>${user.sex}</td>
					<td>${user.birth }</td>
					<td>${user.balance }</td>
					<td>${user.img }</td>
					<td>${user.backgroud }</td>
					<td><a
						href="${pageContext.request.contextPath }/admin/user/${user.id }">编辑</a></td>
					<td><a class="delete"
						href="${pageContext.request.contextPath }/admin/user/${user.id }">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html> --%>