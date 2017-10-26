-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: rm-bp1755dof969exc8y.mysql.rds.aliyuncs.com    Database: yiyou
-- ------------------------------------------------------
-- Server version	5.6.34
dfgfgdfg
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `sc_app_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_app_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` enum('about','help') NOT NULL COMMENT '类型',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `weight` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '序号',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='APP帮助';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_article`
--

DROP TABLE IF EXISTS `sc_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `model` enum('normal','video') NOT NULL DEFAULT 'normal' COMMENT '模型',
  `short_title` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `tagIds` tinytext COMMENT 'tag标签',
  `source` varchar(1024) DEFAULT '' COMMENT '来源',
  `sourceUrl` varchar(1024) DEFAULT '' COMMENT '来源URL',
  `videoUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '视频地址',
  `publishedTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `author` varchar(30) NOT NULL DEFAULT '' COMMENT '作者',
  `about` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `body` text COMMENT '正文',
  `coverType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '封面类型',
  `covers` text COMMENT '封面图',
  `coverFileIds` varchar(255) NOT NULL DEFAULT '' COMMENT '封面图片ids',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `picture` varchar(255) NOT NULL DEFAULT '' COMMENT '文章头图，文章编辑／添加时，自动取正文的第１张图',
  `vertical_thumb` varchar(255) NOT NULL,
  `vertical_picture` varchar(255) NOT NULL,
  `status` enum('published','unpublished','trash') NOT NULL DEFAULT 'unpublished' COMMENT '状态',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否头条',
  `promoted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `sticky` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `postNum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复数',
  `upsNum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `hateNum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '差评数',
  `collectNum` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `userId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章发布人的ID',
  `productId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `autoPublish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '自动发布',
  `autoPublishTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '自动发布时间',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatedTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `is_timeliness` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否具有时效性',
  `timeliness_start` int(11) unsigned NOT NULL DEFAULT '0',
  `timeliness_end` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `publishedTime` (`publishedTime`)
) ENGINE=InnoDB AUTO_INCREMENT=1442 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_article_collect`
--

DROP TABLE IF EXISTS `sc_article_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_article_collect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统id',
  `articleId` int(10) unsigned NOT NULL COMMENT '资讯id',
  `productId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `userId` int(10) unsigned NOT NULL COMMENT '用户id',
  `deviceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '设备ID',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞时间',
  `uuid` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2294 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资讯收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_article_hate`
--

DROP TABLE IF EXISTS `sc_article_hate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_article_hate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统id',
  `articleId` int(10) unsigned NOT NULL COMMENT '资讯id',
  `userId` int(10) unsigned NOT NULL COMMENT '用户id',
  `deviceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '设备ID',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2774 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资讯点赞表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_article_like`
--

DROP TABLE IF EXISTS `sc_article_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_article_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统id',
  `articleId` int(10) unsigned NOT NULL COMMENT '资讯id',
  `userId` int(10) unsigned NOT NULL COMMENT '用户id',
  `deviceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '设备ID',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5335 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资讯点赞表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_article_review`
--

DROP TABLE IF EXISTS `sc_article_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_article_review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评价ID',
  `userId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价人ID',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评价的文章ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '评价标题',
  `content` text NOT NULL COMMENT '评论内容',
  `upsNum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `createdTime` int(10) unsigned NOT NULL COMMENT '评价创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=770 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_article_take`
--

DROP TABLE IF EXISTS `sc_article_take`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_article_take` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统id',
  `articleId` int(10) unsigned NOT NULL COMMENT '资讯id',
  `productId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `userId` int(10) unsigned NOT NULL COMMENT '用户id',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资讯收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_category`
--

DROP TABLE IF EXISTS `sc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '栏目名称',
  `code` varchar(64) NOT NULL COMMENT 'URL目录名称',
  `cover` varchar(200) DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0',
  `publishArticle` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许发布文章',
  `seoTitle` varchar(1024) NOT NULL DEFAULT '' COMMENT '栏目标题',
  `seoKeyword` varchar(1024) NOT NULL DEFAULT '' COMMENT 'SEO 关键字',
  `seoDesc` varchar(1024) NOT NULL DEFAULT '' COMMENT '栏目描述（SEO）',
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用（1：启用 0：停用)',
  `parentId` int(10) unsigned NOT NULL DEFAULT '0',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_city`
--

DROP TABLE IF EXISTS `sc_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_city` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '',
  `pinyin` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `suoxie` varchar(10) CHARACTER SET ascii NOT NULL DEFAULT '',
  `hot` tinyint(4) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2548 DEFAULT CHARSET=utf8 COMMENT='地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_coupon`
--

DROP TABLE IF EXISTS `sc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `batchId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批次ID',
  `type` enum('cash','discount') NOT NULL COMMENT '优惠券类型',
  `code` varchar(30) NOT NULL COMMENT '优惠码',
  `userId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `bindTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '获得时间',
  `usedTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `orderId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单号',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50031 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_coupon_batch`
--

DROP TABLE IF EXISTS `sc_coupon_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_coupon_batch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '优惠券名称',
  `type` enum('cash','discount') NOT NULL COMMENT '优惠券类型',
  `money` smallint(6) NOT NULL DEFAULT '0' COMMENT '优惠券面值',
  `rate` float(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '折扣比率',
  `num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总数',
  `startTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用开始时间',
  `expiredTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用结束时间',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '优惠券logo',
  `minAmount` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '消费最低金额',
  `data` text COMMENT '业务数据',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_data_picture`
--

DROP TABLE IF EXISTS `sc_data_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_data_picture` (
  `pic_id` bigint(21) NOT NULL AUTO_INCREMENT COMMENT '自动',
  `code` varchar(21) NOT NULL COMMENT '符号（poiid）',
  `url` varchar(255) NOT NULL COMMENT '图片url',
  `ptype` tinyint(1) NOT NULL COMMENT 'picture type  0：下小图片; 1：上大图片',
  `sort` tinyint(3) NOT NULL COMMENT '排序 下小图片的排列',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '追加日',
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新日',
  `user_pic_mark` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=594877 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_device`
--

DROP TABLE IF EXISTS `sc_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_device` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identify` varchar(50) NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'female',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='设备表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_feedback`
--

DROP TABLE IF EXISTS `sc_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `text` text COMMENT '内容',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `userId` int(8) unsigned DEFAULT '0' COMMENT '用户ID',
  `type` smallint(5) unsigned DEFAULT '0',
  `state` tinyint(3) unsigned DEFAULT '0',
  `reply` text COMMENT '回复内容',
  `clientType` tinyint(3) unsigned DEFAULT '0' COMMENT '客户端类型',
  `manufacture` varchar(255) DEFAULT NULL COMMENT '厂商',
  `model` text COMMENT '型号',
  `version` varchar(10) DEFAULT NULL COMMENT '版本号',
  `releaseVersion` varchar(10) DEFAULT NULL COMMENT '打包版本',
  `replyTime` int(10) unsigned DEFAULT '0' COMMENT '回复时间',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_file`
--

DROP TABLE IF EXISTS `sc_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '上传文件ID',
  `groupId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传文件组ID',
  `userId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传人ID',
  `uri` varchar(255) NOT NULL COMMENT '文件URI',
  `mime` varchar(255) NOT NULL COMMENT '文件MIME',
  `size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文件状态',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14060 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_file_group`
--

DROP TABLE IF EXISTS `sc_file_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_file_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传文件组ID',
  `name` varchar(255) NOT NULL COMMENT '上传文件组名称',
  `code` varchar(255) NOT NULL COMMENT '上传文件组编码',
  `public` tinyint(4) NOT NULL DEFAULT '1' COMMENT '文件组文件是否公开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_keyword`
--

DROP TABLE IF EXISTS `sc_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `name` varchar(64) NOT NULL COMMENT '标签名称',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标签创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_mobile_code`
--

DROP TABLE IF EXISTS `sc_mobile_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_mobile_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `updatedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `expiredTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='短信验证码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_order`
--

DROP TABLE IF EXISTS `sc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `sn` varchar(32) NOT NULL COMMENT '订单编号',
  `status` enum('created','paid','send','success','close') NOT NULL COMMENT '订单状态',
  `title` varchar(255) NOT NULL COMMENT '订单标题',
  `amount` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单实付金额',
  `totalPrice` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `wayPrice` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费',
  `productPrice` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `userId` int(10) unsigned NOT NULL COMMENT '订单创建人',
  `couponId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠码',
  `couponDiscount` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠码扣减金额',
  `payment` enum('none','alipay','tenpay','coin','wxpay','chinabank') NOT NULL DEFAULT 'none' COMMENT '订单支付方式',
  `paidTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `sendTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `finishedTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '完成时间',
  `cashSn` bigint(20) DEFAULT NULL COMMENT '支付流水号',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `contact` varchar(10) NOT NULL COMMENT '联系人',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `note` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `data` text COMMENT '订单业务数据',
  `createdTime` int(10) unsigned NOT NULL COMMENT '订单创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_order_log`
--

DROP TABLE IF EXISTS `sc_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_order_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单日志ID',
  `orderId` int(10) unsigned NOT NULL COMMENT '订单ID',
  `type` varchar(32) NOT NULL COMMENT '订单日志类型',
  `message` text COMMENT '订单日志内容',
  `data` text COMMENT '订单日志数据',
  `userId` int(10) unsigned NOT NULL COMMENT '订单操作人',
  `ip` varchar(255) NOT NULL COMMENT '订单操作IP',
  `createdTime` int(10) unsigned NOT NULL COMMENT '订单日志记录时间',
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_order_product`
--

DROP TABLE IF EXISTS `sc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_order_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `orderId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单号',
  `orderSn` varchar(32) NOT NULL COMMENT '订单流水号',
  `status` enum('created','paid','send','success','close') NOT NULL COMMENT '状态',
  `userId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `productId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章ID',
  `productName` varchar(50) NOT NULL COMMENT '商品名称',
  `productLogo` varchar(200) NOT NULL COMMENT '商品图片',
  `productPrice` decimal(10,2) NOT NULL COMMENT '商品价格',
  `productNum` smallint(5) unsigned NOT NULL COMMENT '商品数量',
  `productRuleKey` varchar(30) NOT NULL COMMENT '规格ID组合',
  `productRuleName` varchar(255) NOT NULL COMMENT '规格名称组合',
  `kdType` varchar(20) NOT NULL COMMENT '快递名称',
  `kdSn` varchar(50) NOT NULL COMMENT '快递单号',
  `data` text COMMENT '业务数据',
  `comment` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否评论',
  `sendTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `finishedTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_poidata`
--

DROP TABLE IF EXISTS `sc_poidata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_poidata` (
  `poiid` bigint(21) NOT NULL AUTO_INCREMENT COMMENT '符号',
  `country` varchar(5) NOT NULL COMMENT '国家',
  `grunaviflg` tinyint(1) DEFAULT NULL,
  `anotherid` varchar(21) DEFAULT NULL,
  `poiname` varchar(255) NOT NULL COMMENT '名字',
  `name_sub` varchar(255) NOT NULL COMMENT '名字(日语)',
  `opentime` varchar(500) DEFAULT NULL COMMENT '营业时间',
  `holiday` varchar(500) DEFAULT NULL COMMENT '休息',
  `lat` varchar(20) NOT NULL COMMENT '緯度',
  `lon` varchar(20) NOT NULL COMMENT '経度',
  `geom` point NOT NULL COMMENT '緯度 経度GEO',
  `kana` varchar(255) DEFAULT NULL COMMENT '片假名',
  `adress` varchar(600) DEFAULT NULL COMMENT '地址',
  `zipcode` varchar(10) DEFAULT NULL COMMENT '邮件号码',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码1',
  `phonesub` varchar(15) DEFAULT NULL COMMENT '电话号码2',
  `service_mail` varchar(60) DEFAULT NULL COMMENT '电子邮件',
  `budget_dinner` varchar(500) DEFAULT NULL COMMENT '均价DINNER',
  `budget_lunch` varchar(500) DEFAULT NULL COMMENT '均价LUNCH',
  `access` text COMMENT '访问',
  `cupon_flag_pc` tinyint(1) DEFAULT NULL COMMENT '优惠卷FLG	',
  `cupon_url_pc` varchar(255) DEFAULT NULL COMMENT '优惠卷URL',
  `cupon_flag_mobile` tinyint(1) DEFAULT NULL COMMENT 'MOBILE优惠卷FLG',
  `cupon_url_mobile` varchar(255) DEFAULT NULL COMMENT 'MOBILE优惠卷URL',
  `url` varchar(255) DEFAULT NULL COMMENT '官网',
  `url_mobile` varchar(255) DEFAULT NULL COMMENT '官网MOBILE',
  `categoriy_name_l` varchar(255) DEFAULT NULL COMMENT '分类1',
  `categoriy_name_m` varchar(255) DEFAULT NULL COMMENT '分类2',
  `categoriy_name_s` varchar(255) DEFAULT NULL COMMENT '分类3',
  `prefcode` varchar(10) NOT NULL COMMENT '都道府県',
  `jiscode` varchar(4) NOT NULL COMMENT 'JISCODE',
  `areacode_l_no` varchar(10) DEFAULT NULL COMMENT '区域lNumber',
  `areacode_l` varchar(255) DEFAULT NULL COMMENT '区域1',
  `areacode_m_no` varchar(10) DEFAULT NULL COMMENT '区域mNumber',
  `areacode_m` varchar(255) DEFAULT NULL COMMENT '区域2',
  `areacode_s` varchar(255) DEFAULT NULL COMMENT '区域3',
  `Chinese` tinyint(1) DEFAULT NULL COMMENT '中文对应',
  `flag_upcard` tinyint(1) DEFAULT NULL COMMENT '银联FLG	',
  `flag_creditcard` tinyint(1) DEFAULT NULL COMMENT '信用卡FLG',
  `name_creditcard` varchar(255) DEFAULT NULL COMMENT '信用卡NAME（N件）',
  `flag_emoney` tinyint(1) DEFAULT NULL COMMENT '电子货币FLG	',
  `name_emoney` varchar(255) DEFAULT NULL COMMENT '电子货币NAME（N件）',
  `explain_s` text COMMENT '説明１',
  `explain_l` text COMMENT '説明２',
  `flag_parking` tinyint(1) DEFAULT NULL COMMENT '停车站FLG',
  `flag_bar` tinyint(1) DEFAULT NULL COMMENT '酒場FLG',
  `hotspot` tinyint(1) DEFAULT NULL COMMENT '热点',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '追加日',
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新日',
  `inpression_avg` decimal(2,1) DEFAULT NULL,
  `sort` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '排序',
  `p1` int(11) DEFAULT NULL COMMENT '优先1～优先4',
  `p2` int(11) DEFAULT NULL COMMENT '优先1～优先4',
  `p3` int(11) DEFAULT NULL COMMENT '优先1～优先4',
  `p4` int(11) DEFAULT NULL COMMENT '优先1～优先4',
  `delflg` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`poiid`),
  KEY `idx_categoriy_name_l` (`categoriy_name_l`),
  KEY `idx_categoriy_name_m` (`categoriy_name_m`),
  KEY `idx_areacode_l` (`areacode_l`),
  KEY `idx_prefcode` (`prefcode`),
  FULLTEXT KEY `idx_explain_l` (`explain_l`),
  FULLTEXT KEY `idx_poiname` (`poiname`)
) ENGINE=InnoDB AUTO_INCREMENT=1014550 DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_product`
--

DROP TABLE IF EXISTS `sc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `status` enum('draft','published') NOT NULL DEFAULT 'draft' COMMENT '商品状态',
  `price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `originPrice` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品原价',
  `income` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '销售总收入',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `tags` text COMMENT '标签IDs',
  `smallPicture` varchar(255) NOT NULL DEFAULT '' COMMENT '小图',
  `middlePicture` varchar(255) NOT NULL DEFAULT '' COMMENT '中图',
  `largePicture` varchar(255) NOT NULL DEFAULT '' COMMENT '大图',
  `pictures` text COMMENT '商品图片',
  `about` varchar(255) DEFAULT NULL COMMENT '简介',
  `text` text NOT NULL COMMENT '商品描述',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为推荐',
  `recommendedSeq` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐序号',
  `recommendedTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐时间',
  `num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `hitNum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `buyNum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购买数量',
  `ruleIds` varchar(30) NOT NULL COMMENT '规格ids',
  `userId` int(10) unsigned NOT NULL COMMENT '发布人ID',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `createdTime` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_product_category`
--

DROP TABLE IF EXISTS `sc_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `code` varchar(64) NOT NULL DEFAULT '' COMMENT '分类编码',
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类完整路径',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '分类权重',
  `groupId` int(10) unsigned NOT NULL COMMENT '分类组ID',
  `parentId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父分类ID',
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uri` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_product_review`
--

DROP TABLE IF EXISTS `sc_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_product_review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评价ID',
  `userId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价人ID',
  `productId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评价的文章ID',
  `star` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '评论星级',
  `content` text NOT NULL COMMENT '评论内容',
  `pictures` text COMMENT '评论图片',
  `createdTime` int(10) unsigned NOT NULL COMMENT '评价创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_product_rule`
--

DROP TABLE IF EXISTS `sc_product_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_product_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品规格id',
  `key` varchar(30) NOT NULL COMMENT '规格id组合',
  `money` decimal(10,2) unsigned NOT NULL COMMENT '规格商城价',
  `mmoney` decimal(10,1) unsigned NOT NULL COMMENT '规格市场价',
  `logo` varchar(100) NOT NULL COMMENT '规格图片',
  `num` smallint(5) unsigned NOT NULL COMMENT '规格数量',
  `productId` int(10) unsigned NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品规格表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_product_wait`
--

DROP TABLE IF EXISTS `sc_product_wait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_product_wait` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统id',
  `articleId` int(10) unsigned NOT NULL COMMENT '资讯id',
  `productId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `userId` int(10) unsigned NOT NULL COMMENT '用户id',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代付款商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_review_like`
--

DROP TABLE IF EXISTS `sc_review_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_review_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统id',
  `reviewId` int(10) unsigned NOT NULL COMMENT '评论id',
  `userId` int(10) unsigned NOT NULL COMMENT '用户id',
  `deviceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '设备ID',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资讯点赞表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_rule`
--

DROP TABLE IF EXISTS `sc_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `name` varchar(20) NOT NULL COMMENT '规格名称',
  `memo` varchar(20) NOT NULL COMMENT '规格备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='规格表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_rule_item`
--

DROP TABLE IF EXISTS `sc_rule_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_rule_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格项id',
  `name` varchar(50) NOT NULL COMMENT '规格项名称',
  `logo` varchar(100) NOT NULL COMMENT '规格项图',
  `weight` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规格排序',
  `ruleId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规格id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_setting`
--

DROP TABLE IF EXISTS `sc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_setting` (
  `id` int(10) unsigned NOT NULL COMMENT '系统设置ID',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '系统设置名',
  `value` text COMMENT '系统设置值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_tag`
--

DROP TABLE IF EXISTS `sc_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `name` varchar(64) NOT NULL COMMENT '标签名称',
  `createdTime` int(10) unsigned NOT NULL COMMENT '标签创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_user`
--

DROP TABLE IF EXISTS `sc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `email` varchar(128) NOT NULL COMMENT '用户邮箱',
  `mobile` varchar(32) NOT NULL DEFAULT '' COMMENT '手机号',
  `password` varchar(64) NOT NULL COMMENT '用户密码',
  `salt` varchar(32) NOT NULL COMMENT '密码SALT',
  `payPassword` varchar(64) NOT NULL DEFAULT '' COMMENT '支付密码',
  `payPasswordSalt` varchar(64) NOT NULL DEFAULT '' COMMENT '支付密码Salt',
  `uri` varchar(64) NOT NULL DEFAULT '' COMMENT '用户URI',
  `level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `nickname` varchar(64) NOT NULL COMMENT '昵称',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT '标签',
  `type` varchar(32) NOT NULL COMMENT 'default默认为网站注册, weibo新浪微薄登录',
  `point` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `defaultAvatar` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '默认头像',
  `smallAvatar` varchar(255) NOT NULL DEFAULT '' COMMENT '小头像',
  `mediumAvatar` varchar(255) NOT NULL DEFAULT '' COMMENT '中头像',
  `largeAvatar` varchar(255) NOT NULL DEFAULT '' COMMENT '大头像',
  `emailVerified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '邮箱是否为已验证',
  `setup` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否初始化设置的，未初始化的可以设置邮箱、用户名。',
  `roles` varchar(255) NOT NULL COMMENT '用户角色',
  `promoted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为推荐',
  `promotedTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐时间',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否被禁止',
  `lockDeadline` int(10) NOT NULL DEFAULT '0' COMMENT '帐号锁定期限',
  `consecutivePasswordErrorTimes` int(11) NOT NULL DEFAULT '0' COMMENT '帐号密码错误次数',
  `lastPasswordFailTime` int(10) NOT NULL DEFAULT '0',
  `loginTime` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `loginIp` varchar(64) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `loginSessionId` varchar(255) NOT NULL DEFAULT '' COMMENT '最后登录会话ID',
  `approvalTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实名认证时间',
  `approvalStatus` enum('unapprove','approving','approved','approve_fail') NOT NULL DEFAULT 'unapprove' COMMENT '实名认证状态',
  `newMessageNum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '未读私信数',
  `newNotificationNum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '未读消息数',
  `deviceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '设备ID',
  `createdIp` varchar(64) NOT NULL DEFAULT '' COMMENT '注册IP',
  `createdTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=743 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_user_address`
--

DROP TABLE IF EXISTS `sc_user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_user_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `province` int(10) unsigned NOT NULL DEFAULT '0',
  `city` int(10) unsigned NOT NULL DEFAULT '0',
  `town` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(200) NOT NULL,
  `default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_user_profile`
--

DROP TABLE IF EXISTS `sc_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_user_profile` (
  `id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `truename` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `idcard` varchar(24) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `gender` enum('male','female') NOT NULL DEFAULT 'female' COMMENT '性别',
  `sex` smallint(5) NOT NULL DEFAULT '0' COMMENT '性别',
  `iam` varchar(255) NOT NULL DEFAULT '' COMMENT '我是谁',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '城市',
  `qq` varchar(32) NOT NULL DEFAULT '' COMMENT 'QQ',
  `signature` text COMMENT '签名',
  `about` text COMMENT '自我介绍',
  `company` varchar(255) NOT NULL DEFAULT '' COMMENT '公司',
  `job` smallint(255) NOT NULL DEFAULT '0' COMMENT '工作',
  `school` varchar(255) NOT NULL DEFAULT '' COMMENT '学校',
  `class` varchar(255) NOT NULL DEFAULT '' COMMENT '班级',
  `weibo` varchar(255) NOT NULL DEFAULT '' COMMENT '微博',
  `weixin` varchar(255) NOT NULL DEFAULT '' COMMENT '微信',
  `site` varchar(255) NOT NULL DEFAULT '' COMMENT '网站',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sc_user_token`
--

DROP TABLE IF EXISTS `sc_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc_user_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'TOKEN编号',
  `token` varchar(64) NOT NULL COMMENT 'TOKEN值',
  `userId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'TOKEN关联的用户ID',
  `type` varchar(255) NOT NULL COMMENT 'TOKEN类型',
  `data` text NOT NULL COMMENT 'TOKEN数据',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'TOKEN的校验次数限制(0表示不限制)',
  `remainedTimes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'TOKE剩余校验次数',
  `expiredTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'TOKEN过期时间',
  `createdTime` int(10) unsigned NOT NULL COMMENT 'TOKEN创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`(60))
) ENGINE=InnoDB AUTO_INCREMENT=1310 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-25 13:51:20
