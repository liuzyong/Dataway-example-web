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

 Date: 14/05/2020 16:15:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for interface_ql
-- ----------------------------
DROP TABLE IF EXISTS `interface_ql`;
CREATE TABLE `interface_ql`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intf_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '页面 Code， 页面code 为空表示是一个全局的功能。',
  `script_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '发布后查询语句',
  `desci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `ql_ex` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '查询语句草稿',
  `if_onl` int(2) NULL DEFAULT NULL COMMENT '发布状态 0：未发布；1 已发布 2 已变更',
  `request_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `response_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回参数',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `mdy_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作执行的业务 DataQL Script' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_ql
-- ----------------------------
INSERT INTO `interface_ql` VALUES (15, '/tables', 'var tables = @@sql_exec(username)<% \n\nselect * from a left join b a.id=b.a_id where \n\na.user= :username\n\nlike :username\n\n%>\n \n\nvar username = \"%\" + ${username} +\"%\"\nreturn tables(username)', ' 表列表', 'var tables = @@sql_exec(username)<% \n\nshow tables\n\n%>\n \n\nvar username = \"%\" + ${username} +\"%\"\nreturn tables()', 2, '{\"username\":444}', NULL, '2020-02-28 19:59:19', '2020-03-02 18:20:28');
INSERT INTO `interface_ql` VALUES (16, '/demo/show_tables', 'var aa = @@sql_exec()<%  show tables;   %>\nvar select = @@sql_exec(msg)<%  select :msg , now() as now;   %>\n\nreturn {\n   \"msg\" : ${msg},\n   \"select\" : select(${msg}),\n   \"data\" : aa(${msg}) => [ Tables_in_example ]\n}', '展示所有表', 'var aa = @@sql_exec()<%  show tables;   %>\nvar select = @@sql_exec(msg)<%  select :msg , now() as now;   %>\n\nreturn {\n   \"msg\" : ${msg},\n   \"select\" : select(${msg}),\n   \"data\" : aa(${msg}) => [ Tables_in_example ]\n}', 1, '{\"msg\":\"abcdefg\"}', NULL, '2020-03-03 10:26:10', '2020-03-03 10:26:16');
INSERT INTO `interface_ql` VALUES (17, '/demos/mock', 'return {\n    \"success\":true,\n    \"code\":0,\n    \"executionTime\":10,\n    \"value\":{\n        \"msg\":\"abcdefg\",\n        \"select\":{\n            \"abcdefg\":\"abcdefg\",\n            \"now\":1583202623000\n        },\n        \"data\":[\n            \"biz_resumption_staff\",\n            \"interface_ql\",\n            \"my_option\"\n        ]\n    },\n    \"message\":\"OK\"\n}', 'Mock', 'return {\n    \"success\":true,\n    \"code\":0,\n    \"executionTime\":10,\n    \"value\":{\n        \"msg\":${msg},\n        \"select\":{\n            \"abcdefg\":\"abcdefg\",\n            \"now\":1583202623000\n        },\n        \"data\":[\n            \"biz_resumption_staff\",\n            \"interface_ql\",\n            \"my_option\"\n        ]\n    },\n    \"message\":\"OK\"\n}', 2, '{\"msg\":\"hello-hello-hello-\"}', NULL, '2020-03-03 10:30:43', '2020-03-03 10:32:19');

SET FOREIGN_KEY_CHECKS = 1;
