-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 04:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `pass`) VALUES
(1, 'Risma', 'rismabk1', 'bk12345'),
(2, 'Sari', 'saribk2', 'bk12345'),
(3, 'Tsaqif', 'tsaqifbk3', 'bk12345');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `nip`, `username`, `pass`, `foto`) VALUES
(1, 'Sugiarto, S.T', 'IoT-SIJA', '197203172005011012', 'gsija1', '12345', ''),
(2, 'Yunianto Hermawan, S.Kom', 'IaaS-SIJA', '197306202006041005', 'gsija2', '12345', ''),
(3, 'Margaretha Endah Titisari, S.T', 'PemogramanDasar-SIJA', '197403022006042008', 'gsija3', '12345', ''),
(4, 'Eka Nur Ahmad Romadhoni, S.Pd', 'SaaS-SIJA', '199303012019031011', 'gsija4', '12345', ''),
(5, 'Rr. Retna Trimantaraningsih, S.T', 'PaaS-SIJA', '197006272021212002', 'gsija5', '12345', ''),
(6, 'Ratna Yunitasari, S.T', 'SistemKomputer-SIJA', '197106012021212002', 'gsija6', '12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` int(11) NOT NULL,
  `siswaID` int(11) NOT NULL,
  `guruID` int(11) DEFAULT NULL,
  `bkID` int(11) DEFAULT NULL,
  `alasan` varchar(200) NOT NULL,
  `waktu` varchar(8) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `file_pendukung` varchar(100) DEFAULT NULL,
  `qrcode` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id`, `siswaID`, `guruID`, `bkID`, `alasan`, `waktu`, `tanggal`, `is_approved`, `file_pendukung`, `qrcode`) VALUES
(1, 2, 1, 2, 'Seleksi LKS di Balai Pelatihan', '5-12', '2024-02-16 08:50:55', 2, NULL, ''),
(2, 2, 2, 1, 'Survei tempat PKL dan tempat praktik IaaS', '1-5', '2024-02-23 09:02:00', 1, NULL, NULL),
(3, 2, 4, 3, 'Izin ambil Laptop', '1-2', '2024-02-23 09:23:15', 0, NULL, NULL),
(4, 2, 3, 2, 'Ke UKS', '1-4', '2024-02-23 09:32:25', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `nama_setting` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `nama_setting`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nis` varchar(6) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `nis`, `jurusan`, `username`, `pass`, `foto`) VALUES
(1, 'Ayla', '11', '10101', 'DPIB ', 'ayladpib', 'ayla1', 'ayladpib.jpg'),
(2, 'Bima', '10', '10102', 'TFLM ', 'bimatflm', 'bima2', 'bimatflm.jpg'),
(3, 'Cia', '12', '10103', 'KA', 'ciaka', 'cia3', 'ciaka.jpg'),
(4, 'Dimas', '11', '10104', 'GP', 'dimasgp', 'dimas4', 'dimasgp.jpg'),
(5, 'Elang', '12', '10105', 'KI', 'elangki', 'elang5', 'elangki.jpg'),
(6, 'Fikri', '10', '10106', 'TOI', 'fikritoi', 'fikri6', 'fikritoi.jpg'),
(7, 'Giya', '10', '10107', 'TEK', 'giyatek', 'giya7', 'giyatek.jpg'),
(8, 'Harum', '11', '10108', 'SIJA ', 'harumsija', 'harum8', 'harumsija.jpg'),
(9, 'Ilham', '12', '10109', 'TKR', 'ilhamtkr', 'ilham9', 'ilhamtkr.jpg'),
(10, 'Jibril', '10', '10110', 'TBKR', 'jibriltbkr', 'jibril10', 'jibriltbkr.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `qrcode` (`qrcode`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
