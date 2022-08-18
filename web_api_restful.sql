-- Adminer 4.8.1 MySQL 8.0.26 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `freedb_auth_system`;

CREATE TABLE `agents` (
  `AGENT_NAME` varchar(40) DEFAULT NULL,
  `WORKING_AREA` varchar(35) DEFAULT NULL,
  `COMMISSION` decimal(10,2) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO `agents` (`AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`, `created_at`, `updated_at`, `id`) VALUES
('Ramasundar                              ',	'Bangalore                          ',	0.15,	'077-25814763   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	1),
('Alex                                    ',	'London                             ',	0.13,	'075-12458969   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	2),
('Alford                                  ',	'New York                           ',	0.12,	'044-25874365   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	3),
('Ravi Kumar                              ',	'Bangalore                          ',	0.15,	'077-45625874   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	4),
('Santakumar                              ',	'Chennai                            ',	0.14,	'007-22388644   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	5),
('Lucida                                  ',	'San Jose                           ',	0.12,	'044-52981425   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	6),
('Anderson                                ',	'Brisban                            ',	0.13,	'045-21447739   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	7),
('Subbarao                                ',	'Cairo',	0.90,	'352-21648523',	'\r',	'2022-07-30 18:14:11',	'2022-08-01 13:09:33',	8),
('Mukesh                                  ',	'Mumbai                             ',	0.11,	'029-12358964   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	9),
('McDen                                   ',	'London                             ',	0.15,	'078-22255588   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	10),
('Ivan                                    ',	'Torento                            ',	0.15,	'008-22544166   ',	'\r',	'2022-07-30 18:14:11',	'2022-07-30 18:15:27',	11),
('Samuel',	'Cairo',	0.17,	'325-32586945',	'Egypt',	'2022-08-07 13:36:04',	'2022-08-07 13:36:04',	16),
('Samuel',	'Cairo',	0.17,	'325-32586945',	'Egypt',	'2022-08-07 13:36:53',	'2022-08-07 13:36:53',	17),
('Samuel',	'Cairo',	0.17,	'325-32586945',	'Egypt',	'2022-08-03 11:13:19',	'2022-08-03 11:13:19',	13),
('Samuel',	'Cairo',	1.00,	'325-32586945',	'Egypt',	'2022-08-03 11:28:30',	'2022-08-03 11:28:30',	14),
('John',	'Cairo',	0.17,	'325-32586945',	'Egypt',	'2022-08-03 11:33:24',	'2022-08-03 11:33:24',	15);

CREATE TABLE `companies` (
  `COMPANY_NAME` varchar(25) DEFAULT NULL,
  `COMPANY_CITY` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `COMPANY_ID` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`COMPANY_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `companies` (`COMPANY_NAME`, `COMPANY_CITY`, `created_at`, `updated_at`, `COMPANY_ID`) VALUES
('Order All',	'Boston\r',	'2022-07-30 18:15:26',	'2022-07-30 18:15:28',	1),
('Jack Hill Ltd',	'London\r',	'2022-07-30 18:15:26',	'2022-07-30 18:15:28',	2),
('Akas Foods',	'Delhi\r',	'2022-07-30 18:15:26',	'2022-07-30 18:15:28',	3),
('Foodies.',	'London\r',	'2022-07-30 18:15:26',	'2022-07-30 18:15:28',	4),
('sip-n-Bite.',	'New York\r',	'2022-07-30 18:15:26',	'2022-07-30 18:15:28',	5),
('Vortex',	'Munich',	'2022-08-03 11:31:09',	'2022-08-03 11:31:09',	6),
('Vortex',	'Munich',	'2022-08-03 14:01:19',	'2022-08-03 14:01:19',	7);

CREATE TABLE `customers` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` varchar(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` decimal(10,0) DEFAULT NULL,
  `OPENING_AMT` decimal(12,2) NOT NULL,
  `RECEIVE_AMT` decimal(12,2) NOT NULL,
  `PAYMENT_AMT` decimal(12,2) NOT NULL,
  `OUTSTANDING_AMT` decimal(12,2) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `CUSTCITY` (`CUST_CITY`),
  KEY `CUSTCITY_COUNTRY` (`CUST_CITY`,`CUST_COUNTRY`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO `customers` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`, `id`, `created_at`, `updated_at`) VALUES
('C00013',	'Holmes',	'London                             ',	'London',	'UK',	2,	6000.00,	5000.00,	7000.00,	4000.00,	'BBBBBBB',	'A003  ',	1,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00001',	'Micheal',	'New York                           ',	'New York',	'USA',	2,	3000.00,	5000.00,	2000.00,	6000.00,	'CCCCCCC',	'A008  ',	2,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00020',	'Albert',	'New York                           ',	'New York',	'USA',	3,	5000.00,	7000.00,	6000.00,	6000.00,	'BBBBSBB',	'A008  ',	3,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00025',	'Ravindran',	'Bangalore                          ',	'Bangalore',	'India',	2,	5000.00,	7000.00,	4000.00,	8000.00,	'AVAVAVA',	'A011  ',	4,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00024',	'Cook',	'London                             ',	'London',	'UK',	2,	4000.00,	9000.00,	7000.00,	6000.00,	'FSDDSDF',	'A006  ',	5,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00015',	'Stuart',	'London                             ',	'London',	'UK',	1,	6000.00,	8000.00,	3000.00,	11000.00,	'GFSGERS',	'A003  ',	6,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00002',	'Bolt',	'New York                           ',	'New York',	'USA',	3,	5000.00,	7000.00,	9000.00,	3000.00,	'DDNRDRH',	'A008  ',	7,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00018',	'Fleming',	'Brisban                            ',	'Brisban',	'Australia',	2,	7000.00,	7000.00,	9000.00,	5000.00,	'NHBGVFC',	'A005  ',	8,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00021',	'Jacks',	'Brisban                            ',	'Brisban',	'Australia',	1,	7000.00,	7000.00,	7000.00,	7000.00,	'WERTGDF',	'A005  ',	9,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00019',	'Yearannaidu',	'Chennai                            ',	'Chennai',	'India',	1,	8000.00,	7000.00,	7000.00,	8000.00,	'ZZZZBFV',	'A010  ',	10,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00005',	'Sasikant',	'Mumbai                             ',	'Mumbai',	'India',	1,	7000.00,	11000.00,	7000.00,	11000.00,	'147-25896312',	'A002  ',	11,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00007',	'Ramanathan',	'Chennai                            ',	'Chennai',	'India',	1,	7000.00,	11000.00,	9000.00,	9000.00,	'GHRDWSD',	'A010  ',	12,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00022',	'Avinash',	'Mumbai                             ',	'Mumbai',	'India',	2,	7000.00,	11000.00,	9000.00,	9000.00,	'113-12345678',	'A002  ',	13,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00004',	'Winston',	'Brisban                            ',	'Brisban',	'Australia',	1,	5000.00,	8000.00,	7000.00,	6000.00,	'AAAAAAA',	'A005  ',	14,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00023',	'Karl',	'London                             ',	'London',	'UK',	0,	4000.00,	6000.00,	7000.00,	3000.00,	'AAAABAA',	'A006  ',	15,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00006',	'Shilton',	'Torento                            ',	'Torento',	'Canada',	1,	10000.00,	7000.00,	6000.00,	11000.00,	'DDDDDDD',	'A004  ',	16,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00010',	'Charles',	'Hampshair                          ',	'Hampshair',	'UK',	3,	6000.00,	4000.00,	5000.00,	5000.00,	'MMMMMMM',	'A009  ',	17,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00017',	'Srinivas',	'Bangalore                          ',	'Bangalore',	'India',	2,	8000.00,	4000.00,	3000.00,	9000.00,	'AAAAAAB',	'A007  ',	18,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00012',	'Steven',	'San Jose                           ',	'San Jose',	'USA',	1,	5000.00,	7000.00,	9000.00,	3000.00,	'KRFYGJK',	'A012  ',	19,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00008',	'Karolina',	'Torento                            ',	'Torento',	'Canada',	1,	7000.00,	7000.00,	9000.00,	5000.00,	'HJKORED',	'A004  ',	20,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00003',	'Martin',	'Torento                            ',	'Torento',	'Canada',	2,	8000.00,	7000.00,	7000.00,	8000.00,	'MJYURFD',	'A004  ',	21,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00009',	'Ramesh',	'Mumbai                             ',	'Mumbai',	'India',	3,	8000.00,	7000.00,	3000.00,	12000.00,	'Phone No',	'A002  ',	22,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00014',	'Rangarappa',	'Bangalore                          ',	'Bangalore',	'India',	2,	8000.00,	11000.00,	7000.00,	12000.00,	'AAAATGF',	'A001  ',	23,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00016',	'Venkatpati',	'Bangalore                          ',	'Bangalore',	'India',	2,	8000.00,	11000.00,	7000.00,	12000.00,	'JRTVFDD',	'A007  ',	24,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28'),
('C00011',	'Sundariya',	'Chennai                            ',	'Chennai',	'India',	3,	7000.00,	11000.00,	7000.00,	11000.00,	'PPHGRTS',	'A010  ',	25,	'2022-07-30 18:15:26',	'2022-07-30 18:15:28');

CREATE TABLE `daysorder` (
  `ORD_NUM` decimal(6,0) NOT NULL,
  `ORD_AMOUNT` decimal(12,2) NOT NULL,
  `ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUST_CODE` varchar(6) NOT NULL,
  `AGENT_CODE` varchar(6) NOT NULL,
  `ORD_DESCRIPTION` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `daysorder` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
(200107,	4500.00,	900.00,	'2008-08-30',	'C00007',	'A010',	'SOD\r'),
(200114,	3500.00,	1500.00,	'2008-08-15',	'C00002',	'A008',	'SOD\r'),
(200134,	4200.00,	1800.00,	'2008-09-25',	'C00004',	'A005',	'SOD\r'),
(200115,	2000.00,	1200.00,	'2008-02-08',	'C00013',	'A013',	'SOD\r'),
(200101,	3000.00,	1000.00,	'2008-07-15',	'C00001',	'A008',	'SOD\r'),
(200128,	3500.00,	1500.00,	'2008-07-20',	'C00009',	'A002',	'SOD\r'),
(200132,	4000.00,	1500.00,	'2008-08-15',	'C00013',	'A013',	'SOD\r');

CREATE TABLE `despatch` (
  `DES_NUM` varchar(6) NOT NULL DEFAULT '',
  `DES_DATE` date DEFAULT NULL,
  `DES_AMOUNT` decimal(12,2) DEFAULT NULL,
  `ORD_NUM` decimal(6,0) DEFAULT NULL,
  `ORD_DATE` date DEFAULT NULL,
  `ORD_AMOUNT` decimal(12,2) DEFAULT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`DES_NUM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `foods` (
  `ITEM_ID` varchar(6) NOT NULL DEFAULT '',
  `ITEM_NAME` varchar(25) DEFAULT NULL,
  `ITEM_UNIT` varchar(5) DEFAULT NULL,
  `COMPANY_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `foods` (`ITEM_ID`, `ITEM_NAME`, `ITEM_UNIT`, `COMPANY_ID`) VALUES
('1',	'Chex Mix',	'Pcs',	'16\r'),
('6',	'Cheez-It',	'Pcs',	'15\r'),
('2',	'BN Biscuit',	'Pcs',	'15\r'),
('3',	'Mighty Munch',	'Pcs',	'17\r'),
('4',	'Pot Rice',	'Pcs',	'15\r'),
('5',	'Jaffa Cakes',	'Pcs',	'18\r'),
('7',	'Salt n Shake',	'Pcs',	'\r');

CREATE TABLE `listofitem` (
  `ITEMCODE` varchar(6) NOT NULL,
  `ITEMNAME` varchar(25) NOT NULL,
  `BATCHCODE` varchar(35) NOT NULL,
  `CONAME` varchar(35) DEFAULT NULL,
  UNIQUE KEY `ITEMCODE` (`ITEMCODE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `listofitem` (`ITEMCODE`, `ITEMNAME`, `BATCHCODE`, `CONAME`) VALUES
('I001  ',	'CHOCOLATE                ',	'DM/2007-08/WBM%1                   ',	'\r'),
('I003  ',	'HOT DOG                  ',	'DM/2007-08/WB1                     ',	'ABJ ENTERPRISE                     '),
('I002  ',	'CONDENSED MILK           ',	'DM/2007-08/WBM%2                   ',	'ABJ CONCERN                        ');

CREATE TABLE `orders` (
  `ORD_NUM` decimal(6,0) NOT NULL,
  `ORD_AMOUNT` decimal(12,2) NOT NULL,
  `ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUST_CODE` varchar(6) NOT NULL,
  `AGENT_CODE` varchar(6) NOT NULL,
  `ORD_DESCRIPTION` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
(200100,	1000.00,	600.00,	'2008-01-08',	'C00015',	'A003  ',	'SOD\r'),
(200110,	3000.00,	500.00,	'2008-04-15',	'C00019',	'A010  ',	'SOD\r'),
(200107,	4500.00,	900.00,	'2008-08-30',	'C00007',	'A010  ',	'SOD\r'),
(200112,	2000.00,	400.00,	'2008-05-30',	'C00016',	'A007  ',	'SOD\r'),
(200113,	4000.00,	600.00,	'2008-06-10',	'C00022',	'A002  ',	'SOD\r'),
(200102,	2000.00,	300.00,	'2008-05-25',	'C00012',	'A012  ',	'SOD\r'),
(200114,	3500.00,	2000.00,	'2008-08-15',	'C00002',	'A008  ',	'SOD\r'),
(200122,	2500.00,	400.00,	'2008-09-16',	'C00003',	'A004  ',	'SOD\r'),
(200118,	500.00,	100.00,	'2008-07-20',	'C00023',	'A006  ',	'SOD\r'),
(200119,	4000.00,	700.00,	'2008-09-16',	'C00007',	'A010  ',	'SOD\r'),
(200121,	1500.00,	600.00,	'2008-09-23',	'C00008',	'A004  ',	'SOD\r'),
(200130,	2500.00,	400.00,	'2008-07-30',	'C00025',	'A011  ',	'SOD\r'),
(200134,	4200.00,	1800.00,	'2008-09-25',	'C00004',	'A005  ',	'SOD\r'),
(200115,	2000.00,	1200.00,	'2008-02-08',	'C00013',	'A013  ',	'SOD\r'),
(200108,	4000.00,	600.00,	'2008-02-15',	'C00008',	'A004  ',	'SOD\r'),
(200103,	1500.00,	700.00,	'2008-05-15',	'C00021',	'A005  ',	'SOD\r'),
(200105,	2500.00,	500.00,	'2008-07-18',	'C00025',	'A011  ',	'SOD\r'),
(200109,	3500.00,	800.00,	'2008-07-30',	'C00011',	'A010  ',	'SOD\r'),
(200101,	3000.00,	1000.00,	'2008-07-15',	'C00001',	'A008  ',	'SOD\r'),
(200111,	1000.00,	300.00,	'2008-07-10',	'C00020',	'A008  ',	'SOD\r'),
(200104,	1500.00,	500.00,	'2008-03-13',	'C00006',	'A004  ',	'SOD\r'),
(200106,	2500.00,	700.00,	'2008-04-20',	'C00005',	'A002  ',	'SOD\r'),
(200125,	2000.00,	600.00,	'2008-10-10',	'C00018',	'A005  ',	'SOD\r'),
(200117,	800.00,	200.00,	'2008-10-20',	'C00014',	'A001  ',	'SOD\r'),
(200123,	500.00,	100.00,	'2008-09-16',	'C00022',	'A002  ',	'SOD\r'),
(200120,	500.00,	100.00,	'2008-07-20',	'C00009',	'A002  ',	'SOD\r'),
(200116,	500.00,	100.00,	'2008-07-13',	'C00010',	'A009  ',	'SOD\r'),
(200124,	500.00,	100.00,	'2008-06-20',	'C00017',	'A007  ',	'SOD\r'),
(200126,	500.00,	100.00,	'2008-06-24',	'C00022',	'A002  ',	'SOD\r'),
(200129,	2500.00,	500.00,	'2008-07-20',	'C00024',	'A006  ',	'SOD\r'),
(200127,	2500.00,	400.00,	'2008-07-20',	'C00015',	'A003  ',	'SOD\r'),
(200128,	3500.00,	1500.00,	'2008-07-20',	'C00009',	'A002  ',	'SOD\r'),
(200135,	2000.00,	800.00,	'2008-09-16',	'C00007',	'A010  ',	'SOD\r'),
(200131,	900.00,	150.00,	'2008-08-26',	'C00012',	'A012  ',	'SOD\r'),
(200133,	1200.00,	400.00,	'2008-06-29',	'C00009',	'A002  ',	'SOD\r'),
(200132,	4000.00,	2000.00,	'2008-08-15',	'C00013',	'A013  ',	'SOD\r');

CREATE TABLE `student` (
  `NAME` varchar(30) NOT NULL,
  `TITLE` varchar(25) NOT NULL,
  `CLASS` varchar(5) NOT NULL,
  `SECTION` varchar(1) NOT NULL,
  `ROLLID` decimal(3,0) NOT NULL,
  PRIMARY KEY (`CLASS`,`SECTION`,`ROLLID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `student` (`NAME`, `TITLE`, `CLASS`, `SECTION`, `ROLLID`) VALUES
('Deepak                        ',	'Saxana                   ',	'V    ',	'A',	15),
('Robert                        ',	'Paul                     ',	'VI   ',	'A',	2),
('Danny                         ',	'Moris                    ',	'V    ',	'B',	15);

CREATE TABLE `studentreport` (
  `CLASS` varchar(5) NOT NULL,
  `SECTION` varchar(1) NOT NULL,
  `ROLLID` decimal(3,0) NOT NULL,
  `GRADE` varchar(5) NOT NULL,
  `SEMISTER` varchar(5) DEFAULT NULL,
  `CLASS_ATTENDED` decimal(25,0) DEFAULT NULL,
  KEY `FK_CSR` (`CLASS`,`SECTION`,`ROLLID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `studentreport` (`CLASS`, `SECTION`, `ROLLID`, `GRADE`, `SEMISTER`, `CLASS_ATTENDED`) VALUES
('V    ',	'A',	15,	'A++  ',	'1St  ',	75),
('VI   ',	'A',	2,	'A+   ',	'2Nd  ',	70),
('V    ',	'B',	15,	'AA   ',	'1St  ',	85),
('VI   ',	'A',	2,	'A+   ',	'1St  ',	70),
('V    ',	'A',	15,	'AA   ',	'2Nd  ',	85);

-- 2022-08-17 12:44:00
