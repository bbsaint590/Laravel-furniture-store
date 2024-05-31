# ************************************************************
# Sequel Ace SQL dump
# Version 20067
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 11.3.2-MariaDB-1:11.3.2+maria~ubu2204)
# Database: laravel_furniture_store
# Generation Time: 2024-05-31 15:28:30 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cache_locks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table job_batches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'0001_01_01_000000_create_users_table',1),
	(2,'0001_01_01_000001_create_cache_table',1),
	(3,'0001_01_01_000002_create_jobs_table',1),
	(5,'2024_05_31_093018_create_products_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL,
  `related` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `category_id`, `width`, `height`, `depth`, `price`, `stock`, `related`, `color`, `deleted`)
VALUES
	(1,NULL,NULL,1,1517,2040,1445,49,8,525,'Teal',0),
	(2,NULL,NULL,2,1355,1722,1684,697,2,686,'Teal',0),
	(3,NULL,NULL,3,1823,1515,1907,644,9,378,'Aquamarine',0),
	(4,NULL,NULL,3,1657,2147,2191,612,18,529,'Khaki',0),
	(5,NULL,NULL,2,1754,1267,1768,176,10,521,'Green',0),
	(6,NULL,NULL,4,1494,1956,1985,46,23,910,'Mauv',0),
	(7,NULL,NULL,5,1484,877,929,205,2,457,'Purple',0),
	(8,NULL,NULL,3,886,1270,1180,858,2,537,'Puce',0),
	(9,NULL,NULL,4,1803,1913,1376,747,13,895,'Crimson',0),
	(10,NULL,NULL,4,976,2015,1062,617,10,676,'Puce',0),
	(11,NULL,NULL,4,1746,2145,838,304,9,700,'Aquamarine',0),
	(12,NULL,NULL,4,1143,1637,1778,663,23,251,'Puce',0),
	(13,NULL,NULL,6,1012,1494,1092,388,18,502,'Green',0),
	(14,NULL,NULL,2,1855,983,1730,384,1,129,'Red',0),
	(15,NULL,NULL,1,1472,1157,1358,49,7,503,'Green',0),
	(16,NULL,NULL,6,2020,2124,1965,129,16,125,'Aquamarine',0),
	(17,NULL,NULL,5,2083,1086,1209,60,12,480,'Indigo',0),
	(18,NULL,NULL,5,1133,1149,1775,351,9,80,'Crimson',0),
	(19,NULL,NULL,7,1197,2193,1544,146,10,369,'Khaki',0),
	(20,NULL,NULL,8,2200,1561,1166,456,9,515,'Violet',0),
	(21,NULL,NULL,1,1343,1864,1798,262,24,20,'Orange',0),
	(22,NULL,NULL,1,2197,1044,2192,464,11,454,'Teal',0),
	(23,NULL,NULL,8,1234,1708,1619,766,21,917,'Blue',0),
	(24,NULL,NULL,6,1926,1150,1884,607,10,319,'Goldenrod',0),
	(25,NULL,NULL,9,1549,1222,1972,165,19,732,'Red',0),
	(26,NULL,NULL,8,2092,1123,1859,79,17,25,'Pink',0),
	(27,NULL,NULL,6,2020,1862,2005,53,10,466,'Crimson',0),
	(28,NULL,NULL,1,1324,1283,1637,421,6,790,'Pink',0),
	(29,NULL,NULL,9,1609,2075,1310,215,0,600,'Puce',0),
	(30,NULL,NULL,1,1353,1768,2155,93,0,169,'Crimson',0),
	(31,NULL,NULL,10,1355,1305,1497,588,12,925,'Khaki',0),
	(32,NULL,NULL,1,1449,1300,2197,267,22,485,'Teal',0),
	(33,NULL,NULL,5,961,2121,1863,571,21,409,'Teal',0),
	(34,NULL,NULL,10,1608,1858,1616,72,10,406,'Goldenrod',0),
	(35,NULL,NULL,11,1225,917,1971,551,18,979,'Violet',0),
	(36,NULL,NULL,5,1874,1457,1228,749,18,345,'Orange',0),
	(37,NULL,NULL,4,1951,2190,2188,556,20,200,'Goldenrod',0),
	(38,NULL,NULL,9,1406,868,1272,266,14,794,'Mauv',0),
	(39,NULL,NULL,10,1466,1565,1850,246,6,402,'Violet',0),
	(40,NULL,NULL,5,1139,1527,1887,96,25,211,'Khaki',0),
	(41,NULL,NULL,3,1649,918,1177,336,24,357,'Maroon',0),
	(42,NULL,NULL,10,1980,892,1681,862,22,969,'Fuscia',0),
	(43,NULL,NULL,7,1836,1381,1200,366,11,80,'Green',0),
	(44,NULL,NULL,3,1415,2020,1126,68,1,685,'Goldenrod',0),
	(45,NULL,NULL,7,1450,842,1495,160,11,386,'Violet',0),
	(46,NULL,NULL,8,1283,1577,2133,461,15,378,'Maroon',0),
	(47,NULL,NULL,8,1754,1172,992,287,14,792,'Aquamarine',0),
	(48,NULL,NULL,2,1105,1350,1208,227,1,704,'Yellow',0),
	(49,NULL,NULL,5,1727,2080,2041,410,22,677,'Green',0),
	(50,NULL,NULL,11,970,1458,2091,856,14,32,'Khaki',0),
	(51,NULL,NULL,8,1135,963,1712,806,10,417,'Crimson',0),
	(52,NULL,NULL,11,1903,1577,1515,481,7,550,'Red',0),
	(53,NULL,NULL,8,1043,1696,1659,487,10,240,'Violet',0),
	(54,NULL,NULL,7,1387,1200,2125,641,15,88,'Maroon',0),
	(55,NULL,NULL,11,1593,1364,1973,881,16,250,'Blue',0),
	(56,NULL,NULL,3,1230,1604,1335,547,11,450,'Goldenrod',0),
	(57,NULL,NULL,9,1676,1280,1744,430,6,729,'Red',0),
	(58,NULL,NULL,5,872,1140,1604,479,11,826,'Maroon',0),
	(59,NULL,NULL,5,1114,1458,1452,133,21,969,'Turquoise',0),
	(60,NULL,NULL,10,1110,1580,964,422,16,317,'Turquoise',0),
	(61,NULL,NULL,2,995,1300,1295,429,24,648,'Mauv',0),
	(62,NULL,NULL,1,2111,1936,2003,151,20,550,'Mauv',0),
	(63,NULL,NULL,6,914,1855,1448,793,19,454,'Violet',0),
	(64,NULL,NULL,8,930,1077,1002,680,13,958,'Blue',0),
	(65,NULL,NULL,6,964,1733,1475,352,11,186,'Yellow',0),
	(66,NULL,NULL,7,1762,1438,1463,408,12,741,'Orange',0),
	(67,NULL,NULL,6,1827,854,1809,247,6,258,'Fuscia',0),
	(68,NULL,NULL,8,1627,1913,1283,248,0,474,'Mauv',0),
	(69,NULL,NULL,6,1518,2045,1884,371,7,808,'Green',0),
	(70,NULL,NULL,5,2068,897,984,232,17,838,'Goldenrod',0),
	(71,NULL,NULL,1,986,1825,1659,669,6,589,'Purple',0),
	(72,NULL,NULL,10,816,1514,1748,550,0,200,'Goldenrod',0),
	(73,NULL,NULL,8,1852,1949,1778,506,23,571,'Indigo',0),
	(74,NULL,NULL,4,1973,1412,1408,755,12,606,'Indigo',0),
	(75,NULL,NULL,9,1845,980,974,56,22,715,'Puce',0),
	(76,NULL,NULL,6,2181,1786,1595,69,12,824,'Indigo',0),
	(77,NULL,NULL,3,1734,1357,1941,448,12,546,'Violet',0),
	(78,NULL,NULL,1,2183,1139,962,280,3,391,'Violet',0),
	(79,NULL,NULL,5,2191,1136,2056,746,20,156,'Orange',0),
	(80,NULL,NULL,7,874,1879,858,714,18,219,'Red',0),
	(81,NULL,NULL,2,960,1998,2180,218,9,560,'Indigo',0),
	(82,NULL,NULL,8,1768,1799,1429,855,9,703,'Mauv',0),
	(83,NULL,NULL,5,1584,1531,830,813,15,812,'Mauv',0),
	(84,NULL,NULL,9,928,1657,1402,813,5,695,'Green',0),
	(85,NULL,NULL,1,1055,1700,1277,657,11,427,'Turquoise',0),
	(86,NULL,NULL,9,1132,1468,1276,376,16,69,'Khaki',0),
	(87,NULL,NULL,11,842,1571,2093,220,2,648,'Yellow',0),
	(88,NULL,NULL,3,1389,2135,1486,238,14,880,'Mauv',0),
	(89,NULL,NULL,7,1342,1888,1435,642,15,993,'Green',0),
	(90,NULL,NULL,6,1500,1343,1186,570,9,161,'Puce',0),
	(91,NULL,NULL,4,1248,1480,1873,491,5,945,'Turquoise',0),
	(92,NULL,NULL,8,1121,897,1996,856,18,534,'Khaki',0),
	(93,NULL,NULL,2,1010,1572,1388,284,6,114,'Blue',0),
	(94,NULL,NULL,4,1773,1945,1018,651,8,305,'Red',0),
	(95,NULL,NULL,9,1391,1760,1488,208,20,261,'Goldenrod',0),
	(96,NULL,NULL,5,1503,2046,2042,350,12,998,'Khaki',0),
	(97,NULL,NULL,5,1147,1662,1051,787,22,617,'Mauv',0),
	(98,NULL,NULL,4,1377,1390,1760,230,12,191,'Aquamarine',0),
	(99,NULL,NULL,11,801,1595,1652,827,9,232,'Teal',0),
	(100,NULL,NULL,8,900,2072,909,677,0,131,'Khaki',0),
	(101,NULL,NULL,5,1880,929,934,604,14,242,'Aquamarine',0),
	(102,NULL,NULL,11,2030,2037,828,292,14,793,'Violet',0),
	(103,NULL,NULL,4,1974,1485,1037,883,2,375,'Goldenrod',0),
	(104,NULL,NULL,1,1928,1667,854,755,4,554,'Aquamarine',0),
	(105,NULL,NULL,10,826,1762,842,345,3,664,'Pink',0),
	(106,NULL,NULL,9,1209,817,845,736,2,40,'Red',0),
	(107,NULL,NULL,3,1804,1453,1834,698,18,230,'Red',0),
	(108,NULL,NULL,6,2090,1790,1727,185,18,762,'Yellow',0),
	(109,NULL,NULL,11,968,1029,1597,802,13,987,'Maroon',0),
	(110,NULL,NULL,11,1046,1510,1810,682,7,744,'Purple',0),
	(111,NULL,NULL,10,2076,1719,1320,514,5,540,'Green',0),
	(112,NULL,NULL,6,1002,1869,1853,558,12,685,'Fuscia',0),
	(113,NULL,NULL,10,1461,1524,1604,537,3,837,'Indigo',0),
	(114,NULL,NULL,7,1310,1955,1731,421,13,85,'Fuscia',0),
	(115,NULL,NULL,8,1809,1352,2075,457,15,708,'Blue',0),
	(116,NULL,NULL,4,1564,1348,1831,44,12,41,'Violet',0),
	(117,NULL,NULL,7,1612,1676,1212,160,15,478,'Maroon',0),
	(118,NULL,NULL,2,915,1430,1845,884,1,513,'Green',0),
	(119,NULL,NULL,7,1274,1744,1970,727,6,482,'Aquamarine',0),
	(120,NULL,NULL,1,1470,1347,819,767,11,912,'Fuscia',0),
	(121,NULL,NULL,1,1284,1638,1333,775,3,759,'Mauv',0),
	(122,NULL,NULL,2,2111,814,1684,795,22,76,'Puce',0),
	(123,NULL,NULL,2,1704,1454,1521,508,15,471,'Puce',0),
	(124,NULL,NULL,5,2171,2020,1692,883,20,796,'Violet',0),
	(125,NULL,NULL,6,1456,2032,894,682,23,399,'Puce',0),
	(126,NULL,NULL,4,1101,2174,1724,111,15,319,'Puce',0),
	(127,NULL,NULL,4,1811,1918,1406,429,9,347,'Yellow',0),
	(128,NULL,NULL,8,1912,1031,1028,806,12,461,'Green',0),
	(129,NULL,NULL,4,1506,1828,1709,125,4,538,'Pink',0),
	(130,NULL,NULL,4,1653,1260,1169,141,20,905,'Turquoise',0),
	(131,NULL,NULL,4,1953,1700,1032,47,1,699,'Crimson',0),
	(132,NULL,NULL,6,1346,1017,1924,333,20,796,'Red',0),
	(133,NULL,NULL,4,818,1824,1813,109,4,678,'Green',0),
	(134,NULL,NULL,1,2033,1539,1471,863,25,713,'Orange',0),
	(135,NULL,NULL,5,1535,837,2159,318,21,111,'Violet',0),
	(136,NULL,NULL,9,1794,931,945,521,1,647,'Crimson',0),
	(137,NULL,NULL,7,950,1914,1892,624,8,326,'Green',0),
	(138,NULL,NULL,7,1661,1628,1326,580,19,369,'Pink',0),
	(139,NULL,NULL,1,1935,1246,2125,887,17,467,'Green',0),
	(140,NULL,NULL,1,1742,947,1336,851,7,802,'Pink',0),
	(141,NULL,NULL,3,1722,1746,910,283,18,18,'Violet',0),
	(142,NULL,NULL,3,2182,1782,1358,404,18,711,'Purple',0),
	(143,NULL,NULL,9,1540,2033,1631,620,10,496,'Puce',0),
	(144,NULL,NULL,9,2169,1466,1438,435,23,773,'Fuscia',0),
	(145,NULL,NULL,3,1155,1448,820,270,9,105,'Goldenrod',0),
	(146,NULL,NULL,3,1233,1327,1798,362,25,283,'Crimson',0),
	(147,NULL,NULL,2,911,1346,966,714,13,617,'Turquoise',0),
	(148,NULL,NULL,7,2095,1585,1929,724,24,250,'Orange',0),
	(149,NULL,NULL,4,896,1844,1641,439,5,472,'Mauv',0),
	(150,NULL,NULL,1,1820,1991,1069,336,5,276,'Pink',0),
	(151,NULL,NULL,4,1263,2147,2134,612,23,288,'Red',0),
	(152,NULL,NULL,5,1155,2070,1391,309,24,355,'Maroon',0),
	(153,NULL,NULL,4,980,2019,1118,373,2,935,'Yellow',0),
	(154,NULL,NULL,6,984,1678,1625,135,3,588,'Aquamarine',0),
	(155,NULL,NULL,2,1326,1526,1467,314,24,766,'Yellow',0),
	(156,NULL,NULL,9,1383,1467,1896,842,5,764,'Fuscia',0),
	(157,NULL,NULL,5,2176,870,2050,232,19,280,'Puce',0),
	(158,NULL,NULL,5,1196,850,1651,667,9,785,'Indigo',0),
	(159,NULL,NULL,10,1886,1607,2181,190,7,650,'Maroon',0),
	(160,NULL,NULL,3,1731,1977,1517,177,22,775,'Orange',0),
	(161,NULL,NULL,3,1699,1198,1834,147,7,21,'Red',0),
	(162,NULL,NULL,10,843,1133,1730,550,16,711,'Red',0),
	(163,NULL,NULL,11,861,1417,2000,665,14,132,'Teal',0),
	(164,NULL,NULL,4,1478,1110,1629,346,4,374,'Mauv',0),
	(165,NULL,NULL,7,958,1078,1227,656,18,155,'Maroon',0),
	(166,NULL,NULL,10,1082,1122,1464,117,16,205,'Teal',0),
	(167,NULL,NULL,11,1655,1292,1495,90,19,285,'Violet',0),
	(168,NULL,NULL,10,1578,1331,1303,651,10,175,'Indigo',0),
	(169,NULL,NULL,5,1370,2029,807,633,13,79,'Khaki',0),
	(170,NULL,NULL,10,2082,2119,2111,87,22,793,'Turquoise',0),
	(171,NULL,NULL,1,1675,1804,1281,569,6,656,'Yellow',0),
	(172,NULL,NULL,10,1643,2197,999,119,2,523,'Pink',0),
	(173,NULL,NULL,1,1681,1385,2127,65,16,873,'Green',0),
	(174,NULL,NULL,7,1089,1363,845,802,12,740,'Indigo',0),
	(175,NULL,NULL,10,1117,2162,1195,330,0,412,'Khaki',0),
	(176,NULL,NULL,4,1007,1198,2103,706,8,701,'Maroon',0),
	(177,NULL,NULL,3,1343,958,806,343,18,871,'Teal',0),
	(178,NULL,NULL,5,1447,2198,1044,357,25,356,'Khaki',0),
	(179,NULL,NULL,9,1497,1146,1078,260,3,103,'Mauv',0),
	(180,NULL,NULL,2,819,1626,1587,103,19,738,'Fuscia',0),
	(181,NULL,NULL,2,1503,2116,1743,316,20,901,'Maroon',0),
	(182,NULL,NULL,4,1024,2169,1684,605,2,555,'Crimson',0),
	(183,NULL,NULL,1,830,1996,2196,523,8,708,'Yellow',0),
	(184,NULL,NULL,7,1030,1292,986,648,24,27,'Crimson',0),
	(185,NULL,NULL,9,2037,1704,2124,900,6,849,'Khaki',0),
	(186,NULL,NULL,8,2033,967,1728,207,9,15,'Orange',0),
	(187,NULL,NULL,8,825,1896,1043,573,5,313,'Puce',0),
	(188,NULL,NULL,1,1989,1340,1301,328,5,839,'Blue',0),
	(189,NULL,NULL,3,1073,1629,1615,718,4,873,'Fuscia',0),
	(190,NULL,NULL,9,1593,1634,2015,886,18,835,'Fuscia',0),
	(191,NULL,NULL,8,1823,1537,2161,65,8,615,'Orange',0),
	(192,NULL,NULL,2,1474,1983,1402,710,14,132,'Green',0),
	(193,NULL,NULL,10,1035,2156,1969,606,14,507,'Turquoise',0),
	(194,NULL,NULL,9,1876,960,1159,619,13,164,'Maroon',0),
	(195,NULL,NULL,11,1877,1242,1023,540,24,389,'Mauv',0),
	(196,NULL,NULL,10,842,1547,1319,782,21,128,'Khaki',0),
	(197,NULL,NULL,1,881,2004,1707,848,3,655,'Green',0),
	(198,NULL,NULL,7,1032,1143,1747,829,6,182,'Green',0),
	(199,NULL,NULL,3,1120,1272,1959,528,17,508,'Khaki',0),
	(200,NULL,NULL,10,1426,1065,1838,306,3,83,'Green',0),
	(201,NULL,NULL,1,1857,1552,1842,705,9,693,'Puce',0),
	(202,NULL,NULL,2,1143,928,2122,43,23,623,'Fuscia',0),
	(203,NULL,NULL,8,1160,1305,1183,520,0,868,'Pink',0),
	(204,NULL,NULL,3,1408,1559,1493,93,25,852,'Pink',0),
	(205,NULL,NULL,4,1369,888,948,90,1,798,'Purple',0),
	(206,NULL,NULL,9,825,1393,1851,231,22,929,'Maroon',0),
	(207,NULL,NULL,4,2169,858,2066,70,10,166,'Green',0),
	(208,NULL,NULL,8,1990,1808,1782,790,12,504,'Pink',0),
	(209,NULL,NULL,9,1036,1067,813,563,12,929,'Yellow',0),
	(210,NULL,NULL,2,1544,1110,953,701,14,124,'Red',0),
	(211,NULL,NULL,8,2078,1329,1473,473,8,566,'Turquoise',0),
	(212,NULL,NULL,2,838,935,1773,552,6,900,'Orange',0),
	(213,NULL,NULL,8,1423,1083,1198,267,24,521,'Puce',0),
	(214,NULL,NULL,10,1243,1542,1299,191,16,421,'Pink',0),
	(215,NULL,NULL,7,839,1541,1205,502,7,360,'Khaki',0),
	(216,NULL,NULL,7,1665,1377,1347,577,0,542,'Green',0),
	(217,NULL,NULL,9,1357,1509,977,392,1,402,'Khaki',0),
	(218,NULL,NULL,9,962,1446,1368,126,15,163,'Violet',0),
	(219,NULL,NULL,7,800,1677,1002,646,21,578,'Orange',0),
	(220,NULL,NULL,8,1066,2029,1942,188,22,496,'Teal',0),
	(221,NULL,NULL,7,1865,1326,1171,261,6,7,'Aquamarine',0),
	(222,NULL,NULL,6,1643,2179,2108,696,16,637,'Crimson',0),
	(223,NULL,NULL,3,1387,1108,2111,55,12,963,'Goldenrod',0),
	(224,NULL,NULL,11,1838,1535,1472,57,5,970,'Maroon',0),
	(225,NULL,NULL,8,815,919,1846,700,8,188,'Goldenrod',0),
	(226,NULL,NULL,5,1008,1406,1651,70,14,108,'Orange',0),
	(227,NULL,NULL,5,2100,965,1821,683,13,387,'Khaki',0),
	(228,NULL,NULL,4,1056,869,808,875,9,153,'Teal',0),
	(229,NULL,NULL,3,1043,1942,954,499,11,427,'Green',0),
	(230,NULL,NULL,4,1709,1665,1619,513,20,843,'Fuscia',0),
	(231,NULL,NULL,5,1218,1742,954,880,24,624,'Violet',0),
	(232,NULL,NULL,2,1631,1299,2170,807,25,391,'Indigo',0),
	(233,NULL,NULL,4,2158,1679,1747,279,7,464,'Crimson',0),
	(234,NULL,NULL,5,970,868,1029,247,2,521,'Red',0),
	(235,NULL,NULL,6,1573,1545,905,433,10,638,'Goldenrod',0),
	(236,NULL,NULL,1,1776,1355,1163,400,2,149,'Indigo',0),
	(237,NULL,NULL,6,845,1947,1515,368,11,869,'Crimson',0),
	(238,NULL,NULL,11,1455,1906,1460,66,15,857,'Puce',0),
	(239,NULL,NULL,1,1192,1124,1025,192,18,272,'Turquoise',0),
	(240,NULL,NULL,5,859,2096,1624,153,3,602,'Aquamarine',0),
	(241,NULL,NULL,3,1618,1177,1862,205,12,1,'Red',0),
	(242,NULL,NULL,10,1145,1238,1722,105,1,719,'Yellow',0),
	(243,NULL,NULL,11,953,1493,835,861,15,174,'Green',0),
	(244,NULL,NULL,2,1689,2187,1518,884,23,312,'Aquamarine',0),
	(245,NULL,NULL,9,1654,1158,1041,827,24,144,'Yellow',0),
	(246,NULL,NULL,8,1268,1919,2086,230,6,833,'Red',0),
	(247,NULL,NULL,1,1605,910,1832,841,17,335,'Purple',0),
	(248,NULL,NULL,4,1318,1318,1739,288,20,157,'Red',0),
	(249,NULL,NULL,10,1018,1975,895,585,15,46,'Yellow',0),
	(250,NULL,NULL,6,1776,1168,1031,788,3,309,'Yellow',0),
	(251,NULL,NULL,6,1126,1367,1992,34,8,550,'Khaki',0),
	(252,NULL,NULL,2,1246,1843,1116,737,6,423,'Turquoise',0),
	(253,NULL,NULL,11,1416,1101,889,828,9,63,'Orange',0),
	(254,NULL,NULL,6,1811,1860,1909,37,6,989,'Fuscia',0),
	(255,NULL,NULL,6,994,920,962,757,14,35,'Aquamarine',0),
	(256,NULL,NULL,6,2145,1757,1811,462,19,597,'Teal',0),
	(257,NULL,NULL,8,1370,931,1632,389,5,601,'Khaki',0),
	(258,NULL,NULL,9,1822,2007,915,840,0,224,'Blue',0),
	(259,NULL,NULL,5,1766,819,1270,225,10,13,'Puce',0),
	(260,NULL,NULL,4,1936,1922,2079,106,14,376,'Puce',0),
	(261,NULL,NULL,5,1051,2025,1139,266,11,601,'Indigo',0),
	(262,NULL,NULL,11,1269,1057,2008,670,12,164,'Green',0),
	(263,NULL,NULL,7,2078,2183,1230,362,20,342,'Crimson',0),
	(264,NULL,NULL,1,1374,1051,1986,247,1,595,'Blue',0),
	(265,NULL,NULL,5,1708,1156,1896,795,8,534,'Maroon',0),
	(266,NULL,NULL,8,957,1348,2040,369,8,2,'Fuscia',0),
	(267,NULL,NULL,10,1645,863,2124,832,0,657,'Green',0),
	(268,NULL,NULL,6,1121,2172,1117,94,12,966,'Fuscia',0),
	(269,NULL,NULL,10,1500,1892,2015,53,11,775,'Indigo',0),
	(270,NULL,NULL,2,1602,1128,2037,46,21,254,'Blue',0),
	(271,NULL,NULL,6,845,1952,2177,208,9,669,'Red',0),
	(272,NULL,NULL,1,1984,892,1724,27,15,243,'Green',0),
	(273,NULL,NULL,1,2194,1567,930,361,11,142,'Indigo',0),
	(274,NULL,NULL,2,1623,1050,1785,104,5,406,'Puce',0),
	(275,NULL,NULL,9,1744,1613,1098,465,15,499,'Red',0),
	(276,NULL,NULL,10,1147,1692,1912,127,12,564,'Mauv',0),
	(277,NULL,NULL,11,1025,1867,1909,274,13,982,'Orange',0),
	(278,NULL,NULL,2,1697,1818,1709,384,13,687,'Fuscia',0),
	(279,NULL,NULL,10,2042,2129,1342,149,14,600,'Red',0),
	(280,NULL,NULL,9,1491,1604,1546,146,25,691,'Blue',0),
	(281,NULL,NULL,10,1898,1815,1492,371,22,853,'Aquamarine',0),
	(282,NULL,NULL,5,1057,1467,1601,263,22,264,'Indigo',0),
	(283,NULL,NULL,1,1980,2090,1700,551,12,132,'Teal',0),
	(284,NULL,NULL,5,996,2101,1268,434,12,567,'Mauv',0),
	(285,NULL,NULL,8,1667,2069,1971,29,10,684,'Fuscia',0),
	(286,NULL,NULL,11,2135,1049,1632,835,3,501,'Aquamarine',0),
	(287,NULL,NULL,1,961,816,2099,802,8,637,'Red',0),
	(288,NULL,NULL,9,809,1644,2093,326,3,232,'Blue',0),
	(289,NULL,NULL,2,2132,2105,1432,207,24,901,'Blue',0),
	(290,NULL,NULL,9,1674,2166,1412,885,3,506,'Green',0),
	(291,NULL,NULL,8,946,1091,1260,27,0,121,'Turquoise',0),
	(292,NULL,NULL,4,1957,1961,1346,161,6,883,'Violet',0),
	(293,NULL,NULL,6,1405,860,1027,672,8,995,'Pink',0),
	(294,NULL,NULL,10,1914,933,2145,384,11,686,'Mauv',0),
	(295,NULL,NULL,5,1437,1776,1339,622,8,395,'Teal',0),
	(296,NULL,NULL,5,1655,2179,1638,863,3,443,'Puce',0),
	(297,NULL,NULL,5,1418,1319,1158,125,11,208,'Maroon',0),
	(298,NULL,NULL,9,1641,2004,1138,107,8,587,'Goldenrod',0),
	(299,NULL,NULL,6,815,1083,1991,430,4,540,'Puce',0),
	(300,NULL,NULL,6,1821,1026,1248,284,4,37,'Teal',0),
	(301,NULL,NULL,6,1830,1812,1684,797,1,940,'Blue',0),
	(302,NULL,NULL,1,1641,1560,1194,421,25,113,'Violet',0),
	(303,NULL,NULL,6,1838,2187,999,583,17,242,'Aquamarine',0),
	(304,NULL,NULL,4,1691,1364,1177,330,2,768,'Fuscia',0),
	(305,NULL,NULL,5,1731,1025,1049,577,11,95,'Puce',0),
	(306,NULL,NULL,10,1614,1610,837,665,13,139,'Purple',0),
	(307,NULL,NULL,3,1196,1556,2115,848,15,878,'Maroon',0),
	(308,NULL,NULL,2,921,2199,1714,249,24,811,'Red',0),
	(309,NULL,NULL,10,939,1060,1374,436,19,34,'Crimson',0),
	(310,NULL,NULL,11,1062,1537,1996,149,25,987,'Aquamarine',0),
	(311,NULL,NULL,6,1274,1456,1731,604,0,385,'Maroon',0),
	(312,NULL,NULL,7,1898,1012,1697,687,19,23,'Purple',0),
	(313,NULL,NULL,2,1917,1649,1924,572,4,776,'Puce',0),
	(314,NULL,NULL,11,987,1923,949,263,20,229,'Puce',0),
	(315,NULL,NULL,1,808,1390,1381,830,20,748,'Crimson',0),
	(316,NULL,NULL,8,1712,1785,1784,572,6,269,'Puce',0),
	(317,NULL,NULL,6,843,1633,1095,678,14,107,'Turquoise',0),
	(318,NULL,NULL,3,1146,2052,1262,417,21,342,'Violet',0),
	(319,NULL,NULL,7,1644,1793,1646,752,19,140,'Purple',0),
	(320,NULL,NULL,1,1125,1841,1979,33,4,657,'Indigo',0),
	(321,NULL,NULL,5,945,2042,2172,857,8,963,'Turquoise',0),
	(322,NULL,NULL,8,1229,1760,1014,886,7,382,'Goldenrod',0),
	(323,NULL,NULL,1,1803,1912,2118,468,25,43,'Violet',0),
	(324,NULL,NULL,8,1649,805,1030,205,8,302,'Khaki',0),
	(325,NULL,NULL,4,1665,2010,1443,313,24,830,'Aquamarine',0),
	(326,NULL,NULL,5,2138,1879,1315,766,24,703,'Green',0),
	(327,NULL,NULL,5,1612,2116,1182,687,0,10,'Indigo',0),
	(328,NULL,NULL,1,1462,1528,1379,894,17,532,'Puce',0),
	(329,NULL,NULL,10,1135,1692,1696,851,18,707,'Yellow',0),
	(330,NULL,NULL,9,1482,1774,1428,401,24,28,'Orange',0),
	(331,NULL,NULL,6,1167,1334,2107,698,17,303,'Orange',0),
	(332,NULL,NULL,11,1388,2186,1355,433,22,624,'Teal',0),
	(333,NULL,NULL,6,1793,2056,1192,816,18,313,'Goldenrod',0),
	(334,NULL,NULL,8,1134,1627,1676,405,6,844,'Puce',0),
	(335,NULL,NULL,8,1116,1346,1437,533,5,726,'Green',0),
	(336,NULL,NULL,3,1693,905,853,183,10,783,'Fuscia',0),
	(337,NULL,NULL,9,1265,1672,925,103,17,191,'Turquoise',0),
	(338,NULL,NULL,3,1533,1778,1985,455,5,799,'Red',0),
	(339,NULL,NULL,9,2088,1715,1940,664,10,859,'Orange',0),
	(340,NULL,NULL,6,1374,878,1909,507,0,294,'Blue',0),
	(341,NULL,NULL,4,1130,1712,1421,891,25,182,'Khaki',0),
	(342,NULL,NULL,5,2093,2139,1278,707,10,975,'Violet',0),
	(343,NULL,NULL,6,2022,1714,1794,710,24,349,'Mauv',0),
	(344,NULL,NULL,9,1139,1109,1319,757,5,859,'Maroon',0),
	(345,NULL,NULL,4,1918,2184,823,80,23,832,'Aquamarine',0),
	(346,NULL,NULL,8,1502,1786,2015,547,14,121,'Mauv',0),
	(347,NULL,NULL,3,1801,1678,1518,184,17,483,'Pink',0),
	(348,NULL,NULL,4,1492,2049,1149,696,20,194,'Green',0),
	(349,NULL,NULL,10,1044,1524,940,857,9,216,'Goldenrod',0),
	(350,NULL,NULL,2,2015,1681,917,874,24,732,'Aquamarine',0),
	(351,NULL,NULL,6,999,1033,1090,157,24,491,'Purple',0),
	(352,NULL,NULL,11,1943,1164,1798,259,1,54,'Goldenrod',0),
	(353,NULL,NULL,8,956,2074,2122,323,17,150,'Turquoise',0),
	(354,NULL,NULL,1,1938,2034,1784,367,7,101,'Fuscia',0),
	(355,NULL,NULL,5,1099,957,1853,515,21,88,'Red',0),
	(356,NULL,NULL,6,1770,1388,927,855,25,301,'Maroon',0),
	(357,NULL,NULL,1,1166,1731,1903,372,15,99,'Green',0),
	(358,NULL,NULL,5,2063,1213,1583,351,23,628,'Goldenrod',0),
	(359,NULL,NULL,3,1110,1311,2030,178,11,936,'Crimson',0),
	(360,NULL,NULL,9,1144,1437,1596,107,6,489,'Fuscia',0),
	(361,NULL,NULL,8,1176,837,1814,869,24,193,'Fuscia',0),
	(362,NULL,NULL,10,1322,1257,1256,704,19,665,'Mauv',0),
	(363,NULL,NULL,2,2184,1183,1527,126,3,497,'Blue',0),
	(364,NULL,NULL,6,1380,1745,2032,53,8,264,'Khaki',0),
	(365,NULL,NULL,5,1704,1191,1986,810,23,198,'Orange',0),
	(366,NULL,NULL,9,1081,1577,1640,694,2,979,'Red',0),
	(367,NULL,NULL,2,1292,1611,1991,144,6,391,'Khaki',0),
	(368,NULL,NULL,4,2049,1498,1551,399,13,325,'Red',0),
	(369,NULL,NULL,10,1381,1999,1432,847,16,526,'Red',0),
	(370,NULL,NULL,7,1459,1480,1920,608,24,763,'Green',0),
	(371,NULL,NULL,10,1325,1098,1735,682,24,338,'Puce',0),
	(372,NULL,NULL,11,884,1434,1837,158,17,702,'Khaki',0),
	(373,NULL,NULL,9,2161,1873,1825,719,18,789,'Orange',0),
	(374,NULL,NULL,3,1583,1720,1149,102,4,568,'Orange',0),
	(375,NULL,NULL,4,913,1138,1798,527,9,360,'Red',0),
	(376,NULL,NULL,2,1616,2022,1461,325,25,297,'Green',0),
	(377,NULL,NULL,9,1617,2008,1761,587,21,813,'Mauv',0),
	(378,NULL,NULL,2,1962,1034,1480,626,20,35,'Orange',0),
	(379,NULL,NULL,4,1570,1061,982,421,12,716,'Yellow',0),
	(380,NULL,NULL,2,2177,1650,2188,343,4,681,'Yellow',0),
	(381,NULL,NULL,4,1490,850,1030,493,12,882,'Puce',0),
	(382,NULL,NULL,9,1788,829,1493,762,10,676,'Red',0),
	(383,NULL,NULL,11,1525,920,936,185,23,785,'Blue',0),
	(384,NULL,NULL,2,1374,1735,1193,753,8,238,'Green',0),
	(385,NULL,NULL,4,1330,1734,1370,458,23,408,'Goldenrod',0),
	(386,NULL,NULL,2,1244,1067,1371,840,18,691,'Blue',0),
	(387,NULL,NULL,2,2078,1652,1076,409,23,885,'Fuscia',0),
	(388,NULL,NULL,2,1904,1255,2093,294,11,811,'Violet',0),
	(389,NULL,NULL,6,1284,1255,1906,454,19,731,'Purple',0),
	(390,NULL,NULL,7,883,868,1902,856,13,934,'Pink',0),
	(391,NULL,NULL,4,1179,969,1851,740,7,757,'Goldenrod',0),
	(392,NULL,NULL,9,1969,1957,1146,882,25,528,'Teal',0),
	(393,NULL,NULL,2,1966,1419,1623,172,7,357,'Indigo',0),
	(394,NULL,NULL,4,1555,1049,1030,91,17,757,'Indigo',0),
	(395,NULL,NULL,3,1681,1693,1668,568,2,35,'Khaki',0),
	(396,NULL,NULL,1,1653,1946,1922,329,3,50,'Pink',0),
	(397,NULL,NULL,3,2021,1839,950,89,17,346,'Aquamarine',0),
	(398,NULL,NULL,3,816,2050,1151,370,18,376,'Orange',0),
	(399,NULL,NULL,3,1333,1674,1842,728,12,620,'Goldenrod',0),
	(400,NULL,NULL,1,2166,1999,1651,550,19,639,'Goldenrod',0),
	(401,NULL,NULL,9,1335,1806,1115,126,22,77,'Goldenrod',0),
	(402,NULL,NULL,10,1579,847,831,899,9,192,'Indigo',0),
	(403,NULL,NULL,9,1686,1773,948,385,3,334,'Khaki',0),
	(404,NULL,NULL,10,1920,1957,1914,516,19,223,'Yellow',0),
	(405,NULL,NULL,5,1396,1571,1899,524,1,578,'Crimson',0),
	(406,NULL,NULL,2,1249,887,1317,305,9,92,'Fuscia',0),
	(407,NULL,NULL,5,1892,1917,1781,774,6,690,'Khaki',0),
	(408,NULL,NULL,11,1869,1518,1608,100,14,800,'Violet',0),
	(409,NULL,NULL,8,1950,2110,1882,636,1,259,'Yellow',0),
	(410,NULL,NULL,10,1807,1161,931,749,0,688,'Maroon',0),
	(411,NULL,NULL,11,1771,1798,1981,788,24,704,'Orange',0),
	(412,NULL,NULL,4,1249,907,2115,724,8,931,'Violet',0),
	(413,NULL,NULL,1,832,1463,1380,740,19,9,'Aquamarine',0),
	(414,NULL,NULL,8,1055,1734,800,882,8,119,'Purple',0),
	(415,NULL,NULL,3,1796,1870,2055,380,9,134,'Indigo',0),
	(416,NULL,NULL,2,1655,1860,1394,385,17,948,'Goldenrod',0),
	(417,NULL,NULL,9,2068,1752,1598,331,10,750,'Yellow',0),
	(418,NULL,NULL,6,1051,1521,1352,413,6,332,'Teal',0),
	(419,NULL,NULL,10,1498,1203,893,742,8,293,'Maroon',0),
	(420,NULL,NULL,5,1649,1383,1063,429,2,843,'Mauv',0),
	(421,NULL,NULL,5,1466,1352,1230,299,14,356,'Mauv',0),
	(422,NULL,NULL,5,1697,1676,991,824,15,827,'Teal',0),
	(423,NULL,NULL,6,830,947,1852,134,15,232,'Teal',0),
	(424,NULL,NULL,1,1916,889,1850,399,12,373,'Mauv',0),
	(425,NULL,NULL,8,1690,1312,1376,292,18,269,'Turquoise',0),
	(426,NULL,NULL,1,1158,1768,1775,592,19,482,'Orange',0),
	(427,NULL,NULL,7,1002,958,1363,496,6,765,'Goldenrod',0),
	(428,NULL,NULL,1,1156,1407,1189,99,20,715,'Crimson',0),
	(429,NULL,NULL,10,896,945,1190,672,0,731,'Crimson',0),
	(430,NULL,NULL,7,1519,1645,1885,589,19,210,'Violet',0),
	(431,NULL,NULL,8,1549,1252,2119,352,24,746,'Red',0),
	(432,NULL,NULL,2,2194,1637,1552,428,9,653,'Crimson',0),
	(433,NULL,NULL,10,992,852,1441,87,23,875,'Aquamarine',0),
	(434,NULL,NULL,8,1304,1625,1708,668,4,238,'Purple',0),
	(435,NULL,NULL,8,1951,1917,2006,129,13,88,'Puce',0),
	(436,NULL,NULL,1,1593,1804,1173,549,19,653,'Mauv',0),
	(437,NULL,NULL,9,993,1520,1315,150,10,430,'Red',0),
	(438,NULL,NULL,10,1379,2025,1045,255,13,974,'Mauv',0),
	(439,NULL,NULL,4,2079,1182,1116,164,17,584,'Crimson',0),
	(440,NULL,NULL,3,1527,919,1946,599,21,280,'Blue',0),
	(441,NULL,NULL,6,996,993,1920,270,23,934,'Green',0),
	(442,NULL,NULL,8,991,986,974,474,13,107,'Red',0),
	(443,NULL,NULL,1,926,2016,955,235,12,473,'Yellow',0),
	(444,NULL,NULL,9,1658,1810,866,658,2,874,'Purple',0),
	(445,NULL,NULL,6,1812,1865,2142,824,13,735,'Turquoise',0),
	(446,NULL,NULL,1,1579,1442,1511,300,19,361,'Khaki',0),
	(447,NULL,NULL,3,2063,1215,1665,715,20,304,'Aquamarine',0),
	(448,NULL,NULL,7,1035,1530,1395,107,14,84,'Turquoise',0),
	(449,NULL,NULL,5,1423,1769,1094,792,6,701,'Red',0),
	(450,NULL,NULL,3,1179,1691,1490,450,24,708,'Fuscia',0),
	(451,NULL,NULL,10,1074,1186,1202,425,2,149,'Pink',0),
	(452,NULL,NULL,5,1977,1772,1984,581,19,42,'Orange',0),
	(453,NULL,NULL,9,1688,1089,2127,502,4,143,'Goldenrod',0),
	(454,NULL,NULL,8,1807,1226,917,723,16,115,'Maroon',0),
	(455,NULL,NULL,3,1073,1587,1736,682,3,891,'Blue',0),
	(456,NULL,NULL,5,1758,1610,2042,285,22,290,'Pink',0),
	(457,NULL,NULL,8,1597,1981,2168,305,7,880,'Blue',0),
	(458,NULL,NULL,1,1114,1395,866,419,22,775,'Orange',0),
	(459,NULL,NULL,10,1943,1221,1304,827,23,68,'Teal',0),
	(460,NULL,NULL,11,1207,1263,1415,76,24,913,'Aquamarine',0),
	(461,NULL,NULL,7,1787,1787,1639,143,9,639,'Fuscia',0),
	(462,NULL,NULL,9,1087,1596,859,220,6,464,'Blue',0),
	(463,NULL,NULL,11,2046,2159,2078,283,0,650,'Blue',0),
	(464,NULL,NULL,4,1470,1672,1397,48,1,515,'Green',0),
	(465,NULL,NULL,5,2015,1734,1596,315,5,723,'Pink',0),
	(466,NULL,NULL,7,1870,1975,1322,100,8,829,'Blue',0),
	(467,NULL,NULL,3,1235,1883,1427,107,15,947,'Goldenrod',0),
	(468,NULL,NULL,7,1260,859,830,42,12,673,'Yellow',0),
	(469,NULL,NULL,3,1800,1109,817,779,5,832,'Red',0),
	(470,NULL,NULL,7,869,1437,2191,680,12,722,'Fuscia',0),
	(471,NULL,NULL,10,1853,1747,1449,487,11,729,'Turquoise',0),
	(472,NULL,NULL,4,834,888,1272,432,24,223,'Pink',0),
	(473,NULL,NULL,10,1297,1833,855,606,22,101,'Turquoise',0),
	(474,NULL,NULL,10,1513,2061,1626,770,20,179,'Yellow',0),
	(475,NULL,NULL,6,1429,803,2168,560,7,671,'Orange',0),
	(476,NULL,NULL,8,1133,1883,2158,78,14,935,'Aquamarine',0),
	(477,NULL,NULL,8,878,1167,1365,585,2,496,'Teal',0),
	(478,NULL,NULL,5,1884,1740,1470,843,18,983,'Blue',0),
	(479,NULL,NULL,2,1309,1249,1741,326,18,183,'Pink',0),
	(480,NULL,NULL,1,1233,1174,975,851,3,159,'Purple',0),
	(481,NULL,NULL,10,1966,994,1852,635,8,638,'Mauv',0),
	(482,NULL,NULL,11,1454,1739,808,274,2,710,'Red',0),
	(483,NULL,NULL,6,1097,1556,2153,566,21,557,'Violet',0),
	(484,NULL,NULL,8,2169,1034,824,878,25,939,'Aquamarine',0),
	(485,NULL,NULL,11,1978,916,1604,259,13,164,'Aquamarine',0),
	(486,NULL,NULL,3,2172,1507,947,286,7,641,'Khaki',0),
	(487,NULL,NULL,3,1596,1919,905,572,9,824,'Aquamarine',0),
	(488,NULL,NULL,5,2074,836,1901,337,8,311,'Maroon',0),
	(489,NULL,NULL,6,1091,1997,1863,261,22,891,'Crimson',0),
	(490,NULL,NULL,10,1091,1550,2022,207,14,452,'Khaki',0),
	(491,NULL,NULL,9,1317,1346,995,827,1,307,'Khaki',0),
	(492,NULL,NULL,2,1566,1462,847,392,21,214,'Goldenrod',0),
	(493,NULL,NULL,7,1839,879,2021,279,9,511,'Teal',0),
	(494,NULL,NULL,8,842,1567,1385,679,24,898,'Red',0),
	(495,NULL,NULL,1,983,1155,1076,397,14,155,'Indigo',0),
	(496,NULL,NULL,4,2135,1689,928,613,24,509,'Crimson',0),
	(497,NULL,NULL,4,949,1419,1191,851,13,139,'Aquamarine',0),
	(498,NULL,NULL,7,1264,1602,1694,313,12,41,'Orange',0),
	(499,NULL,NULL,10,1224,1968,1954,179,22,385,'Indigo',0),
	(500,NULL,NULL,7,1703,923,1787,534,4,141,'Purple',0);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`)
VALUES
	('719I55F7Ig2qtV7apvptBKDQeLfOdCEn4MY4QP5E',NULL,'192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:126.0) Gecko/20100101 Firefox/126.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTBtakJGSTNiR3cwcm5xdkNPenJvODI5SEVxRzZUQ0NvU1dvNXBGMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0cy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1717168534);

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
