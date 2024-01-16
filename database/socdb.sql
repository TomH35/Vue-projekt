-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1:3307
-- Čas generovania: Út 16.Jan 2024, 10:57
-- Verzia serveru: 10.4.32-MariaDB
-- Verzia PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `socdb`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `admin_t`
--

CREATE TABLE `admin_t` (
  `adminID` int(11) NOT NULL,
  `a_username` varchar(255) NOT NULL,
  `a_password` varchar(255) NOT NULL,
  `a_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `admin_t`
--

INSERT INTO `admin_t` (`adminID`, `a_username`, `a_password`, `a_email`) VALUES
(1, 'admin1', 'h', 'admin1@email.com');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `clanok_soc`
--

CREATE TABLE `clanok_soc` (
  `id_soc` int(11) NOT NULL,
  `nadpis` varchar(45) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `clanok_obrazok` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Sťahujem dáta pre tabuľku `clanok_soc`
--

INSERT INTO `clanok_soc` (`id_soc`, `nadpis`, `text`, `clanok_obrazok`) VALUES
(1, 'Qualcomm Snapdragon 8+ gen 1', NULL, '/img/processor-g3c137cc37_640.jpg'),
(2, 'Qualcomm Snapdragon 8 gen 2', NULL, '/img/processor-g3c137cc37_640.jpg'),
(3, 'Qualcomm Snapdragon 8 gen 3', '', '/img/processor-g3c137cc37_640.jpg');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `pouzivatelia`
--

CREATE TABLE `pouzivatelia` (
  `pouzivatelID` int(11) NOT NULL,
  `p_username` varchar(45) DEFAULT NULL,
  `p_email` varchar(90) DEFAULT NULL,
  `p_heslo` varbinary(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Sťahujem dáta pre tabuľku `pouzivatelia`
--

INSERT INTO `pouzivatelia` (`pouzivatelID`, `p_username`, `p_email`, `p_heslo`) VALUES
(1, 'Tom123', 'tom123@email.com', 0x62343234303739316365306265376239326464643530393161653637323334653564666637373865373836646330613363623938343661663063663862363533),
(2, 'tom1', 'tom1@email.com', 0x61623132653363313162303335656435303361376661636333623937373163333137646535626564343632373966313833373637396465616233326136356663);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `soc`
--

CREATE TABLE `soc` (
  `id_soc` int(11) NOT NULL,
  `id_soc_clanok` int(11) NOT NULL,
  `soc_nazov` varchar(45) DEFAULT NULL,
  `soc_jadra` longtext DEFAULT NULL,
  `soc_pocet_jadier` varchar(45) DEFAULT NULL,
  `soc_instrukcna_sada` varchar(45) DEFAULT NULL,
  `soc_l2` varchar(45) DEFAULT NULL,
  `soc_l3` varchar(45) DEFAULT NULL,
  `soc_vyrobny_proces` varchar(45) DEFAULT NULL,
  `soc_nazov_gpu` varchar(45) DEFAULT NULL,
  `soc_frekvencia_gpu` varchar(45) DEFAULT NULL,
  `soc_verzia_vulkan` varchar(45) DEFAULT NULL,
  `soc_verzia_open_gl` varchar(45) DEFAULT NULL,
  `soc_verzia_open_cl` varchar(45) DEFAULT NULL,
  `soc_verzia_directx` varchar(45) DEFAULT NULL,
  `soc_NPU` varchar(45) DEFAULT NULL,
  `soc_typ_pamate` varchar(45) DEFAULT NULL,
  `soc_max_rozlis_obr` varchar(45) DEFAULT NULL,
  `soc_max_rozlis_kamery` varchar(45) DEFAULT NULL,
  `soc_nahravanie_videii` varchar(45) DEFAULT NULL,
  `soc_prehravanie_videii` varchar(45) DEFAULT NULL,
  `soc_video_kodeky` varchar(45) DEFAULT NULL,
  `soc_audio_kodeky` varchar(45) DEFAULT NULL,
  `soc_typ_pamate_ram` varchar(45) DEFAULT NULL,
  `soc_frekvencia_pamate` varchar(45) DEFAULT NULL,
  `soc_zbernica` varchar(45) DEFAULT NULL,
  `soc_max_velkost_pamate` varchar(45) DEFAULT NULL,
  `soc_modem` varchar(45) DEFAULT NULL,
  `soc_4g_podpora` varchar(45) DEFAULT NULL,
  `soc_5g_podpora` varchar(45) DEFAULT NULL,
  `soc_max_prenosova_r` varchar(45) DEFAULT NULL,
  `soc_max_nahravanie_r` varchar(45) DEFAULT NULL,
  `soc_verzia_wifi` varchar(45) DEFAULT NULL,
  `soc_verzia_bluetooth` varchar(45) DEFAULT NULL,
  `soc_navigacia` varchar(45) DEFAULT NULL,
  `soc_sirka_pasma` varchar(45) DEFAULT NULL,
  `soc_antutu_zariadenie` varchar(90) DEFAULT NULL,
  `soc_antutu_cpu` varchar(90) DEFAULT NULL,
  `soc_antutu_gpu` varchar(90) DEFAULT NULL,
  `soc_antutu_mem` varchar(90) DEFAULT NULL,
  `soc_antutu_ux` varchar(45) DEFAULT NULL,
  `soc_antutu_vs` varchar(45) DEFAULT NULL,
  `soc_mark_zariadenie` varchar(45) DEFAULT NULL,
  `soc_mark_benchmark` varchar(45) DEFAULT NULL,
  `soc_mark_skore` varchar(45) DEFAULT NULL,
  `soc_geekbench_zariadenie` varchar(45) DEFAULT NULL,
  `soc_geekbench_scs` varchar(45) DEFAULT NULL,
  `soc_geekbench_mcs` varchar(45) DEFAULT NULL,
  `soc_obrazok` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Sťahujem dáta pre tabuľku `soc`
--

INSERT INTO `soc` (`id_soc`, `id_soc_clanok`, `soc_nazov`, `soc_jadra`, `soc_pocet_jadier`, `soc_instrukcna_sada`, `soc_l2`, `soc_l3`, `soc_vyrobny_proces`, `soc_nazov_gpu`, `soc_frekvencia_gpu`, `soc_verzia_vulkan`, `soc_verzia_open_gl`, `soc_verzia_open_cl`, `soc_verzia_directx`, `soc_NPU`, `soc_typ_pamate`, `soc_max_rozlis_obr`, `soc_max_rozlis_kamery`, `soc_nahravanie_videii`, `soc_prehravanie_videii`, `soc_video_kodeky`, `soc_audio_kodeky`, `soc_typ_pamate_ram`, `soc_frekvencia_pamate`, `soc_zbernica`, `soc_max_velkost_pamate`, `soc_modem`, `soc_4g_podpora`, `soc_5g_podpora`, `soc_max_prenosova_r`, `soc_max_nahravanie_r`, `soc_verzia_wifi`, `soc_verzia_bluetooth`, `soc_navigacia`, `soc_sirka_pasma`, `soc_antutu_zariadenie`, `soc_antutu_cpu`, `soc_antutu_gpu`, `soc_antutu_mem`, `soc_antutu_ux`, `soc_antutu_vs`, `soc_mark_zariadenie`, `soc_mark_benchmark`, `soc_mark_skore`, `soc_geekbench_zariadenie`, `soc_geekbench_scs`, `soc_geekbench_mcs`, `soc_obrazok`) VALUES
(1, 1, 'Qualcomm Snapdragon 8+ gen 1', '1x 3.2 GHz Cortex-X2 | 3x 2.75 GHz Cortex-A710 | 4x 2 GHz Cortex-A510', '8', 'ARMv9-A', '1MB', '6MB', '4nm', 'Adreno 730', '900 MHz', '1.2', '3.2', '2.0', '12', 'Hexagon', 'UFS 3.1', '3840x2160', '200MP', '8k 30FPS, 4k 120FPS', '8k 30FPS, 4k 120FPS', 'H.264, H.265, VP8, VP9', 'AAC, AIFF, CAF, MP3, MP4, WAV', 'LPDDR5', '3200 MHz', '4x 64-bit', '24 GB', 'Snapdragon X65', 'LTE Cat. 24', 'Áno', '2500Mbps', '316Mbps', '6', '5.3', 'GPS, GLONASS, Beidou, Galileo, QZSS, SBAS, NA', '51.2Gbit/s', 'Xiaomi 12T Pro', '253065', '464774', '178004', '178237', '1074079', 'Xiaomi 12S', 'Wild Life', '10517', 'Xiaomi 12S Pro', '1497', '4029', '/img/processor-g3c137cc37_640.jpg'),
(2, 2, 'Qualcomm Snapdragon 8 gen 2', '1x 3.2 GHz Cortex-X3 | 2x 2.8 GHz Cortex-A715 | 2x 2 GHz Cortex-A710 | 3x 2 GHz Cortex-A510', '8', 'ARMv9-A', '1MB', '8MB', '4nm', 'Adreno 740', '680 MHz', '1.3', '3.2', '2.0', '12', 'Hexagon', 'UFS 3.1, UFS 4.0', '3840x2160', '200MP', '8k 30FPS, 4k 120FPS', '8k 60FPS, 4k 120FPS', 'H.264, H.265, AV1, VP8, VP9', 'AAC, AIFF, CAF, MP3, MP4, WAV', 'LPDDR5X', '4200 MHz', '4x 64-bit', '24 GB', 'Snapdragon X70', 'LTE Cat. 24', 'Áno', '10000Mbps', '3500Mbps', '7', '5.3', 'GPS, GLONASS, Beidou, Galileo, QZSS, NAVIC', '64 Gbit/s', 'Samsung Galaxy S23 Ultra', '263521', '535114', '245414', '183111', '1227159', 'Samsung Galaxy S23 Ultra', 'Wild Life', '12218', 'Samsung Galaxy S23 Ultra', '1868', '4930', '/img/processor-g3c137cc37_640.jpg'),
(3, 3, 'Qualcomm Snapdragon 8 gen 3', '1x 3.3GHz Cortex-X4 | 3x 3.15GHz Cortex-A720 | 2x 2.96GHz Cortex-A720 | 2x 2.26GHz Cortex-A520', '8', 'ARMv9.2-A', '', '12MB', '4nm (TSMC)', 'Adreno 750', '770MHz', '1.3', '3.2', '2.0', '12.1', 'Hexagon', 'UFS 4.0', '3840 x 2160', '200MP', '8K 30FPS, 4K 120FPS', '8K 30FPS, 4K 120FPS', 'H.264, H.265, AV1, VP8, VP9', 'AAC, AIFF, CAF, MP3, MP4, WAV', 'LPDDR5X', '4800 MHz', '4x 16bit', '24GB', 'Snapdragon X75', 'LTE Cat. 24', 'Áno', '10000Mbps', '3500Mbps', '7', '5.4', 'GPS, GLONASS, Beidou, Galileo, QZSS, NAVIC', '77 Gbit/s', '', '462657', '902878', '387756', '334649', '2076555', 'Xiaomi 14', 'Wild Life', '16077', '', '2329', '7501', '/img/processor-g3c137cc37_640.jpg');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `admin_t`
--
ALTER TABLE `admin_t`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexy pre tabuľku `clanok_soc`
--
ALTER TABLE `clanok_soc`
  ADD PRIMARY KEY (`id_soc`);

--
-- Indexy pre tabuľku `pouzivatelia`
--
ALTER TABLE `pouzivatelia`
  ADD PRIMARY KEY (`pouzivatelID`);

--
-- Indexy pre tabuľku `soc`
--
ALTER TABLE `soc`
  ADD PRIMARY KEY (`id_soc`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `pouzivatelia`
--
ALTER TABLE `pouzivatelia`
  MODIFY `pouzivatelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
