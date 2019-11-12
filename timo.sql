/*
Navicat MySQL Data Transfer

Source Server         : 12
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : timo

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-12 17:16:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_action_log`;
CREATE TABLE `sys_action_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '日志类型',
  `ipaddr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `clazz` varchar(255) DEFAULT NULL COMMENT '产生日志的类',
  `method` varchar(255) DEFAULT NULL COMMENT '产生日志的方法',
  `model` varchar(255) DEFAULT NULL COMMENT '产生日志的表',
  `record_id` bigint(20) DEFAULT NULL COMMENT '产生日志的数据id',
  `message` text COMMENT '日志消息',
  `create_date` datetime DEFAULT NULL COMMENT '记录时间',
  `oper_name` varchar(255) DEFAULT NULL COMMENT '产生日志的用户昵称',
  `oper_by` bigint(20) DEFAULT NULL COMMENT '产生日志的用户',
  PRIMARY KEY (`id`),
  KEY `FK32gm4dja0jetx58r9dc2uljiu` (`oper_by`),
  CONSTRAINT `FK32gm4dja0jetx58r9dc2uljiu` FOREIGN KEY (`oper_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_action_log
-- ----------------------------
INSERT INTO `sys_action_log` VALUES ('1', '用户登录', '2', '127.0.0.1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-10-31 15:20:29', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('2', '用户登录', '2', '127.0.0.1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-10-31 17:51:54', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('3', '用户管理', '1', '127.0.0.1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '1', '更新用户成功：admin', '2019-10-31 18:04:23', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('4', '用户登录', '2', '127.0.0.1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录失败：[admin]用户名或密码错误', '2019-11-01 15:36:05', 'admin', null);
INSERT INTO `sys_action_log` VALUES ('5', '用户登录', '2', '127.0.0.1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录失败：[admin]用户名或密码错误', '2019-11-01 15:36:16', 'admin', null);
INSERT INTO `sys_action_log` VALUES ('6', '用户登录', '2', '127.0.0.1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-01 15:36:37', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('7', '用户登录', '2', '127.0.0.1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-06 19:51:41', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('8', '字典管理', '1', '127.0.0.1', 'com.linln.admin.system.controller.DictController', 'save', 'sys_dict', '4', '更新字典：菜单类型', '2019-11-06 20:08:46', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('9', '用户密码', '1', '127.0.0.1', 'com.linln.admin.system.controller.UserController', 'editPassword', 'sys_user', '1', '修改用户密码成功admin', '2019-11-06 20:09:17', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('10', '用户密码', '1', '127.0.0.1', 'com.linln.admin.system.controller.UserController', 'editPassword', 'sys_user', '2', '修改用户密码成功linln', '2019-11-06 20:09:17', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('216', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 10:02:27', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('217', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 10:02:30', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('218', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 10:04:05', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('219', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录失败：[admin]用户名或密码错误', '2019-11-11 10:28:52', 'admin', null);
INSERT INTO `sys_action_log` VALUES ('220', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 10:29:00', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('221', '用户密码', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'editPassword', 'sys_user', '2', '修改用户密码成功linln', '2019-11-11 10:35:15', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('222', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录失败：[linlin]用户名或密码错误', '2019-11-11 10:35:37', 'linlin', null);
INSERT INTO `sys_action_log` VALUES ('223', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 10:35:41', '小懒虫', '2');
INSERT INTO `sys_action_log` VALUES ('224', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 10:38:07', '小懒虫', '2');
INSERT INTO `sys_action_log` VALUES ('225', '用户管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.UserController', 'save', 'sys_user', '3', '添加用户成功：uu', '2019-11-11 10:39:23', '小懒虫', '2');
INSERT INTO `sys_action_log` VALUES ('226', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 10:41:11', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('227', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 11:21:08', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('228', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 11:30:45', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('229', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 11:31:17', '小懒虫', '2');
INSERT INTO `sys_action_log` VALUES ('230', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:00:58', '小懒虫', '2');
INSERT INTO `sys_action_log` VALUES ('231', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:01:23', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('232', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:02:11', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('233', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:02:54', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('234', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:03:39', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('235', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录失败：[admin]用户名或密码错误', '2019-11-11 12:11:12', 'admin', null);
INSERT INTO `sys_action_log` VALUES ('236', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:11:16', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('237', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:11:35', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('238', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:15:10', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('239', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 12:45:59', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('240', '部门管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DeptController', 'save', 'sys_dept', '6', '添加部门：dfg', '2019-11-11 14:00:08', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('241', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '147', '添加菜单：婚纱礼服', '2019-11-11 14:18:12', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('242', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 14:36:17', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('243', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 14:51:54', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('244', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '147', '更新菜单：婚纱礼服', '2019-11-11 14:52:21', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('245', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '147', '更新菜单：婚纱礼服', '2019-11-11 14:54:12', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('246', '菜单管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'save', 'sys_menu', '147', '更新菜单：婚纱礼服', '2019-11-11 14:54:54', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('247', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-11 15:10:57', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('248', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 08:02:50', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('249', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录失败：[admin]用户名或密码错误', '2019-11-12 09:00:43', 'admin', null);
INSERT INTO `sys_action_log` VALUES ('250', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 09:00:47', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('251', '菜单状态', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'status', null, null, '删除ID：[148]', '2019-11-12 09:02:33', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('252', '菜单状态', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'status', null, null, '删除ID：[153]', '2019-11-12 09:21:40', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('253', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 09:53:14', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('254', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 10:26:00', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('255', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 10:35:52', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('256', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 10:47:21', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('257', '菜单状态', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.MenuController', 'status', null, null, '删除ID：[158]', '2019-11-12 10:47:33', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('258', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 10:49:54', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('259', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 10:56:08', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('260', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 11:07:48', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('261', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 11:09:44', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('262', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 11:10:21', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('263', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 11:13:17', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('264', '字典管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DictController', 'save', 'sys_dict', '7', '添加字典：库房', '2019-11-12 11:29:41', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('265', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 11:34:52', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('266', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 12:27:30', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('267', '字典管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DictController', 'save', 'sys_dict', '8', '添加字典：厂家', '2019-11-12 12:48:07', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('268', '字典管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DictController', 'save', 'sys_dict', '8', '更新字典：厂家', '2019-11-12 12:48:33', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('269', '字典管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DictController', 'save', 'sys_dict', '9', '添加字典：婚纱分类', '2019-11-12 12:50:06', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('270', '字典管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DictController', 'save', 'sys_dict', '9', '更新字典：婚纱分类', '2019-11-12 12:50:37', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('271', '字典管理', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DictController', 'save', 'sys_dict', '10', '添加字典：婚纱类别', '2019-11-12 12:53:20', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('272', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 13:44:49', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('273', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 13:45:32', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('274', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录失败：[admin]用户名或密码错误', '2019-11-12 13:50:12', 'admin', null);
INSERT INTO `sys_action_log` VALUES ('275', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 13:50:22', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('276', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 13:50:50', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('277', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 13:53:49', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('278', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 13:55:34', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('279', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 13:55:59', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('280', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 14:03:04', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('281', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 14:10:08', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('282', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 14:13:45', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('283', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 14:17:53', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('284', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 14:26:19', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('285', '系统异常', '3', '0:0:0:0:0:0:0:1', 'com.linln.component.actionLog.exception.ActionLogProceedAdvice', 'run', null, null, 'org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'com.linln.modules.system.domain.Menu\'; nested exception is org.springframework.core.convert.ConversionFailedException: Failed to convert from type [java.lang.String] to type [java.lang.Long] for value \'{{id}}\'; nested exception is java.lang.NumberFormatException: For input string: \"{{id}}\"\n	org.springframework.web.method.annotation.AbstractNamedValueMethodArgumentResolver.resolveArgument(AbstractNamedValueMethodArgumentResolver.java:132)\n	org.springframework.web.method.support.HandlerMethodArgumentResolverComposite.resolveArgument(HandlerMethodArgumentResolverComposite.java:126)\n	org.springframework.web.method.support.InvocableHandlerMethod.getMethodArgumentValues(InvocableHandlerMethod.java:166)\n	org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:134)\n	org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:892)\n	org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:797)\n	org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\n	org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\n	org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1005)\n	org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:897)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\n	org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:882)\n	javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\n	org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	com.linln.common.xss.XssFilter.doFilter(XssFilter.java:47)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:92)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:93)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\n	org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:200)\n	org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\n	org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\n	org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\n	org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\n	org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\n	org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\n	org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\n	org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\n	org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:834)\n	org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\n	org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\n	java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)\n	java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)\n	org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	java.base/java.lang.Thread.run(Thread.java:834)', '2019-11-12 14:26:24', '系统', '1');
INSERT INTO `sys_action_log` VALUES ('286', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 14:26:50', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('287', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 14:44:21', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('288', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 15:36:20', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('289', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 15:37:45', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('290', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 15:40:22', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('291', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 15:45:06', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('292', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 15:46:21', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('293', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 15:47:39', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('294', '用户登录', '2', '192.168.1.97', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 15:57:54', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('295', '字典状态', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DictController', 'status', null, null, '冻结ID：[3]', '2019-11-12 16:04:31', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('296', '字典状态', '1', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.DictController', 'status', null, null, '启用ID：[3]', '2019-11-12 16:04:47', '超级管理员', '1');
INSERT INTO `sys_action_log` VALUES ('297', '用户登录', '2', '0:0:0:0:0:0:0:1', 'com.linln.admin.system.controller.LoginController', 'login', null, null, '后台登录成功', '2019-11-12 16:36:00', '超级管理员', '1');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `pid` bigint(20) DEFAULT NULL COMMENT '父级ID',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有父级编号',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKifwd1h4ciusl3nnxrpfpv316u` (`create_by`),
  KEY `FK83g45s1cjqqfpifhulqhv807m` (`update_by`),
  CONSTRAINT `FK83g45s1cjqqfpifhulqhv807m` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKifwd1h4ciusl3nnxrpfpv316u` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '总公司', '0', '[0]', '1', '', '2018-12-02 17:41:23', '2019-02-23 02:41:28', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('2', '技术部门', '1', '[0],[1]', '1', '', '2018-12-02 17:51:04', '2019-04-27 13:12:46', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('3', '市场部门', '1', '[0],[1]', '2', '', '2018-12-02 17:51:42', '2019-04-27 13:12:20', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('4', '研发部门', '1', '[0],[1]', '3', '', '2018-12-02 17:51:55', '2019-04-27 13:12:20', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('5', '测试部门', '1', '[0],[1]', '4', '', '2018-12-02 17:52:07', '2019-04-27 13:12:20', '1', '1', '1');
INSERT INTO `sys_dept` VALUES ('6', 'dfg', '0', '[0]', '2', 'wer', '2019-11-11 14:00:07', '2019-11-11 14:00:07', '1', '1', '1');

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '字典名称',
  `name` varchar(255) DEFAULT NULL COMMENT '字典键名',
  `type` tinyint(4) DEFAULT NULL COMMENT '字典类型',
  `value` text COMMENT '字典键值',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKag4shuprf2tjot9i1mhh37kk6` (`create_by`),
  KEY `FKoyng5jlifhsme0gc1lwiub0lr` (`update_by`),
  CONSTRAINT `FKag4shuprf2tjot9i1mhh37kk6` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKoyng5jlifhsme0gc1lwiub0lr` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '数据状态', 'DATA_STATUS', '2', '1:正常,2:冻结,3:删除', '', '2018-10-05 16:03:11', '2018-10-05 16:11:41', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('2', '字典类型', 'DICT_TYPE', '2', '2:键值对', '', '2018-10-05 20:08:55', '2019-01-17 23:39:23', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('3', '用户性别', 'USER_SEX', '2', '1:男,2:女', '', '2018-10-05 20:12:32', '2018-10-05 20:12:32', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('4', '菜单类型', 'MENU_TYPE', '2', '1:目录,2:菜单,3:按钮', '', '2018-10-05 20:24:57', '2019-11-06 20:08:46', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('5', '搜索栏状态', 'SEARCH_STATUS', '2', '1:正常,2:冻结', '', '2018-10-05 20:25:45', '2019-02-26 00:34:34', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('6', '日志类型', 'LOG_TYPE', '2', '1:业务,2:登录,3:系统', '', '2018-10-05 20:28:47', '2019-02-26 00:31:43', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('7', '库房', 'REPOSITORY', '2', '1:库房1,2:库房2,3:库房3', '', '2019-11-12 11:29:41', '2019-11-12 11:29:41', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('8', '厂家', 'FACTORY', '2', '1:深圳婚纱厂,2:王小姐婚纱厂,3:北京婚纱厂', '', '2019-11-12 12:48:07', '2019-11-12 12:48:33', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('9', '婚纱分类', 'WEDDING_TYPE1', '2', '1:女装,2:男装,3:男童,4:女童', '', '2019-11-12 12:50:06', '2019-11-12 12:50:37', '1', '1', '1');
INSERT INTO `sys_dict` VALUES ('10', '婚纱类别', 'WEDDING_TYPE2', '2', '1:礼服,2:秀禾', '', '2019-11-12 12:53:20', '2019-11-12 12:53:20', '1', '1', '1');

-- ----------------------------
-- Table structure for `sys_file`
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `mime` varchar(255) DEFAULT NULL COMMENT 'MIME文件类型',
  `size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `md5` varchar(255) DEFAULT NULL COMMENT 'MD5值',
  `sha1` varchar(255) DEFAULT NULL COMMENT 'SHA1值',
  `create_by` bigint(20) DEFAULT NULL COMMENT '上传者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `FKkkles8yp0a156p4247cc22ovn` (`create_by`),
  CONSTRAINT `FKkkles8yp0a156p4247cc22ovn` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('3', '6b1812d3def240d5bed45b58501815b7.jpg', '/upload/images/20191111/6b1812d3def240d5bed45b58501815b7.jpg', 'image/jpeg', '133806', '7c4f1d22fcd1b1c3d2ce62b08da30ed2', 'dd2386d7b1eeabe7a3582a9bba2b55daee891847', '1', '2019-11-11 10:32:56');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `pid` bigint(20) DEFAULT NULL COMMENT '父级编号',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有父级编号',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL地址',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型（1:一级菜单,2:子级菜单,3:不是菜单）',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKoxg2hi96yr9pf2m0stjomr3we` (`create_by`),
  KEY `FKsiko0qcr8ddamvrxf1tk4opgc` (`update_by`),
  CONSTRAINT `FKoxg2hi96yr9pf2m0stjomr3we` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKsiko0qcr8ddamvrxf1tk4opgc` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '菜单管理', '2', '[0],[2]', '/system/menu/index', 'system:menu:index', '', '2', '3', '', '2018-09-29 00:02:10', '2019-02-24 16:10:40', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('2', '系统管理', '0', '[0]', '#', '#', 'fa fa-cog', '1', '3', '', '2018-09-29 00:05:50', '2019-11-11 14:18:12', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('3', '添加', '1', '[0],[2],[1]', '/system/menu/add', 'system:menu:add', '', '3', '1', '', '2018-09-29 00:06:57', '2019-02-24 16:12:59', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '2', '[0],[2]', '/system/role/index', 'system:role:index', '', '2', '2', '', '2018-09-29 00:08:14', '2019-02-24 16:10:34', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('5', '添加', '4', '[0],[2],[4]', '/system/role/add', 'system:role:add', '', '3', '1', '', '2018-09-29 00:09:04', '2019-02-24 16:12:04', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('6', '主页', '0', '[0]', '/index', 'index', 'layui-icon layui-icon-home', '1', '1', '', '2018-09-29 00:09:56', '2019-02-27 21:34:56', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('7', '用户管理', '2', '[0],[2]', '/system/user/index', 'system:user:index', '', '2', '1', '', '2018-09-29 00:43:50', '2019-04-05 17:43:25', '1', '2', '1');
INSERT INTO `sys_menu` VALUES ('8', '编辑', '1', '[0],[2],[1]', '/system/menu/edit', 'system:menu:edit', '', '3', '2', '', '2018-09-29 00:57:33', '2019-02-24 16:13:05', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('9', '详细', '1', '[0],[2],[1]', '/system/menu/detail', 'system:menu:detail', '', '3', '3', '', '2018-09-29 01:03:00', '2019-02-24 16:13:12', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('10', '修改状态', '1', '[0],[2],[1]', '/system/menu/status', 'system:menu:status', '', '3', '4', '', '2018-09-29 01:03:43', '2019-02-24 16:13:21', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('11', '编辑', '4', '[0],[2],[4]', '/system/role/edit', 'system:role:edit', '', '3', '2', '', '2018-09-29 01:06:13', '2019-02-24 16:12:10', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('12', '授权', '4', '[0],[2],[4]', '/system/role/auth', 'system:role:auth', '', '3', '3', '', '2018-09-29 01:06:57', '2019-02-24 16:12:17', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('13', '详细', '4', '[0],[2],[4]', '/system/role/detail', 'system:role:detail', '', '3', '4', '', '2018-09-29 01:08:00', '2019-02-24 16:12:24', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('14', '修改状态', '4', '[0],[2],[4]', '/system/role/status', 'system:role:status', '', '3', '5', '', '2018-09-29 01:08:22', '2019-02-24 16:12:43', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('15', '编辑', '7', '[0],[2],[7]', '/system/user/edit', 'system:user:edit', '', '3', '2', '', '2018-09-29 21:17:17', '2019-02-24 16:11:03', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('16', '添加', '7', '[0],[2],[7]', '/system/user/add', 'system:user:add', '', '3', '1', '', '2018-09-29 21:17:58', '2019-02-24 16:10:28', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('17', '修改密码', '7', '[0],[2],[7]', '/system/user/pwd', 'system:user:pwd', '', '3', '3', '', '2018-09-29 21:19:40', '2019-02-24 16:11:11', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('18', '权限分配', '7', '[0],[2],[7]', '/system/user/role', 'system:user:role', '', '3', '4', '', '2018-09-29 21:20:35', '2019-02-24 16:11:18', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('19', '详细', '7', '[0],[2],[7]', '/system/user/detail', 'system:user:detail', '', '3', '5', '', '2018-09-29 21:21:00', '2019-02-24 16:11:26', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('20', '修改状态', '7', '[0],[2],[7]', '/system/user/status', 'system:user:status', '', '3', '6', '', '2018-09-29 21:21:18', '2019-02-24 16:11:35', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('21', '字典管理', '2', '[0],[2]', '/system/dict/index', 'system:dict:index', '', '2', '5', '', '2018-10-05 00:55:52', '2019-02-24 16:14:24', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('22', '字典添加', '21', '[0],[2],[21]', '/system/dict/add', 'system:dict:add', '', '3', '1', '', '2018-10-05 00:56:26', '2019-02-24 16:14:10', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('23', '字典编辑', '21', '[0],[2],[21]', '/system/dict/edit', 'system:dict:edit', '', '3', '2', '', '2018-10-05 00:57:08', '2019-02-24 16:14:34', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('24', '字典详细', '21', '[0],[2],[21]', '/system/dict/detail', 'system:dict:detail', '', '3', '3', '', '2018-10-05 00:57:42', '2019-02-24 16:14:41', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('25', '修改状态', '21', '[0],[2],[21]', '/system/dict/status', 'system:dict:status', '', '3', '4', '', '2018-10-05 00:58:27', '2019-02-24 16:14:49', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('26', '行为日志', '2', '[0],[2]', '/system/actionLog/index', 'system:actionLog:index', '', '2', '6', '', '2018-10-14 16:52:01', '2019-02-27 21:34:15', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('27', '日志详细', '26', '[0],[2],[26]', '/system/actionLog/detail', 'system:actionLog:detail', '', '3', '1', '', '2018-10-14 21:07:11', '2019-02-27 21:34:15', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('28', '日志删除', '26', '[0],[2],[26]', '/system/actionLog/delete', 'system:actionLog:delete', '', '3', '2', '', '2018-10-14 21:08:17', '2019-02-27 21:34:15', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('30', '开发中心', '0', '[0]', '#', '#', 'fa fa-gavel', '1', '4', '', '2018-10-19 16:38:23', '2019-11-11 14:18:12', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('31', '代码生成', '30', '[0],[30]', '/dev/code', '#', '', '2', '1', '', '2018-10-19 16:39:04', '2019-03-13 17:43:58', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('125', '表单构建', '30', '[0],[30]', '/dev/build', '#', '', '2', '2', '', '2018-11-25 16:12:23', '2019-02-24 16:16:40', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('136', '部门管理', '2', '[0],[2]', '/system/dept/index', 'system:dept:index', '', '2', '4', '', '2018-12-02 16:33:23', '2019-02-24 16:10:50', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('137', '添加', '136', '[0],[2],[136]', '/system/dept/add', 'system:dept:add', '', '3', '1', '', '2018-12-02 16:33:23', '2019-02-24 16:13:34', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('138', '编辑', '136', '[0],[2],[136]', '/system/dept/edit', 'system:dept:edit', '', '3', '2', '', '2018-12-02 16:33:23', '2019-02-24 16:13:42', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('139', '详细', '136', '[0],[2],[136]', '/system/dept/detail', 'system:dept:detail', '', '3', '3', '', '2018-12-02 16:33:23', '2019-02-24 16:13:49', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('140', '改变状态', '136', '[0],[2],[136]', '/system/dept/status', 'system:dept:status', '', '3', '4', '', '2018-12-02 16:33:23', '2019-02-24 16:13:57', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('146', '数据接口', '30', '[0],[30]', '/dev/swagger', '#', '', '2', '3', '', '2018-12-09 21:11:11', '2019-02-24 23:38:18', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('147', '婚纱礼服', '0', '[0]', '#', '#', 'fa fa-heartbeat', '1', '2', '', '2019-11-11 14:18:12', '2019-11-11 14:54:54', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('148', '婚纱礼服管理', '147', '[0],[147]', '/dressmana/dress/index', 'dressmana:dress:index', null, '2', '1', null, '2019-11-12 08:39:39', '2019-11-12 09:02:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('149', '添加', '148', '[0],[147],[148]', '/dressmana/dress/add', 'dressmana:dress:add', null, '3', '1', null, '2019-11-12 08:39:39', '2019-11-12 09:02:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('150', '编辑', '148', '[0],[147],[148]', '/dressmana/dress/edit', 'dressmana:dress:edit', null, '3', '1', null, '2019-11-12 08:39:39', '2019-11-12 09:02:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('151', '详细', '148', '[0],[147],[148]', '/dressmana/dress/detail', 'dressmana:dress:detail', null, '3', '1', null, '2019-11-12 08:39:39', '2019-11-12 09:02:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('152', '修改状态', '148', '[0],[147],[148]', '/dressmana/dress/status', 'dressmana:dress:status', null, '3', '1', null, '2019-11-12 08:39:39', '2019-11-12 09:02:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('153', '库存管理', '147', '[0],[147]', '/dressmanager/warehouse/index', 'dressmanager:warehouse:index', null, '2', '1', null, '2019-11-12 09:09:50', '2019-11-12 09:21:40', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('154', '添加', '153', '[0],[147],[153]', '/dressmanager/warehouse/add', 'dressmanager:warehouse:add', null, '3', '1', null, '2019-11-12 09:09:50', '2019-11-12 09:21:40', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('155', '编辑', '153', '[0],[147],[153]', '/dressmanager/warehouse/edit', 'dressmanager:warehouse:edit', null, '3', '1', null, '2019-11-12 09:09:50', '2019-11-12 09:21:40', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('156', '详细', '153', '[0],[147],[153]', '/dressmanager/warehouse/detail', 'dressmanager:warehouse:detail', null, '3', '1', null, '2019-11-12 09:09:50', '2019-11-12 09:21:40', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('157', '修改状态', '153', '[0],[147],[153]', '/dressmanager/warehouse/status', 'dressmanager:warehouse:status', null, '3', '1', null, '2019-11-12 09:09:50', '2019-11-12 09:21:40', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('158', '礼服信息', '147', '[0],[147]', '/warehouse/weddingdress/index', 'warehouse:weddingdress:index', null, '2', '1', null, '2019-11-12 10:31:13', '2019-11-12 10:47:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('159', '添加', '158', '[0],[147],[158]', '/warehouse/weddingdress/add', 'warehouse:weddingdress:add', null, '3', '1', null, '2019-11-12 10:31:13', '2019-11-12 10:47:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('160', '编辑', '158', '[0],[147],[158]', '/warehouse/weddingdress/edit', 'warehouse:weddingdress:edit', null, '3', '1', null, '2019-11-12 10:31:13', '2019-11-12 10:47:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('161', '详细', '158', '[0],[147],[158]', '/warehouse/weddingdress/detail', 'warehouse:weddingdress:detail', null, '3', '1', null, '2019-11-12 10:31:13', '2019-11-12 10:47:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('162', '修改状态', '158', '[0],[147],[158]', '/warehouse/weddingdress/status', 'warehouse:weddingdress:status', null, '3', '1', null, '2019-11-12 10:31:13', '2019-11-12 10:47:33', '1', '1', '3');
INSERT INTO `sys_menu` VALUES ('163', '礼服信息', '147', '[0],[147]', '/warehouse/weddingdress/index', 'warehouse:weddingdress:index', null, '2', '1', null, '2019-11-12 10:49:19', '2019-11-12 10:49:19', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('164', '添加', '163', '[0],[147],[163]', '/warehouse/weddingdress/add', 'warehouse:weddingdress:add', null, '3', '1', null, '2019-11-12 10:49:19', '2019-11-12 10:49:19', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('165', '编辑', '163', '[0],[147],[163]', '/warehouse/weddingdress/edit', 'warehouse:weddingdress:edit', null, '3', '1', null, '2019-11-12 10:49:19', '2019-11-12 10:49:19', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('166', '详细', '163', '[0],[147],[163]', '/warehouse/weddingdress/detail', 'warehouse:weddingdress:detail', null, '3', '1', null, '2019-11-12 10:49:19', '2019-11-12 10:49:19', '1', '1', '1');
INSERT INTO `sys_menu` VALUES ('167', '修改状态', '163', '[0],[147],[163]', '/warehouse/weddingdress/status', 'warehouse:weddingdress:status', null, '3', '1', null, '2019-11-12 10:49:19', '2019-11-12 10:49:19', '1', '1', '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) DEFAULT NULL COMMENT '角色名称（中文名）',
  `name` varchar(255) DEFAULT NULL COMMENT '标识名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKdkwvv0rm6j3d5l6hwsy2dplol` (`create_by`),
  KEY `FKrouqqi3f2bgc5o83wdstlh6q4` (`update_by`),
  CONSTRAINT `FKdkwvv0rm6j3d5l6hwsy2dplol` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKrouqqi3f2bgc5o83wdstlh6q4` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '', '2018-09-29 00:12:40', '2019-01-18 21:09:51', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('2', '开发组', 'group', '', '2018-09-30 16:04:32', '2019-04-28 00:10:00', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('3', '用户组', 'group1', '', '2018-09-30 16:24:20', '2019-04-28 00:11:09', '1', '1', '1');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `FKf3mud4qoc7ayew8nml4plkevo` (`menu_id`),
  CONSTRAINT `FKf3mud4qoc7ayew8nml4plkevo` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`),
  CONSTRAINT `FKkeitxsgxwayackgqllio4ohn5` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '25');
INSERT INTO `sys_role_menu` VALUES ('1', '26');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '125');
INSERT INTO `sys_role_menu` VALUES ('1', '136');
INSERT INTO `sys_role_menu` VALUES ('1', '137');
INSERT INTO `sys_role_menu` VALUES ('1', '138');
INSERT INTO `sys_role_menu` VALUES ('1', '139');
INSERT INTO `sys_role_menu` VALUES ('1', '140');
INSERT INTO `sys_role_menu` VALUES ('1', '146');
INSERT INTO `sys_role_menu` VALUES ('1', '163');
INSERT INTO `sys_role_menu` VALUES ('1', '164');
INSERT INTO `sys_role_menu` VALUES ('1', '165');
INSERT INTO `sys_role_menu` VALUES ('1', '166');
INSERT INTO `sys_role_menu` VALUES ('1', '167');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '13');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '3');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '8');
INSERT INTO `sys_role_menu` VALUES ('3', '9');
INSERT INTO `sys_role_menu` VALUES ('3', '10');
INSERT INTO `sys_role_menu` VALUES ('3', '21');
INSERT INTO `sys_role_menu` VALUES ('3', '22');
INSERT INTO `sys_role_menu` VALUES ('3', '23');
INSERT INTO `sys_role_menu` VALUES ('3', '24');
INSERT INTO `sys_role_menu` VALUES ('3', '25');
INSERT INTO `sys_role_menu` VALUES ('3', '136');
INSERT INTO `sys_role_menu` VALUES ('3', '137');
INSERT INTO `sys_role_menu` VALUES ('3', '138');
INSERT INTO `sys_role_menu` VALUES ('3', '139');
INSERT INTO `sys_role_menu` VALUES ('3', '140');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `password` char(64) DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) DEFAULT NULL COMMENT '密码盐',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `picture` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别（1:男,2:女）',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话号码',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1:正常,2:冻结,3:删除）',
  PRIMARY KEY (`id`),
  KEY `FKb3pkx0wbo6o8i8lj0gxr37v1n` (`dept_id`),
  CONSTRAINT `FKb3pkx0wbo6o8i8lj0gxr37v1n` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '超级管理员', '5fa04c0758ae596e2a93cd2802640693a5b08bdfacd4307abce323c85e481154', '7rl2t9', '1', null, '1', '10086@163.com', '10086', '', '2018-08-09 23:00:03', '2019-11-06 20:09:17', '1');
INSERT INTO `sys_user` VALUES ('2', 'linln', '小懒虫', '12fa2e985762656ace3342b6a702b815b61919697451708fb2e89a036cfe8936', 'sLtvM5', '2', null, '2', '1008612@qq.com', '1008612', '', '2018-09-30 16:25:22', '2019-11-11 10:35:15', '1');
INSERT INTO `sys_user` VALUES ('3', 'uu', 'uu', '33fb9435de9e7fcaeaefd51240fd584f77c603d5d741f21c9361af8c90cd6abe', 'P2K3Y6', '3', null, '1', '', '', '', '2019-11-11 10:39:23', '2019-11-11 10:39:23', '1');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKhh52n8vd4ny9ff4x9fb8v65qx` (`role_id`),
  CONSTRAINT `FKb40xxfch70f5qnyfw8yme1n1s` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKhh52n8vd4ny9ff4x9fb8v65qx` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('2', '3');

-- ----------------------------
-- Table structure for `wed_weddingdress`
-- ----------------------------
DROP TABLE IF EXISTS `wed_weddingdress`;
CREATE TABLE `wed_weddingdress` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `repository` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKognmfi9ric4juuakroxm83c5c` (`create_by`),
  KEY `FKsya7iqhwlidouew6tnwmc06ng` (`update_by`),
  CONSTRAINT `FKognmfi9ric4juuakroxm83c5c` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKsya7iqhwlidouew6tnwmc06ng` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wed_weddingdress
-- ----------------------------
INSERT INTO `wed_weddingdress` VALUES ('1', '2019-11-12 10:56:21', '123', '123', '123', '123', '1', '2019-11-12 10:56:21', '1', '1', null);
INSERT INTO `wed_weddingdress` VALUES ('2', '2019-11-12 11:08:24', 'sdf', 'sdfsdf', 'sdf', 'sdf,sdfsdfsdf', '1', '2019-11-12 11:08:24', '1', '1', null);
INSERT INTO `wed_weddingdress` VALUES ('3', '2019-11-12 11:09:29', 'qwe', '', 'qwe', 'qwe,qwe', '1', '2019-11-12 11:09:29', '1', '1', null);
INSERT INTO `wed_weddingdress` VALUES ('4', '2019-11-12 11:09:52', '123', '', '1231', '23123,123', '1', '2019-11-12 11:09:52', '1', '1', null);
INSERT INTO `wed_weddingdress` VALUES ('5', '2019-11-12 11:10:34', '森岛帆高', '123', '456', '456', '1', '2019-11-12 11:14:08', '1', '1', '21123');
INSERT INTO `wed_weddingdress` VALUES ('6', '2019-11-12 11:13:32', '了看见爱上对方', '离开家', '拉水电费', '离开', '1', '2019-11-12 11:13:32', '1', '1', '离开家拉水电费');
INSERT INTO `wed_weddingdress` VALUES ('7', '2019-11-12 11:24:28', '12', '', '12', '12', '1', '2019-11-12 11:24:28', '1', '1', '12');
INSERT INTO `wed_weddingdress` VALUES ('8', '2019-11-12 11:24:36', '123', '', '123', '123', '1', '2019-11-12 11:24:36', '1', '1', '123');
INSERT INTO `wed_weddingdress` VALUES ('9', '2019-11-12 11:24:42', '123', '', '123', '123', '1', '2019-11-12 11:24:42', '1', '1', '123');
INSERT INTO `wed_weddingdress` VALUES ('10', '2019-11-12 11:24:49', '123', '', '123', '123', '1', '2019-11-12 11:24:49', '1', '1', '123');
INSERT INTO `wed_weddingdress` VALUES ('11', '2019-11-12 11:24:54', '123', '', '1', '123', '1', '2019-11-12 11:35:04', '1', '1', '123');
