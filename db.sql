/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm3d8m9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm3d8m9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm3d8m9`;

/*Table structure for table `bumenfenlei` */

DROP TABLE IF EXISTS `bumenfenlei`;

CREATE TABLE `bumenfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='部门分类';

/*Data for the table `bumenfenlei` */

insert  into `bumenfenlei`(`id`,`addtime`,`leixing`) values (31,'2021-04-24 15:19:47','类型1');
insert  into `bumenfenlei`(`id`,`addtime`,`leixing`) values (32,'2021-04-24 15:19:47','类型2');
insert  into `bumenfenlei`(`id`,`addtime`,`leixing`) values (33,'2021-04-24 15:19:47','类型3');
insert  into `bumenfenlei`(`id`,`addtime`,`leixing`) values (34,'2021-04-24 15:19:47','类型4');
insert  into `bumenfenlei`(`id`,`addtime`,`leixing`) values (35,'2021-04-24 15:19:47','类型5');
insert  into `bumenfenlei`(`id`,`addtime`,`leixing`) values (36,'2021-04-24 15:19:47','类型6');

/*Table structure for table `chengbenjieyu` */

DROP TABLE IF EXISTS `chengbenjieyu`;

CREATE TABLE `chengbenjieyu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chengbenmingcheng` varchar(200) DEFAULT NULL COMMENT '成本名称',
  `shouruxiangmu` longtext COMMENT '收入项目',
  `shourujine` int(11) DEFAULT NULL COMMENT '收入金额',
  `zhichuxiangmu` longtext COMMENT '支出项目',
  `zhichujine` int(11) DEFAULT NULL COMMENT '支出金额',
  `jieyujine` varchar(200) DEFAULT NULL COMMENT '结余金额',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='成本结余';

/*Data for the table `chengbenjieyu` */

insert  into `chengbenjieyu`(`id`,`addtime`,`chengbenmingcheng`,`shouruxiangmu`,`shourujine`,`zhichuxiangmu`,`zhichujine`,`jieyujine`,`riqi`) values (161,'2021-04-24 15:19:47','成本名称1','收入项目1',1,'支出项目1',1,'结余金额1','2021-04-24');
insert  into `chengbenjieyu`(`id`,`addtime`,`chengbenmingcheng`,`shouruxiangmu`,`shourujine`,`zhichuxiangmu`,`zhichujine`,`jieyujine`,`riqi`) values (162,'2021-04-24 15:19:47','成本名称2','收入项目2',2,'支出项目2',2,'结余金额2','2021-04-24');
insert  into `chengbenjieyu`(`id`,`addtime`,`chengbenmingcheng`,`shouruxiangmu`,`shourujine`,`zhichuxiangmu`,`zhichujine`,`jieyujine`,`riqi`) values (163,'2021-04-24 15:19:47','成本名称3','收入项目3',3,'支出项目3',3,'结余金额3','2021-04-24');
insert  into `chengbenjieyu`(`id`,`addtime`,`chengbenmingcheng`,`shouruxiangmu`,`shourujine`,`zhichuxiangmu`,`zhichujine`,`jieyujine`,`riqi`) values (164,'2021-04-24 15:19:47','成本名称4','收入项目4',4,'支出项目4',4,'结余金额4','2021-04-24');
insert  into `chengbenjieyu`(`id`,`addtime`,`chengbenmingcheng`,`shouruxiangmu`,`shourujine`,`zhichuxiangmu`,`zhichujine`,`jieyujine`,`riqi`) values (165,'2021-04-24 15:19:47','成本名称5','收入项目5',5,'支出项目5',5,'结余金额5','2021-04-24');
insert  into `chengbenjieyu`(`id`,`addtime`,`chengbenmingcheng`,`shouruxiangmu`,`shourujine`,`zhichuxiangmu`,`zhichujine`,`jieyujine`,`riqi`) values (166,'2021-04-24 15:19:47','成本名称6','收入项目6',6,'支出项目6',6,'结余金额6','2021-04-24');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm3d8m9/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm3d8m9/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm3d8m9/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `fapiaoxinxi` */

DROP TABLE IF EXISTS `fapiaoxinxi`;

CREATE TABLE `fapiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fapiaobianhao` varchar(200) DEFAULT NULL COMMENT '发票编号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpindanjia` int(11) DEFAULT NULL COMMENT '商品单价',
  `shangpinshuliang` int(11) DEFAULT NULL COMMENT '商品数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `kaipiaoriqi` date DEFAULT NULL COMMENT '开票日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='发票信息';

/*Data for the table `fapiaoxinxi` */

insert  into `fapiaoxinxi`(`id`,`addtime`,`fapiaobianhao`,`kehuxingming`,`shangpinmingcheng`,`shangpindanjia`,`shangpinshuliang`,`zongjine`,`kaipiaoriqi`,`beizhu`) values (81,'2021-04-24 15:19:47','发票编号1','客户姓名1','商品名称1',1,1,'总金额1','2021-04-24','备注1');
insert  into `fapiaoxinxi`(`id`,`addtime`,`fapiaobianhao`,`kehuxingming`,`shangpinmingcheng`,`shangpindanjia`,`shangpinshuliang`,`zongjine`,`kaipiaoriqi`,`beizhu`) values (82,'2021-04-24 15:19:47','发票编号2','客户姓名2','商品名称2',2,2,'总金额2','2021-04-24','备注2');
insert  into `fapiaoxinxi`(`id`,`addtime`,`fapiaobianhao`,`kehuxingming`,`shangpinmingcheng`,`shangpindanjia`,`shangpinshuliang`,`zongjine`,`kaipiaoriqi`,`beizhu`) values (83,'2021-04-24 15:19:47','发票编号3','客户姓名3','商品名称3',3,3,'总金额3','2021-04-24','备注3');
insert  into `fapiaoxinxi`(`id`,`addtime`,`fapiaobianhao`,`kehuxingming`,`shangpinmingcheng`,`shangpindanjia`,`shangpinshuliang`,`zongjine`,`kaipiaoriqi`,`beizhu`) values (84,'2021-04-24 15:19:47','发票编号4','客户姓名4','商品名称4',4,4,'总金额4','2021-04-24','备注4');
insert  into `fapiaoxinxi`(`id`,`addtime`,`fapiaobianhao`,`kehuxingming`,`shangpinmingcheng`,`shangpindanjia`,`shangpinshuliang`,`zongjine`,`kaipiaoriqi`,`beizhu`) values (85,'2021-04-24 15:19:47','发票编号5','客户姓名5','商品名称5',5,5,'总金额5','2021-04-24','备注5');
insert  into `fapiaoxinxi`(`id`,`addtime`,`fapiaobianhao`,`kehuxingming`,`shangpinmingcheng`,`shangpindanjia`,`shangpinshuliang`,`zongjine`,`kaipiaoriqi`,`beizhu`) values (86,'2021-04-24 15:19:47','发票编号6','客户姓名6','商品名称6',6,6,'总金额6','2021-04-24','备注6');

/*Table structure for table `gongyingshangxinxi` */

DROP TABLE IF EXISTS `gongyingshangxinxi`;

CREATE TABLE `gongyingshangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangxingming` varchar(200) DEFAULT NULL COMMENT '供应商姓名',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `gongsidizhi` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `gongyingchanpin` varchar(200) DEFAULT NULL COMMENT '供应产品',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `hezuoshizhang` varchar(200) DEFAULT NULL COMMENT '合作时长',
  `beizhu` longtext COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='供应商信息';

/*Data for the table `gongyingshangxinxi` */

insert  into `gongyingshangxinxi`(`id`,`addtime`,`gongyingshangxingming`,`gongsimingcheng`,`gongsidizhi`,`gongyingchanpin`,`lianxidianhua`,`hezuoshizhang`,`beizhu`,`dengjiriqi`) values (41,'2021-04-24 15:19:47','供应商姓名1','公司名称1','公司地址1','供应产品1','13823888881','合作时长1','备注1','2021-04-24');
insert  into `gongyingshangxinxi`(`id`,`addtime`,`gongyingshangxingming`,`gongsimingcheng`,`gongsidizhi`,`gongyingchanpin`,`lianxidianhua`,`hezuoshizhang`,`beizhu`,`dengjiriqi`) values (42,'2021-04-24 15:19:47','供应商姓名2','公司名称2','公司地址2','供应产品2','13823888882','合作时长2','备注2','2021-04-24');
insert  into `gongyingshangxinxi`(`id`,`addtime`,`gongyingshangxingming`,`gongsimingcheng`,`gongsidizhi`,`gongyingchanpin`,`lianxidianhua`,`hezuoshizhang`,`beizhu`,`dengjiriqi`) values (43,'2021-04-24 15:19:47','供应商姓名3','公司名称3','公司地址3','供应产品3','13823888883','合作时长3','备注3','2021-04-24');
insert  into `gongyingshangxinxi`(`id`,`addtime`,`gongyingshangxingming`,`gongsimingcheng`,`gongsidizhi`,`gongyingchanpin`,`lianxidianhua`,`hezuoshizhang`,`beizhu`,`dengjiriqi`) values (44,'2021-04-24 15:19:47','供应商姓名4','公司名称4','公司地址4','供应产品4','13823888884','合作时长4','备注4','2021-04-24');
insert  into `gongyingshangxinxi`(`id`,`addtime`,`gongyingshangxingming`,`gongsimingcheng`,`gongsidizhi`,`gongyingchanpin`,`lianxidianhua`,`hezuoshizhang`,`beizhu`,`dengjiriqi`) values (45,'2021-04-24 15:19:47','供应商姓名5','公司名称5','公司地址5','供应产品5','13823888885','合作时长5','备注5','2021-04-24');
insert  into `gongyingshangxinxi`(`id`,`addtime`,`gongyingshangxingming`,`gongsimingcheng`,`gongsidizhi`,`gongyingchanpin`,`lianxidianhua`,`hezuoshizhang`,`beizhu`,`dengjiriqi`) values (46,'2021-04-24 15:19:47','供应商姓名6','公司名称6','公司地址6','供应产品6','13823888886','合作时长6','备注6','2021-04-24');

/*Table structure for table `jizhangpingzheng` */

DROP TABLE IF EXISTS `jizhangpingzheng`;

CREATE TABLE `jizhangpingzheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingzhengbianhao` varchar(200) DEFAULT NULL COMMENT '凭证编号',
  `pingzhengmingcheng` varchar(200) DEFAULT NULL COMMENT '凭证名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `pingzhengneirong` longtext COMMENT '凭证内容',
  `dengjiriqi` datetime DEFAULT NULL COMMENT '登记日期',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='记账凭证';

/*Data for the table `jizhangpingzheng` */

insert  into `jizhangpingzheng`(`id`,`addtime`,`pingzhengbianhao`,`pingzhengmingcheng`,`leixing`,`pingzhengneirong`,`dengjiriqi`,`fujian`,`beizhu`) values (61,'2021-04-24 15:19:47','凭证编号1','凭证名称1','专用记账凭证','凭证内容1','2021-04-24 15:19:47','','备注1');
insert  into `jizhangpingzheng`(`id`,`addtime`,`pingzhengbianhao`,`pingzhengmingcheng`,`leixing`,`pingzhengneirong`,`dengjiriqi`,`fujian`,`beizhu`) values (62,'2021-04-24 15:19:47','凭证编号2','凭证名称2','专用记账凭证','凭证内容2','2021-04-24 15:19:47','','备注2');
insert  into `jizhangpingzheng`(`id`,`addtime`,`pingzhengbianhao`,`pingzhengmingcheng`,`leixing`,`pingzhengneirong`,`dengjiriqi`,`fujian`,`beizhu`) values (63,'2021-04-24 15:19:47','凭证编号3','凭证名称3','专用记账凭证','凭证内容3','2021-04-24 15:19:47','','备注3');
insert  into `jizhangpingzheng`(`id`,`addtime`,`pingzhengbianhao`,`pingzhengmingcheng`,`leixing`,`pingzhengneirong`,`dengjiriqi`,`fujian`,`beizhu`) values (64,'2021-04-24 15:19:47','凭证编号4','凭证名称4','专用记账凭证','凭证内容4','2021-04-24 15:19:47','','备注4');
insert  into `jizhangpingzheng`(`id`,`addtime`,`pingzhengbianhao`,`pingzhengmingcheng`,`leixing`,`pingzhengneirong`,`dengjiriqi`,`fujian`,`beizhu`) values (65,'2021-04-24 15:19:47','凭证编号5','凭证名称5','专用记账凭证','凭证内容5','2021-04-24 15:19:47','','备注5');
insert  into `jizhangpingzheng`(`id`,`addtime`,`pingzhengbianhao`,`pingzhengmingcheng`,`leixing`,`pingzhengneirong`,`dengjiriqi`,`fujian`,`beizhu`) values (66,'2021-04-24 15:19:47','凭证编号6','凭证名称6','专用记账凭证','凭证内容6','2021-04-24 15:19:47','','备注6');

/*Table structure for table `kehuxinxi` */

DROP TABLE IF EXISTS `kehuxinxi`;

CREATE TABLE `kehuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `gongsidizhi` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `hezuoxiangmu` varchar(200) DEFAULT NULL COMMENT '合作项目',
  `hezuoshizhang` varchar(200) DEFAULT NULL COMMENT '合作时长',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `beizhu` longtext COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='客户信息';

/*Data for the table `kehuxinxi` */

insert  into `kehuxinxi`(`id`,`addtime`,`kehuxingming`,`gongsimingcheng`,`gongsidizhi`,`hezuoxiangmu`,`hezuoshizhang`,`lianxidianhua`,`beizhu`,`dengjiriqi`) values (51,'2021-04-24 15:19:47','客户姓名1','公司名称1','公司地址1','合作项目1','合作时长1','13823888881','备注1','2021-04-24');
insert  into `kehuxinxi`(`id`,`addtime`,`kehuxingming`,`gongsimingcheng`,`gongsidizhi`,`hezuoxiangmu`,`hezuoshizhang`,`lianxidianhua`,`beizhu`,`dengjiriqi`) values (52,'2021-04-24 15:19:47','客户姓名2','公司名称2','公司地址2','合作项目2','合作时长2','13823888882','备注2','2021-04-24');
insert  into `kehuxinxi`(`id`,`addtime`,`kehuxingming`,`gongsimingcheng`,`gongsidizhi`,`hezuoxiangmu`,`hezuoshizhang`,`lianxidianhua`,`beizhu`,`dengjiriqi`) values (53,'2021-04-24 15:19:47','客户姓名3','公司名称3','公司地址3','合作项目3','合作时长3','13823888883','备注3','2021-04-24');
insert  into `kehuxinxi`(`id`,`addtime`,`kehuxingming`,`gongsimingcheng`,`gongsidizhi`,`hezuoxiangmu`,`hezuoshizhang`,`lianxidianhua`,`beizhu`,`dengjiriqi`) values (54,'2021-04-24 15:19:47','客户姓名4','公司名称4','公司地址4','合作项目4','合作时长4','13823888884','备注4','2021-04-24');
insert  into `kehuxinxi`(`id`,`addtime`,`kehuxingming`,`gongsimingcheng`,`gongsidizhi`,`hezuoxiangmu`,`hezuoshizhang`,`lianxidianhua`,`beizhu`,`dengjiriqi`) values (55,'2021-04-24 15:19:47','客户姓名5','公司名称5','公司地址5','合作项目5','合作时长5','13823888885','备注5','2021-04-24');
insert  into `kehuxinxi`(`id`,`addtime`,`kehuxingming`,`gongsimingcheng`,`gongsidizhi`,`hezuoxiangmu`,`hezuoshizhang`,`lianxidianhua`,`beizhu`,`dengjiriqi`) values (56,'2021-04-24 15:19:47','客户姓名6','公司名称6','公司地址6','合作项目6','合作时长6','13823888886','备注6','2021-04-24');

/*Table structure for table `rijizhang` */

DROP TABLE IF EXISTS `rijizhang`;

CREATE TABLE `rijizhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) DEFAULT NULL COMMENT '序号',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `zhaiyao` longtext COMMENT '摘要',
  `shouru` int(11) DEFAULT NULL COMMENT '收入',
  `zhichu` int(11) DEFAULT NULL COMMENT '支出',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `guanligonghao` varchar(200) DEFAULT NULL COMMENT '管理工号',
  `guanlixingming` varchar(200) DEFAULT NULL COMMENT '管理姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='日记账';

/*Data for the table `rijizhang` */

insert  into `rijizhang`(`id`,`addtime`,`xuhao`,`riqi`,`zhaiyao`,`shouru`,`zhichu`,`jine`,`guanligonghao`,`guanlixingming`) values (71,'2021-04-24 15:19:47','序号1','2021-04-24','摘要1',1,1,'金额1','管理工号1','管理姓名1');
insert  into `rijizhang`(`id`,`addtime`,`xuhao`,`riqi`,`zhaiyao`,`shouru`,`zhichu`,`jine`,`guanligonghao`,`guanlixingming`) values (72,'2021-04-24 15:19:47','序号2','2021-04-24','摘要2',2,2,'金额2','管理工号2','管理姓名2');
insert  into `rijizhang`(`id`,`addtime`,`xuhao`,`riqi`,`zhaiyao`,`shouru`,`zhichu`,`jine`,`guanligonghao`,`guanlixingming`) values (73,'2021-04-24 15:19:47','序号3','2021-04-24','摘要3',3,3,'金额3','管理工号3','管理姓名3');
insert  into `rijizhang`(`id`,`addtime`,`xuhao`,`riqi`,`zhaiyao`,`shouru`,`zhichu`,`jine`,`guanligonghao`,`guanlixingming`) values (74,'2021-04-24 15:19:47','序号4','2021-04-24','摘要4',4,4,'金额4','管理工号4','管理姓名4');
insert  into `rijizhang`(`id`,`addtime`,`xuhao`,`riqi`,`zhaiyao`,`shouru`,`zhichu`,`jine`,`guanligonghao`,`guanlixingming`) values (75,'2021-04-24 15:19:47','序号5','2021-04-24','摘要5',5,5,'金额5','管理工号5','管理姓名5');
insert  into `rijizhang`(`id`,`addtime`,`xuhao`,`riqi`,`zhaiyao`,`shouru`,`zhichu`,`jine`,`guanligonghao`,`guanlixingming`) values (76,'2021-04-24 15:19:47','序号6','2021-04-24','摘要6',6,6,'金额6','管理工号6','管理姓名6');

/*Table structure for table `shangpinchuku` */

DROP TABLE IF EXISTS `shangpinchuku`;

CREATE TABLE `shangpinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `shangpinshuliang` int(11) DEFAULT NULL COMMENT '商品数量',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `beizhu` longtext COMMENT '备注',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='商品出库';

/*Data for the table `shangpinchuku` */

insert  into `shangpinchuku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`kehuxingming`,`shangpinshuliang`,`chukushijian`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (151,'2021-04-24 15:19:47','商品名称1','商品类型1','客户姓名1',1,'2021-04-24 15:19:47','备注1','员工工号1','员工姓名1','是','');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`kehuxingming`,`shangpinshuliang`,`chukushijian`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (152,'2021-04-24 15:19:47','商品名称2','商品类型2','客户姓名2',2,'2021-04-24 15:19:47','备注2','员工工号2','员工姓名2','是','');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`kehuxingming`,`shangpinshuliang`,`chukushijian`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (153,'2021-04-24 15:19:47','商品名称3','商品类型3','客户姓名3',3,'2021-04-24 15:19:47','备注3','员工工号3','员工姓名3','是','');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`kehuxingming`,`shangpinshuliang`,`chukushijian`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (154,'2021-04-24 15:19:47','商品名称4','商品类型4','客户姓名4',4,'2021-04-24 15:19:47','备注4','员工工号4','员工姓名4','是','');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`kehuxingming`,`shangpinshuliang`,`chukushijian`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (155,'2021-04-24 15:19:47','商品名称5','商品类型5','客户姓名5',5,'2021-04-24 15:19:47','备注5','员工工号5','员工姓名5','是','');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`kehuxingming`,`shangpinshuliang`,`chukushijian`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (156,'2021-04-24 15:19:47','商品名称6','商品类型6','客户姓名6',6,'2021-04-24 15:19:47','备注6','员工工号6','员工姓名6','是','');

/*Table structure for table `shangpinkucun` */

DROP TABLE IF EXISTS `shangpinkucun`;

CREATE TABLE `shangpinkucun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpinshuliang` int(11) DEFAULT NULL COMMENT '商品数量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `cunfangweizhi` varchar(200) DEFAULT NULL COMMENT '存放位置',
  `shifouwanhao` varchar(200) DEFAULT NULL COMMENT '是否完好',
  `dengjiriqi` datetime DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='商品库存';

/*Data for the table `shangpinkucun` */

insert  into `shangpinkucun`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`shangpinshuliang`,`shangpinxiangqing`,`cunfangweizhi`,`shifouwanhao`,`dengjiriqi`) values (131,'2021-04-24 15:19:47','商品名称1','商品类型1',1,'商品详情1','存放位置1','是','2021-04-24 15:19:47');
insert  into `shangpinkucun`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`shangpinshuliang`,`shangpinxiangqing`,`cunfangweizhi`,`shifouwanhao`,`dengjiriqi`) values (132,'2021-04-24 15:19:47','商品名称2','商品类型2',2,'商品详情2','存放位置2','是','2021-04-24 15:19:47');
insert  into `shangpinkucun`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`shangpinshuliang`,`shangpinxiangqing`,`cunfangweizhi`,`shifouwanhao`,`dengjiriqi`) values (133,'2021-04-24 15:19:47','商品名称3','商品类型3',3,'商品详情3','存放位置3','是','2021-04-24 15:19:47');
insert  into `shangpinkucun`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`shangpinshuliang`,`shangpinxiangqing`,`cunfangweizhi`,`shifouwanhao`,`dengjiriqi`) values (134,'2021-04-24 15:19:47','商品名称4','商品类型4',4,'商品详情4','存放位置4','是','2021-04-24 15:19:47');
insert  into `shangpinkucun`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`shangpinshuliang`,`shangpinxiangqing`,`cunfangweizhi`,`shifouwanhao`,`dengjiriqi`) values (135,'2021-04-24 15:19:47','商品名称5','商品类型5',5,'商品详情5','存放位置5','是','2021-04-24 15:19:47');
insert  into `shangpinkucun`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`shangpinshuliang`,`shangpinxiangqing`,`cunfangweizhi`,`shifouwanhao`,`dengjiriqi`) values (136,'2021-04-24 15:19:47','商品名称6','商品类型6',6,'商品详情6','存放位置6','是','2021-04-24 15:19:47');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (171,'2021-04-24 15:19:47','类型1');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (172,'2021-04-24 15:19:47','类型2');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (173,'2021-04-24 15:19:47','类型3');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (174,'2021-04-24 15:19:47','类型4');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (175,'2021-04-24 15:19:47','类型5');
insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (176,'2021-04-24 15:19:47','类型6');

/*Table structure for table `shangpinruku` */

DROP TABLE IF EXISTS `shangpinruku`;

CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `gongyingshangxingming` varchar(200) DEFAULT NULL COMMENT '供应商姓名',
  `shangpinshuliang` int(11) DEFAULT NULL COMMENT '商品数量',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  `shifouwanhao` varchar(200) DEFAULT NULL COMMENT '是否完好',
  `beizhu` longtext COMMENT '备注',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='商品入库';

/*Data for the table `shangpinruku` */

insert  into `shangpinruku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`gongyingshangxingming`,`shangpinshuliang`,`rukushijian`,`shifouwanhao`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (141,'2021-04-24 15:19:47','商品名称1','商品类型1','供应商姓名1',1,'2021-04-24 15:19:47','是','备注1','员工工号1','员工姓名1','是','');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`gongyingshangxingming`,`shangpinshuliang`,`rukushijian`,`shifouwanhao`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (142,'2021-04-24 15:19:47','商品名称2','商品类型2','供应商姓名2',2,'2021-04-24 15:19:47','是','备注2','员工工号2','员工姓名2','是','');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`gongyingshangxingming`,`shangpinshuliang`,`rukushijian`,`shifouwanhao`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (143,'2021-04-24 15:19:47','商品名称3','商品类型3','供应商姓名3',3,'2021-04-24 15:19:47','是','备注3','员工工号3','员工姓名3','是','');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`gongyingshangxingming`,`shangpinshuliang`,`rukushijian`,`shifouwanhao`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (144,'2021-04-24 15:19:47','商品名称4','商品类型4','供应商姓名4',4,'2021-04-24 15:19:47','是','备注4','员工工号4','员工姓名4','是','');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`gongyingshangxingming`,`shangpinshuliang`,`rukushijian`,`shifouwanhao`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (145,'2021-04-24 15:19:47','商品名称5','商品类型5','供应商姓名5',5,'2021-04-24 15:19:47','是','备注5','员工工号5','员工姓名5','是','');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`gongyingshangxingming`,`shangpinshuliang`,`rukushijian`,`shifouwanhao`,`beizhu`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (146,'2021-04-24 15:19:47','商品名称6','商品类型6','供应商姓名6',6,'2021-04-24 15:19:47','是','备注6','员工工号6','员工姓名6','是','');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619248876129,'2','yuangongguanli','员工管理','bzttjj0xryyvnxo99zz530xir0sc4ymh','2021-04-24 15:21:19','2021-04-24 16:21:20');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-24 15:19:47');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (11,'2021-04-24 15:19:47','员工1','123456','员工姓名1','男','部门1','13823888881','773890001@qq.com','440300199101010001');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (12,'2021-04-24 15:19:47','员工2','123456','员工姓名2','男','部门2','13823888882','773890002@qq.com','440300199202020002');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (13,'2021-04-24 15:19:47','员工3','123456','员工姓名3','男','部门3','13823888883','773890003@qq.com','440300199303030003');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (14,'2021-04-24 15:19:47','员工4','123456','员工姓名4','男','部门4','13823888884','773890004@qq.com','440300199404040004');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (15,'2021-04-24 15:19:47','员工5','123456','员工姓名5','男','部门5','13823888885','773890005@qq.com','440300199505050005');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`bumen`,`shouji`,`youxiang`,`shenfenzheng`) values (16,'2021-04-24 15:19:47','员工6','123456','员工姓名6','男','部门6','13823888886','773890006@qq.com','440300199606060006');

/*Table structure for table `yuangongbaoxiao` */

DROP TABLE IF EXISTS `yuangongbaoxiao`;

CREATE TABLE `yuangongbaoxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `baoxiaoxiangmu` varchar(200) DEFAULT NULL COMMENT '报销项目',
  `baoxiaojine` int(11) DEFAULT NULL COMMENT '报销金额',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `beizhu` longtext COMMENT '备注',
  `guanligonghao` varchar(200) DEFAULT NULL COMMENT '管理工号',
  `guanlixingming` varchar(200) DEFAULT NULL COMMENT '管理姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='员工报销';

/*Data for the table `yuangongbaoxiao` */

insert  into `yuangongbaoxiao`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`baoxiaoxiangmu`,`baoxiaojine`,`shenqingriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`ispay`) values (111,'2021-04-24 15:19:47','员工工号1','员工姓名1','报销项目1',1,'2021-04-24','备注1','管理工号1','管理姓名1','未支付');
insert  into `yuangongbaoxiao`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`baoxiaoxiangmu`,`baoxiaojine`,`shenqingriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`ispay`) values (112,'2021-04-24 15:19:47','员工工号2','员工姓名2','报销项目2',2,'2021-04-24','备注2','管理工号2','管理姓名2','未支付');
insert  into `yuangongbaoxiao`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`baoxiaoxiangmu`,`baoxiaojine`,`shenqingriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`ispay`) values (113,'2021-04-24 15:19:47','员工工号3','员工姓名3','报销项目3',3,'2021-04-24','备注3','管理工号3','管理姓名3','未支付');
insert  into `yuangongbaoxiao`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`baoxiaoxiangmu`,`baoxiaojine`,`shenqingriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`ispay`) values (114,'2021-04-24 15:19:47','员工工号4','员工姓名4','报销项目4',4,'2021-04-24','备注4','管理工号4','管理姓名4','未支付');
insert  into `yuangongbaoxiao`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`baoxiaoxiangmu`,`baoxiaojine`,`shenqingriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`ispay`) values (115,'2021-04-24 15:19:47','员工工号5','员工姓名5','报销项目5',5,'2021-04-24','备注5','管理工号5','管理姓名5','未支付');
insert  into `yuangongbaoxiao`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`baoxiaoxiangmu`,`baoxiaojine`,`shenqingriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`ispay`) values (116,'2021-04-24 15:19:47','员工工号6','员工姓名6','报销项目6',6,'2021-04-24','备注6','管理工号6','管理姓名6','未支付');

/*Table structure for table `yuangongguanli` */

DROP TABLE IF EXISTS `yuangongguanli`;

CREATE TABLE `yuangongguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guanligonghao` varchar(200) NOT NULL COMMENT '管理工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `guanlixingming` varchar(200) DEFAULT NULL COMMENT '管理姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guanligonghao` (`guanligonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619248876130 DEFAULT CHARSET=utf8 COMMENT='员工管理';

/*Data for the table `yuangongguanli` */

insert  into `yuangongguanli`(`id`,`addtime`,`guanligonghao`,`mima`,`guanlixingming`,`xingbie`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`) values (21,'2021-04-24 15:19:47','员工管理1','123456','管理姓名1','男','职位1','13823888881','773890001@qq.com','440300199101010001');
insert  into `yuangongguanli`(`id`,`addtime`,`guanligonghao`,`mima`,`guanlixingming`,`xingbie`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`) values (22,'2021-04-24 15:19:47','员工管理2','123456','管理姓名2','男','职位2','13823888882','773890002@qq.com','440300199202020002');
insert  into `yuangongguanli`(`id`,`addtime`,`guanligonghao`,`mima`,`guanlixingming`,`xingbie`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`) values (23,'2021-04-24 15:19:47','员工管理3','123456','管理姓名3','男','职位3','13823888883','773890003@qq.com','440300199303030003');
insert  into `yuangongguanli`(`id`,`addtime`,`guanligonghao`,`mima`,`guanlixingming`,`xingbie`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`) values (24,'2021-04-24 15:19:47','员工管理4','123456','管理姓名4','男','职位4','13823888884','773890004@qq.com','440300199404040004');
insert  into `yuangongguanli`(`id`,`addtime`,`guanligonghao`,`mima`,`guanlixingming`,`xingbie`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`) values (25,'2021-04-24 15:19:47','员工管理5','123456','管理姓名5','男','职位5','13823888885','773890005@qq.com','440300199505050005');
insert  into `yuangongguanli`(`id`,`addtime`,`guanligonghao`,`mima`,`guanlixingming`,`xingbie`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`) values (26,'2021-04-24 15:19:47','员工管理6','123456','管理姓名6','男','职位6','13823888886','773890006@qq.com','440300199606060006');
insert  into `yuangongguanli`(`id`,`addtime`,`guanligonghao`,`mima`,`guanlixingming`,`xingbie`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`) values (1619248876129,'2021-04-24 15:21:16','2','2','2',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `yuangongjiaokuan` */

DROP TABLE IF EXISTS `yuangongjiaokuan`;

CREATE TABLE `yuangongjiaokuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `jiaofeimingcheng` varchar(200) DEFAULT NULL COMMENT '缴费名称',
  `jiaokuanjine` int(11) DEFAULT NULL COMMENT '缴款金额',
  `jiaokuanriqi` date DEFAULT NULL COMMENT '缴款日期',
  `beizhu` longtext COMMENT '备注',
  `guanligonghao` varchar(200) DEFAULT NULL COMMENT '管理工号',
  `guanlixingming` varchar(200) DEFAULT NULL COMMENT '管理姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='员工缴款';

/*Data for the table `yuangongjiaokuan` */

insert  into `yuangongjiaokuan`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jiaofeimingcheng`,`jiaokuanjine`,`jiaokuanriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`sfsh`,`shhf`,`ispay`) values (91,'2021-04-24 15:19:47','员工工号1','员工姓名1','缴费名称1',1,'2021-04-24','备注1','管理工号1','管理姓名1','是','','未支付');
insert  into `yuangongjiaokuan`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jiaofeimingcheng`,`jiaokuanjine`,`jiaokuanriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`sfsh`,`shhf`,`ispay`) values (92,'2021-04-24 15:19:47','员工工号2','员工姓名2','缴费名称2',2,'2021-04-24','备注2','管理工号2','管理姓名2','是','','未支付');
insert  into `yuangongjiaokuan`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jiaofeimingcheng`,`jiaokuanjine`,`jiaokuanriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`sfsh`,`shhf`,`ispay`) values (93,'2021-04-24 15:19:47','员工工号3','员工姓名3','缴费名称3',3,'2021-04-24','备注3','管理工号3','管理姓名3','是','','未支付');
insert  into `yuangongjiaokuan`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jiaofeimingcheng`,`jiaokuanjine`,`jiaokuanriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`sfsh`,`shhf`,`ispay`) values (94,'2021-04-24 15:19:47','员工工号4','员工姓名4','缴费名称4',4,'2021-04-24','备注4','管理工号4','管理姓名4','是','','未支付');
insert  into `yuangongjiaokuan`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jiaofeimingcheng`,`jiaokuanjine`,`jiaokuanriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`sfsh`,`shhf`,`ispay`) values (95,'2021-04-24 15:19:47','员工工号5','员工姓名5','缴费名称5',5,'2021-04-24','备注5','管理工号5','管理姓名5','是','','未支付');
insert  into `yuangongjiaokuan`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jiaofeimingcheng`,`jiaokuanjine`,`jiaokuanriqi`,`beizhu`,`guanligonghao`,`guanlixingming`,`sfsh`,`shhf`,`ispay`) values (96,'2021-04-24 15:19:47','员工工号6','员工姓名6','缴费名称6',6,'2021-04-24','备注6','管理工号6','管理姓名6','是','','未支付');

/*Table structure for table `yuangongxinchou` */

DROP TABLE IF EXISTS `yuangongxinchou`;

CREATE TABLE `yuangongxinchou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `jibengongzi` int(11) DEFAULT NULL COMMENT '基本工资',
  `quanqinjiangli` int(11) DEFAULT NULL COMMENT '全勤奖励',
  `jixiaojiangli` int(11) DEFAULT NULL COMMENT '绩效奖励',
  `shebaobuzhu` int(11) DEFAULT NULL COMMENT '社保补助',
  `koukuanjine` int(11) DEFAULT NULL COMMENT '扣款金额',
  `koukuanshixiang` longtext COMMENT '扣款事项',
  `shifagongzi` varchar(200) DEFAULT NULL COMMENT '实发工资',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `guanligonghao` varchar(200) DEFAULT NULL COMMENT '管理工号',
  `guanlixingming` varchar(200) DEFAULT NULL COMMENT '管理姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='员工薪酬';

/*Data for the table `yuangongxinchou` */

insert  into `yuangongxinchou`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jibengongzi`,`quanqinjiangli`,`jixiaojiangli`,`shebaobuzhu`,`koukuanjine`,`koukuanshixiang`,`shifagongzi`,`riqi`,`guanligonghao`,`guanlixingming`) values (121,'2021-04-24 15:19:47','员工工号1','员工姓名1',1,1,1,1,1,'扣款事项1','实发工资1','2021-04-24','管理工号1','管理姓名1');
insert  into `yuangongxinchou`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jibengongzi`,`quanqinjiangli`,`jixiaojiangli`,`shebaobuzhu`,`koukuanjine`,`koukuanshixiang`,`shifagongzi`,`riqi`,`guanligonghao`,`guanlixingming`) values (122,'2021-04-24 15:19:47','员工工号2','员工姓名2',2,2,2,2,2,'扣款事项2','实发工资2','2021-04-24','管理工号2','管理姓名2');
insert  into `yuangongxinchou`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jibengongzi`,`quanqinjiangli`,`jixiaojiangli`,`shebaobuzhu`,`koukuanjine`,`koukuanshixiang`,`shifagongzi`,`riqi`,`guanligonghao`,`guanlixingming`) values (123,'2021-04-24 15:19:47','员工工号3','员工姓名3',3,3,3,3,3,'扣款事项3','实发工资3','2021-04-24','管理工号3','管理姓名3');
insert  into `yuangongxinchou`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jibengongzi`,`quanqinjiangli`,`jixiaojiangli`,`shebaobuzhu`,`koukuanjine`,`koukuanshixiang`,`shifagongzi`,`riqi`,`guanligonghao`,`guanlixingming`) values (124,'2021-04-24 15:19:47','员工工号4','员工姓名4',4,4,4,4,4,'扣款事项4','实发工资4','2021-04-24','管理工号4','管理姓名4');
insert  into `yuangongxinchou`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jibengongzi`,`quanqinjiangli`,`jixiaojiangli`,`shebaobuzhu`,`koukuanjine`,`koukuanshixiang`,`shifagongzi`,`riqi`,`guanligonghao`,`guanlixingming`) values (125,'2021-04-24 15:19:47','员工工号5','员工姓名5',5,5,5,5,5,'扣款事项5','实发工资5','2021-04-24','管理工号5','管理姓名5');
insert  into `yuangongxinchou`(`id`,`addtime`,`yuangonggonghao`,`yuangongxingming`,`jibengongzi`,`quanqinjiangli`,`jixiaojiangli`,`shebaobuzhu`,`koukuanjine`,`koukuanshixiang`,`shifagongzi`,`riqi`,`guanligonghao`,`guanlixingming`) values (126,'2021-04-24 15:19:47','员工工号6','员工姓名6',6,6,6,6,6,'扣款事项6','实发工资6','2021-04-24','管理工号6','管理姓名6');

/*Table structure for table `zhipiaoxinxi` */

DROP TABLE IF EXISTS `zhipiaoxinxi`;

CREATE TABLE `zhipiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhipiaohao` varchar(200) DEFAULT NULL COMMENT '支票号',
  `shoukuandanwei` varchar(200) DEFAULT NULL COMMENT '收款单位',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `yongtu` longtext COMMENT '用途',
  `beizhu` longtext COMMENT '备注',
  `kaipiaoriqi` date DEFAULT NULL COMMENT '开票日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='支票信息';

/*Data for the table `zhipiaoxinxi` */

insert  into `zhipiaoxinxi`(`id`,`addtime`,`zhipiaohao`,`shoukuandanwei`,`jine`,`yongtu`,`beizhu`,`kaipiaoriqi`) values (101,'2021-04-24 15:19:47','支票号1','收款单位1',1,'用途1','备注1','2021-04-24');
insert  into `zhipiaoxinxi`(`id`,`addtime`,`zhipiaohao`,`shoukuandanwei`,`jine`,`yongtu`,`beizhu`,`kaipiaoriqi`) values (102,'2021-04-24 15:19:47','支票号2','收款单位2',2,'用途2','备注2','2021-04-24');
insert  into `zhipiaoxinxi`(`id`,`addtime`,`zhipiaohao`,`shoukuandanwei`,`jine`,`yongtu`,`beizhu`,`kaipiaoriqi`) values (103,'2021-04-24 15:19:47','支票号3','收款单位3',3,'用途3','备注3','2021-04-24');
insert  into `zhipiaoxinxi`(`id`,`addtime`,`zhipiaohao`,`shoukuandanwei`,`jine`,`yongtu`,`beizhu`,`kaipiaoriqi`) values (104,'2021-04-24 15:19:47','支票号4','收款单位4',4,'用途4','备注4','2021-04-24');
insert  into `zhipiaoxinxi`(`id`,`addtime`,`zhipiaohao`,`shoukuandanwei`,`jine`,`yongtu`,`beizhu`,`kaipiaoriqi`) values (105,'2021-04-24 15:19:47','支票号5','收款单位5',5,'用途5','备注5','2021-04-24');
insert  into `zhipiaoxinxi`(`id`,`addtime`,`zhipiaohao`,`shoukuandanwei`,`jine`,`yongtu`,`beizhu`,`kaipiaoriqi`) values (106,'2021-04-24 15:19:47','支票号6','收款单位6',6,'用途6','备注6','2021-04-24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
