-- MySQL dump 10.19  Distrib 10.2.44-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cunq4227_kas-app
-- ------------------------------------------------------
-- Server version	10.2.44-MariaDB-cll-lve

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
-- Table structure for table `akun`
--

DROP TABLE IF EXISTS `akun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) NOT NULL,
  `password` varchar(300) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(300) NOT NULL DEFAULT 'foto_default.jpg',
  `role` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'aktif',
  `no_wa` varchar(100) NOT NULL,
  `banyak_tunggakan` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `time` int(30) NOT NULL,
  PRIMARY KEY (`id`,`nim`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akun`
--

LOCK TABLES `akun` WRITE;
/*!40000 ALTER TABLE `akun` DISABLE KEYS */;
INSERT INTO `akun` VALUES (1,'312110052','$2y$10$rgASz02w5uN96PHOvE3gTeuOGDI6vQxvLwKGpg0z6dRGq6LjBJKDu','SAVARIANA RIKA ANUGRAHAINI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRuIryMpD4flKs0vjt2tlNMDJbgs9jl9oVK%2BeR51cs76QEk66gWc5Y8PT4MYRZRiFloIOwSoa8o0ofVNYsHz1xDcvha0xmTQXOh8QTAos%2F%2Fpz5UtMC8jZbKg%3D%3D','admin','aktif','',0,0,1666361930),(2,'312110081','123','KEVIN SUYADI RITONGA','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRqcy%2BLjQ39f4Qcp57dpuQ2jmMh71hIGAQH7qnQSbp1D8dPraghFhTJmziMle8tHTjGeTskdclct8KevIjrvTUyqNNHkCqvWZwh7xuNBj8zqoq%2F3ugsmcieg%3D%3D','user','aktif','',0,0,1666355221),(3,'312110123','123','RANGGA ADITIYA','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRhpFtC6r2UUM4ZdNpIxScn8NhxkMsW6tlTcexZPrGfF47q0DDayoosdLqlYv1rptkBmpaW9Y81dKAkOUjB0cWO4kpv%2FYyiPa6mkVltfH2gMVXdzX6N3pstw%3D%3D','user','aktif','',0,0,1666417214),(4,'312110125','123','ALVINA DAMAYANTI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR9VcxPEdEK0cVRT1VNlpdOB3g1IjSWYFmj7bAcfUcMEYmio6UtrMTVREd72GhClQOq2jYqv%2BsqCinc1stuGoPwRhnq7AFqPFJOGpN5mnm5KpW4CsKtD9nsQ%3D%3D','user','aktif','',0,0,1666148795),(5,'312110137','123','INDI ALYA PUTRI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRB86Kn04MUG030yvwbZmN9F4M49tHR7%2FjFxXskQVcY3SrgeEjbSxkORHEtJiIKOO2qz6HrQQVYvjC%2Fk08dzrg4KD44hRCTijbceevgVhD%2F1ujp5GuhUlrqw%3D%3D','user','aktif','',1,5000,1666413882),(6,'312110149','123','ARYA SYAH RAMADHAN','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRkwFEepIVezJXQptkeZJYcuD%2Bm%2BhXqDWHXGbdTUqirpDM%2F2A8xlnxxY2lq5jN5puzSdKFrU9doBOfBgXCEs0W5%2Bfnus4aW92x9NjvO%2F3jFYYtDWGLTC%2B7QA%3D%3D','user','aktif','',0,0,1666357483),(7,'312110151','123','RIZAL PRINGGANDANI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRebgdZaAzEvaglB6FMBrPJa8C7OaWFvbFMvpfGwaQZ4k4O0pppbQo6w5S%2FLZhIPQKaL1tf2FxrxxLCf%2B7%2BhYiQLl0gg1al3rsSd%2Bp0M1VNCLEJ1uKqDTf5A%3D%3D','user','aktif','',0,0,1666361363),(8,'312110163','123','LUCKY ALAMSYAH','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRu4fcTg2X5navcum3hPgOwbGgh5%2BfQY3Io0BvM%2FwUAGwhNSjZEX6oBOG5PeZ9N8YwmzsKEWYIXllEoc4uGnY0CvVfk6hALujmDdOYvsZLYW43V98Ap8umDw%3D%3D','user','aktif','',0,0,1666357701),(9,'312110164','123','RIFKY ABDILLAH HASAN','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRZ8Y53a8Kpkj4lWpQHGQKZT9wc6%2BLeSAy48gsqyDWiaqxdtoFpcUtzj7%2FyZH48eX3hfXrxCqJHQbwcQCmDjhInxGfsoJdonAM%2BqPl2n63uPrKEJzz0D7jEg%3D%3D','user','aktif','',0,0,1666357809),(10,'312110169','123','RIDHO PIKRIYANSYAH','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRhBWJJ%2BHv3KrS77lrE4jK4F7eHm7Idi5%2BzmCDlfFUs9CsclwtEyFDuxiicv9KmHg%2FR%2B0yZMbKI%2F8P99WmjUAN8DRQOY0zo7zkPFTMzulwsrNvHwjo%2FVYs3Q%3D%3D','user','aktif','',0,0,1666357892),(11,'312110194','123','MUHAMMAD FAJAR SETIYANTO','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRkryrfQjRpstH6N2TNq4HQTdqao2ae3LWxfuVHNxf83niGnRWaf7tYbwYy0nefAoVJWdfURdoPuOsV%2BKNQyJmyMG3XbMHKFP6ZOrQznzaboY5OqUmEZ7G1A%3D%3D','user','aktif','',1,5000,1666358019),(12,'312110245','123','RAIHAN HERFIANSYAH','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRUPaLQCf57a0tcPh2NoxCXZCXPfMCN4lNV36lcHouOK7Q5rMLD1ntRmfdLYKThGz4Wzvs7%2B0L3HR3Yio%2BOp8eKIuMphxD8Jj0fagzFDRqtHsarTxejpaogw%3D%3D','user','aktif','',0,0,1666358075),(13,'312110262','123','ABDUL AZIZ FIRDAUS','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRUXIknFQkqxcgbVLyPHkDpoakJ6YKvSZ3A%2FMJDjURLubQMg1ar42Hc06cKvmH5J21dck9LQlUAyMp0hT9r%2B%2ByyGIVPKQTWuvbOv4dw%2FdYU37X%2BqwzhfuSag%3D%3D','user','aktif','',0,0,1666358241),(14,'312110269','$2y$10$32u4WuV/SVV/mvEpuGweY.s2I2.59ZjaR2qQBwivVOXkB67RKftSC','FAUZAN SYAUQI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR03IHVzpTeIwKiJyD3XkqA7s%2FtZy1lOnoIn0cqzMwn2agdoKWFpMRQjPP1358s5MZzqEVvXydCevShUtq%2FTMUAaL8munvnPJy8Al7KP%2Bi3U%2B%2BzX9MkSWJfA%3D%3D','user','aktif','',1,5000,1666358406),(15,'312110274','123','ALVIAN SAPUTRA PRATAMA','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRJzdB7ViC9cBq3Mc7gtPk%2FJN7e0Ce9yeNeruglns8rOurDXpEwck8Al0hpgU%2BSUFsGUl2fGPO7jd2Bdw6Wz37GtLJXQEZUhN8ONy1nT4zvWHNBRVK0ztjIw%3D%3D','user','aktif','',1,5000,1666358492),(16,'312110292','123','MUHAMMAD FARID NUR FAQIH','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR6mGTB7hIRL0xztt2eYqQWCeoapM9hb8h0gBSwOt0kRevDdUY59hvYa5POdXPBMvtyYhzL2tM2Vdp7udyvgPF1NoAfkzZh8qCJNm6m5xssY3VoPoU5VQCZw%3D%3D','user','aktif','',0,0,1666358632),(17,'312110294','123','ZAINI MUHTAROM','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRDIY%2BakazjKov1qZEEvGppoZQJ9bj3DDzrtquAiIcnoR65R3XzmLXiLVMIbbAEo6xhy1C3RmjGaAvXBXqnouxigelBoG7pAw6CdSYCdR2%2FX4fXC4P2W8AoQ%3D%3D','user','aktif','',0,0,1666276470),(18,'312110319','123',' SARA KHUSNUL MUMTAZAH','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRcgvg%2BhCoYj05%2BsZYarXD2%2BQkI8qfeVk5sc412aLydh5%2B7PpViROFed1WExuN%2Bx5xZzg2Qm98GAE3Q7e22cOnNHVoUM%2BRqs9Nb2UrDlN8apxn0kMkEdp%2B7w%3D%3D','user','aktif','',0,0,1666358718),(19,'312110322','123','CHOKY ANDRIANO','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRQtD7t1kqwxIB09LFHn7FLmooadTQ%2FwoZyMvrVvyAqiUqIoUuDeEYCrEY45zprPdTVt6SSNPPpBHdD2JFEoUEaHGCZYsAOr2TeNs2EEMfqLr9bOHroZ5hLQ%3D%3D','user','aktif','',0,0,1666151045),(20,'312110401','$2y$10$Llshp8oQPvzdCSbN6X/ls.jfEKySBUKuq.aqFxhpStSsZxCLoBJFy','ALIF DWI PUTRA','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRiA2yanZTME5s%2BmWdv7YByPdlcnys8O%2Buh3CVD48yyIg3iJQOzISXKLY1LzcviUePmGEoJQ7aXTaxRV%2F2HqlDx80uthQtgXN80MGnaM7N0Fj%2BxLNFC4tdfw%3D%3D','admin','aktif','+6289655678849',2,10000,1666416899),(21,'312110420','123','VIYAN QOMARUDIN NOOR','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRoGNESYTOXf%2F%2Bus8gfe7vU6e2HHq82Ox6j%2F8jwaMLZuBcorYbIPdDBt3ILduTCbhmYeSV%2FiNibQ7pYXoooS0sQRa7fdBtCYB5GGIKeK%2FSSe5sEWpLwqK%2BaA%3D%3D','user','aktif','',0,0,1666358856),(22,'312110425','123','LAELA NUR ROHMAH','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRTW6M%2FmjDwCchLjJSBSe6EhNsig0HVmmTK8OSJCEno9kKBjK%2F48PwCQnHHch5CMJ%2BoLlvy3Bm%2FStaM4KYdEfAQy%2Fu%2F2tusCuxppvSXAEE2E8aY5jkglWOIQ%3D%3D','user','aktif','',0,0,1666436867),(23,'312110427','123','DENIS ALVIANSYAH','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRGt5YGwWiriqpnet%2FZoIPRE0IE%2F0b2cPDWOK23M3EKqqbU4qF7NIbjm6D%2F7qRe37PLLwTtRAwtL%2FPYGnMKoCG79Y9QAHS0VX9b8B9Pu%2Fr1ptlb13k0Y5CLQ%3D%3D','user','aktif','',1,5000,1666359026),(24,'312110451','123','NURUL NAJWA SABILLA','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlREHqEFak%2BYWd%2B6S8k5arQsaxc%2Fgz%2B2GxGYskgTD8SwiiPeTVxs5%2Fs4sybVET3oQjc4L%2FOv4VBGuAj6dIn6NFJqKZZ5UlgX58k6TCpxN6EfSZDXGEBj8BGLA%3D%3D','user','aktif','',0,0,1666148733),(25,'312110459','123','FARIS MAULANA','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRK4UMdx00ZJCYvfRgGy6QLg4cSm3LfsOteubL1FCj1nJHJaJujs3f68JoOUsnuS2aABLK9%2FQ72%2FAm7%2FlJRzjS4oEpA%2BO91yrkr6lvD1K7K99wvdu7x8lM2g%3D%3D','user','aktif','',1,5000,1666359115),(26,'312110460','123','FITRIYANI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRJM%2FadArf4zgREcEnyHl2Nh0ujZ363SIsDUfEaF01B%2BOqryziLvWhJW6ez6TVlvigssKh4TSaY8H5WXzsCv13GkMbvhBXcOAXz2cxlvr05ZxOEs%2FH8pt1zA%3D%3D','user','aktif','',0,0,1666359219),(27,'312110465','123','IRFAN FADLURRAHMAN','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR%2FYrt5jA7FLuCP1NtlTo%2BTTKNrCJBAOebj7lne56JYF7t%2FVxpNNjpH%2FP2lPP9e3mrto3ituKITd9xnoQ5vDYJ5bNlV1qk7Zf3Tb2PP981PRAYqooJeAAYMQ%3D%3D','user','aktif','',2,10000,1666359305),(28,'312110467','123','SIDIK RIFFANI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRSxqtwKNOt7Wm1aMFMIwEJpo8L3W7vval8TsKVJgzEh4STtJbfZmUfix%2FPRwg1Pk1Dsi%2F0Y4pz%2FlLTonufbJrYC6%2BCqav%2Fne80pLb%2BSPVbhWJsWSOWfDsTLsraXkBRko%2B','user','aktif','',0,0,1666359412),(29,'312110481','123','WILDAN MUHAMMAD FAUZAN','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRgDJW4diISr7tTgC%2FQc5EmP%2BcA9byimgjiw8zGWbzsEcpCJ%2F0a6%2F2MR14tD13g46%2FGmn62xzIE41IWOm3Y160K7%2Fad1lvhLh1KinVI6lPoxh6nOFek2gDPw%3D%3D','user','aktif','',0,0,1666359528),(30,'312110483','$2y$10$jvNBAdRmHiPZwBaHW8mmMuSVrWYgZCMcSg4IC8x9VmCUXmP5H6AT6','Muhammad Akbar','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRK5lvTAfgQnA4bpEY1bIS0Ec7pPabRc7%2BfDfelLkde9Vw%2F0Cwfix57Og8StIZbVOFnB8GN1zVirg5LdXBWLvd4pHxmFUpHaDWdmtZEiOk3MzT9hbflO601g%3D%3D','superadmin','aktif','+6281310725348',0,0,1666370077),(31,'312110517','123','RIMA PUJI LESTARI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4E9tp9QNwodeBg5mchgu1zjE8a5YjdAuMV3HgDSiVqXSCF6PYtMUU9ClePMeqI%2FEBbKPpfpwZwCsdqnnsG%2FrSbrYItVxLK9wM4e7XV4cGYtCCKKBmwKwjaA%3D%3D','user','aktif','',1,5000,1666359584),(32,'312110535','123','EKKI MANDALA AJI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRoyv5%2FmA1t6Svx1ADQ%2Bbdwv7af7RkOJBBf3ELT7xy3l6Y69NyPNITd0BYy03TeSw1a5iEXA7UyxOE4K2ixUO3y0Wp9fIYvhXlFkCm7sHKong19re58VU77g%3D%3D','user','aktif','',0,0,1666148111),(33,'312110538','123','FADLI RAMADAN','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRvPW%2FRK37hl7B6HVFVV9s58n2iCjY0MqUI8SM%2BUOCOy%2B9oUF5dD5sHEB7DfLlk9qXyZn3NAgomruCLCD0vAEVRc2l3IN9phdCoo78GL5sr2hY4%2BK5glD%2F7Q%3D%3D','user','aktif','',0,0,1666450340),(34,'312110555','123','AHMAD SHOPWAN ANSHORY','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRs95f79u%2BBdGRt2uMBdFzrJugI7OgWa3Ih2yzk%2FE34oD%2Fy3JTIJ7FRr3qBCNXpYctYtx0Wq8Sa02GG04Y5ZbVNS1CfR%2FZ%2B2ZlV6yK5oUn0sEFDyazq%2BhXhA%3D%3D','user','aktif','',0,0,1666359757),(35,'312110581','123','AHMAD DARMAWAN','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlR3M9LIv%2FVdc%2BixBczN2eWPnmIq0ROpjkfUkZpzTZWxMT4%2BErwrGBpVfTJXl%2BhGM42Fiuq2lUUe%2BXzXJvYHxz4BjQPOCzoTuX9YLTR80n1ve7EfRdv40hdUw%3D%3D','user','aktif','',0,0,1666359822),(36,'312110603','123','ROVANSYAH MULIA PRATAMA','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRZobeNZzOju6CmEY3%2BdAlW0HpoLMZoOvJv9E29BaxPCvVLYWfxEsB8Zn6m9EqrfnogZBqk%2BjErLcwLbrSas%2Fdi7aEUITwgfMfr3G81vDhUNPgRr74qRK2MA%3D%3D','user','aktif','',1,5000,1666359931),(37,'312110610','123','MAFTUHIN AMANULLOH','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRM9omF3fdGAqGQgxzvT13KgzBQJXeQGRSMhPVENoBZqkyAgUJZ%2FNKLrVtJZkzapFPEkJP9GsdnTsHdGQNVNt1P5Z3G3N6TxwNlzDuIRcmIWdy9GA74y4pOA%3D%3D','user','aktif','',0,0,1666359983),(38,'312110618','123','IRGI JAELANI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRox1pSF%2FFsh3qkSzbYr5WbNIvtq1runFVXPg4YapdJotiEmoJrKf5kqXpUmlz7jybZUGGE9rNezmNeUJTxyvFlhxB%2FcdllLnV5JQ8wH94FjcWKwiJPcukYA%3D%3D','user','aktif','',1,5000,1666360031),(39,'312110619','123','RIYANTAMA','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRV%2Bfvs6MN%2FnjYfgMz6PPF3Yy5QtXZSUxMFsOYgw830EXTdanMCrwsFqKub5KyFrI3qRrgAoj04sgiqeDdG%2FuMxbwjfgpjP7W60Lcm55Y7pINyXnmi2GNpDw%3D%3D','user','aktif','',1,5000,1666360137),(40,'312110621','123','SYAIFUL ICHSAN ASHARI','https://ecampus.pelitabangsa.ac.id/pb/AmbilMedia?d=9hKXKM4AxU9v66p4%2BTx0Dto3egxBQBN4xxHcUDtYU2Z18OBAkXinSZQMNne4B1t4Ooorj1VSN6bZCH4ernXLO4O%2BIzcxxTlRyC3GOgl%2Bu%2B6XOGQojNRAvMbe2CoVXTR%2BRmeNAgWzlnsHfF9SRtEqS%2F8Ia2qAhUGoO3tkdew0ZmmDrFr%2Fi%2Fzn%2BejztWgpMndaaJX4MOLknaClcKNSyDXdcg%3D%3D','user','aktif','',1,5000,1666360216);
/*!40000 ALTER TABLE `akun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatt`
--

DROP TABLE IF EXISTS `chatt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_akun` int(11) NOT NULL,
  `pesan` varchar(2000) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatt`
--

LOCK TABLES `chatt` WRITE;
/*!40000 ALTER TABLE `chatt` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal_tagihan`
--

DROP TABLE IF EXISTS `jadwal_tagihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal_tagihan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(100) NOT NULL,
  `nominal` int(11) NOT NULL,
  `belum_bayar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal_tagihan`
--

LOCK TABLES `jadwal_tagihan` WRITE;
/*!40000 ALTER TABLE `jadwal_tagihan` DISABLE KEYS */;
INSERT INTO `jadwal_tagihan` VALUES (7,'26/09/2022',5000,0),(8,'03/10/2022',5000,0),(9,'10/10/2022',5000,2),(10,'17/10/2022',5000,14);
/*!40000 ALTER TABLE `jadwal_tagihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_tunggakan`
--

DROP TABLE IF EXISTS `list_tunggakan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_tunggakan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_akun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `tanggal_tagihan` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_tunggakan`
--

LOCK TABLES `list_tunggakan` WRITE;
/*!40000 ALTER TABLE `list_tunggakan` DISABLE KEYS */;
INSERT INTO `list_tunggakan` VALUES (107,27,5000,'10/10/2022'),(125,5,5000,'17/10/2022'),(131,11,5000,'17/10/2022'),(134,14,5000,'17/10/2022'),(135,15,5000,'17/10/2022'),(143,23,5000,'17/10/2022'),(144,24,5000,'17/10/2022'),(145,25,5000,'17/10/2022'),(147,27,5000,'17/10/2022'),(151,31,5000,'17/10/2022'),(156,36,5000,'17/10/2022'),(158,38,5000,'17/10/2022'),(159,39,5000,'17/10/2022'),(160,40,5000,'17/10/2022'),(161,20,5000,'10/10/2022'),(162,20,5000,'17/10/2022');
/*!40000 ALTER TABLE `list_tunggakan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat_pembayaran`
--

DROP TABLE IF EXISTS `riwayat_pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayat_pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_akun` int(11) NOT NULL,
  `id_tunggakan` int(11) NOT NULL,
  `tgl_tagihan` varchar(100) NOT NULL,
  `time` varchar(300) NOT NULL,
  `nominal` int(100) NOT NULL,
  `nama_pengirim` varchar(200) NOT NULL,
  `metode_pem` varchar(200) NOT NULL,
  `bukti` varchar(300) NOT NULL,
  `status_pem` varchar(200) NOT NULL,
  `tindakan` varchar(100) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat_pembayaran`
--

LOCK TABLES `riwayat_pembayaran` WRITE;
/*!40000 ALTER TABLE `riwayat_pembayaran` DISABLE KEYS */;
INSERT INTO `riwayat_pembayaran` VALUES (1,37,117,'10/10/2022','23:40 - 12/10/2022',5000,'Maftuhin amanulloh','dana','dihapus','berhasil','terima',30),(2,2,2,'26/09/2022','23:40 - 12/10/2022',5000,'Kevin Suyadi Ritonga','cash','dihapus','berhasil','terima',30),(3,30,30,'26/09/2022','23:42 - 12/10/2022',5000,'Akbar','dana','dihapus','berhasil','terima',30),(4,2,42,'03/10/2022','23:43 - 12/10/2022',5000,'KEVIN SUYADI RITONGA','cash','dihapus','berhasil','terima',30),(5,6,6,'26/09/2022','23:47 - 12/10/2022',5000,'Arya','cash','dihapus','berhasil','terima',30),(6,10,10,'26/09/2022','23:47 - 12/10/2022',5000,'Roxyzc','cash','dihapus','berhasil','terima',30),(7,10,50,'03/10/2022','23:48 - 12/10/2022',5000,'roxyzc','cash','dihapus','berhasil','terima',30),(8,6,46,'03/10/2022','23:48 - 12/10/2022',5000,'Arya','cash','dihapus','berhasil','terima',30),(9,30,70,'03/10/2022','23:50 - 12/10/2022',5000,'Akbar','cash','dihapus','berhasil','terima',30),(10,24,24,'26/09/2022','23:50 - 12/10/2022',5000,'Nurul Najwa Sabilla','cash','dihapus','berhasil','terima',30),(11,22,22,'26/09/2022','00:04 - 13/10/2022',5000,'Laela','cash','dihapus','berhasil','terima',30),(12,7,7,'26/09/2022','07:05 - 13/10/2022',5000,'Rizal Pringgandani ','cash','dihapus','berhasil','terima',30),(13,12,12,'26/09/2022','09:32 - 18/10/2022',5000,'Raihan Herfiansyah','cash','dihapus','berhasil','terima',1),(14,20,20,'26/09/2022','14:14 - 18/10/2022',5000,'Alif dwi','dana','dihapus','gagal','tolak',20),(15,5,5,'26/09/2022','14:21 - 18/10/2022',5000,'Indi cantik','cash','dihapus','berhasil','terima',1),(16,30,110,'10/10/2022','14:22 - 18/10/2022',5000,'akbar','cash','dihapus','gagal','tolak',30),(17,7,47,'03/10/2022','14:25 - 18/10/2022',5000,'Rizal p','cash','dihapus','berhasil','terima',1),(18,9,9,'26/09/2022','14:27 - 18/10/2022',5000,'Rifky Abdillah Hasan','cash','dihapus','berhasil','terima',1),(19,5,45,'03/10/2022','14:46 - 18/10/2022',5000,'Indy geulis','cash','dihapus','berhasil','terima',1),(20,1,1,'26/09/2022','14:47 - 18/10/2022',5000,'Rika','cash','dihapus','berhasil','terima',1),(21,5,85,'10/10/2022','14:48 - 18/10/2022',5000,'Indi','cash','dihapus','berhasil','terima',1),(22,1,41,'03/10/2022','14:49 - 18/10/2022',5000,'Rika','cash','dihapus','berhasil','terima',1),(23,1,81,'10/10/2022','14:52 - 18/10/2022',5000,'Rika','cash','dihapus','berhasil','terima',1),(24,4,4,'26/09/2022','16:01 - 18/10/2022',5000,'Alvina Damayanti ','cash','dihapus','berhasil','terima',1),(25,4,44,'03/10/2022','17:29 - 18/10/2022',5000,'Alvina Damayanti ','cash','dihapus','berhasil','terima',1),(26,1,121,'17/10/2022','18:11 - 18/10/2022',5000,'Rika','cash','dihapus','berhasil','terima',1),(27,17,17,'26/09/2022','18:14 - 18/10/2022',5000,'zaini','cash','dihapus','berhasil','terima',1),(28,19,59,'03/10/2022','18:18 - 18/10/2022',5000,'Choky Andriano','cash','dihapus','berhasil','terima',1),(29,17,57,'03/10/2022','18:20 - 18/10/2022',5000,'zaini','cash','dihapus','berhasil','terima',1),(30,4,84,'10/10/2022','18:29 - 18/10/2022',5000,'Alvina Damayanti ','cash','dihapus','berhasil','terima',1),(31,18,18,'26/09/2022','18:34 - 18/10/2022',5000,'Sara Khusnul Mumtazah ','cash','dihapus','berhasil','terima',1),(32,10,90,'10/10/2022','18:51 - 18/10/2022',5000,'roxyzc','cash','dihapus','berhasil','terima',30),(33,32,32,'26/09/2022','18:59 - 18/10/2022',5000,'Ekki Mandala ','cash','dihapus','berhasil','terima',1),(34,32,72,'03/10/2022','19:34 - 18/10/2022',5000,'Ekki Mandala ','cash','dihapus','berhasil','terima',1),(35,4,124,'17/10/2022','20:18 - 18/10/2022',5000,'Alvina Damayanti ','cash','dihapus','berhasil','terima',1),(36,18,58,'03/10/2022','20:18 - 18/10/2022',5000,'Sara Khusnul Mumtazah ','cash','dihapus','berhasil','terima',1),(37,32,112,'10/10/2022','20:52 - 18/10/2022',5000,'Ekki Mandala aji','cash','dihapus','berhasil','terima',1),(38,24,64,'03/10/2022','22:35 - 18/10/2022',5000,'Nurul Najwa','cash','dihapus','berhasil','terima',1),(39,30,110,'10/10/2022','05:50 - 19/10/2022',5000,'Akbar','dana','dihapus','berhasil','terima',30),(40,3,43,'03/10/2022','07:01 - 19/10/2022',5000,'Rangga ','cash','dihapus','berhasil','terima',1),(41,12,52,'03/10/2022','09:15 - 19/10/2022',5000,'Raihan Herfiansyah','cash','dihapus','berhasil','terima',1),(42,12,92,'10/10/2022','09:34 - 19/10/2022',5000,'Raihan Herfiansyah','cash','dihapus','berhasil','terima',1),(43,32,152,'17/10/2022','09:52 - 19/10/2022',5000,'Ekki Mandala ','cash','dihapus','berhasil','terima',1),(44,24,104,'10/10/2022','10:02 - 19/10/2022',5000,'312110451','cash','dihapus','berhasil','terima',1),(45,24,104,'10/10/2022','10:03 - 19/10/2022',5000,'312110451','cash','dihapus','berhasil','terima',1),(46,22,62,'03/10/2022','10:03 - 19/10/2022',5000,'Laela','cash','dihapus','berhasil','terima',1),(47,37,37,'26/09/2022','10:27 - 19/10/2022',5000,'Aman','cash','dihapus','berhasil','terima',1),(48,33,33,'26/09/2022','10:28 - 19/10/2022',5000,'Fadli','cash','dihapus','berhasil','terima',1),(49,19,139,'17/10/2022','10:37 - 19/10/2022',5000,'312110322','cash','dihapus','berhasil','terima',1),(50,19,99,'10/10/2022','10:37 - 19/10/2022',5000,'312110322','cash','dihapus','berhasil','terima',1),(51,19,19,'26/09/2022','10:38 - 19/10/2022',5000,'Choky Andriano','cash','dihapus','berhasil','terima',1),(52,30,150,'17/10/2022','12:20 - 19/10/2022',5000,'Akbar','dana','dihapus','berhasil','terima',30),(53,7,87,'10/10/2022','10:15 - 20/10/2022',5000,'Rizal','cash','dihapus','berhasil','terima',1),(54,20,20,'26/09/2022','12:54 - 20/10/2022',5000,'Alif Dwi Putr','cash','dihapus','berhasil','terima',1),(55,17,137,'17/10/2022','21:26 - 20/10/2022',5000,'zaini','cash','dihapus','berhasil','terima',1),(56,17,97,'10/10/2022','21:29 - 20/10/2022',5000,'zaini','cash','dihapus','berhasil','terima',30),(57,33,73,'03/10/2022','08:39 - 21/10/2022',5000,'fadli','cash','dihapus','berhasil','terima',30),(58,2,82,'10/10/2022','19:15 - 21/10/2022',5000,'kevin','cash','dihapus','berhasil','terima',30),(59,3,3,'26/09/2022','19:16 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(60,3,83,'10/10/2022','19:16 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(61,3,123,'17/10/2022','19:17 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(62,2,122,'17/10/2022','19:18 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(63,6,86,'10/10/2022','20:01 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(64,6,126,'17/10/2022','20:01 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(65,7,127,'17/10/2022','20:04 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(66,8,8,'26/09/2022','20:06 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(67,8,48,'03/10/2022','20:07 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(68,8,88,'10/10/2022','20:07 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(69,8,128,'17/10/2022','20:07 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(70,9,49,'03/10/2022','20:09 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(71,9,89,'10/10/2022','20:09 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(72,9,129,'17/10/2022','20:09 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(73,10,130,'17/10/2022','20:11 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(74,11,11,'26/09/2022','20:12 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(75,11,51,'03/10/2022','20:12 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(76,11,91,'10/10/2022','20:13 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(77,12,132,'17/10/2022','20:14 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(78,13,13,'26/09/2022','20:15 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(79,13,53,'03/10/2022','20:15 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(80,13,93,'10/10/2022','20:15 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(81,13,133,'17/10/2022','20:16 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(82,14,14,'26/09/2022','20:18 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(83,14,54,'03/10/2022','20:19 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(84,14,94,'10/10/2022','20:19 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(85,15,15,'26/09/2022','20:20 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(86,15,55,'03/10/2022','20:20 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(87,15,95,'10/10/2022','20:21 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(88,16,16,'26/09/2022','20:22 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(89,16,56,'03/10/2022','20:22 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(90,16,96,'10/10/2022','20:23 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(91,16,136,'17/10/2022','20:23 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(92,18,98,'10/10/2022','20:24 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(93,18,138,'17/10/2022','20:24 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(94,21,21,'26/09/2022','20:26 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(95,21,61,'03/10/2022','20:26 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(96,21,101,'10/10/2022','20:26 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(97,21,141,'17/10/2022','20:26 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(98,22,102,'10/10/2022','20:27 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(99,22,142,'17/10/2022','20:28 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(100,23,23,'26/09/2022','20:29 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(101,23,63,'03/10/2022','20:29 - 21/10/2022',5000,'312110427','cash','dihapus','berhasil','terima',30),(102,23,103,'10/10/2022','20:30 - 21/10/2022',5000,'312110427','cash','dihapus','berhasil','terima',30),(103,25,25,'26/09/2022','20:31 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(104,25,65,'03/10/2022','20:31 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(105,25,105,'10/10/2022','20:31 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(106,26,26,'26/09/2022','20:32 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(107,26,66,'03/10/2022','20:32 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(108,26,106,'10/10/2022','20:33 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(109,26,146,'17/10/2022','20:33 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(110,27,27,'26/09/2022','20:34 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(111,27,67,'03/10/2022','20:34 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(112,28,28,'26/09/2022','20:35 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(113,28,68,'03/10/2022','20:35 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(114,28,108,'10/10/2022','20:36 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(115,28,148,'17/10/2022','20:36 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(116,29,29,'26/09/2022','20:36 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(117,29,69,'03/10/2022','20:37 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(118,29,109,'10/10/2022','20:37 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(119,29,149,'17/10/2022','20:37 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(120,31,31,'26/09/2022','20:38 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(121,31,71,'03/10/2022','20:39 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(122,31,111,'10/10/2022','20:39 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(123,33,113,'10/10/2022','20:40 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(124,33,153,'17/10/2022','20:40 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(125,34,34,'26/09/2022','20:41 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(126,34,74,'03/10/2022','20:41 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(127,34,114,'10/10/2022','20:42 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(128,34,154,'17/10/2022','20:42 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(129,35,35,'26/09/2022','20:42 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(130,35,75,'03/10/2022','20:43 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(131,35,115,'10/10/2022','20:43 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(132,35,155,'17/10/2022','20:43 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(133,36,36,'26/09/2022','20:44 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(134,36,76,'03/10/2022','20:44 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(135,36,116,'10/10/2022','20:45 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(136,37,77,'03/10/2022','20:45 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(137,37,157,'17/10/2022','20:45 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(138,38,38,'26/09/2022','20:46 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(139,38,78,'03/10/2022','20:46 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(140,38,118,'10/10/2022','20:46 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(141,39,39,'26/09/2022','20:48 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(142,39,79,'03/10/2022','20:48 - 21/10/2022',5000,'312110619','cash','dihapus','berhasil','terima',30),(143,39,119,'10/10/2022','20:48 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(144,40,40,'26/09/2022','20:49 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(145,40,80,'03/10/2022','20:49 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(146,40,120,'10/10/2022','20:49 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30),(147,20,60,'03/10/2022','20:50 - 21/10/2022',5000,'auto','cash','dihapus','berhasil','terima',30);
/*!40000 ALTER TABLE `riwayat_pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat_saldokas`
--

DROP TABLE IF EXISTS `riwayat_saldokas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayat_saldokas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nominal` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `ket` varchar(400) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat_saldokas`
--

LOCK TABLES `riwayat_saldokas` WRITE;
/*!40000 ALTER TABLE `riwayat_saldokas` DISABLE KEYS */;
INSERT INTO `riwayat_saldokas` VALUES (1,5000,'Kas','uang kas mingguan','12/10/2022'),(2,5000,'Kas','uang kas mingguan','12/10/2022'),(3,5000,'Kas','uang kas mingguan','12/10/2022'),(4,5000,'Kas','uang kas mingguan','12/10/2022'),(5,5000,'Kas','uang kas mingguan','12/10/2022'),(6,5000,'Kas','uang kas mingguan','12/10/2022'),(7,5000,'Kas','uang kas mingguan','12/10/2022'),(8,5000,'Kas','uang kas mingguan','12/10/2022'),(9,5000,'Kas','uang kas mingguan','12/10/2022'),(10,5000,'Kas','uang kas mingguan','12/10/2022'),(11,5000,'Kas','uang kas mingguan','13/10/2022'),(12,5000,'Kas','uang kas mingguan','13/10/2022'),(13,5000,'Kas','uang kas mingguan','18/10/2022'),(14,5000,'Kas','uang kas mingguan','18/10/2022'),(15,5000,'Kas','uang kas mingguan','18/10/2022'),(16,5000,'Kas','uang kas mingguan','18/10/2022'),(17,5000,'Kas','uang kas mingguan','18/10/2022'),(18,5000,'Kas','uang kas mingguan','18/10/2022'),(19,5000,'Kas','uang kas mingguan','18/10/2022'),(20,5000,'Kas','uang kas mingguan','18/10/2022'),(21,5000,'Kas','uang kas mingguan','18/10/2022'),(22,5000,'Kas','uang kas mingguan','18/10/2022'),(23,5000,'Kas','uang kas mingguan','18/10/2022'),(24,5000,'Kas','uang kas mingguan','18/10/2022'),(25,5000,'Kas','uang kas mingguan','18/10/2022'),(26,5000,'Kas','uang kas mingguan','18/10/2022'),(27,5000,'Kas','uang kas mingguan','18/10/2022'),(28,5000,'Kas','uang kas mingguan','18/10/2022'),(29,5000,'Kas','uang kas mingguan','18/10/2022'),(30,5000,'Kas','uang kas mingguan','18/10/2022'),(31,5000,'Kas','uang kas mingguan','18/10/2022'),(32,5000,'Kas','uang kas mingguan','18/10/2022'),(33,5000,'Kas','uang kas mingguan','18/10/2022'),(34,5000,'Kas','uang kas mingguan','18/10/2022'),(35,5000,'Kas','uang kas mingguan','18/10/2022'),(36,5000,'Kas','uang kas mingguan','18/10/2022'),(37,5000,'Kas','uang kas mingguan','19/10/2022'),(38,5000,'Kas','uang kas mingguan','19/10/2022'),(39,5000,'Kas','uang kas mingguan','19/10/2022'),(40,5000,'Kas','uang kas mingguan','19/10/2022'),(41,5000,'Kas','uang kas mingguan','19/10/2022'),(42,5000,'Kas','uang kas mingguan','19/10/2022'),(43,5000,'Kas','uang kas mingguan','19/10/2022'),(44,5000,'Kas','uang kas mingguan','19/10/2022'),(45,5000,'Kas','uang kas mingguan','19/10/2022'),(46,5000,'Kas','uang kas mingguan','19/10/2022'),(47,5000,'Kas','uang kas mingguan','19/10/2022'),(48,5000,'Kas','uang kas mingguan','19/10/2022'),(49,5000,'Kas','uang kas mingguan','19/10/2022'),(50,5000,'Kas','uang kas mingguan','19/10/2022'),(51,5000,'Kas','uang kas mingguan','20/10/2022'),(52,5000,'Kas','uang kas mingguan','20/10/2022'),(53,5000,'Kas','uang kas mingguan','20/10/2022'),(54,5000,'Kas','uang kas mingguan','21/10/2022'),(55,5000,'Kas','uang kas mingguan','21/10/2022'),(56,5000,'Kas','uang kas mingguan','21/10/2022'),(57,5000,'Kas','uang kas mingguan','21/10/2022'),(58,5000,'Kas','uang kas mingguan','21/10/2022'),(59,5000,'Kas','uang kas mingguan','21/10/2022'),(60,5000,'Kas','uang kas mingguan','21/10/2022'),(61,5000,'Kas','uang kas mingguan','21/10/2022'),(62,5000,'Kas','uang kas mingguan','21/10/2022'),(63,5000,'Kas','uang kas mingguan','21/10/2022'),(64,5000,'Kas','uang kas mingguan','21/10/2022'),(65,5000,'Kas','uang kas mingguan','21/10/2022'),(66,5000,'Kas','uang kas mingguan','21/10/2022'),(67,5000,'Kas','uang kas mingguan','21/10/2022'),(68,5000,'Kas','uang kas mingguan','21/10/2022'),(69,5000,'Kas','uang kas mingguan','21/10/2022'),(70,5000,'Kas','uang kas mingguan','21/10/2022'),(71,5000,'Kas','uang kas mingguan','21/10/2022'),(72,5000,'Kas','uang kas mingguan','21/10/2022'),(73,5000,'Kas','uang kas mingguan','21/10/2022'),(74,5000,'Kas','uang kas mingguan','21/10/2022'),(75,5000,'Kas','uang kas mingguan','21/10/2022'),(76,5000,'Kas','uang kas mingguan','21/10/2022'),(77,5000,'Kas','uang kas mingguan','21/10/2022'),(78,5000,'Kas','uang kas mingguan','21/10/2022'),(79,5000,'Kas','uang kas mingguan','21/10/2022'),(80,5000,'Kas','uang kas mingguan','21/10/2022'),(81,5000,'Kas','uang kas mingguan','21/10/2022'),(82,5000,'Kas','uang kas mingguan','21/10/2022'),(83,5000,'Kas','uang kas mingguan','21/10/2022'),(84,5000,'Kas','uang kas mingguan','21/10/2022'),(85,5000,'Kas','uang kas mingguan','21/10/2022'),(86,5000,'Kas','uang kas mingguan','21/10/2022'),(87,5000,'Kas','uang kas mingguan','21/10/2022'),(88,5000,'Kas','uang kas mingguan','21/10/2022'),(89,5000,'Kas','uang kas mingguan','21/10/2022'),(90,5000,'Kas','uang kas mingguan','21/10/2022'),(91,5000,'Kas','uang kas mingguan','21/10/2022'),(92,5000,'Kas','uang kas mingguan','21/10/2022'),(93,5000,'Kas','uang kas mingguan','21/10/2022'),(94,5000,'Kas','uang kas mingguan','21/10/2022'),(95,5000,'Kas','uang kas mingguan','21/10/2022'),(96,5000,'Kas','uang kas mingguan','21/10/2022'),(97,5000,'Kas','uang kas mingguan','21/10/2022'),(98,5000,'Kas','uang kas mingguan','21/10/2022'),(99,5000,'Kas','uang kas mingguan','21/10/2022'),(100,5000,'Kas','uang kas mingguan','21/10/2022'),(101,5000,'Kas','uang kas mingguan','21/10/2022'),(102,5000,'Kas','uang kas mingguan','21/10/2022'),(103,5000,'Kas','uang kas mingguan','21/10/2022'),(104,5000,'Kas','uang kas mingguan','21/10/2022'),(105,5000,'Kas','uang kas mingguan','21/10/2022'),(106,5000,'Kas','uang kas mingguan','21/10/2022'),(107,5000,'Kas','uang kas mingguan','21/10/2022'),(108,5000,'Kas','uang kas mingguan','21/10/2022'),(109,5000,'Kas','uang kas mingguan','21/10/2022'),(110,5000,'Kas','uang kas mingguan','21/10/2022'),(111,5000,'Kas','uang kas mingguan','21/10/2022'),(112,5000,'Kas','uang kas mingguan','21/10/2022'),(113,5000,'Kas','uang kas mingguan','21/10/2022'),(114,5000,'Kas','uang kas mingguan','21/10/2022'),(115,5000,'Kas','uang kas mingguan','21/10/2022'),(116,5000,'Kas','uang kas mingguan','21/10/2022'),(117,5000,'Kas','uang kas mingguan','21/10/2022'),(118,5000,'Kas','uang kas mingguan','21/10/2022'),(119,5000,'Kas','uang kas mingguan','21/10/2022'),(120,5000,'Kas','uang kas mingguan','21/10/2022'),(121,5000,'Kas','uang kas mingguan','21/10/2022'),(122,5000,'Kas','uang kas mingguan','21/10/2022'),(123,5000,'Kas','uang kas mingguan','21/10/2022'),(124,5000,'Kas','uang kas mingguan','21/10/2022'),(125,5000,'Kas','uang kas mingguan','21/10/2022'),(126,5000,'Kas','uang kas mingguan','21/10/2022'),(127,5000,'Kas','uang kas mingguan','21/10/2022'),(128,5000,'Kas','uang kas mingguan','21/10/2022'),(129,5000,'Kas','uang kas mingguan','21/10/2022'),(130,5000,'Kas','uang kas mingguan','21/10/2022'),(131,5000,'Kas','uang kas mingguan','21/10/2022'),(132,5000,'Kas','uang kas mingguan','21/10/2022'),(133,5000,'Kas','uang kas mingguan','21/10/2022'),(134,5000,'Kas','uang kas mingguan','21/10/2022'),(135,5000,'Kas','uang kas mingguan','21/10/2022'),(136,5000,'Kas','uang kas mingguan','21/10/2022'),(137,5000,'Kas','uang kas mingguan','21/10/2022'),(138,5000,'Kas','uang kas mingguan','21/10/2022'),(139,5000,'Kas','uang kas mingguan','21/10/2022'),(140,5000,'Kas','uang kas mingguan','21/10/2022'),(141,5000,'Kas','uang kas mingguan','21/10/2022'),(142,5000,'Kas','uang kas mingguan','21/10/2022'),(143,5000,'Kas','uang kas mingguan','21/10/2022'),(144,5000,'Kas','uang kas mingguan','21/10/2022'),(145,5000,'Kas','uang kas mingguan','21/10/2022');
/*!40000 ALTER TABLE `riwayat_saldokas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total`
--

DROP TABLE IF EXISTS `total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saldo` int(200) NOT NULL,
  `s_keluar` int(200) NOT NULL,
  `s_masuk` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total`
--

LOCK TABLES `total` WRITE;
/*!40000 ALTER TABLE `total` DISABLE KEYS */;
INSERT INTO `total` VALUES (1,725000,0,725000);
/*!40000 ALTER TABLE `total` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-23 10:00:01
