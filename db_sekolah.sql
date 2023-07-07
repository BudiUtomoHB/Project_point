-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 12:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) NOT NULL,
  `ortu_id` int(8) NOT NULL,
  `status` enum('Ayah','Ibu') NOT NULL,
  `keterangan` enum('Kandung','Wali') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status`, `keterangan`) VALUES
(1, 5, 2, 'Ayah', 'Kandung'),
(2, 5, 3, 'Ibu', 'Kandung'),
(3, 3, 1, 'Ayah', 'Kandung'),
(4, 4, 4, 'Ibu', 'Kandung'),
(5, 2, 5, 'Ayah', 'Kandung'),
(6, 1, 1, 'Ayah', 'Kandung');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(8) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis` enum('Pagi','Siang') NOT NULL,
  `jurusan` enum('Bahasa','IPA','IPS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jenis`, `jurusan`) VALUES
(1, 'XA', 'Pagi', 'Bahasa'),
(2, 'XB', 'Siang', 'Bahasa'),
(3, 'XIC', 'Siang', 'IPA');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `ortu_id` int(8) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pendidikan` enum('SD','SMP','SMA/K','S1','S2','S3') NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `telp` varchar(14) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `status` enum('Kandung','Wali') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`ortu_id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `agama`, `jenis_kelamin`, `status`) VALUES
(1, 12345, 'Franco', 'S1', 'Guru', '08554321', 'Banjarmasinn', 'Kristen', 'Laki-Laki', 'Kandung'),
(2, 67890, 'Argus', 'SMA/K', 'Buruh', '08957891', 'Bandung', 'Islam', 'Laki-Laki', 'Kandung'),
(3, 54321, 'Rafaela', 'S2', 'Perawat', '08976543', 'Madura', 'Islam', 'Perempuan', 'Kandung'),
(4, 9876, 'Angela', 'S3', 'Dokter', '08765432', 'Surabaya', 'Kristen', 'Perempuan', 'Kandung'),
(5, 11223, 'Julian', 'SMA/K', 'Petani', '08112345', 'Makassar', 'Kristen', 'Laki-Laki', 'Kandung');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id` int(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bobot` int(5) NOT NULL,
  `jenis` enum('Pelanggaran','Prestasi') NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poin`
--

INSERT INTO `poin` (`id`, `nama`, `bobot`, `jenis`, `status`) VALUES
(1, 'Siswa Teladan', 35, 'Prestasi', 'Aktif'),
(2, 'Juara Kelas Peringkat I', 20, 'Prestasi', 'Aktif'),
(3, 'Juara Kelas Peringkat II', 15, 'Prestasi', 'Aktif'),
(4, 'Juara Kelas Peringkat III', 10, 'Prestasi', 'Aktif'),
(5, 'Juara Umum', 30, 'Prestasi', 'Aktif'),
(6, 'Juara I Lomba Tingkat Kab/Kota', 15, 'Prestasi', 'Aktif'),
(7, 'Juara II Lomba Tingkat Kab/Kota', 10, 'Prestasi', 'Aktif'),
(8, 'Juara III Lomba Tingkat Kab/Kota', 5, 'Prestasi', 'Aktif'),
(9, 'Juara I Lomba Tingkat Provinsi', 30, 'Prestasi', 'Aktif'),
(10, 'Juara II Lomba Tingkat Provinsi', 25, 'Prestasi', 'Aktif'),
(11, 'Juara III Lomba Tingkat Provinsi', 20, 'Prestasi', 'Aktif'),
(12, 'Juara I Lomba Tingkat Nasional', 75, 'Prestasi', 'Aktif'),
(13, 'Juara II Lomba Tingkat Nasional', 60, 'Prestasi', 'Aktif'),
(14, 'Juara III Lomba Tingkat Nasional', 45, 'Prestasi', 'Aktif'),
(15, 'Datang terlambat', 5, 'Pelanggaran', 'Aktif'),
(16, 'Keluar kelas tanpa izin', 5, 'Pelanggaran', 'Aktif'),
(17, 'Tidak melaksanakan tugas piket sekolah', 5, 'Pelanggaran', 'Aktif'),
(18, 'Tidak berseragam lengkap dan rapi/olahraga', 5, 'Pelanggaran', 'Aktif'),
(19, 'Membuang sampah tidak pada tempatnya', 5, 'Pelanggaran', 'Aktif'),
(20, 'Mencoret-coret tembok/meja/kursi, dan merusak tanaman', 5, 'Pelanggaran', 'Aktif'),
(21, 'Siswa memasuki ruang Kepala Madrasah (Guru/TU/Laboratorium/Perpustakaan) tanpa izin sebelumnya', 5, 'Pelanggaran', 'Aktif'),
(22, 'Menggunakan perhiasan yang berlebihan', 5, 'Pelanggaran', 'Aktif'),
(23, 'Rambut gondrong/memakai gelang, anting, kalung bagi pria', 5, 'Pelanggaran', 'Aktif'),
(24, 'Rambut di cat, kuku panjang, kuku di cat', 5, 'Pelanggaran', 'Aktif'),
(25, 'Tidak mengikuti kegiatan madrasah/Ekstrakurikuler', 5, 'Pelanggaran', 'Aktif'),
(26, 'Perbuatan tidak menyenangkan', 5, 'Pelanggaran', 'Aktif'),
(27, 'Melakukan olahraga pada saat jam pelajaran lain/jam istirahat', 5, 'Pelanggaran', 'Aktif'),
(28, 'Keluar halaman madrasah tanpa izin/alpa', 10, 'Pelanggaran', 'Aktif'),
(29, 'Melompat pagar atau jendela', 10, 'Pelanggaran', 'Aktif'),
(30, 'Tidak mengikuti sholat berjamaah', 10, 'Pelanggaran', 'Aktif'),
(31, 'Membawa barang-barang yang tidak ada kaitannya dengan pelajaran', 10, 'Pelanggaran', 'Aktif'),
(32, 'Mengacau sekolah/kelas', 10, 'Pelanggaran', 'Aktif'),
(33, 'Tidur di kelas pada saat jam pelajaran', 10, 'Pelanggaran', 'Aktif'),
(34, 'Terlibat perkelahian ringan', 10, 'Pelanggaran', 'Aktif'),
(35, 'Membuat izin palsu/tanda tangan palsu', 10, 'Pelanggaran', 'Aktif'),
(36, 'Siswa berlainan jenis berduaan', 20, 'Pelanggaran', 'Aktif'),
(37, 'Bergandengan tangan', 20, 'Pelanggaran', 'Aktif'),
(38, 'Membawa HP/menggunakan pada saat pelajaran', 20, 'Pelanggaran', 'Aktif'),
(39, 'Memalsu raport', 25, 'Pelanggaran', 'Aktif'),
(40, 'Membawa buku/gambar/video porno', 25, 'Pelanggaran', 'Aktif'),
(41, 'Merusak sarana prasarana madrasah', 25, 'Pelanggaran', 'Aktif'),
(42, 'Bersikap tidak sopan/menentang guru', 25, 'Pelanggaran', 'Aktif'),
(43, 'Menyinggung guru/karyawan', 25, 'Pelanggaran', 'Aktif'),
(44, 'Merokok/membawa rokok di dalam lingkungan madrasah', 25, 'Pelanggaran', 'Aktif'),
(45, 'Mengambil barang tanpa izin pemiliknya atau membajak siswa lain', 25, 'Pelanggaran', 'Aktif'),
(46, 'Terlibat perkelahian berat (tawuran)/pencurian di luar sekolah', 75, 'Pelanggaran', 'Aktif'),
(47, 'Membawa minum-minuman keras, Mabuk atau sejenisnya', 75, 'Pelanggaran', 'Aktif'),
(48, 'Terlibat penyalahgunaan narkoba/obat terlarang lainnya', 75, 'Pelanggaran', 'Aktif'),
(49, 'Berurusan dengan pihak berwajib karena tindak kejahatan/kriminal', 75, 'Pelanggaran', 'Aktif'),
(50, 'Membawa senjata tajam tanpa sepengetahuan Madrasah', 75, 'Pelanggaran', 'Aktif'),
(51, 'Berjudi di sekolah dan di lingkungan madrasah', 75, 'Pelanggaran', 'Aktif'),
(52, 'Mengancam guru/karyawan Madrasah', 75, 'Pelanggaran', 'Aktif'),
(53, 'Siswa berlainan jenis, berpelukan, berciuman', 75, 'Pelanggaran', 'Aktif'),
(54, 'Berzinah', 100, 'Pelanggaran', 'Aktif'),
(55, 'Menikah', 100, 'Pelanggaran', 'Aktif'),
(56, 'Hamil/menghamili', 100, 'Pelanggaran', 'Aktif'),
(57, 'Membawa senjata tajam untuk melukai', 100, 'Pelanggaran', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `poin_siswa`
--

CREATE TABLE `poin_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `kelas` enum('X','XI','XII') NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `nama_poin` varchar(100) NOT NULL,
  `jenis` enum('Prestasi','Pelanggaran') NOT NULL,
  `bobot` int(5) NOT NULL,
  `tgl_input` date NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poin_siswa`
--

INSERT INTO `poin_siswa` (`id`, `nama`, `jenis_kelamin`, `kelas`, `nama_wali`, `nama_poin`, `jenis`, `bobot`, `tgl_input`, `semester`, `status`) VALUES
(1, 'Budi Midas', 'Laki-Laki', 'XII', 'Baxia', 'Siswa Teladan', 'Prestasi', 35, '2023-06-26', '1', 'Aktif'),
(2, 'Bara Teguh', 'Laki-Laki', 'XII', 'Aulus', 'Juara I Lomba Tingkat Provinsi', 'Prestasi', 30, '2023-06-26', '2', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_poin`
--

CREATE TABLE `riwayat_poin` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) NOT NULL,
  `poin_id` int(8) NOT NULL,
  `wali_id` int(8) NOT NULL,
  `ortu_id` int(8) NOT NULL,
  `kelas_id` int(8) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(8) NOT NULL,
  `nis` int(15) NOT NULL,
  `nisn` int(15) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `nik` int(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tingkat_kelas` enum('X','XI','XII','') NOT NULL,
  `jurusan` enum('Bahasa','IPA','IPS','','') NOT NULL,
  `wali_kelas` varchar(20) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `telp` int(13) NOT NULL,
  `hp` int(13) NOT NULL,
  `status` enum('Aktif','Tidak Aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`siswa_id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, 1234, 2000, 'Bara Teguh', 200012345, 'Banjarmasin', '2002-04-14', 'Laki-Laki', 'XII', 'IPA', 'Aulus', 'Banjarmasin', 85321, 85321, 'Aktif'),
(2, 1235, 2001, 'Nata Aja', 300012345, 'Banjarmasin', '2002-07-18', 'Laki-Laki', 'XII', 'Bahasa', 'Aulus', 'Banjarmasin', 812345, 812345, 'Aktif'),
(3, 1236, 2002, 'Budi Midas', 400012345, 'Banjarmasin', '2003-11-19', 'Laki-Laki', 'XII', 'IPS', 'Baxia', 'Banjarmasin', 81122334, 81122334, 'Aktif'),
(4, 1237, 2003, 'Gisya Putri', 500012345, 'Banjarmasin', '2003-07-08', 'Perempuan', 'XII', 'IPA', 'Floryn', 'Banjarmasin', 8967890, 8967890, 'Aktif'),
(5, 1238, 2004, 'Keinn Yakin', 600012345, 'Banjarmasin', '2003-02-18', 'Laki-Laki', 'XII', 'Bahasa', 'Roger', 'Banjarmasin', 8512345, 8512345, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(8) NOT NULL,
  `nip` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telp` varchar(14) NOT NULL,
  `matpel` varchar(20) NOT NULL,
  `pendidikan` enum('SD','SMP','SMA/K','S1','S2','S3') NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `telp`, `matpel`, `pendidikan`, `status`) VALUES
(1, 67890, 'Aulus', 'Laki-Laki', 'Surabaya', '08965544', 'Sains', 'S1', 'Aktif'),
(2, 12345, 'Baxia', 'Laki-Laki', 'Madura', '08127788', 'Bahasa Indonesia', 'S2', 'Aktif'),
(3, 11223, 'Roger', 'Laki-Laki', 'Bandung', '08987654', 'Penjaskes', 'S2', 'Aktif'),
(4, 99887, 'Floryn', 'Perempuan', 'Jakarta', '08112233', 'Matematika', 'S1', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`ortu_id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poin_siswa`
--
ALTER TABLE `poin_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`,`poin_id`,`wali_id`,`ortu_id`,`kelas_id`),
  ADD KEY `poin_id` (`poin_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `ortu_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `poin_siswa`
--
ALTER TABLE `poin_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `hubungan_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hubungan_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD CONSTRAINT `riwayat_poin_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_2` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_3` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_4` FOREIGN KEY (`wali_id`) REFERENCES `wali_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_5` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
