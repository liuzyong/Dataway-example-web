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

 Date: 14/05/2020 16:10:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for interface_info
-- ----------------------------
DROP TABLE IF EXISTS `interface_info`;
CREATE TABLE `interface_info`  (
  `api_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `api_method` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'HttpMethod：GET、PUT、POST',
  `api_path` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '拦截路径',
  `api_status` int(2) NOT NULL COMMENT '状态：0，1，2，3',
  `api_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注释',
  `api_type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '脚本类型：SQL、DataQL',
  `api_script` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '查询脚本：xxxxxxx',
  `api_schema` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '接口的请求/响应数据结构',
  `api_sample` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求/响应/请求头样本数据',
  `api_option` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展配置信息',
  `api_create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `api_gmt_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`api_id`) USING BTREE,
  UNIQUE INDEX `idx_interface_info`(`api_method`, `api_path`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Dataway 中的API' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_info
-- ----------------------------
INSERT INTO `interface_info` VALUES (4, 'PUT', '/demos/user/user-list/', 1, 'abc', 'DataQL', 'throw 300 ,\"aaaa\"', '{}', '{\"requestBody\":\"{\\\"abc\\\":4444}\",\"headerData\":[{\"name\":\"name1\",\"checked\":true,\"value\":\"value1\"},{\"name\":\"name2\",\"checked\":false,\"value\":\"value2\"},{\"name\":\"name3\",\"checked\":false,\"value\":\"value3\"},{\"name\":\"name4\",\"checked\":true,\"value\":\"value4\"},{\"name\":\"name5\",\"checked\":true,\"value\":\"value5\"}]}', NULL, '2020-03-24 10:09:36', '2020-05-05 00:13:51');
INSERT INTO `interface_info` VALUES (6, 'PUT', '/demos/user/delete-user/', 3, 'abc', 'SQL', 'select * from a;', '{}', '{\n\"requestBody\": \'{\"abc\":5555}\',\n                    \"headerData\": [\n                        {\"checked\": true, \"name\": \"name1\", \"value\": \"value1\"},\n                        {\"checked\": false, \"name\": \"name2\", \"value\": \"value2\"},\n                        {\"checked\": false, \"name\": \"name3\", \"value\": \"value3\"},\n                        {\"checked\": true, \"name\": \"name4\", \"value\": \"value4\"},\n                        {\"checked\": true, \"name\": \"name5\", \"value\": \"value5\"}\n                    ]\n}', NULL, '2020-03-24 10:09:36', '2020-03-25 16:12:52');
INSERT INTO `interface_info` VALUES (7, 'PUT', '/demos/role/role-list/', 2, 'abc', 'DataQL', 'select * from a; ', '{}', '{\"requestBody\":\"{\\\"abc\\\":6666}\",\"headerData\":[{\"name\":\"name1\",\"checked\":true,\"value\":\"value1\"},{\"name\":\"name2\",\"checked\":false,\"value\":\"value2\"},{\"name\":\"name3\",\"checked\":false,\"value\":\"value3\"},{\"name\":\"name4\",\"checked\":true,\"value\":\"value4\"},{\"name\":\"name5\",\"checked\":true,\"value\":\"value5\"}]}', NULL, '2020-03-24 10:09:36', '2020-03-27 18:29:52');
INSERT INTO `interface_info` VALUES (8, 'PUT', '/demos/role/add-role/', 3, 'abc', 'SQL', 'select * from a;', '{}', '{\n\"requestBody\": \'{\"abc\":7777}\',\n                    \"headerData\": [\n                        {\"checked\": true, \"name\": \"name1\", \"value\": \"value1\"},\n                        {\"checked\": false, \"name\": \"name2\", \"value\": \"value2\"},\n                        {\"checked\": false, \"name\": \"name3\", \"value\": \"value3\"},\n                        {\"checked\": true, \"name\": \"name4\", \"value\": \"value4\"},\n                        {\"checked\": true, \"name\": \"name5\", \"value\": \"value5\"}\n                    ]\n}', NULL, '2020-03-24 10:09:36', '2020-03-24 10:09:36');
INSERT INTO `interface_info` VALUES (9, 'PUT', '/demos/role/delete-role/', 0, 'abc', 'DataQL', 'select * from a;', '{}', '{\n\"requestBody\": \'{\"abc\":false}\',\n                    \"headerData\": [\n                        {\"checked\": true, \"name\": \"name1\", \"value\": \"value1\"},\n                        {\"checked\": false, \"name\": \"name2\", \"value\": \"value2\"},\n                        {\"checked\": false, \"name\": \"name3\", \"value\": \"value3\"},\n                        {\"checked\": true, \"name\": \"name4\", \"value\": \"value4\"},\n                        {\"checked\": true, \"name\": \"name5\", \"value\": \"value5\"}\n                    ]\n}', NULL, '2020-03-24 10:09:36', '2020-03-24 10:09:36');
INSERT INTO `interface_info` VALUES (10, 'PUT', '/demos/role/update-role/', 0, 'abc', 'SQL', 'show tables;', '{}', '{\"requestBody\":\"{\\\"abc\\\":false}\",\"headerData\":[{\"name\":\"name1\",\"checked\":true,\"value\":\"value1\"},{\"name\":\"name2\",\"checked\":false,\"value\":\"value2\"},{\"name\":\"name3\",\"checked\":false,\"value\":\"value3\"},{\"name\":\"name4\",\"checked\":true,\"value\":\"value4\"},{\"name\":\"name5\",\"checked\":true,\"value\":\"value5\"}]}', NULL, '2020-03-24 10:09:36', '2020-03-24 19:47:13');
INSERT INTO `interface_info` VALUES (11, 'PUT', '/demos/power/poser-list/', 2, 'abc', 'DataQL', 'select * from a;', '{}', '{\n\"requestBody\": \'{\"abc\":false}\',\n                    \"headerData\": [\n                        {\"checked\": true, \"name\": \"name1\", \"value\": \"value1\"},\n                        {\"checked\": false, \"name\": \"name2\", \"value\": \"value2\"},\n                        {\"checked\": false, \"name\": \"name3\", \"value\": \"value3\"},\n                        {\"checked\": true, \"name\": \"name4\", \"value\": \"value4\"},\n                        {\"checked\": true, \"name\": \"name5\", \"value\": \"value5\"}\n                    ]\n}', NULL, '2020-03-24 10:09:36', '2020-03-24 10:09:36');
INSERT INTO `interface_info` VALUES (12, 'PUT', '/demos/power/power-id/', 0, 'abc', 'SQL', 'select * from a; ', '{}', '{\"requestBody\":\"{\\\"abc\\\":false}\",\"headerData\":[{\"name\":\"name1\",\"checked\":true,\"value\":\"value1\"},{\"name\":\"name2\",\"checked\":false,\"value\":\"value2\"},{\"name\":\"name3\",\"checked\":false,\"value\":\"value3\"},{\"name\":\"name4\",\"checked\":true,\"value\":\"value4\"},{\"name\":\"name5\",\"checked\":true,\"value\":\"value5\"}]}', NULL, '2020-03-24 10:09:36', '2020-03-24 18:32:52');
INSERT INTO `interface_info` VALUES (13, 'PUT', '/demos/power/check/', 0, 'abc', 'SQL', 'select * from a;', '{}', '{\"requestBody\":\"{\\\"abc\\\":false}\",\"headerData\":[{\"name\":\"name1\",\"checked\":true,\"value\":\"value1\"},{\"name\":\"name2\",\"checked\":false,\"value\":\"value2\"},{\"name\":\"name3\",\"checked\":false,\"value\":\"value3\"},{\"name\":\"name4\",\"checked\":true,\"value\":\"value4\"},{\"name\":\"name5\",\"checked\":true,\"value\":\"value5\"}]}', NULL, '2020-03-24 10:09:36', '2020-05-07 15:13:02');
INSERT INTO `interface_info` VALUES (17, 'POST', '/demos/mock', 2, 'Mock', 'DataQL', 'return {\n    \"success\":true,\n    \"code\":0,\n    \"executionTime\":10,\n    \"value\":{\n        \"msg\":\"abcdefg\",\n        \"select\":{\n            \"abcdefg\":\"abcdefg\",\n            \"now\":1583202623000\n        },\n        \"data\":[\n            \"biz_resumption_staff\",\n            \"interface_ql\",\n            \"my_option\"\n        ]\n    },\n    \"message\":\"OK\"\n}', '{}', '{\"requestBody\":\"{}\",\"headerData\":[]}', '{\"resultStructure\":true,\"responseFormat\":\"{\\n  \\\"success\\\"      : \\\"@resultStatus\\\",\\n  \\\"message\\\"      : \\\"@resultMessage\\\",\\n  \\\"code\\\"         : \\\"@resultCode\\\",\\n  \\\"lifeCycleTime\\\": \\\"@timeLifeCycle\\\",\\n  \\\"executionTime\\\": \\\"@timeExecution\\\",\\n  \\\"value\\\"        : \\\"@resultData\\\"\\n}\"}', '2020-03-03 10:30:43', '2020-05-13 13:24:31');
INSERT INTO `interface_info` VALUES (20, 'POST', '/api/headerTools_codec', 1, '', 'DataQL', 'import \"net.hasor.dataql.fx.web.HeaderUdfSource\" as headerTools;\nimport \"net.hasor.dataql.fx.basic.CodecUdfSource\" as codec;\n\nreturn [\n    codec.stringMD5(\"\"),\n    codec.byteToHex(codec.stringToByte(\"你好中国。\",\"utf-8\")),\n    codec.byteToString(codec.hexToByte(\"E4BDA0E5A5BDE4B8ADE59BBDE38082\"),\"utf-8\"),\n    headerTools.map()\n];', '{}', '{\"requestBody\":\"{\\\"message\\\":\\\"Hello DataQL.\\\"}\",\"headerData\":[{\"name\":\"abc\",\"checked\":true,\"value\":\"aaa\"}]}', NULL, '2020-03-29 23:37:49', '2020-03-29 23:38:49');
INSERT INTO `interface_info` VALUES (21, 'POST', '/api/@@sql', 1, '', 'DataQL', 'var tables = @@sql[](arg,sss)<%\n    select \n        #{arg.abc}  as a,\n        ${arg.bcd}  as b,\n        #{sss.a}    as c\n%>\n\nvar paramMap = {\n    \"abc\": \"now()\",\n    \"bcd\": \"now()\"\n}\nreturn tables(\n    [paramMap,paramMap],\n    [{\"a\":1} ,{\"a\":2} ]\n);', '{}', '{\"requestBody\":\"{\\\"message\\\":\\\"Hello DataQL.\\\"}\",\"headerData\":[]}', NULL, '2020-03-30 14:04:11', '2020-03-30 14:04:22');
INSERT INTO `interface_info` VALUES (22, 'POST', '/api/my_option', 2, 'my_option', 'DataQL', 'import \'net.hasor.dataql.fx.basic.CollectionUdfSource\' as collect;\nimport \'net.hasor.dataql.fx.db.TransactionUdfSource\' as tran;\n\nvar replaceInfo = @@sql[](arg)<% \n    replace into my_option (\n        `id`,\n        `key`,\n        `value`,\n        `desc`,\n        `create_time`,\n        `modify_time`\n    ) values (\n        #{arg.id},\n        #{arg.key},\n        #{arg.value},\n        #{arg.desc},\n        ${arg.createTime},\n        ${arg.modifyTime}\n    );\n%>\n\nvar newData = collect.map2list(${data}) => [\n    {\n        \"id\"        : key,\n        \"key\"       : key,\n        \"value\"     : value,\n        \"desc\"      : (key + \" value is \" + value),\n        \"createTime\": \"now()\",\n        \"modifyTime\": \"now()\"\n    }\n]\n\nreturn tran.required(() -> {\n    return replaceInfo(newData);\n});\n', '{}', '{\"requestBody\":\"{\\n  \\\"data\\\": {\\n    \\\"key1\\\": \\\"value1\\\",\\n    \\\"key2\\\": \\\"value2\\\",\\n    \\\"key3\\\": \\\"value3\\\"\\n  }\\n}\",\"headerData\":[]}', NULL, '2020-03-30 14:05:38', '2020-03-30 15:22:38');
INSERT INTO `interface_info` VALUES (23, 'POST', '/api/datav-sign', 0, '', 'DataQL', 'import \"net.hasor.dataql.fx.basic.CollectionUdfSource\" as collec;\nimport \"net.hasor.dataql.fx.basic.DateTimeUdfSource\" as time2;\nimport \"net.hasor.dataql.fx.basic.StringUdfSource\" as string;\nimport \'net.hasor.dataql.fx.basic.CompareUdfSource\' as compare;\nimport \"net.hasor.dataql.fx.encryt.HmacUdfSource\" as hmac;\nimport \"net.hasor.dataql.fx.encryt.DigestUdfSource\" as digest;\nimport \'net.hasor.dataql.fx.encryt.CodecUdfSource\' as codec;\n\n// ----------------------------------------------------------------------------------------\n// 大屏的 Token 信息 和对应的参数，每块大屏一个\nvar tokenMap = {\n    \"bf5e5b6caf02a23cde2096548df10123\" : {\n        \"token\" : \"k5RNaaw8Vh2VBAJ40WQjH_XKeJ1VgRs4\",\n        \"paramMap\" : { }\n    },\n    \"1c006f1b16ebaa388a77f455d8550a88\" : {\n        \"token\" : \"xF6fcjHOtmmStlOMIwQWEcWIuB-3yw_z\",\n        \"paramMap\" : {\n            \"branch_id\": ${branch_id},\n            \"datav_sign_no\" :123,\n            \"datav_sign_aaa\" :123\n         }\n    }\n}\n// ----------------------------------------------------------------------------------------\n// 不存在的大屏\nif (tokenMap[${screenID}] == null) {\n    throw 404 ,\"not found.\";\n}\n\n// 自定义参数\nvar customeParams = tokenMap[${screenID}].paramMap;\n\n// 计算签名串：先过滤出要签名的参数 -> 参数排序 -> 通过map2string转成字符串 -> 在交给下一步进行签名\nvar tmpParam = collec.filterMap(customeParams,(key) -> {\n    return string.startsWith(key,\"datav_sign_\");\n});\nvar tmpParam = collec.mapSort(tmpParam,(k1,k2) -> {\n    return compare.compareString(k1,k2);//对 key 比大小进行排序\n});\nvar signParamStr = collec.map2string(tmpParam,\"&\",(key,value) -> {\n    return key + \"=\" + value;\n});\n\n//\n// 签名\nvar timeNow = time2.now();\nvar token = tokenMap[${screenID}].token;\nvar stringToSign = string.join([${screenID}, timeNow,signParamStr],\"|\");\nvar signature = hmac.hmacSHA256_string(token,stringToSign)\n\n// 最终的 URL\nvar queryParams = {\n  \"_datav_time\": timeNow,\n  \"_datav_signature\": signature\n};\nvar queryParams = collec.mergeMap(queryParams,customeParams);\nvar url = \"http://datav.aliyun.com/share/\"+ ${screenID} +\"?\" + collec.map2string(queryParams,\"&\",(key,value) -> {\n    return key + \"=\" + codec.urlEncode(value);// 要做一个编码，因为signature 是 Base64 的其中有 / 字符出现。 \n});\n\nreturn url;', '{}', '{\"requestBody\":\"{\\n  \\\"screenID\\\": \\\"1c006f1b16ebaa388a77f455d8550a88\\\",\\n  \\\"branch_id\\\": 20001440\\n}\",\"headerData\":[]}', NULL, '2020-03-31 18:58:22', '2020-03-31 20:56:39');
INSERT INTO `interface_info` VALUES (24, 'POST', '/api//api/datav-sign2', 0, '', 'DataQL', 'import \"net.hasor.dataql.fx.basic.CollectionUdfSource\" as collec;\nimport \"net.hasor.dataql.fx.encryt.HmacUdfSource\" as hmac;\nimport \"net.hasor.dataql.fx.encryt.DigestUdfSource\" as digest;\nimport \"net.hasor.dataql.fx.basic.DateTimeUdfSource\" as time;\nimport \"net.hasor.dataql.fx.basic.StringUdfSource\" as string;\n\n// 自定义参数\nvar customeParams = {\n  //\"datav_sign_no\": 123998,\n  \"branch_id\": ${branch_id}\n};\n\n\n// 要签名的URL串\nvar signParamStr = collec.map2string(customeParams,\"&\",(key,value) -> {\n    return key + \"=\" + value;\n});\n\n//\n// 签名\nvar token = \"k5RNaaw8Vh2VBAJ40WQjH_XKeJ1VgRs4\";\nvar screenID =\"bf5e5b6caf02a23cde2096548df10123\";\nvar timeNow = time.now();\n\nvar stringToSign = string.join([screenID, timeNow],\"|\");//,signParamStr\nvar signature = hmac.hmacSHA256_string(token,stringToSign)\n\n\n// 最终的 URL\nvar queryParams = {\n  \"_datav_time\": timeNow,\n  \"_datav_signature\": signature\n};\n\nvar queryParams = collec.mergeMap(queryParams,customeParams);\n\nvar url = \"http://datav.aliyun.com/share/\"+ screenID +\"?\" + collec.map2string(queryParams,\"&\",(key,value) -> {\n    return key + \"=\" + value;\n});\n\nreturn url;', '{}', '{\"requestBody\":\"{\\\"message\\\":\\\"Hello DataQL.\\\"}\",\"headerData\":[]}', NULL, '2020-03-31 19:50:41', '2020-03-31 19:50:41');
INSERT INTO `interface_info` VALUES (25, 'GET', '/api/demos', 1, '', 'DataQL', 'var query = @@sql()<%\n    select * from interface_info\n%>\nreturn [query(),${message}]', '{}', '{\"requestBody\":\"{\\\"message\\\":\\\"Hello DataQL.\\\"}\",\"headerData\":[]}', '{\"resultStructure\":true,\"responseFormat\":\"{\\n  \\\"success\\\"      : \\\"@resultStatus\\\",\\n  \\\"message\\\"      : \\\"@resultMessage\\\",\\n  \\\"code\\\"         : \\\"@resultCode\\\",\\n  \\\"lifeCycleTime\\\": \\\"@timeLifeCycle\\\",\\n  \\\"executionTime\\\": \\\"@timeExecution\\\",\\n  \\\"value\\\"        : \\\"@resultData\\\"\\n}\"}', '2020-04-14 14:51:45', '2020-05-14 13:30:14');
INSERT INTO `interface_info` VALUES (26, 'POST', '/api/demos/find_user_by_name', 1, '根据用户名模糊搜索用户列表', 'DataQL', '// a new DataQL Query.\nvar queryUser = @@sql(userName)<%\n    select * from user_info where `name` like concat(\'%\',#{userName},\'%\')\n%>\n\nreturn [\n    ${self},\n    queryUser(${userName}) => [\n        {\n            \"user_id\" : id,\n            \"user_name\" : name,\n            \"user_sex\" : sex\n        }\n    ]\n]', '{}', '{\"requestBody\":\"{\\\"userName\\\":\\\"1\\\"}\",\"headerData\":[]}', NULL, '2020-04-16 14:58:54', '2020-04-26 21:36:15');
INSERT INTO `interface_info` VALUES (27, 'GET', '/api/demos/find_user_by_name_get', 1, '', 'SQL', 'select * from user_info where `name` like concat(\'%\',#{userName},\'%\')', '{}', '{\"requestBody\":\"{\\n  \\\"userName\\\": \\\"2\\\"\\n}\",\"headerData\":[]}', '{\"resultStructure\":true,\"responseFormat\":\"{\\n  \\\"success\\\"      : \\\"@resultStatus\\\",\\n  \\\"message\\\"      : \\\"@resultMessage\\\",\\n  \\\"code\\\"         : \\\"@resultCode\\\",\\n  \\\"lifeCycleTime\\\": \\\"@timeLifeCycle\\\",\\n  \\\"executionTime\\\": \\\"@timeExecution\\\",\\n  \\\"value\\\"        : \\\"@resultData\\\"\\n}\"}', '2020-04-17 09:54:00', '2020-05-13 13:19:13');
INSERT INTO `interface_info` VALUES (28, 'POST', '/api/demos/find_user_by_name_post', 2, '', 'DataQL', 'hint FRAGMENT_SQL_DATA_SOURCE=\"abc\"\n\nvar fourceOne = (mabeArray) -> {\n    var tmpVar = mabeArray => [ # ]\n    return tmpVar[0]\n}\n\n\nvar tempCall = @@sql(`userName`)<%    select * from user_info where `name` like concat(\'%\',#{userName},\'%\')\n%>;\nreturn tempCall(\n    fourceOne(${userName})\n);', '{}', '{\"requestBody\":\"{\\\"userName\\\":\\\"1\\\"}\",\"headerData\":[]}', NULL, '2020-04-17 10:14:03', '2020-04-27 16:49:57');
INSERT INTO `interface_info` VALUES (29, 'POST', '/api/demos/page_query', 1, '分页查询 Case', 'DataQL', '// 步骤 1：定义分页SQL\nhint FRAGMENT_SQL_QUERY_BY_PAGE = true\nvar dimSQL = @@sql(userName)<%\n    select * from user_info where `name` like concat(\'%\',#{userName},\'%\') order by id asc\n%>;\n\n// 步骤 2：获取分页对象\nvar queryPage = dimSQL(${userName});\n\n// 步骤 3：设置分页信息 \nrun queryPage.setPageInfo({\n    \"pageSize\"    : 5, // 页大小\n    \"currentPage\" : ${pageNumber}  // 第3页\n});\n\nreturn {\n    \"pageInfo\" : queryPage.pageInfo(),\n    \"pageData\" : queryPage.data()\n}', '{}', '{\"requestBody\":\"{\\n  \\\"userName\\\": \\\"\\\",\\n  \\\"pageNumber\\\": 1\\n}\",\"headerData\":[]}', '{\"resultStructure\":true,\"responseFormat\":\"{\\n  \\\"success\\\"      : \\\"@resultStatus\\\",\\n  \\\"message\\\"      : \\\"@resultMessage\\\",\\n  \\\"code\\\"         : \\\"@resultCode\\\",\\n  \\\"lifeCycleTime\\\": \\\"@timeLifeCycle\\\",\\n  \\\"executionTime\\\": \\\"@timeExecution\\\",\\n  \\\"value\\\"        : \\\"@resultData\\\"\\n}\"}', '2020-04-20 12:25:28', '2020-05-12 10:24:53');
INSERT INTO `interface_info` VALUES (30, 'POST', '/api/demos/self', 1, '', 'SQL', '// a new DataQL Query.sw\nreturn ${self};', '{}', '{\"requestBody\":\"{\\n  \\\"message\\\": \\\"Hello DataQL.\\\"\\n}\",\"headerData\":[]}', NULL, '2020-04-23 11:57:21', '2020-05-06 20:45:46');
INSERT INTO `interface_info` VALUES (33, 'GET', '/api/demos/page_query_get', 1, 'page for get', 'DataQL', '// 步骤 1：定义分页SQL\nhint FRAGMENT_SQL_QUERY_BY_PAGE = true\nvar dimSQL = @@sql(userName)<%\n    select * from user_info where `name` like concat(\'%\',#{userName},\'%\') order by id asc\n%>;\n\n// 步骤 2：获取分页对象\nvar queryPage = dimSQL(${userName});\n\n// 步骤 3：设置分页信息 \nrun queryPage.setPageInfo({\n    \"pageSize\"    : 5, // 页大小\n    \"currentPage\" : (${pageNumber} - 1)  // 第3页\n});\n\nreturn {\n    \"pageInfo\" : queryPage.pageInfo(),\n    \"pageData\" : queryPage.data()\n}', '{}', '{\"requestBody\":\"{\\n  \\\"userName\\\": \\\"\\\",\\n  \\\"pageNumber\\\": 1\\n}\",\"headerData\":[]}', NULL, '2020-05-07 18:32:30', '2020-05-07 18:34:11');
INSERT INTO `interface_info` VALUES (34, 'POST', '/api/demoss', 1, '', 'SQL', '-- a new Query.\nselect * from interface_info;', '{}', '{\"requestBody\":\"{\\n  \\\"api_id\\\": \\\"12\\\"\\n}\",\"headerData\":[]}', '{\"resultStructure\":true,\"responseFormat\":\"{\\n  \\\"success\\\"      : \\\"@resultStatus\\\",\\n  \\\"message\\\"      : \\\"@resultMessage\\\",\\n  \\\"code\\\"         : \\\"@resultCode\\\",\\n  \\\"lifeCycleTime\\\": \\\"@timeLifeCycle\\\",\\n  \\\"executionTime\\\": \\\"@timeExecution\\\",\\n  \\\"value\\\"        : \\\"@resultData\\\"\\n}\"}', '2020-05-14 13:26:12', '2020-05-14 13:27:01');
INSERT INTO `interface_info` VALUES (35, 'POST', '/api/', 0, '', 'SQL', '-- a new Query.\nselect * from ruoyi.sys_user;', '{}', '{\"requestBody\":\"{\\\"message\\\":\\\"Hello DataQL.\\\"}\",\"headerData\":[]}', '{\"resultStructure\":true,\"responseFormat\":\"{\\n  \\\"success\\\"      : \\\"@resultStatus\\\",\\n  \\\"message\\\"      : \\\"@resultMessage\\\",\\n  \\\"code\\\"         : \\\"@resultCode\\\",\\n  \\\"lifeCycleTime\\\": \\\"@timeLifeCycle\\\",\\n  \\\"executionTime\\\": \\\"@timeExecution\\\",\\n  \\\"value\\\"        : \\\"@resultData\\\"\\n}\"}', '2020-05-14 13:30:55', '2020-05-14 13:31:31');
INSERT INTO `interface_info` VALUES (36, 'POST', '/api/test123', 1, '', 'SQL', '-- a new Query.\nselect * from user_info;', '{}', '{\"requestBody\":\"{\\\"message\\\":\\\"Hello DataQL.\\\"}\",\"headerData\":[]}', '{\"resultStructure\":true,\"responseFormat\":\"{\\n  \\\"success\\\"      : \\\"@resultStatus\\\",\\n  \\\"message\\\"      : \\\"@resultMessage\\\",\\n  \\\"code\\\"         : \\\"@resultCode\\\",\\n  \\\"lifeCycleTime\\\": \\\"@timeLifeCycle\\\",\\n  \\\"executionTime\\\": \\\"@timeExecution\\\",\\n  \\\"value\\\"        : \\\"@resultData\\\"\\n}\"}', '2020-05-14 15:53:05', '2020-05-14 16:00:59');

SET FOREIGN_KEY_CHECKS = 1;
