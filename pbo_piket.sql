-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2020 at 02:42 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo_piket`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nip`, `name`, `kelas`, `image`, `created_at`) VALUES
(1, '6437758659220000', 'ISNAINI MA\'RIFATUN, S.Sos.I.', 'X', 'user.png', '2020-05-23 19:23:39'),
(36, '', 'MOCHAMAD FAJAR FIRMANSYAH', 'X', 'user.png', '2020-05-23 19:23:59'),
(39, '19650517 198803 1009', 'Dr. ASEP TAPIP YANI, M.Pd', '', 'user.png', '2020-05-23 19:26:02'),
(40, '19591002 198603 2004', 'Dra. Hj. SRI HERYANI', 'X', 'user.png', '2020-05-23 19:26:27'),
(41, '19620226 198803 2008', 'Dra.Hj. LILIS ROCHYANTIMALA', 'X', 'user.png', '2020-05-23 19:26:51'),
(42, '19630801 198803 1006', 'Drs. ENJANG SARIFUDIN, M.Pd', 'X', 'user.png', '2020-05-23 19:27:10'),
(43, '19600725 198603 2009', 'Dra. AAT ATIWAH', 'X', 'user.png', '2020-05-23 19:28:52'),
(44, '19640902 198902 1003', 'Drs. H. DEDI SUKMAYADI', 'XI', 'user.png', '2020-05-23 19:29:14'),
(46, '0646 7686 6913 0052', 'SUSNETI MARTIANI, S.Pd.', 'XI', 'user.png', '2020-05-23 19:32:32'),
(47, '19780104 201408 2005', 'FAJAR DEWI NINGSIH, S.Pd.', 'XI', 'user.png', '2020-05-23 19:33:42'),
(48, '19700313 200801 1005', 'NANA SURYANA, M.Pd.', 'XI', 'user.png', '2020-05-23 19:34:03'),
(49, '57537676 6813 0102', 'MARIA HANI FITRIANI, S.Pd', 'XI', 'user.png', '2020-05-23 19:34:19'),
(50, '19640808 199103 10', 'Drs. H. ASEP MULYANA, M.Ag', 'XII', 'user.png', '2020-05-23 19:34:38'),
(51, '19590915 198603 2007', 'Dra. Hj. NUNUNG SULASTRI', 'XII', 'user.png', '2020-05-23 19:34:58'),
(52, '19691220 199702 2001', 'ENTIN SUPRIATIN, S.Pd', 'XII', 'user.png', '2020-05-23 19:35:14'),
(53, '19610706 198803 2004', 'Dra. Hj. LIES FATONAH', 'XII', 'user.png', '2020-05-23 19:36:32'),
(54, '19810606 200902 1001', 'KUSMORO RUSLI, S.Pd', 'XII', 'user.png', '2020-05-23 19:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `guru_matpel`
--

CREATE TABLE `guru_matpel` (
  `id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `matpel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `started` datetime NOT NULL DEFAULT current_timestamp(),
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `izin_details`
--

CREATE TABLE `izin_details` (
  `id` int(11) NOT NULL,
  `izin_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matpel`
--

CREATE TABLE `matpel` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matpel`
--

INSERT INTO `matpel` (`id`, `nama`) VALUES
(1, 'PENDIDIKAN AGAMA ISL'),
(2, 'PENDIDIKAN PANCASILA'),
(3, 'BAHASA INDONESIA'),
(4, 'MATEMATIKA'),
(5, 'SEJARAH'),
(6, 'BAHASA INGGRIS'),
(7, 'SENI BUDAYA'),
(8, 'PENDIDIKAN JASMANI, '),
(9, 'BASA SUNDA'),
(10, 'BIMBINGAN KONSELING');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`) VALUES
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `create_at`) VALUES
(3, 'admin', 'admin@admin.com', '$2y$10$uM7Xsxghyj5p7rVMbthVFu/h/p8SM1mc05Ho50Yfmlqqh4ARFfGI2', 1, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `guru_matpel`
--
ALTER TABLE `guru_matpel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_matpel_ibfk_1` (`guru_id`),
  ADD KEY `guru_matpel_ibfk_2` (`matpel_id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indexes for table `izin_details`
--
ALTER TABLE `izin_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izin_id` (`izin_id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indexes for table `matpel`
--
ALTER TABLE `matpel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `guru_matpel`
--
ALTER TABLE `guru_matpel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matpel`
--
ALTER TABLE `matpel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guru_matpel`
--
ALTER TABLE `guru_matpel`
  ADD CONSTRAINT `guru_matpel_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guru_matpel_ibfk_2` FOREIGN KEY (`matpel_id`) REFERENCES `matpel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `izin`
--
ALTER TABLE `izin`
  ADD CONSTRAINT `izin_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Constraints for table `izin_details`
--
ALTER TABLE `izin_details`
  ADD CONSTRAINT `izin_details_ibfk_1` FOREIGN KEY (`izin_id`) REFERENCES `izin` (`id`),
  ADD CONSTRAINT `izin_details_ibfk_2` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
