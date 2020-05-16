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

/*Table structure for table `akses_token` */

DROP TABLE IF EXISTS `akses_token`;

CREATE TABLE `akses_token` (
  `id_user` varchar(200) NOT NULL,
  `access_token` varbinary(200) NOT NULL,
  `ip_address` int(200) NOT NULL,
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `akses_token` */

insert  into `akses_token`(`id_user`,`access_token`,`ip_address`) values ('A-2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0yIiwibmFtYV91c2VyIjoiZGFuIiwiZW1haWwiOiJkYW5AbWFpbC5jb20iLCJwYXNzd29yZCI6IjkxODBiNGRhM2YwYzdlODA5NzVmYWQ2ODVmN2YxMzRlIiwiaWRfbGV2ZWw',192168),('A-3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0zIiwibmFtYV91c2VyIjoiYmJiIiwiZW1haWwiOiJiYmJAbWFpbC5jb20iLCJwYXNzd29yZCI6IjA4ZjhlMDI2MGM2NDQxODUxMGNlZmIyYjA2ZWVlNWNkIiwiaWRfbGV2ZWw',192168),('A-3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0zIiwibmFtYV91c2VyIjoiYmJiIiwiZW1haWwiOiJiYmJAbWFpbC5jb20iLCJwYXNzd29yZCI6IjA4ZjhlMDI2MGM2NDQxODUxMGNlZmIyYjA2ZWVlNWNkIiwiaWRfbGV2ZWw',192168),('A-4','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS00IiwibmFtYV91c2VyIjoieHh4IiwiZW1haWwiOiJ4eHhAbWFpbC5jb20iLCJwYXNzd29yZCI6IjA4ZjhlMDI2MGM2NDQxODUxMGNlZmIyYjA2ZWVlNWNkIiwiaWRfbGV2ZWw',192168),('A-2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0yIiwibmFtYV91c2VyIjoiZGFuIiwiZW1haWwiOiJkYW5AbWFpbC5jb20iLCJwYXNzd29yZCI6IjkxODBiNGRhM2YwYzdlODA5NzVmYWQ2ODVmN2YxMzRlIiwiaWRfbGV2ZWw',192168),('A-2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0yIiwibmFtYV91c2VyIjoiZGFuIiwiZW1haWwiOiJkYW5AbWFpbC5jb20iLCJwYXNzd29yZCI6IjkxODBiNGRhM2YwYzdlODA5NzVmYWQ2ODVmN2YxMzRlIiwiaWRfbGV2ZWw',192168),('A-1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0xIiwibmFtYV91c2VyIjoiYWxmaWRhIiwiZW1haWwiOiJhbGZpZGFAbWFpbC5jb20iLCJwYXNzd29yZCI6ImQzMmI3ZTMzNjlkMjA1M2NmMzkzNjkzZTgwMGY4NzlhIiwiaWR',192168),('A-1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0xIiwibmFtYV91c2VyIjoiYWxmaWRhIiwiZW1haWwiOiJhbGZpZGFAbWFpbC5jb20iLCJwYXNzd29yZCI6ImQzMmI3ZTMzNjlkMjA1M2NmMzkzNjkzZTgwMGY4NzlhIiwiaWR',192168),('A-2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0yIiwibmFtYV91c2VyIjoiZGFuIiwiZW1haWwiOiJkYW5AbWFpbC5jb20iLCJwYXNzd29yZCI6IjkxODBiNGRhM2YwYzdlODA5NzVmYWQ2ODVmN2YxMzRlIiwiaWRfbGV2ZWw',192168),('A-2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0yIiwibmFtYV91c2VyIjoiZGFuIiwiZW1haWwiOiJkYW5AbWFpbC5jb20iLCJwYXNzd29yZCI6IjkxODBiNGRhM2YwYzdlODA5NzVmYWQ2ODVmN2YxMzRlIiwiaWRfbGV2ZWw',192168),('A-2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0yIiwibmFtYV91c2VyIjoiZGFuIiwiZW1haWwiOiJkYW5AbWFpbC5jb20iLCJwYXNzd29yZCI6IjkxODBiNGRhM2YwYzdlODA5NzVmYWQ2ODVmN2YxMzRlIiwiaWRfbGV2ZWw',192168),('A-2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0yIiwibmFtYV91c2VyIjoiZGFuIiwiZW1haWwiOiJkYW5AbWFpbC5jb20iLCJwYXNzd29yZCI6IjkxODBiNGRhM2YwYzdlODA5NzVmYWQ2ODVmN2YxMzRlIiwiaWRfbGV2ZWw',192168),('A-1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0xIiwibmFtYV91c2VyIjoiYWxmaWRhIiwiZW1haWwiOiJhbGZpZGFAbWFpbC5jb20iLCJwYXNzd29yZCI6ImQzMmI3ZTMzNjlkMjA1M2NmMzkzNjkzZTgwMGY4NzlhIiwiaWR',192168),('A-99','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS05OSIsIm5hbWFfdXNlciI6ImRhbmlrayIsImVtYWlsIjoiZGFuaWtrQG1haWwuY29tIiwicGFzc3dvcmQiOiI1MWU1MDFhMTEzYzhiMDhkMWEzZmIwYzk0ZmRmY2ZjMiIsIml',192168),('A-1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQS0xIiwibmFtYV91c2VyIjoiYWxmaWRhIiwiZW1haWwiOiJhbGZpZGFAbWFpbC5jb20iLCJwYXNzd29yZCI6ImQzMmI3ZTMzNjlkMjA1M2NmMzkzNjkzZTgwMGY4NzlhIiwiaWR',192168),('ADMIN1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiQURNSU4xIiwibmFtYV91c2VyIjoiQURNSU4xIiwiZW1haWwiOiJBRE1JTjFAbWFpbC5jb20iLCJwYXNzd29yZCI6ImE5ZTdmNDg0OGU0MGRlYjAzY2JhOGVkZDI5NGQzYTE3Iiw',192168),('Dani','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiRGFuaSIsIm5hbWFfdXNlciI6IkRhbmkiLCJlbWFpbCI6IkRhbmlAZ21haWwuY29tIiwicGFzc3dvcmQiOiIwYjJjYzgyZTZhMTc3YjE4ZmFlZmQ4ODU4MWI4NTk3ZCIsImlkX2x',1270),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',1270),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',1270),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',1270),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',1270),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',1270),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',1270),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168),('Kusuma','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZF91c2VyIjoiS3VzdW1hIiwibmFtYV91c2VyIjoiS3VzdW1hIiwiZW1haWwiOiJLdXN1bWFAZ21haWwuY29tIiwicGFzc3dvcmQiOiI4MTA5YWU2MmRmOGIxZjY0NTkzOTkyNzlmYjZkNzFjMiI',192168);

/*Table structure for table `t_level` */

DROP TABLE IF EXISTS `t_level`;

CREATE TABLE `t_level` (
  `id_level` int(20) NOT NULL,
  `nama_level` varchar(200) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_level` */

insert  into `t_level`(`id_level`,`nama_level`) values (0,'3'),(1,'Admin'),(2,'User');

/*Table structure for table `t_montir` */

DROP TABLE IF EXISTS `t_montir`;

CREATE TABLE `t_montir` (
  `id_montir` varchar(200) NOT NULL,
  `nama_montir` varchar(200) NOT NULL,
  `hargaperjam` int(200) NOT NULL,
  PRIMARY KEY (`id_montir`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_montir` */

insert  into `t_montir`(`id_montir`,`nama_montir`,`hargaperjam`) values ('M-01','Parjooooooooooo',60000),('M-02','kino',5000);

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
  KEY `id_montir` (`id_montir`),
  KEY `id_user` (`id_user`),
  KEY `id_sparepart` (`id_sparepart`),
  CONSTRAINT `t_service_ibfk_1` FOREIGN KEY (`id_montir`) REFERENCES `t_montir` (`id_montir`),
  CONSTRAINT `t_service_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`),
  CONSTRAINT `t_service_ibfk_3` FOREIGN KEY (`id_sparepart`) REFERENCES `t_sparepart` (`id_sparepart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_service` */

insert  into `t_service`(`id_service`,`tgl_service`,`id_user`,`id_montir`,`id_sparepart`,`jumlah_sparepart`,`total_service`) values ('S-01','2020-05-12','A-2','M-01','O-01',5,0),('S-02','2019-09-09','A-1','M-02','K-01',4,0),('S-04','2020-05-13','Dani','M-01','K-01',100,0),('S-06','2020-05-13','Kusuma','M-01','K-01',100,0),('S-08','2020-05-14','Kusuma','M-02','K-01',10,0);

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

insert  into `t_sparepart`(`id_sparepart`,`nama_sparepart`,`harga_sparepart`,`satuan`) values ('B-01','BAN',5000,50),('K-01','KNALPOT',4000,40),('O-01','OLI',2000,20);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id_user` varchar(200) NOT NULL,
  `nama_user` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id_level` int(20) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_level` (`id_level`),
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `t_level` (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_user` */

insert  into `t_user`(`id_user`,`nama_user`,`email`,`password`,`id_level`) values ('A-1','alfida','alfida@mail.com','d32b7e3369d2053cf393693e800f879a',2),('A-2','dan','dan@mail.com','9180b4da3f0c7e80975fad685f7f134e',2),('A-3','bbb','bbb@mail.com','08f8e0260c64418510cefb2b06eee5cd',2),('A-4','xxx','xxx@mail.com','08f8e0260c64418510cefb2b06eee5cd',2),('A-99','danikk','danikk@mail.com','51e501a113c8b08d1a3fb0c94fdfcfc2',1),('ADMIN1','ADMIN1','ADMIN1@mail.com','a9e7f4848e40deb03cba8edd294d3a17',1),('Dani','Dani','Dani@gmail.com','0b2cc82e6a177b18faefd88581b8597d',1),('J','J','J@mail.com','ff44570aca8241914870afbc310cdb85',1),('Kusuma','Kusuma','Kusuma@gmail.com','8109ae62df8b1f6459399279fb6d71c2',2),('U-01','Kusuma','mail@mail.com','ef86916bc6f9f2f6866df100a192161f',1),('U-02','Dani','kusuma@mail.com','ef86916bc6f9f2f6866df100a192161f',2),('U-06','KAKA','kaka@mail.com','5541c7b5a06c39b267a5efae6628e003',1),('U-1000','Dani','danikusuma@mail.com','ab5e831d8600f15167307bd73177b525',1),('U-111','kakao','kakao@mail.com','d42de1f57e8dd01202d9c36d807fb157',2),('U-18','aaa','aaa@mail.com','47bce5c74f589f4867dbd57e9ca9f808',2),('U-90','sss','sss@mail.com','9f6e6800cfae7749eb6c486619254b9c',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
