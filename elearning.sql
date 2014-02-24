-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2014 at 05:37 PM
-- Server version: 5.5.33
-- PHP Version: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `berita_judul` varchar(255) DEFAULT NULL,
  `berita_tgl` datetime DEFAULT NULL,
  `berita_author` int(11) DEFAULT NULL,
  `berita_isi` text,
  `berita_gambar` varchar(255) DEFAULT NULL,
  `berita_aktif` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`berita_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kurikulum_id` int(11) DEFAULT '0',
  `mapel_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `course_judul` varchar(255) DEFAULT NULL,
  `course_file` varchar(255) DEFAULT NULL,
  `course_tgl` datetime DEFAULT '0000-00-00 00:00:00',
  `course_publish` int(11) DEFAULT '0',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grup_users`
--

CREATE TABLE `grup_users` (
  `grup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `grup_nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`grup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `guru_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guru_nip` int(11) DEFAULT NULL,
  `guru_nama` varchar(255) DEFAULT NULL,
  `guru_jk` tinyint(2) DEFAULT NULL,
  `guru_agama` tinyint(2) DEFAULT NULL,
  `guru_alamat` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`guru_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `kurikulum_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kurikulum_nama` varchar(255) DEFAULT NULL,
  `kurikulum_tahun_pertama` int(11) DEFAULT NULL,
  `kurikulum_tahun_kedua` int(11) DEFAULT NULL,
  PRIMARY KEY (`kurikulum_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`kurikulum_id`, `kurikulum_nama`, `kurikulum_tahun_pertama`, `kurikulum_tahun_kedua`) VALUES
(1, '2012/2013', 2012, 2013),
(2, '2013/2014', 2013, 2014),
(3, '2014/2015', 2014, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `mapel_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mapel_nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mapel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `grup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
         