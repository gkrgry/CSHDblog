
CREATE TABLE `comment` (
  `cmContent` varchar(200) DEFAULT NULL,
  `cId` int NOT NULL,
  `userId` varchar(45) DEFAULT NULL,
  `cDate` varchar(45) DEFAULT NULL,
  `bId` int DEFAULT NULL,
  `number` int DEFAULT NULL,
  PRIMARY KEY (`cId`)
