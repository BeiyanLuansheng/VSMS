-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: xjdb
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertable` (
  `ORDER_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `CREATE_TIME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SALES_ID` bigint unsigned DEFAULT NULL,
  `CUSTOMER_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CUSTOMER_PHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `VEHICLE_ID` bigint unsigned DEFAULT NULL,
  `PRICE` bigint unsigned DEFAULT NULL,
  `STATUS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertable`
--

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (1,'2020-07-27 12:00:00.0',12,'zhangsan','15034659998',52,120000,'待审核'),(2,'2020-07-27 14:31:09.09',13,'lisi','12345678912',11,202222,'已审核'),(3,'2020-07-27 14:34:05.596',22,'wangwu','12379845632',22,3333333,'已付款'),(4,'2020-07-27 14:46:48.76',22,'xxx','12345679811',22,200000,'已归档'),(5,'2020-07-27 14:50:00.442',211,'sss','12345678955',11,200000,'已归档'),(6,'2020-07-27 15:32:05.114',22,'qwer','12230000222',33,666666,'待审核'),(7,'2020-07-27 16:51:21.797',11,'fff','15022223333',12,250000,'已审核'),(8,'2020-07-28 10:37:09.805',15,'aaaaa','15533336666',88,150000,'已归档'),(9,'2020-07-28 14:15:45.125',11,'22','12300000000',11,200000,'已审核'),(10,'2020-07-28 19:19:26.75',15,'oppo','15233002255',11,200000,'已归档'),(11,'2020-07-28 20:22:24.597',123,'aann','15236589562',11,20000,'待审核'),(12,'2020-07-28 20:24:38.948',22,'aasds','15165322156',33,200000,'待审核'),(13,'2020-07-28 20:25:01.641',88,'fghjh','15522223333',55,660000,'待审核');
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('FEBS_Scheduler','TASK_1','DEFAULT','0/1 * * * * ?','Asia/Shanghai'),('FEBS_Scheduler','TASK_11','DEFAULT','0/5 * * * * ?','Asia/Shanghai'),('FEBS_Scheduler','TASK_2','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('FEBS_Scheduler','TASK_3','DEFAULT','0/1 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('FEBS_Scheduler','TASK_1','DEFAULT',NULL,'cc.mrbird.febs.job.util.ScheduleJob','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0cc.mrbird.febs.job.entity.Job�R���\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statusq\0~\0	xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0a\�\�ppxt\0\r0/1 * * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0testt\0mrbirdt\0\Z有参任务调度测试~~t\01x\0'),('FEBS_Scheduler','TASK_11','DEFAULT',NULL,'cc.mrbird.febs.job.util.ScheduleJob','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0cc.mrbird.febs.job.entity.Job�R���\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statusq\0~\0	xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0a\��Pxt\0\r0/5 * * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0test2pt\0测试异常t\01x\0'),('FEBS_Scheduler','TASK_2','DEFAULT',NULL,'cc.mrbird.febs.job.util.ScheduleJob','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0cc.mrbird.febs.job.entity.Job�R���\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statusq\0~\0	xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0a\�2�xt\00/10 * * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0test1pt\0无参任务调度测试t\01x\0'),('FEBS_Scheduler','TASK_3','DEFAULT',NULL,'cc.mrbird.febs.job.util.ScheduleJob','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0cc.mrbird.febs.job.entity.Job�R���\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statusq\0~\0	xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0aϹ��xt\0\r0/1 * * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0testt\0hello worldt\0+有参任务调度测试,每隔一秒触发t\01x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('FEBS_Scheduler','STATE_ACCESS'),('FEBS_Scheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('FEBS_Scheduler','DESKTOP-PHMKGBV1595999097587',1596003286521,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('FEBS_Scheduler','TASK_1','DEFAULT','TASK_1','DEFAULT',NULL,1595316566000,-1,5,'PAUSED','CRON',1595316566000,0,NULL,2,_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0cc.mrbird.febs.job.entity.Job�R���\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statusq\0~\0	xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0a\�\�ppxt\0\r0/1 * * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0testt\0mrbirdt\0\Z有参任务调度测试~~t\01x\0'),('FEBS_Scheduler','TASK_11','DEFAULT','TASK_11','DEFAULT',NULL,1595316570000,-1,5,'PAUSED','CRON',1595316567000,0,NULL,2,_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0cc.mrbird.febs.job.entity.Job�R���\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statusq\0~\0	xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0a\��Pxt\0\r0/5 * * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0test2pt\0测试异常t\01x\0'),('FEBS_Scheduler','TASK_2','DEFAULT','TASK_2','DEFAULT',NULL,1595316570000,-1,5,'PAUSED','CRON',1595316566000,0,NULL,2,_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0cc.mrbird.febs.job.entity.Job�R���\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statusq\0~\0	xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0a\�2�xt\00/10 * * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0test1pt\0无参任务调度测试t\01x\0'),('FEBS_Scheduler','TASK_3','DEFAULT','TASK_3','DEFAULT',NULL,1595316567000,-1,5,'PAUSED','CRON',1595316567000,0,NULL,2,_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0cc.mrbird.febs.job.entity.Job�R���\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statusq\0~\0	xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0aϹ��xt\0\r0/1 * * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0testt\0hello worldt\0+有参任务调度测试,每隔一秒触发t\01x\0');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_data_permission_test`
--

DROP TABLE IF EXISTS `t_data_permission_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_data_permission_test` (
  `FIELD1` varchar(20) NOT NULL,
  `FIELD2` varchar(20) NOT NULL,
  `FIELD3` varchar(20) NOT NULL,
  `FIELD4` varchar(20) NOT NULL,
  `DEPT_ID` int NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户权限测试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_data_permission_test`
--

LOCK TABLES `t_data_permission_test` WRITE;
/*!40000 ALTER TABLE `t_data_permission_test` DISABLE KEYS */;
INSERT INTO `t_data_permission_test` VALUES ('小米','小米10Pro','4999','珍珠白',1,'2020-04-14 15:00:38',1),('腾讯','黑鲨游戏手机3','3799','铠甲灰',2,'2020-04-14 15:01:36',2),('华为','华为P30','3299','天空之境',1,'2020-04-14 15:03:11',3),('华为','华为P40Pro','6488','亮黑色',3,'2020-04-14 15:04:31',4),('vivo','Vivo iQOO 3','3998','拉力橙',4,'2020-04-14 15:05:55',5),('一加','一加7T','3199','冰际蓝',5,'2020-04-14 15:06:53',6),('三星','三星Galaxy S10','4098','浩玉白',6,'2020-04-14 15:08:25',7),('苹果','iPhone 11 pro max','9198','暗夜绿',4,'2020-04-14 15:09:20',8);
/*!40000 ALTER TABLE `t_data_permission_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dept`
--

DROP TABLE IF EXISTS `t_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dept` (
  `DEPT_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`) USING BTREE,
  KEY `t_dept_parent_id` (`PARENT_ID`),
  KEY `t_dept_dept_name` (`DEPT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept`
--

LOCK TABLES `t_dept` WRITE;
/*!40000 ALTER TABLE `t_dept` DISABLE KEYS */;
INSERT INTO `t_dept` VALUES (1,0,'开发部',1,'2019-06-14 20:56:41',NULL),(2,1,'开发一部',1,'2019-06-14 20:58:46',NULL),(3,1,'开发二部',2,'2019-06-14 20:58:56',NULL),(4,0,'采购部',2,'2019-06-14 20:59:56',NULL),(5,0,'财务部',3,'2019-06-14 21:00:08',NULL),(6,0,'销售部',4,'2019-06-14 21:00:15',NULL),(7,0,'工程部',5,'2019-06-14 21:00:42',NULL),(8,0,'行政部',6,'2019-06-14 21:00:49',NULL),(9,0,'人力资源部',8,'2019-06-14 21:01:14','2019-06-14 21:01:34'),(10,0,'系统部',7,'2019-06-14 21:01:31',NULL);
/*!40000 ALTER TABLE `t_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_eximport`
--

DROP TABLE IF EXISTS `t_eximport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_eximport` (
  `FIELD1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段1',
  `FIELD2` int NOT NULL COMMENT '字段2',
  `FIELD3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段3',
  `CREATE_TIME` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Excel导入导出测试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_eximport`
--

LOCK TABLES `t_eximport` WRITE;
/*!40000 ALTER TABLE `t_eximport` DISABLE KEYS */;
INSERT INTO `t_eximport` VALUES ('字段1',1,'mrbird0@gmail.com','2019-06-13 03:14:06'),('字段1',2,'mrbird1@gmail.com','2019-06-13 03:14:06'),('字段1',3,'mrbird2@gmail.com','2019-06-13 03:14:06'),('字段1',4,'mrbird3@gmail.com','2019-06-13 03:14:06'),('字段1',5,'mrbird4@gmail.com','2019-06-13 03:14:06'),('字段1',6,'mrbird5@gmail.com','2019-06-13 03:14:06'),('字段1',7,'mrbird6@gmail.com','2019-06-13 03:14:06'),('字段1',8,'mrbird7@gmail.com','2019-06-13 03:14:06'),('字段1',9,'mrbird8@gmail.com','2019-06-13 03:14:06'),('字段1',10,'mrbird9@gmail.com','2019-06-13 03:14:06'),('字段1',11,'mrbird10@gmail.com','2019-06-13 03:14:06'),('字段1',12,'mrbird11@gmail.com','2019-06-13 03:14:06'),('字段1',13,'mrbird12@gmail.com','2019-06-13 03:14:06'),('字段1',14,'mrbird13@gmail.com','2019-06-13 03:14:06'),('字段1',15,'mrbird14@gmail.com','2019-06-13 03:14:06'),('字段1',16,'mrbird15@gmail.com','2019-06-13 03:14:06'),('字段1',17,'mrbird16@gmail.com','2019-06-13 03:14:06'),('字段1',18,'mrbird17@gmail.com','2019-06-13 03:14:06'),('字段1',19,'mrbird18@gmail.com','2019-06-13 03:14:06'),('字段1',20,'mrbird19@gmail.com','2019-06-13 03:14:06');
/*!40000 ALTER TABLE `t_eximport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_generator_config`
--

DROP TABLE IF EXISTS `t_generator_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_generator_config` (
  `id` int NOT NULL COMMENT '主键',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `base_package` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '基础包名',
  `entity_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'entity文件存放路径',
  `mapper_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper文件存放路径',
  `mapper_xml_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper xml文件存放路径',
  `service_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'servcie文件存放路径',
  `service_impl_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'serviceImpl文件存放路径',
  `controller_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'controller文件存放路径',
  `is_trim` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否去除前缀 1是 0否',
  `trim_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前缀内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码生成配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_generator_config`
--

LOCK TABLES `t_generator_config` WRITE;
/*!40000 ALTER TABLE `t_generator_config` DISABLE KEYS */;
INSERT INTO `t_generator_config` VALUES (1,'MrBird','cc.mrbird.febs.gen','entity','mapper','mapper','service','service.impl','controller','1','t_');
/*!40000 ALTER TABLE `t_generator_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job`
--

DROP TABLE IF EXISTS `t_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_job` (
  `JOB_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `PARAMS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`) USING BTREE,
  KEY `t_job_create_time` (`CREATE_TIME`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job`
--

LOCK TABLES `t_job` WRITE;
/*!40000 ALTER TABLE `t_job` DISABLE KEYS */;
INSERT INTO `t_job` VALUES (1,'testTask','test','mrbird','0/1 * * * * ?','1','有参任务调度测试~~','2018-02-24 16:26:14'),(2,'testTask','test1',NULL,'0/10 * * * * ?','1','无参任务调度测试','2018-02-24 17:06:23'),(3,'testTask','test','hello world','0/1 * * * * ?','1','有参任务调度测试,每隔一秒触发','2018-02-26 09:28:26'),(11,'testTask','test2',NULL,'0/5 * * * * ?','1','测试异常','2018-02-26 11:15:30');
/*!40000 ALTER TABLE `t_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job_log`
--

DROP TABLE IF EXISTS `t_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_job_log` (
  `LOG_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '失败信息',
  `TIMES` decimal(11,0) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`) USING BTREE,
  KEY `t_job_log_create_time` (`CREATE_TIME`)
) ENGINE=MyISAM AUTO_INCREMENT=2562 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job_log`
--

LOCK TABLES `t_job_log` WRITE;
/*!40000 ALTER TABLE `t_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_log`
--

DROP TABLE IF EXISTS `t_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_log` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '操作方法',
  `PARAMS` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '方法参数',
  `IP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `t_log_create_time` (`CREATE_TIME`)
) ENGINE=MyISAM AUTO_INCREMENT=1143 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_log`
--

LOCK TABLES `t_log` WRITE;
/*!40000 ALTER TABLE `t_log` DISABLE KEYS */;
INSERT INTO `t_log` VALUES (1011,'MrBird','新增菜单/按钮',39,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=, perms=, icon=layui-icon-filedone, type=0, orderNum=null, createTime=Sun Jul 26 17:39:33 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-26 17:39:34','内网IP|0|0|内网IP|内网IP'),(1012,'MrBird','新增菜单/按钮',46,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=, perms=, icon=layui-icon-file-add, type=0, orderNum=null, createTime=Sun Jul 26 17:41:25 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-26 17:41:25','内网IP|0|0|内网IP|内网IP'),(1013,'MrBird','新增菜单/按钮',47,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=, perms=, icon=layui-icon-fileprotect, type=0, orderNum=null, createTime=Sun Jul 26 17:42:50 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-26 17:42:51','内网IP|0|0|内网IP|内网IP'),(1014,'MrBird','新增菜单/按钮',26,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=, perms=, icon=layui-icon-reconciliation, type=0, orderNum=null, createTime=Sun Jul 26 17:43:42 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-26 17:43:42','内网IP|0|0|内网IP|内网IP'),(1015,'MrBird','新增菜单/按钮',19,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=183, parentId=181, menuName=销售审批, url=null, perms=, icon=null, type=1, orderNum=null, createTime=Sun Jul 26 17:44:13 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-26 17:44:13','内网IP|0|0|内网IP|内网IP'),(1016,'MrBird','修改菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=183, parentId=181, menuName=销售审核, url=null, perms=, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Sun Jul 26 17:44:24 CST 2020)\"','192.168.137.1','2020-07-26 17:44:25','内网IP|0|0|内网IP|内网IP'),(1017,'MrBird','新增菜单/按钮',9,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=184, parentId=181, menuName=财务审核, url=null, perms=, icon=null, type=1, orderNum=null, createTime=Sun Jul 26 17:44:43 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-26 17:44:43','内网IP|0|0|内网IP|内网IP'),(1018,'MrBird','新增菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=185, parentId=181, menuName=交付审核, url=null, perms=, icon=null, type=1, orderNum=null, createTime=Sun Jul 26 17:45:04 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-26 17:45:04','内网IP|0|0|内网IP|内网IP'),(1019,'MrBird','修改角色',119,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Sun Jul 26 17:45:53 CST 2020, menuIds=179,180,181,183,184,185,182,1,3,13,11,12,160,161,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-26 17:45:53','内网IP|0|0|内网IP|内网IP'),(1020,'MrBird','修改菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=, perms=, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Sun Jul 26 17:46:25 CST 2020)\"','192.168.137.1','2020-07-26 17:46:25','内网IP|0|0|内网IP|内网IP'),(1021,'MrBird','修改菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=, perms=, icon=layui-icon-reconciliation, type=0, orderNum=2, createTime=null, modifyTime=Sun Jul 26 17:46:34 CST 2020)\"','192.168.137.1','2020-07-26 17:46:35','内网IP|0|0|内网IP|内网IP'),(1022,'MrBird','修改菜单/按钮',22,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=, perms=, icon=layui-icon-fileprotect, type=0, orderNum=3, createTime=null, modifyTime=Sun Jul 26 17:46:41 CST 2020)\"','192.168.137.1','2020-07-26 17:46:41','内网IP|0|0|内网IP|内网IP'),(1023,'MrBird','修改菜单/按钮',22,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=, perms=, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Sun Jul 26 17:46:50 CST 2020)\"','192.168.137.1','2020-07-26 17:46:51','内网IP|0|0|内网IP|内网IP'),(1024,'MrBird','修改菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=, perms=, icon=layui-icon-reconciliation, type=0, orderNum=3, createTime=null, modifyTime=Sun Jul 26 17:46:57 CST 2020)\"','192.168.137.1','2020-07-26 17:46:58','内网IP|0|0|内网IP|内网IP'),(1025,'MrBird','新增角色',27,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=81, roleName=销售人员, remark=车辆销售, createTime=Sun Jul 26 18:20:03 CST 2020, modifyTime=null, menuIds=180)\"','192.168.137.1','2020-07-26 18:20:04','内网IP|0|0|内网IP|内网IP'),(1026,'MrBird','新增用户',28,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=8, username=zhangsan, password=92dac726ea92d5bdd01eab9aef544c95, deptId=6, email=12345@asd.com, mobile=13911112222, status=1, createTime=Sun Jul 26 18:21:47 CST 2020, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=null)\"','192.168.137.1','2020-07-26 18:21:47','内网IP|0|0|内网IP|内网IP'),(1027,'MrBird','修改角色',36,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=81, roleName=销售人员, remark=车辆销售, createTime=null, modifyTime=Sun Jul 26 18:26:05 CST 2020, menuIds=179,180)\"','192.168.137.1','2020-07-26 18:26:05','内网IP|0|0|内网IP|内网IP'),(1028,'MrBird','修改菜单/按钮',16,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=, perms=user:view, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Sun Jul 26 18:43:26 CST 2020)\"','192.168.137.1','2020-07-26 18:43:26','内网IP|0|0|内网IP|内网IP'),(1029,'MrBird','修改菜单/按钮',10,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/user, perms=user:view, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Sun Jul 26 18:43:58 CST 2020)\"','192.168.137.1','2020-07-26 18:43:58','内网IP|0|0|内网IP|内网IP'),(1030,'MrBird','修改菜单/按钮',15,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/order, perms=user:view, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Sun Jul 26 18:52:30 CST 2020)\"','192.168.137.1','2020-07-26 18:52:30','内网IP|0|0|内网IP|内网IP'),(1031,'MrBird','修改菜单/按钮',12,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/order, perms=order:view, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Sun Jul 26 18:52:59 CST 2020)\"','192.168.137.1','2020-07-26 18:53:00','内网IP|0|0|内网IP|内网IP'),(1032,'MrBird','修改菜单/按钮',42,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/order, perms=order:create, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Sun Jul 26 19:44:01 CST 2020)\"','192.168.137.1','2020-07-26 19:44:02','内网IP|0|0|内网IP|内网IP'),(1033,'MrBird','修改菜单/按钮',22,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=, perms=order:approve, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Sun Jul 26 19:44:41 CST 2020)\"','192.168.137.1','2020-07-26 19:44:42','内网IP|0|0|内网IP|内网IP'),(1034,'MrBird','修改菜单/按钮',14,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=, perms=order:archive, icon=layui-icon-reconciliation, type=0, orderNum=3, createTime=null, modifyTime=Sun Jul 26 19:44:55 CST 2020)\"','192.168.137.1','2020-07-26 19:44:56','内网IP|0|0|内网IP|内网IP'),(1035,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/order, perms=order:view, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Sun Jul 26 19:53:42 CST 2020)\"','192.168.137.1','2020-07-26 19:53:42','内网IP|0|0|内网IP|内网IP'),(1036,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=, perms=order:view, icon=layui-icon-filedone, type=0, orderNum=null, createTime=null, modifyTime=Sun Jul 26 19:58:42 CST 2020)\"','192.168.137.1','2020-07-26 19:58:43','内网IP|0|0|内网IP|内网IP'),(1037,'MrBird','修改菜单/按钮',9,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/order, perms=order:create, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Sun Jul 26 19:59:11 CST 2020)\"','192.168.137.1','2020-07-26 19:59:12','内网IP|0|0|内网IP|内网IP'),(1038,'MrBird','新增订单',57,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=2, salesId=13, customerName=lisi, customerPhone=12345678912, vehicleId=11, price=202222, createTime=Mon Jul 27 14:31:09 CST 2020, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-27 14:31:09','内网IP|0|0|内网IP|内网IP'),(1039,'MrBird','新增订单',20,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=3, salesId=22, customerName=wangwu, customerPhone=12379845632, vehicleId=22, price=3333333, createTime=Mon Jul 27 14:34:05 CST 2020, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-27 14:34:06','内网IP|0|0|内网IP|内网IP'),(1040,'MrBird','新增订单',57,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=4, salesId=22, customerName=xxx, customerPhone=12345679811, vehicleId=22, price=200000, createTime=Mon Jul 27 14:46:48 CST 2020, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-27 14:46:49','内网IP|0|0|内网IP|内网IP'),(1041,'MrBird','新增订单',66,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=5, salesId=211, customerName=sss, customerPhone=12345678955, vehicleId=11, price=200000, createTime=Mon Jul 27 14:50:00 CST 2020, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-27 14:50:01','内网IP|0|0|内网IP|内网IP'),(1042,'MrBird','新增订单',36,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=6, salesId=22, customerName=qwer, customerPhone=12230000222, vehicleId=33, price=666666, createTime=Mon Jul 27 15:32:05 CST 2020, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-27 15:32:05','内网IP|0|0|内网IP|内网IP'),(1043,'MrBird','新增订单',31,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=7, salesId=null, customerName=, customerPhone=, vehicleId=null, price=null, createTime=Mon Jul 27 16:51:21 CST 2020, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-27 16:51:22','内网IP|0|0|内网IP|内网IP'),(1044,'MrBird','新增订单',58,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=8, salesId=15, customerName=aaaaa, customerPhone=15533336666, vehicleId=88, price=150000, createTime=Tue Jul 28 10:37:09 CST 2020, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 10:37:10','内网IP|0|0|内网IP|内网IP'),(1045,'MrBird','修改订单',56,'cc.mrbird.febs.system.controller.OrderController.updateUser()',' order: \"Order(orderId=1, salesId=11, customerName=zhangsan, customerPhone=15034659999, vehicleId=52, price=120000, createTime=null, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 12:53:15','内网IP|0|0|内网IP|内网IP'),(1046,'MrBird','修改菜单/按钮',40,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=/system/order, perms=order:approve, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Tue Jul 28 14:01:45 CST 2020)\"','192.168.137.1','2020-07-28 14:01:46','内网IP|0|0|内网IP|内网IP'),(1047,'MrBird','修改菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=/system/order, perms=order:archive, icon=layui-icon-reconciliation, type=0, orderNum=3, createTime=null, modifyTime=Tue Jul 28 14:01:51 CST 2020)\"','192.168.137.1','2020-07-28 14:01:51','内网IP|0|0|内网IP|内网IP'),(1048,'MrBird','新增订单',73,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=9, salesId=11, customerName=22, customerPhone=12300000000, vehicleId=11, price=200000, createTime=Tue Jul 28 14:15:45 CST 2020, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 14:15:45','内网IP|0|0|内网IP|内网IP'),(1049,'MrBird','修改订单',19,'cc.mrbird.febs.system.controller.OrderController.updateUser()',' order: \"Order(orderId=1, salesId=11, customerName=zhangsan, customerPhone=15034659998, vehicleId=52, price=120000, createTime=null, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 14:16:26','内网IP|0|0|内网IP|内网IP'),(1050,'MrBird','修改菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/order/create, perms=order:create, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Tue Jul 28 14:18:27 CST 2020)\"','192.168.137.1','2020-07-28 14:18:28','内网IP|0|0|内网IP|内网IP'),(1051,'MrBird','修改菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=/system/order/approve, perms=order:approve, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Tue Jul 28 14:18:53 CST 2020)\"','192.168.137.1','2020-07-28 14:18:54','内网IP|0|0|内网IP|内网IP'),(1052,'MrBird','修改菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=/system/order/archive, perms=order:archive, icon=layui-icon-reconciliation, type=0, orderNum=3, createTime=null, modifyTime=Tue Jul 28 14:19:03 CST 2020)\"','192.168.137.1','2020-07-28 14:19:03','内网IP|0|0|内网IP|内网IP'),(1053,'MrBird','修改菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=/system/order/, perms=order:view, icon=layui-icon-filedone, type=0, orderNum=null, createTime=null, modifyTime=Tue Jul 28 14:19:44 CST 2020)\"','192.168.137.1','2020-07-28 14:19:45','内网IP|0|0|内网IP|内网IP'),(1054,'MrBird','审批订单',90,'cc.mrbird.febs.system.controller.OrderController.approveOrder()',' orderIds: \"7\"','192.168.137.1','2020-07-28 14:34:22','内网IP|0|0|内网IP|内网IP'),(1055,'MrBird','新增角色',27,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=82, roleName=销售经理, remark=负责管理销售人员及订单审批, createTime=Tue Jul 28 14:41:50 CST 2020, modifyTime=null, menuIds=179,180,181,183)\"','192.168.137.1','2020-07-28 14:41:51','内网IP|0|0|内网IP|内网IP'),(1056,'MrBird','修改角色',33,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=82, roleName=销售经理, remark=负责管理销售人员及订单审批, createTime=null, modifyTime=Tue Jul 28 14:42:04 CST 2020, menuIds=179,180,181,183,182)\"','192.168.137.1','2020-07-28 14:42:05','内网IP|0|0|内网IP|内网IP'),(1057,'MrBird','新增角色',27,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=83, roleName=财务会计, remark=负责审核账单及订单校对, createTime=Tue Jul 28 14:42:58 CST 2020, modifyTime=null, menuIds=179,181,184)\"','192.168.137.1','2020-07-28 14:42:59','内网IP|0|0|内网IP|内网IP'),(1058,'MrBird','修改角色',27,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=81, roleName=销售人员, remark=车辆销售, createTime=null, modifyTime=Tue Jul 28 14:43:06 CST 2020, menuIds=179,180,182)\"','192.168.137.1','2020-07-28 14:43:07','内网IP|0|0|内网IP|内网IP'),(1059,'MrBird','修改角色',24,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=81, roleName=销售人员, remark=车辆销售, createTime=null, modifyTime=Tue Jul 28 14:43:32 CST 2020, menuIds=179,180,185)\"','192.168.137.1','2020-07-28 14:43:33','内网IP|0|0|内网IP|内网IP'),(1060,'MrBird','修改菜单/按钮',36,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=/system/order/approve, perms=order:approve:manager, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Tue Jul 28 16:17:49 CST 2020)\"','192.168.137.1','2020-07-28 16:17:49','内网IP|0|0|内网IP|内网IP'),(1061,'MrBird','修改菜单/按钮',12,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=185, parentId=181, menuName=交付审核, url=null, perms=order:approve:sales, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Tue Jul 28 16:19:09 CST 2020)\"','192.168.137.1','2020-07-28 16:19:10','内网IP|0|0|内网IP|内网IP'),(1062,'MrBird','修改菜单/按钮',10,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=184, parentId=181, menuName=财务审核, url=null, perms=order:approve:accounting, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Tue Jul 28 16:19:20 CST 2020)\"','192.168.137.1','2020-07-28 16:19:21','内网IP|0|0|内网IP|内网IP'),(1063,'MrBird','修改菜单/按钮',24,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=183, parentId=181, menuName=销售审核, url=null, perms=order:approve:manager, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Tue Jul 28 16:19:25 CST 2020)\"','192.168.137.1','2020-07-28 16:19:26','内网IP|0|0|内网IP|内网IP'),(1064,'MrBird','修改菜单/按钮',10,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=183, parentId=181, menuName=经理审核, url=null, perms=order:approve:manager, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Tue Jul 28 16:19:34 CST 2020)\"','192.168.137.1','2020-07-28 16:19:35','内网IP|0|0|内网IP|内网IP'),(1065,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=185, parentId=181, menuName=销售审核, url=null, perms=order:approve:sales, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Tue Jul 28 16:19:46 CST 2020)\"','192.168.137.1','2020-07-28 16:19:46','内网IP|0|0|内网IP|内网IP'),(1066,'MrBird','修改菜单/按钮',19,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=/system/order/approve, perms=order:approve, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Tue Jul 28 16:20:00 CST 2020)\"','192.168.137.1','2020-07-28 16:20:00','内网IP|0|0|内网IP|内网IP'),(1067,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=/system/order/approve, perms=, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Tue Jul 28 16:20:27 CST 2020)\"','192.168.137.1','2020-07-28 16:20:27','内网IP|0|0|内网IP|内网IP'),(1068,'MrBird','修改菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=/system/order/approve, perms=order:approve:manager, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Tue Jul 28 16:21:02 CST 2020)\"','192.168.137.1','2020-07-28 16:21:03','内网IP|0|0|内网IP|内网IP'),(1069,'MrBird','修改菜单/按钮',15,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=/system/order/approve, perms=order:approve, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Tue Jul 28 16:21:11 CST 2020)\"','192.168.137.1','2020-07-28 16:21:11','内网IP|0|0|内网IP|内网IP'),(1070,'MrBird','审批订单',43,'cc.mrbird.febs.system.controller.OrderController.managerApproveOrder()',' orderIds: \"8\"','192.168.137.1','2020-07-28 16:28:20','内网IP|0|0|内网IP|内网IP'),(1071,'MrBird','审批订单',10,'cc.mrbird.febs.system.controller.OrderController.managerApproveOrder()',' orderIds: \"8\"','192.168.137.1','2020-07-28 16:28:44','内网IP|0|0|内网IP|内网IP'),(1072,'MrBird','审批订单',99,'cc.mrbird.febs.system.controller.OrderController.managerApproveOrder()',' orderIds: \"8\"','192.168.137.1','2020-07-28 16:33:15','内网IP|0|0|内网IP|内网IP'),(1073,'MrBird','审批订单',28,'cc.mrbird.febs.system.controller.OrderController.accountingApproveOrder()',' orderIds: \"8\"','192.168.137.1','2020-07-28 16:33:19','内网IP|0|0|内网IP|内网IP'),(1074,'MrBird','审批订单',25,'cc.mrbird.febs.system.controller.OrderController.salesApproveOrder()',' orderIds: \"8\"','192.168.137.1','2020-07-28 16:33:24','内网IP|0|0|内网IP|内网IP'),(1075,'MrBird','修改角色',47,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=83, roleName=财务会计, remark=负责审核账单及订单校对, createTime=null, modifyTime=Tue Jul 28 16:38:56 CST 2020, menuIds=179,181,184)\"','192.168.137.1','2020-07-28 16:38:57','内网IP|0|0|内网IP|内网IP'),(1076,'MrBird','修改角色',40,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=83, roleName=财务会计, remark=负责审核账单及付款校对, createTime=null, modifyTime=Tue Jul 28 16:39:20 CST 2020, menuIds=179,181,184)\"','192.168.137.1','2020-07-28 16:39:20','内网IP|0|0|内网IP|内网IP'),(1077,'MrBird','归档订单',97,'cc.mrbird.febs.system.controller.OrderController.archiveOrder()',' orderIds: \"8\"','192.168.137.1','2020-07-28 19:02:50','内网IP|0|0|内网IP|内网IP'),(1078,'MrBird','归档订单',25,'cc.mrbird.febs.system.controller.OrderController.archiveOrder()',' orderIds: \"4\"','192.168.137.1','2020-07-28 19:03:02','内网IP|0|0|内网IP|内网IP'),(1079,'MrBird','归档订单',24,'cc.mrbird.febs.system.controller.OrderController.archiveOrder()',' orderIds: \"1\"','192.168.137.1','2020-07-28 19:03:18','内网IP|0|0|内网IP|内网IP'),(1080,'MrBird','新增订单',31,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=10, salesId=15, customerName=oppo, customerPhone=15233002255, vehicleId=11, price=200000, createTime=Tue Jul 28 19:19:26 CST 2020, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 19:19:27','内网IP|0|0|内网IP|内网IP'),(1081,'MrBird','经理审批订单',23,'cc.mrbird.febs.system.controller.OrderController.managerApproveOrder()',' orderIds: \"10\"','192.168.137.1','2020-07-28 19:19:49','内网IP|0|0|内网IP|内网IP'),(1082,'MrBird','财务审批订单',24,'cc.mrbird.febs.system.controller.OrderController.accountingApproveOrder()',' orderIds: \"10\"','192.168.137.1','2020-07-28 19:20:08','内网IP|0|0|内网IP|内网IP'),(1083,'MrBird','销售审批订单',15,'cc.mrbird.febs.system.controller.OrderController.salesApproveOrder()',' orderIds: \"10\"','192.168.137.1','2020-07-28 19:20:20','内网IP|0|0|内网IP|内网IP'),(1084,'MrBird','归档订单',25,'cc.mrbird.febs.system.controller.OrderController.archiveOrder()',' orderIds: \"10\"','192.168.137.1','2020-07-28 19:20:25','内网IP|0|0|内网IP|内网IP'),(1085,'MrBird','修改订单',15,'cc.mrbird.febs.system.controller.OrderController.updateUser()',' order: \"Order(orderId=1, salesId=12, customerName=zhangsan, customerPhone=15034659998, vehicleId=52, price=120000, createTime=null, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 20:13:58','内网IP|0|0|内网IP|内网IP'),(1086,'MrBird','新增订单',48,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=11, salesId=123, customerName=aann, customerPhone=, vehicleId=11, price=20000, createTime=Tue Jul 28 20:22:24 CST 2020, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 20:22:25','内网IP|0|0|内网IP|内网IP'),(1087,'MrBird','新增订单',19,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=12, salesId=null, customerName=, customerPhone=, vehicleId=null, price=null, createTime=Tue Jul 28 20:24:38 CST 2020, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 20:24:39','内网IP|0|0|内网IP|内网IP'),(1088,'MrBird','新增订单',16,'cc.mrbird.febs.system.controller.OrderController.createOrder()',' order: \"Order(orderId=13, salesId=null, customerName=, customerPhone=, vehicleId=null, price=null, createTime=Tue Jul 28 20:25:01 CST 2020, status=待审核, createTimeFrom=null, createTimeTo=null)\"','192.168.137.1','2020-07-28 20:25:02','内网IP|0|0|内网IP|内网IP'),(1089,'MrBird','新增菜单/按钮',22,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=186, parentId=0, menuName=车辆管理, url=, perms=, icon=layui-icon-car, type=0, orderNum=null, createTime=Tue Jul 28 21:46:09 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-28 21:46:09','内网IP|0|0|内网IP|内网IP'),(1090,'MrBird','修改菜单/按钮',24,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=186, parentId=0, menuName=车辆管理, url=system/vehicle, perms=, icon=layui-icon-car, type=0, orderNum=null, createTime=null, modifyTime=Tue Jul 28 21:46:35 CST 2020)\"','192.168.137.1','2020-07-28 21:46:36','内网IP|0|0|内网IP|内网IP'),(1091,'MrBird','修改菜单/按钮',12,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=186, parentId=0, menuName=车辆管理, url=system/vehicle/, perms=, icon=layui-icon-car, type=0, orderNum=null, createTime=null, modifyTime=Tue Jul 28 21:46:42 CST 2020)\"','192.168.137.1','2020-07-28 21:46:42','内网IP|0|0|内网IP|内网IP'),(1092,'MrBird','修改角色',98,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Tue Jul 28 22:01:17 CST 2020, menuIds=179,180,181,183,184,185,182,186,1,3,13,160,161,11,12,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-28 22:01:17','内网IP|0|0|内网IP|内网IP'),(1093,'MrBird','新增菜单/按钮',23,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=187, parentId=0, menuName=新增车辆, url=system/vehicle/create, perms=vehicle:create, icon=, type=0, orderNum=null, createTime=Tue Jul 28 22:42:20 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-28 22:42:20','内网IP|0|0|内网IP|内网IP'),(1094,'MrBird','新增菜单/按钮',11,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=188, parentId=0, menuName=保养车辆, url=system/vehicle/maintenance, perms=vehicle:maintenance, icon=, type=0, orderNum=null, createTime=Tue Jul 28 22:43:26 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-28 22:43:26','内网IP|0|0|内网IP|内网IP'),(1095,'MrBird','修改角色',49,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Tue Jul 28 22:45:34 CST 2020, menuIds=179,180,181,183,184,185,182,186,187,188,1,3,13,161,11,12,160,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-28 22:45:35','内网IP|0|0|内网IP|内网IP'),(1096,'MrBird','修改菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=186, parentId=0, menuName=车辆管理, url=system/vehicle/, perms=vehicle:view, icon=layui-icon-car, type=0, orderNum=null, createTime=null, modifyTime=Tue Jul 28 22:48:24 CST 2020)\"','192.168.137.1','2020-07-28 22:48:25','内网IP|0|0|内网IP|内网IP'),(1097,'MrBird','修改菜单/按钮',26,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=186, parentId=0, menuName=车辆管理, url=/system/vehicle/, perms=vehicle:view, icon=layui-icon-car, type=0, orderNum=null, createTime=null, modifyTime=Tue Jul 28 23:08:41 CST 2020)\"','192.168.137.1','2020-07-28 23:08:42','内网IP|0|0|内网IP|内网IP'),(1098,'MrBird','修改菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=187, parentId=186, menuName=新增车辆, url=/system/vehicle/create, perms=vehicle:create, icon=, type=0, orderNum=null, createTime=null, modifyTime=Tue Jul 28 23:10:03 CST 2020)\"','192.168.137.1','2020-07-28 23:10:04','内网IP|0|0|内网IP|内网IP'),(1099,'MrBird','修改菜单/按钮',10,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=188, parentId=186, menuName=保养车辆, url=/system/vehicle/maintenance, perms=vehicle:maintenance, icon=, type=0, orderNum=null, createTime=null, modifyTime=Tue Jul 28 23:10:08 CST 2020)\"','192.168.137.1','2020-07-28 23:10:08','内网IP|0|0|内网IP|内网IP'),(1100,'MrBird','新增用户',50,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=9, username=beiyan, password=67c721ec501e9ae880dc517f9c74e9e2, deptId=2, email=beiyan@qq.com, mobile=15034654506, status=1, createTime=Wed Jul 29 09:42:39 CST 2020, modifyTime=null, lastLoginTime=null, sex=2, avatar=default.jpg, theme=black, isTab=1, description=测试管理员账号, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=1, roleName=null, deptIds=null)\"','192.168.137.1','2020-07-29 09:42:39','内网IP|0|0|内网IP|内网IP'),(1101,'MrBird','新增车辆',55,'cc.mrbird.febs.system.controller.VehicleController.createVehicle()',' vehicle: \"Vehicle(vehicleId=1, type=suv, color=白色, deadWeight=1500, manufactureDate=Wed Jul 29 11:29:27 CST 2020, lowestPrice=200000, status=0, maintenanceTimes=10, manufactureDateFrom=null, manufactureDateTo=null)\"','192.168.137.1','2020-07-29 11:29:28','内网IP|0|0|内网IP|内网IP'),(1102,'MrBird','删除菜单/按钮',47,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"185\"','192.168.137.1','2020-07-29 13:09:25','内网IP|0|0|内网IP|内网IP'),(1103,'MrBird','删除菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"184\"','192.168.137.1','2020-07-29 13:09:31','内网IP|0|0|内网IP|内网IP'),(1104,'MrBird','删除菜单/按钮',29,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"183\"','192.168.137.1','2020-07-29 13:09:38','内网IP|0|0|内网IP|内网IP'),(1105,'MrBird','修改菜单/按钮',23,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=公司管理, url=/system/order/, perms=order:view, icon=layui-icon-filedone, type=0, orderNum=null, createTime=null, modifyTime=Wed Jul 29 13:10:39 CST 2020)\"','192.168.137.1','2020-07-29 13:10:40','内网IP|0|0|内网IP|内网IP'),(1106,'MrBird','修改菜单/按钮',22,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=订单管理, url=/system/order/, perms=order:view, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Wed Jul 29 13:13:07 CST 2020)\"','192.168.137.1','2020-07-29 13:13:07','内网IP|0|0|内网IP|内网IP'),(1107,'MrBird','修改菜单/按钮',10,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=公司管理, url=, perms=, icon=layui-icon-home, type=0, orderNum=null, createTime=null, modifyTime=Wed Jul 29 13:15:27 CST 2020)\"','192.168.137.1','2020-07-29 13:15:28','内网IP|0|0|内网IP|内网IP'),(1108,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=订单管理, url=/system/order/, perms=order:view, icon=layui-icon-filedone, type=0, orderNum=1, createTime=null, modifyTime=Wed Jul 29 13:16:23 CST 2020)\"','192.168.137.1','2020-07-29 13:16:23','内网IP|0|0|内网IP|内网IP'),(1109,'MrBird','修改角色',69,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Jul 29 13:18:02 CST 2020, menuIds=179,186,187,188,180,181,182,1,3,13,160,161,11,12,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,173,103,104,105,106,107,108,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-29 13:18:02','内网IP|0|0|内网IP|内网IP'),(1110,'MrBird','新增菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=189, parentId=0, menuName=经理审批, url=null, perms=order:approve:manager, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 13:23:53 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 13:23:53','内网IP|0|0|内网IP|内网IP'),(1111,'MrBird','修改角色',65,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Jul 29 13:24:58 CST 2020, menuIds=179,186,187,188,180,181,189,182,1,3,13,160,161,11,12,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-29 13:24:59','内网IP|0|0|内网IP|内网IP'),(1112,'MrBird','修改菜单/按钮',10,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=189, parentId=181, menuName=审批, url=null, perms=order:approve:manager, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Jul 29 13:39:38 CST 2020)\"','192.168.137.1','2020-07-29 13:39:39','内网IP|0|0|内网IP|内网IP'),(1113,'MrBird','修改菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=189, parentId=180, menuName=经理审批, url=null, perms=order:approve:manager, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Jul 29 13:40:52 CST 2020)\"','192.168.137.1','2020-07-29 13:40:53','内网IP|0|0|内网IP|内网IP'),(1114,'MrBird','新增菜单/按钮',8,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=190, parentId=180, menuName=新增订单, url=null, perms=order:create, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 13:41:29 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 13:41:29','内网IP|0|0|内网IP|内网IP'),(1115,'MrBird','新增菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=191, parentId=180, menuName=财务审批, url=null, perms=order:approve:accounting, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 13:42:37 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 13:42:37','内网IP|0|0|内网IP|内网IP'),(1116,'MrBird','新增菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=192, parentId=180, menuName=交付审批, url=null, perms=order:approve:sales, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 13:43:27 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 13:43:27','内网IP|0|0|内网IP|内网IP'),(1117,'MrBird','修改角色',47,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Jul 29 13:43:49 CST 2020, menuIds=179,186,187,188,180,189,190,191,192,181,182,1,3,13,161,11,12,160,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-29 13:43:50','内网IP|0|0|内网IP|内网IP'),(1118,'MrBird','修改菜单/按钮',16,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=187, parentId=186, menuName=新增车辆, url=/system/vehicle/create, perms=vehicle:create, icon=, type=0, orderNum=1, createTime=null, modifyTime=Wed Jul 29 13:45:50 CST 2020)\"','192.168.137.1','2020-07-29 13:45:50','内网IP|0|0|内网IP|内网IP'),(1119,'MrBird','修改菜单/按钮',9,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=188, parentId=186, menuName=保养车辆, url=/system/vehicle/maintenance, perms=vehicle:maintenance, icon=, type=0, orderNum=3, createTime=null, modifyTime=Wed Jul 29 13:45:58 CST 2020)\"','192.168.137.1','2020-07-29 13:45:59','内网IP|0|0|内网IP|内网IP'),(1120,'MrBird','新增菜单/按钮',6,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=193, parentId=186, menuName=出售车辆, url=, perms=vehicle:sale, icon=, type=0, orderNum=2, createTime=Wed Jul 29 13:46:34 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 13:46:35','内网IP|0|0|内网IP|内网IP'),(1121,'MrBird','删除菜单/按钮',24,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"187\"','192.168.137.1','2020-07-29 13:49:06','内网IP|0|0|内网IP|内网IP'),(1122,'MrBird','新增菜单/按钮',6,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=194, parentId=186, menuName=新增车辆, url=null, perms=vehicle:create, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 13:49:27 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 13:49:28','内网IP|0|0|内网IP|内网IP'),(1123,'MrBird','修改角色',54,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Jul 29 13:49:50 CST 2020, menuIds=179,186,187,188,180,189,190,191,192,181,182,1,3,13,161,11,12,160,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-29 13:49:50','内网IP|0|0|内网IP|内网IP'),(1124,'MrBird','修改角色',47,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Jul 29 13:50:13 CST 2020, menuIds=179,186,194,193,188,180,189,190,191,192,181,182,1,3,13,160,161,11,12,4,162,14,15,16,5,163,17,18,19,6,164,20,21,22,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-29 13:50:13','内网IP|0|0|内网IP|内网IP'),(1125,'MrBird','新增菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=195, parentId=180, menuName=修改订单, url=null, perms=order:update, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 13:57:58 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 13:57:59','内网IP|0|0|内网IP|内网IP'),(1126,'MrBird','修改菜单/按钮',15,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=195, parentId=180, menuName=修改订单, url=null, perms=order:approve, icon=null, type=1, orderNum=null, createTime=null, modifyTime=Wed Jul 29 13:58:43 CST 2020)\"','192.168.137.1','2020-07-29 13:58:43','内网IP|0|0|内网IP|内网IP'),(1127,'MrBird','删除菜单/按钮',46,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"179,195\"','192.168.137.1','2020-07-29 13:59:36','内网IP|0|0|内网IP|内网IP'),(1128,'MrBird','新增菜单/按钮',9,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=196, parentId=0, menuName=公司管理, url=, perms=, icon=layui-icon-home, type=0, orderNum=null, createTime=Wed Jul 29 14:01:31 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:01:32','内网IP|0|0|内网IP|内网IP'),(1129,'MrBird','新增菜单/按钮',15,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=197, parentId=196, menuName=订单管理, url=/system/order/, perms=order:view, icon=layui-icon-filedone, type=0, orderNum=1, createTime=Wed Jul 29 14:02:14 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:02:14','内网IP|0|0|内网IP|内网IP'),(1130,'MrBird','新增菜单/按钮',7,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=198, parentId=197, menuName=新增订单, url=null, perms=order:create, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 14:02:35 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:02:35','内网IP|0|0|内网IP|内网IP'),(1131,'MrBird','新增菜单/按钮',13,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=199, parentId=197, menuName=经理审批, url=null, perms=order:approve:manager, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 14:04:16 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:04:17','内网IP|0|0|内网IP|内网IP'),(1132,'MrBird','新增菜单/按钮',21,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=200, parentId=197, menuName=财务审批, url=null, perms=order:approve:accounting, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 14:04:43 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:04:43','内网IP|0|0|内网IP|内网IP'),(1133,'MrBird','新增菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=201, parentId=197, menuName=交付审批, url=null, perms=order:approve:sales, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 14:05:10 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:05:10','内网IP|0|0|内网IP|内网IP'),(1134,'MrBird','新增菜单/按钮',16,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=202, parentId=197, menuName=归档订单, url=null, perms=order:archive, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 14:05:41 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:05:41','内网IP|0|0|内网IP|内网IP'),(1135,'MrBird','新增菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=203, parentId=197, menuName=审批订单, url=/system/order/approve, perms=order:approve, icon=, type=0, orderNum=null, createTime=Wed Jul 29 14:06:47 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:06:48','内网IP|0|0|内网IP|内网IP'),(1136,'MrBird','新增菜单/按钮',8,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=204, parentId=197, menuName=归档订单, url=/system/order/archive, perms=order:archive, icon=, type=0, orderNum=null, createTime=Wed Jul 29 14:07:38 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:07:38','内网IP|0|0|内网IP|内网IP'),(1137,'MrBird','删除菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.deleteMenus()',' menuIds: \"202\"','192.168.137.1','2020-07-29 14:07:53','内网IP|0|0|内网IP|内网IP'),(1138,'MrBird','新增菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=205, parentId=196, menuName=车辆管理, url=/system/vehicle, perms=vehicle:view, icon=layui-icon-car, type=0, orderNum=2, createTime=Wed Jul 29 14:09:46 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:09:46','内网IP|0|0|内网IP|内网IP'),(1139,'MrBird','新增菜单/按钮',16,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=206, parentId=205, menuName=新增车辆, url=null, perms=vehicle:create, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 14:10:49 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:10:49','内网IP|0|0|内网IP|内网IP'),(1140,'MrBird','新增菜单/按钮',16,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=207, parentId=205, menuName=出售车辆, url=null, perms=vehicle:sale, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 14:11:20 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:11:20','内网IP|0|0|内网IP|内网IP'),(1141,'MrBird','新增菜单/按钮',16,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=208, parentId=205, menuName=保养车辆, url=null, perms=vehicle:maintenance, icon=null, type=1, orderNum=null, createTime=Wed Jul 29 14:12:54 CST 2020, modifyTime=null)\"','192.168.137.1','2020-07-29 14:12:54','内网IP|0|0|内网IP|内网IP'),(1142,'MrBird','修改角色',49,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Wed Jul 29 14:13:24 CST 2020, menuIds=196,197,198,199,200,201,203,204,205,206,207,208,1,3,13,11,12,160,161,4,14,15,16,162,5,163,17,18,19,6,164,20,21,22,2,8,23,10,170,24,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','192.168.137.1','2020-07-29 14:13:24','内网IP|0|0|内网IP|内网IP');
/*!40000 ALTER TABLE `t_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_login_log`
--

DROP TABLE IF EXISTS `t_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_login_log` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `t_login_log_login_time` (`LOGIN_TIME`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登录日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_login_log`
--

LOCK TABLES `t_login_log` WRITE;
/*!40000 ALTER TABLE `t_login_log` DISABLE KEYS */;
INSERT INTO `t_login_log` VALUES (70,'mrbird','2020-07-21 15:33:05','内网IP|0|0|内网IP|内网IP','192.168.160.1','Windows 10','Chrome 83'),(71,'mrbird','2020-07-21 15:45:15','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 83'),(72,'mrbird','2020-07-21 15:53:37','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 83'),(73,'mrbird','2020-07-26 17:25:35','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(74,'zhangsan','2020-07-26 18:25:28','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(75,'mrbird','2020-07-26 18:25:49','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(76,'zhangsan','2020-07-26 18:26:20','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(77,'mrbird','2020-07-26 18:27:43','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(78,'mrbird','2020-07-27 11:51:34','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(79,'mrbird','2020-07-27 14:17:14','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(80,'mrbird','2020-07-27 22:11:19','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(81,'mrbird','2020-07-28 09:08:05','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(82,'mrbird','2020-07-28 14:01:08','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(83,'mrbird','2020-07-28 14:22:32','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(84,'zhangsan','2020-07-28 16:15:17','内网IP|0|0|内网IP|内网IP','127.0.0.1','Windows 10','Chrome 83'),(85,'mrbird','2020-07-28 18:36:43','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(86,'mrbird','2020-07-28 19:18:17','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(87,'mrbird','2020-07-28 19:18:52','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 83'),(88,'mrbird','2020-07-28 21:44:54','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 84'),(89,'mrbird','2020-07-29 09:40:03','内网IP|0|0|内网IP|内网IP','192.168.137.1','Windows 10','Chrome 84'),(90,'beiyan','2020-07-29 09:46:13','中国|华北|山西省|晋中市|联通','60.223.188.27','Linux','Chrome 77'),(91,'beiyan','2020-07-29 09:59:44','中国|华东|浙江省|杭州市|移动','117.148.171.72','Linux','Chrome 77'),(92,'beiyan','2020-07-29 10:01:09','内网IP|0|0|内网IP|内网IP','183.236.67.139, 14.116.144.205','Linux','Chrome 57'),(93,'beiyan','2020-07-29 10:03:49','中国|华北|山西省|晋中市|联通','60.223.132.110','Linux','Chrome 78');
/*!40000 ALTER TABLE `t_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE,
  KEY `t_menu_parent_id` (`PARENT_ID`),
  KEY `t_menu_menu_id` (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,0,'系统管理',NULL,NULL,'layui-icon-setting','0',1,'2017-12-27 16:39:07',NULL),(2,0,'系统监控','','','layui-icon-alert','0',2,'2017-12-27 16:45:51','2019-06-13 11:20:40'),(3,1,'用户管理','/system/user','user:view','','0',1,'2017-12-27 16:47:13','2019-12-04 16:46:50'),(4,1,'角色管理','/system/role','role:view','','0',2,'2017-12-27 16:48:09','2019-06-13 08:57:19'),(5,1,'菜单管理','/system/menu','menu:view','','0',3,'2017-12-27 16:48:57','2019-06-13 08:57:34'),(6,1,'部门管理','/system/dept','dept:view','','0',4,'2017-12-27 16:57:33','2019-06-14 19:56:00'),(8,2,'在线用户','/monitor/online','online:view','','0',1,'2017-12-27 16:59:33','2019-06-13 14:30:31'),(10,2,'系统日志','/monitor/log','log:view','','0',2,'2017-12-27 17:00:50','2019-06-13 14:30:37'),(11,3,'新增用户',NULL,'user:add',NULL,'1',NULL,'2017-12-27 17:02:58',NULL),(12,3,'修改用户',NULL,'user:update',NULL,'1',NULL,'2017-12-27 17:04:07',NULL),(13,3,'删除用户',NULL,'user:delete',NULL,'1',NULL,'2017-12-27 17:04:58',NULL),(14,4,'新增角色',NULL,'role:add',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),(15,4,'修改角色',NULL,'role:update',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),(16,4,'删除角色',NULL,'role:delete',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),(17,5,'新增菜单',NULL,'menu:add',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),(18,5,'修改菜单',NULL,'menu:update',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),(19,5,'删除菜单',NULL,'menu:delete',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),(20,6,'新增部门',NULL,'dept:add',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),(21,6,'修改部门',NULL,'dept:update',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),(22,6,'删除部门',NULL,'dept:delete',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),(23,8,'踢出用户',NULL,'user:kickout',NULL,'1',NULL,'2017-12-27 17:11:13',NULL),(24,10,'删除日志',NULL,'log:delete',NULL,'1',NULL,'2017-12-27 17:11:45','2019-06-06 05:56:40'),(101,0,'任务调度',NULL,NULL,'layui-icon-time-circle','0',3,'2018-02-24 15:52:57',NULL),(102,101,'定时任务','/job/job','job:view','','0',1,'2018-02-24 15:53:53','2018-04-25 09:05:12'),(103,102,'新增任务',NULL,'job:add',NULL,'1',NULL,'2018-02-24 15:55:10',NULL),(104,102,'修改任务',NULL,'job:update',NULL,'1',NULL,'2018-02-24 15:55:53',NULL),(105,102,'删除任务',NULL,'job:delete',NULL,'1',NULL,'2018-02-24 15:56:18',NULL),(106,102,'暂停任务',NULL,'job:pause',NULL,'1',NULL,'2018-02-24 15:57:08',NULL),(107,102,'恢复任务',NULL,'job:resume',NULL,'1',NULL,'2018-02-24 15:58:21',NULL),(108,102,'立即执行任务',NULL,'job:run',NULL,'1',NULL,'2018-02-24 15:59:45',NULL),(109,101,'调度日志','/job/log','job:log:view','','0',2,'2018-02-24 16:00:45','2019-06-09 02:48:19'),(110,109,'删除日志',NULL,'job:log:delete',NULL,'1',NULL,'2018-02-24 16:01:21',NULL),(115,0,'其他模块',NULL,NULL,'layui-icon-gift','0',5,'2019-05-27 10:18:07',NULL),(116,115,'Apex图表','','',NULL,'0',2,'2019-05-27 10:21:35',NULL),(117,116,'线性图表','/others/apex/line','apex:line:view',NULL,'0',1,'2019-05-27 10:24:49',NULL),(118,115,'高德地图','/others/map','map:view','','0',3,'2019-05-27 17:13:12','2019-06-12 15:33:00'),(119,116,'面积图表','/others/apex/area','apex:area:view',NULL,'0',2,'2019-05-27 18:49:22',NULL),(120,116,'柱形图表','/others/apex/column','apex:column:view',NULL,'0',3,'2019-05-27 18:51:33',NULL),(121,116,'雷达图表','/others/apex/radar','apex:radar:view',NULL,'0',4,'2019-05-27 18:56:05',NULL),(122,116,'条形图表','/others/apex/bar','apex:bar:view',NULL,'0',5,'2019-05-27 18:57:02',NULL),(123,116,'混合图表','/others/apex/mix','apex:mix:view','','0',6,'2019-05-27 18:58:04','2019-06-06 02:55:23'),(125,115,'导入导出','/others/eximport','others:eximport:view','','0',4,'2019-05-27 19:01:57','2019-06-13 01:20:14'),(126,132,'系统图标','/others/febs/icon','febs:icons:view','','0',4,'2019-05-27 19:03:18','2019-06-06 03:05:26'),(127,2,'请求追踪','/monitor/httptrace','httptrace:view','','0',6,'2019-05-27 19:06:38','2019-06-13 14:36:43'),(128,2,'系统信息',NULL,NULL,NULL,'0',7,'2019-05-27 19:08:23',NULL),(129,128,'JVM信息','/monitor/jvm','jvm:view','','0',1,'2019-05-27 19:08:50','2019-06-13 14:36:51'),(131,128,'服务器信息','/monitor/server','server:view','','0',3,'2019-05-27 19:10:07','2019-06-13 14:37:04'),(132,115,'FEBS组件','','',NULL,'0',1,'2019-05-27 19:13:54',NULL),(133,132,'表单组件','/others/febs/form','febs:form:view',NULL,'0',1,'2019-05-27 19:14:45',NULL),(134,132,'FEBS工具','/others/febs/tools','febs:tools:view','','0',3,'2019-05-29 10:11:22','2019-06-12 13:21:27'),(135,132,'表单组合','/others/febs/form/group','febs:formgroup:view',NULL,'0',2,'2019-05-29 10:16:19',NULL),(136,2,'登录日志','/monitor/loginlog','loginlog:view','','0',3,'2019-05-29 15:56:15','2019-06-13 14:35:56'),(137,0,'代码生成','',NULL,'layui-icon-verticalright','0',4,'2019-06-03 15:35:58',NULL),(138,137,'生成配置','/generator/configure','generator:configure:view',NULL,'0',1,'2019-06-03 15:38:36',NULL),(139,137,'代码生成','/generator/generator','generator:view','','0',2,'2019-06-03 15:39:15','2019-06-13 14:31:38'),(159,132,'其他组件','/others/febs/others','others:febs:others','','0',5,'2019-06-12 07:51:08','2019-06-12 07:51:40'),(160,3,'密码重置',NULL,'user:password:reset',NULL,'1',NULL,'2019-06-13 08:40:13',NULL),(161,3,'导出Excel',NULL,'user:export',NULL,'1',NULL,'2019-06-13 08:40:34',NULL),(162,4,'导出Excel',NULL,'role:export',NULL,'1',NULL,'2019-06-13 14:29:00','2019-06-13 14:29:11'),(163,5,'导出Excel',NULL,'menu:export',NULL,'1',NULL,'2019-06-13 14:29:32',NULL),(164,6,'导出Excel',NULL,'dept:export',NULL,'1',NULL,'2019-06-13 14:29:59',NULL),(165,138,'修改配置',NULL,'generator:configure:update',NULL,'1',NULL,'2019-06-13 14:32:09','2019-06-13 14:32:20'),(166,139,'生成代码',NULL,'generator:generate',NULL,'1',NULL,'2019-06-13 14:32:51',NULL),(167,125,'模板下载',NULL,'eximport:template',NULL,'1',NULL,'2019-06-13 14:33:37',NULL),(168,125,'导出Excel',NULL,'eximport:export',NULL,'1',NULL,'2019-06-13 14:33:57',NULL),(169,125,'导入Excel',NULL,'eximport:import',NULL,'1',NULL,'2019-06-13 14:34:19',NULL),(170,10,'导出Excel',NULL,'log:export',NULL,'1',NULL,'2019-06-13 14:34:55',NULL),(171,136,'删除日志',NULL,'loginlog:delete',NULL,'1',NULL,'2019-06-13 14:35:27','2019-06-13 14:36:08'),(172,136,'导出Excel',NULL,'loginlog:export',NULL,'1',NULL,'2019-06-13 14:36:26',NULL),(173,102,'导出Excel',NULL,'job:export',NULL,'1',NULL,'2019-06-13 14:37:25',NULL),(174,109,'导出Excel',NULL,'job:log:export',NULL,'1',NULL,'2019-06-13 14:37:46','2019-06-13 14:38:02'),(175,2,'Swagger文档','/monitor/swagger','swagger:view','','0',8,'2019-08-18 17:25:36','2019-08-18 17:25:59'),(178,115,'数据权限','/others/datapermission','others:datapermission','','0',5,'2020-04-29 09:34:25',NULL),(196,0,'公司管理','','','layui-icon-home','0',NULL,'2020-07-29 14:01:32',NULL),(197,196,'订单管理','/system/order/','order:view','layui-icon-filedone','0',1,'2020-07-29 14:02:14',NULL),(198,197,'新增订单',NULL,'order:create',NULL,'1',NULL,'2020-07-29 14:02:35',NULL),(199,197,'经理审批',NULL,'order:approve:manager',NULL,'1',NULL,'2020-07-29 14:04:17',NULL),(200,197,'财务审批',NULL,'order:approve:accounting',NULL,'1',NULL,'2020-07-29 14:04:43',NULL),(201,197,'交付审批',NULL,'order:approve:sales',NULL,'1',NULL,'2020-07-29 14:05:10',NULL),(203,197,'审批订单','/system/order/approve','order:approve','','0',NULL,'2020-07-29 14:06:48',NULL),(204,197,'归档订单','/system/order/archive','order:archive','','0',NULL,'2020-07-29 14:07:38',NULL),(205,196,'车辆管理','/system/vehicle','vehicle:view','layui-icon-car','0',2,'2020-07-29 14:09:46',NULL),(206,205,'新增车辆',NULL,'vehicle:create',NULL,'1',NULL,'2020-07-29 14:10:49',NULL),(207,205,'出售车辆',NULL,'vehicle:sale',NULL,'1',NULL,'2020-07-29 14:11:20',NULL),(208,205,'保养车辆',NULL,'vehicle:maintenance',NULL,'1',NULL,'2020-07-29 14:12:54',NULL);
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'系统管理员','系统管理员，拥有所有操作权限 ^_^','2019-06-14 16:23:11','2020-07-29 14:13:24'),(2,'注册账户','注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限','2019-06-14 16:00:15','2019-08-18 17:36:02'),(77,'Redis监控员','负责Redis模块','2019-06-14 20:49:22',NULL),(78,'系统监控员','负责整个系统监控模块','2019-06-14 20:50:07',NULL),(79,'跑批人员','负责任务调度跑批模块','2019-06-14 20:51:02',NULL),(80,'开发人员','拥有代码生成模块的权限','2019-06-14 20:51:26',NULL),(81,'销售人员','车辆销售','2020-07-26 18:20:04','2020-07-28 14:43:33'),(82,'销售经理','负责管理销售人员及订单审批','2020-07-28 14:41:51','2020-07-28 14:42:05'),(83,'财务会计','负责审核账单及付款校对','2020-07-28 14:42:59','2020-07-28 16:39:20');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_menu`
--

DROP TABLE IF EXISTS `t_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint NOT NULL COMMENT '菜单/按钮ID',
  KEY `t_role_menu_menu_id` (`MENU_ID`),
  KEY `t_role_menu_role_id` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_menu`
--

LOCK TABLES `t_role_menu` WRITE;
/*!40000 ALTER TABLE `t_role_menu` DISABLE KEYS */;
INSERT INTO `t_role_menu` VALUES (77,2),(78,2),(78,8),(78,23),(78,10),(78,24),(78,170),(78,136),(78,171),(78,172),(78,127),(78,128),(78,129),(78,131),(79,101),(79,102),(79,103),(79,104),(79,105),(79,106),(79,107),(79,108),(79,173),(79,109),(79,110),(79,174),(80,137),(80,138),(80,165),(80,139),(80,166),(2,1),(2,3),(2,161),(2,4),(2,14),(2,162),(2,5),(2,17),(2,163),(2,6),(2,20),(2,164),(2,2),(2,8),(2,10),(2,170),(2,136),(2,172),(2,127),(2,128),(2,129),(2,131),(2,175),(2,101),(2,102),(2,173),(2,109),(2,174),(2,137),(2,138),(2,139),(2,115),(2,132),(2,133),(2,135),(2,134),(2,126),(2,159),(2,116),(2,117),(2,119),(2,120),(2,121),(2,122),(2,123),(2,118),(2,125),(2,167),(2,168),(2,169),(2,178),(1,196),(1,197),(1,198),(1,199),(1,200),(1,201),(1,203),(1,204),(1,205),(1,206),(1,207),(1,208),(1,1),(1,3),(1,13),(1,11),(1,12),(1,160),(1,161),(1,4),(1,14),(1,15),(1,16),(1,162),(1,5),(1,163),(1,17),(1,18),(1,19),(1,6),(1,164),(1,20),(1,21),(1,22),(1,2),(1,8),(1,23),(1,10),(1,170),(1,24),(1,136),(1,171),(1,172),(1,127),(1,128),(1,129),(1,131),(1,175),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,173),(1,109),(1,110),(1,174),(1,137),(1,138),(1,165),(1,139),(1,166),(1,115),(1,132),(1,133),(1,135),(1,134),(1,126),(1,159),(1,116),(1,117),(1,119),(1,120),(1,121),(1,122),(1,123),(1,118),(1,125),(1,167),(1,168),(1,169),(1,178);
/*!40000 ALTER TABLE `t_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `USER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `DEPT_ID` bigint DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`) USING BTREE,
  KEY `t_user_username` (`USERNAME`),
  KEY `t_user_mobile` (`MOBILE`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'MrBird','cb62ad1497597283961545d608f80241',1,'mrbird@qq.com','17788888888','1','2019-06-14 20:39:22','2019-12-04 16:47:11','2020-07-29 13:55:33','0','1','black','cnrhVkzwxjPwAaCfPbdc.png','我是帅比作者。'),(2,'Scott','1d685729d113cfd03872f154939bee1c',10,'scott@gmail.com','17722222222','1','2019-06-14 20:55:53','2019-06-14 21:05:43','2019-08-18 17:36:18','0','1','black','gaOngJwsRYRaVAuXXcmB.png','我是scott。'),(3,'Reina','1461afff857c02afbfb768aa3771503d',4,'Reina@hotmail.com','17711111111','0','2019-06-14 21:07:38','2019-06-14 21:09:06','2019-06-14 21:08:26','1','1','black','5997fedcc7bd4cffbd350b40d1b5b987.jpg','由于公款私用，已被封禁。'),(4,'Micaela','9f2daa2c7bed6870fcbb5b9a51d6300e',10,'Micaela@163.com','17733333333','1','2019-06-14 21:10:13','2019-06-14 21:11:26','2019-06-14 21:10:37','0','0','white','20180414165909.jpg','我叫米克拉'),(5,'Jana','176679b77b3c3e352bd3b30ddc81083e',8,'Jana@126.com','17744444444','1','2019-06-14 21:12:16','2019-06-14 21:12:52','2019-06-14 21:12:32','1','1','white','20180414165821.jpg','大家好，我叫简娜'),(6,'Georgie','dffc683378cdaa015a0ee9554c532225',3,'Georgie@qq.com','17766666666','0','2019-06-14 21:15:09','2019-06-14 21:16:25','2019-06-14 21:16:11','2','0','black','BiazfanxmamNRoxxVxka.png','生产执行rm -rf *，账号封禁T T'),(7,'Margot','31379841b9f4bfde22b8b40471e9a6ce',9,'Margot@qq.com','13444444444','1','2019-06-14 21:17:53','2019-06-14 21:18:59','2019-06-14 21:18:07','1','1','white','20180414165834.jpg','大家好我叫玛戈'),(8,'zhangsan','92dac726ea92d5bdd01eab9aef544c95',6,'12345@asd.com','13911112222','1','2020-07-26 18:21:47',NULL,'2020-07-28 16:15:20','0','1','black','default.jpg',''),(9,'beiyan','67c721ec501e9ae880dc517f9c74e9e2',2,'beiyan@qq.com','15034654506','1','2020-07-29 09:42:39',NULL,'2020-07-29 10:03:58','2','1','black','default.jpg','测试管理员账号');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_data_permission`
--

DROP TABLE IF EXISTS `t_user_data_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_data_permission` (
  `USER_ID` bigint NOT NULL,
  `DEPT_ID` bigint NOT NULL,
  PRIMARY KEY (`USER_ID`,`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户数据权限关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_data_permission`
--

LOCK TABLES `t_user_data_permission` WRITE;
/*!40000 ALTER TABLE `t_user_data_permission` DISABLE KEYS */;
INSERT INTO `t_user_data_permission` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(3,4),(4,5);
/*!40000 ALTER TABLE `t_user_data_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role`
--

DROP TABLE IF EXISTS `t_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint NOT NULL COMMENT '角色ID',
  KEY `t_user_role_user_id` (`USER_ID`),
  KEY `t_user_role_role_id` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

LOCK TABLES `t_user_role` WRITE;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` VALUES (1,1),(2,2),(3,77),(4,78),(5,79),(6,80),(7,78),(7,79),(7,80),(8,81),(9,1);
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicletable`
--

DROP TABLE IF EXISTS `vehicletable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicletable` (
  `VEHICLE_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `COLOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DEAD_WEIGHT` bigint unsigned NOT NULL,
  `MANUFACTURE_DATE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LOWEST_PRICE` bigint unsigned NOT NULL,
  `MAINTENANCE_TIMES` bigint unsigned NOT NULL,
  `STATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`VEHICLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicletable`
--

LOCK TABLES `vehicletable` WRITE;
/*!40000 ALTER TABLE `vehicletable` DISABLE KEYS */;
INSERT INTO `vehicletable` VALUES (1,'suv','白色',1500,'2020-07-29 11:29:27.772',200000,10,'0');
/*!40000 ALTER TABLE `vehicletable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'xjdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-29 14:14:53
