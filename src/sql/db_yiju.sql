/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.58 : Database - db_yiju
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_yiju` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_yiju`;

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员唯一标识ID',
  `admin_name` varchar(20) DEFAULT NULL COMMENT '管理员名称',
  `password` varchar(20) DEFAULT NULL COMMENT '管理员密码',
  `create_time` bigint(15) DEFAULT '0' COMMENT '创建时间',
  `update_time` bigint(15) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `tb_admin_admin_id_uindex` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;

/*Data for the table `tb_admin` */

insert  into `tb_admin`(`admin_id`,`admin_name`,`password`,`create_time`,`update_time`) values (10000,'admin','123456',1,1);

/*Table structure for table `tb_collect` */

DROP TABLE IF EXISTS `tb_collect`;

CREATE TABLE `tb_collect` (
  `coll_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏记录唯一标识ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID，外键',
  `house_id` int(11) DEFAULT NULL COMMENT '用户收房的房源ID',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除 0-未删除  1-删除',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`coll_id`),
  UNIQUE KEY `tb_collect_coll_id_uindex` (`coll_id`),
  KEY `user` (`user_id`),
  KEY `house` (`house_id`),
  CONSTRAINT `house` FOREIGN KEY (`house_id`) REFERENCES `tb_house` (`house_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10035 DEFAULT CHARSET=utf8;

/*Data for the table `tb_collect` */

insert  into `tb_collect`(`coll_id`,`user_id`,`house_id`,`is_delete`,`create_time`,`update_time`) values (10033,10000,10009,0,1572492216310,1572492216310),(10034,10010,10003,0,1575614073793,1575614073793);

/*Table structure for table `tb_house` */

DROP TABLE IF EXISTS `tb_house`;

CREATE TABLE `tb_house` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房源表唯一标识ID',
  `user_id` int(11) NOT NULL COMMENT '发布此房源的用户ID,外键',
  `house_type` tinyint(4) DEFAULT NULL COMMENT '房源类型：0新房、1旧房、2租房',
  `house_title` varchar(255) DEFAULT NULL COMMENT '房源帖子标题',
  `house_headimg` varchar(255) DEFAULT NULL COMMENT '房源帖子头像',
  `house_planimg1` varchar(255) DEFAULT NULL COMMENT '房屋户型平面图1',
  `house_planimg2` varchar(255) DEFAULT NULL COMMENT '房屋户型平面图2',
  `house_img1` varchar(255) DEFAULT NULL COMMENT '房屋室内图1',
  `house_img2` varchar(255) DEFAULT NULL COMMENT '房屋室内图2',
  `house_img3` varchar(255) DEFAULT NULL COMMENT '房屋室内图3',
  `house_img4` varchar(255) DEFAULT NULL COMMENT '房屋室内图4',
  `house_img5` varchar(255) DEFAULT NULL COMMENT '房屋室内图5',
  `house_img6` varchar(255) DEFAULT NULL COMMENT '房屋室内图6',
  `house_price` decimal(20,2) DEFAULT '0.00' COMMENT '房源预计售价',
  `price_unit` varchar(255) DEFAULT NULL COMMENT '售价单位：元/月，元/套、元/年……',
  `house_address` varchar(255) DEFAULT NULL COMMENT '房源地址',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除：0：未删除 1：已删除',
  `create_time` bigint(15) DEFAULT '0' COMMENT '创建时间',
  `update_time` bigint(15) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`house_id`),
  UNIQUE KEY `tb_house_house_id_uindex` (`house_id`),
  KEY `house_userid` (`user_id`),
  CONSTRAINT `house_userid` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10075 DEFAULT CHARSET=utf8;

/*Data for the table `tb_house` */

insert  into `tb_house`(`house_id`,`user_id`,`house_type`,`house_title`,`house_headimg`,`house_planimg1`,`house_planimg2`,`house_img1`,`house_img2`,`house_img3`,`house_img4`,`house_img5`,`house_img6`,`house_price`,`price_unit`,`house_address`,`is_delete`,`create_time`,`update_time`) values (10001,10005,0,'奥园誉山湖','20190704logo01.jpg','20190704type01.jpg',NULL,'20190704internal01.jpg','20190704internal02.jpg','20190704internal03.jpg','20190704internal04.jpg','20190704internal05.jpg','20190704internal06.jpg','1300000.00','元/套','[慈溪]桃园中路与规划一路交汇处',0,1562479560517,1562479560517),(10002,10005,0,'湖畔樾山\r\n','20190704logo02.jpg','20190704type02.jpg',NULL,'20190704internal07.jpg','20190704internal08.jpg','20190704internal09.jpg','20190704internal010.jpg','20190704internal011.jpg','20190704internal012.jpg','1560000.00','元/套','[海曙] 常青路与苍松路交汇处',0,1562479560517,1562479560517),(10003,10005,0,'金地华章','20190704logo03.jpg','20190704type03.jpg',NULL,'20190704internal013.jpg','20190704internal014.jpg','20190704internal015.jpg','20190704internal016.jpg','20190704internal017.jpg','20190704internal018.jpg','1260000.00','元/套','[海曙] 常青路与苍松路交汇处',0,1562479560517,1562479560517),(10004,10005,0,'凯旋府','20190704logo04.jpg','20190704type04.jpg',NULL,'20190704internal019.jpg','20190704internal020.jpg','20190704internal021.jpg','20190704internal022.jpg','20190704internal023.jpg','20190704internal024.jpg','1100000.00','元/套',' [北仑]新碶街道明州西路和凤洋二路交汇处',0,1562479560517,1562479560517),(10005,10005,0,'绿地·悦山府','20190704logo12.jpg','20190704type06.jpg',NULL,'20190704internal025.jpg','20190704internal026.jpg','20190704internal027.jpg','20190704internal028.jpg','20190704internal029.jpg','20190704internal030.jpg','1830000.00','元/套','[余姚]南雷南路与远东路交汇处',0,1562479560517,1562479560517),(10006,10005,0,'绿地观堂','20190704logo05.jpg','20190704type07.jpg',NULL,'20190704internal031.jpg','20190704internal032.jpg','20190704internal033.jpg','20190704internal034.jpg','20190704internal035.jpg','20190704internal036.jpg','1560000.00','元/套','[海曙] 包家路',0,1562479560517,1562479560517),(10007,10005,0,'漫悦湾','20190704logo06.jpg','20190704type08.jpg',NULL,'20190704internal037.jpg','20190704internal038.jpg','20190704internal039.jpg','20190704internal040.jpg','20190704internal041.jpg','20190704internal042.jpg','1730000.00','元/套','[余姚] 姚北新城欣朗路与迎霞北路交汇处',0,1562479560517,1562479560517),(10009,10005,0,'新希望堇麟府','20190704logo08.jpg','20190704type010.jpg',NULL,'20190704internal049.jpg','20190704internal050.jpg','20190704internal051.jpg','20190704internal052.jpg','20190704internal053.jpg','20190704internal054.jpg','990000.00','元/套','[鄞州] 下应南路与立德路交汇处',0,1562479560517,1562479560517),(10010,10005,0,'中海枫桥里','20190704logo09.jpg','20190704type011.jpg',NULL,'20190704internal055.jpg','20190704internal056.jpg','20190704internal057.jpg','20190704internal058.jpg','20190704internal059.jpg','20190704internal060.jpg','1280000.00','元/套','[江北] 天沁路与李家西路交汇处',0,1562479560517,1562479560517),(10011,10005,0,'中梁象山中心大厦','20190704logo10.jpg','20190704type05.jpg',NULL,'20190704internal061.jpg','20190704internal062.jpg','20190704internal063.jpg','20190704internal064.jpg','20190704internal065.jpg','20190704internal066.jpg','1360000.00','元/套','[象山] 丹阳路与新华路交汇处（财富中心对面）',0,1562479560517,1562479590517),(10012,10009,0,'中南锦悦府','20190704logo11.jpg','20190704type012.jpg',NULL,'20190704internal067.jpg','20190704internal068.jpg','20190704internal069.jpg','20190704internal070.jpg','20190704internal071.jpg','20190704internal072.jpg','1490000.00','元/套','[北仑] 小港中机路和联合路交汇处',0,1562479560517,1562479560517),(10013,10005,2,'荣安香园 3室2厅1卫','logo21.jpg','type21.jpg',NULL,'internal31.jpg','internal32.jpg','internal33.jpg','internal34.jpg','internal35.jpg','internal36.jpg','3900.00','元/月','荣安香园(鄞州下应)',0,1562479560517,1562479560517),(10014,10009,2,'万科城湖景房，5500元月带车位','logo40.jpg','type40.jpg',NULL,'internal41.jpg','internal42.jpg','internal43.jpg','internal44.jpg','internal45.jpg','internal46.jpg','5500.00','元/月','万科城(镇海庄市)',0,1562479560517,1562479560517),(10015,10009,2,'高新区 高端小区和美城旁 金东岸 精装公寓 急租','logo50.jpg','type50.jpg',NULL,'internal51.jpg','internal52.jpg','internal53.jpg','internal54.jpg','internal55.jpg','internal56.jpg','4800.00','元/月','二品花园(北仑下海)',0,1562479560517,1562479560517),(10016,10009,2,'凤凰国际 50平 朝南 1室1厅1卫 单身公寓 拎包入','logo60.jpg','type60.jpg',NULL,'internal61.jpg','internal62.jpg','internal63.jpg','internal64.jpg','internal65.jpg','internal66.jpg','2100.00','元/月',' 金东岸(高新区一品广场)',0,1562479560517,1562479560517),(10017,10009,2,'百合公寓68平精装两室3200包物业 看房方便','logo70.jpg','type21.jpg',NULL,'internal71.jpg','internal72.jpg','internal73.jpg','internal74.jpg','internal75.jpg','internal76.jpg','3400.00','元/月','东北上城(余姚广场)',0,1562479560517,1562479560517),(10018,10009,2,'百合公寓 2室1厅 南 绿城百合公寓 2室1厅','logo80.jpg','type40.jpg',NULL,'internal81.jpg','internal82.jpg','internal83.jpg','internal84.jpg','internal85.jpg','internal86.jpg','3350.00','元/月',' 绿城百合公寓(象山市区)',0,1562479560517,1562479560517),(10019,10009,2,'康桥风尚 可短租 免介绍费 房东直租 含物业费 干净','logo90.jpg','type90.jpg',NULL,'internal91.jpg','internal92.jpg','internal93.jpg','internal94.jpg','internal95.jpg','internal96.jpg','1800.00','元/月','康桥风尚(江北文教)',0,1562479560517,1562479560517),(10020,10009,2,'有巢公馆可短租 近地铁 天一广场 直租无中介 独卫精装公寓','logo100.jpg','type100.jpg',NULL,'internal101.jpg','internal102.jpg','internal103.jpg','internal104.jpg','internal105.jpg','internal106.jpg','2600.00','元/月',' 银亿环球中心B座(商住楼)  (海曙 天一广场)',0,1562479560517,1562479560517),(10021,10009,2,'杭州湾观澜苑 3房2厅2卫 精装2200 南北通透','logo110.jpg','type110.jpg',NULL,'internal111.jpg','internal112.jpg','internal113.jpg','internal114.jpg','internal115.jpg','internal116.jpg','2000.00','元/月',' 世纪城观澜苑  (杭州湾新区 世纪城)',0,1562479560517,1562479560517),(10022,10009,2,'桃源小区 三房朝南三室两厅一卫 清爽干净出租 有钥匙看房方便','logo120.jpg','type120.jpg',NULL,'internal121.jpg','internal122.jpg','internal123.jpg','internal124.jpg','internal125.jpg','internal126.jpg','2600.00','元/月','桃源小区(奉化 惠中商城)',0,1562479560517,1562479560517),(10023,10009,2,'中海雍城世 近南部商务区 高教园区 院士公园 精装一室','logo130.jpg','type130.jpg',NULL,'internal131.jpg','internal132.jpg','internal133.jpg','internal134.jpg','internal135.jpg','internal136.jpg','4500.00','元/月','中海雍城世家二期  (鄞州 首南)',0,1562479560517,1562479560517),(10024,10009,2,'拎包入住，家具齐全，值得拥有','logo80.jpg\r\n','type90.jpg',NULL,'internal91.jpg','internal92.jpg','internal93.jpg','internal94.jpg','internal95.jpg','internal96.jpg','1200.00','元/月','春晖家园  (宁海 宁海大厦)',0,1562479560517,1562479560517),(10025,10009,1,'百步亭锦湖金利，业主诚心急售','1logo11.jpg','1type11.jpg',NULL,'1internal111.jpg','1internal112.jpg','1internal113.jpg','1internal114.jpg','1internal115.jpg','1internal116.jpg','1702300.00','元/套','百步亭锦湖金利',0,1562479560517,1562479560517),(10026,10009,1,'出售万科景苑精装二房','1logo12.jpg','1type12.jpg',NULL,'1internal121.jpg','1internal122.jpg','1internal123.jpg','1internal124.jpg','1internal125.jpg','1internal126.jpg','1562200.00','元/套','万科景苑',0,1562479560517,1562479560517),(10027,10000,1,'保利上城近地铁三房急售','1logo13.jpg','1type13.jpg',NULL,'1internal131.jpg','1internal132.jpg','1internal133.jpg','1internal134.jpg','1internal135.jpg','1internal136.jpg','1976800.00','元/套','保利上城',0,1562479560517,1562479560517),(10028,10000,1,'光谷MAMO老房低税诚意出售','1logo14.jpg','1type14.jpg',NULL,'1internal141.jpg','1internal142.jpg','1internal143.jpg','1internal144.jpg','1internal145.jpg','1internal146.jpg','2021600.00','元/套','光谷MAMO',0,1562479560517,1562479560517),(10029,10000,1,'光谷满庭春老房近地铁诚售','1logo15.jpg','1type15.jpg',NULL,'1internal151.jpg','1internal152.jpg','1internal153.jpg','1internal154.jpg','1internal155.jpg','1internal156.jpg','1224400.00','元/套','光谷满庭春',0,1562479560517,1562479560517),(10030,10000,1,'卧龙墨水湖边低税急出售','1logo16.jpg','1type16.jpg',NULL,'1internal161.jpg','1internal162.jpg','1internal163.jpg','1internal164.jpg','1internal165.jpg','1internal166.jpg','1536400.00','元/套','卧龙墨水湖边',0,1562479560517,1562479560517),(10031,10000,1,'大江天际精装三房位置优越','1logo17.jpg','1type17.jpg',NULL,'1internal171.jpg','1internal172.jpg','1internal173.jpg','1internal174.jpg','1internal175.jpg','1internal176.jpg','1848400.00','元/套','大江天际',0,1562479560517,1562479560517),(10032,10000,1,'新天地社区','1logo18.jpg','1type18.jpg',NULL,'1internal181.jpg','1internal182.jpg','1internal183.jpg','1internal184.jpg','1internal185.jpg','1internal186.jpg','1532600.00','元/套','新天地社区',0,1562479560517,1562479560517),(10033,10000,1,'清江山水','1logo19.jpg','1type19.jpg',NULL,'1internal191.jpg','1internal192.jpg','1internal193.jpg','1internal194.jpg','1internal195.jpg','1internal196.jpg','1442200.00','元/套','清江山水',0,1562479560517,1562479560517),(10034,10000,1,'百步亭幸福时代','1logo20.jpg','1type20.jpg',NULL,'1internal201.jpg','1internal202.jpg','1internal203.jpg','1internal204.jpg','1internal205.jpg','1internal206.jpg','1351800.00','元/套','百步亭幸福时代',0,1562479560517,1562479560517),(10035,10000,1,'金域天下','1logo21.jpg','1type21.jpg',NULL,'1internal211.jpg','1internal212.jpg','1internal213.jpg','1internal214.jpg','1internal215.jpg','1internal216.jpg','1261400.00','元/套','金域天下',0,1562479560517,1562479560517),(10036,10000,1,'顶清江山水','1logo22.jpg','1type22.jpg',NULL,'1internal221.jpg','1internal222.jpg','1internal223.jpg','1internal224.jpg','1internal225.jpg','1internal226.jpg','1672200.00','元/套','顶清江山水',0,1562479560517,1562479560517),(10041,10005,1,'二号府邸','2019070766e89890-f6d1-480b-a61b-df4720e267fb','20190707415b7176-6bec-4d16-80e0-bc9160eac301','201907074de09f47-08fd-4a27-a3d2-5425db54ace5','201907070a8ae23d-8f69-4204-a28f-b15b6628e4c3','20190707dbf753c9-3408-4d46-adee-641e098b9ee7','201907077314d576-79a6-46bc-a376-4fdb28347a54','20190707d8e47adf-5d70-43d9-bef7-2e77ff82c9f5','20190707ec6074ed-7346-4a7b-977e-e4682a33153c','','1.00','元/套','和平大道1178号',0,1562498010533,1562498010533),(10042,10009,0,'招租，超级大床房，有阳台','20190704logo11.jpg','','','20190708803995c3-5bb6-4f1c-86f4-6681a4e1b772','2019070806a948ba-f3d1-44de-9a16-bc3b7b83d36f','20190708a093e103-0fc8-4bce-b2fd-ad6323253eff','20190708b1c9eed7-1b03-4c2d-b50d-ced941e48b67','20190708da29137d-7840-41ce-bcd1-9d6de2ad21fe','20190708e5381bcc-b2b6-4812-8928-3bd82a79a683','45000000.00','元/套','宁波市天堂西地狱门口',1,1562547324907,1562547324907),(10043,10012,0,'学生宿舍','20190708e0591b74-75ff-4c76-8185-bb156ad7bdc8','2019070803e9b500-9bbc-473e-a5e1-4d55ce2adf3a','201907089cc39295-afef-4eee-94ca-a752af20c409','20190708e7ebc4bf-d7c7-462b-af58-d89f82429d17','201907080dcf7b08-1a50-4bd7-b8df-f92621017e2e','2019070853dc0160-93dc-42d7-af4d-13dc7109dff3','','','','200.00','元/套','武汉理工大学余家头海虹4栋540',1,1562551806097,1562551806097),(10045,10016,0,'房子','201907083b155f50-ed1f-427f-a85b-c9bfe365e552','20190708fb3c1561-91d4-4c54-91b5-d2cde69ba918','20190708fd47e1b0-6a28-47d8-8dc7-e5e634b8ceae','2019070826f2834a-ddff-486b-a447-decc425b7d06','201907084d99f477-5939-4a2a-8395-64ecd1e3fd6d','20190708ffcac347-5fcd-47ee-b8df-fe329a1f2f50',NULL,NULL,NULL,'15.00','元/月','打啊',0,1562572577153,1562572577153),(10051,10001,0,'新世界','20191020c93a7edf-1dfe-4bca-8489-8b95bc8b1c3a','20191020f81b67eb-5c4c-4fce-9024-4fdbea55ae47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'五山路1号',0,1571585555693,1571585555693),(10053,10005,0,'故宫','201910212c1de152-f056-44ad-98b9-8e82bc0ae1be',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'中南海',0,0,0),(10054,10005,0,'天安门','201910216100cc83-287a-41f1-9b96-4de491962e24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.00',NULL,'长安街',0,0,0),(10055,10005,0,'巴黎圣母院','201910226d1030f5-e523-484f-8623-b522f714008d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.50',NULL,'巴黎路',0,0,0),(10056,10005,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0),(10057,10005,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0),(10058,10005,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0),(10059,10005,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0),(10060,10005,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0),(10063,10001,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10064,10001,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10065,10001,0,'1','20191023f9382cf8-a89d-4460-a4b1-498e1487a478',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10066,10001,0,'1','201910235c64a6dc-3d50-4d4d-be05-7f087d8357f5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10067,10001,0,'1','20191023639552ed-16be-4dbe-b5e2-4fa6016ca9f6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10068,10001,0,'1','20191023be1dfd0f-5c38-4855-8044-b6118562fb6f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10069,10001,0,'1','201910236a3b71d7-e1f7-4725-a1a1-1630709073f3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10070,10001,0,'1','2019102305052bf0-bb07-4ed8-bdc2-3cdebf682b31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'11',0,0,0),(10071,10001,0,'1','2019102319508fa8-e64e-45b1-8368-38127b2361b5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10072,10001,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10073,10001,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0),(10074,10001,0,'1','201910239ce125de-960a-4f2a-85d0-b6bcce9ad605',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.00',NULL,'1',0,0,0);

/*Table structure for table `tb_house_info` */

DROP TABLE IF EXISTS `tb_house_info`;

CREATE TABLE `tb_house_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房源详细信息表唯一标识ID',
  `house_id` int(11) DEFAULT NULL COMMENT '外键：对应房源表ID',
  `house_nature` varchar(255) DEFAULT NULL COMMENT '房源性质：商品房、住宅房',
  `house_model` varchar(255) DEFAULT NULL COMMENT '房源类型：普通住宅、公寓式住宅、别墅、独栋',
  `house_year` int(11) DEFAULT NULL COMMENT '房源建造时间',
  `house_valid` varchar(255) DEFAULT NULL COMMENT '房源期限：70年、100年、永久',
  `house_layout` varchar(255) DEFAULT NULL COMMENT '房源户型：几室几厅几卫',
  `house_area` varchar(255) DEFAULT NULL COMMENT '房源面积',
  `house_turn` varchar(255) DEFAULT NULL COMMENT '朝向',
  `house_floor` int(11) DEFAULT NULL COMMENT '楼层',
  `floor_all` int(11) DEFAULT NULL COMMENT '总楼层',
  `house_decorate` varchar(255) DEFAULT NULL COMMENT '装饰类型：精装、简装',
  `house_lift` tinyint(4) DEFAULT NULL COMMENT '是否有电梯：0无  1有',
  `create_time` bigint(15) DEFAULT '0' COMMENT '创建时间',
  `update_time` bigint(15) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`info_id`),
  UNIQUE KEY `tb_house_info_info_id_uindex` (`info_id`),
  KEY `info_houseid` (`house_id`),
  CONSTRAINT `info_houseid` FOREIGN KEY (`house_id`) REFERENCES `tb_house` (`house_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10045 DEFAULT CHARSET=utf8;

/*Data for the table `tb_house_info` */

insert  into `tb_house_info`(`info_id`,`house_id`,`house_nature`,`house_model`,`house_year`,`house_valid`,`house_layout`,`house_area`,`house_turn`,`house_floor`,`floor_all`,`house_decorate`,`house_lift`,`create_time`,`update_time`) values (10000,10001,'商品房','普通住宅',2010,'70年','4室2厅2卫1厨','99.21 ','东',4,24,'简装',1,1562498010578,1562498010578),(10001,10002,'商品房','普通住宅',2014,'70年','3室2厅1卫1厨','78.23 ','东',5,24,'简装',1,1562547324992,1562547324992),(10002,10003,'商品房','普通住宅',2013,'70年','3室2厅1卫1厨','103.25 ','东',8,24,'简装',1,1562551806149,1562551806149),(10003,10004,'商品房','普通住宅',2015,'70年','3室2厅1卫1厨','97.60 ','东',12,24,'简装',1,1562498010578,1562498010578),(10004,10005,'商品房','普通住宅',2011,'70年','2室2厅1卫1厨','99.62 ','西',16,24,'精装',1,1562547324992,1562547324992),(10005,10006,'商品房','普通住宅',2013,'70年','2室2厅1卫1厨','101.64 ','西',10,24,'精装',1,1562551806149,1562551806149),(10006,10007,'商品房','普通住宅',2014,'70年','3室1厅1卫1厨','103.66 ','西',6,24,'精装',1,1562498010578,1562498010578),(10008,10009,'商品房','普通住宅',2011,'70年','4室2厅1卫1厨','107.70 ','西',4,24,'精装',1,1562547324992,1562547324992),(10009,10010,'商品房','普通住宅',2014,'70年','5室2厅2卫1厨','109.72 ','南',8,24,'精装',1,1562551806149,1562551806149),(10010,10011,'商品房','普通住宅',2013,'70年','3室1厅1卫1厨','111.74 ','南',9,24,'精装',1,1562498010578,1562498010578),(10011,10012,'商品房','普通住宅',2015,'70年','4室2厅2卫1厨','113.76 ','南',21,24,'简装',1,1562547324992,1562547324992),(10012,10013,'商品房','普通住宅',2010,'70年','二室一厅一卫','99.21 ','南',4,24,'精装',1,1562551806149,1562551806149),(10013,10014,'商品房','普通住宅',2014,'70年','一室一厅一卫','78.23 ','南',5,24,'简装',1,1562498010578,1562498010578),(10014,10015,'商品房','普通住宅',2013,'70年','一室一厅一卫','103.25 ','南',8,24,'简装',1,1562547324992,1562547324992),(10015,10016,'商品房','普通住宅',2015,'70年','一室一厅一卫','97.60 ','南',12,24,'简装',1,1562551806149,1562551806149),(10016,10017,'商品房','普通住宅',2011,'70年','一室一厅一卫','99.62 ','北',16,24,'简装',1,1562498010578,1562498010578),(10017,10018,'商品房','普通住宅',2013,'70年','一室一厅一卫','101.64 ','北',10,24,'简装',1,1562547324992,1562547324992),(10018,10019,'商品房','普通住宅',2014,'70年','三室二厅一卫','103.66 ','北',6,24,'简装',1,1562551806149,1562551806149),(10019,10020,'商品房','普通住宅',2016,'70年','一室一厅一卫','105.68 ','北',7,24,'简装',1,1562498010578,1562498010578),(10020,10021,'商品房','普通住宅',2011,'70年','一室二厅一卫','107.70 ','北',4,24,'简装',1,1562547324992,1562547324992),(10021,10022,'商品房','普通住宅',2014,'70年','一室一厅一卫','109.72 ','北',8,24,'简装',1,1562551806149,1562551806149),(10022,10023,'商品房','普通住宅',2013,'70年','二室一厅一卫','111.74 ','北',9,24,'简装',1,1562498010578,1562498010578),(10023,10024,'商品房','普通住宅',2015,'70年','一室一厅一卫','113.76 ','北',21,24,'简装',1,1562547324992,1562547324992),(10025,10026,'商品房','普通住宅',2014,'70年','两室一厅','78','东南',5,24,'简装',1,1562551806149,1562551806149),(10027,10028,'商品房','普通住宅',2015,'70年','三室两厅','98','西南',12,24,'精装',1,1562498010578,1562498010578),(10028,10029,'商品房','普通住宅',2011,'70年','两室一厅','100','东',16,24,'精装',1,1562547324992,1562547324992),(10029,10030,'商品房','普通住宅',2013,'70年','三室两厅两卫','102','东南',10,24,'简装',1,1562551806149,1562551806149),(10030,10031,'商品房','普通住宅',2014,'70年','三室两厅','104','南',6,24,'简装',1,1562498010578,1562498010578),(10031,10032,'商品房','普通住宅',2016,'70年','两室一厅','106','西南',7,24,'精装',1,1562547324992,1562547324992),(10032,10033,'商品房','普通住宅',2011,'70年','三室两厅两卫','108','东',4,24,'精装',1,1562551806149,1562551806149),(10033,10034,'商品房','普通住宅',2014,'70年','三室两厅','110','东南',8,24,'简装',1,1562498010578,1562498010578),(10034,10035,'商品房','普通住宅',2013,'70年','两室一厅','112','南',9,24,'简装',1,1562547324992,1562547324992),(10035,10036,'商品房','普通住宅',2015,'70年','三室两厅两卫','114','西南',21,24,'精装',1,1562551806149,1562551806149),(10040,10041,'0','0',0,'0','0','0','0',0,0,'0',1,1562498010578,1562498010578),(10041,10042,'住宅房','公寓式住宅',2009,'70','三厅二室八卫','180.5','偏西北',8,20,'精装',1,1562547324992,1562547324992),(10042,10043,'宿舍','宿舍',2019,'1','1是1听','20','天',5,5,'破',1,1562551806149,1562551806149),(10044,10045,'商品房','住宅',2008,'70年','一室一厅','50','达到',11,20,'精装',1,1562572577168,1562572577168);

/*Table structure for table `tb_house_inter` */

DROP TABLE IF EXISTS `tb_house_inter`;

CREATE TABLE `tb_house_inter` (
  `inter_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) DEFAULT NULL COMMENT '对应房源id',
  `bed` tinyint(4) DEFAULT NULL COMMENT '床：0无1有',
  `washing` tinyint(4) DEFAULT NULL COMMENT '洗衣机：0无1有',
  `air` tinyint(4) DEFAULT NULL COMMENT '空调0无1有',
  `balcony` tinyint(4) DEFAULT NULL COMMENT '阳台：0无1有',
  `ice` tinyint(4) DEFAULT NULL COMMENT '冰箱：0无1有',
  `toilet` tinyint(4) DEFAULT NULL COMMENT '卫生间：0无1有',
  `kitchen` tinyint(4) DEFAULT NULL COMMENT '厨房：0无1有',
  `tv` tinyint(4) DEFAULT NULL COMMENT '电视：0无1有',
  `heater` tinyint(4) DEFAULT NULL COMMENT '热水器：0无1有',
  `wardrobe` tinyint(4) DEFAULT NULL COMMENT '衣柜：0无1有',
  `heating` tinyint(4) DEFAULT NULL COMMENT '暖气：0无1有',
  `internet` tinyint(4) DEFAULT NULL COMMENT '宽带：0无1有',
  `sofa` tinyint(4) DEFAULT NULL COMMENT '沙发：0无1有',
  `create_time` bigint(15) DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(15) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`inter_id`),
  UNIQUE KEY `tb_house_inter_inter_id_uindex` (`inter_id`),
  KEY `inter_houseid` (`house_id`),
  CONSTRAINT `inter_houseid` FOREIGN KEY (`house_id`) REFERENCES `tb_house` (`house_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `tb_house_inter` */

insert  into `tb_house_inter`(`inter_id`,`house_id`,`bed`,`washing`,`air`,`balcony`,`ice`,`toilet`,`kitchen`,`tv`,`heater`,`wardrobe`,`heating`,`internet`,`sofa`,`create_time`,`update_time`) values (1,10013,1,1,1,1,1,1,1,1,1,1,0,1,1,NULL,NULL),(2,10014,1,1,1,1,1,1,1,1,1,1,0,1,1,NULL,NULL),(3,10015,1,1,1,1,1,1,1,1,1,1,0,1,1,NULL,NULL),(4,10016,1,1,1,0,1,1,1,1,0,1,0,1,1,NULL,NULL),(5,10017,1,1,1,1,1,1,1,1,1,1,0,1,1,NULL,NULL),(6,10018,1,1,1,1,1,1,1,1,1,1,0,1,1,NULL,NULL),(7,10019,1,1,1,1,0,1,1,1,1,0,0,1,1,NULL,NULL),(8,10020,1,1,0,1,1,1,1,1,1,1,0,1,1,NULL,NULL),(9,10021,1,1,1,1,1,0,1,1,1,1,0,1,1,NULL,NULL),(10,10022,1,1,1,1,1,1,1,1,1,1,0,0,1,NULL,NULL),(11,10023,1,1,1,1,1,1,1,1,1,1,0,1,1,NULL,NULL),(12,10024,1,1,1,1,1,1,1,1,1,1,0,1,1,NULL,NULL),(15,10041,0,0,0,1,1,0,0,1,1,1,0,1,1,1562498010623,1562498010623),(16,10042,0,0,1,0,1,0,0,1,0,1,1,1,0,1562547325058,1562547325058),(17,10043,0,0,1,1,1,1,1,1,1,1,1,1,1,1562551806218,1562551806218),(19,10045,1,1,0,1,0,0,0,0,0,1,0,0,1,1562572577168,1562572577168);

/*Table structure for table `tb_img` */

DROP TABLE IF EXISTS `tb_img`;

CREATE TABLE `tb_img` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `img_name` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `create_time` bigint(15) DEFAULT '0',
  `update_time` bigint(15) DEFAULT '0',
  PRIMARY KEY (`img_id`),
  UNIQUE KEY `tb_img_img_id_uindex` (`img_id`),
  KEY `img_userid` (`user_id`),
  CONSTRAINT `img_userid` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10096 DEFAULT CHARSET=utf8;

/*Data for the table `tb_img` */

insert  into `tb_img`(`img_id`,`user_id`,`img_name`,`is_delete`,`create_time`,`update_time`) values (10000,10000,'20190704type01.jpg',NULL,NULL,NULL),(10001,10000,'20190704type02.jpg',NULL,NULL,NULL),(10002,10000,'20190704type03.jpg',NULL,NULL,NULL),(10003,10000,'20190704type04.jpg',NULL,NULL,NULL),(10004,10000,'20190704type06.jpg',NULL,NULL,NULL),(10005,10000,'20190704type07.jpg',NULL,NULL,NULL),(10006,10000,'20190704type08.jpg',NULL,NULL,NULL),(10007,10000,'20190704type09.jpg',NULL,NULL,NULL),(10008,10000,'20190704type10.jpg',NULL,NULL,NULL),(10009,10000,'20190704type11.jpg',NULL,NULL,NULL),(10010,10000,'20190704type05.jpg',NULL,NULL,NULL),(10011,10000,'20190704type12.jpg',NULL,NULL,NULL),(10012,10000,'0704internal01',NULL,NULL,NULL),(10013,10000,'0704internal02',NULL,NULL,NULL),(10014,10000,'0704internal03',NULL,NULL,NULL),(10015,10000,'0704internal04',NULL,NULL,NULL),(10016,10000,'0704internal05',NULL,NULL,NULL),(10017,10000,'0704internal06',NULL,NULL,NULL),(10018,10000,'0704internal07',NULL,NULL,NULL),(10019,10000,'0704internal08',NULL,NULL,NULL),(10020,10000,'0704internal09',NULL,NULL,NULL),(10021,10000,'0704internal10',NULL,NULL,NULL),(10022,10000,'0704internal11',NULL,NULL,NULL),(10023,10000,'0704internal12',NULL,NULL,NULL),(10024,10000,'0704internal13',NULL,NULL,NULL),(10025,10000,'0704internal14',NULL,NULL,NULL),(10026,10000,'0704internal15',NULL,NULL,NULL),(10027,10000,'0704internal16',NULL,NULL,NULL),(10028,10000,'0704internal17',NULL,NULL,NULL),(10029,10000,'0704internal18',NULL,NULL,NULL),(10030,10000,'0704internal19',NULL,NULL,NULL),(10031,10000,'0704internal20',NULL,NULL,NULL),(10032,10000,'0704internal21',NULL,NULL,NULL),(10033,10000,'0704internal22',NULL,NULL,NULL),(10034,10000,'0704internal23',NULL,NULL,NULL),(10035,10000,'0704internal24',NULL,NULL,NULL),(10036,10000,'0704internal25',NULL,NULL,NULL),(10037,10000,'0704internal26',NULL,NULL,NULL),(10038,10000,'0704internal27',NULL,NULL,NULL),(10039,10000,'0704internal28',NULL,NULL,NULL),(10040,10000,'0704internal29',NULL,NULL,NULL),(10041,10000,'0704internal30',NULL,NULL,NULL),(10042,10000,'0704internal31',NULL,NULL,NULL),(10043,10000,'0704internal32',NULL,NULL,NULL),(10044,10000,'0704internal33',NULL,NULL,NULL),(10045,10000,'0704internal34',NULL,NULL,NULL),(10046,10000,'0704internal35',NULL,NULL,NULL),(10047,10000,'0704internal36',NULL,NULL,NULL),(10048,10000,'0704internal37',NULL,NULL,NULL),(10049,10000,'0704internal38',NULL,NULL,NULL),(10050,10000,'0704internal39',NULL,NULL,NULL),(10051,10000,'0704internal40',NULL,NULL,NULL),(10052,10000,'0704internal41',NULL,NULL,NULL),(10053,10000,'0704internal42',NULL,NULL,NULL),(10054,10000,'0704internal43',NULL,NULL,NULL),(10055,10000,'0704internal44',NULL,NULL,NULL),(10056,10000,'0704internal45',NULL,NULL,NULL),(10057,10000,'0704internal46',NULL,NULL,NULL),(10058,10000,'0704internal47',NULL,NULL,NULL),(10059,10000,'0704internal48',NULL,NULL,NULL),(10060,10000,'0704internal49',NULL,NULL,NULL),(10061,10000,'0704internal50',NULL,NULL,NULL),(10062,10000,'0704internal51',NULL,NULL,NULL),(10063,10000,'0704internal52',NULL,NULL,NULL),(10064,10000,'0704internal53',NULL,NULL,NULL),(10065,10000,'0704internal54',NULL,NULL,NULL),(10066,10000,'0704internal55',NULL,NULL,NULL),(10067,10000,'0704internal56',NULL,NULL,NULL),(10068,10000,'0704internal57',NULL,NULL,NULL),(10069,10000,'0704internal58',NULL,NULL,NULL),(10070,10000,'0704internal59',NULL,NULL,NULL),(10071,10000,'0704internal60',NULL,NULL,NULL),(10072,10000,'0704internal61',NULL,NULL,NULL),(10073,10000,'0704internal62',NULL,NULL,NULL),(10074,10000,'0704internal63',NULL,NULL,NULL),(10075,10000,'0704internal64',NULL,NULL,NULL),(10076,10000,'0704internal65',NULL,NULL,NULL),(10077,10000,'0704internal66',NULL,NULL,NULL),(10078,10000,'0704internal67',NULL,NULL,NULL),(10079,10000,'0704internal68',NULL,NULL,NULL),(10080,10000,'0704internal69',NULL,NULL,NULL),(10081,10000,'0704internal70',NULL,NULL,NULL),(10082,10000,'0704internal71',NULL,NULL,NULL),(10083,10000,'0704internal72',NULL,NULL,NULL),(10084,10000,'0704logo01',NULL,NULL,NULL),(10085,10000,'0704logo02',NULL,NULL,NULL),(10086,10000,'0704logo03',NULL,NULL,NULL),(10087,10000,'0704logo04',NULL,NULL,NULL),(10088,10000,'0704logo05',NULL,NULL,NULL),(10089,10000,'0704logo06',NULL,NULL,NULL),(10090,10000,'0704logo07',NULL,NULL,NULL),(10091,10000,'0704logo08',NULL,NULL,NULL),(10092,10000,'0704logo09',NULL,NULL,NULL),(10093,10000,'0704logo010',NULL,NULL,NULL),(10094,10000,'0704logo011',NULL,NULL,NULL),(10095,10000,'0704logo012',NULL,NULL,NULL);

/*Table structure for table `tb_need` */

DROP TABLE IF EXISTS `tb_need`;

CREATE TABLE `tb_need` (
  `need_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `need_title` varchar(255) DEFAULT NULL,
  `need_details` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT '0',
  `create_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`need_id`),
  KEY `need_userid` (`user_id`),
  CONSTRAINT `need_userid` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10014 DEFAULT CHARSET=utf8;

/*Data for the table `tb_need` */

insert  into `tb_need`(`need_id`,`user_id`,`need_title`,`need_details`,`is_delete`,`create_time`) values (10000,10005,'求购别墅型二手房','最好在宁波附近的别墅或者独门独院的楼房。',1,1562500605403),(10001,10005,'测试发布需求标题','测试发布需求的详情信息',1,1562500736102),(10002,10005,'的风格的风格地方','过放电发的地方',1,1562500736102),(10003,10005,'富士达发的地方地方','个发的的风格地方',1,1562500736102),(10004,10005,'的风格地方大风刮过的风格地方','个的风格地方地方地方的',1,1562500736102),(10005,10005,'风光好规范和风格和分工',' 风光好黑寡妇分工分工',1,1562500736102),(10006,10005,'的风格分工分工风格风格和凤凰国际一个','加一天人还让他任天野任天野如图',1,1562500736102),(10007,10005,'老外滩附近求购房子',' 如题',0,1562500736102),(10009,10009,'想租一间房子','在宁波智慧园附近最好',0,1562513172882),(10013,10005,'买房子','买房子',0,1562570113003);

/*Table structure for table `tb_notice` */

DROP TABLE IF EXISTS `tb_notice`;

CREATE TABLE `tb_notice` (
  `notice_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `notice_title` varchar(255) DEFAULT NULL,
  `notice_content` varchar(255) DEFAULT NULL,
  `notice_status` tinyint(4) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notice_id`),
  UNIQUE KEY `tb_notice_notice_id_uindex` (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_notice` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户唯一标识ID',
  `phone` varchar(18) NOT NULL COMMENT '用户手机号，用来登录',
  `password` varchar(255) DEFAULT NULL COMMENT '用户登录密码',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `truename` varchar(255) DEFAULT NULL COMMENT 'z真实姓名',
  `gender` tinyint(4) DEFAULT '0' COMMENT '性别：0：男  1：女',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除：0：未删除  1：已删除',
  `create_time` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `update_time` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `tb_user_user_id_uindex` (`user_id`),
  UNIQUE KEY `tb_user_nickname_uindex` (`nickname`),
  UNIQUE KEY `tb_user_email_uindex` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10018 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`user_id`,`phone`,`password`,`email`,`nickname`,`truename`,`gender`,`province`,`city`,`is_delete`,`create_time`,`update_time`) values (10000,'111','111','0','1','hualili',0,'0','nb',1,0,0),(10001,'18956419371','1',NULL,'123','123',0,NULL,'宁波',1,1562037886530,1562567466113),(10002,'1592717030','111',NULL,NULL,NULL,0,NULL,NULL,0,1562038054883,1562038054883),(10003,'1876339880','123456',NULL,NULL,NULL,0,NULL,NULL,0,1562054809634,1562054809634),(10005,'15927170300','666',NULL,'拾年之璐666','hualili',0,NULL,'宁波市',0,1562145730371,1562383334404),(10006,'18171294402','123456',NULL,NULL,NULL,0,NULL,NULL,0,1562158516197,1562158516197),(10007,'15871755644','123456',NULL,NULL,NULL,0,NULL,NULL,0,1562295902516,1562295902516),(10008,'1814055144','123456',NULL,NULL,NULL,0,NULL,NULL,0,1562373638947,1562373638947),(10009,'15927288737','123',NULL,'反对法','王二狗',0,NULL,'安徽',0,1562468752380,1562512818027),(10010,'18164331561','123',NULL,'AAA',NULL,0,NULL,NULL,1,0,0),(10011,'181405514','123456',NULL,NULL,NULL,0,NULL,NULL,0,1562514872076,1562514872076),(10012,'15927277020','chengxiuhaoshabi',NULL,'是大大大','成修好',1,NULL,'武汉',0,1562551549828,1562551881184),(10013,'15623914811','123456789',NULL,NULL,NULL,0,NULL,NULL,0,1562552611246,1562552611246),(10014,'13667239620','123',NULL,NULL,NULL,0,NULL,NULL,0,1562561389895,1562561389895),(10015,'13866781484','123456',NULL,NULL,NULL,0,NULL,NULL,0,1562570015266,1562570015266),(10016,'15056619779','111',NULL,NULL,NULL,0,NULL,NULL,0,1562572434929,1562572434929),(10017,'100','100',NULL,NULL,NULL,0,NULL,NULL,0,0,0);

/*Table structure for table `tb_user_auth` */

DROP TABLE IF EXISTS `tb_user_auth`;

CREATE TABLE `tb_user_auth` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_gender` tinyint(4) DEFAULT NULL,
  `user_card` varchar(255) DEFAULT NULL,
  `user_card_address` varchar(255) DEFAULT NULL,
  `user_live_address` varchar(255) DEFAULT NULL,
  `user_cardimg` varchar(255) DEFAULT NULL,
  `user_propertyimg` varchar(255) DEFAULT NULL,
  `auth_status` int(11) DEFAULT '2' COMMENT '审核中：2  审核通过：1   拒绝：0',
  `is_delete` int(11) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`auth_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10040 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user_auth` */

insert  into `tb_user_auth`(`auth_id`,`user_id`,`user_name`,`user_gender`,`user_card`,`user_card_address`,`user_live_address`,`user_cardimg`,`user_propertyimg`,`auth_status`,`is_delete`,`create_time`,`update_time`) values (10001,10004,'wbk',0,'123','123','ningbo',NULL,NULL,2,NULL,1562509380156,1562509380156),(10039,10000,'hualili',0,'','','',NULL,NULL,2,NULL,1588116252270,1588116252270);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
