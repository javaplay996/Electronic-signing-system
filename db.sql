/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm93614
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm93614` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm93614`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='客服中心';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (121,'2021-04-24 23:32:59',1,1,'提问1','回复1',1),(122,'2021-04-24 23:32:59',2,2,'提问2','回复2',2),(123,'2021-04-24 23:32:59',3,3,'提问3','回复3',3),(124,'2021-04-24 23:32:59',4,4,'提问4','回复4',4),(125,'2021-04-24 23:32:59',5,5,'提问5','回复5',5),(126,'2021-04-24 23:32:59',6,6,'提问6','回复6',6);

/*Table structure for table `chengjiaojiazoushi` */

DROP TABLE IF EXISTS `chengjiaojiazoushi`;

CREATE TABLE `chengjiaojiazoushi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `chengjiaojiage` int(11) DEFAULT NULL COMMENT '成交价格',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='成交价走势';

/*Data for the table `chengjiaojiazoushi` */

insert  into `chengjiaojiazoushi`(`id`,`addtime`,`diqu`,`fangyuanleixing`,`chengjiaojiage`,`shijian`,`tupian`) values (111,'2021-04-24 23:32:59','地区1','房源类型1',1,'时间1','http://localhost:8080/ssm93614/upload/chengjiaojiazoushi_tupian1.jpg'),(112,'2021-04-24 23:32:59','地区2','房源类型2',2,'时间2','http://localhost:8080/ssm93614/upload/chengjiaojiazoushi_tupian2.jpg'),(113,'2021-04-24 23:32:59','地区3','房源类型3',3,'时间3','http://localhost:8080/ssm93614/upload/chengjiaojiazoushi_tupian3.jpg'),(114,'2021-04-24 23:32:59','地区4','房源类型4',4,'时间4','http://localhost:8080/ssm93614/upload/chengjiaojiazoushi_tupian4.jpg'),(115,'2021-04-24 23:32:59','地区5','房源类型5',5,'时间5','http://localhost:8080/ssm93614/upload/chengjiaojiazoushi_tupian5.jpg'),(116,'2021-04-24 23:32:59','地区6','房源类型6',6,'时间6','http://localhost:8080/ssm93614/upload/chengjiaojiazoushi_tupian6.jpg');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm93614/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm93614/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm93614/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussfangyuanxinxi` */

DROP TABLE IF EXISTS `discussfangyuanxinxi`;

CREATE TABLE `discussfangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='房源信息评论表';

/*Data for the table `discussfangyuanxinxi` */

insert  into `discussfangyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-04-24 23:33:00',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-04-24 23:33:00',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-04-24 23:33:00',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-04-24 23:33:00',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-04-24 23:33:00',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-04-24 23:33:00',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fangyuanleixing` */

DROP TABLE IF EXISTS `fangyuanleixing`;

CREATE TABLE `fangyuanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='房源类型';

/*Data for the table `fangyuanleixing` */

insert  into `fangyuanleixing`(`id`,`addtime`,`fangyuanleixing`) values (41,'2021-04-24 23:32:59','房源类型1'),(42,'2021-04-24 23:32:59','房源类型2'),(43,'2021-04-24 23:32:59','房源类型3'),(44,'2021-04-24 23:32:59','房源类型4'),(45,'2021-04-24 23:32:59','房源类型5'),(46,'2021-04-24 23:32:59','房源类型6');

/*Table structure for table `fangyuanxinxi` */

DROP TABLE IF EXISTS `fangyuanxinxi`;

CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangzihuxing` varchar(200) DEFAULT NULL COMMENT '房子户型',
  `fangyuanweizhi` varchar(200) DEFAULT NULL COMMENT '房源位置',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `fangyuanmianji` varchar(200) DEFAULT NULL COMMENT '房源面积',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `zulinqixian` varchar(200) DEFAULT NULL COMMENT '租赁期限',
  `fangyuanjieshao` longtext COMMENT '房源介绍',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `hetongwenjian` longtext COMMENT '合同文件',
  `chengjiaoshijian` date DEFAULT NULL COMMENT '成交时间',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `chengjiaojia` int(11) DEFAULT NULL COMMENT '成交价',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619279249757 DEFAULT CHARSET=utf8 COMMENT='房源信息';

/*Data for the table `fangyuanxinxi` */

insert  into `fangyuanxinxi`(`id`,`addtime`,`fangyuanmingcheng`,`fangyuanleixing`,`fangzihuxing`,`fangyuanweizhi`,`zhuangtai`,`fangyuanmianji`,`zujin`,`zulinqixian`,`fangyuanjieshao`,`fangdongxingming`,`zhanghao`,`xingming`,`shouji`,`hetongwenjian`,`chengjiaoshijian`,`fangyuantupian`,`chengjiaojia`,`fabushijian`,`sfsh`,`shhf`) values (31,'2021-04-24 23:32:59','房源名称1','房源类型1','房子户型1','房源位置1','待租','房源面积1',1,'租赁期限1','<p>房源介绍1</p>','房东姓名1','账号1','姓名1','手机1','<p>合同文件1</p>','2021-04-24','http://localhost:8080/ssm93614/upload/fangyuanxinxi_fangyuantupian1.jpg',550,'2021-04-24 23:32:59','是',''),(32,'2021-04-24 23:32:59','房源名称2','房源类型2','房子户型2','房源位置2','待租','房源面积2',2,'租赁期限2','房源介绍2','房东姓名2','账号2','姓名2','手机2','合同文件2','2021-04-24','http://localhost:8080/ssm93614/upload/fangyuanxinxi_fangyuantupian2.jpg',2,'2021-04-24 23:32:59','是',''),(33,'2021-04-24 23:32:59','房源名称3','房源类型3','房子户型3','房源位置3','待租','房源面积3',3,'租赁期限3','房源介绍3','房东姓名3','账号3','姓名3','手机3','合同文件3','2021-04-24','http://localhost:8080/ssm93614/upload/fangyuanxinxi_fangyuantupian3.jpg',3,'2021-04-24 23:32:59','是',''),(34,'2021-04-24 23:32:59','房源名称4','房源类型4','房子户型4','房源位置4','待租','房源面积4',4,'租赁期限4','房源介绍4','房东姓名4','账号4','姓名4','手机4','合同文件4','2021-04-24','http://localhost:8080/ssm93614/upload/fangyuanxinxi_fangyuantupian4.jpg',4,'2021-04-24 23:32:59','是',''),(35,'2021-04-24 23:32:59','房源名称5','房源类型5','房子户型5','房源位置5','待租','房源面积5',5,'租赁期限5','房源介绍5','房东姓名5','账号5','姓名5','手机5','合同文件5','2021-04-24','http://localhost:8080/ssm93614/upload/fangyuanxinxi_fangyuantupian5.jpg',5,'2021-04-24 23:32:59','是',''),(36,'2021-04-24 23:32:59','房源名称6','房源类型6','房子户型6','房源位置6','待租','房源面积6',6,'租赁期限6','房源介绍6','房东姓名6','账号6','姓名6','手机6','合同文件6','2021-04-24','http://localhost:8080/ssm93614/upload/fangyuanxinxi_fangyuantupian6.jpg',6,'2021-04-24 23:32:59','是',''),(1619278571266,'2021-04-24 23:36:11','','房源类型1','','','','',NULL,'','','','','','','','2021-04-25','',560,NULL,'否',''),(1619278585963,'2021-04-24 23:36:25','','','','','','',NULL,'','','','','','','','2021-04-26','',670,NULL,'否',''),(1619278743220,'2021-04-24 23:39:03','','房源类型1','','','','',NULL,'','','','','','','','2021-04-30','',700,NULL,'否',''),(1619279249756,'2021-04-24 23:47:28','','','','','','',NULL,'','','','','','','','2021-04-28','',680,NULL,'否','');

/*Table structure for table `fangzihuxing` */

DROP TABLE IF EXISTS `fangzihuxing`;

CREATE TABLE `fangzihuxing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangzihuxing` varchar(200) DEFAULT NULL COMMENT '房子户型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='房子户型';

/*Data for the table `fangzihuxing` */

insert  into `fangzihuxing`(`id`,`addtime`,`fangzihuxing`) values (51,'2021-04-24 23:32:59','房子户型1'),(52,'2021-04-24 23:32:59','房子户型2'),(53,'2021-04-24 23:32:59','房子户型3'),(54,'2021-04-24 23:32:59','房子户型4'),(55,'2021-04-24 23:32:59','房子户型5'),(56,'2021-04-24 23:32:59','房子户型6');

/*Table structure for table `hetongwenjian` */

DROP TABLE IF EXISTS `hetongwenjian`;

CREATE TABLE `hetongwenjian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuanweizhi` varchar(200) DEFAULT NULL COMMENT '房源位置',
  `zuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '租户账号',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `zulinqixian` varchar(200) DEFAULT NULL COMMENT '租赁期限',
  `hetongwenjian` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `qiandingshijian` datetime DEFAULT NULL COMMENT '签订时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='合同文件';

/*Data for the table `hetongwenjian` */

insert  into `hetongwenjian`(`id`,`addtime`,`dingdanbianhao`,`fangyuanmingcheng`,`fangyuanweizhi`,`zuhuzhanghao`,`zuhuxingming`,`zhanghao`,`xingming`,`zujin`,`zulinqixian`,`hetongwenjian`,`qiandingshijian`) values (61,'2021-04-24 23:32:59','订单编号1','房源名称1','房源位置1','租户账号1','租户姓名1','账号1','姓名1',1,'租赁期限1','合同文件1','2021-04-24 23:32:59'),(62,'2021-04-24 23:32:59','订单编号2','房源名称2','房源位置2','租户账号2','租户姓名2','账号2','姓名2',2,'租赁期限2','合同文件2','2021-04-24 23:32:59'),(63,'2021-04-24 23:32:59','订单编号3','房源名称3','房源位置3','租户账号3','租户姓名3','账号3','姓名3',3,'租赁期限3','合同文件3','2021-04-24 23:32:59'),(64,'2021-04-24 23:32:59','订单编号4','房源名称4','房源位置4','租户账号4','租户姓名4','账号4','姓名4',4,'租赁期限4','合同文件4','2021-04-24 23:32:59'),(65,'2021-04-24 23:32:59','订单编号5','房源名称5','房源位置5','租户账号5','租户姓名5','账号5','姓名5',5,'租赁期限5','合同文件5','2021-04-24 23:32:59'),(66,'2021-04-24 23:32:59','订单编号6','房源名称6','房源位置6','租户账号6','租户姓名6','账号6','姓名6',6,'租赁期限6','合同文件6','2021-04-24 23:32:59');

/*Table structure for table `jiaoyidingdan` */

DROP TABLE IF EXISTS `jiaoyidingdan`;

CREATE TABLE `jiaoyidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `fangyuanweizhi` varchar(200) DEFAULT NULL COMMENT '房源位置',
  `zujin` int(11) DEFAULT NULL COMMENT '租金',
  `zulinqixian` varchar(200) DEFAULT NULL COMMENT '租赁期限',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '租户账号',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `hetongwenjian` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `jiaoyishijian` datetime DEFAULT NULL COMMENT '交易时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='交易订单';

/*Data for the table `jiaoyidingdan` */

insert  into `jiaoyidingdan`(`id`,`addtime`,`dingdanbianhao`,`fangyuanmingcheng`,`fangyuantupian`,`fangyuanweizhi`,`zujin`,`zulinqixian`,`zhanghao`,`xingming`,`zuhuzhanghao`,`zuhuxingming`,`hetongwenjian`,`jiaoyishijian`,`beizhu`,`ispay`) values (71,'2021-04-24 23:32:59','订单编号1','房源名称1','http://localhost:8080/ssm93614/upload/jiaoyidingdan_fangyuantupian1.jpg','房源位置1',1,'租赁期限1','账号1','姓名1','租户账号1','租户姓名1','合同文件1','2021-04-24 23:32:59','备注1','未支付'),(72,'2021-04-24 23:32:59','订单编号2','房源名称2','http://localhost:8080/ssm93614/upload/jiaoyidingdan_fangyuantupian2.jpg','房源位置2',2,'租赁期限2','账号2','姓名2','租户账号2','租户姓名2','合同文件2','2021-04-24 23:32:59','备注2','未支付'),(73,'2021-04-24 23:32:59','订单编号3','房源名称3','http://localhost:8080/ssm93614/upload/jiaoyidingdan_fangyuantupian3.jpg','房源位置3',3,'租赁期限3','账号3','姓名3','租户账号3','租户姓名3','合同文件3','2021-04-24 23:32:59','备注3','未支付'),(74,'2021-04-24 23:32:59','订单编号4','房源名称4','http://localhost:8080/ssm93614/upload/jiaoyidingdan_fangyuantupian4.jpg','房源位置4',4,'租赁期限4','账号4','姓名4','租户账号4','租户姓名4','合同文件4','2021-04-24 23:32:59','备注4','未支付'),(75,'2021-04-24 23:32:59','订单编号5','房源名称5','http://localhost:8080/ssm93614/upload/jiaoyidingdan_fangyuantupian5.jpg','房源位置5',5,'租赁期限5','账号5','姓名5','租户账号5','租户姓名5','合同文件5','2021-04-24 23:32:59','备注5','未支付'),(76,'2021-04-24 23:32:59','订单编号6','房源名称6','http://localhost:8080/ssm93614/upload/jiaoyidingdan_fangyuantupian6.jpg','房源位置6',6,'租赁期限6','账号6','姓名6','租户账号6','租户姓名6','合同文件6','2021-04-24 23:32:59','备注6','未支付');

/*Table structure for table `jingjiren` */

DROP TABLE IF EXISTS `jingjiren`;

CREATE TABLE `jingjiren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='经纪人';

/*Data for the table `jingjiren` */

insert  into `jingjiren`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shenfenzheng`,`shouji`,`touxiang`) values (21,'2021-04-24 23:32:59','经纪人1','123456','姓名1','男',1,'440300199101010001','13823888881','http://localhost:8080/ssm93614/upload/jingjiren_touxiang1.jpg'),(22,'2021-04-24 23:32:59','经纪人2','123456','姓名2','男',2,'440300199202020002','13823888882','http://localhost:8080/ssm93614/upload/jingjiren_touxiang2.jpg'),(23,'2021-04-24 23:32:59','经纪人3','123456','姓名3','男',3,'440300199303030003','13823888883','http://localhost:8080/ssm93614/upload/jingjiren_touxiang3.jpg'),(24,'2021-04-24 23:32:59','经纪人4','123456','姓名4','男',4,'440300199404040004','13823888884','http://localhost:8080/ssm93614/upload/jingjiren_touxiang4.jpg'),(25,'2021-04-24 23:32:59','经纪人5','123456','姓名5','男',5,'440300199505050005','13823888885','http://localhost:8080/ssm93614/upload/jingjiren_touxiang5.jpg'),(26,'2021-04-24 23:32:59','经纪人6','123456','姓名6','男',6,'440300199606060006','13823888886','http://localhost:8080/ssm93614/upload/jingjiren_touxiang6.jpg');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (151,'2021-04-24 23:33:00',1,'用户名1','留言内容1','回复内容1'),(152,'2021-04-24 23:33:00',2,'用户名2','留言内容2','回复内容2'),(153,'2021-04-24 23:33:00',3,'用户名3','留言内容3','回复内容3'),(154,'2021-04-24 23:33:00',4,'用户名4','留言内容4','回复内容4'),(155,'2021-04-24 23:33:00',5,'用户名5','留言内容5','回复内容5'),(156,'2021-04-24 23:33:00',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (141,'2021-04-24 23:32:59','标题1','简介1','http://localhost:8080/ssm93614/upload/news_picture1.jpg','内容1'),(142,'2021-04-24 23:32:59','标题2','简介2','http://localhost:8080/ssm93614/upload/news_picture2.jpg','内容2'),(143,'2021-04-24 23:32:59','标题3','简介3','http://localhost:8080/ssm93614/upload/news_picture3.jpg','内容3'),(144,'2021-04-24 23:32:59','标题4','简介4','http://localhost:8080/ssm93614/upload/news_picture4.jpg','内容4'),(145,'2021-04-24 23:32:59','标题5','简介5','http://localhost:8080/ssm93614/upload/news_picture5.jpg','内容5'),(146,'2021-04-24 23:32:59','标题6','简介6','http://localhost:8080/ssm93614/upload/news_picture6.jpg','内容6');

/*Table structure for table `quxiaodingdan` */

DROP TABLE IF EXISTS `quxiaodingdan`;

CREATE TABLE `quxiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `zujin` varchar(200) DEFAULT NULL COMMENT '租金',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '租户账号',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `hetongwenjian` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='取消订单';

/*Data for the table `quxiaodingdan` */

insert  into `quxiaodingdan`(`id`,`addtime`,`dingdanbianhao`,`fangyuanmingcheng`,`fangyuantupian`,`zujin`,`zhanghao`,`xingming`,`zuhuzhanghao`,`zuhuxingming`,`hetongwenjian`,`quxiaoshijian`,`beizhu`,`sfsh`,`shhf`,`ispay`) values (101,'2021-04-24 23:32:59','订单编号1','房源名称1','http://localhost:8080/ssm93614/upload/quxiaodingdan_fangyuantupian1.jpg','租金1','账号1','姓名1','租户账号1','租户姓名1','合同文件1','2021-04-24 23:32:59','备注1','是','','未支付'),(102,'2021-04-24 23:32:59','订单编号2','房源名称2','http://localhost:8080/ssm93614/upload/quxiaodingdan_fangyuantupian2.jpg','租金2','账号2','姓名2','租户账号2','租户姓名2','合同文件2','2021-04-24 23:32:59','备注2','是','','未支付'),(103,'2021-04-24 23:32:59','订单编号3','房源名称3','http://localhost:8080/ssm93614/upload/quxiaodingdan_fangyuantupian3.jpg','租金3','账号3','姓名3','租户账号3','租户姓名3','合同文件3','2021-04-24 23:32:59','备注3','是','','未支付'),(104,'2021-04-24 23:32:59','订单编号4','房源名称4','http://localhost:8080/ssm93614/upload/quxiaodingdan_fangyuantupian4.jpg','租金4','账号4','姓名4','租户账号4','租户姓名4','合同文件4','2021-04-24 23:32:59','备注4','是','','未支付'),(105,'2021-04-24 23:32:59','订单编号5','房源名称5','http://localhost:8080/ssm93614/upload/quxiaodingdan_fangyuantupian5.jpg','租金5','账号5','姓名5','租户账号5','租户姓名5','合同文件5','2021-04-24 23:32:59','备注5','是','','未支付'),(106,'2021-04-24 23:32:59','订单编号6','房源名称6','http://localhost:8080/ssm93614/upload/quxiaodingdan_fangyuantupian6.jpg','租金6','账号6','姓名6','租户账号6','租户姓名6','合同文件6','2021-04-24 23:32:59','备注6','是','','未支付');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619278461788,'1','zuhu','租户','zxfv2kvm0k4u117an8mj8anshh80291n','2021-04-24 23:34:33','2021-04-25 00:34:34'),(2,1,'abo','users','管理员','318mgkl5wpia6hsfgzdcc3tyypwwcuv8','2021-04-24 23:35:46','2021-04-25 00:35:47');

/*Table structure for table `tuizudan` */

DROP TABLE IF EXISTS `tuizudan`;

CREATE TABLE `tuizudan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanmingcheng` varchar(200) NOT NULL COMMENT '房源名称',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `fangyuanweizhi` varchar(200) NOT NULL COMMENT '房源位置',
  `zujin` int(11) NOT NULL COMMENT '租金',
  `zulinqixian` varchar(200) DEFAULT NULL COMMENT '租赁期限',
  `zuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '租户账号',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `tuizuriqi` date DEFAULT NULL COMMENT '退租日期',
  `tuizubeizhu` longtext COMMENT '退租备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='退租单';

/*Data for the table `tuizudan` */

insert  into `tuizudan`(`id`,`addtime`,`fangyuanmingcheng`,`fangyuantupian`,`fangyuanweizhi`,`zujin`,`zulinqixian`,`zuhuzhanghao`,`zuhuxingming`,`tuizuriqi`,`tuizubeizhu`,`zhanghao`,`xingming`,`shenfenzheng`,`sfsh`,`shhf`) values (81,'2021-04-24 23:32:59','房源名称1','http://localhost:8080/ssm93614/upload/tuizudan_fangyuantupian1.jpg','房源位置1',1,'租赁期限1','租户账号1','租户姓名1','2021-04-24','退租备注1','账号1','姓名1','身份证1','是',''),(82,'2021-04-24 23:32:59','房源名称2','http://localhost:8080/ssm93614/upload/tuizudan_fangyuantupian2.jpg','房源位置2',2,'租赁期限2','租户账号2','租户姓名2','2021-04-24','退租备注2','账号2','姓名2','身份证2','是',''),(83,'2021-04-24 23:32:59','房源名称3','http://localhost:8080/ssm93614/upload/tuizudan_fangyuantupian3.jpg','房源位置3',3,'租赁期限3','租户账号3','租户姓名3','2021-04-24','退租备注3','账号3','姓名3','身份证3','是',''),(84,'2021-04-24 23:32:59','房源名称4','http://localhost:8080/ssm93614/upload/tuizudan_fangyuantupian4.jpg','房源位置4',4,'租赁期限4','租户账号4','租户姓名4','2021-04-24','退租备注4','账号4','姓名4','身份证4','是',''),(85,'2021-04-24 23:32:59','房源名称5','http://localhost:8080/ssm93614/upload/tuizudan_fangyuantupian5.jpg','房源位置5',5,'租赁期限5','租户账号5','租户姓名5','2021-04-24','退租备注5','账号5','姓名5','身份证5','是',''),(86,'2021-04-24 23:32:59','房源名称6','http://localhost:8080/ssm93614/upload/tuizudan_fangyuantupian6.jpg','房源位置6',6,'租赁期限6','租户账号6','租户姓名6','2021-04-24','退租备注6','账号6','姓名6','身份证6','是','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-24 23:33:00');

/*Table structure for table `yewuqingkuang` */

DROP TABLE IF EXISTS `yewuqingkuang`;

CREATE TABLE `yewuqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `gongzuotaidu` int(11) DEFAULT NULL COMMENT '工作态度',
  `yewujineng` int(11) DEFAULT NULL COMMENT '业务技能',
  `gongzuojixiao` int(11) DEFAULT NULL COMMENT '工作绩效',
  `jiangchengjiajianfen` int(11) DEFAULT NULL COMMENT '奖惩加减分',
  `zongdefen` varchar(200) DEFAULT NULL COMMENT '总得分',
  `pingjiadengji` varchar(200) DEFAULT NULL COMMENT '评价等级',
  `pingjiayuefen` varchar(200) DEFAULT NULL COMMENT '评价月份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='业务情况';

/*Data for the table `yewuqingkuang` */

insert  into `yewuqingkuang`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`gangwei`,`gongzuotaidu`,`yewujineng`,`gongzuojixiao`,`jiangchengjiajianfen`,`zongdefen`,`pingjiadengji`,`pingjiayuefen`) values (91,'2021-04-24 23:32:59','账号1','姓名1','部门1','岗位1',10,10,10,5,'总得分1','优秀','评价月份1'),(92,'2021-04-24 23:32:59','账号2','姓名2','部门2','岗位2',10,10,10,5,'总得分2','优秀','评价月份2'),(93,'2021-04-24 23:32:59','账号3','姓名3','部门3','岗位3',10,10,10,5,'总得分3','优秀','评价月份3'),(94,'2021-04-24 23:32:59','账号4','姓名4','部门4','岗位4',10,10,10,5,'总得分4','优秀','评价月份4'),(95,'2021-04-24 23:32:59','账号5','姓名5','部门5','岗位5',10,10,10,5,'总得分5','优秀','评价月份5'),(96,'2021-04-24 23:32:59','账号6','姓名6','部门6','岗位6',10,10,10,5,'总得分6','优秀','评价月份6');

/*Table structure for table `zuhu` */

DROP TABLE IF EXISTS `zuhu`;

CREATE TABLE `zuhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuhuzhanghao` varchar(200) NOT NULL COMMENT '租户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zuhuxingming` varchar(200) NOT NULL COMMENT '租户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuhuzhanghao` (`zuhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619278461789 DEFAULT CHARSET=utf8 COMMENT='租户';

/*Data for the table `zuhu` */

insert  into `zuhu`(`id`,`addtime`,`zuhuzhanghao`,`mima`,`zuhuxingming`,`xingbie`,`shoujihao`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-24 23:32:59','租户1','123456','租户姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm93614/upload/zuhu_zhaopian1.jpg'),(12,'2021-04-24 23:32:59','租户2','123456','租户姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm93614/upload/zuhu_zhaopian2.jpg'),(13,'2021-04-24 23:32:59','租户3','123456','租户姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm93614/upload/zuhu_zhaopian3.jpg'),(14,'2021-04-24 23:32:59','租户4','123456','租户姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm93614/upload/zuhu_zhaopian4.jpg'),(15,'2021-04-24 23:32:59','租户5','123456','租户姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm93614/upload/zuhu_zhaopian5.jpg'),(16,'2021-04-24 23:32:59','租户6','123456','租户姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm93614/upload/zuhu_zhaopian6.jpg'),(1619278461788,'2021-04-24 23:34:21','1','1','1',NULL,'','','',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
