-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.58


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema timetabledata
--

CREATE DATABASE IF NOT EXISTS timetabledata;
USE timetabledata;

--
-- Definition of table `adminlogintab`
--

DROP TABLE IF EXISTS `adminlogintab`;
CREATE TABLE `adminlogintab` (
  `uName` varchar(50) DEFAULT NULL,
  `pWord` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogintab`
--

/*!40000 ALTER TABLE `adminlogintab` DISABLE KEYS */;
INSERT INTO `adminlogintab` (`uName`,`pWord`) VALUES 
 ('admin','admin');
/*!40000 ALTER TABLE `adminlogintab` ENABLE KEYS */;


--
-- Definition of table `coursetab`
--

DROP TABLE IF EXISTS `coursetab`;
CREATE TABLE `coursetab` (
  `CourseName` varchar(50) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursetab`
--

/*!40000 ALTER TABLE `coursetab` DISABLE KEYS */;
INSERT INTO `coursetab` (`CourseName`,`details`) VALUES 
 ('BCA','BCA'),
 ('Bcom','Bcom'),
 ('BA','BA'),
 ('Bcom','bcom');
/*!40000 ALTER TABLE `coursetab` ENABLE KEYS */;


--
-- Definition of table `empdettab`
--

DROP TABLE IF EXISTS `empdettab`;
CREATE TABLE `empdettab` (
  `empcode` varchar(50) DEFAULT NULL,
  `pWord` varchar(50) DEFAULT NULL,
  `empName` varchar(50) DEFAULT NULL,
  `eAdd` varchar(250) DEFAULT NULL,
  `MobileNo` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qName` varchar(50) DEFAULT NULL,
  `dName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empdettab`
--

/*!40000 ALTER TABLE `empdettab` DISABLE KEYS */;
/*!40000 ALTER TABLE `empdettab` ENABLE KEYS */;


--
-- Definition of table `eventtime`
--

DROP TABLE IF EXISTS `eventtime`;
CREATE TABLE `eventtime` (
  `date` varchar(10) DEFAULT NULL,
  `day` varchar(200) DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `ename` varchar(200) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventtime`
--

/*!40000 ALTER TABLE `eventtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventtime` ENABLE KEYS */;


--
-- Definition of table `examtime`
--

DROP TABLE IF EXISTS `examtime`;
CREATE TABLE `examtime` (
  `date` varchar(10) DEFAULT NULL,
  `day` varchar(200) DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `subcode` varchar(200) DEFAULT NULL,
  `subname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examtime`
--

/*!40000 ALTER TABLE `examtime` DISABLE KEYS */;
INSERT INTO `examtime` (`date`,`day`,`time`,`subcode`,`subname`) VALUES 
 ('2023-06-15','10:00 to 1:30','10:00 to 1:30','hi1234','histroy'),
 ('2023-06-14','1:00 to 3:30','1:00 to 3:30','cu123','computer'),
 ('2023-06-07','12:00 to 1:30','12:00 to 1:30','com123','computer');
/*!40000 ALTER TABLE `examtime` ENABLE KEYS */;


--
-- Definition of table `faqtab`
--

DROP TABLE IF EXISTS `faqtab`;
CREATE TABLE `faqtab` (
  `qno` int(11) DEFAULT NULL,
  `question` varchar(250) DEFAULT NULL,
  `Answer` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqtab`
--

/*!40000 ALTER TABLE `faqtab` DISABLE KEYS */;
INSERT INTO `faqtab` (`qno`,`question`,`Answer`) VALUES 
 (1000,NULL,NULL);
/*!40000 ALTER TABLE `faqtab` ENABLE KEYS */;


--
-- Definition of table `qualificationtab`
--

DROP TABLE IF EXISTS `qualificationtab`;
CREATE TABLE `qualificationtab` (
  `qName` varchar(50) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualificationtab`
--

/*!40000 ALTER TABLE `qualificationtab` DISABLE KEYS */;
INSERT INTO `qualificationtab` (`qName`,`details`) VALUES 
 ('M-com','M-com'),
 ('BE(CSE)','BE');
/*!40000 ALTER TABLE `qualificationtab` ENABLE KEYS */;


--
-- Definition of table `staffsubjecttab`
--

DROP TABLE IF EXISTS `staffsubjecttab`;
CREATE TABLE `staffsubjecttab` (
  `CourseName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `subjectname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `empCode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Rem1` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffsubjecttab`
--

/*!40000 ALTER TABLE `staffsubjecttab` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffsubjecttab` ENABLE KEYS */;


--
-- Definition of table `studenttab`
--

DROP TABLE IF EXISTS `studenttab`;
CREATE TABLE `studenttab` (
  `RegNo` varchar(50) DEFAULT NULL,
  `pWord` varchar(50) DEFAULT NULL,
  `StudentName` varchar(50) DEFAULT NULL,
  `sAdd` varchar(250) DEFAULT NULL,
  `MobileNo` varchar(50) DEFAULT NULL,
  `eMail` varchar(50) DEFAULT NULL,
  `CourseName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttab`
--

/*!40000 ALTER TABLE `studenttab` DISABLE KEYS */;
INSERT INTO `studenttab` (`RegNo`,`pWord`,`StudentName`,`sAdd`,`MobileNo`,`eMail`,`CourseName`) VALUES 
 ('a123','abcd','abcd','Bangalore ','9874561231','abcd@gmail.com','BCA');
/*!40000 ALTER TABLE `studenttab` ENABLE KEYS */;


--
-- Definition of table `subjecttab`
--

DROP TABLE IF EXISTS `subjecttab`;
CREATE TABLE `subjecttab` (
  `CourseName` varchar(50) DEFAULT NULL,
  `SubjectName` varchar(50) DEFAULT NULL,
  `Semister` varchar(10) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjecttab`
--

/*!40000 ALTER TABLE `subjecttab` DISABLE KEYS */;
INSERT INTO `subjecttab` (`CourseName`,`SubjectName`,`Semister`,`details`) VALUES 
 ('BCA','COMPUTER ARCHITECTURE ','I','COMPUTER ARCHITECTURE '),
 ('Bcom','accountancy ','I','no comments '),
 ('BA','HISTORY','I','History '),
 ('BCA','COMPUTER ARCHITECTURE ','III','computer application ');
/*!40000 ALTER TABLE `subjecttab` ENABLE KEYS */;


--
-- Definition of table `timetabletab`
--

DROP TABLE IF EXISTS `timetabletab`;
CREATE TABLE `timetabletab` (
  `aNo` int(11) DEFAULT NULL,
  `CourseName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Semister` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SubjectName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DayName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Period` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `empCode` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetabletab`
--

/*!40000 ALTER TABLE `timetabletab` DISABLE KEYS */;
INSERT INTO `timetabletab` (`aNo`,`CourseName`,`Semister`,`SubjectName`,`DayName`,`Period`,`empCode`) VALUES 
 (1,'Bcom','I','null','1.Mon','1',''),
 (2,'Bcom','I','accountancy ','1.Mon','2',''),
 (3,'Bcom','I','null','1.Mon','3',''),
 (4,'Bcom','I','null','1.Mon','4',''),
 (5,'Bcom','I','null','1.Mon','5',''),
 (6,'Bcom','I','null','2.Tue','1',''),
 (7,'Bcom','I','null','2.Tue','2',''),
 (8,'Bcom','I','accountancy ','2.Tue','3',''),
 (9,'Bcom','I','null','2.Tue','4',''),
 (10,'Bcom','I','null','2.Tue','5',''),
 (11,'Bcom','I','null','3.Wed','1',''),
 (12,'Bcom','I','null','3.Wed','2',''),
 (13,'Bcom','I','accountancy ','3.Wed','3',''),
 (14,'Bcom','I','null','3.Wed','4',''),
 (15,'Bcom','I','null','3.Wed','5',''),
 (16,'Bcom','I','null','4.Thu','1',''),
 (17,'Bcom','I','null','4.Thu','2',''),
 (18,'Bcom','I','accountancy ','4.Thu','3',''),
 (19,'Bcom','I','null','4.Thu','4',''),
 (20,'Bcom','I','null','4.Thu','5',''),
 (21,'Bcom','I','null','5.Fri','1',''),
 (22,'Bcom','I','accountancy ','5.Fri','2',''),
 (23,'Bcom','I','null','5.Fri','3','');
INSERT INTO `timetabletab` (`aNo`,`CourseName`,`Semister`,`SubjectName`,`DayName`,`Period`,`empCode`) VALUES 
 (24,'Bcom','I','null','5.Fri','4',''),
 (25,'Bcom','I','null','5.Fri','5','');
/*!40000 ALTER TABLE `timetabletab` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
