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

 Date: 14/05/2020 16:15:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dataway_report
-- ----------------------------
DROP TABLE IF EXISTS `dataway_report`;
CREATE TABLE `dataway_report`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `browser` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_mac` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `report_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dataway_report
-- ----------------------------
INSERT INTO `dataway_report` VALUES (1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '186590DCCB7B,16F00E981B81', '2020-04-03 18:31:23');
INSERT INTO `dataway_report` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '186590DCCB7B,16F00E981B81', '2020-04-03 18:31:23');
INSERT INTO `dataway_report` VALUES (3, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '186590DCCB7B,16F00E981B81', '2020-04-03 18:31:24');
INSERT INTO `dataway_report` VALUES (4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '186590DCCB7B,16F00E981B81', '2020-04-03 19:34:16');

SET FOREIGN_KEY_CHECKS = 1;
