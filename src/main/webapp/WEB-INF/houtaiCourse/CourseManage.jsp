<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/houtai/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/houtai/lib/font-awesome/css/font-awesome.css">

    <script src="${pageContext.request.contextPath}/houtai/lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/houtai/stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/houtai/stylesheets/premium.css">

<title>课程管理</title>
</head>
<body class=" theme-blue">

    <!-- Demo page code -->

    <script type="text/javascript">
        $(function() {
            var match = document.cookie.match(new RegExp('color=([^;]+)'));
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
            
        });
    </script>
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
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
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
   
  <!--<![endif]-->

    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span>ANG English</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> 章鱼小丸子
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">
                <li><a href="editInfo.html">个人设置</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="sign-in.html">退出账号</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    
    <div class="sidebar-nav">
        <ul>
            <li><a href="courseManage.html" class="nav-header"><i class="fa fa-fw fa-list-alt"></i> 课程管理</a></li>
            <li><a href="wordManage.html" class="nav-header"><i class="fa fa-book"></i>单词管理</a></li>
            <li><a href="lisenningManager.html" class="nav-header" target="blank"><i class="fa fa-fw fa-heart"></i> 听力管理</a></li>
            <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-bar-chart-o"></i> 收益分析<i class="fa fa-collapse"></i></a></li>
            <li><ul class="dashboard-menu nav nav-list collapse in">
                    <li><a href="courseIncome.html"><span class="fa fa-caret-right"></span> 课程收益</a></li>
                    <li ><a href="wordIncome.html"><span class="fa fa-caret-right"></span> 单词收益</a></li>
                    <li ><a href="teacherIncome.html"><span class="fa fa-caret-right"></span> 教师收益</a></li>
            </ul></li>

            <li data-popover="true" data-content="" rel="popover" data-placement="right"><a href="#" data-target=".premium-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-group"></i> 信息管理<i class="fa fa-collapse"></i></a></li>
                <li><ul class="premium-menu nav nav-list collapse">
                    <li ><a href="users.html"><span class="fa fa-caret-right"></span> 用户管理</a></li>
                    <li ><a href="teacher.html"><span class="fa fa-caret-right"></span> 教师管理</a></li>
                    <li ><a href="manager.html"><span class="fa fa-caret-right"></span> 管理员管理</a></li>
            </ul></li>

            <li><a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-wrench"></i> 个人设置<i class="fa fa-collapse"></i></a></li>
                <li><ul class="accounts-menu nav nav-list collapse">
                    <li ><a href="login.html"><span class="fa fa-caret-right"></span>切换账号</a></li>
                    <li ><a href="sign-up.html"><span class="fa fa-caret-right"></span> 注册新账号</a></li>
                    <li ><a href="editInfo.html"><span class="fa fa-caret-right"></span>修改个人信息</a></li>
            </ul></li>
        </ul>
    </div>

    <div class="content">
        <div class="header">
            
            <h1 class="page-title">课程管理</h1>
                    <ul class="breadcrumb">
            <li><a href="index.html">主页</a> </li>
            <li class="active">课程管理</li>
        </ul>

        </div>
        <div class="main-content">
            
<div class="btn-toolbar list-toolbar">
    <a href="#AddCourse" role="button" data-toggle="modal" style="color: #fff;"><button class="btn btn-primary"><i class="fa fa-plus"></i> 添加新课程</button></a>
    <button class="btn btn-default">导入</button>
    <button class="btn btn-default">导出</button>
    <form class="form-inline" style="display:inline;margin-left:20px;" id="searchCourse" action="getCourseByCourseName.action">
            <input class="input-xlarge form-control" placeholder="请输入课程名称" id="appendedInputButton" type="text" name="courseName">
            <button class="btn btn-default" type="submit" value="搜索"><i class="fa fa-search"></i></button>
     </form>
  <div class="btn-group">
  </div>
</div>
<table class="table">
  <thead>
    <tr>
      <th></th>
      <th>课程名</th>
      <th>开课时间</th>
      <th>课时</th>
      <th>价格</th>
      <th>授课老师</th>
      <th style="width: 3.5em;"></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${courseList}" var="course">
    <tr>
      <td>${course.id }</td>
      <td>${course.name }</td>
      <td>${course.starttime }</td>
      <td>${course.period }</td>
      <td>${course.price }</td>
      <td>汤如</td>
      <td>
          <a href="#editCourse${course.id }" role="button" data-toggle="modal"><i class="fa fa-pencil"></i></a>
          <a href="#myModal${course.id }" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
  <div class="modal small fade" id="editCourse${course.id }" tabindex="-2" role="dialog" aria-labelledby="editCourse" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">修改课程信息</h3>
        </div>
        <div class="modal-body">
            <div class="panel-body">
            <form action="UpdateCourse.action" method="post">
           		<div class="form-group">
                    <input type="text" class="form-control span12" value="${course.id }" hidden  name="id">
                </div>
                <div class="form-group">
                    <label>课程名</label>
                    <input type="text" class="form-control span12" value="${course.name }" name="name">
                </div>
                <div class="form-group">
                    <label>课程详情</label>
                    <input type="text" class="form-control span12" value="${course.profile }" name="profile">
                </div>
                <div class="form-group">
                	<lable>课程类别</lable>
                	<select name="typeId" class="form-control span12">
		    		<c:forEach items="${typeListSession }" var="t">
			      		<option value="${t.id }">${t.name }</option>
			      	</c:forEach>
		          </select>
                </div>
                
                <div class="form-group">
                	<lable>细分类别</lable>
                	<select name="detailId" class="form-control span12">
			    		<c:forEach items="${detailListSession }" var="detail">
				      	<option value="${detail.id }">${detail.name }</option>
				      </c:forEach>
			          </select>
                </div>
                <div class="form-group">
                    <label>授课老师</label>
			           <select name="teacherId" class="form-control span12">
			    		<c:forEach items="${teacherListSession }" var="teacher">
				      	<option value="${teacher.id }">${teacher.username }</option>
				      </c:forEach>
			          </select>
                </div>
                 <div class="form-group">
                    <label>开课时间</label>
                    <input type="date" class="form-control span12" value="${course.starttime }" name="starttime">
                </div>
                <div class="form-group">
                    <label>结课时间</label>
                    <input type="date" class="form-control span12" value="${course.endtime }"name="endtime">
                </div>
                <div class="form-group">
                    <label>课时</label>
                    <input type="text" class="form-control span12" value="${course.period }" name="period">
                </div>
                <div class="form-group">
                    <label>价格</label>
                    <input type="text" class="form-control span12" value="${course.price }" name="price">
                </div>
               
                    <div class="clearfix"></div>
            
        </div>
            
        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
            <input class="btn btn-danger" type="submit"></input>
        </div>
        </form>
      </div>
    </div>
</div>
<div class="modal small fade" id="myModal${course.id }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">删除提示</h3>
        </div>
        <div class="modal-body">
            <p class="error-text"><i class="fa fa-warning modal-icon"></i><h3>确定要删除该课程吗?</h3></p>
        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
            <a class="btn btn-danger" href="deleteCourse?Id=${course.id }">删除</a>
        </div>
      </div>
    </div>
</div>

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





<div class="modal small fade" id="AddCourse" tabindex="-3" role="dialog" aria-labelledby="AddCourse" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">添加新课程</h3>
        </div>
        <div class="modal-body">
            <div class="panel-body">
            <form action="AddCourse.action" method="post" enctype="multipart/form-data">
            	<div class="form-group">
            		<label>课程图片</label>
            		<input type="file" class="form-control span12" name="pic"/>
            	</div>
                <div class="form-group">
                    <label >课程名</label>
                    <input type="text" class="form-control span12" placeholder="课程名" name="name">
                </div>
                <div class="form-group">
                	<lable>课程详情</lable>
                	<input type="text" class="form-control span12" name="profile" placeholder="课程详情">
                </div>
                <div class="form-group">
                	<label>授课老师</label>
			           <select name="teacherId" class="form-control span12">
			    		<c:forEach items="${teacherListSession }" var="teacher">
				      	<option value="${teacher.id }">${teacher.username }</option>
				      	</c:forEach>
				      	</select>
                </div>
                 <div class="form-group">
                    <label>开课时间</label>
                    <input type="date" class="form-control span12" name="starttime">
                </div>
                <div class="form-group">
                    <label>结课时间</label>
                    <input type="date" class="form-control span12" name="endtime">
                </div>
                <div class="form-group">
                    <label>课时</label>
                    <input type="text" class="form-control span12" name="period" placeholder="请输入课时">
                </div>
                <div class="form-group">
                    <label>价格</label>
                    <input type="text" class="form-control span12" name="price" placeholder="请输入课程价格">
                </div>
               <div class="form-group">
			          <lable> 课程类别</lable>
			          <select name="typeId" class="form-control span12">
			    		<c:forEach items="${typeListSession }" var="t">
				      	<option value="${t.id }">${t.name }</option>
				      </c:forEach>
			          </select>
                </div>
                <div class="form-group">
                	 <lable>细分类别</lable>
                	 <select name="detailId" class="form-control span12">
			    		<c:forEach items="${detailListSession }" var="detail">
				      	<option value="${detail.id }">${detail.name }</option>
				      </c:forEach>
			          </select>
                </div>
                
                    <div class="clearfix"></div>
            
        </div>
            
        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
            <input class="btn btn-danger" type="submit"></input>
        </div>
        </form>
      </div>
    </div>
</div>









        </div>
    </div>


    <script src="${pageContext.request.contextPath}/houtai/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  
</body>
</html>