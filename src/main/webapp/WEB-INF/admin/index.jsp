<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/lib/font-awesome/css/font-awesome.css">

    <script src="${pageContext.request.contextPath }/lib/jquery-1.11.1.min.js" type="text/javascript"></script>

        <script src="${pageContext.request.contextPath }/lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
            $(".knob").knob();
        });
    </script>


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/stylesheets/premium.css">

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
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-57-precomposed.png">
  

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
          <a class="" href="${pageContext.request.contextPath }/index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span>ANG English</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> 章鱼小丸子
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath }/editInfo.html">个人设置</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="${pageContext.request.contextPath }/sign-in.html">退出账号</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    
    <div class="sidebar-nav">
        <ul>
            <li><a href="${pageContext.request.contextPath }/courseManage.html" class="nav-header"><i class="fa fa-fw fa-list-alt"></i> 课程管理</a></li>
            <li><a href="${pageContext.request.contextPath }/wordManage.html" class="nav-header"><i class="fa fa-book"></i>单词管理</a></li>
            <li><a href="${pageContext.request.contextPath }/lisenningManage.html" class="nav-header" target="blank"><i class="fa fa-fw fa-heart"></i> 听力管理</a></li>
            <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-bar-chart-o"></i> 收益分析<i class="fa fa-collapse"></i></a></li>
            <li><ul class="dashboard-menu nav nav-list collapse in">
                    <li><a href="${pageContext.request.contextPath }/courseIncome.html"><span class="fa fa-caret-right"></span> 课程收益</a></li>
                    <li ><a href="${pageContext.request.contextPath }/wordIncome.html"><span class="fa fa-caret-right"></span> 单词收益</a></li>
                    <li ><a href="${pageContext.request.contextPath }/teacherIncome.html"><span class="fa fa-caret-right"></span> 教师收益</a></li>
            </ul></li>

            <li data-popover="true" data-content="" rel="popover" data-placement="right"><a href="#" data-target=".premium-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-group"></i> 信息管理<i class="fa fa-collapse"></i></a></li>
                <li><ul class="premium-menu nav nav-list collapse">
                    <li ><a href="${pageContext.request.contextPath }/admin/users"><span class="fa fa-caret-right"></span> 用户管理</a></li>
                    <%-- <li ><a href="${pageContext.request.contextPath }/teacher.html"><span class="fa fa-caret-right"></span> 教师管理</a></li>
                    <li ><a href="${pageContext.request.contextPath }/manager.html"><span class="fa fa-caret-right"></span> 管理员管理</a></li> --%>
            </ul></li>

            <li><a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-wrench"></i> 个人设置<i class="fa fa-collapse"></i></a></li>
                <li><ul class="accounts-menu nav nav-list collapse">
                    <li ><a href="${pageContext.request.contextPath }/login.html"><span class="fa fa-caret-right"></span>切换账号</a></li>
                    <li ><a href="${pageContext.request.contextPath }/sign-up.html"><span class="fa fa-caret-right"></span> 注册新账号</a></li>
                    <li ><a href="${pageContext.request.contextPath }/editInfo.html"><span class="fa fa-caret-right"></span>修改个人信息</a></li>
            </ul></li>
        </ul>
    </div>

    <div class="content">
        <div class="header">
            <h1 class="page-title">收益分析</h1>
        </div>
        <div class="main-content">
            
            <!--本月收益-->
            <div>
                 <a href="#page-stats" class="panel-heading" data-toggle="collapse">本月收益(万元)</a>
                   <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="knob-container">
                                <input class="knob" data-width="200" data-min="0" data-max="3000" data-displayPrevious="true" value="2500" data-fgColor="#92A3C2" data-readOnly=true;>
                                <h3 class="text-muted text-center">课程收益</h3>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="knob-container">
                                <input class="knob" data-width="200" data-min="0" data-max="4500" data-displayPrevious="true" value="3299" data-fgColor="#92A3C2" data-readOnly=true;>
                                <h3 class="text-muted text-center">单词收益</h3>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="knob-container">
                                <input class="knob" data-width="200" data-min="0" data-max="2700" data-displayPrevious="true" value="1840" data-fgColor="#92A3C2" data-readOnly=true;>
                                <h3 class="text-muted text-center">听力收益</h3>
                            </div>
                        </div>
                    </div>
            </div>
            <!--收益分析对比-->
             <div class="row-fluid">
                <div class="widget span12">
                    <div class="widget-header"><i class="icon-signal"></i><h5>Area Chart</h5>
                        <div class="widget-buttons">
                            <a href="#" data-title="Collapse" data-collapsed="false" class="tip collapse"><i class="icon-chevron-up"></i></a>
                        </div>
                    </div>
                    <div class="widget-body clearfix" style="border-top:1px solid #DDD;">
                        <div class="analytics_item" id="areachart"></div>
                    </div>
                </div>
            </div>
            </div>      
        <footer>
            <hr>
        </footer>
        </div>


    <script src="${pageContext.request.contextPath }/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  
</body></html>

<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Index Page</title>
</head>
<body>
<h4>Login Successfully!</h4>
<br><br>
<a href="${pageContext.request.contextPath }/admin/users">用户管理</a>
</body>
</html> --%>