-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmc663g
-- ------------------------------------------------------
-- Server version	5.7.31

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

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmc663g/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmc663g/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmc663g/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (31,'2021-03-22 05:45:34','标题1','http://localhost:8080/jspmc663g/upload/gonggaoxinxi_tupian1.jpg','内容1','2021-03-22'),(32,'2021-03-22 05:45:34','标题2','http://localhost:8080/jspmc663g/upload/gonggaoxinxi_tupian2.jpg','内容2','2021-03-22'),(33,'2021-03-22 05:45:34','标题3','http://localhost:8080/jspmc663g/upload/gonggaoxinxi_tupian3.jpg','内容3','2021-03-22'),(34,'2021-03-22 05:45:34','标题4','http://localhost:8080/jspmc663g/upload/gonggaoxinxi_tupian4.jpg','内容4','2021-03-22'),(35,'2021-03-22 05:45:34','标题5','http://localhost:8080/jspmc663g/upload/gonggaoxinxi_tupian5.jpg','内容5','2021-03-22'),(36,'2021-03-22 05:45:34','标题6','http://localhost:8080/jspmc663g/upload/gonggaoxinxi_tupian6.jpg','内容6','2021-03-22');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','03a1a08paakdxgyyam4evg1mkznroy6l','2021-03-22 05:46:05','2021-03-22 06:51:25'),(2,1616392059657,'11','xuesheng','学生','mqe4r0q4bstrjuu8yerv8o1b0mav1cd6','2021-03-22 05:47:49','2021-03-22 06:50:14'),(3,21,'心理医生1','xinliyisheng','心理医生','q6tn9alzf41n5p2eso4prk1hfb9kvzkk','2021-03-22 05:49:45','2021-03-22 06:51:01');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-22 05:45:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinliyisheng`
--

DROP TABLE IF EXISTS `xinliyisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinliyisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinliyishengzhanghao` varchar(200) NOT NULL COMMENT '心理医生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xinliyishengxingming` varchar(200) NOT NULL COMMENT '心理医生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinliyishengzhanghao` (`xinliyishengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='心理医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinliyisheng`
--

LOCK TABLES `xinliyisheng` WRITE;
/*!40000 ALTER TABLE `xinliyisheng` DISABLE KEYS */;
INSERT INTO `xinliyisheng` VALUES (21,'2021-03-22 05:45:34','心理医生1','123456','心理医生姓名1','http://localhost:8080/jspmc663g/upload/xinliyisheng_touxiang1.jpg','男','13823888881'),(22,'2021-03-22 05:45:34','心理医生2','123456','心理医生姓名2','http://localhost:8080/jspmc663g/upload/xinliyisheng_touxiang2.jpg','男','13823888882'),(23,'2021-03-22 05:45:34','心理医生3','123456','心理医生姓名3','http://localhost:8080/jspmc663g/upload/xinliyisheng_touxiang3.jpg','男','13823888883'),(24,'2021-03-22 05:45:34','心理医生4','123456','心理医生姓名4','http://localhost:8080/jspmc663g/upload/xinliyisheng_touxiang4.jpg','男','13823888884'),(25,'2021-03-22 05:45:34','心理医生5','123456','心理医生姓名5','http://localhost:8080/jspmc663g/upload/xinliyisheng_touxiang5.jpg','男','13823888885'),(26,'2021-03-22 05:45:34','心理医生6','123456','心理医生姓名6','http://localhost:8080/jspmc663g/upload/xinliyisheng_touxiang6.jpg','男','13823888886');
/*!40000 ALTER TABLE `xinliyisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinliyishengxinxi`
--

DROP TABLE IF EXISTS `xinliyishengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinliyishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinliyishengzhanghao` varchar(200) DEFAULT NULL COMMENT '心理医生账号',
  `xinliyishengxingming` varchar(200) DEFAULT NULL COMMENT '心理医生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `congyeshijian` varchar(200) DEFAULT NULL COMMENT '从业时间',
  `shanzhanglingyu` varchar(200) DEFAULT NULL COMMENT '擅长领域',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='心理医生信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinliyishengxinxi`
--

LOCK TABLES `xinliyishengxinxi` WRITE;
/*!40000 ALTER TABLE `xinliyishengxinxi` DISABLE KEYS */;
INSERT INTO `xinliyishengxinxi` VALUES (41,'2021-03-22 05:45:34','心理医生1','心理医生姓名1','http://localhost:8080/jspmc663g/upload/xinliyishengxinxi_touxiang1.jpg','从业时间1','擅长领域1','个人简介1'),(42,'2021-03-22 05:45:34','心理医生2','心理医生姓名2','http://localhost:8080/jspmc663g/upload/xinliyishengxinxi_touxiang2.jpg','从业时间2','擅长领域2','个人简介2'),(43,'2021-03-22 05:45:34','心理医生3','心理医生姓名3','http://localhost:8080/jspmc663g/upload/xinliyishengxinxi_touxiang3.jpg','从业时间3','擅长领域3','个人简介3'),(44,'2021-03-22 05:45:34','心理医生4','心理医生姓名4','http://localhost:8080/jspmc663g/upload/xinliyishengxinxi_touxiang4.jpg','从业时间4','擅长领域4','个人简介4'),(45,'2021-03-22 05:45:34','心理医生5','心理医生姓名5','http://localhost:8080/jspmc663g/upload/xinliyishengxinxi_touxiang5.jpg','从业时间5','擅长领域5','个人简介5'),(46,'2021-03-22 05:45:34','心理医生6','心理医生姓名6','http://localhost:8080/jspmc663g/upload/xinliyishengxinxi_touxiang6.jpg','从业时间6','擅长领域6','个人简介6');
/*!40000 ALTER TABLE `xinliyishengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) NOT NULL COMMENT '学生号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshenghao` (`xueshenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616392059658 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-03-22 05:45:34','学生1','123456','学生姓名1','http://localhost:8080/jspmc663g/upload/xuesheng_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-22 05:45:34','学生2','123456','学生姓名2','http://localhost:8080/jspmc663g/upload/xuesheng_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-22 05:45:34','学生3','123456','学生姓名3','http://localhost:8080/jspmc663g/upload/xuesheng_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-22 05:45:34','学生4','123456','学生姓名4','http://localhost:8080/jspmc663g/upload/xuesheng_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-22 05:45:34','学生5','123456','学生姓名5','http://localhost:8080/jspmc663g/upload/xuesheng_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-22 05:45:34','学生6','123456','学生姓名6','http://localhost:8080/jspmc663g/upload/xuesheng_touxiang6.jpg','男','13823888886','773890006@qq.com'),(1616392059657,'2021-03-22 05:47:39','11','123456','杨小姐','http://localhost:8080/jspmc663g/upload/1616392083212.jpg','女','13823899999','');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengpingjia`
--

DROP TABLE IF EXISTS `xueshengpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinliyishengzhanghao` varchar(200) DEFAULT NULL COMMENT '心理医生账号',
  `xinliyishengxingming` varchar(200) DEFAULT NULL COMMENT '心理医生姓名',
  `shanzhanglingyu` varchar(200) DEFAULT NULL COMMENT '擅长领域',
  `xueshengpingjia` varchar(200) DEFAULT NULL COMMENT '学生评价',
  `xueshengpingfen` varchar(200) DEFAULT NULL COMMENT '学生评分',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616392238052 DEFAULT CHARSET=utf8 COMMENT='学生评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengpingjia`
--

LOCK TABLES `xueshengpingjia` WRITE;
/*!40000 ALTER TABLE `xueshengpingjia` DISABLE KEYS */;
INSERT INTO `xueshengpingjia` VALUES (61,'2021-03-22 05:45:34','心理医生账号1','心理医生姓名1','擅长领域1','学生评价1','1','学生号1','学生姓名1'),(62,'2021-03-22 05:45:34','心理医生账号2','心理医生姓名2','擅长领域2','学生评价2','1','学生号2','学生姓名2'),(63,'2021-03-22 05:45:34','心理医生账号3','心理医生姓名3','擅长领域3','学生评价3','1','学生号3','学生姓名3'),(64,'2021-03-22 05:45:34','心理医生账号4','心理医生姓名4','擅长领域4','学生评价4','1','学生号4','学生姓名4'),(65,'2021-03-22 05:45:34','心理医生账号5','心理医生姓名5','擅长领域5','学生评价5','1','学生号5','学生姓名5'),(66,'2021-03-22 05:45:34','心理医生账号6','心理医生姓名6','擅长领域6','学生评价6','1','学生号6','学生姓名6'),(1616392238051,'2021-03-22 05:50:37','心理医生1','心理医生姓名1','擅长领域1','好','5','11','杨小姐');
/*!40000 ALTER TABLE `xueshengpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuezixun`
--

DROP TABLE IF EXISTS `yuyuezixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuezixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinliyishengzhanghao` varchar(200) DEFAULT NULL COMMENT '心理医生账号',
  `xinliyishengxingming` varchar(200) DEFAULT NULL COMMENT '心理医生姓名',
  `shanzhanglingyu` varchar(200) DEFAULT NULL COMMENT '擅长领域',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616392151668 DEFAULT CHARSET=utf8 COMMENT='预约咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuezixun`
--

LOCK TABLES `yuyuezixun` WRITE;
/*!40000 ALTER TABLE `yuyuezixun` DISABLE KEYS */;
INSERT INTO `yuyuezixun` VALUES (51,'2021-03-22 05:45:34','心理医生账号1','心理医生姓名1','擅长领域1','2021-03-22 13:45:34','学生号1','学生姓名1','手机号码1','是',''),(52,'2021-03-22 05:45:34','心理医生账号2','心理医生姓名2','擅长领域2','2021-03-22 13:45:34','学生号2','学生姓名2','手机号码2','是',''),(53,'2021-03-22 05:45:34','心理医生账号3','心理医生姓名3','擅长领域3','2021-03-22 13:45:34','学生号3','学生姓名3','手机号码3','是',''),(54,'2021-03-22 05:45:34','心理医生账号4','心理医生姓名4','擅长领域4','2021-03-22 13:45:34','学生号4','学生姓名4','手机号码4','是',''),(55,'2021-03-22 05:45:34','心理医生账号5','心理医生姓名5','擅长领域5','2021-03-22 13:45:34','学生号5','学生姓名5','手机号码5','是',''),(56,'2021-03-22 05:45:34','心理医生账号6','心理医生姓名6','擅长领域6','2021-03-22 13:45:34','学生号6','学生姓名6','手机号码6','是',''),(1616392151667,'2021-03-22 05:49:11','心理医生1','心理医生姓名1','擅长领域1','2021-03-23 09:00:00','11','杨小姐','13823899999','是','');
/*!40000 ALTER TABLE `yuyuezixun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-29 15:42:04
