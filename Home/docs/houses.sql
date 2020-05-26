/*
 Navicat Premium Data Transfer

 Source Server         : localhost57
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3307
 Source Schema         : houses

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 13/04/2020 20:14:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminID` int(11) NOT NULL,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_age` int(11) NULL DEFAULT NULL,
  `admin_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`adminID`) USING BTREE,
  INDEX `FK3C3132FC5A52E05`(`adminID`) USING BTREE,
  CONSTRAINT `FK3C3132FC5A52E05` FOREIGN KEY (`adminID`) REFERENCES `admin_account` (`admin_accountID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '小江', '女', 23, '027-88888888', '13079796668', '沈阳', '系统管理员1\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n');

-- ----------------------------
-- Table structure for admin_account
-- ----------------------------
DROP TABLE IF EXISTS `admin_account`;
CREATE TABLE `admin_account`  (
  `admin_accountID` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_accountID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_account
-- ----------------------------
INSERT INTO `admin_account` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `carowner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carspace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `housenumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `licensenumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactway` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carmsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfbz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enddate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES (2, '貂蝉', '001', 'A001', 'DC120', '13012345678', '上海大众', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (3, '张达明', '002', 'B001', 'ZDM121', '13112345678', '奥迪A6', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (4, '康乐', '003', 'F001', 'KL122', '13212345678', '比亚迪', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (5, '曹操', '004', 'A003', 'CC123', '35112345678', '奔驰', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (6, '刘备', '005', 'A004', 'LB124', '15212345678', '宝马', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (7, '张飞', '006', 'C004', 'ZF125', '15512345678', '大众', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (8, '张辽', '007', 'A007', 'ZL126', '13612345678', '奥迪', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (9, '王朝', '008', 'B005', 'WC127', '13712345678', '奥迪', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (10, '许褚', '009', 'A006', 'DC128', '13812345678', '上海大众', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (11, '罗天乐', '010', 'C002', 'ZDM129', '15812345678', '奥迪A6', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (12, '赵云', '013', 'F002', 'KL132', '15212343235', '比亚迪', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (13, '和东', '014', 'A035', 'CC133', '15012345678', '奔驰', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (17, '小明', '12', 'A99', '辽B9991', '13079296668', 'test', '1000', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (18, '香水', 'A12', 'A99', '辽A911pd', '13099999999', '1111', '1001', '2020-04-13 00:00:00');
INSERT INTO `cars` VALUES (20, '张三丰', 'A12', 'A111', '辽A9888Q', '13900923200', 'TEST', '10001', '2020-04-13 00:00:00');

-- ----------------------------
-- Table structure for custom_account
-- ----------------------------
DROP TABLE IF EXISTS `custom_account`;
CREATE TABLE `custom_account`  (
  `custom_accountID` int(11) NOT NULL AUTO_INCREMENT,
  `custom_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_yezhuID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`custom_accountID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom_account
-- ----------------------------
INSERT INTO `custom_account` VALUES (2, 'diaoc', 'abc123', 1);
INSERT INTO `custom_account` VALUES (4, 'diaochan', 'aaa111', 3);
INSERT INTO `custom_account` VALUES (5, 'zhangliao', 'aaa111', 11);
INSERT INTO `custom_account` VALUES (6, 'luotianle', 'aaa111', 12);
INSERT INTO `custom_account` VALUES (7, 'zhaoyun', 'aaa111', 13);
INSERT INTO `custom_account` VALUES (8, 'admin', 'admin', 14);
INSERT INTO `custom_account` VALUES (9, 'hedong', 'aaa111', 15);
INSERT INTO `custom_account` VALUES (13, 'fzm', 'fzm123', 19);
INSERT INTO `custom_account` VALUES (14, 'xiaoqiang', 'xiaoqiang1', 20);
INSERT INTO `custom_account` VALUES (15, 'xiaoming', 'xiaoming1', 21);
INSERT INTO `custom_account` VALUES (17, 'A_user', 'A123456', 23);
INSERT INTO `custom_account` VALUES (18, 'zhangdaming', '1zhangdaming', 2);

-- ----------------------------
-- Table structure for homes
-- ----------------------------
DROP TABLE IF EXISTS `homes`;
CREATE TABLE `homes`  (
  `homesID` int(11) NOT NULL AUTO_INCREMENT,
  `homes_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homes_lou` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homes_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homes_area` int(11) NULL DEFAULT NULL,
  `homes_sell` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homes_danyuan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homes_louceng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homes_chaoxiang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homes_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homes_yezhu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`homesID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homes
-- ----------------------------
INSERT INTO `homes` VALUES (1, 'A001', 'A栋楼', '一套二', 120, '已入住', '一单元', '一楼', '朝东', '阳光充足，环境优美', '貂蝉');
INSERT INTO `homes` VALUES (2, 'B001', 'B栋楼', '一套三', 85, '已入住', '二单元', '二楼', '朝西', '房产面积适中，风景优美', '张达明');
INSERT INTO `homes` VALUES (3, 'C001', 'C栋楼', '一套三', 110, '未入住', '二单元', '二楼', '朝南', '环境优美，适宜居家', '无');
INSERT INTO `homes` VALUES (4, 'A002', 'A栋楼', '一套二', 95, '未入住', '一单元', '四楼', '朝西', '环境优美，适宜居家', '无');
INSERT INTO `homes` VALUES (5, 'A003', 'A栋楼', '一套二', 86, '已入住', '一单元', '一楼', '朝东', '环境优美，适宜居家', '曹操');
INSERT INTO `homes` VALUES (6, 'A004', 'A栋楼', '一套二', 78, '已入住', '三单元', '三楼', '朝南', '环境优美，适宜居家', '刘备');
INSERT INTO `homes` VALUES (7, 'B002', 'B栋楼', '一套三', 87, '未入住', '二单元', '二楼', '朝西', '环境优美，适宜居家', '无');
INSERT INTO `homes` VALUES (8, 'C004', 'C栋楼', '一套二', 67, '已入住', '一单元', '一楼', '朝东', '环境优美，适宜居家', '张飞');
INSERT INTO `homes` VALUES (9, 'F001', 'F栋楼', '一套二', 90, '未入住', '一单元', '二楼', '朝东', '环境优美，适宜居家', '无');
INSERT INTO `homes` VALUES (11, 'A009', 'A栋楼', '一套二', 102, '未入住', '二单元', '二楼', '朝南', '阳光充足', '无');
INSERT INTO `homes` VALUES (13, 'A006', 'A栋楼', '一套二', 112, '已入住', '一单元', '一楼', '朝东', '大苏打', '许褚');
INSERT INTO `homes` VALUES (14, 'A007', 'A栋楼', '一套二', 112, '已入住', '一单元', '一楼', '朝东', '是大事的', '张辽');
INSERT INTO `homes` VALUES (16, 'C002', 'C栋楼', '一套三', 103, '已入住', '三单元', '二楼', '朝南', '风景优美', '罗天乐');
INSERT INTO `homes` VALUES (17, 'F002', 'F栋楼', '一套二', 112, '已入住', '一单元', '一楼', '朝东', '好房子', '赵云');
INSERT INTO `homes` VALUES (18, 'A034', 'A栋楼', '一套二', 120, '已入住', '二单元', '五楼', '朝南', '最好的套房', '房');
INSERT INTO `homes` VALUES (19, 'A035', 'A栋楼', '一套三', 110, '已入住', '二单元', '五楼', '朝西', '标准套房', '和东');
INSERT INTO `homes` VALUES (21, 'A123', 'A栋楼', '一套二', 123, '未入住', '一单元', '一楼', '朝东', '1234', '无');
INSERT INTO `homes` VALUES (23, 'U111', 'A栋楼', '一套二', 111, '未入住', '一单元', '一楼', '朝东', '111', '无');
INSERT INTO `homes` VALUES (25, 'P111', 'A栋楼', '一套二', 111, '已入住', '一单元', '一楼', '朝东', '111', '房祖名');
INSERT INTO `homes` VALUES (26, 'A12', 'A栋楼', '一套二', 111, '已入住', '一单元', '一楼', '朝东', '111', '阿青');
INSERT INTO `homes` VALUES (27, 'A99', 'A栋楼', '一套二', 111, '已入住', '一单元', '一楼', '朝南', '朝阳', '小明');
INSERT INTO `homes` VALUES (28, 'A132', 'A栋楼', '一套二', 111, '已入住', '一单元', '一楼', '朝东', '111', '业主');
INSERT INTO `homes` VALUES (29, 'A111', 'A栋楼', '一套二', 111, '已入住', '一单元', '一楼', '朝东', '111', '张三三');

-- ----------------------------
-- Table structure for lvhua
-- ----------------------------
DROP TABLE IF EXISTS `lvhua`;
CREATE TABLE `lvhua`  (
  `lvhuaID` int(11) NOT NULL AUTO_INCREMENT,
  `lvhua_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lvhua_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lvhua_fuzheren` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lvhua_date` datetime(0) NULL DEFAULT NULL,
  `lvhua_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lvhua_yanshouren` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lvhua_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`lvhuaID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lvhua
-- ----------------------------
INSERT INTO `lvhua` VALUES (1, '前花园', '种花', '张大爷', '2020-04-13 00:00:00', '已验收', '小李', '好');
INSERT INTO `lvhua` VALUES (2, '前花园', '种花', '花工1', '2020-04-13 00:00:00', '已验收', '老王', '合格');
INSERT INTO `lvhua` VALUES (3, '后花园', '清洁', 'test', '2020-04-13 00:00:00', '已验收', '老王', '合格');

-- ----------------------------
-- Table structure for maintain
-- ----------------------------
DROP TABLE IF EXISTS `maintain`;
CREATE TABLE `maintain`  (
  `maintainID` int(11) NOT NULL AUTO_INCREMENT,
  `maintain_thing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maintain_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maintain_homesnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maintain_sdate` datetime(0) NULL DEFAULT NULL,
  `maintain_rdate` datetime(0) NULL DEFAULT NULL,
  `maintain_tcost` int(11) NULL DEFAULT NULL,
  `maintain_scost` int(11) NULL DEFAULT NULL,
  `maintainer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maintain_smemo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maintain_rmemo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maintainID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maintain
-- ----------------------------
INSERT INTO `maintain` VALUES (1, '卫生问题', '已处理', 'A001', '2020-04-13 00:00:00', '2019-06-09 23:45:06', 30, 30, '小李', '第三方', '水电费');
INSERT INTO `maintain` VALUES (2, '卫生问题', '已处理', 'A021', '2020-04-13 00:00:00', '2020-04-13 23:29:57', 10, 10, '李明', '第三方', '水电费');
INSERT INTO `maintain` VALUES (3, '卫生问题', '已处理', 'B002', '2020-04-13 00:00:00', '2020-04-13 15:19:31', 10, 20, '老王', '第三方', '水电费');
INSERT INTO `maintain` VALUES (5, '卫生问题', '已处理', 'B003', '2020-04-13 00:00:00', '2020-04-13 23:10:50', 10, 10, '小李', '第三方', '水电费');
INSERT INTO `maintain` VALUES (6, '卫生问题', '已处理', 'C001', '2020-04-13 00:00:00', '2020-04-13 23:03:33', 10, 20, '小李', '第三方', '水电费');
INSERT INTO `maintain` VALUES (7, '卫生问题', '已处理', 'A001', '2020-04-13 00:00:00', NULL, 0, 0, '小李', '第三方', '水电费');
INSERT INTO `maintain` VALUES (8, '卫生问题', '已处理', 'F002', '2020-04-13 00:00:00', NULL, 0, 0, '老王', '第三方', '水电费');
INSERT INTO `maintain` VALUES (9, '卫生问题', '已处理', 'A002', '2020-04-13 00:00:00', NULL, 0, 0, '小李', '第三方', '水电费');
INSERT INTO `maintain` VALUES (10, '卫生问题', '已处理', 'B002', '2020-04-13 00:00:00', NULL, 0, 0, '小李', '第三方', '水电费');
INSERT INTO `maintain` VALUES (11, '卫生问题', '已处理', 'A003', '2020-04-13 00:00:00', NULL, 0, 0, '老王', '第三方', '水电费');
INSERT INTO `maintain` VALUES (12, '环境问题', '已处理', 'C001', '2020-04-13 00:00:00', NULL, 0, 0, '小李', '第三方', '水电费');
INSERT INTO `maintain` VALUES (13, '环境问题', '已处理', 'A001', '2020-04-13 00:00:00', '2020-04-13 19:40:35', 30, 30, '李明', '第三方', '水电费');
INSERT INTO `maintain` VALUES (14, '环境问题', '已处理', 'A008', '2020-04-13 00:00:00', '2020-04-13 19:55:34', 30, 3, '小李', '第三方', '水电费');

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify`  (
  `notifyID` int(11) NOT NULL AUTO_INCREMENT,
  `notify_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notify_date` datetime(0) NULL DEFAULT NULL,
  `notify_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notify_uper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`notifyID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notify
-- ----------------------------
INSERT INTO `notify` VALUES (1, '防盗通知内容', '2020-04-13 00:00:00', '防盗通知', '通过', '娱乐新闻', '管理员');
INSERT INTO `notify` VALUES (2, '入住通知内容', '2020-04-13 00:00:00', '入住通知', '通过', '娱乐新闻', '管理员');
INSERT INTO `notify` VALUES (3, '防火通知2内容', '2020-04-13 00:00:00', '防火通知2', '通过', '小区新闻', '林嗯嗯');
INSERT INTO `notify` VALUES (6, '按时缴纳水费通知内容', '2020-04-13 00:00:00', '按时缴纳水费通知', '通过', '小区新闻', '管理员');
INSERT INTO `notify` VALUES (10, '水电费涨价通知内容', '2020-04-13 00:00:00', '水电费涨价通知', '通过', '小区新闻', '小彤彤');
INSERT INTO `notify` VALUES (13, '世界杯文明看球公告内容', '2020-04-13 00:00:00', '世界杯文明看球公告', '通过', '小区新闻', '哥哥哥');
INSERT INTO `notify` VALUES (15, '适应浏览器兼容内容', '2020-04-13 00:00:00', '适应浏览器兼容', '通过', '娱乐新闻', '林嗯嗯');
INSERT INTO `notify` VALUES (21, 'test1内容', '2020-04-13 00:00:00', 'test1', '通过', '小区新闻', '蒋哥');
INSERT INTO `notify` VALUES (22, '12212rwqe123123', '2020-04-13 00:00:00', '112232312', '不通过', '娱乐新闻', '小江');
INSERT INTO `notify` VALUES (23, 'content test1', '2020-04-13 00:00:00', 'title test1', '通过', '经济新闻', '小江');
INSERT INTO `notify` VALUES (24, '大西洋大西洋', '2020-04-13 00:00:00', '大西洋', '通过', '经济新闻', '小江讲');

-- ----------------------------
-- Table structure for personnel
-- ----------------------------
DROP TABLE IF EXISTS `personnel`;
CREATE TABLE `personnel`  (
  `personnelID` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_age` int(11) NULL DEFAULT NULL,
  `personnel_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_jiguan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_xueli` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_gongling` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_oldwork` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_daozhidate` datetime(0) NULL DEFAULT NULL,
  `personnel_lizhidate` datetime(0) NULL DEFAULT NULL,
  `personnel_worktype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_daozhimemo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_lizhimemo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel_update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`personnelID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personnel
-- ----------------------------
INSERT INTO `personnel` VALUES (1, '李东1', 23, '男', '231221312312312312', '四川', '13232321323', '四川省成都市', '高中', '2', '保安', '2020-04-13 00:00:00', '2020-04-13 23:10:10', '保安', '新入职的保安人员', '待遇不好', '已离职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (2, '张大爷', 56, '男', '423432423423423423', '四川', '13545232432', '四川省成都市', '初中', '34', '环卫工人', '2020-04-13 00:00:00', NULL, '环卫/绿化工', '2010年6月9日，正式入职', NULL, '在职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (3, '张大', 24, '男', '521213213213123123', '四川省', '13232321231', '四川省成都市', '高中', '1', '保安', '2020-04-13 00:00:00', NULL, '保安', '张大保安', NULL, '在职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (4, '陆逊', 34, '男', '510218432312313123', '四川省成都市', '13241312312', '江东', '高中', '2', '保安', '2020-04-13 00:00:00', '2020-04-13 19:37:27', '保安', '陆逊', '待遇不好', '已离职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (5, '张小东', 23, '男', '432142343242342342', '四川', '13354332434', '四川省成都市', '专科', '1', '保安', '2020-04-13 00:00:00', NULL, '保安', '保安人员', NULL, '在职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (6, '任强', 34, '男', '521231312313212321', '四川成都', '13431223423', '四川省成都市', '初中', '10', '保安', '2020-04-13 00:00:00', NULL, '保安', '新入职的保安', NULL, '在职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (7, '地主家的傻儿子', 89, '男', '210113199409075656', '北', '13079296669', '沈北', '高中', '20', '保安', '2020-04-13 00:00:00', '2020-04-13 23:20:52', '保安', '', NULL, '已离职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (8, '张三丰', 1, '男', '210113199409075656', '汗', '13079296558', '沈北新区', '高中', '', '', '2020-04-13 00:00:00', '2020-04-13 23:23:39', '保安', 'test', NULL, '已离职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (9, '小芳', 22, '女', '210113199509098888', '汉', '13079296666', '沈阳', '高中', '', '', '2020-04-13 00:00:00', NULL, '环卫/绿化工', 'test', NULL, '在职', '2020-04-13 00:00:00');
INSERT INTO `personnel` VALUES (10, '李红', 20, '女', '210114999999999999', '汗', '13135444666', '沈阳', '高中', '2', '保洁', '2020-04-13 00:00:00', NULL, '维修工人', 'test', NULL, '在职', '2020-04-13 00:00:00');

-- ----------------------------
-- Table structure for ts
-- ----------------------------
DROP TABLE IF EXISTS `ts`;
CREATE TABLE `ts`  (
  `tsID` int(11) NOT NULL AUTO_INCREMENT,
  `tsyhm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tsrq` datetime(0) NULL DEFAULT NULL,
  `tsnr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ts_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tsID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wuyefei
-- ----------------------------
DROP TABLE IF EXISTS `wuyefei`;
CREATE TABLE `wuyefei`  (
  `wuyefeiID` int(11) NOT NULL AUTO_INCREMENT,
  `wuyefei_yezhu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wuyefei_homes_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wuyefei_danjia` double NULL DEFAULT NULL,
  `wuyefei_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wuyefei_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wuyefei_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wuyefei_money` double NULL DEFAULT NULL,
  `wuyefei_date` datetime(0) NULL DEFAULT NULL,
  `wuyefei_uper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wuyefei_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`wuyefeiID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wuyefei
-- ----------------------------
INSERT INTO `wuyefei` VALUES (1, '貂蝉', 'A001', 2.5, '未缴纳', '2011年', '一月', 300, '2020-04-13 00:00:00', 'admin', '一月物业费');
INSERT INTO `wuyefei` VALUES (2, '貂蝉', 'A001', 1.3, '未缴纳', '2011年', '二月', 156, '2020-04-13 00:00:00', 'admin', '二月物业费');
INSERT INTO `wuyefei` VALUES (3, '张达明', 'B001', 1.3, '未缴纳', '2011年', '二月', 110.5, '2020-04-13 00:00:00', 'admin', '二月物业费');
INSERT INTO `wuyefei` VALUES (4, '貂蝉', 'A001', 2, '未缴纳', '2011年', '三月', 240, '2020-04-13 00:00:00', '罗建', '三月物业费');
INSERT INTO `wuyefei` VALUES (5, '张达明', 'B001', 2, '未缴纳', '2011年', '三月', 170, '2020-04-13 00:00:00', 'admin', '三月物业费');
INSERT INTO `wuyefei` VALUES (6, '康乐', 'F001', 2, '未缴纳', '2011年', '三月', 180, '2020-04-13 00:00:00', '罗建', '三月物业费');
INSERT INTO `wuyefei` VALUES (7, '貂蝉', 'A001', 1.8, '已缴纳', '2011年', '四月', 216, '2020-04-13 00:00:00', 'admin', '四月物业费');
INSERT INTO `wuyefei` VALUES (9, '曹操', 'A003', 1.8, '已缴纳', '2011年', '四月', 154.8, '2020-04-13 00:00:00', 'admin', '四月物业费');
INSERT INTO `wuyefei` VALUES (10, '刘备', 'A004', 1.8, '未缴纳', '2011年', '四月', 140.4, '2020-04-13 00:00:00', 'admin', '四月物业费');
INSERT INTO `wuyefei` VALUES (11, '张飞', 'C004', 1.8, '未缴纳', '2011年', '四月', 120.6, '2020-04-13 00:00:00', 'admin', '四月物业费');
INSERT INTO `wuyefei` VALUES (12, '许褚', 'A006', 1.8, '未缴纳', '2011年', '四月', 201.6, '2020-04-13 00:00:00', 'admin', '四月物业费');
INSERT INTO `wuyefei` VALUES (13, '张辽', 'A007', 1.8, '未缴纳', '2011年', '四月', 201.6, '2020-04-13 00:00:00', 'admin', '四月物业费');
INSERT INTO `wuyefei` VALUES (14, '王朝', 'B005', 1.8, '已缴纳', '2011年', '四月', 203.4, '2020-04-13 00:00:00', 'admin', '四月物业费');
INSERT INTO `wuyefei` VALUES (15, '貂蝉', 'A001', 1.8, '未缴纳', '2010年', '十一月', 216, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (16, '张达明', 'B001', 1.8, '已缴纳', '2010年', '十一月', 153, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (17, '曹操', 'A003', 1.8, '已缴纳', '2010年', '十一月', 154.8, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (18, '刘备', 'A004', 1.8, '已缴纳', '2010年', '十一月', 140.4, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (19, '张飞', 'C004', 1.8, '未缴纳', '2010年', '十一月', 120.6, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (20, '许褚', 'A006', 1.8, '未缴纳', '2010年', '十一月', 201.6, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (21, '张辽', 'A007', 1.8, '未缴纳', '2010年', '十一月', 201.6, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (22, '王朝', 'B005', 1.8, '未缴纳', '2010年', '十一月', 203.4, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (23, '罗天乐', 'C002', 1.8, '未缴纳', '2010年', '十一月', 185.4, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (24, '赵云', 'F002', 1.8, '已缴纳', '2010年', '十一月', 201.6, '2020-04-13 00:00:00', 'admin', '低洼地');
INSERT INTO `wuyefei` VALUES (25, '貂蝉', 'A001', 1.5, '未缴纳', '2010年', '十二月', 180, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (26, '张达明', 'B001', 1.5, '未缴纳', '2010年', '十二月', 127.5, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (27, '曹操', 'A003', 1.5, '未缴纳', '2010年', '十二月', 129, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (28, '刘备', 'A004', 1.5, '未缴纳', '2010年', '十二月', 117, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (29, '张飞', 'C004', 1.5, '未缴纳', '2010年', '十二月', 100.5, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (30, '许褚', 'A006', 1.5, '未缴纳', '2010年', '十二月', 168, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (31, '张辽', 'A007', 1.5, '未缴纳', '2010年', '十二月', 168, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (32, '王朝', 'B005', 1.5, '未缴纳', '2010年', '十二月', 169.5, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (33, '罗天乐', 'C002', 1.5, '未缴纳', '2010年', '十二月', 154.5, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (34, '赵云', 'F002', 1.5, '未缴纳', '2010年', '十二月', 168, '2020-04-13 00:00:00', 'admin', '2010年十二月物业费');
INSERT INTO `wuyefei` VALUES (35, '貂蝉', 'A001', 1.8, '未缴纳', '2010年', '五月', 216, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (36, '张达明', 'B001', 1.8, '未缴纳', '2010年', '五月', 153, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (37, '曹操', 'A003', 1.8, '未缴纳', '2010年', '五月', 154.8, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (38, '刘备', 'A004', 1.8, '未缴纳', '2010年', '五月', 140.4, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (39, '张飞', 'C004', 1.8, '未缴纳', '2010年', '五月', 120.6, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (40, '许褚', 'A006', 1.8, '未缴纳', '2010年', '五月', 201.6, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (41, '张辽', 'A007', 1.8, '未缴纳', '2010年', '五月', 201.6, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (42, '罗天乐', 'C002', 1.8, '未缴纳', '2010年', '五月', 185.4, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (43, '赵云', 'F002', 1.8, '未缴纳', '2010年', '五月', 201.6, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (44, '王朝', 'A034', 1.8, '未缴纳', '2010年', '五月', 216, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (45, '和东', 'A035', 1.8, '未缴纳', '2010年', '五月', 198, '2020-04-13 00:00:00', 'admin', '2010年五月物业费');
INSERT INTO `wuyefei` VALUES (46, '貂蝉', 'A001', 11, '已缴纳', '2010年', '一月', 1320, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (47, '张达明', 'B001', 11, '已缴纳', '2010年', '一月', 935, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (48, '曹操', 'A003', 11, '未缴纳', '2010年', '一月', 946, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (49, '刘备', 'A004', 11, '未缴纳', '2010年', '一月', 858, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (50, '张飞', 'C004', 11, '已缴纳', '2010年', '一月', 737, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (51, '许褚', 'A006', 11, '未缴纳', '2010年', '一月', 1232, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (52, '张辽', 'A007', 11, '未缴纳', '2010年', '一月', 1232, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (53, '罗天乐', 'C002', 11, '未缴纳', '2010年', '一月', 1133, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (54, '赵云', 'F002', 11, '未缴纳', '2010年', '一月', 1232, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (55, 'admin', 'A034', 11, '未缴纳', '2010年', '一月', 1320, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (56, '和东', 'A035', 11, '未缴纳', '2010年', '一月', 1210, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (57, '房祖名', 'P111', 11, '未缴纳', '2010年', '一月', 1221, '2020-04-13 00:00:00', '蒋', '11');
INSERT INTO `wuyefei` VALUES (58, '貂蝉', 'A001', 111, '已缴纳', '2017年', '一月', 13320, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (59, '张达明', 'B001', 111, '已缴纳', '2017年', '一月', 9435, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (60, '曹操', 'A003', 111, '已缴纳', '2017年', '一月', 9546, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (61, '刘备', 'A004', 111, '未缴纳', '2017年', '一月', 8658, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (62, '张飞', 'C004', 111, '已缴纳', '2017年', '一月', 7437, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (63, '许褚', 'A006', 111, '未缴纳', '2017年', '一月', 12432, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (64, '张辽', 'A007', 111, '未缴纳', '2017年', '一月', 12432, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (65, '罗天乐', 'C002', 111, '未缴纳', '2017年', '一月', 11433, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (66, '赵云', 'F002', 111, '未缴纳', '2017年', '一月', 12432, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (67, 'admin', 'A034', 111, '未缴纳', '2017年', '一月', 13320, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (68, '和东', 'A035', 111, '未缴纳', '2017年', '一月', 12210, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (69, '房祖名', 'P111', 111, '未缴纳', '2017年', '一月', 12321, '2020-04-13 00:00:00', '蒋', 'test');
INSERT INTO `wuyefei` VALUES (70, '貂蝉', 'A001', 1.5, '已缴纳', '2018年', '一月', 180, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (71, '张达明', 'B001', 1.5, '已缴纳', '2018年', '一月', 127.5, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (72, '曹操', 'A003', 1.5, '已缴纳', '2018年', '一月', 129, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (73, '刘备', 'A004', 1.5, '已缴纳', '2018年', '一月', 117, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (74, '张飞', 'C004', 1.5, '已缴纳', '2018年', '一月', 100.5, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (75, '许褚', 'A006', 1.5, '未缴纳', '2018年', '一月', 168, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (76, '张辽', 'A007', 1.5, '未缴纳', '2018年', '一月', 168, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (77, '罗天乐', 'C002', 1.5, '未缴纳', '2018年', '一月', 154.5, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (78, '赵云', 'F002', 1.5, '未缴纳', '2018年', '一月', 168, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (79, '房', 'A034', 1.5, '未缴纳', '2018年', '一月', 180, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (80, '和东', 'A035', 1.5, '未缴纳', '2018年', '一月', 165, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (81, '房祖名', 'P111', 1.5, '未缴纳', '2018年', '一月', 166.5, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (82, '阿青', 'A12', 1.5, '未缴纳', '2018年', '一月', 166.5, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');
INSERT INTO `wuyefei` VALUES (83, '小明', 'A99', 1.5, '未缴纳', '2018年', '一月', 166.5, '2020-04-13 00:00:00', '蒋哥', '物业费必须缴纳');

-- ----------------------------
-- Table structure for xuncha
-- ----------------------------
DROP TABLE IF EXISTS `xuncha`;
CREATE TABLE `xuncha`  (
  `xunchaID` int(11) NOT NULL AUTO_INCREMENT,
  `xuncha_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xuncha_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xuncha_time` datetime(0) NULL DEFAULT NULL,
  `xuncha_chuliren` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xuncha_dangshiren` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xuncha_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xuncha_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xunchaID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuncha
-- ----------------------------
INSERT INTO `xuncha` VALUES (1, '李东', '打架斗殴', '2020-04-13 00:00:00', '李东', '张达明、刘一多', '送派出所', '因为碰撞，产生摩擦，引起冲突，张达明先打了刘一多，随后两人互相殴打。');
INSERT INTO `xuncha` VALUES (2, '李东', '无', '2020-04-13 00:00:00', '李东', '张飞，曹操', '送派出所', '张飞吓曹操');
INSERT INTO `xuncha` VALUES (3, '张大', '打架斗殴', '2020-04-13 00:00:00', '张大', '张飞，关羽', '送派出所', '吵架');
INSERT INTO `xuncha` VALUES (4, '陆逊', '物品遗失', '2020-04-13 00:00:00', '陆逊', '曹操，刘备', '两败俱伤', '刘备打曹操');
INSERT INTO `xuncha` VALUES (5, '任强', '打架斗殴', '2020-04-13 00:00:00', '任强', '张东和李明', '送派出所', '吵架打架');

-- ----------------------------
-- Table structure for yezhu
-- ----------------------------
DROP TABLE IF EXISTS `yezhu`;
CREATE TABLE `yezhu`  (
  `yezhuID` int(11) NOT NULL AUTO_INCREMENT,
  `yezhu_homesnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yezhu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yezhu_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yezhu_age` int(11) NULL DEFAULT NULL,
  `yezhu_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yezhu_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yezhu_IDC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yezhu_member` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yezhu_date` datetime(0) NULL DEFAULT NULL,
  `yezhu_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yezhu_custom_account` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`yezhuID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yezhu
-- ----------------------------
INSERT INTO `yezhu` VALUES (2, 'B001', '张达明', '女', 23, '028-82252019', '13683411940', '523123121121312312', '儿子', '2020-04-13 00:00:00', '最近入住的新业主', 0);
INSERT INTO `yezhu` VALUES (3, 'A001', '貂蝉', '女', 18, '028-82252019', '13683411940', '510184198702258671', '吕布', '2020-04-13 00:00:00', '貂蝉与吕布', 0);
INSERT INTO `yezhu` VALUES (5, 'C004', '张飞', '男', 34, '028-83232323', '13632232324', '521312312313213123', '刘备，关羽', '2020-04-13 00:00:00', '张飞入住', 0);
INSERT INTO `yezhu` VALUES (7, 'A004', '刘备', '男', 36, '028-83223123', '13621312312', '513123123123123131', '张飞，关羽', '2020-04-13 00:00:00', '刘备入住', 0);
INSERT INTO `yezhu` VALUES (8, 'A003', '曹操', '男', 35, '028-32323232', '13623131231', '623232323232323232', '许褚，司马懿', '2020-04-13 00:00:00', '曹操入住', 0);
INSERT INTO `yezhu` VALUES (9, 'A006', '许褚', '男', 36, '028-23232323', '13523232323', '521312312312312312', '曹操', '2020-04-13 00:00:00', '大师大师的是大多数', 0);
INSERT INTO `yezhu` VALUES (11, 'A007', '张辽', '男', 24, '028-82252019', '13683411940', '510232323232323232', '无', '2020-04-13 00:00:00', '张辽', 0);
INSERT INTO `yezhu` VALUES (12, 'C002', '罗天乐', '男', 24, '028-82252019', '13621321312', '512121212121212121', '父亲，母亲', '2020-04-13 00:00:00', '描述信息', 0);
INSERT INTO `yezhu` VALUES (13, 'F002', '赵云', '男', 34, '028-23232323', '13434323232', '424123132123131312', '赵云', '2020-04-13 00:00:00', '赵云', 0);
INSERT INTO `yezhu` VALUES (14, 'A034', '房', '男', 23, '028-32323232', '13213123123', '512313123123123123', '父亲，母亲', '2020-04-13 00:00:00', '新入住的小区业主', 0);
INSERT INTO `yezhu` VALUES (15, 'A035', '和东', '男', 24, '028-23213123', '13521323131', '521321321321312313', '无', '2020-04-13 00:00:00', '新入住的业主', 0);
INSERT INTO `yezhu` VALUES (16, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-04-13 00:00:00', NULL, 0);
INSERT INTO `yezhu` VALUES (17, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-04-13 00:00:00', NULL, 0);
INSERT INTO `yezhu` VALUES (18, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-04-13 00:00:00', NULL, 0);
INSERT INTO `yezhu` VALUES (19, 'P111', '房祖名', '男', 99, '89604296', '13079296666', '210113199409075666', '儿子儿子', '2020-04-13 00:00:00', '儿子儿子儿子儿子', 0);
INSERT INTO `yezhu` VALUES (20, 'A12', '阿青', '男', 11, '89604296', '13079795555', '210113199409072222', '小强', '2020-04-13 00:00:00', 'test1', 0);
INSERT INTO `yezhu` VALUES (21, 'A99', '小明', '男', 23, '89607777', '15840110955', '210113199509098888', '儿子小强，妻子小娇', '2020-04-13 00:00:00', 'test', 0);
INSERT INTO `yezhu` VALUES (22, 'A132', '业主', '男', 23, '89890000', '13137666000', '210114199909099999', '儿子', '2020-04-13 00:00:00', 'test', 0);
INSERT INTO `yezhu` VALUES (23, 'A111', '张三三', '男', 23, '11111111', '13079299999', '210111111111111111', 'ERZI', '2020-04-13 00:00:00', 'TEST', 0);

SET FOREIGN_KEY_CHECKS = 1;
