-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Feb 2024 pada 19.01
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_karyawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `nama`, `email`, `no_telp`, `alamat`, `pass`) VALUES
('admin', 'admin', '', '0', '-', 'admin'),
('as', 'as', 'sa', 'as', 'as', 'as'),
('agus', 'agus', 'agus@gmail.com', '08129773282381', 'Jl. Raya Bogor', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `id_bobot` varchar(25) NOT NULL,
  `b1` varchar(255) DEFAULT NULL,
  `b2` varchar(255) DEFAULT NULL,
  `b3` varchar(255) DEFAULT NULL,
  `b4` varchar(255) DEFAULT NULL,
  `b5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`id_bobot`, `b1`, `b2`, `b3`, `b4`, `b5`) VALUES
('IDB0001', '8.0', '8.0', '9.0', '9.0', '9.0'),
('IDB0002', '9.0', '9.0', '9.0', '9.0', '9.0'),
('IDB0003', '1.0', '1.0', '1.0', '1.0', '1.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_akhir`
--

CREATE TABLE `hasil_akhir` (
  `nik` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `id_kriteria` varchar(255) DEFAULT NULL,
  `id_bobot` varchar(255) DEFAULT NULL,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `hasil_akhir`
--

INSERT INTO `hasil_akhir` (`nik`, `nama`, `jabatan`, `id_kriteria`, `id_bobot`, `c1`, `c2`, `c3`, `c4`, `c5`, `grade`, `username`) VALUES
('16800111', 'ARI AKHMADI', 'Admin', 'IDK0001', 'IDB0002', '9.0', '1.0', '80.0', '100.0', '100.0', '93.03749', 'admin'),
('15883646', 'ALFIAN', 'Manager Finance', 'IDK0002', 'IDB0002', '8.0', '1.0', '70.0', '80.0', '80.0', '82.700005', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `jenkel` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `email`, `no_telp`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `jabatan`) VALUES
('16800111', 'ARI AKHMADI', 'ari@gmail.com', '08128575758', 'Jl. Pekayongan', 'Jakarta', '2024/01/29', 'Laki-laki', 'Admin'),
('15883662', 'GATOT ANDREAS', 'andre@gmail.com', '0898989898', 'Jl. Tujuh', 'Depok', '2024/01/31', 'Laki-laki', 'Admin'),
('15883647', 'ALI ERFAN', 'ali123@gmail.com', '08623172171', 'Jl. Selamat', 'Bogor', '2024/01/29', 'Laki-laki', 'Manager Operasional'),
('16800112', 'Fadli', 'fadli@gmail.com', '0899191919', 'Jl. Delapan', 'Jakarta', '2024/02/02', 'Laki-laki', 'Teknisi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(25) NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `id_presensi` varchar(255) DEFAULT NULL,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nik`, `id_presensi`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
('IDK0001', 'K012', 'IDP0001', '9.0', '1.0', '80.0', '100.0', '100.0'),
('IDK0002', 'K012', 'IDP0001', '8.0', '1.0', '70.0', '80.0', '80.0'),
('IDK0003', '15883647', 'IDP0005', '1.0', '2.0', '1.0', '100.0', '100.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id_presensi` varchar(25) NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `tgl` varchar(255) DEFAULT NULL,
  `kehadiran` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id_presensi`, `nik`, `tgl`, `kehadiran`, `keterangan`) VALUES
('IDP0001', '16800111', '2024/01/29', 'Hadir', 'Sektor IOAN Cikini 1'),
('IDP0002', '15883646', '2024/01/29', 'Tidak Hadir', 'Sektor IOAN Cikini 2'),
('IDP0003', '16971446', '2024/01/29', 'Hadir', 'Sektor IOAN Cikini 2'),
('IDP0004', '15883662', '2024/01/29', 'Hadir', 'Sektor IOAN Cikini 2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id_bobot`) USING BTREE;

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`) USING BTREE;

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
