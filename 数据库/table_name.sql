/*
 Navicat Premium Data Transfer

 Source Server         : 测试
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : daily.db.hasor.net:3306
 Source Schema         : example

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 14/05/2020 16:15:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_name
-- ----------------------------
DROP TABLE IF EXISTS `table_name`;
CREATE TABLE `table_name`  (
  `column_1` int(11) NOT NULL AUTO_INCREMENT,
  `column_2` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`column_1`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_name
-- ----------------------------
INSERT INTO `table_name` VALUES (1, 1);
INSERT INTO `table_name` VALUES (2, 0);
INSERT INTO `table_name` VALUES (4, 3);

SET FOREIGN_KEY_CHECKS = 1;
