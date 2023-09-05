-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Sep 2023 pada 06.53
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_guru`
--

CREATE TABLE `t_guru` (
  `f_idguru` int(11) NOT NULL,
  `f_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_guru`
--

INSERT INTO `t_guru` (`f_idguru`, `f_nama`) VALUES
(1, 'Nugro N Agung Pribadi'),
(2, 'Nuraini Azizah'),
(3, 'Ardana Adam Sutisno'),
(4, 'Jumanta Hamdayama'),
(5, 'Haramotan Pandiangan'),
(6, 'Nurul Hidayati Ma’sar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jurusan`
--

CREATE TABLE `t_jurusan` (
  `f_idjurusan` int(11) NOT NULL,
  `f_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_jurusan`
--

INSERT INTO `t_jurusan` (`f_idjurusan`, `f_nama`) VALUES
(1, 'Akutansi'),
(2, 'Rekayasa Perangkat Lunak'),
(3, 'Manajemen Pekantoran'),
(4, 'Desain Komunikasi Visual'),
(5, 'Binsin Ritel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kelas`
--

CREATE TABLE `t_kelas` (
  `f_idkelas` int(11) NOT NULL,
  `f_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_kelas`
--

INSERT INTO `t_kelas` (`f_idkelas`, `f_nama`) VALUES
(1, 'XI-RPL'),
(2, 'XI-DKV'),
(3, 'XI-MP'),
(4, 'XI-BR'),
(5, 'XI-AK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE `t_siswa` (
  `f_idsiswa` int(11) NOT NULL,
  `f_nama` varchar(50) DEFAULT NULL,
  `f_kelas` varchar(50) DEFAULT NULL,
  `f_jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`f_idsiswa`, `f_nama`, `f_kelas`, `f_jurusan`) VALUES
(1, 'Muhammad Dharmawi Salam', 'XI', 'RPL'),
(2, 'Afdhika Syaputra', 'XI', 'RPL'),
(3, 'Muhammad Ghifarri', 'XI', 'RPL'),
(4, 'Muhammad Arkan Karim', 'XI', 'RPL'),
(5, 'Arfa Muhammad Fadillah', 'XI', 'RPL');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_guru`
--
ALTER TABLE `t_guru`
  ADD PRIMARY KEY (`f_idguru`);

--
-- Indeks untuk tabel `t_jurusan`
--
ALTER TABLE `t_jurusan`
  ADD PRIMARY KEY (`f_idjurusan`);

--
-- Indeks untuk tabel `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`f_idkelas`);

--
-- Indeks untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`f_idsiswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_guru`
--
ALTER TABLE `t_guru`
  MODIFY `f_idguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_jurusan`
--
ALTER TABLE `t_jurusan`
  MODIFY `f_idjurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_kelas`
--
ALTER TABLE `t_kelas`
  MODIFY `f_idkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
  MODIFY `f_idsiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
