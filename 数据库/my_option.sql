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

 Date: 14/05/2020 16:15:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for my_option
-- ----------------------------
DROP TABLE IF EXISTS `my_option`;
CREATE TABLE `my_option`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` datetime(0) NULL,
  `modify_time` datetime(0) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_option
-- ----------------------------
INSERT INTO `my_option` VALUES ('key1', 'key1', 'value1', 'key1 value is value1', '2020-05-11 15:22:13', '2020-05-11 15:22:13');
INSERT INTO `my_option` VALUES ('key2', 'key2', 'value2', 'key2 value is value2', '2020-05-11 15:22:14', '2020-05-11 15:22:14');
INSERT INTO `my_option` VALUES ('key3', 'key3', 'value3', 'key3 value is value3', '2020-05-11 15:22:14', '2020-05-11 15:22:14');

SET FOREIGN_KEY_CHECKS = 1;
