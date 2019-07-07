/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : personnel

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-05-15 17:06:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for branchmessage
-- ----------------------------
DROP TABLE IF EXISTS `branchmessage`;
CREATE TABLE `branchmessage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch_num` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of branchmessage
-- ----------------------------
INSERT INTO `branchmessage` VALUES ('1', '21', '212', '小可爱', '17734671027', '110@sion', '不告诉你', '5454545454545', null);
INSERT INTO `branchmessage` VALUES ('2', '002', '花之语', '徐拥', '17734671022', '@sin', '南京市', '1', null);
INSERT INTO `branchmessage` VALUES ('3', '1212', '21212', '1212121', '21212121', '2121212', '212121212', '21', null);

-- ----------------------------
-- Table structure for customer_info
-- ----------------------------
DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE `customer_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '客户唯一标识',
  `gmt_modified` date DEFAULT NULL COMMENT '修改时间',
  `gmt_create` date DEFAULT NULL COMMENT '创建时间',
  `name` varchar(20) DEFAULT NULL COMMENT '客户姓名',
  `age` int(20) DEFAULT NULL COMMENT '客户年龄',
  `sex` varchar(20) DEFAULT NULL COMMENT '客户性别',
  `birth_day` varchar(20) DEFAULT NULL COMMENT '客户生日',
  `phone` varchar(20) DEFAULT NULL COMMENT '客户电话1',
  `second_phone` varchar(20) DEFAULT NULL COMMENT '客户电话2',
  `email` varchar(50) DEFAULT NULL COMMENT '客户邮箱',
  `add_upconsume_money` decimal(20,2) DEFAULT NULL COMMENT '累计消费金额 具体到小数点后2位',
  `register_sub_branch_uuid` varchar(50) DEFAULT NULL COMMENT '注册分店UUID',
  `employee_uuid` varchar(20) DEFAULT NULL COMMENT ' 员工标识（用于标识该用户被哪个员工介绍注册）',
  `job` varchar(255) DEFAULT NULL COMMENT '客户职业',
  `province` varchar(255) DEFAULT NULL COMMENT '客户省份',
  `city` varchar(255) DEFAULT NULL COMMENT '客户城市',
  `address` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `isPassed` int(2) DEFAULT '1' COMMENT '是否审核，1为未审核，2为审核',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `employee_uuid` (`employee_uuid`) USING BTREE,
  KEY `register_sub_branch_uuid` (`register_sub_branch_uuid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of customer_info
-- ----------------------------
INSERT INTO `customer_info` VALUES ('2', '2019-03-28', '2019-03-26', '李善元', '33', '1', '1986-06-02', '18763598723', null, 'lishanyuan@126.com', null, null, null, '经理', null, null, '绿地商务城', null);
INSERT INTO `customer_info` VALUES ('3', '2019-03-29', '2019-03-28', '王波浩', '21', '0', '1998-10-02', '13876998300', null, '749837699@qq.com', null, null, null, '学生', null, null, '徐州矿业大学', null);
INSERT INTO `customer_info` VALUES ('4', '2019-04-27', '2019-04-27', '张衡', '33', '0', '1986-04-12', '13815301207', '13876490876', 'zhangheng@163.com', '983.00', '1001', '10019601', '无业', '江苏', '徐州', '泰山回京小区', '0');
INSERT INTO `customer_info` VALUES ('5', '2019-05-04', '2019-05-04', '方改 ', '23', '1', '1996-05-10', '13815301207', '', 'xz_98264733@126.com', '499.00', '1001', '10019602', '学生', '江苏', '徐州', '徐州工程学院', '0');
INSERT INTO `customer_info` VALUES ('6', null, null, '蛋蛋', '18', '1', '54878', '17547845454', null, '219523235', null, null, null, '的', null, null, '北京北京市陕西省', null);

-- ----------------------------
-- Table structure for employee_info
-- ----------------------------
DROP TABLE IF EXISTS `employee_info`;
CREATE TABLE `employee_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `gmtCreate` datetime DEFAULT NULL COMMENT '创建时间',
  `gmtModified` datetime DEFAULT NULL COMMENT '修改时间',
  `employee_uuid` varchar(20) NOT NULL COMMENT '员工编号',
  `name` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `age` int(20) DEFAULT NULL COMMENT '员工年龄',
  `sex` varchar(20) DEFAULT NULL COMMENT '员工性别',
  `birthDay` varchar(20) DEFAULT NULL COMMENT '员工生日',
  `phone` varchar(20) DEFAULT NULL COMMENT '员工电话',
  `email` varchar(50) DEFAULT NULL COMMENT '员工邮箱',
  `subBranchUuid` varchar(50) DEFAULT NULL COMMENT '分店UUID',
  `deptUuid` varchar(50) DEFAULT '' COMMENT '部门UUID',
  `identityNumber` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `underMoney` decimal(20,0) DEFAULT NULL COMMENT '员工底薪',
  `passWord` varchar(16) DEFAULT '123456' COMMENT '登录密码',
  `isUsed` int(11) NOT NULL DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of employee_info
-- ----------------------------
INSERT INTO `employee_info` VALUES ('1', '2017-01-29 00:00:00', '2017-01-29 00:00:00', '10019601', '王栋', '38', '男', '1981-06-23', '13785983475', 'hmyj_wangdong@126.com', '1001', 'staff', '320304198106239876', '3000', '10019601', '0');
INSERT INTO `employee_info` VALUES ('2', '2018-02-28 00:00:00', '2018-02-26 00:00:00', '10019602', '张宏彩', '34', '女', '1985-02-18', '17876534909', 'hmyj_zhanghongcai@126.com', '1001', 'staff', '322311198502187685', '3000', '10019602', '1');
INSERT INTO `employee_info` VALUES ('3', '2018-09-03 00:00:00', '2018-09-01 00:00:00', '10019611', '谭茂荣', '43', '男', '1977-12-22', '13876887623', 'hmyj_tanrongmao@126.com', '1001', 'manager', '320303197712229876', '5000', '10019611', '1');
INSERT INTO `employee_info` VALUES ('4', '2018-01-02 00:00:00', '2018-03-02 00:00:00', '10019621', '张建国', '56', '男', '1983-2-23', '13897723844', 'hmyj_zhangjianguo@126.com', '1001', 'boss', '320311198302239874', '10000', '10019621', '1');
INSERT INTO `employee_info` VALUES ('5', '2019-04-27 08:11:41', '2019-04-27 08:12:12', '10019603', '李琳', '27', '女', '1992-01-20', '13876401298', 'hmyj_lilin@126.com', '1001', 'staff', '320311199201207845', '3000', '10019603', '2');
INSERT INTO `employee_info` VALUES ('6', '2019-01-01 00:00:00', '2019-01-01 00:00:00', 'admin', '谭景祥', '38', '男', '1981-01-23', '13766873342', 'hmyj_tanjingxiang@126.com', '1001', 'manager', '320302198101238745', '5000', 'admin', '2');
INSERT INTO `employee_info` VALUES ('18', null, null, '122121', '徐拥', null, null, null, null, null, null, '', null, null, '123456', '1');

-- ----------------------------
-- Table structure for eyeglasses_info
-- ----------------------------
DROP TABLE IF EXISTS `eyeglasses_info`;
CREATE TABLE `eyeglasses_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '镜片唯一标识',
  `gmt Modified` datetime DEFAULT NULL COMMENT '修改时间',
  `gmtCreate` datetime DEFAULT NULL COMMENT '创建时间',
  `eyeNumber` varchar(20) DEFAULT NULL COMMENT '镜片编号',
  `eyeName` varchar(20) DEFAULT NULL COMMENT '镜片名称',
  `type` varchar(20) DEFAULT NULL COMMENT '镜片类型',
  `number` int(11) DEFAULT NULL COMMENT '镜片数量',
  `price` decimal(19,2) DEFAULT NULL COMMENT '镜片售价',
  `salesperson` varchar(20) DEFAULT NULL COMMENT '经手人',
  `isPassed` int(11) DEFAULT '1' COMMENT '是否审核',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of eyeglasses_info
-- ----------------------------
INSERT INTO `eyeglasses_info` VALUES ('1', '2019-01-01 00:00:00', '2019-01-01 00:00:00', '960228', '普斯莱', '镜片', '50', '270.00', '李琳', '2');
INSERT INTO `eyeglasses_info` VALUES ('2', '2018-01-01 00:00:00', '2018-01-01 00:00:00', '570423', '海伦凯勒', '太阳镜', '5', '780.00', '李琳', '2');
INSERT INTO `eyeglasses_info` VALUES ('3', '2018-01-01 00:00:00', '2018-01-01 00:00:00', '280618', '暴龙', '太阳镜', '4', '570.00', '李琳', '2');
INSERT INTO `eyeglasses_info` VALUES ('4', '2018-01-01 00:00:00', '2018-01-01 00:00:00', '960229', '宝岛', '框架', '10', '439.00', '李琳', '2');
INSERT INTO `eyeglasses_info` VALUES ('5', '2018-01-01 00:00:00', '2018-01-01 00:00:00', '280618', '普斯莱', '老花镜', '8', '210.00', '李琳', '2');
INSERT INTO `eyeglasses_info` VALUES ('6', '2018-01-01 00:00:00', '2018-01-01 00:00:00', '280619', '海伦凯勒', '框架', '5', '378.00', '李琳', '2');

-- ----------------------------
-- Table structure for glassesmessage
-- ----------------------------
DROP TABLE IF EXISTS `glassesmessage`;
CREATE TABLE `glassesmessage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `glasses_num` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `number` int(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `checks` int(10) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL COMMENT '眼镜信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of glassesmessage
-- ----------------------------
INSERT INTO `glassesmessage` VALUES ('1', null, '名人', '-20420', '21', '100015', null, '1');
INSERT INTO `glassesmessage` VALUES ('2', null, '323232', '11120', '212', '222222', null, '0');
INSERT INTO `glassesmessage` VALUES ('4', null, '323232', '323230', null, '10019601', null, '1');
INSERT INTO `glassesmessage` VALUES ('5', 'ewew', 'weew', '2323', '323', '10019601', null, '1');
INSERT INTO `glassesmessage` VALUES ('6', '323232', '332323', '3232', '2', '10019601', null, '1');

-- ----------------------------
-- Table structure for indentmessage
-- ----------------------------
DROP TABLE IF EXISTS `indentmessage`;
CREATE TABLE `indentmessage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(255) DEFAULT NULL,
  `glasses_num` varchar(255) DEFAULT NULL,
  `lens_num` varchar(255) DEFAULT NULL,
  `optometry_num` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `Lens_number` int(255) DEFAULT NULL,
  `money` int(255) DEFAULT NULL,
  `pay` int(255) DEFAULT NULL,
  `balance` int(255) DEFAULT NULL,
  `yuan` varchar(255) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `qdate` datetime DEFAULT NULL,
  `check` int(255) DEFAULT NULL,
  `operations` varchar(255) DEFAULT '',
  `number_of_glasses` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indentmessage
-- ----------------------------
INSERT INTO `indentmessage` VALUES ('1', '100024', '100011', '1002525', '100002', '1122212', '12122122', '54', '5454', '454', '54', '员工编号', null, null, '1', '1', '5');
INSERT INTO `indentmessage` VALUES ('2', 'dsds', 'dsds', '1dsds', 'dssds', '2121212', 'dsdsds', '5454', '445', '545', '4554', 'dsdsds', null, null, null, '0', '8');
INSERT INTO `indentmessage` VALUES ('12', '211221', '眼镜', '232323', '2121', '21212', '2121', '11', '481193', '212', '480981', '10019601', null, null, null, '1', '21221');
INSERT INTO `indentmessage` VALUES ('13', '122121', '323232', '12121221', '212121', 'sd', '12121212', '12', '4497076', '21', '4497055', '10019601', null, null, null, null, '21212');

-- ----------------------------
-- Table structure for lensmessage
-- ----------------------------
DROP TABLE IF EXISTS `lensmessage`;
CREATE TABLE `lensmessage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lens_num` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `number` int(200) DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `checks` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='lensMessage';

-- ----------------------------
-- Records of lensmessage
-- ----------------------------
INSERT INTO `lensmessage` VALUES ('7', null, '小可爱', '12', '121200', '11', '10019601', null, null);
INSERT INTO `lensmessage` VALUES ('8', '1', '1', '1', '1', '1', '10019601', null, null);

-- ----------------------------
-- Table structure for optometrymessage_info
-- ----------------------------
DROP TABLE IF EXISTS `optometrymessage_info`;
CREATE TABLE `optometrymessage_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ygNum` varchar(20) DEFAULT NULL,
  `sMirron` varchar(255) DEFAULT NULL,
  `ast` varchar(255) DEFAULT NULL,
  `aPosition` varchar(255) DEFAULT NULL,
  `pDistance` varchar(2555) DEFAULT NULL,
  `optometrist` varchar(20) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL COMMENT '验光信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optometrymessage_info
-- ----------------------------
INSERT INTO `optometrymessage_info` VALUES ('1', '100002', '球经', '13', '32', '32', '100021', '1');
INSERT INTO `optometrymessage_info` VALUES ('2', '1212212', '212121', '2121', '2121', '2121', '1', null);
INSERT INTO `optometrymessage_info` VALUES ('3', '1212212', 'P-1.23-D-1.23', 'P-1.23-D-1.23', 'P-1.23-D-1.23', '23', '1', null);
