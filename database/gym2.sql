/*
 Navicat Premium Data Transfer

 Source Server         : Su
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : gym

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 07/11/2020 20:35:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `Activity_id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Acitivy_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Activity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, 'abc');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `Admin_id` int(5) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Last_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Is_active` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'y',
  `City_id` int(3) DEFAULT NULL,
  PRIMARY KEY (`Admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'First_name', 'Last_name', 'abc@gmail.com', 'N', '1234567890', 'abc', 'y', 1);
INSERT INTO `admin` VALUES (2, 'qwe', 'qqwe', 'test3@gmail.com', 'male', NULL, 'cSYjNDMyO2Vxd2U=', 'y', 1);

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `City_id` int(5) NOT NULL AUTO_INCREMENT,
  `City_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`City_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, 'ct1');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `Feedback_id` int(5) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `User_id` int(5) DEFAULT NULL,
  `Feedback` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Feedback_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for inquiry
-- ----------------------------
DROP TABLE IF EXISTS `inquiry`;
CREATE TABLE `inquiry`  (
  `Inquiry_id` int(5) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Last_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Massage` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Date` datetime(6) NOT NULL,
  `Is_read` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`Inquiry_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `Member_id` int(10) NOT NULL AUTO_INCREMENT,
  `Member_type-id` tinyint(2) DEFAULT NULL,
  `First_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Last_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Is_active` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `City_id` int(3) DEFAULT NULL,
  `Photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (0, NULL, '', '', '', '', '0000-00-00', '', '', '', '', NULL, NULL);
INSERT INTO `member` VALUES (1, 1, 'F', 'L', 'abc', 'N', '0000-00-00', 'abc', '123', '123', 'y', 1, NULL);
INSERT INTO `member` VALUES (3, NULL, 'Test', 'Test', 'test02@gmail.com', 'm', '0000-00-00', 'test', '0901949494', 'abc', '2', 1, NULL);
INSERT INTO `member` VALUES (4, NULL, 'Test', 'Test', 'test02@gmail.com', 'm', '0000-00-00', 'test', '0901949494', 'abc', '2', 1, NULL);
INSERT INTO `member` VALUES (5, NULL, 'Test', 'Test', 'test02@gmail.com', 'm', '2020-11-03', 'test', '0901949494', 'abc', 'y', 1, NULL);
INSERT INTO `member` VALUES (6, NULL, 'Vy', 'gs', 'test323@gmail.com', 'm', '2020-11-18', '83 khu ph&#7889; phú Tr&#432;&#7901;ng', '0836151575', 'dGVzdA==', 'y', -1, NULL);

-- ----------------------------
-- Table structure for member_schedule
-- ----------------------------
DROP TABLE IF EXISTS `member_schedule`;
CREATE TABLE `member_schedule`  (
  `Member_schedule_id` int(5) NOT NULL AUTO_INCREMENT,
  `Schedule_id` int(5) NOT NULL,
  `Member_id` int(5) NOT NULL,
  `Trainer_id` int(5) NOT NULL,
  PRIMARY KEY (`Member_schedule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_type
-- ----------------------------
DROP TABLE IF EXISTS `member_type`;
CREATE TABLE `member_type`  (
  `Member_ty_id` int(3) NOT NULL,
  `Member_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Member_ty_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package`  (
  `Package_id` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Duration` tinyint(1) NOT NULL,
  PRIMARY KEY (`Package_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for package_detail
-- ----------------------------
DROP TABLE IF EXISTS `package_detail`;
CREATE TABLE `package_detail`  (
  `Package_detail_id` int(5) NOT NULL AUTO_INCREMENT,
  `Package_id` int(5) NOT NULL,
  `Activity_id` tinyint(2) NOT NULL,
  `Amount` int(5) NOT NULL,
  `Member_type_id` tinyint(2) NOT NULL,
  PRIMARY KEY (`Package_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for progress
-- ----------------------------
DROP TABLE IF EXISTS `progress`;
CREATE TABLE `progress`  (
  `Progress_id` int(5) NOT NULL,
  `Member_id` int(5) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  PRIMARY KEY (`Progress_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for progress_detail
-- ----------------------------
DROP TABLE IF EXISTS `progress_detail`;
CREATE TABLE `progress_detail`  (
  `Progress_detail_id` int(5) NOT NULL,
  `Progress_id` int(5) NOT NULL,
  `Height` double(10, 1) NOT NULL,
  `Weight` double(10, 1) NOT NULL,
  `Biceps` double(10, 1) DEFAULT NULL,
  `Thigh` double(10, 1) DEFAULT NULL,
  `Forearms` double(10, 1) DEFAULT NULL,
  `Chest` double(10, 1) DEFAULT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Progress_detail_id`, `Progress_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `Schedule_id` int(5) NOT NULL AUTO_INCREMENT,
  `Schedule_time_id` int(5) NOT NULL,
  `Activity_id` int(2) NOT NULL,
  `Off_day1` tinyint(1) NOT NULL,
  `Off_day2` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Schedule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for schedule_time
-- ----------------------------
DROP TABLE IF EXISTS `schedule_time`;
CREATE TABLE `schedule_time`  (
  `Schedule_time_id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `Start_time` time(6) NOT NULL,
  `End_time` time(6) NOT NULL,
  PRIMARY KEY (`Schedule_time_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for subscription
-- ----------------------------
DROP TABLE IF EXISTS `subscription`;
CREATE TABLE `subscription`  (
  `Subscription_id` int(5) NOT NULL,
  `Package_detail_id` int(5) DEFAULT NULL,
  `Member_id` int(5) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_date` date NOT NULL,
  PRIMARY KEY (`Subscription_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trainer
-- ----------------------------
DROP TABLE IF EXISTS `trainer`;
CREATE TABLE `trainer`  (
  `Trainer_id` int(10) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Last_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Experience` tinyint(2) NOT NULL,
  `Is_active` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `City_id` int(3) DEFAULT NULL,
  PRIMARY KEY (`Trainer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trainer_schedule
-- ----------------------------
DROP TABLE IF EXISTS `trainer_schedule`;
CREATE TABLE `trainer_schedule`  (
  `Trainer_Schedule_id` int(5) NOT NULL AUTO_INCREMENT,
  `Trainer_id` int(5) NOT NULL,
  PRIMARY KEY (`Trainer_Schedule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
