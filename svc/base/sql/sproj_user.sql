CREATE DATABASE  IF NOT EXISTS `sproj_user`  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci  DEFAULT ENCRYPTION='N' ;

USE `sproj_user`;

DROP TABLE IF EXISTS `user_phone`;
CREATE TABLE `user_phone` (
  `user_id` bigint unsigned NOT NULL COMMENT '用户ID',
  `country_code` char(4) NOT NULL DEFAULT '' COMMENT '手机国家区号,中国是86',
  `number` char(12) NOT NULL DEFAULT '' COMMENT '手机号码',
  `ct` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建时间, unix timestamp',
  `ut` bigint unsigned NOT NULL DEFAULT '0' COMMENT '更新时间, unix timestamp',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uidx_country_number`(`country_code`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` bigint unsigned NOT NULL COMMENT '用户ID',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(30) NOT NULL DEFAULT '' COMMENT '头像,数组',
  `signature` varchar(200) NOT NULL DEFAULT '' COMMENT '个人签名',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别 1 男 2 女',
  `birthday` char(10) NOT NULL DEFAULT '' COMMENT '生日 yyyy-mm-dd 格式',
  `constellation` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '星座',
  `hometown` varchar(6) NOT NULL DEFAULT '' COMMENT '家乡所在城市编码，前两位是国家编码，中间两位省份编码，后两位城市编码',
  `career` varchar(4) NOT NULL DEFAULT '' COMMENT '职业，前两位是行业分类，后两位数字是职业分类',
  `height` smallint unsigned NOT NULL DEFAULT '0' COMMENT '身高,厘米',
  `weight` smallint unsigned NOT NULL DEFAULT '0' COMMENT '体重,kg',
  `income` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '年收入',
  `education` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '教育水平',
  `marital_status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '婚姻状态',
  `account_status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '账号状态',
  `ct` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建时间, unix timestamp',
  `ut` bigint unsigned NOT NULL DEFAULT '0' COMMENT '更新时间, unix timestamp',
  PRIMARY KEY (`user_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';


