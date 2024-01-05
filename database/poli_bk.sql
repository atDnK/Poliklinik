-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 02:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poli_bk`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_poli`
--

CREATE TABLE `daftar_poli` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_pasien` int(11) UNSIGNED NOT NULL,
  `id_jadwal` int(11) UNSIGNED NOT NULL,
  `keluhan` text NOT NULL,
  `no_antrian` int(11) UNSIGNED NOT NULL,
  `status_periksa` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_poli`
--

INSERT INTO `daftar_poli` (`id`, `id_pasien`, `id_jadwal`, `keluhan`, `no_antrian`, `status_periksa`) VALUES
(1, 1, 1, 'sakit gigi geraham', 1, '1'),
(2, 9, 5, 'Badan pegal-pegal', 1, '0'),
(3, 11, 4, 'sakit panas', 1, '0'),
(4, 12, 1, 'sakit dok gusinya', 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `detail_periksa`
--

CREATE TABLE `detail_periksa` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_periksa` int(11) UNSIGNED NOT NULL,
  `id_obat` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_periksa`
--

INSERT INTO `detail_periksa` (`id`, `id_periksa`, `id_obat`) VALUES
(1, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `id_poli` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `password`, `alamat`, `no_hp`, `id_poli`) VALUES
(1, 'Adi', 'adi', 'Semarang', '0858649993333', 1),
(2, 'Ratih', 'ratih', 'Semarang', '0858613339999', 4),
(3, 'Sinta', 'sinta', 'Boyolali', '0858678883333', 2),
(4, 'Bambang', 'bambang', 'Mojokerto', '0858623334444', 4),
(5, 'Yuli', 'yuli', 'Yogyakarta', '0858673335555', 3),
(7, 'Yusuf', 'yusuf', 'Semarang', '9809987528975', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_periksa`
--

CREATE TABLE `jadwal_periksa` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_dokter` int(11) UNSIGNED NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_periksa`
--

INSERT INTO `jadwal_periksa` (`id`, `id_dokter`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(1, 7, 'Senin', '09:00:00', '11:30:00'),
(2, 1, 'Selasa', '09:30:00', '11:30:00'),
(3, 2, 'Senin', '09:30:00', '11:30:00'),
(4, 3, 'Kamis', '09:30:00', '11:30:00'),
(5, 4, 'Rabu', '09:30:00', '11:30:00'),
(6, 5, 'Selasa', '09:30:00', '11:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `kemasan` varchar(35) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `kemasan`, `harga`) VALUES
(1, 'Betadin 60 ml', 'botol', 30000),
(2, 'Salisil Bedak 2%', 'ktk 50 gram', 12000),
(3, 'Obat Batuk Hitam (O.B.H) cairan', 'btl 100 ml ', 4600),
(4, 'Ibuprofen tablet 400 mg', 'kotak 10 x 10 tablet', 28000),
(5, 'Parasetamol tablet 500 mg', 'ktk 10 x 10 tablet', 20000),
(8, 'Amoxicillin Trihydrate 500 mg', 'strip 10 tablet', 25000),
(9, 'Degirol LOZ', 'strip 10 tablet', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `no_rm` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `password`, `alamat`, `no_ktp`, `no_hp`, `no_rm`) VALUES
(1, 'Mariyadi', 'Mariyadi', 'Jl. Kulon No. 33', '000002345', '08965325743859', '202312-001'),
(2, 'Rani', 'Rani', 'Jl. Semar No. 55', '123456789', '08999357826345', '202312-002'),
(8, 'Yuna', 'Yuna', 'Semarang', '001', '001234', '202401-003'),
(9, 'Megumi', 'Megumi', 'Malang', '00123456789', '089765378494', '202401-004'),
(10, 'Salim', 'salim', 'Gua', '6895679760982', '0989826798702', '202401-005'),
(11, 'Nurul', 'nurul', 'Gua 1', '9062878258198468', '0875646585', '202401-006'),
(12, 'Rahmat', 'rahmat', 'Tokyo', '8598365986790', '0947584879539', '202401-007');

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_daftar_poli` int(11) UNSIGNED NOT NULL,
  `tgl_periksa` datetime NOT NULL,
  `catatan` text NOT NULL,
  `biaya_periksa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `id_daftar_poli`, `tgl_periksa`, `catatan`, `biaya_periksa`) VALUES
(1, 1, '2024-01-05 10:00:00', 'hanya sakit biasa', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_poli` varchar(25) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id`, `nama_poli`, `keterangan`) VALUES
(1, 'Poli Gigi dan Mulut', 'Memberikan pelayanan kesehatan untuk gigi dan mulut'),
(2, 'Poli Anak', 'Memberikan pelayanan masalah kesehatan terhadap anak'),
(3, 'Poli THT', 'Pelayanan pengobatan penyakit yang berhubungan dengan telinga, hidung dan tenggorokan'),
(4, 'Poli Umum', 'Pelayanan pemeriksaan kesehatan pasien secara umum dengan melihat indikasi atau gejala – gejala yang di derita oleh pasien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_poli`
--
ALTER TABLE `daftar_poli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daftarPoli_pasien` (`id_pasien`),
  ADD KEY `daftarPoli_jadwalPeriksa` (`id_jadwal`);

--
-- Indexes for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detailPeriksa_periksa` (`id_periksa`),
  ADD KEY `detailPeriksa_obat` (`id_obat`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokter_poli` (`id_poli`);

--
-- Indexes for table `jadwal_periksa`
--
ALTER TABLE `jadwal_periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwalPeriksa_dokter` (`id_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `periksa_daftarPoli` (`id_daftar_poli`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_poli`
--
ALTER TABLE `daftar_poli`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jadwal_periksa`
--
ALTER TABLE `jadwal_periksa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_poli`
--
ALTER TABLE `daftar_poli`
  ADD CONSTRAINT `daftarPoli_jadwalPeriksa` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal_periksa` (`id`),
  ADD CONSTRAINT `daftarPoli_pasien` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id`);

--
-- Constraints for table `detail_periksa`
--
ALTER TABLE `detail_periksa`
  ADD CONSTRAINT `detailPeriksa_obat` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id`),
  ADD CONSTRAINT `detailPeriksa_periksa` FOREIGN KEY (`id_periksa`) REFERENCES `periksa` (`id`);

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_poli` FOREIGN KEY (`id_poli`) REFERENCES `poli` (`id`);

--
-- Constraints for table `jadwal_periksa`
--
ALTER TABLE `jadwal_periksa`
  ADD CONSTRAINT `jadwalPeriksa_dokter` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id`);

--
-- Constraints for table `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `periksa_daftarPoli` FOREIGN KEY (`id_daftar_poli`) REFERENCES `daftar_poli` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
