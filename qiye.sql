-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` char(32) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `login_count` int(4) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  `is_update` tinyint(4) DEFAULT '1',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `login_count`, `last_time`, `is_update`, `update_time`) VALUES
(1,	'admin',	'0a113ef6b61820daa5611c870ed8d5ee',	'php@qq.com',	12,	1503560725,	1,	NULL);

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `image` varchar(200) NOT NULL COMMENT '图片路径与名称',
  `link` varchar(200) NOT NULL COMMENT '链接地址',
  `desc` varchar(200) NOT NULL COMMENT '图片描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `banner` (`id`, `image`, `link`, `desc`) VALUES
(4,	'20170825/34b7042cb210c640ce4be2a8fa828e54.jpg',	'www.php.cn',	'php中文网'),
(2,	'20170825/d2a9713339a9f56f2521431a35b24ba9.png',	'peter.php.cn',	'ThinkPHP5企业站点开发');

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cate_name` varchar(200) NOT NULL COMMENT '分类名称 ',
  `cate_order` int(4) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `pid` int(11) NOT NULL COMMENT '父ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `category` (`id`, `cate_name`, `cate_order`, `pid`) VALUES
(1,	'新闻',	0,	0),
(3,	'公司新闻',	0,	1),
(4,	'行业新闻',	0,	1),
(7,	'国内新闻',	0,	1);

DROP TABLE IF EXISTS `system`;
CREATE TABLE `system` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '网站标题',
  `keywords` varchar(255) NOT NULL COMMENT '网站关键字',
  `desc` varchar(255) NOT NULL COMMENT '网站描述',
  `is_close` tinyint(2) NOT NULL COMMENT '是否关闭1:关0:开',
  `is_update` tinyint(2) NOT NULL COMMENT '更新标志位',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `system` (`id`, `title`, `keywords`, `desc`, `is_close`, `is_update`) VALUES
(1,	'PHP中文网',	'php,thinkphp5,php中文网',	'ThinkPHP5企业站点快速开发教程',	0,	1);

-- 2017-09-07 11:15:05