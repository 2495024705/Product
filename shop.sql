/*
Navicat MySQL Data Transfer

Source Server         : qiqi
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2018-12-30 18:08:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('2', 'admin', 'admin');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('11', '动漫周边');
INSERT INTO `category` VALUES ('12', '户外健身');
INSERT INTO `category` VALUES ('13', '零食');
INSERT INTO `category` VALUES ('14', '女装');
INSERT INTO `category` VALUES ('15', '男装');

-- ----------------------------
-- Table structure for categorysecond
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF21DB1FD15` (`cid`),
  CONSTRAINT `FK936FCAF21DB1FD15` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('41', '手办', '11');
INSERT INTO `categorysecond` VALUES ('42', '高达模型', '11');
INSERT INTO `categorysecond` VALUES ('43', '大圣归来', '11');
INSERT INTO `categorysecond` VALUES ('44', '海贼王', '11');
INSERT INTO `categorysecond` VALUES ('45', '圣斗士', '11');
INSERT INTO `categorysecond` VALUES ('46', '火影忍者', '11');
INSERT INTO `categorysecond` VALUES ('47', '银魂', '11');
INSERT INTO `categorysecond` VALUES ('48', '复仇者联盟', '11');
INSERT INTO `categorysecond` VALUES ('49', '冲锋衣', '12');
INSERT INTO `categorysecond` VALUES ('50', '登山鞋', '12');
INSERT INTO `categorysecond` VALUES ('51', '鱼竿', '12');
INSERT INTO `categorysecond` VALUES ('52', '鱼线', '12');
INSERT INTO `categorysecond` VALUES ('53', '登山包', '12');
INSERT INTO `categorysecond` VALUES ('54', '帐篷', '12');
INSERT INTO `categorysecond` VALUES ('55', '手电筒', '12');
INSERT INTO `categorysecond` VALUES ('56', '山地车', '12');
INSERT INTO `categorysecond` VALUES ('57', '山核桃', '13');
INSERT INTO `categorysecond` VALUES ('58', '星空棒棒糖', '13');
INSERT INTO `categorysecond` VALUES ('59', '碧根果', '13');
INSERT INTO `categorysecond` VALUES ('60', '巴坦木', '13');
INSERT INTO `categorysecond` VALUES ('61', '夏威夷果', '13');
INSERT INTO `categorysecond` VALUES ('62', '鸭肉', '13');
INSERT INTO `categorysecond` VALUES ('63', '话梅糖', '13');
INSERT INTO `categorysecond` VALUES ('64', '泡泡糖', '13');
INSERT INTO `categorysecond` VALUES ('65', '冬新品', '14');
INSERT INTO `categorysecond` VALUES ('66', '爱品牌', '14');
INSERT INTO `categorysecond` VALUES ('67', '卫衣', '14');
INSERT INTO `categorysecond` VALUES ('68', '针织衫', '14');
INSERT INTO `categorysecond` VALUES ('69', '衬衫', '14');
INSERT INTO `categorysecond` VALUES ('70', '外套', '14');
INSERT INTO `categorysecond` VALUES ('71', '风衣', '14');
INSERT INTO `categorysecond` VALUES ('72', '阔腿裤', '14');
INSERT INTO `categorysecond` VALUES ('73', '新品', '15');
INSERT INTO `categorysecond` VALUES ('74', '品质优选', '15');
INSERT INTO `categorysecond` VALUES ('75', '皮衣', '15');
INSERT INTO `categorysecond` VALUES ('76', '衬衫', '15');
INSERT INTO `categorysecond` VALUES ('77', '夹克', '15');
INSERT INTO `categorysecond` VALUES ('78', '休闲裤', '15');
INSERT INTO `categorysecond` VALUES ('79', '牛仔裤', '15');
INSERT INTO `categorysecond` VALUES ('80', '运动裤', '15');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FKE8B2AB6166C01961` (`oid`),
  KEY `FKE8B2AB6171DB7AE4` (`pid`),
  KEY `FKE8B2AB6140ACF87A` (`oid`),
  CONSTRAINT `FKE8B2AB6140ACF87A` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`),
  CONSTRAINT `FKE8B2AB6171DB7AE4` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5AA3D9C7` (`uid`),
  CONSTRAINT `FKC3DF62E5AA3D9C7` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `FKED8DCCEFB9B74E02` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('80', '娃娃', '1999', '999', 'products/u=2242235915,1336676724&fm=26&gp=0.jpg', '', '1', '2018-12-30 17:50:23', '41');
INSERT INTO `product` VALUES ('81', '可爱', '1999', '999', 'products/u=2242235915,1336676724&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:23:16', '41');
INSERT INTO `product` VALUES ('82', '女神', '1999', '999', 'products/u=1437003713,1401699300&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:23:35', '41');
INSERT INTO `product` VALUES ('83', '女生', '1999', '999', 'products/u=1459898290,3032494647&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:23:52', '41');
INSERT INTO `product` VALUES ('84', '肌肉', '1999', '999', 'products/u=3723013930,1531488100&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:48:52', '41');
INSERT INTO `product` VALUES ('85', '橙色', '7000', '6000', 'products/u=3035992373,3386977871&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:47:47', '42');
INSERT INTO `product` VALUES ('86', '绿色', '8000', '7000', 'products/u=2124767427,3843313259&fm=26&gp=0.jpg', '', '0', '2018-12-29 09:48:37', '42');
INSERT INTO `product` VALUES ('87', '黑色', '1000', '9699', 'products/u=1234527537,458210582&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:48:27', '42');
INSERT INTO `product` VALUES ('88', '蓝色', '2000', '1900', 'products/u=1083936201,886472457&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:48:11', '42');
INSERT INTO `product` VALUES ('89', '灰色', '899', '799', 'products/u=1461692759,3642540068&fm=26&gp=0.jpg', '', '0', '2018-12-29 09:47:24', '42');
INSERT INTO `product` VALUES ('91', '2', '599', '499', 'products/u=1337775567,2673998147&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:42:06', '43');
INSERT INTO `product` VALUES ('92', '3', '799', '699', 'products/u=3531144337,3080132456&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:42:30', '43');
INSERT INTO `product` VALUES ('93', '4', '899', '799', 'products/u=3828878771,2392642199&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:42:46', '43');
INSERT INTO `product` VALUES ('94', '5', '899', '850', 'products/u=4173468115,959382224&fm=26&gp=0.jpg', '', '1', '2018-12-29 09:43:07', '43');
INSERT INTO `product` VALUES ('95', '蝙蝠衫', '600', '499', 'products/TB2CswqhSJjpuFjy0FdXXXmoFXa_!!0-ifashion.jpg_300x1000.jpg', '', '1', '2018-12-29 09:45:11', '65');
INSERT INTO `product` VALUES ('96', '牛仔裤', '300', '239', 'products/TB2EVLUjbBmpuFjSZFAXXaQ0pXa_!!0-ifashion.jpg_300x1000.jpg', '', '1', '2018-12-29 09:45:34', '65');
INSERT INTO `product` VALUES ('97', '卫衣', '499', '399', 'products/TB2pL_ChSXlpuFjy0FeXXcJbFXa_!!0-youjia.jpg_300x1000.jpg', '', '1', '2018-12-29 09:46:06', '65');
INSERT INTO `product` VALUES ('98', '喇叭裤', '289', '199', 'products/TB2ZL2WhMFkpuFjSspnXXb4qFXa_!!0-youjia.jpg_300x1000.jpg', '', '1', '2018-12-29 09:46:44', '65');
INSERT INTO `product` VALUES ('99', '雪纺裙', '699', '599', 'products/TB24sbojbBnpuFjSZFGXXX51pXa_!!0-ifashion.jpg_300x1000.jpg', '', '1', '2018-12-29 09:47:11', '65');
INSERT INTO `product` VALUES ('100', '阔腿裤1', '200', '189', 'products/O1CN01ckerfx28cymhUxBkx_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 09:57:57', '72');
INSERT INTO `product` VALUES ('101', '阔腿裤2', '199', '179', 'products/O1CN01Eyt7eN1NNbXuG1rGb_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 09:58:13', '72');
INSERT INTO `product` VALUES ('102', '阔腿裤3', '199', '179', 'products/O1CN01f6yFoZ1lp88cvxWab_!!0-saturn_solar.jpg_270x270.jpg', '', '1', '2018-12-29 09:58:33', '72');
INSERT INTO `product` VALUES ('103', '阔腿裤4', '239', '219', 'products/O1CN011gPsBh9mAasFeAY_!!2934924135.jpg_580x580Q90.jpg', '', '1', '2018-12-29 09:58:56', '72');
INSERT INTO `product` VALUES ('104', '阔腿裤5', '249', '229', 'products/TB1bLOpmOrpK1RjSZFhXXXSdXXa_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 09:59:16', '72');
INSERT INTO `product` VALUES ('105', '风衣1', '499', '479', 'products/O1CN01kgF8vg29WOiAY255g_!!0-saturn_solar.jpg_270x270.jpg', '', '1', '2018-12-29 09:59:43', '71');
INSERT INTO `product` VALUES ('106', '风衣2', '599', '579', 'products/O1CN011e8G3S1EJBBksrwez-356060330.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:00:00', '71');
INSERT INTO `product` VALUES ('107', '风衣3', '789', '769', 'products/O1CN011rTxVWZs3Y5ow3q_!!272205633.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:00:21', '71');
INSERT INTO `product` VALUES ('108', '风衣4', '689', '659', 'products/O1CN011Z5XIsVhQ2tyPzo_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:00:42', '71');
INSERT INTO `product` VALUES ('109', '风衣5', '569', '519', 'products/TB254_xaGi5V1BjSspeXXcWPFXa_!!0-saturn_solar.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:01:06', '71');
INSERT INTO `product` VALUES ('110', '衬衫1', '369', '329', 'products/O1CN01VhDlqF1gwqix7pCRv_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:01:42', '69');
INSERT INTO `product` VALUES ('111', '衬衫2', '438', '418', 'products/O1CN01we2zhu24SfPkUvPeT_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:02:04', '69');
INSERT INTO `product` VALUES ('112', '衬衫3', '499', '439', 'products/O1CN011U2GObWUQvQyBGU_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:02:57', '69');
INSERT INTO `product` VALUES ('113', '衬衫4', '379', '329', 'products/TB1F.2sA7yWBuNjy0FpXXassXXa_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 10:03:27', '69');
INSERT INTO `product` VALUES ('114', '衬衫5', '278', '259', 'products/TB2KfSFIeuSBuNjy1XcXXcYjFXa_!!2264201946-0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 10:03:50', '69');
INSERT INTO `product` VALUES ('115', '针织衫1', '459', '439', 'products/O1CN01B60rse1LUMALiEPsU_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:05:00', '68');
INSERT INTO `product` VALUES ('116', '针织衫2', '237', '199', 'products/O1CN01H96Pyz1ewH0VkS71u_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 10:07:02', '68');
INSERT INTO `product` VALUES ('117', '针织衫3', '239', '219', 'products/O1CN01rnjrMj1bYy0Gv861V_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 10:07:23', '68');
INSERT INTO `product` VALUES ('118', '针织衫4', '248', '239', 'products/O1CN011QFJD79AvZs5W7X_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 10:07:52', '68');
INSERT INTO `product` VALUES ('119', '针织衫5', '499', '429', 'products/O1CN011uGAQDSWxZkgj4s_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 10:08:18', '68');
INSERT INTO `product` VALUES ('120', '冲锋衣1', '689', '589', 'products/1.jpg', '', '1', '2018-12-29 10:09:13', '49');
INSERT INTO `product` VALUES ('121', '冲锋衣2', '499', '479', 'products/2.jpg', '', '1', '2018-12-29 10:09:33', '49');
INSERT INTO `product` VALUES ('122', '冲锋衣3', '689', '649', 'products/3.jpg', '', '0', '2018-12-29 10:09:54', '49');
INSERT INTO `product` VALUES ('123', '冲锋衣4', '589', '549', 'products/4.jpg', '', '0', '2018-12-29 10:10:20', '49');
INSERT INTO `product` VALUES ('124', '冲锋衣5', '580', '539', 'products/1.jpg', '', '1', '2018-12-30 17:52:27', '49');
INSERT INTO `product` VALUES ('125', '登山鞋1', '999', '930', 'products/u=301414645,2333286779&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:11:58', '50');
INSERT INTO `product` VALUES ('126', '登山鞋2', '869', '839', 'products/u=1768414126,588787666&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:12:46', '50');
INSERT INTO `product` VALUES ('127', '登山鞋3', '1089', '989', 'products/u=2304988039,1668399191&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:13:11', '50');
INSERT INTO `product` VALUES ('128', '登山鞋4', '1029', '988', 'products/u=3219865671,3197308069&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:13:32', '50');
INSERT INTO `product` VALUES ('129', '登山鞋5', '1289', '1190', 'products/u=3416568388,1464543201&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:13:50', '50');
INSERT INTO `product` VALUES ('130', '鱼竿1', '359', '328', 'products/u=248508024,2722854945&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:15:09', '51');
INSERT INTO `product` VALUES ('131', '鱼竿2', '429', '399', 'products/u=377371761,735155538&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:18:06', '51');
INSERT INTO `product` VALUES ('132', '鱼竿3', '290', '269', 'products/u=2154060585,1427949595&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:24:36', '51');
INSERT INTO `product` VALUES ('133', '鱼竿4', '439', '429', 'products/u=3639788630,2786381186&fm=26&gp=0.jpg', '', '0', '2018-12-30 17:52:11', '51');
INSERT INTO `product` VALUES ('134', '鱼竿5', '479', '429', 'products/u=4224975783,205930482&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:25:29', '51');
INSERT INTO `product` VALUES ('135', '鱼线1', '389', '359', 'products/u=42871685,3295049742&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:33:26', '52');
INSERT INTO `product` VALUES ('136', '鱼线2', '348', '329', 'products/u=1418192745,3885888091&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:33:44', '52');
INSERT INTO `product` VALUES ('137', '鱼线3', '328', '299', 'products/u=1585129717,1619106011&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:34:09', '52');
INSERT INTO `product` VALUES ('138', '鱼线4', '349', '329', 'products/u=1928637843,1811607422&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:34:28', '52');
INSERT INTO `product` VALUES ('139', '鱼线5', '327', '289', 'products/u=2033587654,1512379381&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:34:50', '52');
INSERT INTO `product` VALUES ('140', '登山包1', '290', '270', 'products/u=1078709174,535660901&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:35:23', '53');
INSERT INTO `product` VALUES ('141', '登山包2', '259', '239', 'products/u=1660707628,571025987&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:35:41', '53');
INSERT INTO `product` VALUES ('142', '登山包3', '359', '349', 'products/u=3004170793,394151592&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:36:01', '53');
INSERT INTO `product` VALUES ('143', '登山包4', '348', '329', 'products/u=4250580029,1768434333&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:36:22', '53');
INSERT INTO `product` VALUES ('144', '登山包5', '247', '218', 'products/O1CN01wv5WuU1hMUueTpQYm_!!0-item_pic.jpg_360x360Q90.jpg', '', '0', '2018-12-30 17:47:50', '53');
INSERT INTO `product` VALUES ('145', '帐篷1', '589', '549', 'products/u=248480196,3090254490&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:37:27', '54');
INSERT INTO `product` VALUES ('146', '帐篷2', '549', '539', 'products/u=2996371075,1654424242&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:37:46', '54');
INSERT INTO `product` VALUES ('147', '帐篷3', '569', '539', 'products/u=3253909816,601836917&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:38:02', '54');
INSERT INTO `product` VALUES ('148', '帐篷4', '689', '659', 'products/u=3756166319,2484887032&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:41:22', '54');
INSERT INTO `product` VALUES ('149', '帐篷5', '389', '369', 'products/u=4072629203,2560702675&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:41:47', '54');
INSERT INTO `product` VALUES ('150', '手电筒1', '99', '89', 'products/u=48231105,1191510503&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:42:24', '55');
INSERT INTO `product` VALUES ('151', '手电筒2', '89', '79', 'products/u=48943706,2326849577&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:42:40', '55');
INSERT INTO `product` VALUES ('152', '手电筒3', '88', '78', 'products/u=839268891,2641774184&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:42:57', '55');
INSERT INTO `product` VALUES ('153', '手电筒4', '69', '68', 'products/u=1535205540,1418608229&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:43:20', '55');
INSERT INTO `product` VALUES ('154', '手电筒5', '58', '47', 'products/u=2988023684,3758189018&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:43:38', '55');
INSERT INTO `product` VALUES ('155', '山地车1', '1999', '1899', 'products/u=1192358420,1377167535&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:44:06', '56');
INSERT INTO `product` VALUES ('156', '山地车2', '1799', '1699', 'products/u=2644560952,21777998&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:44:30', '56');
INSERT INTO `product` VALUES ('157', '山地车3', '1999', '1799', 'products/u=3215083174,239600099&fm=26&gp=0.jpg', '', '0', '2018-12-29 10:45:21', '56');
INSERT INTO `product` VALUES ('158', '山地车4', '2499', '2399', 'products/u=3988040585,1108045205&fm=26&gp=0.jpg', '', '1', '2018-12-29 10:45:39', '56');
INSERT INTO `product` VALUES ('159', '山地车5', '2499', '2399', 'products/u=4130392526,1088893002&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:01:33', '56');
INSERT INTO `product` VALUES ('160', '海贼王1', '259', '239', 'products/u=629134538,3539132403&fm=26&gp=0.jpg', '', '1', '2018-12-29 11:02:14', '44');
INSERT INTO `product` VALUES ('161', '海贼王2', '245', '214', 'products/u=1255048865,4253375273&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:02:37', '44');
INSERT INTO `product` VALUES ('162', '海贼王3', '246', '237', 'products/u=1770061353,1586993764&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:03:03', '44');
INSERT INTO `product` VALUES ('163', '海贼王4', '347', '326', 'products/u=2746289359,2794163520&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:04:12', '44');
INSERT INTO `product` VALUES ('164', '海贼王5', '326', '294', 'products/u=4185117875,3109437488&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:04:29', '44');
INSERT INTO `product` VALUES ('165', '圣斗士1', '235', '221', 'products/u=656896765,1479977056&fm=26&gp=0.jpg', '', '1', '2018-12-29 11:04:54', '45');
INSERT INTO `product` VALUES ('166', '圣斗士2', '246', '235', 'products/u=1298305819,2997125752&fm=26&gp=0.jpg', '', '1', '2018-12-29 11:05:09', '45');
INSERT INTO `product` VALUES ('167', '圣斗士3', '346', '325', 'products/u=2096957661,2414301182&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:05:34', '45');
INSERT INTO `product` VALUES ('168', '圣斗士4', '346', '341', 'products/u=2683642517,2498099903&fm=26&gp=0.jpg', '', '1', '2018-12-29 11:05:51', '45');
INSERT INTO `product` VALUES ('169', '圣斗士5', '456', '326', 'products/u=3422276447,2392818851&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:06:11', '45');
INSERT INTO `product` VALUES ('170', '火影忍者1', '345', '324', 'products/u=1319447487,162880050&fm=26&gp=0.jpg', '', '1', '2018-12-29 11:06:50', '46');
INSERT INTO `product` VALUES ('171', '火影忍者2', '367', '346', 'products/u=1384368215,1776347372&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:07:16', '46');
INSERT INTO `product` VALUES ('172', '火影忍者3', '467', '439', 'products/u=2194479131,2887438563&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:07:39', '46');
INSERT INTO `product` VALUES ('173', '火影忍者4', '245', '213', 'products/u=2291942455,1735527501&fm=26&gp=0.jpg', '', '1', '2018-12-29 11:07:55', '46');
INSERT INTO `product` VALUES ('174', '火影忍者5', '365', '325', 'products/u=2194479131,2887438563&fm=26&gp=0.jpg', '', '1', '2018-12-30 17:51:44', '46');
INSERT INTO `product` VALUES ('175', '银魂1', '456', '435', 'products/u=189352956,3735725682&fm=26&gp=0.jpg', '', '1', '2018-12-29 11:08:48', '47');
INSERT INTO `product` VALUES ('176', '银魂2', '325', '320', 'products/u=3183363621,3035088389&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:09:06', '47');
INSERT INTO `product` VALUES ('177', '银魂3', '256', '214', 'products/u=3228768071,2334682890&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:09:29', '47');
INSERT INTO `product` VALUES ('178', '银魂4', '234', '214', 'products/u=3889648881,2006001262&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:09:56', '47');
INSERT INTO `product` VALUES ('179', '银魂5', '456', '435', 'products/u=189352956,3735725682&fm=26&gp=0.jpg', '', '0', '2018-12-30 17:51:26', '47');
INSERT INTO `product` VALUES ('180', '复仇者联盟1', '256', '213', 'products/u=1149969101,642136241&fm=26&gp=0.jpg', '', '1', '2018-12-29 11:10:49', '48');
INSERT INTO `product` VALUES ('181', '复仇者联盟2', '456', '435', 'products/u=2486708413,1369644682&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:11:09', '48');
INSERT INTO `product` VALUES ('182', '复仇者联盟3', '357', '327', 'products/u=2847313004,3997870851&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:13:19', '48');
INSERT INTO `product` VALUES ('183', '复仇者联盟4', '257', '237', 'products/u=3817100041,886483749&fm=26&gp=0.jpg', '', '0', '2018-12-29 11:13:41', '48');
INSERT INTO `product` VALUES ('185', '爱品牌1', '348', '328', 'products/TB1RuWgJVXXXXavXVXXSutbFXXX.jpg_400x400.jpg', '', '1', '2018-12-29 11:15:12', '66');
INSERT INTO `product` VALUES ('186', '爱品牌2', '268', '237', 'products/TB1vsBFMFXXXXawXXXXSutbFXXX.jpg_400x400.jpg', '', '0', '2018-12-29 11:15:32', '66');
INSERT INTO `product` VALUES ('187', '爱品牌3', '478', '459', 'products/TB1yci_LFXXXXanXXXXSutbFXXX.jpg_400x400.jpg', '', '1', '2018-12-29 11:15:50', '66');
INSERT INTO `product` VALUES ('188', '爱品牌4', '357', '325', 'products/TB18AJTOXXXXXXyaXXXSutbFXXX.jpg_400x400.jpg', '', '1', '2018-12-29 11:16:12', '66');
INSERT INTO `product` VALUES ('189', '爱品牌5', '674', '628', 'products/TB18MV0MXXXXXcmXpXXSutbFXXX.jpg_400x400.jpg', '', '0', '2018-12-29 11:16:32', '66');
INSERT INTO `product` VALUES ('190', '外套1', '578', '548', 'products/O1CN01e0ERjV1hFAZyPrSfE_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 11:17:32', '70');
INSERT INTO `product` VALUES ('191', '外套2', '537', '510', 'products/O1CN01KyMsOR2KRK68f2VCX_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:17:50', '70');
INSERT INTO `product` VALUES ('192', '外套3', '528', '519', 'products/O1CN01TWEpRV1pyz7fifn8F_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:18:15', '70');
INSERT INTO `product` VALUES ('193', '外套4', '437', '417', 'products/O1CN011gwqiNqYYkBw0Ej_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:18:29', '70');
INSERT INTO `product` VALUES ('194', '外套5', '516', '499', 'products/O1CN011wHCYGh8uJW6Qm8_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:18:51', '70');
INSERT INTO `product` VALUES ('195', '卫衣1', '259', '217', 'products/O1CN01HMeAbT24SfPlgJC2v_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 11:20:41', '67');
INSERT INTO `product` VALUES ('196', '卫衣2', '356', '326', 'products/O1CN01P6szqp1EJBBryZZLT_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:20:56', '67');
INSERT INTO `product` VALUES ('197', '卫衣3', '356', '316', 'products/O1CN011eprR6cLE29eeKd_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:21:35', '67');
INSERT INTO `product` VALUES ('198', '卫衣4', '156', '135', 'products/O1CN0120GWQLTHpzmG5Bh_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:21:32', '67');
INSERT INTO `product` VALUES ('199', '卫衣5', '357', '326', 'products/TB1Zm3QXf5TBuNjSspcXXbnGFXa_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:21:55', '67');
INSERT INTO `product` VALUES ('200', '山核桃1', '59', '51', 'products/O1CN01giFc6y1yWQyO9I2gR_!!59516586.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:22:42', '57');
INSERT INTO `product` VALUES ('201', '山核桃2', '69', '69', 'products/O1CN01SlrtcO1yvAMCI4XUL_!!0-item_pic.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:23:03', '57');
INSERT INTO `product` VALUES ('202', '山核桃3', '79', '69', 'products/O1CN01wS8CMO1Cf2rVCjtZt_!!1807350107.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:23:23', '57');
INSERT INTO `product` VALUES ('203', '山核桃4', '48', '45', 'products/O1CN014cctKn26MNCQSaAtk_!!3959397647.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:23:40', '57');
INSERT INTO `product` VALUES ('204', '星空棒棒糖1', '28', '26', 'products/O1CN01dJEMwW1T9IsQUrFPx_!!3985132339.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:24:51', '58');
INSERT INTO `product` VALUES ('205', '星空棒棒糖2', '36', '29', 'products/TB2BRWoeIPRfKJjSZFOXXbKEVXa_!!1691885621.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:25:17', '58');
INSERT INTO `product` VALUES ('206', '星空棒棒糖3', '19', '19', 'products/TB2eMZ9bPZnyKJjSZPcXXXqHVXa_!!913501613.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:25:32', '58');
INSERT INTO `product` VALUES ('207', '星空棒棒糖4', '36', '31', 'products/TB2kAFghBDH8KJjy1zeXXXjepXa_!!1102045952.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:25:58', '58');
INSERT INTO `product` VALUES ('208', '星空棒棒糖5', '35', '29', 'products/TB2rzCHB7KWBuNjy1zjXXcOypXa_!!3977854607.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:29:23', '58');
INSERT INTO `product` VALUES ('209', '碧根果1', '59', '55', 'products/O1CN01pRho8U1FBgJHgGHCB_!!2299460449.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:29:50', '59');
INSERT INTO `product` VALUES ('210', '碧根果2', '49', '45', 'products/O1CN011bT0q1sgwdPMMus_!!922593465.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:30:07', '59');
INSERT INTO `product` VALUES ('211', '碧根果3', '36', '35', 'products/O1CN012CLLzvZhbpAlYUe_!!2451518457.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:30:22', '59');
INSERT INTO `product` VALUES ('212', '碧根果4', '46', '39', 'products/TB2AT7czItnpuFjSZFKXXalFFXa_!!81166992.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:30:44', '59');
INSERT INTO `product` VALUES ('213', '碧根果5', '26', '25', 'products/TB2BvbfjRTH8KJjy0FiXXcRsXXa_!!838421817.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:31:01', '59');
INSERT INTO `product` VALUES ('214', '巴坦木1', '59', '55', 'products/O1CN012e3Bwl1TCy3U7TOpW_!!0-item_pic.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:31:56', '60');
INSERT INTO `product` VALUES ('215', '巴坦木2', '69', '65', 'products/TB2_Ku9fTCWBKNjSZFtXXaC3FXa_!!22733703.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:32:14', '60');
INSERT INTO `product` VALUES ('216', '巴坦木3', '55', '49', 'products/TB2_w3ca5CYBuNkSnaVXXcMsVXa_!!2457709617.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:32:34', '60');
INSERT INTO `product` VALUES ('217', '巴坦木4', '68', '61', 'products/TB2cuyRj8DH8KJjy1zeXXXjepXa_!!3392687025.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:34:29', '60');
INSERT INTO `product` VALUES ('218', '巴坦木5', '48', '43', 'products/TB2544RXMYDK1JjSZPfXXcY.pXa_!!2853744410.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:34:48', '60');
INSERT INTO `product` VALUES ('219', '夏威夷果1', '69', '65', 'products/O1CN01jScDl81s1OR5hMsa7_!!2762435706.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:35:13', '61');
INSERT INTO `product` VALUES ('220', '夏威夷果2', '63', '61', 'products/O1CN011Lu0KAKm59mTIZR_!!2648251358.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:35:31', '61');
INSERT INTO `product` VALUES ('221', '夏威夷果3', '46', '43', 'products/O1CN011oI6PCMXjNqgkO5_!!771205201.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:35:51', '61');
INSERT INTO `product` VALUES ('222', '夏威夷果4', '38', '36', 'products/TB2fzREcDXYBeNkHFrdXXciuVXa_!!723814325.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:36:07', '61');
INSERT INTO `product` VALUES ('223', '鸭肉1', '69', '65', 'products/O1CN01wQ47Zk28rdTDJpp7u_!!3947987986.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:36:39', '62');
INSERT INTO `product` VALUES ('224', '鸭肉2', '56', '54', 'products/O1CN012AFHVv6x1SjQElo_!!2560668173.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:36:52', '62');
INSERT INTO `product` VALUES ('225', '鸭肉3', '58', '56', 'products/O1CN0138hyyD1lUWJP7gCfX_!!2021014822.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:37:17', '62');
INSERT INTO `product` VALUES ('226', '话梅糖1', '56', '54', 'products/O1CN01vnaZlL1z3rt4WVDNg_!!0-item_pic.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:37:44', '63');
INSERT INTO `product` VALUES ('227', '话梅糖2', '54', '51', 'products/TB2boVllHJkpuFjy1zcXXa5FFXa_!!365091934.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:38:03', '63');
INSERT INTO `product` VALUES ('228', '话梅糖3', '38', '35', 'products/TB2N19KaOpnpuFjSZFkXXc4ZpXa_!!604237530.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:38:19', '63');
INSERT INTO `product` VALUES ('229', '话梅糖4', '43', '41', 'products/TB2yz_pox1YBuNjy1zcXXbNcXXa_!!1647325162-0-item_pic.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:38:37', '63');
INSERT INTO `product` VALUES ('230', '泡泡糖1', '20', '19', 'products/TB1NykdvrZnBKNjSZFGXXbt3FXa_!!0-item_pic.jpg_240x240xz.jpg', '', '1', '2018-12-29 11:39:07', '64');
INSERT INTO `product` VALUES ('231', '泡泡糖2', '19', '15', 'products/TB1OtimjuuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:39:27', '64');
INSERT INTO `product` VALUES ('232', '泡泡糖3', '31', '26', 'products/TB2Mb4ecn1z01JjSZFCXXXY.XXa_!!1925405459.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:39:48', '64');
INSERT INTO `product` VALUES ('233', '泡泡糖4', '54', '51', 'products/TB2UobicZrI8KJjy0FhXXbfnpXa_!!243842972.png_240x240xz.png', '', '0', '2018-12-29 11:40:02', '64');
INSERT INTO `product` VALUES ('234', '泡泡糖5', '41', '36', 'products/TB24N7kfVXXXXXnXpXXXXXXXXXX_!!2200566594.jpg_240x240xz.jpg', '', '0', '2018-12-29 11:40:26', '64');
INSERT INTO `product` VALUES ('235', '新品1', '599', '589', 'products/O1CN01Awginr23cSG8cJkcd_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 11:40:59', '73');
INSERT INTO `product` VALUES ('236', '新品2', '569', '548', 'products/O1CN01DuGawg2JHPuVoCWQJ_!!0-saturn_solar.jpg_270x270.jpg', '', '0', '2018-12-29 11:41:18', '73');
INSERT INTO `product` VALUES ('237', '新品3', '489', '479', 'products/O1CN01NpTL5D1LbE5hP0eX7_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:41:38', '73');
INSERT INTO `product` VALUES ('238', '新品4', '469', '429', 'products/O1CN011r6bInWTFwpLYQ0_!!0-saturn_solar.jpg_270x270.jpg', '', '0', '2018-12-29 11:41:58', '73');
INSERT INTO `product` VALUES ('239', '新品5', '389', '320', 'products/TB25jmoGamWBuNjy1XaXXXCbXXa_!!0-saturn_solar.jpg_270x270.jpg', '', '0', '2018-12-29 11:42:20', '73');
INSERT INTO `product` VALUES ('240', '品质优选1', '459', '439', 'products/O1CN01cyVWuG1qsrRD83lB8_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 11:42:48', '74');
INSERT INTO `product` VALUES ('241', '品质优选2', '579', '548', 'products/O1CN01QggGd11tsoFOJoLRH_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:43:05', '74');
INSERT INTO `product` VALUES ('242', '品质优选3', '467', '453', 'products/O1CN011YsiDHZzLfDJFAD_!!0-saturn_solar.jpg_270x270.jpg', '', '0', '2018-12-29 11:43:28', '74');
INSERT INTO `product` VALUES ('243', '品质优选4', '679', '649', 'products/TB2eBWKdLNNTKJjSspkXXaeWFXa_!!0-saturn_solar.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:43:48', '74');
INSERT INTO `product` VALUES ('244', '品质优选5', '649', '610', 'products/TB22O0xbgaTBuNjSszfXXXgfpXa_!!58964048.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:44:06', '74');
INSERT INTO `product` VALUES ('245', '皮衣1', '1089', '999', 'products/O1CN01ipd7Qp2NQoVoH4EmI_!!0-saturn_solar.jpg_580x580Q90.jpg', '', '1', '2018-12-29 11:44:39', '75');
INSERT INTO `product` VALUES ('246', '皮衣2', '1021', '989', 'products/O1CN01L8BDwN1m8pASdMWxI_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:45:04', '75');
INSERT INTO `product` VALUES ('247', '皮衣3', '1999', '1799', 'products/TB2E7W8dOrpK1RjSZFhXXXSdXXa_!!191609058-0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:45:26', '75');
INSERT INTO `product` VALUES ('248', '皮衣4', '989', '899', 'products/O1CN01PWvEWB1I0BDurlkWk_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:45:48', '75');
INSERT INTO `product` VALUES ('249', '皮衣5', '1098', '998', 'products/TB1yRpMo4PI8KJjSspoXXX6MFXa_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:46:36', '75');
INSERT INTO `product` VALUES ('250', '衬衫1', '209', '189', 'products/O1CN01EAVShD2MV6bbHwit7_!!0-saturn_solar.jpg_270x270.jpg', '', '1', '2018-12-29 11:47:14', '76');
INSERT INTO `product` VALUES ('251', '衬衫2', '179', '169', 'products/O1CN01GO4py02LtY76drtQ4_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:47:29', '76');
INSERT INTO `product` VALUES ('252', '衬衫3', '169', '169', 'products/O1CN01J2keHT1yJbsYUABBJ_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-29 11:48:57', '76');
INSERT INTO `product` VALUES ('253', '衬衫4', '149', '139', 'products/O1CN01XIckV723cSFYaJ2aN_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 18:03:50', '76');
INSERT INTO `product` VALUES ('254', '衬衫5', '169', '159', 'products/TB2acPNXmzqK1RjSZFjXXblCFXa_!!0-saturn_solar.jpg_580x580Q90.jpg', '', '1', '2018-12-30 18:03:37', '76');
INSERT INTO `product` VALUES ('255', '夹克1', '890', '870', 'products/O1CN01OMEPuM2DQgE1ukM4k_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-29 11:50:03', '77');
INSERT INTO `product` VALUES ('256', '夹克2', '180', '179', 'products/O1CN01SKZk1r2NQoVlQsxvA_!!0-saturn_solar.jpg_270x270.jpg', '', '0', '2018-12-29 11:50:39', '76');
INSERT INTO `product` VALUES ('257', '夹克3', '599', '589', 'products/O1CN01XIckV723cSFYaJ2aN_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 18:03:22', '77');
INSERT INTO `product` VALUES ('258', '夹克4', '689', '658', 'products/O1CN01SKZk1r2NQoVlQsxvA_!!0-saturn_solar.jpg_270x270.jpg', '', '0', '2018-12-30 18:00:37', '77');
INSERT INTO `product` VALUES ('259', '夹克5', '289', '269', 'products/O1CN01OMEPuM2DQgE1ukM4k_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 18:00:23', '77');
INSERT INTO `product` VALUES ('260', '休闲裤1', '201', '199', 'products/O1CN011QFJD5mtuKkQ9G3_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-30 17:59:42', '79');
INSERT INTO `product` VALUES ('261', '休闲裤2', '199', '189', 'products/O1CN011LUM9G0PygS9w99_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 17:57:37', '78');
INSERT INTO `product` VALUES ('262', '休闲裤3', '169', '159', 'products/O1CN01s3MvfU1uWCJ1xXyFi_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 17:57:21', '78');
INSERT INTO `product` VALUES ('263', '休闲裤4', '199', '159', 'products/O1CN0127AkkNW0ll4z1O6_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 17:56:40', '78');
INSERT INTO `product` VALUES ('264', '休闲裤5', '269', '249', 'products/O1CN011nbxxyYI7IdsZlR_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 17:56:28', '78');
INSERT INTO `product` VALUES ('265', '牛仔裤1', '199', '189', 'products/O1CN011M7Ho5Xz5TLTwN1_!!0-item_pic.jpg_580x580Q90.jpg', '', '1', '2018-12-30 17:56:17', '79');
INSERT INTO `product` VALUES ('266', '牛仔裤2', '169', '159', 'products/O1CN01oRA9Pg1pyz7sGoZvk-394695430.jpg_580x580Q90.jpg', '', '0', '2018-12-30 17:56:07', '79');
INSERT INTO `product` VALUES ('267', '牛仔裤3', '209', '199', 'products/O1CN01oRA9Pg1pyz7sGoZvk-394695430.jpg_580x580Q90.jpg', '', '0', '2018-12-30 17:55:45', '79');
INSERT INTO `product` VALUES ('268', '牛仔裤4', '251', '238', 'products/O1CN01ckerfx28cymhUxBkx_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 17:55:32', '79');
INSERT INTO `product` VALUES ('269', '牛仔裤5', '238', '209', 'products/O1CN01awqCnF2J5y0XIzRcG_!!0-item_pic.jpg_580x580Q90.jpg', '', '0', '2018-12-30 17:55:23', '79');
INSERT INTO `product` VALUES ('270', '运动裤1', '109', '99', 'products/u=2148533351,3444886242&fm=26&gp=0.jpg', '', '1', '2018-12-30 17:54:58', '80');
INSERT INTO `product` VALUES ('271', '运动裤2', '199', '149', 'products/u=1735312962,2330270001&fm=26&gp=0.jpg', '', '0', '2018-12-30 17:53:23', '80');
INSERT INTO `product` VALUES ('272', '运动裤3', '189', '179', 'products/u=906221757,3038250165&fm=26&gp=0.jpg', '', '0', '2018-12-30 17:53:14', '80');
INSERT INTO `product` VALUES ('273', '运动裤4', '299', '169', 'products/u=2730417631,1002779530&fm=26&gp=0.jpg', '', '0', '2018-12-30 17:53:06', '80');
INSERT INTO `product` VALUES ('274', '运动裤5', '269', '249', 'products/u=2148533351,3444886242&fm=26&gp=0.jpg', '', '0', '2018-12-30 17:52:57', '80');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', 'aaa', 'aaa', '姜涛', 'aaa@shop.com', '15726607618', '北京市西三旗中腾建华3楼', '1', null);
INSERT INTO `user` VALUES ('8', 'bbb', 'bbb', '张三', 'bbb@shop.com', '18726607618', '北京市西三旗中腾建华3楼', '1', '');
