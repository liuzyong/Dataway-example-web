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

 Date: 14/05/2020 16:15:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biz_resumption_staff
-- ----------------------------
DROP TABLE IF EXISTS `biz_resumption_staff`;
CREATE TABLE `biz_resumption_staff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '男/女',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `id_card` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `card_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证地址',
  `local_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '在杭详细地址(到小区)',
  `housing_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自主/租住',
  `from_province` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来自省',
  `from_city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来自市',
  `from_county` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来自区县',
  `traffic` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '飞机/火车/自驾/其他公共交通',
  `local` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来杭是否途径湖北 N/Y',
  `return_date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回杭日期 YYYY-MM-DD',
  `return_plan_date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '计划回杭日期 YYYY-MM-DD',
  `isolation_way` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '无需隔离／居家隔离/企业集中隔离-酒店／企业集中隔离-宿舍／医学隔离-疑似／医学隔离-确诊',
  `body_state` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '健康/发烧/乏力/咳嗽',
  `party_flag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最近14天是否参加过外部聚会 N/Y',
  `epidemic_flag` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最近14天是否接触疫区来源人员',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `deleted` int(11) NULL DEFAULT NULL COMMENT '删除标记',
  `platform_id` int(11) NULL DEFAULT NULL COMMENT '平台ID',
  `base_id` int(11) NULL DEFAULT NULL COMMENT '复工基础ID',
  `leave` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最近14天是否离杭Y/N',
  `stay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最近14天是否在杭Y/N',
  `import_task_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行任务的ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_resumption_staff
-- ----------------------------
INSERT INTO `biz_resumption_staff` VALUES (3, '刘量', '男', '15168791118', '33030419921102111x', '北京市朝阳区北三环东路11号', '杭州市余杭区良渚街道玉鸟社区未来公寓12幢1单元201室', '自住', 'N', 'Y', '重庆', '重庆市', '江北区', NULL, NULL, NULL, NULL, '无需隔离', '健康', 'N', '2020-02-12 04:34:02', '2020-02-12 04:34:02', 0, 5555666, 112333, 'N', '一直在杭州', 'ebc5b7d5099644b6be54f9f947ea5e82');
INSERT INTO `biz_resumption_staff` VALUES (4, '李白', '男', '13735804645', '429004198808134254', '浙江省宁波市江北区风华路88号10信息学院', '西湖区西溪花园红柿苑', '自住', 'Y', 'Y', '香港特别行政区', '香港岛', '南区', '火车', NULL, '43862', NULL, '居家隔离', '健康', 'N', '2020-02-12 04:34:02', '2020-02-12 04:34:02', 0, 5555666, 112333, 'N', NULL, 'ebc5b7d5099644b6be54f9f947ea5e82');
INSERT INTO `biz_resumption_staff` VALUES (5, '周易', '男', '18360312671', '429006199303060015', '湖北省天门市大宝镇湖村1组12号', '杭州市余杭区仓前街道仓兴街6号1栋二单元501', '租住', 'Y', 'N', '湖北省', '天门市', NULL, '自驾', NULL, NULL, '43875', '居家隔离', '健康', 'N', '2020-02-12 04:34:02', '2020-02-12 04:34:02', 0, 5555666, 112333, 'N', '暂未返杭,在家', 'ebc5b7d5099644b6be54f9f947ea5e82');
INSERT INTO `biz_resumption_staff` VALUES (6, '方杰', '男', '13858084500', '330621199105098959', '浙江省绍兴县平镇中嵋村111号', '余杭区仓前街道太炎社区合景天峻7栋一单元1102', '租住', 'Y', 'N', '湖北省', '恩施土家族苗族自治州', '来凤县', '待定', 'Y', NULL, NULL, '企业集中隔离-酒店', '健康', 'N', '2020-02-12 04:34:03', '2020-02-12 04:34:03', 0, 5555666, 112333, 'N', NULL, 'ebc5b7d5099644b6be54f9f947ea5e82');
INSERT INTO `biz_resumption_staff` VALUES (7, '李红', '男', '18606502132', '610202198301102419', '杭州市西湖区文三路18号3室', '杭州市余杭区东海闲湖城红树湾2-1-302', '租住', 'Y', 'N', '西藏自治区', '那曲市', '尼玛县', '自驾', NULL, NULL, '40223', '居家隔离', '健康', 'N', '2020-02-12 04:34:03', '2020-02-12 04:34:03', 0, 5555666, 112333, 'N', NULL, 'ebc5b7d5099644b6be54f9f947ea5e82');
INSERT INTO `biz_resumption_staff` VALUES (8, '易博', '男', '17682323601', '330724199106018214', '浙江省东阳市画水镇溪村', '西溪君庐', '自住', 'Y', 'Y', '陕西省', '铜川市', '王益区', '飞机', NULL, '43864', NULL, '居家隔离', '健康', 'N', '2020-02-12 04:34:03', '2020-02-12 04:34:03', 0, 5555666, 112333, 'N', NULL, 'ebc5b7d5099644b6be54f9f947ea5e82');
INSERT INTO `biz_resumption_staff` VALUES (9, '居士', '男', '15637121291', '413026198903089317', '武汉市洪山区珞喻路17号', '余杭区老余杭福田花园', '自住', 'N', 'Y', '安徽省', '宿州市', '灵璧县', NULL, NULL, NULL, NULL, '无需隔离', '健康', 'N', '2020-02-12 04:34:03', '2020-02-12 04:34:03', 0, 5555666, 112333, 'N', NULL, 'ebc5b7d5099644b6be54f9f947ea5e82');
INSERT INTO `biz_resumption_staff` VALUES (10, '刘量', '男', '15168791118', '33030419921102111x', '北京市朝阳区北三环东路11号', '杭州市余杭区良渚街道玉鸟社区未来公寓12幢1单元201室', '自住', 'N', 'Y', '重庆', '重庆市', '江北区', NULL, NULL, NULL, NULL, '无需隔离', '健康', 'N', '2020-02-12 04:35:14', '2020-02-12 04:35:14', 0, 5555666, 112333, 'N', '一直在杭州', '210f69897175492c8ea17c83a48c96b3');
INSERT INTO `biz_resumption_staff` VALUES (11, '李白', '男', '13735804645', '429004198808134254', '浙江省宁波市江北区风华路88号10信息学院', '西湖区西溪花园红柿苑', '自住', 'Y', 'Y', '香港特别行政区', '香港岛', '南区', '火车', NULL, '43862', NULL, '居家隔离', '健康', 'N', '2020-02-12 04:35:14', '2020-02-12 04:35:14', 0, 5555666, 112333, 'N', NULL, '210f69897175492c8ea17c83a48c96b3');
INSERT INTO `biz_resumption_staff` VALUES (12, '周易', '男', '18360312671', '429006199303060015', '湖北省天门市大宝镇湖村1组12号', '杭州市余杭区仓前街道仓兴街6号1栋二单元501', '租住', 'Y', 'N', '湖北省', '天门市', NULL, '自驾', NULL, NULL, '43875', '居家隔离', '健康', 'N', '2020-02-12 04:35:14', '2020-02-12 04:35:14', 0, 5555666, 112333, 'N', '暂未返杭,在家', '210f69897175492c8ea17c83a48c96b3');
INSERT INTO `biz_resumption_staff` VALUES (13, '方杰', '男', '13858084500', '330621199105098959', '浙江省绍兴县平镇中嵋村111号', '余杭区仓前街道太炎社区合景天峻7栋一单元1102', '租住', 'Y', 'N', '湖北省', '恩施土家族苗族自治州', '来凤县', '待定', 'Y', NULL, NULL, '企业集中隔离-酒店', '健康', 'N', '2020-02-12 04:35:14', '2020-02-12 04:35:14', 0, 5555666, 112333, 'N', NULL, '210f69897175492c8ea17c83a48c96b3');
INSERT INTO `biz_resumption_staff` VALUES (14, '李红', '男', '18606502132', '610202198301102419', '杭州市西湖区文三路18号3室', '杭州市余杭区东海闲湖城红树湾2-1-302', '租住', 'Y', 'N', '西藏自治区', '那曲市', '尼玛县', '自驾', NULL, NULL, '40223', '居家隔离', '健康', 'N', '2020-02-12 04:35:14', '2020-02-12 04:35:14', 0, 5555666, 112333, 'N', NULL, '210f69897175492c8ea17c83a48c96b3');
INSERT INTO `biz_resumption_staff` VALUES (15, '易博', '男', '17682323601', '330724199106018214', '浙江省东阳市画水镇溪村', '西溪君庐', '自住', 'Y', 'Y', '陕西省', '铜川市', '王益区', '飞机', NULL, '43864', NULL, '居家隔离', '健康', 'N', '2020-02-12 04:35:14', '2020-02-12 04:35:14', 0, 5555666, 112333, 'N', NULL, '210f69897175492c8ea17c83a48c96b3');
INSERT INTO `biz_resumption_staff` VALUES (16, '居士', '男', '15637121291', '413026198903089317', '武汉市洪山区珞喻路17号', '余杭区老余杭福田花园', '自住', 'N', 'Y', '安徽省', '宿州市', '灵璧县', NULL, NULL, NULL, NULL, '无需隔离', '健康', 'N', '2020-02-12 04:35:14', '2020-02-12 04:35:14', 0, 5555666, 112333, 'N', NULL, '210f69897175492c8ea17c83a48c96b3');
INSERT INTO `biz_resumption_staff` VALUES (24, '刘量', '男', '15168791118', '33030419921102111x', '北京市朝阳区北三环东路11号', '杭州市余杭区良渚街道玉鸟社区未来公寓12幢1单元201室', '自住', 'N', 'Y', '重庆', '重庆市', '江北区', NULL, NULL, NULL, NULL, '无需隔离', '健康', 'N', '2020-02-12 04:39:01', '2020-02-12 04:39:01', 0, 5555666, 112333, 'N', '一直在杭州', '1581453541698');
INSERT INTO `biz_resumption_staff` VALUES (25, '李白', '男', '13735804645', '429004198808134254', '浙江省宁波市江北区风华路88号10信息学院', '西湖区西溪花园红柿苑', '自住', 'Y', 'Y', '香港特别行政区', '香港岛', '南区', '火车', NULL, '43862', NULL, '居家隔离', '健康', 'N', '2020-02-12 04:39:01', '2020-02-12 04:39:01', 0, 5555666, 112333, 'N', NULL, '1581453541698');
INSERT INTO `biz_resumption_staff` VALUES (26, '周易', '男', '18360312671', '429006199303060015', '湖北省天门市大宝镇湖村1组12号', '杭州市余杭区仓前街道仓兴街6号1栋二单元501', '租住', 'Y', 'N', '湖北省', '天门市', NULL, '自驾', NULL, NULL, '43875', '居家隔离', '健康', 'N', '2020-02-12 04:39:01', '2020-02-12 04:39:01', 0, 5555666, 112333, 'N', '暂未返杭,在家', '1581453541698');
INSERT INTO `biz_resumption_staff` VALUES (27, '方杰', '男', '13858084500', '330621199105098959', '浙江省绍兴县平镇中嵋村111号', '余杭区仓前街道太炎社区合景天峻7栋一单元1102', '租住', 'Y', 'N', '湖北省', '恩施土家族苗族自治州', '来凤县', '待定', 'Y', NULL, NULL, '企业集中隔离-酒店', '健康', 'N', '2020-02-12 04:39:01', '2020-02-12 04:39:01', 0, 5555666, 112333, 'N', NULL, '1581453541698');
INSERT INTO `biz_resumption_staff` VALUES (28, '李红', '男', '18606502132', '610202198301102419', '杭州市西湖区文三路18号3室', '杭州市余杭区东海闲湖城红树湾2-1-302', '租住', 'Y', 'N', '西藏自治区', '那曲市', '尼玛县', '自驾', NULL, NULL, '40223', '居家隔离', '健康', 'N', '2020-02-12 04:39:01', '2020-02-12 04:39:01', 0, 5555666, 112333, 'N', NULL, '1581453541698');
INSERT INTO `biz_resumption_staff` VALUES (29, '易博', '男', '17682323601', '330724199106018214', '浙江省东阳市画水镇溪村', '西溪君庐', '自住', 'Y', 'Y', '陕西省', '铜川市', '王益区', '飞机', NULL, '43864', NULL, '居家隔离', '健康', 'N', '2020-02-12 04:39:01', '2020-02-12 04:39:01', 0, 5555666, 112333, 'N', NULL, '1581453541698');
INSERT INTO `biz_resumption_staff` VALUES (30, '居士', '男', '15637121291', '413026198903089317', '武汉市洪山区珞喻路17号', '余杭区老余杭福田花园', '自住', 'N', 'Y', '安徽省', '宿州市', '灵璧县', NULL, NULL, NULL, NULL, '无需隔离', '健康', 'N', '2020-02-12 04:39:01', '2020-02-12 04:39:01', 0, 5555666, 112333, 'N', NULL, '1581453541698');

SET FOREIGN_KEY_CHECKS = 1;
