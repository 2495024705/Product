<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>后台登录</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="shortcut icon" href="${ctx}/public/logo.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="${ctx}/public/css/font.css">
<link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="${ctx}/public/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>

</head>
<body>
	<!-- 顶部开始 -->
	<div class="container">
		<div class="logo">
			<a href="./index.html">眼镜店铺管理系统</a>
		</div>
		<div class="left_open">
			<i title="展开左侧栏" class="iconfont">&#xe699;</i>
		</div>

		<ul class="layui-nav right" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;">${sessionScope.user_session.loginname }</a>
				<dl class="layui-nav-child">
					<!-- 二级菜单 -->
					<dd>
						<a onclick="x_admin_show('个人信息','${ctx }/user/myupdate')">个人信息</a>
					</dd>
					<dd>
						<a onclick="x_admin_show('切换帐号','${ctx}/user/logout">切换帐号</a>
					</dd>
					<dd>
						<a href="${ctx}/user/logout">退出</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item to-index"><a>欢迎登录</a></li>
		</ul>

	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">
			<ul id="nav">
				 <c:choose>
						<c:when test="${sessionScope.tip  == 0 }">
					
						<li><a href="javascript:;"> <i class="iconfont">&#xe6b8;</i>
						<cite>员工管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${ctx }/huiyuan/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理会员</cite>
						</a></li>
					
						<li><a _href="${ctx }/yanguang/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理验光</cite>
						</a></li>
						
						<li><a _href="${ctx }/dingdan/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理订单</cite>
						</a></li>
						
						<li><a _href="${ctx }/jingpian/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>查看镜片</cite>
						</a></li>
						<li><a _href="${ctx }/yanjing/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>查看眼镜</cite>
						</a></li>

					</ul></li>
					</c:when>
					</c:choose>
					 <c:choose>
						<c:when test="${sessionScope.tip  == 1 }">
						<li><a href="javascript:;"> <i class="iconfont">&#xe6b8;</i>
						<cite>经理管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${ctx }/huiyuan/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>审核会员</cite>
						</a></li>
						<li><a _href="${ctx }/dingdan/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>查看订单</cite>
						</a></li>
						<li><a _href="${ctx }/yanjing/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理眼镜</cite>
						</a></li>
							<li><a _href="${ctx }/jingpian/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理镜片</cite>
						</a></li>
						<li><a _href="${ctx }/yuangong/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>查看员工</cite>
						</a></li>


					</ul></li>
						</c:when>
					</c:choose>
				 <c:choose>
						<c:when test="${sessionScope.tip  == 2 }">
						<li><a href="javascript:;"> <i class="iconfont">&#xe723;</i>
						<cite>老板管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${ctx }/huiyuan/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>查看会员</cite>
						</a></li>
						<li><a _href="${ctx }/dingdan/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>查看订单</cite>
						</a></li>
						<li><a _href="${ctx }/yanjing/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理眼镜</cite>
						</a></li>
							<li><a _href="${ctx }/jingpian/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理镜片</cite>
						</a></li>
						<li><a _href="${ctx }/yuangong/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理员工</cite>
						</a></li>
						
						<li><a _href="${ctx }/fendian/list"> <i class="iconfont">&#xe6a7;</i>
								<cite>分店管理</cite>
						</a></li>
					</ul></li>
						
						</c:when>
					</c:choose>
				
				

			</ul>
		</div>
	</div>
	<!-- <div class="x-slide_left"></div> -->
	<!-- 左侧菜单结束 -->
	<!-- 右侧主体开始 -->
	<div class="page-content">
		<div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
			<ul class="layui-tab-title">
				<li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
			</ul>
			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">
					<iframe src='${ctx}/welcome' frameborder="0" scrolling="yes"
						class="x-iframe"></iframe>
				</div>
			</div>
		</div>
	</div>
	<div class="page-content-bg"></div>
	<!-- 右侧主体结束 -->
	<!-- 中部结束 -->
	<!-- 底部开始 -->
	<div class="footer">
		<div class="copyright">Copyright ©2019 Rain</div>
	</div>
	<!-- 底部结束 -->

</body>
</html>