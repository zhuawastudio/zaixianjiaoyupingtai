/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zaixianjiaoyupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixianjiaoyupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixianjiaoyupingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/zaixianjiaoyupingtai/upload/1618473376723.jpg'),(2,'picture2','http://localhost:8080/zaixianjiaoyupingtai/upload/1618473382243.jpg'),(3,'picture3','http://localhost:8080/zaixianjiaoyupingtai/upload/1618473388345.jpg'),(6,'homepage','http://localhost:8080/zaixianjiaoyupingtai/upload/1618473394386.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-15 14:52:43'),(2,'sex_types','性别',2,'女',NULL,'2021-04-15 14:52:43'),(3,'kechng_types','类型名称',1,'语文',NULL,'2021-04-15 14:52:43'),(4,'kechng_types','类型名称',2,'数学',NULL,'2021-04-15 14:52:43'),(5,'kechng_types','类型名称',3,'英语',NULL,'2021-04-15 14:52:43'),(6,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-15 14:52:43'),(7,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-15 14:52:43');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`create_time`) values (1,'333','123456','教师1',2,'410882200011301141','17796688971','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618470415761.jpg','2021-04-15 15:06:56'),(2,'444','123456','教师2',1,'410882200011261542','17796688972','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618470429049.jpg','2021-04-15 15:07:10');

/*Table structure for table `kechng` */

DROP TABLE IF EXISTS `kechng`;

CREATE TABLE `kechng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kechng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `kechng_photo` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `kechng_types` int(200) DEFAULT NULL COMMENT '类型 Search111',
  `shangke_time` timestamp NULL DEFAULT NULL COMMENT '上课时间',
  `xiake_time` timestamp NULL DEFAULT NULL COMMENT '下课时间',
  `kechng_content` text COMMENT '课程信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kechng` */

insert  into `kechng`(`id`,`kechng_name`,`kechng_photo`,`kechng_types`,`shangke_time`,`xiake_time`,`kechng_content`,`create_time`) values (22,'课程名称1','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618471482222.jpg',2,'2021-04-16 00:00:00','2021-04-17 00:00:00','课程信息1\r\n','2021-04-15 15:24:52'),(23,'课程名称2','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618471502915.jpg',3,'2021-04-15 15:00:00','2021-04-15 18:00:00','课程信息2\r\n','2021-04-15 15:25:40');

/*Table structure for table `kechng_collection` */

DROP TABLE IF EXISTS `kechng_collection`;

CREATE TABLE `kechng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kechng_id` int(11) DEFAULT NULL COMMENT '课程id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kechng_collection` */

insert  into `kechng_collection`(`id`,`kechng_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,22,1,'2021-04-15 15:29:22','2021-04-15 15:29:22');

/*Table structure for table `kechng_liuyan` */

DROP TABLE IF EXISTS `kechng_liuyan`;

CREATE TABLE `kechng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kechng_id` int(11) DEFAULT NULL COMMENT '课程id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `kechng_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kechng_liuyan` */

insert  into `kechng_liuyan`(`id`,`kechng_id`,`yonghu_id`,`kechng_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,22,1,'123',NULL,'2021-04-15 15:29:25','2021-04-15 15:29:25');

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
) ENGINE=InnoDB AUTO_INCREMENT=1618474525664 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1618474244866,'2021-04-15 16:10:44',1,'111','12312',NULL),(1618474525663,'2021-04-15 16:15:25',1,'111','12312',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1',1,'http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618472263201.jpg','2021-04-15 15:37:46','新闻详情1\r\n','2021-04-15 15:37:46'),(2,'新闻名称2',2,'http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618472272842.jpg','2021-04-15 15:37:55','新闻详情2\r\n','2021-04-15 15:37:55');

/*Table structure for table `shangjiao` */

DROP TABLE IF EXISTS `shangjiao`;

CREATE TABLE `shangjiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangjiao_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `kechng_types` int(200) DEFAULT NULL COMMENT '类型  Search111 ',
  `shangjiao_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `yonghu_id` int(100) DEFAULT NULL COMMENT '上交学生',
  `shangjiao_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='上交作业';

/*Data for the table `shangjiao` */

insert  into `shangjiao`(`id`,`shangjiao_name`,`kechng_types`,`shangjiao_file`,`yonghu_id`,`shangjiao_content`,`create_time`) values (1,'标题1',2,'http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618472217363.doc',1,'详情信息1\r\n','2021-04-15 15:37:01'),(2,'标题2',2,'http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618472234496.xls',2,'详情信息2\r\n','2021-04-15 15:37:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','i0630rvutvkuqj6uwipf82ia39zhci8d','2021-04-15 14:03:49','2021-04-15 16:57:03'),(2,1,'111','yonghu','用户','zhvdsft7g4ec3pid41l4klpxn65ni3rz','2021-04-15 15:26:08','2021-04-15 16:32:02'),(3,1,'333','jiaoshi','教师','7olj9eq9c1nqm7d9abmpcum7jg0qfmln','2021-04-15 15:52:14','2021-04-15 17:04:24');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','学生1',2,'410882199910211241','17796688971','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618470654276.jpg','2021-04-15 15:10:55'),(2,'222','123456','学生2',1,'410882199910211242','17796688972','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618470668842.jpg','2021-04-15 15:11:10');

/*Table structure for table `zaixianxuexi` */

DROP TABLE IF EXISTS `zaixianxuexi`;

CREATE TABLE `zaixianxuexi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zaixianxuexi_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `zaixianxuexi_photo` varchar(200) DEFAULT NULL COMMENT '封面 ',
  `kechng_types` int(200) DEFAULT NULL COMMENT '类型  Search111 ',
  `zaixianxuexi_video` varchar(200) DEFAULT NULL COMMENT '学习视频',
  `jiaoshi_id` int(100) DEFAULT NULL COMMENT '发布教师',
  `zaixianxuexi_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='在线学习';

/*Data for the table `zaixianxuexi` */

insert  into `zaixianxuexi`(`id`,`zaixianxuexi_name`,`zaixianxuexi_photo`,`kechng_types`,`zaixianxuexi_video`,`jiaoshi_id`,`zaixianxuexi_content`,`create_time`) values (1,'标题1','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618471309942.jpg',1,'http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618473645842.mp4',2,'详情信息1\r\n','2021-04-15 15:11:38'),(2,'标题2','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618471300288.jpg',3,'http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618473638730.mp4',1,'详情信息2\r\n','2021-04-15 15:12:00'),(3,'标题3','http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618473601266.jpg',2,'http://localhost:8080/zaixianjiaoyupingtai/file/download?fileName=1618473611639.mp4',2,'详情信息3\r\n','2021-04-15 16:00:30');

/*Table structure for table `zaixianxuexi_collection` */

DROP TABLE IF EXISTS `zaixianxuexi_collection`;

CREATE TABLE `zaixianxuexi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zaixianxuexi_id` int(11) DEFAULT NULL COMMENT '在线学习id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='在线学习收藏';

/*Data for the table `zaixianxuexi_collection` */

insert  into `zaixianxuexi_collection`(`id`,`zaixianxuexi_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,1,'2021-04-15 15:29:51','2021-04-15 15:29:51'),(2,1,1,'2021-04-15 16:09:00','2021-04-15 16:09:00');

/*Table structure for table `zaixianxuexi_liuyan` */

DROP TABLE IF EXISTS `zaixianxuexi_liuyan`;

CREATE TABLE `zaixianxuexi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zaixianxuexi_id` int(11) DEFAULT NULL COMMENT '在线学习id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `zaixianxuexi_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='在线学习留言';

/*Data for the table `zaixianxuexi_liuyan` */

insert  into `zaixianxuexi_liuyan`(`id`,`zaixianxuexi_id`,`yonghu_id`,`zaixianxuexi_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,2,1,'123',NULL,'2021-04-15 15:29:43','2021-04-15 15:29:43'),(2,3,1,'1231221332',NULL,'2021-04-15 16:05:30','2021-04-15 16:05:30'),(3,1,1,'132',NULL,'2021-04-15 16:09:05','2021-04-15 16:09:05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
