-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Waktu pembuatan: 14. Mei 2011 jam 09:47
-- Versi Server: 5.0.51
-- Versi PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `db_siassmk`
-- 

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `master_agama`
-- 

CREATE TABLE `master_agama` (
  `id_agama` tinyint(4) NOT NULL auto_increment,
  `nama_agama` varchar(40) NOT NULL,
  PRIMARY KEY  (`id_agama`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data untuk tabel `master_agama`
-- 

INSERT INTO `master_agama` VALUES (1, 'Islam');
INSERT INTO `master_agama` VALUES (2, 'Kristen Protestan');
INSERT INTO `master_agama` VALUES (3, 'Katolik');
INSERT INTO `master_agama` VALUES (4, 'Hindu');
INSERT INTO `master_agama` VALUES (5, 'Budha');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `master_kompetensikeahlian`
-- 

CREATE TABLE `master_kompetensikeahlian` (
  `id_komkel` varchar(32) NOT NULL,
  `bidang` varchar(100) NOT NULL,
  `prokel` varchar(200) NOT NULL,
  `nama_komkel` varchar(200) NOT NULL,
  PRIMARY KEY  (`id_komkel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data untuk tabel `master_kompetensikeahlian`
-- 


-- --------------------------------------------------------

-- 
-- Struktur dari tabel `master_ruangkelas`
-- 

CREATE TABLE `master_ruangkelas` (
  `id_ruang` varchar(32) NOT NULL,
  `id_komkel` varchar(32) NOT NULL,
  `tingkat_ruang` tinyint(4) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_ruang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data untuk tabel `master_ruangkelas`
-- 


-- --------------------------------------------------------

-- 
-- Struktur dari tabel `master_smp`
-- 

CREATE TABLE `master_smp` (
  `id_smp` varchar(32) NOT NULL,
  `nama_smp` varchar(100) NOT NULL,
  `jenis_smp` varchar(20) NOT NULL,
  `status_smp` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_smp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data untuk tabel `master_smp`
-- 


-- --------------------------------------------------------

-- 
-- Struktur dari tabel `master_tahunpelajaran`
-- 

CREATE TABLE `master_tahunpelajaran` (
  `id_tapel` varchar(32) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  PRIMARY KEY  (`id_tapel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data untuk tabel `master_tahunpelajaran`
-- 


-- --------------------------------------------------------

-- 
-- Struktur dari tabel `sdm_pegawai`
-- 

CREATE TABLE `sdm_pegawai` (
  `id_sdm` varchar(32) NOT NULL,
  `password` varchar(10) NOT NULL,
  `enpassword` varchar(32) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama_sdm` varchar(50) NOT NULL,
  `tpt_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk_sdm` char(1) NOT NULL,
  `agama_sdm` char(1) NOT NULL,
  `jenis_sdm` varchar(20) NOT NULL,
  `tmt_sdm` date NOT NULL,
  `id_pend` char(2) NOT NULL,
  `jab_sdm` char(5) NOT NULL,
  `akses` char(1) NOT NULL,
  `photo_sdm` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_sdm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data untuk tabel `sdm_pegawai`
-- 

INSERT INTO `sdm_pegawai` VALUES ('c93ccd78b2076528346216b3b2f701e6', 'admin1234', 'c93ccd78b2076528346216b3b2f701e6', '', 'Administrator', '', '0000-00-00', '', '', '', '0000-00-00', '', '99999', '0', '');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `sias_setting`
-- 

CREATE TABLE `sias_setting` (
  `id_siassmk` tinyint(4) NOT NULL auto_increment,
  `nama_smk` varchar(100) NOT NULL,
  `alamat_smk` varchar(200) NOT NULL,
  `kab_smk` varchar(100) NOT NULL,
  `prop_smk` varchar(100) NOT NULL,
  `telp_smk` varchar(50) NOT NULL,
  `web_smk` varchar(100) NOT NULL,
  `email_smk` varchar(100) NOT NULL,
  `donasi` varchar(32) NOT NULL,
  PRIMARY KEY  (`id_siassmk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data untuk tabel `sias_setting`
-- 

INSERT INTO `sias_setting` VALUES (1, 'SIAS SMK', 'SIAS SMK', 'SIAS SMK', 'SIAS SMK', 'SIAS SMK', 'http://simsias.wordpress.com', 'syarwin@gmail.com', '');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `siswa_kelas`
-- 

CREATE TABLE `siswa_kelas` (
  `id_siswakelas` int(11) NOT NULL auto_increment,
  `id_ruang` varchar(35) NOT NULL,
  `id_tapel` varchar(32) NOT NULL,
  `id_siswa` varchar(32) NOT NULL,
  PRIMARY KEY  (`id_siswakelas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data untuk tabel `siswa_kelas`
-- 


-- --------------------------------------------------------

-- 
-- Struktur dari tabel `siswa_psb`
-- 

CREATE TABLE `siswa_psb` (
  `id_siswa` varchar(50) NOT NULL,
  `noreg` varchar(5) NOT NULL,
  `nis_siswa` varchar(10) NOT NULL,
  `nisn_siswa` varchar(10) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tempatlahir_siswa` varchar(100) NOT NULL,
  `tgllahir_siswa` date NOT NULL,
  `jk_siswa` char(1) NOT NULL,
  `id_agama` int(11) NOT NULL,
  `id_smp` varchar(50) NOT NULL,
  `tahun_diterima` varchar(50) NOT NULL,
  `komkel_siswa` varchar(50) NOT NULL,
  `photo_siswa` varchar(100) NOT NULL,
  `last_jenjang` char(2) NOT NULL,
  `last_ruang` varchar(32) NOT NULL,
  `status_siswa` char(1) NOT NULL,
  PRIMARY KEY  (`id_siswa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data untuk tabel `siswa_psb`
-- 

