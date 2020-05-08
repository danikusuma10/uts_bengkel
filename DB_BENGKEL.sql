/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.4.11-MariaDB : Database - uts_bengkel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`uts_bengkel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `uts_bengkel`;

/*Table structure for table `t_level` */

DROP TABLE IF EXISTS `t_level`;

CREATE TABLE `t_level` (
  `id_level` int(20) NOT NULL,
  `nama_level` varchar(200) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_level` */

/*Table structure for table `t_montir` */

DROP TABLE IF EXISTS `t_montir`;

CREATE TABLE `t_montir` (
  `id_montir` varchar(200) NOT NULL,
  `nama_montir` varchar(200) NOT NULL,
  `hargaperjam` int(200) NOT NULL,
  PRIMARY KEY (`id_montir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_montir` */

/*Table structure for table `t_service` */

DROP TABLE IF EXISTS `t_service`;

CREATE TABLE `t_service` (
  `id_service` varchar(200) NOT NULL,
  `tgl_service` date DEFAULT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_montir` varchar(200) NOT NULL,
  `id_sparepart` varchar(200) NOT NULL,
  `jumlah_sparepart` int(200) NOT NULL,
  `total_service` int(200) NOT NULL,
  PRIMARY KEY (`id_service`),
  KEY `id_user` (`id_user`),
  KEY `id_montir` (`id_montir`),
  KEY `id_sparepart` (`id_sparepart`),
  CONSTRAINT `t_service_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`iduser`),
  CONSTRAINT `t_service_ibfk_2` FOREIGN KEY (`id_montir`) REFERENCES `t_montir` (`id_montir`),
  CONSTRAINT `t_service_ibfk_3` FOREIGN KEY (`id_sparepart`) REFERENCES `t_sparepart` (`id_sparepart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_service` */

/*Table structure for table `t_sparepart` */

DROP TABLE IF EXISTS `t_sparepart`;

CREATE TABLE `t_sparepart` (
  `id_sparepart` varchar(200) NOT NULL,
  `nama_sparepart` varchar(200) NOT NULL,
  `harga_sparepart` int(200) NOT NULL,
  `satuan` int(200) NOT NULL,
  PRIMARY KEY (`id_sparepart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_sparepart` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `iduser` varchar(200) NOT NULL,
  `nama_user` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id_level` int(20) NOT NULL,
  PRIMARY KEY (`iduser`),
  KEY `id_level` (`id_level`),
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `t_level` (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
