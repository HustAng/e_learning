/*
Navicat MySQL Data Transfer

Source Server         : xiangwanpeng
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : e_learning

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-01-05 21:30:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `petname` varchar(20) NOT NULL,
  `authority` int(4) NOT NULL,
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '课程名称',
  `type_id` int(4) NOT NULL COMMENT '课程类型',
  `profile` varchar(20) NOT NULL COMMENT '课程简介',
  `starttime` date NOT NULL COMMENT '开课时间',
  `endtime` date NOT NULL,
  `price` float NOT NULL COMMENT '价格',
  `period` int(4) NOT NULL COMMENT '课时',
  `teacher_id` int(4) NOT NULL COMMENT '授课老师',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_TEACHER` (`teacher_id`),
  KEY `FK_TO_TYPE1` (`type_id`),
  CONSTRAINT `FK_TO_TEACHER` FOREIGN KEY (`teacher_id`) REFERENCES `tb_teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TO_TYPE1` FOREIGN KEY (`type_id`) REFERENCES `tb_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_course
-- ----------------------------

-- ----------------------------
-- Table structure for tb_course_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_course_order`;
CREATE TABLE `tb_course_order` (
  `id` bigint(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL COMMENT '用户',
  `course_id` int(4) NOT NULL COMMENT '课程',
  `price` float NOT NULL COMMENT '成交额',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_USER03` (`user_id`),
  KEY `FK_TO_COURSE02` (`course_id`),
  CONSTRAINT `FK_TO_COURSE02` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TO_USER03` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_course_order
-- ----------------------------

-- ----------------------------
-- Table structure for tb_course_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_course_user`;
CREATE TABLE `tb_course_user` (
  `id` bigint(4) NOT NULL AUTO_INCREMENT,
  `course_id` int(4) NOT NULL COMMENT '课程',
  `user_id` int(4) NOT NULL COMMENT '学员',
  `score` float DEFAULT NULL COMMENT '课程评分',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_USER1` (`user_id`),
  KEY `FK_TO_COURSE1` (`course_id`),
  CONSTRAINT `FK_TO_COURSE1` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TO_USER1` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_course_user
-- ----------------------------

-- ----------------------------
-- Table structure for tb_listening
-- ----------------------------
DROP TABLE IF EXISTS `tb_listening`;
CREATE TABLE `tb_listening` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `en_context` varchar(100) NOT NULL,
  `ch_context` varchar(100) NOT NULL,
  `audio` varchar(255) NOT NULL COMMENT '音频',
  `type_id` int(4) NOT NULL COMMENT '听力类别',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_TYPE01` (`type_id`),
  CONSTRAINT `FK_TO_TYPE01` FOREIGN KEY (`type_id`) REFERENCES `tb_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_listening
-- ----------------------------

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL COMMENT '公告内容',
  `time` datetime NOT NULL COMMENT '公布时间',
  `admin_id` int(4) NOT NULL COMMENT '发布者',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_ADMIN` (`admin_id`),
  CONSTRAINT `FK_TO_ADMIN` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL COMMENT '邮件',
  `profile` varchar(100) DEFAULT NULL COMMENT '简介',
  `img` varchar(255) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `birth` date NOT NULL,
  `background` varchar(100) NOT NULL COMMENT '学历',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '昵称',
  `password` varchar(20) NOT NULL COMMENT '用户密码',
  `email` varchar(20) NOT NULL COMMENT '邮件',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `authority` int(4) NOT NULL COMMENT '权限',
  `sex` varchar(4) NOT NULL COMMENT '性别',
  `birth` date DEFAULT NULL COMMENT '生日',
  `balance` float NOT NULL COMMENT '余额',
  `img` varchar(255) DEFAULT NULL COMMENT '头像',
  `backgroud` varchar(100) DEFAULT NULL COMMENT '学历',
  `reserve1` varchar(20) DEFAULT NULL COMMENT '预留字段1',
  `reserve2` varchar(20) DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'Jack', '123456', 'Jack@163.com', '123456', '1', 'male', '1994-07-13', '100', null, 'master', null, null);

-- ----------------------------
-- Table structure for tb_user_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_video`;
CREATE TABLE `tb_user_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `video_id` int(4) NOT NULL,
  `process` int(4) NOT NULL COMMENT '进度（0没看，1看一部分，2看完）',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_USER01` (`user_id`),
  KEY `FK_TO_VIDEO01` (`video_id`),
  CONSTRAINT `FK_TO_USER01` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TO_VIDEO01` FOREIGN KEY (`video_id`) REFERENCES `tb_video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_video
-- ----------------------------

-- ----------------------------
-- Table structure for tb_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_video`;
CREATE TABLE `tb_video` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `course_id` int(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_COURSE` (`course_id`),
  CONSTRAINT `FK_TO_COURSE` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_video
-- ----------------------------

-- ----------------------------
-- Table structure for tb_vip_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_vip_order`;
CREATE TABLE `tb_vip_order` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL COMMENT '用户',
  `starttime` datetime NOT NULL COMMENT '生效时间',
  `endtime` datetime NOT NULL COMMENT '失效时间',
  `price` float NOT NULL COMMENT '成交额',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_USER02` (`user_id`),
  CONSTRAINT `FK_TO_USER02` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_vip_order
-- ----------------------------

-- ----------------------------
-- Table structure for tb_word
-- ----------------------------
DROP TABLE IF EXISTS `tb_word`;
CREATE TABLE `tb_word` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '单词',
  `explaination` varchar(20) NOT NULL COMMENT '释义',
  `pronunciation` varchar(255) NOT NULL COMMENT '发音',
  `sentence` varchar(50) DEFAULT NULL COMMENT '例句',
  `phonogram` varchar(20) NOT NULL COMMENT '音标',
  `nature` varchar(20) NOT NULL COMMENT '词性',
  `sentence_exp` varchar(50) DEFAULT NULL COMMENT '例句释义',
  `reserve1` varchar(20) DEFAULT NULL,
  `reserve2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_word
-- ----------------------------

-- ----------------------------
-- Table structure for tb_word_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_word_type`;
CREATE TABLE `tb_word_type` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `word_id` int(4) NOT NULL,
  `type_id` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TO_WORD` (`word_id`),
  KEY `FK_TO_TYPE` (`type_id`),
  CONSTRAINT `FK_TO_TYPE` FOREIGN KEY (`type_id`) REFERENCES `tb_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TO_WORD` FOREIGN KEY (`word_id`) REFERENCES `tb_word` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_word_type
-- ----------------------------

-- ----------------------------
-- Table structure for tb_word_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_word_user`;
CREATE TABLE `tb_word_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL COMMENT '用户',
  `word_id` int(4) NOT NULL COMMENT '单词',
  `mastered` int(4) NOT NULL COMMENT '是否掌握',
  PRIMARY KEY (`id`),
  KEY `FK_TO_USER04` (`user_id`),
  KEY `FK_TO_WORD_02` (`word_id`),
  CONSTRAINT `FK_TO_USER04` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TO_WORD_02` FOREIGN KEY (`word_id`) REFERENCES `tb_word` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_word_user
-- ----------------------------
