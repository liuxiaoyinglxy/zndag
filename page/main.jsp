<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>三级联动</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="<%=basePath%>statics/Bootstrap/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=basePath%>theme/font_dcoyiowr40c9dx6r/iconfont.css">
<link rel="stylesheet"
	href="<%=basePath%>theme/font_q7dmzvxo5pg2pgb9/iconfont.css">
<link rel="stylesheet" href="<%=basePath%>theme/main.css">



</head>
<body>
	<div class="top">
		<img src="<%=basePath%>Images/sjld/logo-1.png"> <span
			class='tit'>河北省水资源三级联动系统</span> <span class="user"> 用户：水利厅李静
			&nbsp;&nbsp; 注销 </span> <a href="#" class="online" type="button"
			data-toggle="modal" data-target="#myModal"><img
			src="<%=basePath%>Images/sjld/在线咨询.png" height="20" width="18" alt="">在线</a>
		<!-- <img src="img/在线咨询.png" class="online"> -->
	</div>
	<input type="hidden" value="123" id="ww">
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading active">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseOne"> 公文流转 </a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<p class="active" onClick="javascript:fawen();">
						<i class='iconfont icon-fenxiang'></i>发文管理
					</p>
					<p onClick="javascript:shouwen();">
						<i class="iconfont icon-fuzhiyemian"></i>收文管理
					</p>
					<p onClick="javascript:fankui();">
						<i class="iconfont icon-fankui1"></i>反馈考核
					</p>
					<p>
						<i class='iconfont icon-wenjian'></i>文件管理
					</p>
					<p>
						<i class='iconfont icon-zuzhijigou'></i>组织机构管理
					</p>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseTwo"> 实时信息 </a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">
					<p>
						<i class="iconfont icon-water_icon"></i>水量
					</p>
					<p>
						<i class="iconfont icon-water_icon"></i>水质
					</p>
					<p>
						<i class="iconfont icon-water_icon"></i>水位
					</p>
					<p>
						<i class="iconfont icon-water_icon"></i>市界断面
					</p>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseThree"> 取用水查询 </a>
				</h4>
			</div>
			<div id="collapseThree" class="panel-collapse collapse">
				<div class="panel-body"></div>
			</div>
		</div>
	</div>
	<div class="abc">
		<div class="tag">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#list" data-toggle="tab"> 发文列表
				</a></li>
				<li><a href="#more" data-toggle="tab">发文详情</a></li>

			</ul>

			<!-- <w href='#'>ssssss</w>			 -->
		</div>
		<style>
.abc {
	padding-left: 250px;
	height: 780px;
}

.tag {
	height: 42px;
	line-height: 42px;
	background-color: #F2F2F2;
	position: relative;
}

.abc ul {
	padding-left: 10px;
}

.abc ul li {
	float: left;
	list-style: none;
	width: 132px;
	height: 36px;
	line-height: 36px;
	text-align: center;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	cursor: pointer;
}

.abc ul li.active {
	background-color: #fff;
}

.tag w {
	position: absolute;
	right: 15px;
	top: 0px;
	color: #0033FF;
	font-size: 14px;
	text-decoration: none;
}

.nav-tabs>li>a {
	margin-right: 0px;
}

#myTab {
	height: 0px !important;
}
</style>
		<div id="content">
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="list"
					style="width: 100%; height: 100%">
					<iframe src='page/1-fawenliebiao.jsp'
						style="width: 100%; height: 99.9%"></iframe>
				</div>
				<div class="tab-pane fade" id="more"
					style="width: 100%; height: 100%">
					<iframe id="tab_1_iframe" name="tab_1_iframe" src=''
						style="width: 100%; height: 99.9%"></iframe>
				</div>
			</div>

		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true" style="font-size: 24px;">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">即时通信</h4>
				</div>
				<div class="modal-body">

					<!-- 左侧联系人 -->
					<div class="left">
						<p>
							<input type="text"><i class="iconfont icon-chazhao"></i>
						</p>
						<div>

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home"
									aria-controls="home" role="tab" data-toggle="tab"><i
										class='iconfont icon-icon-test'></i></a></li>
								<li role="presentation"><a href="#profile"
									aria-controls="profile" role="tab" data-toggle="tab"><i
										class='iconfont icon-GroupCopy'></i></a></li>
								<li role="presentation"><a href="#messages"
									aria-controls="messages" role="tab" data-toggle="tab"><i
										class='iconfont icon-liaotian1'></i></a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="home">

									<!-- 聊天框的联系人列表 -->
									<div class="panel-group" id="accordion-2" role="tablist"
										aria-multiselectable="true">
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingOne-1">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseOne-1"
														aria-expanded="true" aria-controls="collapseOne">
														河北水利厅水资源处 10/12 </a>
												</h4>
											</div>
											<div id="collapseOne-1" class="panel-collapse collapse in"
												role="tabpanel" aria-labelledby="headingOne-1">
												<div class="panel-body">
													<ul>
														<li><i class="lv"></i>苏处</li>
														<li><i class="hui"></i>水资源管理组</li>
														<li><i class="lv"></i>李****（职位）</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingTwo-2">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseTwo-2"
														aria-expanded="false" aria-controls="collapseTwo">
														石家庄市水利厅水资源处 10/12 </a>
												</h4>
											</div>
											<div id="collapseTwo-2" class="panel-collapse collapse"
												role="tabpanel" aria-labelledby="headingTwo-2">
												<div class="panel-body">
													<ul>
														<li><i class="lv"></i>苏处</li>
														<li><i class="hui"></i>水资源管理组</li>
														<li><i class="lv"></i>李****（职位）</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingThree-3">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseThree"
														aria-expanded="false" aria-controls="collapseThree-3">
														邢台市水利厅水资源处 10/12 </a>
												</h4>
											</div>
											<div id="collapseThree-3" class="panel-collapse collapse"
												role="tabpanel" aria-labelledby="headingThree-3">
												<div class="panel-body"></div>
											</div>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="profile">
									<!-- ////////////////// -->
									<div class="panel-group" id="accordion-2" role="tablist"
										aria-multiselectable="true">
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingOne-1">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseOne-1"
														aria-expanded="true" aria-controls="collapseOne">
														厅水资源处（5/6） </a>
												</h4>
											</div>
										</div>
										<div class="panel panel-default">

											<div class="panel-heading" role="tab" id="headingTwo-2">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseTwo-2"
														aria-expanded="false" aria-controls="collapseTwo">
														各市（含定州、辛集）水务局（10/13） </a>
												</h4>
											</div>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="messages">
									<!-- ////////////////// -->
									<div class="panel-group" id="accordion-2" role="tablist"
										aria-multiselectable="true">
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingOne-1">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseOne-1"
														aria-expanded="true" aria-controls="collapseOne">
														厅水资源处（5/6） </a>
												</h4>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingTwo-2">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseTwo-2"
														aria-expanded="false" aria-controls="collapseTwo">
														各市（含定州、辛集）水务局（10/13） </a>
												</h4>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="headingThree-3">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse"
														data-parent="#accordion" href="#collapseThree-3"
														aria-expanded="false" aria-controls="collapseTwo"> <i
														class='lv'></i> 李***（所在部门)
													</a>
												</h4>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!-- 右侧聊天内容 -->
					<div class="right">
						<div id="lianxiren">
							李***（所在部门)<i class="lv"></i>
						</div>
						<div>

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" onClick="javascript:lxr4();"><a
									href="#zxfx" aria-controls="zxfx" role="tab" data-toggle="tab">在位分析</a></li>
								<li role="presentation" onClick="javascript:lxr3();"><a
									href="#wenjian" aria-controls="wenjian" role="tab"
									data-toggle="tab">文件</a></li>
								<li role="presentation" onClick="javascript:lxr2();"><a
									href="#gaonggao" aria-controls="gaonggao" role="tab"
									data-toggle="tab">公告</a></li>
								<li role="presentation" class="active"
									onClick="javascript:lxr1();"><a href="#liaotian"
									aria-controls="liaotian" role="tab" data-toggle="tab">聊天</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<!-- 在位分析 -->
								<div role="tabpanel" class="tab-pane" id="zxfx">...</div>
								<!-- 文件 -->
								<div role="tabpanel" class="tab-pane" id="wenjian">

									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist">
										<li role="presentation" class="active"><a href="#fawen"
											aria-controls="fawen" role="tab" data-toggle="tab">发文</a></li>
										<li role="presentation"><a href="#shouwen"
											aria-controls="shouwen" role="tab" data-toggle="tab">收文</a></li>
									</ul>

									<!-- Tab panes -->
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane active" id="fawen">
											<table border="1">
												<tr>
													<th>文件</th>
													<th>时间</th>
													<th>大小</th>
													<th>上传者</th>
													<th>所属主题</th>
													<th>操作</th>
												</tr>
												<tr>
													<td>***</td>
													<td></td>
													<td></td>
													<td></td>
													<td>******文件</td>
													<td><i class='iconfont icon-xiazai'></i></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane" id="shouwen">
											<table border="1">
												<tr>
													<th>文件</th>
													<th>时间</th>
													<th>大小</th>
													<th>上传者</th>
													<th>所属主题</th>
													<th>操作</th>
												</tr>
												<tr>
													<td>***</td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>***</td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</table>
										</div>
									</div>

								</div>
								<!-- 公告 -->
								<div role="tabpanel" class="tab-pane" id="gaonggao">
									<a href="#">新建公告</a>
									<ul>
										<li>
											<h4>关于加快水资源监控项目建设的通知</h4>
											<p>通知已经下发，请及时查收。</p>
											<div>
												编辑 删除<span>李静 &nbsp;&nbsp; 2/28 14:00</span>
											</div>
										</li>
										<li>
											<h4>关于加快水资源监控项目建设的通知</h4>
											<p>通知已经下发，请及时查收。</p>
											<div>
												编辑 删除<span>李静 &nbsp;&nbsp; 2/28 14:00</span>
											</div>
										</li>
									</ul>
								</div>
								<!-- 聊天 -->
								<div role="tabpanel" class="tab-pane active" id="liaotian">
									<div class="con">
										<p>李某（保定市市水务局） ：</p>
										<span>这是一个测试！！</span>
									</div>
									<div class="sure">
										<!-- <textarea name="" id="" cols="30" rows="10"></textarea> -->
										<button>确定</button>
									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=basePath%>statics/js/jquery.min.js"></script>
	<script src="<%=basePath%>statics/Bootstrap/assets/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/sjldMain.js"></script>
</body>
</html>