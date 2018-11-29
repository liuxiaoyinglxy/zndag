<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css">
</head>
<body>
	<div class="navMenubox">
	 <span id="top">
        <img alt="" src="Images/layer.png" style="width:75px;height:75px"><span>陆军合成第六旅</span><i>千部档案管理系统</i>
      </span>
		<div id="slimtest1">
			<div class="navMenu-top">
				<div id="mini" style="">
					<i class="fa fa-bars fa-2x"></i>
				</div>
			</div>
			<ul class="navMenu">
				<li><a href="javascript:;" class="afinve"><img alt="" src="<%=basePath %>Images/dangAnGui.png" ><span class="">档案柜管理</span> <span
						class="arrow"></span> </a>
					<ul class="sub-menu">
						<li><a href="javascript:;"><span>档案柜管理</span> </a></li>
						<li><a href="javascript:;"><span>部门管理</span> </a></li>
					</ul>
				</li>
				<li><a href="javascript:;" class="afinve"><img alt="" src="<%=basePath %>Images/filemg.png">
						 <span class="nav-text">档案管理</span> <span
						class="arrow"></span> </a>
					<ul class="sub-menu">
						<li><a href="javascript:;"><span>档案管理</span> </a></li>
						<li><a href="javascript:;"><span>角色管理</span> </a></li>
						<li><a href="javascript:;"><span>权限管理</span> </a></li>
						<li><a href="javascript:;"><span>我的任务</span> </a></li>
					</ul>
				</li>
				<li><a href="javascript:;" class="afinve"><img alt="" src="<%=basePath %>Images/fileck.png"> <span class="nav-text">档案盘点</span> <span
						class="arrow"></span> </a>
					<ul class="sub-menu">
						<li><a href="javascript:;"><span>网站设置</span> </a></li>
						<li><a href="javascript:;"><span>友情链接</span> </a></li>
						<li><a href="javascript:;"><span>分类管理</span> </a></li>
						<li><a href="javascript:;"><span>系统日志</span> </a></li>
					</ul>
				</li>
				<li><a href="javascript:;" class="afinve"> <img alt="" src="<%=basePath %>Images/filetg.png"><span class="nav-text">档案统计</span> <span
						class="arrow"></span> </a>
					<ul class="sub-menu">
						<li><a href="javascript:;"><span>网站设置</span> </a></li>
						<li><a href="javascript:;"><span>友情链接</span> </a></li>
						<li><a href="javascript:;"><span>分类管理</span> </a></li>
						<li><a href="javascript:;"><span>系统日志</span> </a></li>
					</ul>
				</li>
				<li><a href="javascript:;" class="afinve"><img alt="" src="<%=basePath %>Images/danwei.png"><span class="nav-text">单位管理</span> <span
						class="arrow"></span> </a>
					<ul class="sub-menu">
						<li><a href="javascript:;"><span>网站设置</span> </a></li>
						<li><a href="javascript:;"><span>友情链接</span> </a></li>
						<li><a href="javascript:;"><span>分类管理</span> </a></li>
						<li><a href="javascript:;"><span>系统日志</span> </a></li>
					</ul>
				</li>
				<li><a href="javascript:;" class="afinve"> <img alt="" src="<%=basePath %>Images/filemg.png"><span class="nav-text">操作员管理</span> <span
						class="arrow"></span> </a>
					<ul class="sub-menu">
						<li><a href="javascript:;"><span>网站设置</span> </a></li>
						<li><a href="javascript:;"><span>友情链接</span> </a></li>
						<li><a href="javascript:;"><span>分类管理</span> </a></li>
						<li><a href="javascript:;"><span>系统日志</span> </a></li>
					</ul>
				</li>
				<li><a href="javascript:;" class="afinve"><img alt="" src="<%=basePath %>Images/logMg.png"> <span class="nav-text">日志管理</span> <span
						class="arrow"></span> </a>
					<ul class="sub-menu">
						<li><a href="javascript:;"><span>网站设置</span> </a></li>
						<li><a href="javascript:;"><span>友情链接</span> </a></li>
						<li><a href="javascript:;"><span>分类管理</span> </a></li>
						<li><a href="javascript:;"><span>系统日志</span> </a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<!-- <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> -->
	<script src="<%=basePath %>js/jquery.min.js"></script> 
	<script>
		$(function() {
			// nav收缩展开
			$('.navMenu li a').on(
					'click',
					function() {
						var parent = $(this).parent().parent();//获取当前页签的父级的父级

						var labeul = $(this).parent("li").find(">ul") //li下的ul

						if ($(this).parent().hasClass('open') == false) {
							//展开未展开
							parent.find('ul').slideUp(300);

							parent.find("li").removeClass("open")

							parent.find('li a').removeClass("active").find(
									".arrow").removeClass("open")
							$(this).parent("li").addClass("open").find(labeul)
									.slideDown(300);
							$(this).addClass("active").find(".arrow").addClass(
									"open")
						} else {
							$(this).parent("li").removeClass("open").find(
									labeul).slideUp(300);
							if ($(this).parent().find("ul").length > 0) {
								$(this).removeClass("active").find(".arrow")
										.removeClass("open")
							} else {
								$(this).addClass("active")
							}
						}

					});
		});
	</script>
</body>
</html>
