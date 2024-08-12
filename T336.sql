/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t336`;
CREATE DATABASE IF NOT EXISTS `t336` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t336`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-06 02:59:31'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-06 02:59:31'),
	(3, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-06 02:59:31'),
	(4, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-06 02:59:31'),
	(5, 'bumen_types', '部门', 1, '部门1', NULL, NULL, '2023-04-06 02:59:31'),
	(6, 'bumen_types', '部门', 2, '部门2', NULL, NULL, '2023-04-06 02:59:31'),
	(7, 'zhiwei_types', '职位', 1, '职位1', NULL, NULL, '2023-04-06 02:59:31'),
	(8, 'zhiwei_types', '职位', 2, '职位2', NULL, NULL, '2023-04-06 02:59:31'),
	(9, 'xueli_types', '学历状态', 1, '专科', NULL, NULL, '2023-04-06 02:59:31'),
	(10, 'xueli_types', '学历状态', 2, '本科', NULL, NULL, '2023-04-06 02:59:31'),
	(11, 'xueli_types', '学历状态', 2, '硕士', NULL, NULL, '2023-04-06 02:59:31'),
	(12, 'xueli_types', '学历状态', 2, '博士', NULL, NULL, '2023-04-06 02:59:31'),
	(13, 'yuangong_kaoqin_types', '员工考勤类型', 1, '日常考勤', NULL, NULL, '2023-04-06 02:59:31'),
	(14, 'yuangong_kaoqin_types', '员工考勤类型', 2, '考勤类型2', NULL, NULL, '2023-04-06 02:59:31'),
	(15, 'yuangong_kaoqin_list_types', '打卡状态', 1, '未打卡', NULL, NULL, '2023-04-06 02:59:31'),
	(16, 'yuangong_kaoqin_list_types', '打卡状态', 2, '已打卡', NULL, NULL, '2023-04-06 02:59:31'),
	(17, 'yuangongqingjia_types', '请假类型', 1, '生病', NULL, NULL, '2023-04-06 02:59:31'),
	(18, 'yuangongqingjia_types', '请假类型', 2, '有事', NULL, NULL, '2023-04-06 02:59:31'),
	(19, 'yuangongqingjia_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-04-06 02:59:31'),
	(20, 'yuangongqingjia_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-04-06 02:59:31'),
	(21, 'yuangongqingjia_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-04-06 02:59:31'),
	(22, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-06 02:59:32'),
	(23, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-06 02:59:32'),
	(24, 'jixiao_types', '绩效类型', 1, '绩效类型1', NULL, NULL, '2023-04-06 02:59:32'),
	(25, 'jixiao_types', '绩效类型', 2, '绩效类型2', NULL, NULL, '2023-04-06 02:59:32'),
	(26, 'jixiao_types', '绩效类型', 3, '绩效类型3', NULL, NULL, '2023-04-06 02:59:32'),
	(27, 'jixiao_types', '绩效类型', 4, '绩效类型4', NULL, NULL, '2023-04-06 02:59:32'),
	(28, 'peixun_types', '培训类型', 1, '培训类型1', NULL, NULL, '2023-04-06 02:59:32'),
	(29, 'peixun_types', '培训类型', 2, '培训类型2', NULL, NULL, '2023-04-06 02:59:32'),
	(30, 'peixun_types', '培训类型', 3, '培训类型3', NULL, NULL, '2023-04-06 02:59:32'),
	(31, 'peixun_types', '培训类型', 4, '培训类型4', NULL, NULL, '2023-04-06 02:59:32'),
	(32, 'renshidiaodong_types', '人事调动类型', 1, '人事调动类型1', NULL, NULL, '2023-04-06 02:59:32'),
	(33, 'renshidiaodong_types', '人事调动类型', 2, '人事调动类型2', NULL, NULL, '2023-04-06 02:59:32'),
	(34, 'renshidiaodong_types', '人事调动类型', 3, '人事调动类型3', NULL, NULL, '2023-04-06 02:59:32'),
	(35, 'renshidiaodong_types', '人事调动类型', 4, '人事调动类型4', NULL, NULL, '2023-04-06 02:59:32'),
	(36, 'zhaopin_types', '招聘类型', 1, '招聘类型1', NULL, NULL, '2023-04-06 02:59:32'),
	(37, 'zhaopin_types', '招聘类型', 2, '招聘类型2', NULL, NULL, '2023-04-06 02:59:32'),
	(38, 'zhaopin_types', '招聘类型', 3, '招聘类型3', NULL, NULL, '2023-04-06 02:59:32'),
	(39, 'zhaopin_types', '招聘类型', 4, '招聘类型4', NULL, NULL, '2023-04-06 02:59:32'),
	(40, 'zhaopin_types', '招聘类型', 5, '招聘类型5', NULL, NULL, '2023-04-06 03:24:21'),
	(41, 'single_seach_types', '单页数据类型', 1, '公司介绍', NULL, NULL, '2023-04-11 03:40:17'),
	(42, 'single_seach_types', '单页数据类型', 2, '联系我们', NULL, NULL, '2023-04-11 03:40:17');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-04-06 03:00:19', '公告详情1', '2023-04-06 03:00:19'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-06 03:00:19', '公告详情2', '2023-04-06 03:00:19'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-06 03:00:19', '公告详情3', '2023-04-06 03:00:19'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-06 03:00:19', '公告详情4', '2023-04-06 03:00:19'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-06 03:00:19', '公告详情5', '2023-04-06 03:00:19'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-06 03:00:19', '公告详情6', '2023-04-06 03:00:19'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-04-06 03:00:19', '公告详情7', '2023-04-06 03:00:19'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-06 03:00:19', '公告详情8', '2023-04-06 03:00:19'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-06 03:00:19', '公告详情9', '2023-04-06 03:00:19'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-04-06 03:00:19', '公告详情10', '2023-04-06 03:00:19'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-04-06 03:00:19', '公告详情11', '2023-04-06 03:00:19'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-04-06 03:00:19', '公告详情12', '2023-04-06 03:00:19'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-04-06 03:00:19', '公告详情13', '2023-04-06 03:00:19'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-06 03:00:19', '<p>公告详情14ggg</p>', '2023-04-06 03:00:19');

DROP TABLE IF EXISTS `jixiao`;
CREATE TABLE IF NOT EXISTS `jixiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `jixiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '绩效编号',
  `jixiao_name` varchar(200) DEFAULT NULL COMMENT '绩效标题  Search111 ',
  `jixiao_file` varchar(200) DEFAULT NULL COMMENT '附件  Search111 ',
  `jixiao_types` int DEFAULT NULL COMMENT '绩效类型 Search111',
  `jixiao_dafen` decimal(10,2) DEFAULT NULL COMMENT '绩效打分',
  `pinggu_time` timestamp NULL DEFAULT NULL COMMENT '评估时间',
  `jixiao_content` longtext COMMENT '打分缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='绩效';

DELETE FROM `jixiao`;
INSERT INTO `jixiao` (`id`, `yuangong_id`, `jixiao_uuid_number`, `jixiao_name`, `jixiao_file`, `jixiao_types`, `jixiao_dafen`, `pinggu_time`, `jixiao_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1680750019420', '绩效标题1', 'upload/file.rar', 1, 25.00, '2023-04-06 03:00:19', '打分缘由1', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(2, 2, '1680750019476', '绩效标题2', 'upload/file.rar', 4, 904.23, '2023-04-06 03:00:19', '打分缘由2', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(3, 2, '1680750019403', '绩效标题3', 'upload/file.rar', 2, 150.73, '2023-04-06 03:00:19', '打分缘由3', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(4, 2, '1680750019487', '绩效标题4', 'upload/file.rar', 3, 4.80, '2023-04-06 03:00:19', '打分缘由4', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(5, 1, '1680750019406', '绩效标题5', 'upload/file.rar', 2, 987.82, '2023-04-06 03:00:19', '打分缘由5', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(6, 3, '1680750019470', '绩效标题6', 'upload/file.rar', 3, 587.18, '2023-04-06 03:00:19', '打分缘由6', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(7, 2, '1680750019460', '绩效标题7', 'upload/file.rar', 4, 824.10, '2023-04-06 03:00:19', '打分缘由7', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(8, 3, '1680750019443', '绩效标题8', 'upload/file.rar', 3, 654.40, '2023-04-06 03:00:19', '打分缘由8', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(9, 3, '1680750019457', '绩效标题9', 'upload/file.rar', 2, 477.99, '2023-04-06 03:00:19', '打分缘由9', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(10, 3, '1680750019472', '绩效标题10', 'upload/file.rar', 4, 316.22, '2023-04-06 03:00:19', '打分缘由10', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(11, 1, '1680750019467', '绩效标题11', 'upload/file.rar', 1, 21.67, '2023-04-06 03:00:19', '打分缘由11', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(12, 2, '1680750019448', '绩效标题12', 'upload/file.rar', 3, 540.67, '2023-04-06 03:00:19', '打分缘由12', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(13, 3, '1680750019423', '绩效标题13', 'upload/file.rar', 1, 100.10, '2023-04-06 03:00:19', '打分缘由13', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(14, 2, '1680750019413', '绩效标题14', 'upload/file.rar', 4, 846.75, '2023-04-06 03:00:19', '打分缘由14', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(15, 1, '1680751484104', '标题111', '/upload/1680751498375.doc', 4, 33.00, '2023-04-06 03:25:07', '<p>第三个十多个</p>', '2023-04-06 03:25:10', '2023-04-06 03:25:10');

DROP TABLE IF EXISTS `peixun`;
CREATE TABLE IF NOT EXISTS `peixun` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `peixun_uuid_number` varchar(200) DEFAULT NULL COMMENT '培训编号',
  `peixun_name` varchar(200) DEFAULT NULL COMMENT '培训标题  Search111 ',
  `peixun_types` int DEFAULT NULL COMMENT '培训类型 Search111',
  `kaishi_time` date DEFAULT NULL COMMENT '培训开始时间',
  `jieshu_time` date DEFAULT NULL COMMENT '培训结束时间',
  `peixun_content` longtext COMMENT '培训内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='培训';

DELETE FROM `peixun`;
INSERT INTO `peixun` (`id`, `yuangong_id`, `peixun_uuid_number`, `peixun_name`, `peixun_types`, `kaishi_time`, `jieshu_time`, `peixun_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '1680750019400', '培训标题1', 1, '2023-04-06', '2023-04-06', '培训内容1', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(2, 1, '1680750019438', '培训标题2', 1, '2023-04-06', '2023-04-06', '培训内容2', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(3, 2, '1680750019430', '培训标题3', 3, '2023-04-06', '2023-04-06', '培训内容3', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(4, 2, '1680750019470', '培训标题4', 1, '2023-04-06', '2023-04-06', '培训内容4', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(5, 3, '1680750019429', '培训标题5', 2, '2023-04-06', '2023-04-06', '培训内容5', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(6, 1, '1680750019480', '培训标题6', 4, '2023-04-06', '2023-04-06', '培训内容6', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(7, 2, '1680750019437', '培训标题7', 1, '2023-04-06', '2023-04-06', '培训内容7', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(8, 2, '1680750019441', '培训标题8', 2, '2023-04-06', '2023-04-06', '培训内容8', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(9, 2, '1680750019476', '培训标题9', 3, '2023-04-06', '2023-04-06', '培训内容9', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(10, 1, '1680750019485', '培训标题10', 3, '2023-04-06', '2023-04-06', '培训内容10', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(11, 3, '1680750019466', '培训标题11', 4, '2023-04-06', '2023-04-06', '培训内容11', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(12, 3, '1680750019411', '培训标题12', 4, '2023-04-06', '2023-04-06', '培训内容12', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(13, 3, '1680750019431', '培训标题13', 1, '2023-04-06', '2023-04-06', '培训内容13', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(14, 1, '1680750019417', '培训标题14', 2, '2023-04-06', '2023-04-06', '培训内容14', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(15, 1, '1680751513070', '培训1111', 3, '2023-04-06', '2023-04-21', '<p>固定死发的是股份第三个</p>', '2023-04-06 03:25:26', '2023-04-06 03:25:26');

DROP TABLE IF EXISTS `renshidiaodong`;
CREATE TABLE IF NOT EXISTS `renshidiaodong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `renshidiaodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '人事调动编号',
  `renshidiaodong_types` int DEFAULT NULL COMMENT '人事调动类型 Search111',
  `diaodong_time` timestamp NULL DEFAULT NULL COMMENT '调动时间',
  `yuan_bumen` varchar(200) DEFAULT NULL COMMENT '原部门',
  `yuan_zhiwei` varchar(200) DEFAULT NULL COMMENT '原职位',
  `bumen_types` int DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `renshidiaodong_content` longtext COMMENT '调动缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='人事调动';

DELETE FROM `renshidiaodong`;
INSERT INTO `renshidiaodong` (`id`, `yuangong_id`, `renshidiaodong_uuid_number`, `renshidiaodong_types`, `diaodong_time`, `yuan_bumen`, `yuan_zhiwei`, `bumen_types`, `zhiwei_types`, `renshidiaodong_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '1680750019466', 2, '2023-04-06 03:00:19', '原部门1', '原职位1', 2, 1, '调动缘由1', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(2, 3, '1680750019465', 4, '2023-04-06 03:00:19', '原部门2', '原职位2', 2, 2, '调动缘由2', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(3, 2, '1680750019482', 4, '2023-04-06 03:00:19', '原部门3', '原职位3', 2, 2, '调动缘由3', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(4, 3, '1680750019419', 1, '2023-04-06 03:00:19', '原部门4', '原职位4', 1, 1, '调动缘由4', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(5, 3, '1680750019458', 2, '2023-04-06 03:00:19', '原部门5', '原职位5', 1, 2, '调动缘由5', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(6, 2, '1680750019406', 1, '2023-04-06 03:00:19', '原部门6', '原职位6', 2, 2, '调动缘由6', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(7, 3, '1680750019402', 4, '2023-04-06 03:00:19', '原部门7', '原职位7', 1, 2, '调动缘由7', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(8, 3, '1680750019475', 4, '2023-04-06 03:00:19', '原部门8', '原职位8', 2, 1, '调动缘由8', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(9, 3, '1680750019417', 4, '2023-04-06 03:00:19', '原部门9', '原职位9', 2, 2, '调动缘由9', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(10, 3, '1680750019471', 3, '2023-04-06 03:00:19', '原部门10', '原职位10', 1, 1, '调动缘由10', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(11, 2, '1680750019428', 2, '2023-04-06 03:00:19', '原部门11', '原职位11', 2, 2, '调动缘由11', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(12, 2, '1680750019459', 4, '2023-04-06 03:00:19', '原部门12', '原职位12', 1, 1, '调动缘由12', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(13, 1, '1680750019428', 3, '2023-04-06 03:00:19', '原部门13', '原职位13', 1, 2, '调动缘由13', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(14, 2, '1680750019404', 3, '2023-04-06 03:00:19', '原部门14', '原职位14', 2, 1, '调动缘由14', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(15, 1, '1680751551283', 1, '2023-04-06 03:26:13', '部门2', '职位2', 1, 2, '<p>个第三个第三个</p>', '2023-04-06 03:26:26', '2023-04-06 03:26:26'),
	(16, 1, '1680751657370', 1, '2023-04-06 03:27:42', '部门2', '职位2', 1, 1, '<p>共和国哈哈哈</p>', '2023-04-06 03:27:52', '2023-04-06 03:27:52');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` longtext COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_photo`, `single_seach_content`, `create_time`) VALUES
	(1, '公司介绍', 1, 'upload/config1.jpg', '公司介绍内容', '2023-04-11 05:13:45'),
	(2, '联系我们', 2, 'upload/config2.jpg', '<p>联系我们内容gadfgda第三方归属感</p>', '2023-04-11 05:13:45');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'oppwdtm2fugw8jm5geikia0t3xl60cu4', '2023-04-06 03:04:34', '2024-08-04 04:10:57'),
	(2, 2, 'a2', 'yuangong', '员工', 'jbxqtd15nb1n9vbvzgsfk47fhr3vvpsa', '2023-04-06 03:21:42', '2023-04-06 04:21:42'),
	(3, 1, 'a1', 'yuangong', '员工', '72rnt614rrb0yweyw4qwd10op5hwnnv5', '2023-04-06 03:30:11', '2024-08-04 04:12:23'),
	(4, 1, 'a1', 'yonghu', '用户', 'vvv2rz1kxpg8brolabg3c40tqsadedfd', '2023-04-11 05:19:48', '2024-08-04 04:12:40'),
	(5, 6, 'a5', 'yonghu', '用户', 'yhfrqzaqpxu3by6ut7pc9udpq4ps01t1', '2023-04-11 05:23:08', '2023-04-11 06:23:08');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-06 02:59:31');

DROP TABLE IF EXISTS `xinzi`;
CREATE TABLE IF NOT EXISTS `xinzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '基本工资',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '奖金',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
  `xinzi_content` longtext COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='薪资';

DELETE FROM `xinzi`;
INSERT INTO `xinzi` (`id`, `yuangong_id`, `xinzi_uuid_number`, `xinzi_name`, `xinzi_month`, `jiben_jine`, `jiangjin_jine`, `jixiao_jine`, `butie_jine`, `shifa_jine`, `xinzi_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '1680750019432', '标题1', '2023-04', 837.81, 982.78, 806.40, 968.36, 255.65, '备注1', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(2, 2, '1680750019467', '标题2', '2023-04', 465.04, 866.44, 57.01, 337.01, 132.72, '备注2', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(3, 3, '1680750019463', '标题3', '2023-04', 724.88, 562.35, 96.85, 918.50, 498.73, '备注3', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(4, 3, '1680750019429', '标题4', '2023-04', 19.21, 520.78, 839.90, 888.64, 749.53, '备注4', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(5, 3, '1680750019405', '标题5', '2023-04', 966.22, 133.67, 294.53, 222.85, 787.56, '备注5', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(6, 2, '1680750019464', '标题6', '2023-04', 565.97, 195.06, 849.33, 897.01, 85.76, '备注6', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(7, 2, '1680750019421', '标题7', '2023-04', 586.29, 211.88, 861.94, 644.02, 501.15, '备注7', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(8, 1, '1680750019410', '标题8', '2023-04', 566.06, 563.22, 185.34, 192.00, 759.30, '备注8', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(9, 2, '1680750019487', '标题9', '2023-04', 653.21, 255.22, 869.54, 821.93, 738.55, '备注9', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(10, 2, '1680750019404', '标题10', '2023-04', 254.35, 982.00, 619.70, 157.16, 242.11, '备注10', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(11, 3, '1680750019422', '标题11', '2023-04', 65.17, 14.74, 584.28, 285.62, 992.64, '备注11', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(12, 2, '1680750019500', '标题12', '2023-04', 961.12, 398.50, 142.97, 973.06, 221.01, '备注12', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(13, 3, '1680750019440', '标题13', '2023-04', 598.33, 352.52, 951.17, 679.45, 85.15, '备注13', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(14, 1, '1680750019419', '标题14', '2023-04', 503.44, 360.98, 132.32, 651.10, 949.98, '备注14', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(15, 1, '1680751684457', '标题2 2222', '2023-03', 300.00, 400.00, 200.00, 5500.00, 6400.00, '<p>飞洒发三份</p>', '2023-04-06 03:28:50', '2023-04-06 03:28:50');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `jinyong_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yuangong1.jpg', 1, '1@qq.com', 1, '2023-04-11 03:43:12'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yuangong2.jpg', 2, '1@qq.com', 1, '2023-04-11 03:43:12'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yuangong3.jpg', 1, '1@qq.com', 2, '2023-04-11 03:43:12'),
	(6, '用户4', '123456', '张5', '17788889999', '444555888899999991', 'upload/1681190613708.jpg', 2, '5@qq.com', 1, '2023-04-11 05:23:03');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `bumen_types` int DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `xueli_types` int DEFAULT NULL COMMENT '学历状态 Search111 ',
  `yuangong_jiaoyu_content` longtext COMMENT '教育经历',
  `yuangong_gongzuo_content` longtext COMMENT '工作经历',
  `shangpin_shixi_content` longtext COMMENT '实习经历',
  `shangpin_rongu_content` longtext COMMENT '所获荣誉',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `bumen_types`, `zhiwei_types`, `yuangong_email`, `xueli_types`, `yuangong_jiaoyu_content`, `yuangong_gongzuo_content`, `shangpin_shixi_content`, `shangpin_rongu_content`, `jinyong_types`, `create_time`) VALUES
	(1, '员工1', '123456', '员工姓名1', '17703786901', '410224199010102001', 'upload/yuangong1.jpg', 2, 1, 1, '1@qq.com', 1, '教育经历1', '工作经历1', '实习经历1', '所获荣誉1', 1, '2023-04-06 03:00:19'),
	(2, '员工2', '123456', '员工姓名2', '17703786902', '410224199010102002', 'upload/yuangong2.jpg', 1, 2, 2, '2@qq.com', 2, '教育经历2', '工作经历2', '实习经历2', '所获荣誉2', 1, '2023-04-06 03:00:19'),
	(3, '员工3', '123456', '员工姓名3', '17703786903', '410224199010102003', 'upload/yuangong3.jpg', 2, 1, 1, '3@qq.com', 2, '<p>教育经历3</p>', '<p>工作经历3</p>', '<p>实习经历3</p>', '<p>所获荣誉3</p>', 2, '2023-04-06 03:00:19');

DROP TABLE IF EXISTS `yuangongqingjia`;
CREATE TABLE IF NOT EXISTS `yuangongqingjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `yuangongqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `yuangongqingjia_text` longtext COMMENT '请假缘由',
  `yuangongqingjia_types` int DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yuangongqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `yuangongqingjia_number` int DEFAULT NULL COMMENT '请假天数',
  `yuangongqingjia_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111 ',
  `yuangongqingjia_yesno_text` longtext COMMENT '处理意见',
  `yuangongqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='员工请假';

DELETE FROM `yuangongqingjia`;
INSERT INTO `yuangongqingjia` (`id`, `yuangong_id`, `yuangongqingjia_name`, `yuangongqingjia_text`, `yuangongqingjia_types`, `insert_time`, `yuangongqingjia_time`, `yuangongqingjia_number`, `yuangongqingjia_yesno_types`, `yuangongqingjia_yesno_text`, `yuangongqingjia_shenhe_time`, `create_time`) VALUES
	(1, 1, '请假标题1', '请假缘由1', 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 202, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(2, 2, '请假标题2', '请假缘由2', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 30, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(3, 3, '请假标题3', '请假缘由3', 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 239, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(4, 3, '请假标题4', '请假缘由4', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 272, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(5, 1, '请假标题5', '请假缘由5', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 283, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(6, 3, '请假标题6', '请假缘由6', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 464, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(7, 2, '请假标题7', '请假缘由7', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 110, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(8, 3, '请假标题8', '请假缘由8', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 262, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(9, 2, '请假标题9', '请假缘由9', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 449, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(10, 3, '请假标题10', '请假缘由10', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 196, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(11, 2, '请假标题11', '请假缘由11', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 329, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(12, 1, '请假标题12', '请假缘由12', 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 151, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(13, 2, '请假标题13', '请假缘由13', 2, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 73, 1, NULL, NULL, '2023-04-06 03:00:19'),
	(14, 2, '请假标题14', '请假缘由14', 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', 434, 3, '刚刚好很好', '2023-04-06 03:29:43', '2023-04-06 03:00:19'),
	(15, 1, '请假标题2222', '缘由我是三分', 1, '2023-04-06 03:31:09', '2023-04-06 03:31:06', 3, 1, '', NULL, '2023-04-06 03:31:09');

DROP TABLE IF EXISTS `yuangong_kaoqin`;
CREATE TABLE IF NOT EXISTS `yuangong_kaoqin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_kaoqin_uuid_number` varchar(200) DEFAULT NULL COMMENT '考勤唯一编号 Search111 ',
  `yuangong_kaoqin_name` varchar(200) DEFAULT NULL COMMENT '考勤标题 Search111 ',
  `yuangong_kaoqin_types` int DEFAULT NULL COMMENT '员工考勤类型 Search111',
  `bumen_types` int DEFAULT NULL COMMENT '部门 Search111 ',
  `yuangong_kaoqin_content` longtext COMMENT '考勤详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考勤发起时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '考勤截止时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='员工考勤';

DELETE FROM `yuangong_kaoqin`;
INSERT INTO `yuangong_kaoqin` (`id`, `yuangong_kaoqin_uuid_number`, `yuangong_kaoqin_name`, `yuangong_kaoqin_types`, `bumen_types`, `yuangong_kaoqin_content`, `insert_time`, `jiezhi_time`, `create_time`) VALUES
	(1, '1680750019486', '考勤标题1', 1, 1, '考勤详情1', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(2, '1680750019448', '考勤标题2', 1, 2, '考勤详情2', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(3, '1680750019487', '考勤标题3', 1, 2, '考勤详情3', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(4, '1680750019437', '考勤标题4', 1, 1, '考勤详情4', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(5, '1680750019488', '考勤标题5', 2, 2, '考勤详情5', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(6, '1680750019419', '考勤标题6', 1, 1, '考勤详情6', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(7, '1680750019497', '考勤标题7', 1, 2, '考勤详情7', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(8, '1680750019437', '考勤标题8', 1, 1, '考勤详情8', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(9, '1680750019451', '考勤标题9', 2, 1, '考勤详情9', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(10, '1680750019463', '考勤标题10', 1, 2, '考勤详情10', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(11, '1680750019432', '考勤标题11', 2, 2, '考勤详情11', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(12, '1680750019490', '考勤标题12', 1, 1, '考勤详情12', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(13, '1680750019466', '考勤标题13', 1, 1, '考勤详情13', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(14, '1680750019496', '考勤标题14', 2, 1, '考勤详情14', '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(15, '1680751754193', '考勤1111', 1, 1, '<p>供电公司的观点是广东省广东省归属感根深蒂固</p>', '2023-04-06 03:29:30', '2023-04-06 16:00:00', '2023-04-06 03:29:30');

DROP TABLE IF EXISTS `yuangong_kaoqin_list`;
CREATE TABLE IF NOT EXISTS `yuangong_kaoqin_list` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `yuangong_kaoqin_id` int DEFAULT NULL COMMENT '考勤',
  `yuangong_kaoqin_list_types` int DEFAULT NULL COMMENT '打卡状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='员工考勤详情';

DELETE FROM `yuangong_kaoqin_list`;
INSERT INTO `yuangong_kaoqin_list` (`id`, `yuangong_id`, `yuangong_kaoqin_id`, `yuangong_kaoqin_list_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(2, 3, 2, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(3, 1, 3, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(4, 3, 4, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(5, 3, 5, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(6, 2, 6, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(7, 1, 7, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(8, 3, 8, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(9, 2, 9, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(10, 2, 10, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(11, 1, 11, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(12, 3, 12, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(13, 2, 13, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(14, 3, 14, 1, '2023-04-06 03:00:19', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(15, 1, 15, 2, '2023-04-06 03:29:30', '2023-04-06 03:30:53', '2023-04-06 03:29:30'),
	(16, 3, 15, 1, '2023-04-06 03:29:30', NULL, '2023-04-06 03:29:30');

DROP TABLE IF EXISTS `zhaopin`;
CREATE TABLE IF NOT EXISTS `zhaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '招聘编号',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘标题  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘图片',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '招聘地点',
  `zhaopin_file` varchar(200) DEFAULT NULL COMMENT '招聘附件',
  `zhaopin_types` int DEFAULT NULL COMMENT '招聘类型 Search111',
  `zhaopin_number` int DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_time` timestamp NULL DEFAULT NULL COMMENT '招聘时间',
  `zhaopin_content` longtext COMMENT '招聘详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='招聘';

DELETE FROM `zhaopin`;
INSERT INTO `zhaopin` (`id`, `zhaopin_uuid_number`, `zhaopin_name`, `zhaopin_photo`, `zhaopin_address`, `zhaopin_file`, `zhaopin_types`, `zhaopin_number`, `zhaopin_time`, `zhaopin_content`, `insert_time`, `create_time`) VALUES
	(1, '1680750019426', '招聘标题1', 'upload/zhaopin1.jpg', '招聘地点1', 'upload/file.rar', 3, 375, '2023-04-06 03:00:19', '招聘详情1', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(2, '1680750019436', '招聘标题2', 'upload/zhaopin2.jpg', '招聘地点2', 'upload/file.rar', 1, 233, '2023-04-06 03:00:19', '招聘详情2', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(3, '1680750019424', '招聘标题3', 'upload/zhaopin3.jpg', '招聘地点3', 'upload/file.rar', 2, 254, '2023-04-06 03:00:19', '招聘详情3', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(4, '1680750019446', '招聘标题4', 'upload/zhaopin4.jpg', '招聘地点4', 'upload/file.rar', 1, 92, '2023-04-06 03:00:19', '招聘详情4', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(5, '1680750019499', '招聘标题5', 'upload/zhaopin5.jpg', '招聘地点5', 'upload/file.rar', 2, 487, '2023-04-06 03:00:19', '招聘详情5', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(6, '1680750019416', '招聘标题6', 'upload/zhaopin6.jpg', '招聘地点6', 'upload/file.rar', 2, 246, '2023-04-06 03:00:19', '招聘详情6', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(7, '1680750019482', '招聘标题7', 'upload/zhaopin7.jpg', '招聘地点7', 'upload/file.rar', 1, 105, '2023-04-06 03:00:19', '招聘详情7', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(8, '1680750019416', '招聘标题8', 'upload/zhaopin8.jpg', '招聘地点8', 'upload/file.rar', 1, 128, '2023-04-06 03:00:19', '招聘详情8', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(9, '1680750019450', '招聘标题9', 'upload/zhaopin9.jpg', '招聘地点9', 'upload/file.rar', 4, 405, '2023-04-06 03:00:19', '招聘详情9', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(10, '1680750019452', '招聘标题10', 'upload/zhaopin10.jpg', '招聘地点10', 'upload/file.rar', 1, 240, '2023-04-06 03:00:19', '招聘详情10', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(11, '1680750019419', '招聘标题11', 'upload/zhaopin11.jpg', '招聘地点11', 'upload/file.rar', 3, 87, '2023-04-06 03:00:19', '招聘详情11', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(12, '1680750019461', '招聘标题12', 'upload/zhaopin12.jpg', '招聘地点12', 'upload/file.rar', 1, 278, '2023-04-06 03:00:19', '招聘详情12', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(13, '1680750019495', '招聘标题13', 'upload/zhaopin1.jpg', '招聘地点13', 'upload/file.rar', 3, 466, '2023-04-06 03:00:19', '招聘详情13', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(14, '1680750019486', '招聘标题14', 'upload/zhaopin2.jpg', '招聘地点14', 'upload/file.rar', 2, 370, '2023-04-06 03:00:19', '招聘详情14', '2023-04-06 03:00:19', '2023-04-06 03:00:19'),
	(15, '1680751787964', '招聘1111', 'upload/zhaopin3.jpg', '地点1111', '/upload/1680751796646.doc', 5, 666, '2023-04-13 16:00:00', '<p>勾搭勾搭gas的</p>', '2023-04-06 03:30:05', '2023-04-06 03:30:05');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
