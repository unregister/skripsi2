-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 03, 2014 at 05:03 PM
-- Server version: 5.5.33
-- PHP Version: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `grup_users`
--

INSERT INTO `grup_users` (`grup_id`, `grup_nama`) VALUES
(1, 'Administrator'),
(2, 'Guru'),
(3, 'Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelas_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kelas_nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kelas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'X A'),
(2, 'X B'),
(3, 'X C'),
(4, 'X D'),
(5, 'X E'),
(6, 'X F');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`kurikulum_id`, `kurikulum_nama`, `kurikulum_tahun_pertama`, `kurikulum_tahun_kedua`) VALUES
(1, '2012/2013', 2012, 2013),
(2, '2013/2014', 2013, 2014),
(3, '2014/2015', 2014, 2015),
(4, '2015/2016', 2015, 2016);

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `mapel_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mapel_nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mapel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`mapel_id`, `mapel_nama`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Matematika'),
(3, 'Biologi'),
(4, 'Kimia'),
(5, 'Fisika'),
(6, 'Ekonomi'),
(7, 'Pendidikan Agama'),
(8, 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pegawai_nip` int(11) DEFAULT NULL,
  `pegawai_nama` varchar(255) DEFAULT NULL,
  `pegawai_jk` tinyint(2) DEFAULT NULL,
  `pegawai_agama` tinyint(2) DEFAULT NULL,
  `pegawai_alamat` varchar(11) DEFAULT NULL,
  `pegawai_jabatan` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pegawai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `siswa_nis` int(11) DEFAULT NULL,
  `siswa_nama` varchar(255) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_jk` tinyint(2) DEFAULT NULL,
  `siswa_alamat` varchar(255) DEFAULT NULL,
  `siswa_tempat_lahir` varchar(255) DEFAULT NULL,
  `siswa_tgl_lahir` varchar(20) DEFAULT NULL,
  `siswa_agama` tinyint(2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`siswa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `grup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `grup_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);
