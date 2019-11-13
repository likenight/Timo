/*
Navicat MySQL Data Transfer

Source Server         : 12
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : timo

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-11-13 17:32:18
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `image` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `factory` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `standard` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `type1` varchar(255) DEFAULT NULL,
  `type2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKognmfi9ric4juuakroxm83c5c` (`create_by`),
  KEY `FKsya7iqhwlidouew6tnwmc06ng` (`update_by`),
  CONSTRAINT `FKognmfi9ric4juuakroxm83c5c` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKsya7iqhwlidouew6tnwmc06ng` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wed_weddingdress
-- ----------------------------
INSERT INTO `wed_weddingdress` VALUES ('12', '2019-11-13 08:49:03', '漂亮婚纱', '', '1', 'df21414121', '1', '2019-11-13 14:12:21', '1', '1', '01016565', '/upload/images/20191113/29a01d5e3cad4c1abe6d0b703cf12fb2.jpg', '', '白色', null, '1', '22', '3', null, 'sdf', '1', '1');
INSERT INTO `wed_weddingdress` VALUES ('18', '2019-11-13 12:07:49', '大裙子', '是的法规是大法官', '1', 'hy02010606', '1', '2019-11-13 17:19:33', '1', '1', '010101002', '/upload/images/20191113/382fe10fbbdf4a5bb5526dd7a5410f93.jpg', '无', '白色', null, '1', '123.22', '1', null, 'kdfj', '1', '1');
INSERT INTO `wed_weddingdress` VALUES ('20', '2019-11-13 12:30:07', '裙子水电费水电费', '儿童沃尔沃二', '1', 'iu65454545', '1', '2019-11-13 17:19:47', '1', '1', '01010546', '/upload/images/20191113/4ca0ec4a98754a9480edf7c83d93132a.jpg', '无', '白色sdfs阿斯蒂芬', null, '1', '123.42', '2', null, 'we', '1', '1');
