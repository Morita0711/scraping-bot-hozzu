/*
SQLyog Community
MySQL - 10.1.38-MariaDB : Database - houzz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`houzz` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `houzz`;

/*Table structure for table `tbl_data` */

DROP TABLE IF EXISTS `tbl_data`;

CREATE TABLE `tbl_data` (
  `did` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `dcategory` varchar(50) DEFAULT NULL COMMENT 'klTmwn',
  `dcontact_details` varchar(50) DEFAULT NULL COMMENT 'bkjkrD(1)',
  `dpersonal_name` varchar(50) DEFAULT NULL COMMENT 'sc-183mtny-0',
  `daddress` varchar(100) DEFAULT NULL COMMENT 'bkjkrD(3)',
  `daverage_star_rating` float DEFAULT NULL COMMENT 'hz-star-rate__rating-number',
  `dnumber_of_reviews` int(10) DEFAULT NULL COMMENT 'hz-star-rate__review-string:nth-of-type(1)',
  `dwebsite` varchar(200) DEFAULT NULL COMMENT 'bkjkrD(2)',
  `dinstagram_details` varchar(200) DEFAULT NULL COMMENT 'bkjkrD(5)',
  `dtypical_job_cost_or_price_range` varchar(50) DEFAULT NULL COMMENT 'bkjkrD(4)',
  `dnumber_of_times_hired` int(10) DEFAULT NULL COMMENT 'eFAbnJ',
  `twitter` varchar(200) DEFAULT NULL COMMENT 'aria-label="Find me on Facebook"',
  `facebook` varchar(200) DEFAULT NULL COMMENT 'aria-label="Find me on Linkedin"',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_data` */

/*Table structure for table `tbl_main` */

DROP TABLE IF EXISTS `tbl_main`;

CREATE TABLE `tbl_main` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `part_name` varchar(70) DEFAULT NULL,
  `part_url` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_main` */

insert  into `tbl_main`(`mid`,`part_name`,`part_url`) values 
(1,'Interior Designers & Decorators','/interior-designers-and-decorators'),
(2,'Architects','/architects'),
(3,'Home Builders','/home-builders'),
(4,'Building Designers','/building-designers'),
(5,'Kitchen Designers & Renovators','/kitchen-designers-and-renovators'),
(6,'Design & Construction','/design-and-construction'),
(7,'Joinery & Cabinet Makers','/joinery-and-cabinet-makers'),
(8,'Bathroom Designers & Renovators','/bathroom-designers-and-renovators'),
(9,'Furniture & Home Decor','/furniture-and-home-decor'),
(10,'Tile, Stone & Benchtops','/tile-stone-and-benchtops'),
(11,'Doors','/doors'),
(12,'Shutters, Blinds & Curtains','/shutters-blinds-and-curtains'),
(13,'Lighting','/lighting'),
(14,'Kitchen & Bath Fixtures','/kitchen-and-bath-fixtures'),
(15,'Carpenters','/carpenters'),
(16,'Windows','/windows'),
(17,'Home Storage Designers & Professional Organisers','/home-storage-designers-and-professional-organisers'),
(18,'Building Supplies','/building-supplies'),
(19,'Garage Doors','/garage-doors'),
(20,'Staircases & Balustrades','/staircases-and-balustrades'),
(21,'Stone, Pavers & Concrete','/stone-pavers-and-concrete'),
(22,'Renderers & Plasterers','/renderers-and-plasterers'),
(23,'Carpet & Flooring','/carpet-and-flooring'),
(24,'Blacksmiths & Welders','/blacksmiths-and-welders'),
(25,'Artists & Artisans','/artists-and-artisans'),
(26,'Fireplaces','/fireplaces'),
(27,'Specialty Contractors','/specialty-contractors'),
(28,'Landscape Architects & Landscape Designers','/landscape-architects-and-landscape-designers'),
(29,'Landscape Contractors & Gardeners','/landscape-contractors-and-gardeners'),
(30,'Decks, Patios & Outdoor Structures','/decks-patios-and-outdoor-structures'),
(31,'Fencing & Gates','/fencing-and-gates'),
(32,'Pools & Spas','/pools-and-spas'),
(33,'Driveways & Paving','/driveways-and-paving'),
(34,'Garden & Landscape Supplies','/garden-and-landscape-supplies'),
(35,'Arborists & Tree Services','/arborists-and-tree-services'),
(36,'Painting & Wallpaper','/painting-and-wallpaper'),
(37,'Furniture Restoration & Upholstery','/furniture-restoration-and-upholstery'),
(38,'Removalists & Storage','/removalists');

/*Table structure for table `tbl_professionals` */

DROP TABLE IF EXISTS `tbl_professionals`;

CREATE TABLE `tbl_professionals` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `page_number` int(3) DEFAULT NULL,
  `purl` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_professionals` */

insert  into `tbl_professionals`(`pid`,`mid`,`page_number`,`purl`) values 
(1,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/karanda-interiors-pfvwau-pf~219436445'),
(2,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/emme-designs-pfvwau-pf~1325602064'),
(3,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/dani-louis-design-pfvwau-pf~503457392'),
(4,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/moda-interiors-pfvwau-pf~2081036317'),
(5,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/santamaria-design-pfvwau-pf~629276393'),
(6,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/sartorial-interiors-pfvwau-pf~940023091'),
(7,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/studio-black-interiors-pfvwau-pf~791071524'),
(8,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/mi-designer-styling-pfvwau-pf~1351185939'),
(9,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/kylie-sargent-pfvwau-pf~755109021'),
(10,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/motivo-design-studio-pfvwau-pf~1350748267'),
(11,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/edwina-harris-interior-design-pfvwau-pf~151485639'),
(12,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/my-beautiful-abode-pfvwau-pf~973130454'),
(13,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/interior-design-by-jo-pfvwau-pf~1385184286'),
(14,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/greenwood-s-home-pfvwau-pf~1577659624'),
(15,1,0,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/tennille-joy-interiors-pfvwau-pf~1863138780'),
(16,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/jodie-carter-design-pfvwau-pf~914479504'),
(17,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/anoushka-allum-design-pfvwau-pf~218154665'),
(18,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/gdp-interior-design-pfvwau-pf~503597804'),
(19,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/key-piece-pfvwau-pf~1795373434'),
(20,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/advantage-interior-design-pfvwau-pf~1763485907'),
(21,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/designtank-pfvwau-pf~1417806585'),
(22,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/clare-pullen-designs-pfvwau-pf~2015207351'),
(23,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/brinnie-t-design-pfvwau-pf~1007853273'),
(24,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/ioanna-lennox-interiors-pfvwau-pf~151156715'),
(25,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/concepts-interior-design-pfvwau-pf~1167085389'),
(26,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/style-by-gillian-design-renovate-pfvwau-pf~1989519828'),
(27,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/jasmine-mcclelland-design-pfvwau-pf~848099362'),
(28,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/jane-brown-interiors-pfvwau-pf~1795416038'),
(29,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/mcmillan-design-pfvwau-pf~1168971717'),
(30,1,1,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/dsdezines-interiors-pfvwau-pf~1862294756'),
(31,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/the-den-interiors-pfvwau-pf~60137394'),
(32,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/schemes-and-spaces-pfvwau-pf~1352020395'),
(33,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/eat-bathe-live-pfvwau-pf~1954719033'),
(34,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/popham-interiors-pfvwau-pf~1544458233'),
(35,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/alix-helps-interiors-pfvwau-pf~277799803'),
(36,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/lewisham-interiors-pfvwau-pf~1888439911'),
(37,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/showhomes-with-tracey-mcleod-pfvwau-pf~1476573231'),
(38,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/three-little-pigs-colour-and-design-pfvwau-pf~126007540'),
(39,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/jenny-ford-design-pfvwau-pf~2115439056'),
(40,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/camilla-molders-design-pfvwau-pf~1040283888'),
(41,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/fuchsia-interiors-pfvwau-pf~630076585'),
(42,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/green-room-interiors-pfvwau-pf~662784428'),
(43,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/berkeley-interiors-pfvwau-pf~1545938469'),
(44,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/the-little-design-corner-pfvwau-pf~1040834624'),
(45,1,2,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/lisa-cannon-interior-design-pfvwau-pf~1454225948'),
(46,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/patrick-meneguzzi-interiors-pfvwau-pf~1476443191'),
(47,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/studio-1-interiors-pfvwau-pf~1134953210'),
(48,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/set-the-stage-101-pfvwau-pf~1706946389'),
(49,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/kenz-interiors-interior-designer-pfvwau-pf~1453676652'),
(50,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/colour-confidence-interiors-pfvwau-pf~1703915633'),
(51,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/provoke-design-pfvwau-pf~219142541'),
(52,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/the-design-chaperone-pfvwau-pf~1226242327'),
(53,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/style-and-harmony-pfvwau-pf~1921779670'),
(54,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/bask-interiors-pfvwau-pf~151011379'),
(55,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/angela-smith-interiors-pfvwau-pf~813710743'),
(56,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/d-cruz-design-group-pfvwau-pf~1670363358'),
(57,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/connors-and-co-pfvwau-pf~1544630745'),
(58,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/alana-o-interiors-pfvwau-pf~93071565'),
(59,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/adam-scougall-design-pfvwau-pf~1761894671'),
(60,1,3,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/kathy-mckinnon-interiors-pfvwau-pf~755709797'),
(61,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/vmd-interiors-pfvwau-pf~788645296'),
(62,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/mild-designz-pfvwau-pf~790197068'),
(63,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/an-interior-thing-pfvwau-pf~2017224227'),
(64,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/style-precinct-interior-design-and-decoration-pfvwau-pf~437148974'),
(65,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/renovation-angel-interior-design-noosa-pfvwau-pf~1737001640'),
(66,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/jo-taylor-design-pfvwau-pf~1384945230'),
(67,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/gary-hamer-interior-design-pfvwau-pf~277582279'),
(68,1,4,'https://www.houzz.com.au/hznb/professionals/interior-designers-and-decorators/sapphire-living-interiors-pfvwus-pf~1258820562'),
(69,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/splendour-interiors-pfvwau-pf~503734168'),
(70,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/morc-interiors-pfvwau-pf~2083598149'),
(71,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/coastal-hamptons-design-studio-pfvwau-pf~2118155744'),
(72,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/amazema-interiors-pfvwau-pf~974147274'),
(73,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/donna-guyler-design-pfvwau-pf~1635946551'),
(74,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/highgate-house-pfvwau-pf~1736683056'),
(75,1,4,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/substance-within-pfvwau-pf~2013671455'),
(76,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/n-b-interiors-pfvwau-pf~504351792'),
(77,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/pmg-design-pfvwau-pf~92669513'),
(78,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/anya-h-interiors-pfvwau-pf~1795518610'),
(79,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/jessi-eve-pfvwau-pf~666227120'),
(80,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/perth-staging-pfvwau-pf~2082478573'),
(81,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/denby-dowling-interiors-pfvwau-pf~629566489'),
(82,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/ferrari-interiors-pfvwau-pf~92365105'),
(83,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/ciara-tapia-design-pfvwau-pf~1639079635'),
(84,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/anna-cottee-designs-pfvwau-pf~1006790265'),
(85,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/catherine-de-meur-interiors-pfvwau-pf~1258630486'),
(86,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/embracingspace-pfvwau-pf~94378057'),
(87,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/thinkdzine-interiors-pfvwau-pf~1385053242'),
(88,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/box-clever-interiors-pfvwau-pf~1703509321'),
(89,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/naibu-design-pfvwau-pf~1832824621'),
(90,1,5,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/meraki-home-design-pfvwau-pf~405314907'),
(91,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/ethos-interiors-pfvwau-pf~251716956'),
(92,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/bearcanvas-interiors-pfvwau-pf~1133418554'),
(93,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/sally-feeney-interior-design-pty-ltd-pfvwau-pf~1350634823'),
(94,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/interiors-infocus-pfvwau-pf~2115008400'),
(95,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/vibe-design-studio-pfvwau-pf~1638565711'),
(96,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/brownlow-interior-design-pfvwau-pf~1200349948'),
(97,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/nook-and-sill-interiors-pfvwau-pf~380703344'),
(98,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/flow-interiors-and-styling-pfvwau-pf~1384174390'),
(99,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/interiors-by-debb-pfvwau-pf~403131163'),
(100,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/look-design-group-p-l-pfvwau-pf~251777812'),
(101,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/insidesign-pfvwau-pf~505882556'),
(102,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/mont-albert-interiors-pfvwau-pf~564103331'),
(103,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/lick-light-colour-pfvwau-pf~2013610635'),
(104,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/new-leaf-design-studios-pfvwau-pf~562300031'),
(105,1,6,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/eni-design-interior-architecture-pfvwau-pf~93009617'),
(106,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/amanda-smythe-design-pfvwau-pf~1546348185'),
(107,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/plan-2-design-pty-ltd-pfvwau-pf~1578852528'),
(108,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/mannigan-edwards-interiors-pfvwau-pf~94296289'),
(109,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/bella-vie-interiors-pfvwau-pf~788605416'),
(110,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/i-for-style-pfvwau-pf~940360431'),
(111,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/larkspur-lane-design-pfvwau-pf~1199862192'),
(112,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/the-styling-collective-pfvwau-pf~1831320261'),
(113,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/siobhan-donoghue-design-pfvwau-pf~277164295'),
(114,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/assorted-spaces-interior-decorator-gold-coast-pfvwau-pf~722559758'),
(115,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/jane-gorman-decorators-and-developers-pfvwau-pf~1737977072'),
(116,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/mannigan-edwards-interiors-pfvwau-pf~94296289'),
(117,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/plush-design-interiors-pfvwau-pf~1921601306'),
(118,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/d-elle-design-pfvwau-pf~252556000'),
(119,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/issy-and-h-creative-pfvwau-pf~1764544003'),
(120,1,7,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/simpatico-interior-design-pfvwau-pf~562285411'),
(121,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/issy-and-h-creative-pfvwau-pf~1764544003?intent=eyJyZXZpZXdJZCI6MTU1Mzg4NywiY'),
(122,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/vanessa-wood-interiors-pfvwau-pf~1509969450?intent=eyJyZXZpZXdJZCI6MTY5NDg3NC'),
(123,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/gallerie-b-pfvwau-pf~595926522?intent=eyJyZXZpZXdJZCI6MTU0NDM5NSwiYWN0aW9uIjo'),
(124,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/interiors-by-charlie-pfvwau-pf~1988435772?intent=eyJyZXZpZXdJZCI6MTU1Mzg3Nywi'),
(125,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/angela-steyn-and-co-design-pfvwau-pf~1099036051?intent=eyJyZXZpZXdJZCI6MTE3ND'),
(126,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/muse-modern-interiors-pfvwau-pf~663196156?intent=eyJyZXZpZXdJZCI6MTM1Njc5MSwi'),
(127,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/mr-mitchell-pfvwau-pf~1988350288?intent=eyJyZXZpZXdJZCI6MTA2MzY3NSwiYWN0aW9uI'),
(128,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/colour-counsel-pfvwau-pf~814016115?intent=eyJyZXZpZXdJZCI6MTM0MjIwMiwiYWN0aW9'),
(129,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/becc-burgmann-interior-design-and-decorating-pfvwau-pf~917852080?intent=eyJyZ'),
(130,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/ct-design-pfvwau-pf~437136374?intent=eyJhY3Rpb24iOiJ2aWV3RnVsbEZlYXR1cmVkUmV2'),
(131,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/moss-melbourne-pfvwau-pf~1166595769?intent=eyJhY3Rpb24iOiJ2aWV3RnVsbEZlYXR1cm'),
(132,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/eclectic-creative-pfvwau-pf~1669467762?intent=eyJyZXZpZXdJZCI6MTQ5NDEwMCwiYWN'),
(133,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/logie-interiors-pfvwau-pf~1736484936?intent=eyJyZXZpZXdJZCI6MTU4OTc2NiwiYWN0a'),
(134,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/bumph-and-scumble-pfvwau-pf~1326283320?intent=eyJhY3Rpb24iOiJ2aWV3RnVsbEZlYXR'),
(135,1,8,'https://www.houzz.com.au/professionals/interior-designers-and-decorators/twinkle-and-whistle-pfvwau-pf~1451788432?intent=eyJyZXZpZXdJZCI6OTYwODcxLCJhY');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
