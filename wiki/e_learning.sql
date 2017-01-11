/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : e_learning

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-01-10 21:00:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`username`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`password`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`petname`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`authority`  int(4) NOT NULL ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称' ,
`type_id`  int(4) NOT NULL COMMENT '课程类型' ,
`profile`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程简介' ,
`starttime`  date NOT NULL COMMENT '开课时间' ,
`endtime`  date NOT NULL ,
`price`  float NOT NULL COMMENT '价格' ,
`period`  int(4) NOT NULL COMMENT '课时' ,
`teacher_id`  int(4) NOT NULL COMMENT '授课老师' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`teacher_id`) REFERENCES `tb_teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`type_id`) REFERENCES `tb_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_TEACHER` (`teacher_id`) USING BTREE ,
INDEX `FK_TO_TYPE1` (`type_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_course_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_course_order`;
CREATE TABLE `tb_course_order` (
`id`  bigint(4) NOT NULL AUTO_INCREMENT ,
`user_id`  int(4) NOT NULL COMMENT '用户' ,
`course_id`  int(4) NOT NULL COMMENT '课程' ,
`price`  float NOT NULL COMMENT '成交额' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_USER03` (`user_id`) USING BTREE ,
INDEX `FK_TO_COURSE02` (`course_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_course_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_course_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_course_user`;
CREATE TABLE `tb_course_user` (
`id`  bigint(4) NOT NULL AUTO_INCREMENT ,
`course_id`  int(4) NOT NULL COMMENT '课程' ,
`user_id`  int(4) NOT NULL COMMENT '学员' ,
`score`  float NULL DEFAULT NULL COMMENT '课程评分' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_USER1` (`user_id`) USING BTREE ,
INDEX `FK_TO_COURSE1` (`course_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_course_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_listening
-- ----------------------------
DROP TABLE IF EXISTS `tb_listening`;
CREATE TABLE `tb_listening` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`en_context`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ch_context`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`audio`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '音频' ,
`type_id`  int(4) NOT NULL COMMENT '听力类别' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`type_id`) REFERENCES `tb_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_TYPE01` (`type_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_listening
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`title`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题' ,
`content`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容' ,
`time`  datetime NOT NULL COMMENT '公布时间' ,
`admin_id`  int(4) NOT NULL COMMENT '发布者' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_ADMIN` (`admin_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`username`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`password`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`email`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮件' ,
`profile`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介' ,
`img`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`sex`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`birth`  date NOT NULL ,
`background`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学历' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型名称' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`username`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称' ,
`password`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码' ,
`email`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮件' ,
`tel`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话' ,
`authority`  int(4) NOT NULL COMMENT '权限' ,
`sex`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别' ,
`birth`  date NULL DEFAULT NULL COMMENT '生日' ,
`balance`  float NOT NULL COMMENT '余额' ,
`img`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像' ,
`backgroud`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段1' ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段2' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` VALUES ('1', 'Jack', '123456', 'Jack@163.com', '123456', '1', 'male', '1994-07-13', '100', null, 'master', null, null);
COMMIT;

-- ----------------------------
-- Table structure for tb_user_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_type`;
CREATE TABLE `tb_user_type` (
`id`  int(4) NOT NULL COMMENT '用户进度标识id' ,
`user_id`  int(4) NULL DEFAULT NULL ,
`type_id`  int(4) NULL DEFAULT NULL ,
`process`  int(4) NULL DEFAULT NULL COMMENT '用户进度位置' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`type_id`) REFERENCES `tb_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_USER05` (`user_id`) USING BTREE ,
INDEX `FK_TO_TYPE05` (`type_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_user_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_user_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_video`;
CREATE TABLE `tb_user_video` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`user_id`  int(4) NOT NULL ,
`video_id`  int(4) NOT NULL ,
`process`  int(4) NOT NULL COMMENT '进度（0没看，1看一部分，2看完）' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`video_id`) REFERENCES `tb_video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_USER01` (`user_id`) USING BTREE ,
INDEX `FK_TO_VIDEO01` (`video_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_user_video
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_video`;
CREATE TABLE `tb_video` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`course_id`  int(4) NOT NULL ,
`url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_COURSE` (`course_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_video
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_vip_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_vip_order`;
CREATE TABLE `tb_vip_order` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`user_id`  int(4) NOT NULL COMMENT '用户' ,
`starttime`  datetime NOT NULL COMMENT '生效时间' ,
`endtime`  datetime NOT NULL COMMENT '失效时间' ,
`price`  float NOT NULL COMMENT '成交额' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_USER02` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_vip_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_word
-- ----------------------------
DROP TABLE IF EXISTS `tb_word`;
CREATE TABLE `tb_word` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`name`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单词' ,
`explaination`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '释义' ,
`pronunciation`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发音' ,
`sentence`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '例句' ,
`phonogram`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '音标' ,
`nature`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '词性' ,
`sentence_exp`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '例句释义' ,
`reserve1`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`reserve2`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_word
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_word_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_word_type`;
CREATE TABLE `tb_word_type` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`word_id`  int(4) NOT NULL ,
`type_id`  int(4) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`type_id`) REFERENCES `tb_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`word_id`) REFERENCES `tb_word` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_WORD` (`word_id`) USING BTREE ,
INDEX `FK_TO_TYPE` (`type_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_word_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_word_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_word_user`;
CREATE TABLE `tb_word_user` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`user_id`  int(4) NOT NULL COMMENT '用户' ,
`word_id`  int(4) NOT NULL COMMENT '单词' ,
`mastered`  int(4) NOT NULL COMMENT '是否掌握' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`word_id`) REFERENCES `tb_word` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `FK_TO_USER04` (`user_id`) USING BTREE ,
INDEX `FK_TO_WORD_02` (`word_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of tb_word_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Auto increment value for tb_admin
-- ----------------------------
ALTER TABLE `tb_admin` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_course
-- ----------------------------
ALTER TABLE `tb_course` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_course_order
-- ----------------------------
ALTER TABLE `tb_course_order` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_course_user
-- ----------------------------
ALTER TABLE `tb_course_user` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_listening
-- ----------------------------
ALTER TABLE `tb_listening` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_notice
-- ----------------------------
ALTER TABLE `tb_notice` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_teacher
-- ----------------------------
ALTER TABLE `tb_teacher` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_type
-- ----------------------------
ALTER TABLE `tb_type` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_user
-- ----------------------------
ALTER TABLE `tb_user` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for tb_user_video
-- ----------------------------
ALTER TABLE `tb_user_video` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_video
-- ----------------------------
ALTER TABLE `tb_video` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_vip_order
-- ----------------------------
ALTER TABLE `tb_vip_order` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_word
-- ----------------------------
ALTER TABLE `tb_word` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_word_type
-- ----------------------------
ALTER TABLE `tb_word_type` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for tb_word_user
-- ----------------------------
ALTER TABLE `tb_word_user` AUTO_INCREMENT=1;
