/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-11-08 16:31:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fans
-- ----------------------------
DROP TABLE IF EXISTS `fans`;
CREATE TABLE `fans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fans_uid` varchar(255) DEFAULT NULL,
  `fans_nickname` varchar(255) DEFAULT NULL,
  `fans_picture` varchar(255) DEFAULT NULL,
  `fans_sex` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `is_fans` int(11) DEFAULT '1',
  `follow_time` timestamp NULL,
  `unfollow_time` timestamp NULL,
  `created` timestamp NULL,
  `updated` timestamp NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `modification_num` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fans_app
-- ----------------------------
DROP TABLE IF EXISTS `fans_app`;
CREATE TABLE `fans_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fans_id` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `unionid` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` timestamp NULL,
  `updated` timestamp NULL,
  `modification_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fans_message
-- ----------------------------
DROP TABLE IF EXISTS `fans_message`;
CREATE TABLE `fans_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fansuid` varchar(255) DEFAULT NULL,
  `appuid` varchar(255) DEFAULT NULL,
  `msgid` varchar(255) DEFAULT NULL,
  `created` timestamp NULL,
  `updated` timestamp NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `modificationnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `msguid` varchar(255) DEFAULT NULL,
  `msgtype` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created` timestamp NULL,
  `updated` timestamp NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `modificationnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mp_message
-- ----------------------------
DROP TABLE IF EXISTS `mp_message`;
CREATE TABLE `mp_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mpmessageuid` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `msgid` varchar(255) DEFAULT NULL,
  `msgtotal` int(11) DEFAULT NULL,
  `readnum` int(11) DEFAULT NULL,
  `scenes` varchar(255) DEFAULT NULL,
  `created` timestamp NULL,
  `updated` timestamp NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `modificationnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `team_uid` varchar(255) DEFAULT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `principal` varchar(255) DEFAULT NULL,
  `principal_phone` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` timestamp NULL,
  `updated` timestamp NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `modification_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for team_application
-- ----------------------------
DROP TABLE IF EXISTS `team_application`;
CREATE TABLE `team_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_uid` varchar(255) DEFAULT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `app_appid` varchar(255) DEFAULT NULL,
  `app_appsecret` varchar(255) DEFAULT NULL,
  `team_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` timestamp NULL,
  `updated` timestamp NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `modification_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
