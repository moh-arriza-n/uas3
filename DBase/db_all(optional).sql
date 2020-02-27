-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 11:24 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--
CREATE DATABASE IF NOT EXISTS `db_inventory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_inventory`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `No` int(5) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `nama` char(50) NOT NULL,
  `id_kategori` varchar(10) NOT NULL,
  `harga` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`No`, `id_barang`, `nama`, `id_kategori`, `harga`) VALUES
(1, 'RYZ32000', 'PROCS RYZEN 3 2000', 'PROCS', 2000000),
(2, 'RYZ53600', 'PROCS RYZEN 5 3600', 'PROCS', 1200000),
(3, 'INTI55700', 'PROCS INTEL I5 5700', 'PROCS', 7000000),
(4, 'WRST01LNV', 'THINKSTATION SS6 C53', 'WRSTN', 12000000),
(5, 'WRST02DLL', 'DELL WS3445 XEON', 'WRSTN', 20000000),
(6, 'WRST03HP', 'HP CVT2000 LS', 'WRSTN', 43000000),
(7, 'WRST04HP', 'HP WORK134C2 SW', 'WRSTN', 72000000),
(8, 'INTXEON', 'PROCS XEON PX2700 NA', 'PROCS', 6200000),
(9, 'RACKSRV01', 'FORTUNA RACK TL722', 'RACKS', 120000000),
(10, 'RACKSRV02', 'FORTUNA RACK BW021', 'RACKS', 71000000),
(11, 'RACKSRV03', 'FORTUNA RACK NH233', 'RACKS', 50000000),
(12, 'RACKSRV04', 'OBVILION CTX721A', 'RACKS', 10000000),
(13, 'RACKSRV05', 'OBVILION CTX1100B', 'RACKS', 3200000),
(14, 'RACKSRV06', 'OBVILION MH2CC', 'RACKS', 8000000),
(15, 'RACKSRV07', 'GIGABYTE MBDK6', 'RACKS', 6700000),
(16, 'RACKSRV08', 'GIGABYTE GRD-G2110', 'RACKS', 6000000),
(17, 'RACKSRV09', 'GIGABYTE GRD-G7110', 'RACKS', 4000000),
(18, 'PSU01', 'TUNGSTEN-DG-2000W 80', 'POWER', 310000000),
(19, 'PSU02', 'TUNGSTEN-DG-2000W', 'POWER', 200000000),
(20, 'PSU03', 'NEBULA-PG-DS2300', 'POWER', 210000000),
(21, 'BRK01', 'SCHNEIDER-BK7000', 'BRKR', 4230000),
(22, 'BRK02', 'SCHNEIDER-VT1200', 'BRKR', 1490000),
(23, 'BRK03', 'SCHNEIDER LAX-26', 'BRKR', 3900000),
(24, 'BRK04', 'PANASONIC GENT3000', 'BRKR', 2700000),
(25, 'THERMO-01', 'THERMOSTAT CONTROLLER YOKOHAMA CK3211', 'UTIL', 5500000),
(26, 'MB-01', 'MAINBOARD LENOVO SERVER 2 GRD-7000', 'MOBO', 3100000),
(27, 'MB-02', 'MAINBOARD LENOVO SERVER 2 GRD-5600', 'MOBO', 3200000),
(28, 'OPTCONV', 'TP-LINK SFP CONVERTER C20 GIGABIT', 'NET', 1400000),
(29, 'OPTICAL-CA', 'FO CABLE 12 CORE SCHNEIDER GERMAN', 'NET', 69000000),
(30, 'COOLER-CON', 'LIQUID NITROGEN SF20', 'UTIL', 200000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `No` int(5) NOT NULL,
  `id_kategori` varchar(10) NOT NULL,
  `nama` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_trx`
--

CREATE TABLE `tb_trx` (
  `No` int(5) NOT NULL,
  `id_trx` varchar(10) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `no_trx` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `qty` int(10) NOT NULL,
  `stat` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_trx`
--

INSERT INTO `tb_trx` (`No`, `id_trx`, `id_barang`, `id_user`, `no_trx`, `tanggal`, `qty`, `stat`) VALUES
(1, 'ID_TRC_110', 'RYZ32000', '1100012', 'TRC_NO_110', '2020-04-12', 120, 'READY'),
(2, 'ID_TRC_111', 'RYZ53600', '1100012', 'TRC_NO_111', '2020-07-12', 900, 'READY'),
(3, 'ID_TRC_122', 'INTI55700', '1100012', 'TRC_NO_122', '2020-08-24', 202, 'READY'),
(4, 'ID_TRC_121', 'WRST01LNV', '1100112.00', 'TRC_NO_121', '2020-12-01', 561, 'READY'),
(5, 'ID_TRC_123', 'WRST02DLL', '1100109.00', 'TRC_NO_123', '2020-01-16', 889, 'READY'),
(6, 'ID_TRC_211', 'WRST03HP', '1100122.00', 'TRC_NO_211', '2020-01-08', 764, 'READY'),
(7, 'ID_TRC_977', 'WRST04HP', '1100339.00', 'TRC_NO_977', '2020-01-23', 433, 'READY'),
(8, 'ID_TRC_511', 'INTXEON', '1100331', 'TRC_NO_511', '2020-01-25', 300, 'READY'),
(9, 'ID_TRC_333', 'RACKSRV01', '1100331', 'TRC_NO_333', '2020-01-21', 543, 'READY'),
(10, 'ID_TRC_222', 'RACKSRV02', '1100331', 'TRC_NO_222', '2020-01-06', 98, 'READY'),
(11, 'ID_TRC_200', 'RACKSRV03', '1100331', 'TRC_NO_200', '2020-01-15', 50, 'READY'),
(12, 'ID_TRC_953', 'RACKSRV04', '1100012', 'TRC_NO_953', '2020-01-14', 400, 'READY'),
(13, 'ID_TRC_422', 'RACKSRV05', '1100414.00', 'TRC_NO_422', '2020-01-23', 322, 'READY'),
(14, 'ID_TRC_677', 'RACKSRV06', '1100999.00', 'TRC_NO_677', '2020-01-16', 172, 'READY'),
(15, 'ID_TRC_311', 'RACKSRV07', '1100900.00', 'TRC_NO_311', '2020-01-31', 12, 'READY'),
(16, 'ID_TRC_672', 'RACKSRV08', '1100903.00', 'TRC_NO_672', '2020-01-31', 43, 'READY'),
(17, 'ID_TRC_444', 'RACKSRV09', '1100907.00', 'TRC_NO_444', '2020-01-24', 321, 'READY'),
(18, 'ID_TRC_124', 'PSU01', '1100919.00', 'TRC_NO_124', '2020-01-14', 511, 'READY'),
(19, 'ID_TRC_125', 'PSU02', '1100911.00', 'TRC_NO_125', '2020-01-16', 71, 'READY'),
(20, 'ID_TRC_100', 'PSU03', '1100186.00', 'TRC_NO_100', '2020-01-29', 10, 'READY'),
(21, 'ID_TRC_126', 'BRK01', '1100331', 'TRC_NO_126', '2020-01-20', 90, 'READY'),
(22, 'ID_TRC_127', 'BRK02', '1100531.00', 'TRC_NO_127', '2020-01-29', 70, 'READY'),
(23, 'ID_TRC_128', 'BRK03', '1100537.00', 'TRC_NO_128', '2020-01-18', 50, 'READY'),
(24, 'ID_TRC_512', 'BRK04', '1100564.00', 'TRC_NO_512', '2020-01-22', 43, 'READY'),
(25, 'ID_TRC_513', 'THERMO-01', '1100676.00', 'TRC_NO_513', '2020-01-08', 124, 'READY'),
(26, 'ID_TRC_514', 'MB-01', '1100611.00', 'TRC_NO_514', '2020-01-12', 51, 'READY'),
(27, 'ID_TRC_515', 'MB-02', '1100611.00', 'TRC_NO_515', '2020-01-23', 76, 'READY'),
(28, 'ID_TRC_516', 'OPTCONV', '1100881.00', 'TRC_NO_516', '2020-01-19', 86, 'READY'),
(29, 'ID_TRC_517', 'OPTICAL-CA', '1100331', 'TRC_NO_517', '2020-01-05', 36, 'READY'),
(30, 'ID_TRC_771', 'COOLER-CON', '1100879.00', 'TRC_NO_771', '2020-01-07', 90, 'READY'),
(241, '', '', '', '', '0000-00-00', 0, ''),
(242, '', '', '', '', '0000-00-00', 0, ''),
(243, '', '', '', '', '0000-00-00', 0, ''),
(244, '', '', '', '', '0000-00-00', 0, ''),
(245, '', '', '', '', '0000-00-00', 0, ''),
(246, '', '', '', '', '0000-00-00', 0, ''),
(247, '', '', '', '', '0000-00-00', 0, ''),
(248, '', '', '', '', '0000-00-00', 0, ''),
(249, '', '', '', '', '0000-00-00', 0, ''),
(250, '', '', '', '', '0000-00-00', 0, ''),
(251, '', '', '', '', '0000-00-00', 0, ''),
(252, '', '', '', '', '0000-00-00', 0, ''),
(253, '', '', '', '', '0000-00-00', 0, ''),
(254, '', '', '', '', '0000-00-00', 0, ''),
(255, '', '', '', '', '0000-00-00', 0, ''),
(256, '', '', '', '', '0000-00-00', 0, ''),
(257, '', '', '', '', '0000-00-00', 0, ''),
(258, '', '', '', '', '0000-00-00', 0, ''),
(259, '', '', '', '', '0000-00-00', 0, ''),
(260, '', '', '', '', '0000-00-00', 0, ''),
(261, '', '', '', '', '0000-00-00', 0, ''),
(262, '', '', '', '', '0000-00-00', 0, ''),
(263, '', '', '', '', '0000-00-00', 0, ''),
(264, '', '', '', '', '0000-00-00', 0, ''),
(265, '', '', '', '', '0000-00-00', 0, ''),
(266, '', '', '', '', '0000-00-00', 0, ''),
(267, '', '', '', '', '0000-00-00', 0, ''),
(268, '', '', '', '', '0000-00-00', 0, ''),
(269, '', '', '', '', '0000-00-00', 0, ''),
(270, '', '', '', '', '0000-00-00', 0, ''),
(271, '', '', '', '', '0000-00-00', 0, ''),
(272, '', '', '', '', '0000-00-00', 0, ''),
(273, '', '', '', '', '0000-00-00', 0, ''),
(274, '', '', '', '', '0000-00-00', 0, ''),
(275, '', '', '', '', '0000-00-00', 0, ''),
(276, '', '', '', '', '0000-00-00', 0, ''),
(277, '', '', '', '', '0000-00-00', 0, ''),
(278, '', '', '', '', '0000-00-00', 0, ''),
(279, '', '', '', '', '0000-00-00', 0, ''),
(280, '', '', '', '', '0000-00-00', 0, ''),
(281, '', '', '', '', '0000-00-00', 0, ''),
(282, '', '', '', '', '0000-00-00', 0, ''),
(283, '', '', '', '', '0000-00-00', 0, ''),
(284, '', '', '', '', '0000-00-00', 0, ''),
(285, '', '', '', '', '0000-00-00', 0, ''),
(286, '', '', '', '', '0000-00-00', 0, ''),
(287, '', '', '', '', '0000-00-00', 0, ''),
(288, '', '', '', '', '0000-00-00', 0, ''),
(289, '', '', '', '', '0000-00-00', 0, ''),
(290, '', '', '', '', '0000-00-00', 0, ''),
(291, '', '', '', '', '0000-00-00', 0, ''),
(292, '', '', '', '', '0000-00-00', 0, ''),
(293, '', '', '', '', '0000-00-00', 0, ''),
(294, '', '', '', '', '0000-00-00', 0, ''),
(295, '', '', '', '', '0000-00-00', 0, ''),
(296, '', '', '', '', '0000-00-00', 0, ''),
(297, '', '', '', '', '0000-00-00', 0, ''),
(298, '', '', '', '', '0000-00-00', 0, ''),
(299, '', '', '', '', '0000-00-00', 0, ''),
(300, '', '', '', '', '0000-00-00', 0, ''),
(301, '', '', '', '', '0000-00-00', 0, ''),
(302, '', '', '', '', '0000-00-00', 0, ''),
(303, '', '', '', '', '0000-00-00', 0, ''),
(304, '', '', '', '', '0000-00-00', 0, ''),
(305, '', '', '', '', '0000-00-00', 0, ''),
(306, '', '', '', '', '0000-00-00', 0, ''),
(307, '', '', '', '', '0000-00-00', 0, ''),
(308, '', '', '', '', '0000-00-00', 0, ''),
(309, '', '', '', '', '0000-00-00', 0, ''),
(310, '', '', '', '', '0000-00-00', 0, ''),
(311, '', '', '', '', '0000-00-00', 0, ''),
(312, '', '', '', '', '0000-00-00', 0, ''),
(313, '', '', '', '', '0000-00-00', 0, ''),
(314, '', '', '', '', '0000-00-00', 0, ''),
(315, '', '', '', '', '0000-00-00', 0, ''),
(316, '', '', '', '', '0000-00-00', 0, ''),
(317, '', '', '', '', '0000-00-00', 0, ''),
(318, '', '', '', '', '0000-00-00', 0, ''),
(319, '', '', '', '', '0000-00-00', 0, ''),
(320, '', '', '', '', '0000-00-00', 0, ''),
(321, '', '', '', '', '0000-00-00', 0, ''),
(322, '', '', '', '', '0000-00-00', 0, ''),
(323, '', '', '', '', '0000-00-00', 0, ''),
(324, '', '', '', '', '0000-00-00', 0, ''),
(325, '', '', '', '', '0000-00-00', 0, ''),
(326, '', '', '', '', '0000-00-00', 0, ''),
(327, '', '', '', '', '0000-00-00', 0, ''),
(328, '', '', '', '', '0000-00-00', 0, ''),
(329, '', '', '', '', '0000-00-00', 0, ''),
(330, '', '', '', '', '0000-00-00', 0, ''),
(361, '', '', '', '', '0000-00-00', 0, ''),
(362, '', '', '', '', '0000-00-00', 0, ''),
(363, '', '', '', '', '0000-00-00', 0, ''),
(364, '', '', '', '', '0000-00-00', 0, ''),
(365, '', '', '', '', '0000-00-00', 0, ''),
(366, '', '', '', '', '0000-00-00', 0, ''),
(367, '', '', '', '', '0000-00-00', 0, ''),
(368, '', '', '', '', '0000-00-00', 0, ''),
(369, '', '', '', '', '0000-00-00', 0, ''),
(370, '', '', '', '', '0000-00-00', 0, ''),
(371, '', '', '', '', '0000-00-00', 0, ''),
(372, '', '', '', '', '0000-00-00', 0, ''),
(373, '', '', '', '', '0000-00-00', 0, ''),
(374, '', '', '', '', '0000-00-00', 0, ''),
(375, '', '', '', '', '0000-00-00', 0, ''),
(376, '', '', '', '', '0000-00-00', 0, ''),
(377, '', '', '', '', '0000-00-00', 0, ''),
(378, '', '', '', '', '0000-00-00', 0, ''),
(379, '', '', '', '', '0000-00-00', 0, ''),
(380, '', '', '', '', '0000-00-00', 0, ''),
(381, '', '', '', '', '0000-00-00', 0, ''),
(382, '', '', '', '', '0000-00-00', 0, ''),
(383, '', '', '', '', '0000-00-00', 0, ''),
(384, '', '', '', '', '0000-00-00', 0, ''),
(385, '', '', '', '', '0000-00-00', 0, ''),
(386, '', '', '', '', '0000-00-00', 0, ''),
(387, '', '', '', '', '0000-00-00', 0, ''),
(388, '', '', '', '', '0000-00-00', 0, ''),
(389, '', '', '', '', '0000-00-00', 0, ''),
(390, '', '', '', '', '0000-00-00', 0, ''),
(391, '', '', '', '', '0000-00-00', 0, ''),
(392, '', '', '', '', '0000-00-00', 0, ''),
(393, '', '', '', '', '0000-00-00', 0, ''),
(394, '', '', '', '', '0000-00-00', 0, ''),
(395, '', '', '', '', '0000-00-00', 0, ''),
(396, '', '', '', '', '0000-00-00', 0, ''),
(397, '', '', '', '', '0000-00-00', 0, ''),
(398, '', '', '', '', '0000-00-00', 0, ''),
(399, '', '', '', '', '0000-00-00', 0, ''),
(400, '', '', '', '', '0000-00-00', 0, ''),
(401, '', '', '', '', '0000-00-00', 0, ''),
(402, '', '', '', '', '0000-00-00', 0, ''),
(403, '', '', '', '', '0000-00-00', 0, ''),
(404, '', '', '', '', '0000-00-00', 0, ''),
(405, '', '', '', '', '0000-00-00', 0, ''),
(406, '', '', '', '', '0000-00-00', 0, ''),
(407, '', '', '', '', '0000-00-00', 0, ''),
(408, '', '', '', '', '0000-00-00', 0, ''),
(409, '', '', '', '', '0000-00-00', 0, ''),
(410, '', '', '', '', '0000-00-00', 0, ''),
(411, '', '', '', '', '0000-00-00', 0, ''),
(412, '', '', '', '', '0000-00-00', 0, ''),
(413, '', '', '', '', '0000-00-00', 0, ''),
(414, '', '', '', '', '0000-00-00', 0, ''),
(415, '', '', '', '', '0000-00-00', 0, ''),
(416, '', '', '', '', '0000-00-00', 0, ''),
(417, '', '', '', '', '0000-00-00', 0, ''),
(418, '', '', '', '', '0000-00-00', 0, ''),
(419, '', '', '', '', '0000-00-00', 0, ''),
(420, '', '', '', '', '0000-00-00', 0, ''),
(421, '', '', '', '', '0000-00-00', 0, ''),
(422, '', '', '', '', '0000-00-00', 0, ''),
(423, '', '', '', '', '0000-00-00', 0, ''),
(424, '', '', '', '', '0000-00-00', 0, ''),
(425, '', '', '', '', '0000-00-00', 0, ''),
(426, '', '', '', '', '0000-00-00', 0, ''),
(427, '', '', '', '', '0000-00-00', 0, ''),
(428, '', '', '', '', '0000-00-00', 0, ''),
(429, '', '', '', '', '0000-00-00', 0, ''),
(430, '', '', '', '', '0000-00-00', 0, ''),
(431, '', '', '', '', '0000-00-00', 0, ''),
(432, '', '', '', '', '0000-00-00', 0, ''),
(433, '', '', '', '', '0000-00-00', 0, ''),
(434, '', '', '', '', '0000-00-00', 0, ''),
(435, '', '', '', '', '0000-00-00', 0, ''),
(436, '', '', '', '', '0000-00-00', 0, ''),
(437, '', '', '', '', '0000-00-00', 0, ''),
(438, '', '', '', '', '0000-00-00', 0, ''),
(439, '', '', '', '', '0000-00-00', 0, ''),
(440, '', '', '', '', '0000-00-00', 0, ''),
(441, '', '', '', '', '0000-00-00', 0, ''),
(442, '', '', '', '', '0000-00-00', 0, ''),
(443, '', '', '', '', '0000-00-00', 0, ''),
(444, '', '', '', '', '0000-00-00', 0, ''),
(445, '', '', '', '', '0000-00-00', 0, ''),
(446, '', '', '', '', '0000-00-00', 0, ''),
(447, '', '', '', '', '0000-00-00', 0, ''),
(448, '', '', '', '', '0000-00-00', 0, ''),
(449, '', '', '', '', '0000-00-00', 0, ''),
(450, '', '', '', '', '0000-00-00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `No` int(5) NOT NULL,
  `id_user` int(10) NOT NULL,
  `nama` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`No`, `id_user`, `nama`) VALUES
(1, 1100012, 'NANIA VARVARA'),
(2, 1100013, 'NANIA MISMIS'),
(3, 1100021, 'ABREGARD LERDROF'),
(4, 1100112, 'JHON LEASING'),
(5, 1100109, 'BREAD JHONSON'),
(6, 1100122, 'MONRWO ALEN'),
(7, 1100339, 'DAVID JENKINS'),
(8, 1100331, 'PLAVA ZEROF'),
(9, 1100701, 'NATALIA KYONOVKA'),
(10, 1100715, 'ALBERTO GONZALES'),
(11, 1100417, 'MARADONA ROSERIA'),
(12, 1100444, 'LANGLEY SORYU'),
(13, 1100414, 'LEON S KENNEDY'),
(14, 1100999, 'EZUL COKYORU'),
(15, 1100900, 'MEHMET GERARD'),
(16, 1100903, 'JENSEN AGWERD'),
(17, 1100907, 'TOMO ISHIKAMI'),
(18, 1100919, 'SHIRAYUSA HINEKOI'),
(19, 1100911, 'KOMODOR TUNGSTEN'),
(20, 1100186, 'KREMLIN GATER'),
(21, 1100555, 'MEMOIN REMIOR'),
(22, 1100531, 'MARIAM DE LA RUSA'),
(23, 1100537, 'OZNAV FREINCH'),
(24, 1100564, 'POINER SULVUGUSA'),
(25, 1100676, 'JENIFER ONIERO'),
(26, 1100611, 'YOICHI KATEGAWA'),
(27, 1100611, 'ERAND ALEXANDER'),
(28, 1100881, 'LIONA JENNIN'),
(29, 1100873, 'HISEN NERA'),
(30, 1100879, 'BISHAMON');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `tb_trx`
--
ALTER TABLE `tb_trx`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `No` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_trx`
--
ALTER TABLE `tb_trx`
  MODIFY `No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Database: `db_penerimaan_mhs`
--
CREATE DATABASE IF NOT EXISTS `db_penerimaan_mhs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_penerimaan_mhs`;

-- --------------------------------------------------------

--
-- Table structure for table `t_jurusan`
--

CREATE TABLE `t_jurusan` (
  `id_pendaftaran` int(5) NOT NULL,
  `id_panitia` int(5) NOT NULL,
  `kode_progdi` int(5) NOT NULL,
  `nama_progdi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_jurusan`
--

INSERT INTO `t_jurusan` (`id_pendaftaran`, `id_panitia`, `kode_progdi`, `nama_progdi`) VALUES
(1202, 1302, 1402, 'KI'),
(1203, 1303, 1403, 'STM'),
(1204, 1304, 1404, 'SKL'),
(1205, 1305, 1405, 'SPS'),
(1206, 1306, 1406, 'KLA'),
(1207, 1307, 1407, 'BMS'),
(1208, 1308, 1408, 'JKM'),
(1209, 1309, 1409, 'LLA'),
(1210, 1310, 1410, 'STA'),
(1211, 1311, 1411, 'SSS');

-- --------------------------------------------------------

--
-- Table structure for table `t_pendaftaran`
--

CREATE TABLE `t_pendaftaran` (
  `id_pendaftaran` int(5) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `id_panitia` int(5) NOT NULL,
  `tanggal_pendaftaran` date NOT NULL,
  `kode_progdi` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_pendaftaran`
--

INSERT INTO `t_pendaftaran` (`id_pendaftaran`, `nis`, `id_panitia`, `tanggal_pendaftaran`, `kode_progdi`) VALUES
(1202, '1102.0', 1302, '2020-04-02', 1402),
(1203, '1103.0', 1303, '2020-04-03', 1403),
(1204, '1104.0', 1304, '2020-04-04', 1404),
(1205, '1105.0', 1305, '2020-04-05', 1405),
(1206, '1106.0', 1306, '2020-04-06', 1406),
(1207, '1107.0', 1307, '2020-04-07', 1407),
(1208, '1108.0', 1308, '2020-04-08', 1408),
(1209, '1109.0', 1309, '2020-04-09', 1409),
(1210, '1110.0', 1310, '2020-04-10', 1410),
(1211, '1111', 1309, '2020-04-25', 1406);

-- --------------------------------------------------------

--
-- Table structure for table `t_siswa`
--

CREATE TABLE `t_siswa` (
  `nis` int(5) NOT NULL,
  `nama_siswa` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `kode_progdi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_siswa`
--

INSERT INTO `t_siswa` (`nis`, `nama_siswa`, `jenis_kelamin`, `alamat`, `asal_sekolah`, `kode_progdi`) VALUES
(1101, 'Abdul Munir', 'L', 'Jl.Sentosa raya', 'SMA 2 SKM', '23.0'),
(1102, 'Abdul siswari', 'L', 'Jl.Kemuning Sesuatu', 'SMK SKS 001', '12.0'),
(1103, 'Asnawi ', 'L', 'Jl. Anu 1', 'SMK SKS 002', '23.0'),
(1104, 'Bronjong', 'P', 'Jl. Anu 2', 'SMK SKS 003', '45.0'),
(1105, 'Juned', 'P', 'Jl. Anu 3', 'SMK SKS 004', '89.0'),
(1106, 'Topi Kulas', 'L', 'Jl. Anu 4', 'SMK SKS 005', '43.0'),
(1107, 'Asem Manis', 'P', 'Jl. Anu 5', 'SMK SKS 006', '73.0'),
(1108, 'Sista Junari', 'L', 'Jl. Anu 6', 'SMK SKS 007', '13.0'),
(1109, 'Velg Motor', 'L', 'Jl. Anu 7', 'SMK SKS 008', '90.0'),
(1110, 'Klepon', 'L', 'Jl. Anu 8', 'SMK SKS 009', '34.0'),
(1111, 'Semprul', 'L', 'Jl. Anu 9', 'SMK SKS 010', '89.0'),
(1112, 'Si Kampret', 'P', 'Jl. Anu 10', 'SMK SKS 011', '43.0'),
(1113, 'Nujum', 'P', 'Jl. Anu 11', 'SMK SKS 012', '73.0'),
(1114, 'Jondro', 'P', 'Jl. Anu 12', 'SMK SKS 013', '13.0'),
(1116, 'Prongkolan', 'L', 'Jl. Anu 14', 'SMK SKS 015', '34.0'),
(1117, 'Janwari', 'P', 'Jl. Anu 15', 'SMK SKS 016', '12.0'),
(1118, 'Sonaji', 'P', 'Jl. Anu 16', 'SMK SKS 017', '23.0'),
(1119, 'Gear Box', 'L', 'Jl. Anu 17', 'SMK SKS 018', '45.0'),
(1120, 'Auxuliary Boile', 'P', 'Jl. Anu 18', 'SMK SKS 019', '89.0'),
(1121, 'High Preasure', 'L', 'Jl. Anu 19', 'SMK SKS 020', '43.0'),
(1122, 'Turbin', 'P', 'Jl. Anu 20', 'SMK SKS 021', '73.0'),
(1123, 'Generator 6KV', 'L', 'Jl. Anu 21', 'SMK SKS 022', '13.0'),
(1124, 'Igniter', 'L', 'Jl. Anu 22', 'SMK SKS 023', '90.0'),
(1125, 'Oil Gun', 'L', 'Jl. Anu 23', 'SMK SKS 024', '99.0'),
(1126, 'Sun Blow', 'L', 'JL.Anu 24', 'SMK SKS 025', '23'),
(1127, 'Tebu Kecut', 'P', 'Jl. Anu', 'MAN SKS', '20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `t_pendaftaran`
--
ALTER TABLE `t_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
  MODIFY `id_pendaftaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1212;

--
-- AUTO_INCREMENT for table `t_pendaftaran`
--
ALTER TABLE `t_pendaftaran`
  MODIFY `id_pendaftaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1213;

--
-- AUTO_INCREMENT for table `t_siswa`
--
ALTER TABLE `t_siswa`
  MODIFY `nis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1128;
--
-- Database: `db_toko`
--
CREATE DATABASE IF NOT EXISTS `db_toko` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_toko`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `kategori_id`, `satuan_id`) VALUES
(13211, 'Handuk', 13200, 1),
(13220, 'Sabun Colek', 13201, 3),
(13222, 'Sendal Jepit', 13201, 2),
(13223, 'Lusin', 0, 0),
(13224, 'Lusin', 0, 0),
(13225, 'Lusin', 0, 0),
(13226, 'Lusin', 0, 0),
(13227, 'Lusin', 0, 0),
(13228, 'Lusin', 0, 3),
(13229, 'Lusin', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`) VALUES
(1, ''),
(2, ''),
(17001, 'Sandal'),
(17002, '');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `satuan_id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`satuan_id`, `nama`) VALUES
(0, 'Lusin'),
(1, 'Lusin'),
(3, ''),
(12, '');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_transaksi` varchar(100) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13230;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17003;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_unimba`
--
CREATE DATABASE IF NOT EXISTS `db_unimba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_unimba`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `nidn` int(255) NOT NULL,
  `nama_dosen` char(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `mata_kuliah` varchar(255) DEFAULT NULL,
  `id_matkul` int(255) DEFAULT NULL,
  `jenis_kelamin` char(255) DEFAULT NULL,
  `no_telp` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`nidn`, `nama_dosen`, `alamat`, `mata_kuliah`, `id_matkul`, `jenis_kelamin`, `no_telp`) VALUES
(70001230, 'Dr. Endah Sudarmilah, S.T., M.Eng.', 'Gedung Sentral Senayan 3, Lt. 26, Jl. Asia Afrika No. 8, Gelora Bung Karno - Senayan, Jakarta Pusat 10270', 'Cyber Security', 9001310, 'Pria', 59342276),
(70001231, 'Azizah Fatmawati, S.T., M.Cs.', 'Panin Bank Centre, Jl. Jend. Sudirman Kav. 1 (Senayan), Jakarta 10270', 'Java', 9001311, 'Wanita', 59342277),
(70001232, 'Nurgiyatna, S.T., M.Sc., Ph.D.', 'Graha Niaga / Niaga Tower Jl. Jend. Sudirman Kav. 58, Jakarta 12190', 'Math Logic', 9001312, 'Wanita', 59342278),
(70001233, 'Aris Rakhmadi, S.T., M.Eng.', 'Gedung UOB Plaza, Jl. M.H. Thamrin No. 10 Jakarta 10230', 'Microcontroller', 9001313, 'Pria', 59342279),
(70001234, 'Dedi Gunawan, S.T., M.Sc., Ph.D.', 'OCBC NISP Tower, Jl. Prof.Dr. Satrio Kav. 25, Jakarta Selatan 12950', 'Cryptography', 9001314, 'Pria', 59342280),
(70001235, 'Prof. Dr. Budi Murtiyasa, M.Kom.', 'Gedung Arha Graha, Lt. 5, Jl. Sudirman Kav. 52-53, Senayan, Jakarta 12190', 'Sosiology', 9001315, 'Pria', 59342281),
(70001236, 'Husni Thamrin, S.T., M.T., Ph.D.', 'Jl. KH. Wahid Hasyim No. 234, Jakarta 10250', 'Deep Learning AI', 9001316, 'Pria', 59342282),
(70001237, 'Dr., Ir. Bana Handaga, M.T.', 'Gedung WTC 1, Lt. 8-9 Jl. Jendral Sudirman Kav.29-31, Jakarta 12920', 'Tech Fundamental', 9001317, 'Pria', 59342283),
(70001238, 'Endang Wahyu Pamungkas, S.Kom., M.Kom.', 'Gedung Sahid Sudirman Center Lt. 33 Jl. Sudirman No. 86, Jakarta Pusat 10220', 'Operatig System', 9001318, 'Pria', 59342284),
(70001239, 'Fatah Yasin Irsyadi, S.T., M.T.', 'Mayapada Tower - 2nd Floor, Jl. Jend. Sudirman Kav. 28, Jakarta 12920', 'Industrial Mchanicm', 9001319, 'Pria', 59342285),
(70001240, 'Gunawan Ariyanto, S.T., M.Comp.Sc., Ph.D.', 'Jl. H. Samanhudi No. 37, Jakarta 10710', 'Engineering Fundamental', 9001320, 'Pria', 59342286),
(70001241, 'Helman Muhammad, S.T., M.T.', '​Gedung Muamalat Tower', 'C++/#', 9001321, 'Pria', 59342287),
(70001242, 'Devi Afriyantari Puspa Putri, S.Kom., M.Sc.', ' Jl. Prof. Dr. Satrio Kav. 18, Jakarta 10220', 'Database', 9001322, 'Wanita', 59342288),
(70001243, 'Dimas Aryo Anggoro, S.Kom., M.Sc.', 'Menara Bank Danamon,\nJl. HR. Rasuna Said Blok C No. 10, Karet Setiabudi, Jakarta Selatan 12940', 'Vulnerability', 9001323, 'Pria', 59342289),
(70001244, 'Umi Fadlilah, S.T., M.Eng.', 'Gedung World Trade Center (WTC) II, Jl. Jend. Sudirman Kav. 29-31 Jakarta 12920', 'Metasploit', 9001324, 'Wanita', 59342290),
(70001245, 'Maryam, S.Kom., M.Eng.', 'Gedung Sentral Senayan 3, Lt. 26, Jl. Asia Afrika No. 8, Gelora Bung Karno - Senayan, Jakarta Pusat 10270', 'Linux', 9001325, 'Wanita', 59342291),
(70001246, 'Yusuf Sulistyo Nugroho, S.T., M.Eng.', 'Menara BCA, Grand Indonesia Jl. M.H Thamrin No. 1, Jakarta 10310', 'Digital Forensics', 9001326, 'Pria', 59342292);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id_jurusan` int(255) NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id_jurusan`, `jurusan`) VALUES
(404100020, 'TEKNIK INFORMATIKA'),
(404100021, 'SISTEM INFORMASI'),
(404100022, 'MEKANIKA INDUSTRI'),
(404100023, 'GEOSPASIAL'),
(404100024, 'FISIKA QUANTUM'),
(404100025, 'TEHNIK SIPIL'),
(404100026, 'TEHNIK KIMIA'),
(404100027, 'TEHNIK ELEKTRO'),
(404100028, 'TEKNIK INDUSTRI AGRARIA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `nim` int(255) NOT NULL,
  `nama_mahasiswa` char(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `id_jurusan` varchar(255) DEFAULT NULL,
  `no_telp` int(255) DEFAULT NULL,
  `hobby` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`nim`, `nama_mahasiswa`, `alamat`, `jurusan`, `id_jurusan`, `no_telp`, `hobby`) VALUES
(112300, 'Abdul Johar', 'Menara Bank Danamon,\nJl. HR. Rasuna Said Blok C No. 10, Karet Setiabudi, Jakarta Selatan 12940', 'TEKNIK INFORMATIKA', '404100020.0', 56738922, 'memancing'),
(112301, 'Abdul Majid', 'Gedung World Trade Center (WTC) II, Jl. Jend. Sudirman Kav. 29-31 Jakarta 12920', 'TEKNIK INFORMATIKA', '404100020.0', 56738923, 'membaca'),
(112308, 'Ali Mutaali', 'OCBC NISP Tower, Jl. Prof.Dr. Satrio Kav. 25, Jakarta Selatan 12950', 'SISTEM INFORMSASI', '404100021.0', 56738930, 'bulu tangkis'),
(112357, 'Ambarwati Rengganingrum', 'Gd. Gozco,  Jl. Raya Pasar Minggu Kav.32 Pancoran, Jakarta Selatan', 'TEHNIK SIPIL', '404100025.0', 56738979, 'memnacing'),
(112360, 'Aminatri Sukarniawan', 'Wisma BSG, Jl. Abdul Muis No. 40, Jakarta Pusat', 'TEHNIK SIPIL', '404100025.0', 56738982, 'bersih bersih'),
(112311, 'Amucuy', 'Gedung WTC 1, Lt. 8-9 Jl. Jendral Sudirman Kav.29-31, Jakarta 12920', 'TEKNIK INFORMATIKA', '404100020.0', 56738933, 'jalan jalan'),
(112321, 'Andi Cahyono', 'Wisma Hayam Wuruk Lt.1 & 2, Jl. Hayam Wuruk No. 8, Jakarta Pusat', 'GEOSPASIAL', '404100023.0', 56738943, 'sosialisasi'),
(112319, 'Bambang Setyo', 'Sinarmas Land Plaza, Menara I, Lt. 1 &2 Jl. MH. Thamrin Kav. 51, Jakarta 10350', 'TEKNIK ELEKTRO', '404100027.0', 56738941, 'menulis'),
(112318, 'Mnugroho', 'Ged. International Financial Centre (IFC) Tower 2 Lt. Dasar, Mezz​anine, 30 dan 31 Jl. Jend. Sudirman Kav. 22-23 Jakarta Selatan', 'TEKNIK ELEKTRO', '404100027.0', 56738940, 'menulis'),
(112361, 'Belatrix Sativa', 'Gd.Panin Life Centre Lt. 3, Jl. Letjend S. Parman Kav 91 Jakarta 11420', 'TEHNIK SIPIL', '404100025.0', 56738983, 'bersih bersih'),
(112310, 'Bromocorah', 'Jl. KH. Wahid Hasyim No. 234, Jakarta 10250', 'SISTEM INFORMSASI', '404100021.0', 56738932, 'komputasi'),
(112355, 'Citra Aminatra Sinar Surya', 'Jl. Ir. H. Djuanda No. 137, Bandung', 'TEHNIK SIPIL', '404100025.0', 56738977, 'musik'),
(112334, 'Cendikia Fadilah', 'Menara Mega Syariah, Jl. HR Rasuna Said Kav. 19A, Jakarta 12950', 'SISTEM INFORMSASI', '404100021.0', 56738956, 'olahraga'),
(112362, 'Ernasri Wati', 'Jl. Jembatan Merah No. 15-17, Surabaya 60175', 'TEHNIK SIPIL', '404100025.0', 56738984, 'bersih bersih'),
(112329, 'Cyntia Munika', 'Mangkuluhur City Tower One', 'MEKANIKA INDUSTRI', '404100022.0', 56738951, 'bersih bersih'),
(112313, 'Daiman', 'Mayapada Tower - 2nd Floor, Jl. Jend. Sudirman Kav. 28, Jakarta 12920', 'MEKANIKA INDUSTRI', '404100022.0', 56738935, 'hiking'),
(112330, 'Debian Saraswati', 'Jl. Jend. Gatot Subroto Kav. 1-3 Kel. Karet Semanggi, Jakarta Selatan​', 'TEKNIK INFORMATIKA', '404100020.0', 56738952, 'bersih bersih'),
(112331, 'Debora Sibutarbutar', 'Gedung MNC Financial Center, Lt. 6,7,8 Jl. Kebon Sirih Raya No. 27, Jakarta Pusat 10340', 'TEKNIK INFORMATIKA', '404100020.0', 56738953, 'musik'),
(112356, 'Kiswanti Adiputri Mangunkerso', 'Jl. Tiang Bendera III No. 26-28-30, Jakarta 11230', 'TEHNIK SIPIL', '404100025.0', 56738978, 'musik'),
(112358, 'Kulowo Sebo Adiputro', 'Jl. Suryopranoto No. 52, Jakarta 10130', 'TEHNIK SIPIL', '404100025.0', 56738980, 'menanam'),
(112363, 'Frqon Bimayaksa', 'Jl. Salemba Raya No. 55, Jakarta', 'MEKANIKA INDUSTRI', '404100022.0', 56738985, 'musik'),
(112337, 'Getri Gayatri', 'Gedung Perkantoran sahid Sudirman Center Lt. 15', 'SISTEM INFORMSASI', '404100021.0', 56738959, 'hang out'),
(112359, 'Setyo Winarko Adipati', 'Plaza Semanggi Lt. 9, Jl. Jendral Sudirman Kav. 50 Jakarta', 'TEHNIK SIPIL', '404100025.0', 56738981, 'menanam'),
(112317, 'Muntilan', 'Jl. Zainul Arifin 118, Medan 20153', 'TEKNIK ELEKTRO', '404100027.0', 56738939, 'membaca'),
(112305, 'Hadi nainggolan', 'Panin Bank Centre, Jl. Jend. Sudirman Kav. 1 (Senayan), Jakarta 10270', 'TEKNIK INFORMATIKA', '404100020.0', 56738927, 'sepak bola'),
(112364, 'Haedi Sultan Ambarita', 'Gedung Sampoerna Strategic Square Menara Utara, Lt. Mezzanine Jl. Jend. Sudirman Kav 45 Jakarta', 'MEKANIKA INDUSTRI', '404100022.0', 56738986, 'musik'),
(112320, 'Sariman Amandi', 'Jl. Basuki Rahmat No. 50 - 54, Surabaya', 'TEKNIK ELEKTRO', '404100027.0', 56738942, 'sosialisasi'),
(112365, 'Iman Adi Sanggawetan', 'Jl. Ir. H. Juanda No. 12, Jakarta 10120', 'MEKANIKA INDUSTRI', '404100022.0', 56738987, 'memnacing'),
(112309, 'Iqbal Huda Cengkasana', 'Gedung Arha Graha, Lt. 5, Jl. Sudirman Kav. 52-53, Senayan, Jakarta 12190', 'SISTEM INFORMSASI', '404100021.0', 56738931, 'biliard'),
(112366, 'Jamsuri Adiyaksa', 'Jl. Basuki Rahmad No. 109, Surabaya', 'MEKANIKA INDUSTRI', '404100022.0', 56738988, 'olahraga'),
(112302, 'Jefri Brozoru', 'Gedung Sentral Senayan 3, Lt. 26, Jl. Asia Afrika No. 8, Gelora Bung Karno - Senayan, Jakarta Pusat 10270', 'TEKNIK INFORMATIKA', '404100020.0', 56738924, 'menanam'),
(112352, 'Brovos Taro', 'Gedung The Victoria, Jalan Tomang Raya Kav.3, Jakarta Barat', 'TEHNIK KIMIA', '404100026.0', 56738974, 'bersih bersih'),
(112349, 'Dimas Ferkinson', 'Tamara Center Lt. 15-17, Jl. Jend. Sudirman Kav. 24, Jakarta 12920', 'TEHNIK KIMIA', '404100026.0', 56738971, 'menanam'),
(112325, 'Junaedi Ali', 'Menara Bank Mega Lt.15, Jl. Kapten Tendean Kav. 12-14 A, Jakarta 12790', 'GEOSPASIAL', '404100023.0', 56738947, 'menanam'),
(112367, 'Kalamojang Enggar Satya', 'Gedung IKP RI, Jl. R.P. Suroso No. 21, Jakarta 10330', 'MEKANIKA INDUSTRI', '404100022.0', 56738989, 'olahraga'),
(112315, 'Kartusi', '​Gedung Muamalat Tower', 'MEKANIKA INDUSTRI', '404100022.0', 56738937, 'komputasi'),
(112353, 'Gumawang Adisetya', 'Jl. Abdul Muis No. 2-4, Jakarta Pusat', 'TEHNIK KIMIA', '404100026.0', 56738975, 'bersih bersih'),
(112350, 'Jemidin', 'World Trade Centre (WTC) 6, Jl. Jend. Sudirman Kav.29-31, Jakarta 12920', 'TEHNIK KIMIA', '404100026.0', 56738972, 'menanam'),
(112336, 'Kuncoro Amandaman', 'Gedung Mayora, Jl. Tomang Raya Kav. 21-23, Jakarta 11440', 'SISTEM INFORMSASI', '404100021.0', 56738958, 'hang out'),
(112346, 'Jhon Bravaniel', 'Noble House Jl.Dr. Ide Anak Agung Gde Agung Kav. E 4.2 No. 2 Lantai 30 & 32 Lingkar Mega Kuningan, Jakarta Selatan', 'TEHNIK KIMIA', '404100026.0', 56738968, 'sosialisasi'),
(112348, 'Laila Lailatul Laili', 'Sona Topas Tower Lt. 1-3, Jl. Jend. Sudirman Kav. 26, Jakarta 12920', 'TEHNIK KIMIA', '404100026.0', 56738970, 'sosialisasi'),
(112368, 'Mangku Bumi', 'Jl. Jatinegara Timur No. 72, Jakarta 13310', 'GEOSPASIAL', '404100023.0', 56738990, 'hang out'),
(112332, 'Meilinda Cokroaminoto', 'Gedung BRI Agro Lt. 1-7 Jl. Warung Jati Barat No. 139 RT.010 RW.009 Kel Kalibata, Pancoran Jakarta Selatan 12740​', 'TEKNIK INFORMATIKA', '404100020.0', 56738954, 'musik'),
(112342, 'Baron Thunder', 'Sinarmas Land Plaza, Menara 2 Lt. 24, Jl. MH. Thamrin No. 51, Jakarta 10350', 'TEKNIK INDUSTRI AGRARIA', '404100028.0', 56738964, 'menulis'),
(112338, 'Gunawan Wicaksono', 'Jl. Jenderal Sudirman Kav. 86', 'TEKNIK INDUSTRI AGRARIA', '404100028.0', 56738960, 'musiktennis'),
(112328, 'Neni Anggraeni', 'Wisma Mandiri, Jl. M. H. Thamrin No. 5, Jakarta 10340', 'MEKANIKA INDUSTRI', '404100022.0', 56738950, 'bersih bersih'),
(112369, 'Osbar Praditya', 'Jl. Otto Iskandardinata No. 18, Bandung 40171', 'GEOSPASIAL', '404100023.0', 56738991, 'hang out'),
(112322, 'Prabowo', 'ICBC Tower Lt. 32, Jl. M.H. Thamrin No. 81, Jakarta Pusat', 'GEOSPASIAL', '404100023.0', 56738944, 'sosialisasi'),
(112304, 'Prawita Raharja Kusuma', 'Gedung Sentral Senayan 3, Lt. 26, Jl. Asia Afrika No. 8, Gelora Bung Karno - Senayan, Jakarta Pusat 10270', 'SISTEM INFORMSASI', '404100021.0', 56738926, 'menoleh'),
(112344, 'Hardiman', 'Sequis Tower Lt.28, SCBD Lot 11B Jl. Jenderal Sudirman Kav.71 Jakarta 12190', 'TEKNIK INDUSTRI AGRARIA', '404100028.0', 56738966, 'sosialisasi'),
(112370, 'Rangkuguana Diraja', 'Menara BTPN, Lt. 12 CBD Mega Kuningan, Jl. Dr. Ide Anak Agung Gde Agung Kav. 5.5-5.6 Kel. Kuningan Timur, Jakarta Selatan', 'GEOSPASIAL', '404100023.0', 56738992, 'musiktennis'),
(112335, 'Roy Janis', 'Plaza Bank Index Lt. 8 Jl. M. H. Thamrin No. 57 Jakarta Pusat', 'SISTEM INFORMSASI', '404100021.0', 56738957, 'olahraga'),
(112343, 'Radiman Menjensen', 'Gedung Menara Jamsostek Lt. 1 & 6, Jl. Gatot Subroto No. 38 Jakarta Selatan 12710', 'TEKNIK INDUSTRI AGRARIA', '404100028.0', 56738965, 'menulis'),
(112314, 'Samuri', 'Jl. H. Samanhudi No. 37, Jakarta 10710', 'MEKANIKA INDUSTRI', '404100022.0', 56738936, 'musiktennis'),
(112345, 'Rziky Coker', 'World Trade Centre 3, Lt.30-31 Jl. Jend. Sudirman Kav.29-31, Karet Kuningan, Setiabudi, Jakarta Selatan 12920', 'TEKNIK INDUSTRI AGRARIA', '404100028.0', 56738967, 'sosialisasi'),
(112340, 'Sartika Sari Devi', 'DBS Bank Tower, Lobby Level Lt 33-37 Ciputra World 1, Jl. Prof. Dr. Satrio Kav 3-5 Jakarta 12940', 'TEKNIK INDUSTRI AGRARIA', '404100028.0', 56738962, 'membaca'),
(112324, 'Septo Kusumo', 'Gedung Treasury Tower Lt.26 dan 27 District 8, SCBC Lt.28 Jl. Jend. Sudirman Kav.52 - 53 Jakarta 12190', 'GEOSPASIAL', '404100023.0', 56738946, 'sosialisasi'),
(112351, 'Luciana Fergosa', 'Menara BTPN - CBD Mega Kuningan, Jl. Dr. Ide Anak Agung Gde Agung Kav. 5,5 - 5,6 Jakarta Selatan 12950', 'TEHNIK KIMIA', '404100026.0', 56738973, 'menanam'),
(112316, 'Siamei', ' Jl. Prof. Dr. Satrio Kav. 18, Jakarta 10220', 'MEKANIKA INDUSTRI', '404100022.0', 56738938, 'membaca'),
(112347, 'Sinaga Gautama', 'Wisma GKBI Suites-UG01 Jl. Jendral Sudirman No. 29, Jakarta', 'TEHNIK KIMIA', '404100026.0', 56738969, 'sosialisasi'),
(112333, 'Slamet Riyadi', 'Graha Mandiri, Jl. Imam Bonjol No.61 Lt. 1, Jakarta Pusat 10310', 'TEKNIK INFORMATIKA', '404100020.0', 56738955, 'memnacing'),
(112323, 'Sukirman Anendi', 'Revenue Tower District 8 Lt.8 Jl. Jend. Sudirman Kav. 52-53 Jakarta 12190', 'GEOSPASIAL', '404100023.0', 56738945, 'sosialisasi'),
(112326, 'Susanti', 'Gedung Tempo Pavilion 1, Jl. HR Rasuna Said Kav. 11, Jakarta', 'GEOSPASIAL', '404100023.0', 56738948, 'menanam'),
(112354, 'Suminarti Cendrawasih', 'Jl. Braga No. 135 Bandung', 'TEHNIK KIMIA', '404100026.0', 56738976, 'bersih bersih'),
(112371, 'Sumampar Panca Sona', 'Graha Bank MAS Lt. 3, Jl. Setiabudi Selatan Kav. 7-8, Jakarta Selatan', 'FISIKA QUANTUM', '404100024.0', 56738993, 'komputasi'),
(112339, 'Triaminatri Kusniadi', 'Jakarta Pusat 10220', 'TEKNIK INDUSTRI AGRARIA', '404100028.0', 56738961, 'komputasi'),
(112372, 'Tubagus Aminudin Cokrodiningrat', 'Jl. Asia Afrika No. 115, Bandung', 'FISIKA QUANTUM', '404100024.0', 56738994, 'membaca'),
(112303, 'Tukang Beling', 'Menara BCA, Grand Indonesia Jl. M.H Thamrin No. 1, Jakarta 10310', 'SISTEM INFORMSASI', '404100021.0', 56738925, 'menengok'),
(112307, 'Tursiman Bajing', 'Gedung UOB Plaza, Jl. M.H. Thamrin No. 10 Jakarta 10230', 'SISTEM INFORMSASI', '404100021.0', 56738929, 'tennis'),
(112312, 'Udjo', 'Gedung Sahid Sudirman Center Lt. 33 Jl. Sudirman No. 86, Jakarta Pusat 10220', 'MEKANIKA INDUSTRI', '404100022.0', 56738934, 'musik'),
(112373, 'Umaisa Huraira', 'Graha Mantap, Jl Cikini Raya No.42 Jakarta', 'FISIKA QUANTUM', '404100024.0', 56738995, 'membaca'),
(112374, 'Viktor Syahputra', 'Gedung Graha BIP Lt.10 Jl. Gatot Subroto Kav. 23 Karet Semanggi, Setiabudi Jakarta Selatan 12930', 'FISIKA QUANTUM', '404100024.0', 56738996, 'menulis'),
(112341, 'Vransiska Noyovka', 'Menara Mulia Lt. 5 & 6, Suite 501 & 601 Jl. Gatot Subroto Kav. 9-11, Jakarta', 'TEKNIK INDUSTRI AGRARIA', '404100028.0', 56738963, 'membaca'),
(112327, 'Wina Aulianisa', 'Jl. MT. Haryono Kav. 50-51, Jakarta 12770', 'MEKANIKA INDUSTRI', '404100022.0', 56738949, 'menanam'),
(112306, 'Yusri efendi', 'Graha Niaga / Niaga Tower Jl. Jend. Sudirman Kav. 58, Jakarta 12190', 'SISTEM INFORMSASI', '404100021.0', 56738928, 'musik'),
(112375, 'Zunaidin Ali', 'Asean Tower Lt 1 dan 3, Jl. KH. Samanhudi No. 10, Jakarta Pusat', 'FISIKA QUANTUM', '404100024.0', 56738997, 'menulis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `id_matkul` int(255) DEFAULT NULL,
  `mata_kuliah` varchar(255) DEFAULT NULL,
  `nidn` int(255) DEFAULT NULL,
  `nama_dosen` char(255) DEFAULT NULL,
  `jenis_kelamin` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`id_matkul`, `mata_kuliah`, `nidn`, `nama_dosen`, `jenis_kelamin`) VALUES
(9001310, 'Cyber Security', 70001230, 'Dr. Endah Sudarmilah, S.T., M.Eng.', 'Pria'),
(9001311, 'Java', 70001231, 'Azizah Fatmawati, S.T., M.Cs.', 'Wanita'),
(9001312, 'Math Logic', 70001232, 'Nurgiyatna, S.T., M.Sc., Ph.D.', 'Wanita'),
(9001313, 'Microcontroller', 70001233, 'Aris Rakhmadi, S.T., M.Eng.', 'Pria'),
(9001314, 'Cryptography', 70001234, 'Dedi Gunawan, S.T., M.Sc., Ph.D.', 'Pria'),
(9001315, 'Sosiology', 70001235, 'Prof. Dr. Budi Murtiyasa, M.Kom.', 'Pria'),
(9001316, 'Deep Learning AI', 70001236, 'Husni Thamrin, S.T., M.T., Ph.D.', 'Pria'),
(9001317, 'Tech Fundamental', 70001237, 'Dr., Ir. Bana Handaga, M.T.', 'Pria'),
(9001318, 'Operatig System', 70001238, 'Endang Wahyu Pamungkas, S.Kom., M.Kom.', 'Pria'),
(9001319, 'Industrial Mchanicm', 70001239, 'Fatah Yasin Irsyadi, S.T., M.T.', 'Pria'),
(9001320, 'Engineering Fundamental', 70001240, 'Gunawan Ariyanto, S.T., M.Comp.Sc., Ph.D.', 'Pria'),
(9001321, 'C++/#', 70001241, 'Helman Muhammad, S.T., M.T.', 'Pria'),
(9001322, 'Database', 70001242, 'Devi Afriyantari Puspa Putri, S.Kom., M.Sc.', 'Wanita'),
(9001323, 'Vulnerability', 70001243, 'Dimas Aryo Anggoro, S.Kom., M.Sc.', 'Pria'),
(9001324, 'Metasploit', 70001244, 'Umi Fadlilah, S.T., M.Eng.', 'Wanita'),
(9001325, 'Linux', 70001245, 'Maryam, S.Kom., M.Eng.', 'Wanita'),
(9001326, 'Digital Forensics', 70001246, 'Yusuf Sulistyo Nugroho, S.T., M.Eng.', 'Pria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD KEY `nidn` (`nidn`);

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD KEY `nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  MODIFY `nidn` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70001248;

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id_jurusan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404100029;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `nim` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112435;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_inventory\",\"table\":\"tb_trx\"},{\"db\":\"db_inventory\",\"table\":\"tb_barang\"},{\"db\":\"db_inventory\",\"table\":\"tb_kategori\"},{\"db\":\"db_inventory\",\"table\":\"tb_user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-01-26 16:57:28', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"pmahomme\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
