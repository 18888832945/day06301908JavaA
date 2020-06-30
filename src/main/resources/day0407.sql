/*
Navicat MySQL Data Transfer

Source Server         : 1906JavaA
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : day0407

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2020-06-24 16:33:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_dept`
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `deptid` bigint(20) NOT NULL,
  `dname` varchar(255) DEFAULT NULL,
  `ddesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '教务处', null);
INSERT INTO `t_dept` VALUES ('2', '保卫处', null);
INSERT INTO `t_dept` VALUES ('3', '学生处', null);
INSERT INTO `t_dept` VALUES ('4', '大数据', null);
INSERT INTO `t_dept` VALUES ('5', '互联网', null);
INSERT INTO `t_dept` VALUES ('6', '物联网', null);
INSERT INTO `t_dept` VALUES ('7', '办公室', null);
INSERT INTO `t_dept` VALUES ('8', '乐柠请假', null);

-- ----------------------------
-- Table structure for `t_grade`
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `gid` int(11) NOT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('1', '1908JavaA', '32', '38');
INSERT INTO `t_grade` VALUES ('2', '1909JavaA', '32', '37');
INSERT INTO `t_grade` VALUES ('3', '1911JavaA', '32', '37');
INSERT INTO `t_grade` VALUES ('4', '2001JavaA', '32', '38');

-- ----------------------------
-- Table structure for `t_pmx`
-- ----------------------------
DROP TABLE IF EXISTS `t_pmx`;
CREATE TABLE `t_pmx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `pyijian` varchar(255) DEFAULT NULL,
  `pstatus` int(11) DEFAULT NULL,
  `pshunxu` int(11) DEFAULT NULL,
  `shdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pmx
-- ----------------------------
INSERT INTO `t_pmx` VALUES ('19', '12', '38', '0', null, '2', '1', '2020-06-24 11:56:07');
INSERT INTO `t_pmx` VALUES ('20', '12', '32', '2', null, '2', '2', '2020-06-24 11:56:07');
INSERT INTO `t_pmx` VALUES ('21', '13', '38', '1', null, '2', '1', '2020-06-24 14:16:38');
INSERT INTO `t_pmx` VALUES ('22', '13', '32', '1', null, '2', '2', '2020-06-24 14:16:38');
INSERT INTO `t_pmx` VALUES ('23', '13', '1', '2', null, '2', '3', '2020-06-24 14:16:38');
INSERT INTO `t_pmx` VALUES ('24', '14', '38', '1', null, '2', '1', '2020-06-24 14:18:59');
INSERT INTO `t_pmx` VALUES ('25', '14', '32', '1', null, '2', '2', '2020-06-24 14:18:59');
INSERT INTO `t_pmx` VALUES ('26', '14', '1', '1', null, '2', '3', '2020-06-24 14:18:59');
INSERT INTO `t_pmx` VALUES ('27', '14', '2', '1', null, '2', '4', '2020-06-24 14:18:59');
INSERT INTO `t_pmx` VALUES ('28', '15', '37', '1', null, '2', '1', '2020-06-24 14:28:47');
INSERT INTO `t_pmx` VALUES ('29', '15', '32', '1', null, '2', '2', '2020-06-24 14:28:47');
INSERT INTO `t_pmx` VALUES ('30', '15', '1', '2', null, '2', '3', '2020-06-24 14:28:47');
INSERT INTO `t_pmx` VALUES ('31', '15', '2', '0', null, '0', '4', '2020-06-24 14:28:47');
INSERT INTO `t_pmx` VALUES ('32', '16', '37', '2', null, '2', '1', '2020-06-24 14:39:55');
INSERT INTO `t_pmx` VALUES ('33', '16', '32', '0', null, '0', '2', '2020-06-24 14:39:55');
INSERT INTO `t_pmx` VALUES ('34', '17', '38', '0', null, '1', '1', '2020-06-24 16:24:50');
INSERT INTO `t_pmx` VALUES ('35', '17', '32', '0', null, '0', '2', '2020-06-24 16:24:50');
INSERT INTO `t_pmx` VALUES ('36', '17', '1', '0', null, '0', '3', '2020-06-24 16:24:50');
INSERT INTO `t_pmx` VALUES ('37', '17', '2', '0', null, '0', '4', '2020-06-24 16:24:50');

-- ----------------------------
-- Table structure for `t_power`
-- ----------------------------
DROP TABLE IF EXISTS `t_power`;
CREATE TABLE `t_power` (
  `id` bigint(20) unsigned NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `isbutton` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_power
-- ----------------------------
INSERT INTO `t_power` VALUES ('1', '0', '乐柠内部管理系统', 'csstree/img/diy/5.png', 'page/right.jsp', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('2', '4', '查询信息', null, 'user_toQueryInfoPage.action', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('3', '1', '系统管理', '', 'page/right.jsp', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('4', '1', '数据同步', null, 'page/right.jsp', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('5', '4', '同步信息', null, 'page/right.jsp', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('6', '4', '重新查询', null, 'user_toQueryInfoPage2.action', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('8', '3', '员工列表', '', 'getUserList.do', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('10', '3', '部门列表', null, 'getDeptList.do', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('11', '3', '角色列表', '', 'findRole.do', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('12', '1', '新闻管理', null, 'page/right.jsp', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('13', '12', '新闻列表', null, 'page/right.jsp', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('14', '8', '去给员工分配部门', null, 'toUserDeptRole.do', 'rightFrame', '是');
INSERT INTO `t_power` VALUES ('15', '8', 'ajax获取部门的角色列表', null, 'getRlistJosn.do', 'rightFrame', '是');
INSERT INTO `t_power` VALUES ('16', '8', '保存用户分配部门', null, 'saveUserDeptRole.do', 'rightFrame', '是');
INSERT INTO `t_power` VALUES ('17', '10', '去给部门选择角色', null, 'toDeptRole.do', 'rightFrame', '是');
INSERT INTO `t_power` VALUES ('18', '10', '保存部门选择角色', null, 'saveDeptRole.do', 'rightFrame', '是');
INSERT INTO `t_power` VALUES ('19', '11', '去给角色分配权限', null, 'toRolePower.do', 'rightFrame', '是');
INSERT INTO `t_power` VALUES ('20', '11', '保存角色分配权限', null, 'saveRolePower.do', 'rightFrame', '是');
INSERT INTO `t_power` VALUES ('21', '1', '请假模块', null, 'page/right.jsp', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('22', '21', '我的请假', null, 'getStuJtList.do', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('23', '21', '我的审核', null, 'getQjShList.do', 'rightFrame', '否');
INSERT INTO `t_power` VALUES ('24', '21', '请假记录', null, 'page/right.jsp', 'rightFrame', '否');

-- ----------------------------
-- Table structure for `t_process`
-- ----------------------------
DROP TABLE IF EXISTS `t_process`;
CREATE TABLE `t_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `qjtime` double DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `qjcause` varchar(255) DEFAULT NULL,
  `qjstatus` int(11) DEFAULT NULL,
  `qjdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_process
-- ----------------------------
INSERT INTO `t_process` VALUES ('12', '31', '0.5', '2020-06-02 08:00:00', '2020-06-18 08:00:00', '学驾照', '2', '2020-06-24 11:56:07');
INSERT INTO `t_process` VALUES ('13', '31', '2', '2020-06-02 08:00:00', '2020-06-11 08:00:00', '相亲', '2', '2020-06-24 14:16:38');
INSERT INTO `t_process` VALUES ('14', '31', '8', '2020-06-02 08:00:00', '2020-06-26 08:00:00', '结婚', '1', '2020-06-24 14:18:59');
INSERT INTO `t_process` VALUES ('15', '35', '8', '2020-06-03 08:00:00', '2020-06-25 08:00:00', '结婚', '2', '2020-06-24 14:28:47');
INSERT INTO `t_process` VALUES ('16', '35', '0.5', '2020-06-03 08:00:00', '2020-06-10 08:00:00', '学驾照', '2', '2020-06-24 14:39:55');
INSERT INTO `t_process` VALUES ('17', '31', '8', '2020-06-09 08:00:00', '2020-06-17 08:00:00', '相亲', '0', '2020-06-24 16:24:50');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `rid` bigint(20) NOT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `deptid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `FK_itkx4vcp3m9ltqabn1me3qesl` (`deptid`),
  CONSTRAINT `t_role_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `t_dept` (`deptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '院长', '1');
INSERT INTO `t_role` VALUES ('2', '董事长', '7');
INSERT INTO `t_role` VALUES ('3', '副董事长', '7');
INSERT INTO `t_role` VALUES ('4', '校长', '7');
INSERT INTO `t_role` VALUES ('5', '主任', '5');
INSERT INTO `t_role` VALUES ('6', '职员', '2');
INSERT INTO `t_role` VALUES ('7', '保安', '2');
INSERT INTO `t_role` VALUES ('8', '测评干事', '1');
INSERT INTO `t_role` VALUES ('9', '学籍干事', '1');
INSERT INTO `t_role` VALUES ('10', '门卫', null);
INSERT INTO `t_role` VALUES ('11', '教导科科长', '3');
INSERT INTO `t_role` VALUES ('12', '教导干事', '3');
INSERT INTO `t_role` VALUES ('13', '宿管阿姨', '3');
INSERT INTO `t_role` VALUES ('14', '大数据讲师', '4');
INSERT INTO `t_role` VALUES ('15', '大数据助教', '4');
INSERT INTO `t_role` VALUES ('16', 'php讲师', '5');
INSERT INTO `t_role` VALUES ('17', '网页讲师', '5');
INSERT INTO `t_role` VALUES ('18', '.net讲师', '6');
INSERT INTO `t_role` VALUES ('19', 'html讲师', '6');
INSERT INTO `t_role` VALUES ('20', '圣斗士', '7');
INSERT INTO `t_role` VALUES ('21', '乐柠院长', '8');
INSERT INTO `t_role` VALUES ('22', '乐柠主任', '8');
INSERT INTO `t_role` VALUES ('23', '乐柠讲师', '8');
INSERT INTO `t_role` VALUES ('24', '乐柠辅导员', '8');
INSERT INTO `t_role` VALUES ('25', '乐柠学生', '8');

-- ----------------------------
-- Table structure for `t_r_p`
-- ----------------------------
DROP TABLE IF EXISTS `t_r_p`;
CREATE TABLE `t_r_p` (
  `rid` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`rid`,`id`),
  KEY `FK_qak1swx1el1cdcx8ngumlpa77` (`rid`),
  CONSTRAINT `t_r_p_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `t_role` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_r_p
-- ----------------------------
INSERT INTO `t_r_p` VALUES ('1', '1');
INSERT INTO `t_r_p` VALUES ('1', '2');
INSERT INTO `t_r_p` VALUES ('1', '3');
INSERT INTO `t_r_p` VALUES ('1', '4');
INSERT INTO `t_r_p` VALUES ('1', '5');
INSERT INTO `t_r_p` VALUES ('1', '6');
INSERT INTO `t_r_p` VALUES ('1', '8');
INSERT INTO `t_r_p` VALUES ('1', '10');
INSERT INTO `t_r_p` VALUES ('1', '11');
INSERT INTO `t_r_p` VALUES ('1', '30');
INSERT INTO `t_r_p` VALUES ('1', '31');
INSERT INTO `t_r_p` VALUES ('4', '1');
INSERT INTO `t_r_p` VALUES ('4', '4');
INSERT INTO `t_r_p` VALUES ('4', '6');
INSERT INTO `t_r_p` VALUES ('5', '1');
INSERT INTO `t_r_p` VALUES ('5', '2');
INSERT INTO `t_r_p` VALUES ('5', '3');
INSERT INTO `t_r_p` VALUES ('5', '4');
INSERT INTO `t_r_p` VALUES ('5', '5');
INSERT INTO `t_r_p` VALUES ('5', '6');
INSERT INTO `t_r_p` VALUES ('5', '8');
INSERT INTO `t_r_p` VALUES ('5', '10');
INSERT INTO `t_r_p` VALUES ('5', '11');
INSERT INTO `t_r_p` VALUES ('5', '12');
INSERT INTO `t_r_p` VALUES ('5', '13');
INSERT INTO `t_r_p` VALUES ('5', '14');
INSERT INTO `t_r_p` VALUES ('5', '15');
INSERT INTO `t_r_p` VALUES ('5', '16');
INSERT INTO `t_r_p` VALUES ('5', '17');
INSERT INTO `t_r_p` VALUES ('5', '18');
INSERT INTO `t_r_p` VALUES ('5', '19');
INSERT INTO `t_r_p` VALUES ('5', '20');
INSERT INTO `t_r_p` VALUES ('5', '21');
INSERT INTO `t_r_p` VALUES ('5', '22');
INSERT INTO `t_r_p` VALUES ('5', '23');
INSERT INTO `t_r_p` VALUES ('5', '24');
INSERT INTO `t_r_p` VALUES ('5', '25');
INSERT INTO `t_r_p` VALUES ('5', '26');
INSERT INTO `t_r_p` VALUES ('5', '27');
INSERT INTO `t_r_p` VALUES ('5', '28');
INSERT INTO `t_r_p` VALUES ('5', '29');
INSERT INTO `t_r_p` VALUES ('5', '30');
INSERT INTO `t_r_p` VALUES ('5', '31');
INSERT INTO `t_r_p` VALUES ('6', '1');
INSERT INTO `t_r_p` VALUES ('6', '2');
INSERT INTO `t_r_p` VALUES ('6', '3');
INSERT INTO `t_r_p` VALUES ('6', '4');
INSERT INTO `t_r_p` VALUES ('6', '5');
INSERT INTO `t_r_p` VALUES ('6', '6');
INSERT INTO `t_r_p` VALUES ('6', '8');
INSERT INTO `t_r_p` VALUES ('6', '12');
INSERT INTO `t_r_p` VALUES ('6', '14');
INSERT INTO `t_r_p` VALUES ('7', '1');
INSERT INTO `t_r_p` VALUES ('7', '2');
INSERT INTO `t_r_p` VALUES ('7', '3');
INSERT INTO `t_r_p` VALUES ('7', '4');
INSERT INTO `t_r_p` VALUES ('7', '5');
INSERT INTO `t_r_p` VALUES ('7', '6');
INSERT INTO `t_r_p` VALUES ('7', '8');
INSERT INTO `t_r_p` VALUES ('7', '10');
INSERT INTO `t_r_p` VALUES ('7', '11');
INSERT INTO `t_r_p` VALUES ('7', '12');
INSERT INTO `t_r_p` VALUES ('7', '13');
INSERT INTO `t_r_p` VALUES ('7', '14');
INSERT INTO `t_r_p` VALUES ('7', '15');
INSERT INTO `t_r_p` VALUES ('7', '16');
INSERT INTO `t_r_p` VALUES ('7', '17');
INSERT INTO `t_r_p` VALUES ('7', '18');
INSERT INTO `t_r_p` VALUES ('7', '19');
INSERT INTO `t_r_p` VALUES ('7', '20');
INSERT INTO `t_r_p` VALUES ('7', '21');
INSERT INTO `t_r_p` VALUES ('7', '22');
INSERT INTO `t_r_p` VALUES ('7', '23');
INSERT INTO `t_r_p` VALUES ('7', '24');
INSERT INTO `t_r_p` VALUES ('7', '25');
INSERT INTO `t_r_p` VALUES ('7', '26');
INSERT INTO `t_r_p` VALUES ('7', '27');
INSERT INTO `t_r_p` VALUES ('7', '28');
INSERT INTO `t_r_p` VALUES ('7', '29');
INSERT INTO `t_r_p` VALUES ('7', '30');
INSERT INTO `t_r_p` VALUES ('7', '31');
INSERT INTO `t_r_p` VALUES ('10', '1');
INSERT INTO `t_r_p` VALUES ('10', '2');
INSERT INTO `t_r_p` VALUES ('10', '3');
INSERT INTO `t_r_p` VALUES ('10', '4');
INSERT INTO `t_r_p` VALUES ('10', '5');
INSERT INTO `t_r_p` VALUES ('10', '6');
INSERT INTO `t_r_p` VALUES ('10', '8');
INSERT INTO `t_r_p` VALUES ('10', '10');
INSERT INTO `t_r_p` VALUES ('10', '11');
INSERT INTO `t_r_p` VALUES ('10', '12');
INSERT INTO `t_r_p` VALUES ('10', '13');
INSERT INTO `t_r_p` VALUES ('10', '14');
INSERT INTO `t_r_p` VALUES ('10', '15');
INSERT INTO `t_r_p` VALUES ('10', '16');
INSERT INTO `t_r_p` VALUES ('10', '17');
INSERT INTO `t_r_p` VALUES ('10', '18');
INSERT INTO `t_r_p` VALUES ('10', '19');
INSERT INTO `t_r_p` VALUES ('10', '20');
INSERT INTO `t_r_p` VALUES ('10', '21');
INSERT INTO `t_r_p` VALUES ('10', '22');
INSERT INTO `t_r_p` VALUES ('10', '23');
INSERT INTO `t_r_p` VALUES ('10', '24');
INSERT INTO `t_r_p` VALUES ('10', '25');
INSERT INTO `t_r_p` VALUES ('10', '26');
INSERT INTO `t_r_p` VALUES ('10', '27');
INSERT INTO `t_r_p` VALUES ('10', '28');
INSERT INTO `t_r_p` VALUES ('10', '29');
INSERT INTO `t_r_p` VALUES ('10', '30');
INSERT INTO `t_r_p` VALUES ('10', '31');
INSERT INTO `t_r_p` VALUES ('13', '1');
INSERT INTO `t_r_p` VALUES ('13', '30');
INSERT INTO `t_r_p` VALUES ('13', '31');
INSERT INTO `t_r_p` VALUES ('14', '1');
INSERT INTO `t_r_p` VALUES ('14', '30');
INSERT INTO `t_r_p` VALUES ('14', '31');
INSERT INTO `t_r_p` VALUES ('15', '1');
INSERT INTO `t_r_p` VALUES ('15', '2');
INSERT INTO `t_r_p` VALUES ('15', '3');
INSERT INTO `t_r_p` VALUES ('15', '4');
INSERT INTO `t_r_p` VALUES ('15', '5');
INSERT INTO `t_r_p` VALUES ('15', '6');
INSERT INTO `t_r_p` VALUES ('15', '8');
INSERT INTO `t_r_p` VALUES ('15', '10');
INSERT INTO `t_r_p` VALUES ('15', '11');
INSERT INTO `t_r_p` VALUES ('15', '12');
INSERT INTO `t_r_p` VALUES ('15', '13');
INSERT INTO `t_r_p` VALUES ('15', '14');
INSERT INTO `t_r_p` VALUES ('15', '15');
INSERT INTO `t_r_p` VALUES ('15', '16');
INSERT INTO `t_r_p` VALUES ('15', '17');
INSERT INTO `t_r_p` VALUES ('15', '18');
INSERT INTO `t_r_p` VALUES ('15', '19');
INSERT INTO `t_r_p` VALUES ('15', '20');
INSERT INTO `t_r_p` VALUES ('20', '1');
INSERT INTO `t_r_p` VALUES ('20', '2');
INSERT INTO `t_r_p` VALUES ('20', '3');
INSERT INTO `t_r_p` VALUES ('20', '4');
INSERT INTO `t_r_p` VALUES ('20', '5');
INSERT INTO `t_r_p` VALUES ('20', '6');
INSERT INTO `t_r_p` VALUES ('20', '8');
INSERT INTO `t_r_p` VALUES ('20', '10');
INSERT INTO `t_r_p` VALUES ('20', '11');
INSERT INTO `t_r_p` VALUES ('20', '30');
INSERT INTO `t_r_p` VALUES ('20', '31');
INSERT INTO `t_r_p` VALUES ('21', '1');
INSERT INTO `t_r_p` VALUES ('21', '21');
INSERT INTO `t_r_p` VALUES ('21', '23');
INSERT INTO `t_r_p` VALUES ('22', '1');
INSERT INTO `t_r_p` VALUES ('22', '21');
INSERT INTO `t_r_p` VALUES ('22', '23');
INSERT INTO `t_r_p` VALUES ('23', '1');
INSERT INTO `t_r_p` VALUES ('23', '21');
INSERT INTO `t_r_p` VALUES ('23', '23');
INSERT INTO `t_r_p` VALUES ('24', '1');
INSERT INTO `t_r_p` VALUES ('24', '21');
INSERT INTO `t_r_p` VALUES ('24', '23');
INSERT INTO `t_r_p` VALUES ('25', '1');
INSERT INTO `t_r_p` VALUES ('25', '21');
INSERT INTO `t_r_p` VALUES ('25', '22');

-- ----------------------------
-- Table structure for `t_smoke`
-- ----------------------------
DROP TABLE IF EXISTS `t_smoke`;
CREATE TABLE `t_smoke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardno` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `madetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_smoke
-- ----------------------------
INSERT INTO `t_smoke` VALUES ('1', 'xy0001', '北京', '20', '中南海', '2019-10-20');
INSERT INTO `t_smoke` VALUES ('2', 'xy0002', '南京', '100', '九五之尊', '2019-10-19');
INSERT INTO `t_smoke` VALUES ('3', 'xy0003', '长沙', '200', '和天下', '2020-01-19');
INSERT INTO `t_smoke` VALUES ('4', 'xy00001', '北京', '35', '黄鹤楼', '2018-06-02 11:37:17');
INSERT INTO `t_smoke` VALUES ('5', 'xy00001', '北京', '15', '中南海', '2020-03-20');
INSERT INTO `t_smoke` VALUES ('6', 'xy00001', '北京', '15', '中南海%', '2020-03-20');
INSERT INTO `t_smoke` VALUES ('7', 'xy00001', '北京', '15', '中南海%', '2020-03-20');
INSERT INTO `t_smoke` VALUES ('8', 'xy00001', '北京', '15', '中南海%', '2020-03-20');
INSERT INTO `t_smoke` VALUES ('9', 'xy00001', '北京', '15', '中南海%', '2020-03-20');
INSERT INTO `t_smoke` VALUES ('10', 'xy00001', '北京', '15', '中南海%', '2020-03-20');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `deptid` bigint(20) DEFAULT NULL,
  `rid` bigint(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4q98lye28cdsncnvb30hnigxj` (`deptid`),
  KEY `FK_7bwqwyo21bd8m5u6dui3fo3tq` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '通天教主', '11111', '8', '22', '18', '2020-04-07', null);
INSERT INTO `t_user` VALUES ('2', '元始天尊', '2222', '8', '21', '23', null, null);
INSERT INTO `t_user` VALUES ('3', '太上老君', '3333', '2', '7', '35', null, null);
INSERT INTO `t_user` VALUES ('7', '李四', '123', '8', '23', '222', null, null);
INSERT INTO `t_user` VALUES ('30', 'admin', 'admin', '4', '15', '18', '2020-04-06', null);
INSERT INTO `t_user` VALUES ('31', '张三', '123', '8', '25', '24', '2020-06-08', '1');
INSERT INTO `t_user` VALUES ('32', '王五', '123', '8', '24', '22', null, null);
INSERT INTO `t_user` VALUES ('33', '赵六', '123', '8', '22', '22', null, null);
INSERT INTO `t_user` VALUES ('34', '田七', '123', '8', '21', '22', null, null);
INSERT INTO `t_user` VALUES ('35', '张三2', '123', '8', '25', null, null, '2');
INSERT INTO `t_user` VALUES ('36', '张三3', '123', '8', '25', null, null, null);
INSERT INTO `t_user` VALUES ('37', '孙八', '123', '8', '23', null, null, null);
INSERT INTO `t_user` VALUES ('38', '赵一伤', '123', '8', '23', null, null, null);

-- ----------------------------
-- Table structure for `t_wine`
-- ----------------------------
DROP TABLE IF EXISTS `t_wine`;
CREATE TABLE `t_wine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardno` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `vol` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `madetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wine
-- ----------------------------
INSERT INTO `t_wine` VALUES ('1', 'js0001', '北京', '15', '42%', '牛栏山', '2010-10-10');
INSERT INTO `t_wine` VALUES ('2', 'js0002', '宿迁', '900', '52%', '梦之蓝', '2019-10-29');
