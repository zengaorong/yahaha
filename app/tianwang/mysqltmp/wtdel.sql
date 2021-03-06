/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : leodb

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2018-12-06 16:29:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wtdel`
-- ----------------------------
DROP TABLE IF EXISTS `wtdel`;
CREATE TABLE `wtdel` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `watcher_id` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `creat_time` datetime DEFAULT NULL,
  `updata_time` datetime DEFAULT NULL,
  `work_for` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `erro_type` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `log_type` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `del_type` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watcher_id` (`watcher_id`),
  CONSTRAINT `wtdel_ibfk_1` FOREIGN KEY (`watcher_id`) REFERENCES `watcher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wtdel
-- ----------------------------
INSERT INTO `wtdel` VALUES ('10f496b0-f6d2-11e8-88d1-f44d307d3586', 'af_414C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1115651e-f6d2-11e8-8ee0-f44d307d3586', 'af_217C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('111dc98f-f6d2-11e8-bd72-f44d307d3586', 'af_420C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('112e9270-f6d2-11e8-a80c-f44d307d3586', 'af_338C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('113e9800-f6d2-11e8-b570-f44d307d3586', 'af_286C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('114acd00-f6d2-11e8-b447-f44d307d3586', 'af_111C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('11570200-f6d2-11e8-a3a8-f44d307d3586', 'af_167C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('115d1c80-f6d2-11e8-b469-f44d307d3586', 'af_258C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1161b05e-f6d2-11e8-8231-f44d307d3586', 'af_395C', '2018-12-03 16:04:32', '2018-12-03 16:04:32', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('116ad821-f6d2-11e8-b271-f44d307d3586', 'af_381C', '2018-12-03 16:04:33', '2018-12-03 16:04:33', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1171b5ee-f6d2-11e8-b11f-f44d307d3586', 'af_197C', '2018-12-03 16:04:33', '2018-12-03 16:04:33', '', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('117c6451-f6d2-11e8-a220-f44d307d3586', 'af_390C', '2018-12-03 16:04:33', '2018-12-03 16:04:33', '', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1e439ccf-f880-11e8-a66e-f44d307d3586', 'af_195C', '2018-12-05 19:22:58', '2018-12-05 20:11:13', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1e6ccfae-f880-11e8-b16c-f44d307d3586', 'af_050C', '2018-12-05 19:22:58', '2018-12-05 19:55:12', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1e86c04f-f880-11e8-98e3-f44d307d3586', 'af_117C', '2018-12-05 19:22:58', '2018-12-05 20:11:20', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1e916eae-f880-11e8-9ae3-f44d307d3586', 'af_088C', '2018-12-05 19:22:58', '2018-12-05 20:11:26', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1ea2378f-f880-11e8-aafb-f44d307d3586', 'af_110C', '2018-12-05 19:22:58', '2018-12-05 20:11:32', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1eab5f4f-f880-11e8-912b-f44d307d3586', 'af_223C', '2018-12-05 19:22:58', '2018-12-05 20:11:38', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1eb4870f-f880-11e8-87b7-f44d307d3586', 'af_104C', '2018-12-05 19:22:58', '2018-12-05 20:11:44', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1ebf5c80-f880-11e8-bad7-f44d307d3586', 'af_074C', '2018-12-05 19:22:59', '2018-12-05 20:11:51', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1ec724ae-f880-11e8-8a08-f44d307d3586', 'af_220C', '2018-12-05 19:22:59', '2018-12-05 20:11:57', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1ecfb02e-f880-11e8-a456-f44d307d3586', 'af_291C', '2018-12-05 19:22:59', '2018-12-05 20:12:03', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1edb7000-f880-11e8-9c5b-f44d307d3586', 'af_239C', '2018-12-05 19:22:59', '2018-12-05 20:12:19', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1ee35f40-f880-11e8-97b1-f44d307d3586', 'af_058C', '2018-12-05 19:22:59', '2018-12-05 20:12:25', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1ee8dd80-f880-11e8-948e-f44d307d3586', 'af_267C', '2018-12-05 19:22:59', '2018-12-05 20:12:31', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1ef587b0-f880-11e8-8810-f44d307d3586', 'af_055C', '2018-12-05 19:22:59', '2018-12-05 20:12:38', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1efc1761-f880-11e8-8b46-f44d307d3586', 'af_111C', '2018-12-05 19:22:59', '2018-12-05 20:12:44', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1f00d24f-f880-11e8-a2c2-f44d307d3586', 'af_278C', '2018-12-05 19:22:59', '2018-12-05 20:12:50', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1f053f1e-f880-11e8-a6e6-f44d307d3586', 'af_068C', '2018-12-05 19:22:59', '2018-12-05 20:12:56', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1f0cb930-f880-11e8-864b-f44d307d3586', 'af_340C', '2018-12-05 19:22:59', '2018-12-05 20:13:03', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1f121061-f880-11e8-8876-f44d307d3586', 'af_054C', '2018-12-05 19:22:59', '2018-12-05 20:13:09', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('1f182ae1-f880-11e8-b2d0-f44d307d3586', 'af_226C', '2018-12-05 19:22:59', '2018-12-05 20:13:15', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('20429ea1-f763-11e8-a142-f44d307d3586', 'af_022C', '2018-12-04 09:22:54', '2018-12-04 09:22:54', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('2076f50f-f763-11e8-b9da-f44d307d3586', 'af_267C', '2018-12-04 09:22:55', '2018-12-04 09:22:55', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('20806af0-f763-11e8-9e40-f44d307d3586', 'af_071C', '2018-12-04 09:22:55', '2018-12-04 09:22:55', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('2c653c70-f6d1-11e8-863a-f44d307d3586', 'af_134C', '2018-12-03 15:58:08', '2018-12-03 15:58:08', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('44549640-f826-11e8-be84-f44d307d3586', 'af_008C', '2018-12-05 08:39:47', '2018-12-05 08:56:16', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('4463d880-f826-11e8-90f3-f44d307d3586', 'af_001C', '2018-12-05 08:39:47', '2018-12-05 08:47:51', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('503ac861-f454-11e8-8816-f44d307d3586', 'af_261C', '2018-11-30 11:59:19', '2018-11-30 11:59:19', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('5c7e8ade-f453-11e8-a6e9-f44d307d3586', 'af_134C', '2018-11-30 11:52:30', '2018-11-30 11:52:30', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('5f732a21-f882-11e8-8dac-f44d307d3586', 'af_018C', '2018-12-05 19:39:06', '2018-12-05 19:55:15', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('5f8886de-f882-11e8-a0f0-f44d307d3586', 'af_118C', '2018-12-05 19:39:06', '2018-12-05 19:55:21', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('5f9705cf-f882-11e8-b461-f44d307d3586', 'af_062C', '2018-12-05 19:39:06', '2018-12-05 19:55:28', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('5fa8d130-f863-11e8-98ed-f44d307d3586', 'af_239C', '2018-12-05 15:57:12', '2018-12-05 16:12:57', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('6247aa70-f8d0-11e8-8330-f44d307d3586', 'af_001C', '2018-12-06 04:57:32', '2018-12-06 05:13:12', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('6250d540-f7eb-11e8-a002-f44d307d3586', 'af_154C', '2018-12-05 01:38:17', '2018-12-05 06:13:16', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('6261770f-f7eb-11e8-a527-f44d307d3586', 'af_391C', '2018-12-05 01:38:17', '2018-12-05 06:13:22', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('66be5f4f-f8ed-11e8-92f4-f44d307d3586', 'af_001C', '2018-12-06 08:25:14', '2018-12-06 08:41:17', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('66d26fa1-f694-11e8-8075-f44d307d3586', 'af_196C', '2018-12-03 08:43:07', '2018-12-03 08:43:07', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('66e7f370-f694-11e8-bce7-f44d307d3586', 'af_221C', '2018-12-03 08:43:07', '2018-12-03 08:43:07', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('66ffc12e-f694-11e8-a4dd-f44d307d3586', 'af_082C', '2018-12-03 08:43:07', '2018-12-03 08:43:07', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('6719d8de-f694-11e8-ad4d-f44d307d3586', 'af_383C', '2018-12-03 08:43:08', '2018-12-03 08:43:08', '光猫故障', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('6725bfc0-f694-11e8-b161-f44d307d3586', 'af_193C', '2018-12-03 08:43:08', '2018-12-03 08:43:08', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('672cebb0-f694-11e8-8240-f44d307d3586', 'af_207C', '2018-12-03 08:43:08', '2018-12-03 08:43:08', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('6924041e-f44c-11e8-bd38-f44d307d3586', 'af_001C', '2018-11-30 11:02:45', '2018-11-30 11:02:45', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('696ec8c0-f44c-11e8-942e-f44d307d3586', 'af_261C', '2018-11-30 11:02:45', '2018-11-30 11:02:45', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('698732c0-f44c-11e8-a3d3-f44d307d3586', 'af_368C', '2018-11-30 11:02:45', '2018-11-30 11:02:45', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('737cd4cf-f6e3-11e8-bda4-f44d307d3586', 'af_310C', '2018-12-03 18:08:59', '2018-12-03 18:08:59', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('7392318f-f6e3-11e8-85bc-f44d307d3586', 'af_414C', '2018-12-03 18:08:59', '2018-12-03 18:08:59', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('7505f0cf-f8db-11e8-95f0-f44d307d3586', 'af_414C', '2018-12-06 06:16:47', '2018-12-06 07:04:45', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('783657b0-f703-11e8-ae77-f44d307d3586', 'af_414C', '2018-12-03 21:58:10', '2018-12-03 21:58:10', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('8222c180-f435-11e8-baf3-f44d307d3586', 'af_311C', '2018-11-30 08:18:48', '2018-11-30 08:18:48', '断纤', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('8d78baf0-f36b-11e8-8144-f44d307d3586', 'af_292C', '2018-11-29 08:13:09', '2018-11-29 08:13:09', '割接', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('8d8230cf-f36b-11e8-80d1-f44d307d3586', 'af_324C', '2018-11-29 08:13:09', '2018-11-29 08:13:09', '倒杆', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('8d95439e-f36b-11e8-8616-f44d307d3586', 'af_424C', '2018-11-29 08:13:09', '2018-11-29 08:13:09', '拆房断纤，搞了几次', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('8da12a80-f36b-11e8-96e7-f44d307d3586', 'af_291C', '2018-11-29 08:13:09', '2018-11-29 08:13:09', '割接', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('8daac76e-f36b-11e8-ac24-f44d307d3586', 'af_238C', '2018-11-29 08:13:09', '2018-11-29 08:13:09', '球机坏', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('8db8f840-f36b-11e8-aed5-f44d307d3586', 'af_202C', '2018-11-29 08:13:09', '2018-11-29 08:13:09', '球机坏', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('8dc4df1e-f36b-11e8-9e97-f44d307d3586', 'af_189C', '2018-11-29 08:13:10', '2018-11-29 08:13:10', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('949ec600-f8e6-11e8-8582-f44d307d3586', 'af_414C', '2018-12-06 07:36:25', '2018-12-06 08:25:21', '服务器不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('972eca1e-f7fe-11e8-b577-f44d307d3586', 'af_265C', '2018-12-05 03:55:46', '2018-12-05 08:31:34', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('9749b2b0-f7de-11e8-931c-f44d307d3586', 'af_239C', '2018-12-05 00:06:42', '2018-12-05 00:52:26', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('9ba92c6e-f8b3-11e8-9f85-f44d307d3586', 'af_001C', '2018-12-06 01:31:32', '2018-12-06 01:47:35', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('9d7ac4d1-f716-11e8-8ed1-f44d307d3586', 'af_001C', '2018-12-04 00:15:13', '2018-12-04 00:15:13', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('a820dede-f48e-11e8-86fb-f44d307d3586', 'af_261C', '2018-11-30 18:56:57', '2018-11-30 18:56:57', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('bb04a1cf-f7be-11e8-ba4a-f44d307d3586', 'af_414C', '2018-12-04 20:18:38', '2018-12-04 21:04:30', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('c635d640-f896-11e8-87cd-f44d307d3586', 'af_414C', '2018-12-05 22:05:08', '2018-12-05 22:21:21', '设备不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('ccfce1c0-f8c9-11e8-b7f0-f44d307d3586', 'af_001C', '2018-12-06 04:10:24', '2018-12-06 04:26:08', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('cdaaec30-f7f1-11e8-a650-f44d307d3586', 'af_207C', '2018-12-05 02:24:14', '2018-12-06 08:25:28', '光猫故障', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('d7ebf240-f8df-11e8-a7a3-f44d307d3586', 'af_001C', '2018-12-06 06:48:11', '2018-12-06 07:37:03', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('dbe0f58f-f47e-11e8-9001-f44d307d3586', 'af_259C', '2018-11-30 17:03:52', '2018-11-30 17:03:52', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('dc3f9051-f47e-11e8-8e85-f44d307d3586', 'af_350C', '2018-11-30 17:03:53', '2018-11-30 17:03:53', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('dc4d4bf0-f47e-11e8-9287-f44d307d3586', 'af_349C', '2018-11-30 17:03:53', '2018-11-30 17:03:53', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('dd5ceb80-f7d1-11e8-8564-f44d307d3586', 'af_383C', '2018-12-04 22:35:36', '2018-12-05 08:31:40', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('e203db2e-f709-11e8-a79a-f44d307d3586', 'af_196C', '2018-12-03 22:44:05', '2018-12-05 08:31:46', '均不在线', '0', '0', '0');
INSERT INTO `wtdel` VALUES ('edc7f800-f869-11e8-8dff-f44d307d3586', 'af_001C', '2018-12-05 16:44:07', '2018-12-05 17:00:11', '单IP设备，设备异常', '0', '0', '0');

-- ----------------------------
-- Table structure for `wterror`
-- ----------------------------
DROP TABLE IF EXISTS `wterror`;
CREATE TABLE `wterror` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `watcher_id` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `creat_time` datetime DEFAULT NULL,
  `updata_time` datetime DEFAULT NULL,
  `work_for` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `erro_type` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `log_type` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `del_type` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watcher_id` (`watcher_id`),
  CONSTRAINT `wterror_ibfk_1` FOREIGN KEY (`watcher_id`) REFERENCES `watcher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wterror
-- ----------------------------
INSERT INTO `wterror` VALUES ('5092d36e-f454-11e8-8329-f44d307d3586', 'af_202C', '2018-11-30 11:59:20', '2018-11-30 11:59:20', '设备故障', '0', '0', '0');
INSERT INTO `wterror` VALUES ('62412ab0-f8e4-11e8-b77f-f44d307d3586', 'af_249C', '2018-12-06 07:20:41', '2018-12-06 07:20:41', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('6264430f-f8e4-11e8-8656-f44d307d3586', 'af_224C', '2018-12-06 07:20:42', '2018-12-06 07:20:42', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('62799fcf-f8e4-11e8-ad49-f44d307d3586', 'af_420C', '2018-12-06 07:20:42', '2018-12-06 07:20:42', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('6288e20f-f8e4-11e8-8757-f44d307d3586', 'af_269C', '2018-12-06 07:20:42', '2018-12-06 07:20:42', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('629209cf-f8e4-11e8-91e4-f44d307d3586', 'af_164C', '2018-12-06 07:20:42', '2018-12-06 07:20:42', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('629d7b80-f8e4-11e8-8908-f44d307d3586', 'af_121C', '2018-12-06 07:20:42', '2018-12-06 07:20:42', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('62a4b6d1-f889-11e8-9b74-f44d307d3586', 'af_195C', '2018-12-05 20:29:18', '2018-12-05 20:29:18', '单IP设备，设备异常', '0', '0', '0');
INSERT INTO `wterror` VALUES ('62ab371e-f8e4-11e8-9a78-f44d307d3586', 'af_124C', '2018-12-06 07:20:42', '2018-12-06 07:20:42', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('62b1519e-f8e4-11e8-86de-f44d307d3586', 'af_270C', '2018-12-06 07:20:42', '2018-12-06 07:20:42', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('62b8f2c0-f8e4-11e8-87dc-f44d307d3586', 'af_248C', '2018-12-06 07:20:42', '2018-12-06 07:20:42', '均不在线', '0', '0', '0');
INSERT INTO `wterror` VALUES ('66e0c780-f694-11e8-96f9-f44d307d3586', 'af_241C', '2018-12-03 08:43:07', '2018-12-03 08:43:07', '断纤 断电', '0', '0', '0');
INSERT INTO `wterror` VALUES ('672104d1-f694-11e8-aa81-f44d307d3586', 'af_375C', '2018-12-03 08:43:08', '2018-12-03 08:43:08', '光猫故障', '0', '0', '0');
INSERT INTO `wterror` VALUES ('8bf82470-f697-11e8-bc15-f44d307d3586', 'af_238C', '2018-12-03 09:05:38', '2018-12-03 09:05:38', '球机故障', '0', '0', '0');
INSERT INTO `wterror` VALUES ('8c0d8130-f697-11e8-8aae-f44d307d3586', 'af_324C', '2018-12-03 09:05:38', '2018-12-03 09:05:38', '倒杆', '0', '0', '0');
INSERT INTO `wterror` VALUES ('8d5e7c2e-f36b-11e8-86fe-f44d307d3586', 'af_138C', '2018-11-29 08:13:09', '2018-11-29 08:13:09', '施工影响，需要放过光缆', '0', '0', '0');
INSERT INTO `wterror` VALUES ('8db1cc4f-f36b-11e8-9215-f44d307d3586', 'af_044C', '2018-11-29 08:13:09', '2018-11-29 08:13:09', '倒杆', '0', '0', '0');
INSERT INTO `wterror` VALUES ('b4410170-f77a-11e8-a3f9-f44d307d3586', 'af_093C', '2018-12-04 12:11:41', '2018-12-04 12:11:41', '断纤', '0', '0', '0');
INSERT INTO `wterror` VALUES ('b7af3fa1-f79a-11e8-8764-f44d307d3586', 'af_359C', '2018-12-04 16:00:51', '2018-12-04 16:00:51', '断纤', '0', '0', '0');
INSERT INTO `wterror` VALUES ('d6c7432e-f8f1-11e8-8540-f44d307d3586', 'af_414C', '2018-12-06 08:57:00', '2018-12-06 08:57:00', '均不在线', '0', '0', '0');
