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
			action="${ctx}/huiyuan/add">
			<input type="hidden" name="id" id="id" value="${job.id }">
			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> <span
					class="x-red">*</span>姓名
				</label>
				<div class="layui-input-inline">
					<input type="text" id="name" name="name" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.name }">
				</div>

			</div>
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> <span
					class="x-red">*</span>手机号
				</label>
				<div class="layui-input-inline">
					<input type="text" id="phone" name="phone" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.phone }">
				</div>

			</div>
			<div class="layui-form-item">
				<label for="job" class="layui-form-label"> <span
					class="x-red">*</span>职业
				</label>
				<div class="layui-input-inline">
					<input type="text" id="job" name="job" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.job }">
				</div>

			</div>
			<div class="layui-form-item">
				<label for="age" class="layui-form-label"> <span
					class="x-red">*</span>年龄
				</label>
				<div class="layui-input-inline">
					<input type="text" id="age" name="age" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.age }">
				</div>

			</div>
			<div class="layui-form-item">
				<label for="birthDay" class="layui-form-label"> <span
					class="x-red">*</span>生日
				</label>
				<div class="layui-input-inline">
					<input type="text" id="birthDay" name="birthDay" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.birthDay  }">
				</div>

			</div>
			<div class="layui-form-item">
				<label for="sex" class="layui-form-label"> <span
					class="x-red">*</span>性别
				</label>
				<div class="layui-input-inline">
					<input type="text" id="sex" name="sex" placeholder="男性请输入1，女性请输入2"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${job.sex }">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="email" class="layui-form-label"> <span
					class="x-red">*</span>邮箱
				</label>
				<div class="layui-input-inline">
					<input type="text" id="email" name="email" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.email }">
				</div>
			</div>

			<c:choose>
				<c:when test="${sessionScope.tip  != 0 }">
					<div class="layui-form-item">
						<label for="ispassed" class="layui-form-label"> <span
							class="x-red">*</span>审核
						</label>
						<div class="layui-input-inline">
							<select name="ispassed" lay-verify="required">
								<option value>审核</option>
								<option value="1">通过</option>
								<option value="0">拒绝</option>


							</select>

						</div>
					</div>
				</c:when>
			</c:choose>
			<div class="layui-form-item">
				<label for="address" class="layui-form-label"> <span
					class="x-red">*</span>详细地址
				</label>
				<div class="layui-input-inline">
					<input type="text" id="address" name="address" required=""
						lay-verify="required" autocomplete="off" class="layui-input"
						value="${job.address }">
				</div>
			</div>
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
	<script>
		//定义数组，存储省份信息
		var province = [ "北京", "上海", "天津", "重庆", "浙江", "江苏", "广东", "福建", "湖南",
				"湖北", "辽宁", "吉林", "黑龙江", "河北", "河南", "山东", "陕西", "甘肃", "新疆",
				"青海", "山西", "四川", "贵州", "安徽", "江西", "云南", "内蒙古", "西藏", "广西",
				"宁夏", "海南", "香港", "澳门", "台湾" ];

		//定义数组,存储城市信息
		var beijing = [ "东城区", "西城区", "海淀区", "朝阳区", "丰台区", "石景山区", "通州区",
				"顺义区", "房山区", "大兴区", "昌平区", "怀柔区", "平谷区", "门头沟区", "延庆县", "密云县" ];
		var shanghai = [ "浦东新区", "徐汇区", "长宁区", "普陀区", "闸北区", "虹口区", "杨浦区",
				"黄浦区", "卢湾区", "静安区", "宝山区", "闵行区", "嘉定区", "金山区", "松江区", "青浦区",
				"南汇区", "奉贤区", "崇明县" ];
		var tianjing = [ "河东", "南开", "河西", "河北", "和平", "红桥", "东丽", "津南", "西青",
				"北辰", "塘沽", "汉沽", "大港", "蓟县", "宝坻", "宁河", "静海", "武清" ];
		var chongqing = [ "渝中区", "大渡口区", "江北区", "沙坪坝区", "九龙坡区", "南岸区", "北碚区",
				"万盛区", "双桥区", "渝北区", "巴南区", "万州区", "涪陵区", "黔江区", "长寿区", "江津区",
				"合川区", "永川区", "南川区" ];
		var jiangsu = [ "南京", "无锡", "常州", "徐州", "苏州", "南通", "连云港", "淮安", "扬州",
				"盐城", "镇江", "泰州", "宿迁" ];
		var zhejiang = [ "杭州", "宁波", "温州", "嘉兴", "湖州", "绍兴", "金华", "衢州", "舟山",
				"台州", "利水" ];
		var guangdong = [ "广州", "韶关", "深圳", "珠海", "汕头", "佛山", "江门", "湛江", "茂名",
				"肇庆", "惠州", "梅州", "汕尾", "河源", "阳江", "清远", "东莞", "中山", "潮州",
				"揭阳" ];
		var fujiang = [ "福州", "厦门", "莆田", "三明", "泉州", "漳州", "南平", "龙岩", "宁德" ];
		var hunan = [ "长沙", "株洲", "湘潭", "衡阳", "邵阳", "岳阳", "常德", "张家界", "益阳",
				"郴州", "永州", "怀化", "娄底", "湘西土家苗族自治区" ];
		var hubei = [ "武汉", "襄阳", "黄石", "十堰", "宜昌", "鄂州", "荆门", "孝感", "荆州",
				"黄冈", "咸宁", "随州", "恩施土家族苗族自治州" ];
		var liaoning = [ "沈阳", "大连", "鞍山", "抚顺", "本溪", "丹东", "锦州", "营口", "阜新",
				"辽阳", "盘锦", "铁岭", "朝阳", "葫芦岛" ];
		var jilin = [ "长春", "吉林", "四平", "辽源", "通化", "白山", "松原", "白城",
				"延边朝鲜族自治区" ];
		var heilongjiang = [ "哈尔滨", "齐齐哈尔", "鸡西", "牡丹江", "佳木斯", "大庆", "伊春",
				"黑河", "大兴安岭" ];
		var hebei = [ "石家庄", "保定", "唐山", "邯郸", "承德", "廊坊", "衡水", "秦皇岛", "张家口" ];
		var henan = [ "郑州", "洛阳", "商丘", "安阳", "南阳", "开封", "平顶山", "焦作", "新乡",
				"鹤壁", "许昌", "漯河", "三门峡", "信阳", "周口", "驻马店", "济源" ];
		var shandong = [ "济南", "青岛", "菏泽", "淄博", "枣庄", "东营", "烟台", "潍坊", "济宁",
				"泰安", "威海", "日照", "滨州", "德州", "聊城", "临沂" ];
		var shangxi = [ "西安", "宝鸡", "咸阳", "渭南", "铜川", "延安", "榆林", "汉中", "安康",
				"商洛" ];
		var gansu = [ "兰州", "嘉峪关", "金昌", "金川", "白银", "天水", "武威", "张掖", "酒泉",
				"平凉", "庆阳", "定西", "陇南", "临夏", "合作" ];
		var qinghai = [ "西宁", "海东地区", "海北藏族自治州", "黄南藏族自治州", "海南藏族自治州",
				"果洛藏族自治州", "玉树藏族自治州", "海西蒙古族藏族自治州" ];
		var xinjiang = [ "乌鲁木齐", "奎屯", "石河子", "昌吉", "吐鲁番", "库尔勒", "阿克苏", "喀什",
				"伊宁", "克拉玛依", "塔城", "哈密", "和田", "阿勒泰", "阿图什", "博乐" ];
		var shanxi = [ "太原", "大同", "阳泉", "长治", "晋城", "朔州", "晋中", "运城", "忻州",
				"临汾", "吕梁" ];
		var sichuan = [ "成都", "自贡", "攀枝花", "泸州", "德阳", "绵阳", "广元", "遂宁", "内江",
				"乐山", "南充", "眉山", "宜宾", "广安", "达州", "雅安", "巴中", "资阳",
				"阿坝藏族羌族自治州", "甘孜藏族自治州", "凉山彝族自治州" ];
		var guizhou = [ "贵阳", "六盘水", "遵义", "安顺", "黔南布依族苗族自治州", "黔西南布依族苗族自治州",
				"黔东南苗族侗族自治州", "铜仁", "毕节" ];
		var anhui = [ "合肥", "芜湖", "安庆", "马鞍山", "阜阳", "六安", "滁州", "宿州", "蚌埠",
				"巢湖", "淮南", "宣城", "亳州", "淮北", "铜陵", "黄山", "池州" ];
		var jiangxi = [ "南昌", "九江", "景德镇", "萍乡", "新余", "鹰潭", "赣州", "宜春", "上饶",
				"吉安", "抚州" ];
		var yunnan = [ "昆明", "曲靖", "玉溪", "保山", "昭通", "丽江", "普洱", "临沧",
				"楚雄彝族自治州", "大理白族自治州", "红河哈尼族彝族自治州", "文山壮族苗族自治州", "西双版纳傣族自治州",
				"德宏傣族景颇族自治州", "怒江傈僳族自治州", "迪庆藏族自治州" ];
		var neimenggu = [ "呼和浩特", "包头", "乌海", "赤峰", "通辽", "鄂尔多斯", "呼伦贝尔",
				"巴彦淖尔", "乌兰察布" ];
		var guangxi = [ "南宁", "柳州", "桂林", "梧州", "北海", "防城港", "钦州", "贵港", "玉林",
				"百色", "贺州", "河池", "崇左" ];
		var xizang = [ "拉萨", "昌都地区", "林芝地区", "山南地区", "日喀则地区", "那曲地区", "阿里地区" ];
		var ningxia = [ "银川", "石嘴山", "吴忠", "固原", "中卫" ];
		var hainan = [ "海口", "三亚" ];
		var xianggang = [ "中西区", "湾仔区", "东区", "南区", "九龙城区", "油尖旺区", "观塘区",
				"黄大仙区", "深水埗区", "北区", "大埔区", "沙田区", "西贡区", "元朗区", "屯门区", "荃湾区",
				"葵青区", "离岛区" ];
		var taiwan = [ "台北", "高雄", "基隆", "台中", "台南", "新竹", "嘉义" ];
		var aomeng = [ "澳门半岛", "氹仔岛", "路环岛" ];

		//页面加载方法
		$(function() {
			layui.use('form', function() {
				form = layui.form;

				//各种基于事件的操作，下面会有进一步介绍
				//设置省份数据
				setProvince();
				//监听下拉事件
				form.on('select', function(data) {
					setCity(data.value);

				});
			});

		});

		//设置省份数据
		function setProvince() {
			//给省份下拉列表赋值

			var $sel = $("#selProvince");

			//获取对应省份城市
			for (var i = 0, len = province.length; i < len; i++) {
				modelVal = province[i];
				var option = $("<option value='" + province[i] + "'>"
						+ province[i] + "</option>");

				//添加到 select 元素中
				$sel.append(option);
			}
			form.render('select');
			setCity($($sel.get(0)).val());

		}

		//根据选中的省份获取对应的城市
		function setCity(provinec) {
			var $city = $("#selCity");
			var proCity, option, modelVal;

			//通过省份名称，获取省份对应城市的数组名
			switch (provinec) {
			case "北京":
				proCity = beijing;
				break;
			case "上海":
				proCity = shanghai;
				break;
			case "天津":
				proCity = tianjing;
				break;
			case "重庆":
				proCity = chongqing;
				break;
			case "浙江":
				proCity = zhejiang;
				break;
			case "江苏":
				proCity = jiangsu;
				break;
			case "广东":
				proCity = guangdong;
				break;
			case "福建":
				proCity = fujiang;
				break;
			case "湖南":
				proCity = hunan;
				break;
			case "湖北":
				proCity = hubei;
				break;
			case "辽宁":
				proCity = liaoning;
				break;
			case "吉林":
				proCity = jilin;
				break;
			case "黑龙江":
				proCity = heilongjiang;
				break;
			case "河北":
				proCity = hebei;
				break;
			case "河南":
				proCity = henan;
				break;
			case "山东":
				proCity = shandong;
				break;
			case "陕西":
				proCity = shangxi;
				break;
			case "甘肃":
				proCity = gansu;
				break;
			case "新疆":
				proCity = xinjiang;
				break;
			case "青海":
				proCity = qinghai;
				break;
			case "山西":
				proCity = shanxi;
				break;
			case "四川":
				proCity = sichuan;
				break;
			case "贵州":
				proCity = guizhou;
				break;
			case "安徽":
				proCity = anhui;
				break;
			case "江西":
				proCity = jiangxi;
				break;
			case "云南":
				proCity = yunnan;
				break;
			case "内蒙古":
				proCity = neimenggu;
				break;
			case "西藏":
				proCity = xizang;
				break;
			case "广西":
				proCity = guangxi;
				break;
			case "宁夏":
				proCity = ningxia;
				break;
			case "海南":
				proCity = hainan;
				break;
			case "香港":
				proCity = xianggang;
				break;
			case "澳门":
				proCity = aomeng;
				break;
			case "台湾":
				proCity = taiwan;
				break;
			}

			//先清空之前绑定的值
			$city.empty();

			//设置对应省份的城市
			for (var i = 0, len = proCity.length; i < len; i++) {
				modelVal = proCity[i];
				option = "<option value='" + modelVal + "'>" + modelVal
						+ "</option>";

				//添加
				$city.append(option);
			}
			form.render('select');

		}
	</script>

</body>

</html>