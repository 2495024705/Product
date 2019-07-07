<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>修改会员信息</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${ctx}/public/css/font.css">
<link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/public/lib/layui/layui.js"
	charset="utf-8"></script>

<link rel="stylesheet" type="text/css"
	href="${ctx}/public/lib/layui/css/layui.css" />
<script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="x-body">
		<form class="layui-form" method="POST" id="deptForm"
			action="${ctx}/dingdan/add">
			<input type="hidden" name="id" id="id" value="${job.id }">
			<div class="layui-form-item">
				<label for="dnum" class="layui-form-label"> <span
					class="x-red">*</span>订单编号
				</label>
				<div class="layui-input-inline">
					<input type="text" id="dnum" name="dnum" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.dnum }">
				</div>

			</div>
			<div class="layui-form-item">
				<label for="yjnum" class="layui-form-label"> <span
					class="x-red">*</span>眼镜编号
				</label>
				<div class="layui-input-inline">
					<select name="yjnum">
						<option value="">请选择</option>
						<c:forEach items="${listss}" var="v">
							<option value="${v.eyeNumber}">${v.eyeNumber}</option>
						</c:forEach>

					</select>
				</div>

			</div>
<div class="layui-form-item">
				<label for="jnum" class="layui-form-label"> <span
					class="x-red">*</span>镜片编号
				</label>
				<div class="layui-input-inline">
					<select name="jnum">
						<option value="">请选择</option>
						<c:forEach items="${listsss}" var="v">
							<option value="${v.eyeNumber}">${v.eyeNumber}</option>
						</c:forEach>

					</select>
				</div>

			</div>
			
<div class="layui-form-item">
				<label for="ygnum" class="layui-form-label"> <span
					class="x-red">*</span>验光编号
				</label>
				<div class="layui-input-inline">
					<input type="text" id="ygnum" name="ygnum" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.ygnum }">
				</div>

			</div>
			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> <span
					class="x-red">*</span>会员姓名
				</label>
				<div class="layui-input-inline">
					<input type="text" id="name" name="name" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.name }">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> <span
					class="x-red">*</span>会员电话
				</label>
				<div class="layui-input-inline">
					<input type="text" id="phone" name="phone" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.phone }">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="numberofglasses" class="layui-form-label"> <span
					class="x-red">*</span>眼镜数量
				</label>
				<div class="layui-input-inline">
					<input type="text" id="numberofglasses" name="numberofglasses" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.numberofglasses}">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="lensnumber" class="layui-form-label"> <span
					class="x-red">*</span>镜片数量
				</label>
				<div class="layui-input-inline">
					<input type="text" id="Lensnumber" name="lensnumber" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.lensnumber }">
				</div>
			</div>
			
		<%-- 	<div class="layui-form-item">
				<label for="pay" class="layui-form-label"> <span
					class="x-red">*</span>预付
				</label>
				<div class="layui-input-inline">
					<input type="text" id="pay" name="pay" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.pay }">
				</div>
			</div> --%>
			
			<div class="layui-form-item">
				<label for="yuan" class="layui-form-label"> <span
					class="x-red">*</span>员工编号
				</label>
				<div class="layui-input-inline">
					<select name="yuan">
						<option value="">请选择</option>
						<c:forEach items="${list1}" var="v">
							<option value="${v.eyeNumber}">${v.eyeNumber}</option>
						</c:forEach>

					</select>
				</div>
			</div>
			<c:choose>
				<c:when test="${sessionScope.tip  != 0 }">
					<div class="layui-form-item">
						<label for="operations" class="layui-form-label"> <span
							class="x-red">*</span>审核
						</label>
						<div class="layui-input-inline">
							<select name="operations" lay-verify="required">
								<option value>审核</option>
								<option value="1">通过</option>
								<option value="0">拒绝</option>


							</select>
						</div>
					</div>
				</c:when>
			</c:choose>





			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label> <input
					type="submit" value=" 提交" class="layui-btn" lay-filter="add"
					lay-submit="" />

			</div>
		</form>
	</div>
	<script>
		layui.use([ 'form', 'layer' ], function() {
			$ = layui.jquery;
			var form = layui.form, layer = layui.layer;

			//自定义验证规则
			form.verify({
				nikename : function(value) {
					if (value.length < 5) {
						return '昵称至少得5个字符啊';
					}
				},
				pass : [ /(.+){6,12}$/, '密码必须6到12位' ],
				repass : function(value) {
					if ($('#L_pass').val() != $('#L_repass').val()) {
						return '两次密码不一致';
					}
				}
			});

			//监听提交
			form.on('submit(add)', function(data) {

				console.log(data);
				//发异步，把数据提交给php
				layer.alert("增加成功", {
					icon : 6
				}, function() {
					document.getElementById('deptForm').submit();
					// 获得frame索引
					var index = parent.layer.getFrameIndex(window.name);
					//关闭当前frame
					parent.layer.close(index);

				});
				return false;
			});

		});
	</script>

</body>

</html>