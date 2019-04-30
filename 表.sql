/*
Navicat MySQL Data Transfer

Source Server         : jingdong
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : good

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-30 11:54:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
`id`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`password`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`auth`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('sjds', '123456', '1'), ('admin', '111111', '1'), ('ss', '123', '2');
COMMIT;

-- ----------------------------
-- Table structure for disimg
-- ----------------------------
DROP TABLE IF EXISTS `disimg`;
CREATE TABLE `disimg` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`gid`  int(11) NULL DEFAULT NULL ,
`displayimg`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`gid`) REFERENCES `good` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `gid` (`gid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=8

;

-- ----------------------------
-- Records of disimg
-- ----------------------------
BEGIN;
INSERT INTO `disimg` VALUES ('1', '3', 'pic\\display\\c4f291df-54e1-41e0-a77c-a0994ed2b3f5q3.png'), ('2', '3', 'pic\\display\\0fac58dd-ecb5-484d-9819-d82b99f75ec4q1.png'), ('4', '26', 'pic\\display\\399a011f-5faf-454c-96b4-600aa0e729e5q1.png'), ('7', '26', 'pic\\display\\a7e823d4-a020-4257-a004-b6b94caca756q3.png');
COMMIT;

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
`id`  int(255) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`number`  int(11) NULL DEFAULT NULL ,
`price`  float(11,0) NULL DEFAULT NULL ,
`describe`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`img`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=28

;

-- ----------------------------
-- Records of good
-- ----------------------------
BEGIN;
INSERT INTO `good` VALUES ('3', '产品2', '998', '88', '鞋类', 'pic\\2019-03-29\\4e56ab4a-7716-46ee-a338-816c2d7f835egood1.png'), ('5', '商品4', '1000', '46', '鞋类', 'pic\\2019-03-30\\c94bfdb9-bdd9-4337-a050-11b22b61c9d9good8.png'), ('6', '啊哈哈', '458', '984', '其他类', 'pic\\2019-03-29\\fbc74897-7207-448f-9e0d-9eb85426b5fb2.png'), ('7', '新的商品', '1000', '45', '文具类', 'pic\\2019-03-29\\2b66c4b3-034d-485f-ab65-718d849439b9chima.png'), ('12', 'aa', '123', '45', '文具类', 'pic\\2019-03-29\\0ff16de7-9022-4601-acb6-b1b2e408f3cfbtt.png'), ('13', '电视', '600', '954', '家电类', 'pic\\2019-03-30\\85375879-fefd-487d-91c2-09fb767cdbb3serach.png'), ('14', '￥159.00 乔丹（QIAODAN）男鞋跑步鞋运动鞋男2018秋冬季新款透气革面网面休闲运动鞋', '501', '149', '鞋类', 'pic\\2019-03-30\\3661089b-a53d-467d-9a69-7ee649408003x1.png'), ('15', '乔丹（QIAODAN）男鞋跑步鞋运动鞋男2018秋冬季新款透气革面网面休闲运动鞋', '487', '156', '鞋类', 'pic\\2019-03-30\\e980f480-b21c-4814-83e9-082e55a807d9x2.png'), ('16', '乔丹男鞋 跑步鞋运动鞋男2018秋冬季新款透气革面网面休闲运动鞋', '651', '215', '鞋类', 'pic\\2019-03-30\\a55c484d-6cdf-4252-a66c-7ffcd780f122x3.png'), ('17', ' 乔丹跑步鞋运动2018秋冬季新款透气革面网面休闲运动鞋', '413', '98', '鞋类', 'pic\\2019-03-30\\fe4b658f-c8b3-432d-8e6a-b12951203a94x4.png'), ('18', '男鞋', '118', '165', '鞋类', 'pic\\2019-03-30\\02c2f99d-f714-4b89-9a52-bcb49ecb0dfdx5.png'), ('19', '鞋', '645', '78', '鞋类', 'pic\\2019-03-30\\cbedb4c4-b4a4-404e-bd9d-b3625cdafa89x8.png'), ('20', '啊哈哈', '623', '345', '鞋类', 'pic\\2019-03-31\\2b6c6b5a-409d-4991-93fb-abfdcfe6bb15x7.png'), ('21', '运动鞋', '999', '214', '鞋类', 'pic\\2019-03-31\\8f57c9ce-d4a7-4fa1-9672-f8a62cd15567good8.png'), ('22', '￥88.00 得力(deli)36色三角杆双头酒精油性马克笔套装 学生手绘漫画设计绘画彩笔画笔记', '565', '88', '文具类', 'pic\\2019-03-31\\b5e0b64b-7b47-4059-a839-35de24a3723bw1.png'), ('23', '得力(deli)高品质高透明封箱胶带打包胶带60mm*100y*50um(91.4m/卷) 6卷/筒 ', '787', '59', '文具类', 'pic\\2019-03-31\\72e90874-e253-40c7-a86c-3377bdb3fa38w2.png'), ('24', ' 得力(deli)钢制耐用办公订书机套装(订书机+起钉器+订书钉) 适配12#钉 颜色随机', '654', '19', '文具类', 'pic\\2019-03-31\\a9a14345-dfe6-475d-b905-40cb94f3c652w3.png'), ('25', '亿色(ESR)iphone xr钢化膜 苹果xr钢化膜【全屏不碎边】高清6.1英寸iPhone全覆盖防爆玻璃手机前贴膜(含神器)', '121', '33', '配件类', 'pic\\2019-03-31\\1310420b-3e67-405c-807e-09fd04bb9a2dq1.png'), ('26', 'TP-LINK TL-WDR5620 1200M 5G双频智能无线路由器 四天线智能wifi 稳定穿墙高速家用路由器', '200', '115', '电子类', 'pic\\2019-03-31\\bfed9107-3bd5-4515-80cf-e035ae5e2867q2.png'), ('27', '家电', '444', '999', '家电类', 'pic\\2019-03-31\\17d0732c-3330-4b8f-8e3b-f1cb1bf760bbq3.png');
COMMIT;

-- ----------------------------
-- Table structure for lbt
-- ----------------------------
DROP TABLE IF EXISTS `lbt`;
CREATE TABLE `lbt` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`img`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`src`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=15

;

-- ----------------------------
-- Records of lbt
-- ----------------------------
BEGIN;
INSERT INTO `lbt` VALUES ('8', 'pic\\lbt\\49d51b2b-75ff-43c3-87e2-51589041dcb92.png', 'http://www.baidu.com'), ('13', 'pic\\lbt\\e996e7d1-89d8-4a78-9cba-9c5afa60618bchima.png', 'http://www.baidu.com'), ('14', 'pic\\lbt\\68136c86-d73a-4207-bc30-a2046875eb7b2.png', 'http://www.baidu.com');
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`time`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  float NULL DEFAULT NULL ,
`tel`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`local`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lmessage`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`status`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
INDEX `uid` (`uid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES ('1', 'sjds', '19-4-6 下午8:33', '165', '13504781667', '东电', '即可不挂科', '待收货'), ('2', 'sjds', '19-4-6 下午9:37', '176', '13504781667', '东电', '5965', '已发货'), ('3', 'sjds', '2019-04-15 18:32:04', '263', '13504781667', '东电', '进口国包括', '待收货');
COMMIT;

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
`oid`  int(11) NULL DEFAULT NULL ,
`gid`  int(11) NULL DEFAULT NULL ,
`number`  int(11) NULL DEFAULT NULL ,
FOREIGN KEY (`oid`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `oid` (`oid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
BEGIN;
INSERT INTO `orderdetail` VALUES ('1', '18', '1'), ('2', '3', '2'), ('3', '18', '1'), ('3', '17', '1');
COMMIT;

-- ----------------------------
-- Table structure for s_gmapper
-- ----------------------------
DROP TABLE IF EXISTS `s_gmapper`;
CREATE TABLE `s_gmapper` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`s_id`  int(11) NULL DEFAULT NULL ,
`g_id`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`g_id`) REFERENCES `good` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
FOREIGN KEY (`s_id`) REFERENCES `shelf` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
INDEX `s_gmapper_ibfk_2` (`g_id`) USING BTREE ,
INDEX `s_gmapper_ibfk_3` (`s_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=50

;

-- ----------------------------
-- Records of s_gmapper
-- ----------------------------
BEGIN;
INSERT INTO `s_gmapper` VALUES ('21', '3', '13'), ('22', '2', '12'), ('23', '2', '7'), ('24', '7', '19'), ('25', '7', '18'), ('26', '7', '17'), ('27', '7', '16'), ('28', '7', '15'), ('29', '7', '14'), ('37', '7', '5'), ('38', '7', '20'), ('39', '7', '21'), ('40', '2', '24'), ('41', '2', '23'), ('42', '2', '22'), ('43', '3', '25'), ('44', '3', '26'), ('46', '9', '27'), ('47', '3', '6'), ('49', '7', '3');
COMMIT;

-- ----------------------------
-- Table structure for shelf
-- ----------------------------
DROP TABLE IF EXISTS `shelf`;
CREATE TABLE `shelf` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`img`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`ord`  int(255) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
INDEX `id` (`id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=10

;

-- ----------------------------
-- Records of shelf
-- ----------------------------
BEGIN;
INSERT INTO `shelf` VALUES ('2', '文具类', '/ssm/midimg/img0.png', '3'), ('3', '其他类', '/ssm/midimg/img1.png', '4'), ('7', '鞋类', '/ssm/midimg/img2.png', '1'), ('9', '家电类', 'pic\\shelfimage\\4820c8b7-f6ef-4c13-8275-28481e45379fq4.png', '6');
COMMIT;

-- ----------------------------
-- Table structure for shopbox
-- ----------------------------
DROP TABLE IF EXISTS `shopbox`;
CREATE TABLE `shopbox` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`gid`  int(11) NULL DEFAULT NULL ,
`addtime`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`addnumber`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`gid`) REFERENCES `good` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `uid` (`uid`) USING BTREE ,
INDEX `gid` (`gid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of shopbox
-- ----------------------------
BEGIN;
INSERT INTO `shopbox` VALUES ('2', 'sjds', '5', '1211', '2'), ('3', 'sjds', '18', '2019-04-09 09:26:00', '1'), ('4', 'sjds', '17', '2019-04-09 09:40:56', '1'), ('5', 'sjds', '15', '2019-04-15 18:31:45', '5'), ('6', 'sjds', '16', '2019-04-16 12:13:05', '1');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
`id`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`password`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('sjds', '123456');
COMMIT;

-- ----------------------------
-- Table structure for usermessage
-- ----------------------------
DROP TABLE IF EXISTS `usermessage`;
CREATE TABLE `usermessage` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`createdate`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`tel`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`local`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `uid` (`uid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of usermessage
-- ----------------------------
BEGIN;
INSERT INTO `usermessage` VALUES ('1', 'sjds', '姓名', '2019-04-06 10:47:52', '11', '123');
COMMIT;

-- ----------------------------
-- Auto increment value for disimg
-- ----------------------------
ALTER TABLE `disimg` AUTO_INCREMENT=8;

-- ----------------------------
-- Auto increment value for good
-- ----------------------------
ALTER TABLE `good` AUTO_INCREMENT=28;

-- ----------------------------
-- Auto increment value for lbt
-- ----------------------------
ALTER TABLE `lbt` AUTO_INCREMENT=15;

-- ----------------------------
-- Auto increment value for order
-- ----------------------------
ALTER TABLE `order` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for s_gmapper
-- ----------------------------
ALTER TABLE `s_gmapper` AUTO_INCREMENT=50;

-- ----------------------------
-- Auto increment value for shelf
-- ----------------------------
ALTER TABLE `shelf` AUTO_INCREMENT=10;

-- ----------------------------
-- Auto increment value for shopbox
-- ----------------------------
ALTER TABLE `shopbox` AUTO_INCREMENT=7;

-- ----------------------------
-- Auto increment value for usermessage
-- ----------------------------
ALTER TABLE `usermessage` AUTO_INCREMENT=2;
