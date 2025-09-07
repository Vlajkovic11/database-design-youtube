-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 05:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `donacije`
--

CREATE TABLE `donacije` (
  `SNIMAK_ID` int(11) NOT NULL,
  `DONACIJA_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `IZNOS_DONACIJE` int(11) NOT NULL,
  `TEKST_DONACIJE` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donacije`
--

INSERT INTO `donacije` (`SNIMAK_ID`, `DONACIJA_ID`, `KORISNIK_ID`, `IZNOS_DONACIJE`, `TEKST_DONACIJE`) VALUES
(5, 1, 5, 20, 'pitanje'),
(5, 2, 4, 100, NULL),
(6, 5, 1, 500, NULL),
(11, 3, 3, 200, 'pitanje'),
(14, 4, 1, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filmovi`
--

CREATE TABLE `filmovi` (
  `FILM_ID` int(11) NOT NULL,
  `NAZIV_FILMA` varchar(75) NOT NULL,
  `DATUM_FILMA` datetime NOT NULL,
  `OPIS_FILMA` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmovi`
--

INSERT INTO `filmovi` (`FILM_ID`, `NAZIV_FILMA`, `DATUM_FILMA`, `OPIS_FILMA`) VALUES
(1, 'Film1', '2024-03-31 17:22:09', 'Neki opis'),
(2, 'Film2', '2024-03-31 17:22:27', 'opis'),
(3, 'Film3', '2024-03-31 17:22:35', 'neki opis'),
(4, 'Film4', '2024-03-31 17:22:45', 'neki opis'),
(5, 'Film5', '2024-03-31 17:22:52', 'Neki opis');

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `KOMENTAR_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `SNIMAK_ID` int(11) DEFAULT NULL,
  `KOM_KOMENTAR_ID` int(11) DEFAULT NULL,
  `TEKST_KOMENTARA` varchar(200) NOT NULL,
  `DATUM_KOMENTARA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`KOMENTAR_ID`, `KORISNIK_ID`, `SNIMAK_ID`, `KOM_KOMENTAR_ID`, `TEKST_KOMENTARA`, `DATUM_KOMENTARA`) VALUES
(1, 2, 1, NULL, 'neki komentar', '2024-03-31 16:57:29'),
(2, 5, 1, NULL, 'neki tekst', '2024-03-31 16:58:13'),
(3, 4, 1, 1, 'komentar na komentar', '2024-03-31 17:03:56'),
(4, 2, 1, NULL, 'drugi komentar od istog korisnika', '2024-03-31 17:04:44'),
(5, 5, 1, 3, 'odgovor na odgovor', '2024-03-31 17:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `KORISNIK_ID` int(11) NOT NULL,
  `USERNAME` varchar(40) NOT NULL,
  `EMAIL` varchar(75) NOT NULL,
  `DATUM_REGISTRACIJE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`KORISNIK_ID`, `USERNAME`, `EMAIL`, `DATUM_REGISTRACIJE`) VALUES
(1, 'Korisnik1', 'korisnik1@example.com', '2024-03-31 12:05:48'),
(2, 'Korisnik2', 'korisnik2@example.com', '2024-03-31 12:37:00'),
(3, 'Korisnik3', 'korisnik3@example.com', '2024-03-31 12:38:06'),
(4, 'Korisnik4', 'korisnik4@example.com', '2024-03-31 12:38:29'),
(5, 'Korisnik5', 'korisnik5@example.com', '2024-03-31 12:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `kratki_snimci`
--

CREATE TABLE `kratki_snimci` (
  `SNIMAK_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `VREME_OBJAVE` datetime NOT NULL,
  `NASLOV_SNIMKA` varchar(75) NOT NULL,
  `OPIS_SNIMKA` varchar(250) DEFAULT NULL,
  `TRAJANJE_KSNIMKA` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kratki_snimci`
--

INSERT INTO `kratki_snimci` (`SNIMAK_ID`, `KORISNIK_ID`, `VREME_OBJAVE`, `NASLOV_SNIMKA`, `OPIS_SNIMKA`, `TRAJANJE_KSNIMKA`) VALUES
(4, 2, '2024-03-31 13:34:09', 'snimak kratkog formata#1', NULL, 50),
(8, 2, '2024-03-31 13:45:34', 'snimak kratkog formata#2', NULL, 40),
(9, 2, '2024-03-31 14:26:09', 'snimak kratko formata#3', 'ovo je moj treci shorts', 80),
(12, 4, '2024-03-31 14:31:41', 'treci snimak, kratki snimak', NULL, 60),
(15, 5, '2024-03-31 14:27:32', 'kratka analiza', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `obicni_snimci`
--

CREATE TABLE `obicni_snimci` (
  `SNIMAK_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `VREME_OBJAVE` datetime NOT NULL,
  `NASLOV_SNIMKA` varchar(75) NOT NULL,
  `OPIS_SNIMKA` varchar(250) DEFAULT NULL,
  `TRAJANJE_OSNIMKA` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obicni_snimci`
--

INSERT INTO `obicni_snimci` (`SNIMAK_ID`, `KORISNIK_ID`, `VREME_OBJAVE`, `NASLOV_SNIMKA`, `OPIS_SNIMKA`, `TRAJANJE_OSNIMKA`) VALUES
(1, 1, '2024-03-31 14:47:53', 'moj snimak#1', NULL, 3600),
(2, 1, '2024-03-31 14:49:14', 'moj snimak#2', NULL, 7200),
(3, 1, '2024-03-31 14:49:34', 'moj snimak#3', NULL, 1800),
(10, 4, '2024-03-31 14:50:14', 'prvi snimak, obican snimak', NULL, 1000),
(13, 5, '2024-03-31 14:50:36', 'korisnik5 - pesma', NULL, 180);

-- --------------------------------------------------------

--
-- Table structure for table `odgovori`
--

CREATE TABLE `odgovori` (
  `KORISNIK_ID` int(11) NOT NULL,
  `POVRATNA_ID` int(11) NOT NULL,
  `ZAPOSLEN_ID` int(11) NOT NULL,
  `ODGOVOR_ID` int(11) NOT NULL,
  `NASLOV_ODG` varchar(100) NOT NULL,
  `SADRZAJ_ODG` text NOT NULL,
  `DATUM_ODG` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `odgovori`
--

INSERT INTO `odgovori` (`KORISNIK_ID`, `POVRATNA_ID`, `ZAPOSLEN_ID`, `ODGOVOR_ID`, `NASLOV_ODG`, `SADRZAJ_ODG`, `DATUM_ODG`) VALUES
(1, 1, 1, 1, 'Odgovor1', 'neki sadrzaj', '2024-03-31 17:20:06'),
(2, 2, 2, 2, 'Odgovor2', 'neki sadrzaj', '2024-03-31 17:20:34'),
(3, 3, 3, 3, 'Odgovor3', 'Neki sadrzaj', '2024-03-31 17:20:50'),
(4, 4, 4, 4, 'Odgovor4', 'Neki sadrzaj', '2024-03-31 17:21:04'),
(5, 5, 5, 5, 'Odgovor5', 'Neki sadrzaj', '2024-03-31 17:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `oglasivaci`
--

CREATE TABLE `oglasivaci` (
  `OGLASIVAC_ID` int(11) NOT NULL,
  `NAZIV_OGLASIVACA` varchar(75) NOT NULL,
  `EMAIL_OGLASIVACA` varchar(75) NOT NULL,
  `DATUM_REG_OGLASIVACA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oglasivaci`
--

INSERT INTO `oglasivaci` (`OGLASIVAC_ID`, `NAZIV_OGLASIVACA`, `EMAIL_OGLASIVACA`, `DATUM_REG_OGLASIVACA`) VALUES
(1, 'Oglasivac1', 'oglasivac1@example.com', '2024-03-31 17:06:04'),
(2, 'Oglasivac2', 'oglasivac2@example.com', '2024-03-31 17:06:32'),
(3, 'Oglasivac3', 'oglasivac3@example.com', '2024-03-31 17:06:49'),
(4, 'Oglasivac4', 'oglasivac4@example.com', '2024-03-31 17:06:58'),
(5, 'Oglasivac5', 'oglasivac5@example.com', '2024-03-31 17:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `plejliste`
--

CREATE TABLE `plejliste` (
  `KORISNIK_ID` int(11) NOT NULL,
  `PLEJLISTA_ID` int(11) NOT NULL,
  `NAZIV_PLEJLISTE` varchar(50) NOT NULL,
  `DATUM_PLEJLISTE` datetime NOT NULL,
  `JAVNOST_PLEJLISTE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plejliste`
--

INSERT INTO `plejliste` (`KORISNIK_ID`, `PLEJLISTA_ID`, `NAZIV_PLEJLISTE`, `DATUM_PLEJLISTE`, `JAVNOST_PLEJLISTE`) VALUES
(1, 1, 'Gledaj Kasnije', '2024-03-31 15:02:41', 1),
(2, 2, 'lista snimaka korisnik1', '2024-03-31 15:17:52', 1),
(3, 3, 'mix', '2024-03-31 15:24:54', 0),
(4, 4, 'playlist', '2024-03-31 15:26:38', 1),
(5, 5, 'nova plejlista', '2024-03-31 15:28:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plejliste_snimaka`
--

CREATE TABLE `plejliste_snimaka` (
  `SNIMAK_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `PLEJLISTA_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plejliste_snimaka`
--

INSERT INTO `plejliste_snimaka` (`SNIMAK_ID`, `KORISNIK_ID`, `PLEJLISTA_ID`) VALUES
(1, 2, 2),
(1, 4, 4),
(1, 5, 5),
(2, 2, 2),
(2, 5, 5),
(3, 2, 2),
(3, 4, 4),
(10, 1, 1),
(13, 1, 1),
(13, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `poruke`
--

CREATE TABLE `poruke` (
  `SNIMAK_ID` int(11) NOT NULL,
  `PORUKA_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `TEKST_PORUKE` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poruke`
--

INSERT INTO `poruke` (`SNIMAK_ID`, `PORUKA_ID`, `KORISNIK_ID`, `TEKST_PORUKE`) VALUES
(5, 1, 1, 'neki tekst'),
(11, 1, 2, 'neki tekst'),
(11, 2, 2, 'neki tekst'),
(14, 1, 1, 'pitanje o temi diskusije'),
(14, 2, 2, 'pitanje o temi ');

-- --------------------------------------------------------

--
-- Table structure for table `povratne_informacije`
--

CREATE TABLE `povratne_informacije` (
  `KORISNIK_ID` int(11) NOT NULL,
  `POVRATNA_ID` int(11) NOT NULL,
  `NASLOV_INFO` varchar(100) NOT NULL,
  `SADRZAJ_INFO` text NOT NULL,
  `DATUM_INFO` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `povratne_informacije`
--

INSERT INTO `povratne_informacije` (`KORISNIK_ID`, `POVRATNA_ID`, `NASLOV_INFO`, `SADRZAJ_INFO`, `DATUM_INFO`) VALUES
(1, 1, 'PovratnaInfo1', 'Neki sadrzaj', '2024-03-31 17:12:01'),
(2, 2, 'PovratnaInfo2', 'Neki sadrzaj', '2024-03-31 17:12:25'),
(3, 3, 'PovratnaInfo3', 'Neki sadrzaj', '2024-03-31 17:12:34'),
(4, 4, 'PovratnaInfo4', 'neki sadrzaj', '2024-03-31 17:12:52'),
(5, 5, 'PovratnaInfo5', 'neki sadrzaj', '2024-03-31 17:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `pregledi`
--

CREATE TABLE `pregledi` (
  `SNIMAK_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `DATUM_PREGLEDA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pregledi`
--

INSERT INTO `pregledi` (`SNIMAK_ID`, `KORISNIK_ID`, `DATUM_PREGLEDA`) VALUES
(1, 2, '2024-03-31 15:42:33'),
(1, 4, '2024-03-31 16:56:04'),
(1, 5, '2024-03-31 16:55:16'),
(2, 4, '2024-03-31 15:42:46'),
(3, 2, '2024-03-31 15:43:17'),
(4, 4, '2024-03-31 15:42:52'),
(15, 2, '2024-03-31 15:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `prenosi_uzivo`
--

CREATE TABLE `prenosi_uzivo` (
  `SNIMAK_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `VREME_OBJAVE` datetime NOT NULL,
  `NASLOV_SNIMKA` varchar(75) NOT NULL,
  `OPIS_SNIMKA` varchar(250) DEFAULT NULL,
  `VREME_ZAVRSETKA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prenosi_uzivo`
--

INSERT INTO `prenosi_uzivo` (`SNIMAK_ID`, `KORISNIK_ID`, `VREME_OBJAVE`, `NASLOV_SNIMKA`, `OPIS_SNIMKA`, `VREME_ZAVRSETKA`) VALUES
(5, 3, '2024-03-31 15:29:23', 'prenos uzivo#1', NULL, '2024-04-01 15:29:23'),
(6, 3, '2024-04-02 15:31:43', 'prenos uzivo#2', NULL, '2024-04-03 15:31:43'),
(7, 3, '2024-04-03 15:32:33', 'prenos uzivo#3', NULL, '2024-04-04 15:32:33'),
(11, 4, '2024-03-31 15:33:00', 'drugi snimak, prenos uzivo', NULL, '2024-04-01 15:33:00'),
(14, 5, '2024-03-31 15:33:28', 'diskusija', NULL, '2024-04-01 15:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `reakcije`
--

CREATE TABLE `reakcije` (
  `SNIMAK_ID` int(11) NOT NULL,
  `REAKCIJA_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `TIP_REAKCIJE` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reakcije`
--

INSERT INTO `reakcije` (`SNIMAK_ID`, `REAKCIJA_ID`, `KORISNIK_ID`, `TIP_REAKCIJE`) VALUES
(4, 1, 1, 'O'),
(8, 2, 1, 'S'),
(9, 3, 1, 'T'),
(12, 4, 3, 'B'),
(15, 5, 3, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `reklame`
--

CREATE TABLE `reklame` (
  `REKLAMA_ID` int(11) NOT NULL,
  `OGLASIVAC_ID` int(11) NOT NULL,
  `NASLOV_REKLAME` varchar(75) NOT NULL,
  `TRAJANJE_REKLAME` decimal(3,0) NOT NULL,
  `OPIS_REKLAME` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reklame`
--

INSERT INTO `reklame` (`REKLAMA_ID`, `OGLASIVAC_ID`, `NASLOV_REKLAME`, `TRAJANJE_REKLAME`, `OPIS_REKLAME`) VALUES
(1, 1, 'Reklama1', 15, NULL),
(2, 2, 'Reklama2', 30, NULL),
(3, 3, 'Reklama3', 20, NULL),
(4, 4, 'Reklama4', 60, NULL),
(5, 5, 'Reklama5', 180, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reklame_na_snimcima`
--

CREATE TABLE `reklame_na_snimcima` (
  `SNIMAK_ID` int(11) NOT NULL,
  `REKLAMA_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reklame_na_snimcima`
--

INSERT INTO `reklame_na_snimcima` (`SNIMAK_ID`, `REKLAMA_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(10, 4),
(13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `snimci`
--

CREATE TABLE `snimci` (
  `SNIMAK_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `VREME_OBJAVE` datetime NOT NULL,
  `NASLOV_SNIMKA` varchar(75) NOT NULL,
  `OPIS_SNIMKA` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snimci`
--

INSERT INTO `snimci` (`SNIMAK_ID`, `KORISNIK_ID`, `VREME_OBJAVE`, `NASLOV_SNIMKA`, `OPIS_SNIMKA`) VALUES
(1, 1, '2024-03-31 13:29:00', 'MOJ SNIMAK #1', 'Ovo je moj prvi snimak na platformi YouTube'),
(2, 1, '2024-03-31 13:32:05', 'MOJ SNIMAK #2', 'Ovo je moj drugi snimak na platformi YouTube'),
(3, 1, '2024-03-31 13:32:37', 'MOJ SNIMAK #3', NULL),
(4, 2, '2024-03-31 13:34:09', 'SNIMAK KRATKOG FORMATA #1', NULL),
(5, 3, '2024-03-31 13:39:21', 'PRENOS UZIVO #1', 'moj prvi prenos uzivo'),
(6, 3, '2024-03-31 13:40:01', 'PRENOS UZIVO #2', 'moj drugi prenos uzivo'),
(7, 3, '2024-03-31 13:41:46', 'PRENOS UZIVO #3', NULL),
(8, 2, '2024-03-31 13:45:34', 'SNIMAK KRATKOG FORMATA #2', NULL),
(9, 2, '2024-03-31 13:45:53', 'SNIMAK KRATKOG FORMATA #3', 'ovo je moj treci shorts'),
(10, 4, '2024-03-31 13:47:45', 'PRVI SNIMAK, OBICAN SNIMAK', NULL),
(11, 4, '2024-03-31 13:48:38', 'DRUGI SNIMAK, PRENOS UZIVO', NULL),
(12, 4, '2024-03-31 13:48:49', 'TRECI SNIMAK, KRATKI SNIMAK', NULL),
(13, 5, '2024-03-31 13:50:08', 'KORISNIK5 - PESMA ', NULL),
(14, 5, '2024-03-31 13:58:34', 'DISKUSIJA', NULL),
(15, 5, '2024-03-31 13:59:59', 'KRATKA ANALIZA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `svidjanja`
--

CREATE TABLE `svidjanja` (
  `SNIMAK_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `TIP_SVIDJANJA` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `svidjanja`
--

INSERT INTO `svidjanja` (`SNIMAK_ID`, `KORISNIK_ID`, `TIP_SVIDJANJA`) VALUES
(1, 2, 'L'),
(2, 4, 'D'),
(3, 2, 'L'),
(4, 4, 'D'),
(15, 2, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `ugovori`
--

CREATE TABLE `ugovori` (
  `UGOVOR_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `OGLASIVAC_ID` int(11) NOT NULL,
  `VAZI_OD` datetime NOT NULL,
  `VAZI_DO` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ugovori`
--

INSERT INTO `ugovori` (`UGOVOR_ID`, `KORISNIK_ID`, `OGLASIVAC_ID`, `VAZI_OD`, `VAZI_DO`) VALUES
(1, 1, 1, '2024-03-31 17:07:21', '2024-04-23 17:07:21'),
(2, 1, 2, '2024-03-31 17:07:34', '2024-04-16 17:07:34'),
(3, 1, 3, '2024-03-31 17:07:44', '2024-04-18 17:07:44'),
(4, 4, 4, '2024-03-31 17:07:56', '2024-04-26 17:07:56'),
(5, 5, 5, '2024-03-31 17:08:08', '2024-04-30 17:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `uplate`
--

CREATE TABLE `uplate` (
  `UPLATA_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL,
  `FILM_ID` int(11) NOT NULL,
  `DATUM_POCETKA` datetime NOT NULL,
  `DATUM_ISTICANJA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uplate`
--

INSERT INTO `uplate` (`UPLATA_ID`, `KORISNIK_ID`, `FILM_ID`, `DATUM_POCETKA`, `DATUM_ISTICANJA`) VALUES
(1, 1, 1, '2024-03-31 17:23:06', '2024-04-30 17:23:07'),
(2, 2, 2, '2024-03-31 17:23:29', '2024-04-30 17:23:29'),
(3, 3, 3, '2024-03-31 17:23:39', '2024-04-30 17:23:39'),
(4, 4, 4, '2024-03-31 17:23:52', '2024-04-30 17:23:52'),
(5, 5, 5, '2024-03-31 17:24:01', '2024-04-30 17:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni`
--

CREATE TABLE `zaposleni` (
  `ZAPOSLEN_ID` int(11) NOT NULL,
  `PREZIME_Z` varchar(50) NOT NULL,
  `IME_Z` varchar(50) NOT NULL,
  `EMAIL_Z` varchar(75) NOT NULL,
  `POZICIJA` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zaposleni`
--

INSERT INTO `zaposleni` (`ZAPOSLEN_ID`, `PREZIME_Z`, `IME_Z`, `EMAIL_Z`, `POZICIJA`) VALUES
(1, 'Petrovic', 'Petar', 'ppetrovic@example.com', 'TP'),
(2, 'Anic', 'Ana', 'aanic@example.com', 'TP'),
(3, 'Dejanovic', 'Dejan', 'ddejanovic@example.com', 'M'),
(4, 'Lazar', 'Lazarevic', 'llazarevic@example.com', 'TP'),
(5, 'Andjela', 'Andjelic', 'aandjelic@example.com', 'TP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donacije`
--
ALTER TABLE `donacije`
  ADD PRIMARY KEY (`SNIMAK_ID`,`DONACIJA_ID`),
  ADD KEY `FK_DONACIJE_PRAVI_DON_KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `filmovi`
--
ALTER TABLE `filmovi`
  ADD PRIMARY KEY (`FILM_ID`);

--
-- Indexes for table `komentari`
--
ALTER TABLE `komentari`
  ADD PRIMARY KEY (`KOMENTAR_ID`),
  ADD KEY `FK_KOMENTAR_DOBIJA_KO_SNIMCI` (`SNIMAK_ID`),
  ADD KEY `FK_KOMENTAR_ODGOVARA__KOMENTAR` (`KOM_KOMENTAR_ID`),
  ADD KEY `FK_KOMENTAR_PRAVI_KOM_KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`KORISNIK_ID`);

--
-- Indexes for table `kratki_snimci`
--
ALTER TABLE `kratki_snimci`
  ADD PRIMARY KEY (`SNIMAK_ID`);

--
-- Indexes for table `obicni_snimci`
--
ALTER TABLE `obicni_snimci`
  ADD PRIMARY KEY (`SNIMAK_ID`);

--
-- Indexes for table `odgovori`
--
ALTER TABLE `odgovori`
  ADD PRIMARY KEY (`KORISNIK_ID`,`POVRATNA_ID`,`ZAPOSLEN_ID`,`ODGOVOR_ID`),
  ADD KEY `FK_ODGOVORI_SALJE_ODG_ZAPOSLEN` (`ZAPOSLEN_ID`);

--
-- Indexes for table `oglasivaci`
--
ALTER TABLE `oglasivaci`
  ADD PRIMARY KEY (`OGLASIVAC_ID`);

--
-- Indexes for table `plejliste`
--
ALTER TABLE `plejliste`
  ADD PRIMARY KEY (`KORISNIK_ID`,`PLEJLISTA_ID`);

--
-- Indexes for table `plejliste_snimaka`
--
ALTER TABLE `plejliste_snimaka`
  ADD PRIMARY KEY (`SNIMAK_ID`,`KORISNIK_ID`,`PLEJLISTA_ID`),
  ADD KEY `FK_PLEJLIST_PLEJLISTA_PLEJLIST` (`KORISNIK_ID`,`PLEJLISTA_ID`);

--
-- Indexes for table `poruke`
--
ALTER TABLE `poruke`
  ADD PRIMARY KEY (`SNIMAK_ID`,`PORUKA_ID`),
  ADD KEY `FK_PORUKE_SALJE_POR_KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `povratne_informacije`
--
ALTER TABLE `povratne_informacije`
  ADD PRIMARY KEY (`KORISNIK_ID`,`POVRATNA_ID`);

--
-- Indexes for table `pregledi`
--
ALTER TABLE `pregledi`
  ADD PRIMARY KEY (`SNIMAK_ID`,`KORISNIK_ID`),
  ADD KEY `FK_PREGLEDI_PRAVI_PRE_KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `prenosi_uzivo`
--
ALTER TABLE `prenosi_uzivo`
  ADD PRIMARY KEY (`SNIMAK_ID`);

--
-- Indexes for table `reakcije`
--
ALTER TABLE `reakcije`
  ADD PRIMARY KEY (`SNIMAK_ID`,`REAKCIJA_ID`),
  ADD KEY `FK_REAKCIJE_PRAVI_REA_KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `reklame`
--
ALTER TABLE `reklame`
  ADD PRIMARY KEY (`REKLAMA_ID`),
  ADD KEY `FK_REKLAME_PRAVI_REK_OGLASIVA` (`OGLASIVAC_ID`);

--
-- Indexes for table `reklame_na_snimcima`
--
ALTER TABLE `reklame_na_snimcima`
  ADD PRIMARY KEY (`SNIMAK_ID`,`REKLAMA_ID`),
  ADD KEY `FK_REKLAME__REKLAMA_N_REKLAME` (`REKLAMA_ID`);

--
-- Indexes for table `snimci`
--
ALTER TABLE `snimci`
  ADD PRIMARY KEY (`SNIMAK_ID`),
  ADD KEY `FK_SNIMCI_KREIRA_SN_KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `svidjanja`
--
ALTER TABLE `svidjanja`
  ADD PRIMARY KEY (`SNIMAK_ID`,`KORISNIK_ID`),
  ADD KEY `FK_SVIDJANJ_OZNACAVA__KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `ugovori`
--
ALTER TABLE `ugovori`
  ADD PRIMARY KEY (`UGOVOR_ID`),
  ADD KEY `FK_UGOVORI_KORISNIK__KORISNIC` (`KORISNIK_ID`),
  ADD KEY `FK_UGOVORI_OGLASIVAC_OGLASIVA` (`OGLASIVAC_ID`);

--
-- Indexes for table `uplate`
--
ALTER TABLE `uplate`
  ADD PRIMARY KEY (`UPLATA_ID`),
  ADD KEY `FK_UPLATE_OTKLJUCAV_FILMOVI` (`FILM_ID`),
  ADD KEY `FK_UPLATE_PRAVI_UPL_KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD PRIMARY KEY (`ZAPOSLEN_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donacije`
--
ALTER TABLE `donacije`
  ADD CONSTRAINT `FK_DONACIJE_DOBIJA_DO_PRENOSI_` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `prenosi_uzivo` (`SNIMAK_ID`),
  ADD CONSTRAINT `FK_DONACIJE_PRAVI_DON_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `komentari`
--
ALTER TABLE `komentari`
  ADD CONSTRAINT `FK_KOMENTAR_DOBIJA_KO_SNIMCI` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `snimci` (`SNIMAK_ID`),
  ADD CONSTRAINT `FK_KOMENTAR_ODGOVARA__KOMENTAR` FOREIGN KEY (`KOM_KOMENTAR_ID`) REFERENCES `komentari` (`KOMENTAR_ID`),
  ADD CONSTRAINT `FK_KOMENTAR_PRAVI_KOM_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `kratki_snimci`
--
ALTER TABLE `kratki_snimci`
  ADD CONSTRAINT `FK_KRATKI_S_MOZE_BITI_SNIMCI` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `snimci` (`SNIMAK_ID`);

--
-- Constraints for table `obicni_snimci`
--
ALTER TABLE `obicni_snimci`
  ADD CONSTRAINT `FK_OBICNI_S_MOZE_BITI_SNIMCI` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `snimci` (`SNIMAK_ID`);

--
-- Constraints for table `odgovori`
--
ALTER TABLE `odgovori`
  ADD CONSTRAINT `FK_ODGOVORI_DOBIJA_OD_POVRATNE` FOREIGN KEY (`KORISNIK_ID`,`POVRATNA_ID`) REFERENCES `povratne_informacije` (`KORISNIK_ID`, `POVRATNA_ID`),
  ADD CONSTRAINT `FK_ODGOVORI_SALJE_ODG_ZAPOSLEN` FOREIGN KEY (`ZAPOSLEN_ID`) REFERENCES `zaposleni` (`ZAPOSLEN_ID`);

--
-- Constraints for table `plejliste`
--
ALTER TABLE `plejliste`
  ADD CONSTRAINT `FK_PLEJLIST_PRAVI_PLE_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `plejliste_snimaka`
--
ALTER TABLE `plejliste_snimaka`
  ADD CONSTRAINT `FK_PLEJLIST_PLEJLISTA_OBICNI_S` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `obicni_snimci` (`SNIMAK_ID`),
  ADD CONSTRAINT `FK_PLEJLIST_PLEJLISTA_PLEJLIST` FOREIGN KEY (`KORISNIK_ID`,`PLEJLISTA_ID`) REFERENCES `plejliste` (`KORISNIK_ID`, `PLEJLISTA_ID`);

--
-- Constraints for table `poruke`
--
ALTER TABLE `poruke`
  ADD CONSTRAINT `FK_PORUKE_PRIMA_POR_PRENOSI_` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `prenosi_uzivo` (`SNIMAK_ID`),
  ADD CONSTRAINT `FK_PORUKE_SALJE_POR_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `povratne_informacije`
--
ALTER TABLE `povratne_informacije`
  ADD CONSTRAINT `FK_POVRATNE_SALJE_INF_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `pregledi`
--
ALTER TABLE `pregledi`
  ADD CONSTRAINT `FK_PREGLEDI_DOBIJA_PR_SNIMCI` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `snimci` (`SNIMAK_ID`),
  ADD CONSTRAINT `FK_PREGLEDI_PRAVI_PRE_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `prenosi_uzivo`
--
ALTER TABLE `prenosi_uzivo`
  ADD CONSTRAINT `FK_PRENOSI__MOZE_BITI_SNIMCI` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `snimci` (`SNIMAK_ID`);

--
-- Constraints for table `reakcije`
--
ALTER TABLE `reakcije`
  ADD CONSTRAINT `FK_REAKCIJE_KRATAK_SN_KRATKI_S` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `kratki_snimci` (`SNIMAK_ID`),
  ADD CONSTRAINT `FK_REAKCIJE_PRAVI_REA_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `reklame`
--
ALTER TABLE `reklame`
  ADD CONSTRAINT `FK_REKLAME_PRAVI_REK_OGLASIVA` FOREIGN KEY (`OGLASIVAC_ID`) REFERENCES `oglasivaci` (`OGLASIVAC_ID`);

--
-- Constraints for table `reklame_na_snimcima`
--
ALTER TABLE `reklame_na_snimcima`
  ADD CONSTRAINT `FK_REKLAME__REKLAMA_N_OBICNI_S` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `obicni_snimci` (`SNIMAK_ID`),
  ADD CONSTRAINT `FK_REKLAME__REKLAMA_N_REKLAME` FOREIGN KEY (`REKLAMA_ID`) REFERENCES `reklame` (`REKLAMA_ID`);

--
-- Constraints for table `snimci`
--
ALTER TABLE `snimci`
  ADD CONSTRAINT `FK_SNIMCI_KREIRA_SN_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `svidjanja`
--
ALTER TABLE `svidjanja`
  ADD CONSTRAINT `FK_SVIDJANJ_DOBIJA_SV_SNIMCI` FOREIGN KEY (`SNIMAK_ID`) REFERENCES `snimci` (`SNIMAK_ID`),
  ADD CONSTRAINT `FK_SVIDJANJ_OZNACAVA__KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `ugovori`
--
ALTER TABLE `ugovori`
  ADD CONSTRAINT `FK_UGOVORI_KORISNIK__KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`),
  ADD CONSTRAINT `FK_UGOVORI_OGLASIVAC_OGLASIVA` FOREIGN KEY (`OGLASIVAC_ID`) REFERENCES `oglasivaci` (`OGLASIVAC_ID`);

--
-- Constraints for table `uplate`
--
ALTER TABLE `uplate`
  ADD CONSTRAINT `FK_UPLATE_OTKLJUCAV_FILMOVI` FOREIGN KEY (`FILM_ID`) REFERENCES `filmovi` (`FILM_ID`),
  ADD CONSTRAINT `FK_UPLATE_PRAVI_UPL_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
