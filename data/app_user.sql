-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: app
-- ------------------------------------------------------
-- Server version	5.7.14-log

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
  user_id int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  email varchar(70) DEFAULT NULL,
  job int(11) DEFAULT NULL,
  major int(11) DEFAULT NULL,
  PRIMARY KEY (user_id)
);

--
-- Dumping data for table `user`
--
-- Dump completed
