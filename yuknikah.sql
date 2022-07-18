-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2022 at 02:52 AM
-- Server version: 5.7.24
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yuknikah`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id_contact` bigint(20) UNSIGNED NOT NULL,
  `name_contact` varchar(60) NOT NULL,
  `name_alias` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text,
  `info_contact` text,
  `id_group` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id_contact`, `name_contact`, `name_alias`, `phone`, `email`, `address`, `info_contact`, `id_group`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Miss Gerry Oberbrunner', NULL, '1-267-559-4240', 'jamir.haley@ratke.net', '149 Vesta Route\nPort Roslyn, WI 57441-4989', NULL, 6, NULL, NULL, NULL),
(3, 'Olga Hutagalung', NULL, '(+62) 658 6902 152', 'nadia.pradana@gmail.co.id', 'Ki. Suryo No. 750, Pontianak 20106, Kepri', NULL, 6, '2021-09-08 17:30:30', NULL, NULL),
(4, 'Bancar Agus Mustofa', NULL, '0260 6484 5708', 'putu39@gmail.co.id', 'Dk. Basoka No. 227, Lubuklinggau 55592, Jambi', NULL, 6, '2021-09-08 17:30:50', NULL, NULL),
(5, 'Bala Permadi', NULL, '0874 2694 257', 'melani.daru@yahoo.com', 'Psr. Lada No. 929, Semarang 71004, DIY', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(6, 'Timbul Langgeng Kuswoyo S.Farm', NULL, '(+62) 352 1034 4852', 'narpati.asmadi@gmail.com', 'Jr. Babakan No. 141, Ambon 12512, Sulteng', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(7, 'Maimunah Hasanah', NULL, '(+62) 817 356 291', 'lsaragih@gmail.co.id', 'Ds. Wahidin Sudirohusodo No. 757, Yogyakarta 56513, Lampung', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(8, 'Bakda Prayoga S.Psi', NULL, '0376 1122 4002', 'hakim.widya@yahoo.com', 'Psr. Bambu No. 47, Tasikmalaya 87560, Jambi', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(9, 'Tasnim Jarwadi Tamba M.Pd', NULL, '0870 0470 728', 'widiastuti.gara@yahoo.com', 'Psr. Rajawali No. 254, Probolinggo 36165, Jambi', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(10, 'Cindy Jamalia Suryatmi S.Farm', NULL, '(+62) 691 9730 0400', 'rrahayu@gmail.co.id', 'Gg. Raya Ujungberung No. 141, Manado 44667, Aceh', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(11, 'Tirta Gandi Irawan S.Pt', NULL, '(+62) 760 9271 0983', 'rahimah.belinda@yahoo.co.id', 'Psr. Abdul Muis No. 619, Administrasi Jakarta Timur 69423, Malut', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(12, 'Qori Susanti', NULL, '(+62) 607 0212 0064', 'safitri.farhunnisa@gmail.com', 'Ds. Baik No. 685, Administrasi Jakarta Pusat 61199, Jateng', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(13, 'Koko Bagus Gunarto', NULL, '(+62) 585 0898 3590', 'oyolanda@yahoo.co.id', 'Ds. Jamika No. 517, Banda Aceh 96176, Riau', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(14, 'Lili Haryanti', NULL, '0895 0915 1402', 'bhakim@yahoo.com', 'Jln. Suryo No. 406, Sorong 63322, Sumbar', NULL, 6, '2021-09-08 17:32:17', NULL, NULL),
(15, 'Elisa Rahimah', '', '', 'prayogo72@gmail.co.id', 'Ds. Raden Saleh No. 957, Tebing Tinggi 53294, Pabar', '', 7, '2021-09-08 17:34:20', '2022-02-07 10:40:58', NULL),
(16, 'Tukijo', '', '', '', '5 langkah dari rumah', '', 7, '2021-11-27 14:26:01', '2022-02-07 22:37:48', NULL),
(17, 'Miss Gerry Oberbrunner', NULL, '1-267-559-4240', 'jamir.haley@ratke.net', '149 Vesta Route\nPort Roslyn, WI 57441-4989', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(18, 'Olga Hutagalung', NULL, '(+62) 658 6902 152', 'nadia.pradana@gmail.co.id', 'Ki. Suryo No. 750, Pontianak 20106, Kepri', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(19, 'Bancar Agus Mustofa', NULL, '0260 6484 5708', 'putu39@gmail.co.id', 'Dk. Basoka No. 227, Lubuklinggau 55592, Jambi', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(20, 'Bala Permadi', NULL, '0874 2694 257', 'melani.daru@yahoo.com', 'Psr. Lada No. 929, Semarang 71004, DIY', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(21, 'Timbul Langgeng Kuswoyo S.Farm', NULL, '(+62) 352 1034 4852', 'narpati.asmadi@gmail.com', 'Jr. Babakan No. 141, Ambon 12512, Sulteng', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(22, 'Maimunah Hasanah', NULL, '(+62) 817 356 291', 'lsaragih@gmail.co.id', 'Ds. Wahidin Sudirohusodo No. 757, Yogyakarta 56513, Lampung', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(23, 'Bakda Prayoga S.Psi', NULL, '0376 1122 4002', 'hakim.widya@yahoo.com', 'Psr. Bambu No. 47, Tasikmalaya 87560, Jambi', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(24, 'Tasnim Jarwadi Tamba M.Pd', NULL, '0870 0470 728', 'widiastuti.gara@yahoo.com', 'Psr. Rajawali No. 254, Probolinggo 36165, Jambi', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(25, 'Cindy Jamalia Suryatmi S.Farm', NULL, '(+62) 691 9730 0400', 'rrahayu@gmail.co.id', 'Gg. Raya Ujungberung No. 141, Manado 44667, Aceh', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(26, 'Tirta Gandi Irawan S.Pt', NULL, '(+62) 760 9271 0983', 'rahimah.belinda@yahoo.co.id', 'Psr. Abdul Muis No. 619, Administrasi Jakarta Timur 69423, Malut', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(27, 'Qori Susanti', NULL, '(+62) 607 0212 0064', 'safitri.farhunnisa@gmail.com', 'Ds. Baik No. 685, Administrasi Jakarta Pusat 61199, Jateng', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(28, 'Koko Bagus Gunarto', NULL, '(+62) 585 0898 3590', 'oyolanda@yahoo.co.id', 'Ds. Jamika No. 517, Banda Aceh 96176, Riau', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(29, 'Lili Haryanti', NULL, '0895 0915 1402', 'bhakim@yahoo.com', 'Jln. Suryo No. 406, Sorong 63322, Sumbar', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(30, 'Elisa Rahimah', NULL, NULL, 'prayogo72@gmail.co.id', 'Ds. Raden Saleh No. 957, Tebing Tinggi 53294, Pabar', NULL, 0, '2022-03-16 11:12:08', '2022-03-16 11:12:08', NULL),
(31, 'Tukijo', '', '', '', '5 langkah dari rumah', '', 7, '2022-03-16 11:12:08', '2022-03-16 11:13:01', NULL),
(32, 'Miss Gerry Oberbrunner', NULL, '1-267-559-4240', 'jamir.haley@ratke.net', '149 Vesta Route\nPort Roslyn, WI 57441-4989', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(33, 'Olga Hutagalung', NULL, '(+62) 658 6902 152', 'nadia.pradana@gmail.co.id', 'Ki. Suryo No. 750, Pontianak 20106, Kepri', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(34, 'Bancar Agus Mustofa', NULL, '0260 6484 5708', 'putu39@gmail.co.id', 'Dk. Basoka No. 227, Lubuklinggau 55592, Jambi', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(35, 'Bala Permadi', NULL, '0874 2694 257', 'melani.daru@yahoo.com', 'Psr. Lada No. 929, Semarang 71004, DIY', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(36, 'Timbul Langgeng Kuswoyo S.Farm', NULL, '(+62) 352 1034 4852', 'narpati.asmadi@gmail.com', 'Jr. Babakan No. 141, Ambon 12512, Sulteng', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(37, 'Maimunah Hasanah', NULL, '(+62) 817 356 291', 'lsaragih@gmail.co.id', 'Ds. Wahidin Sudirohusodo No. 757, Yogyakarta 56513, Lampung', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(38, 'Bakda Prayoga S.Psi', NULL, '0376 1122 4002', 'hakim.widya@yahoo.com', 'Psr. Bambu No. 47, Tasikmalaya 87560, Jambi', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(39, 'Tasnim Jarwadi Tamba M.Pd', NULL, '0870 0470 728', 'widiastuti.gara@yahoo.com', 'Psr. Rajawali No. 254, Probolinggo 36165, Jambi', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(40, 'Cindy Jamalia Suryatmi S.Farm', NULL, '(+62) 691 9730 0400', 'rrahayu@gmail.co.id', 'Gg. Raya Ujungberung No. 141, Manado 44667, Aceh', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(41, 'Tirta Gandi Irawan S.Pt', NULL, '(+62) 760 9271 0983', 'rahimah.belinda@yahoo.co.id', 'Psr. Abdul Muis No. 619, Administrasi Jakarta Timur 69423, Malut', NULL, 0, '2022-03-16 11:13:37', '2022-03-16 11:13:37', NULL),
(42, 'Bancar Agus Mustofa', NULL, '0260 6484 5708', 'putu39@gmail.co.id', 'Dk. Basoka No. 227, Lubuklinggau 55592, Jambi', NULL, 0, '2022-03-16 11:13:57', '2022-03-16 11:13:57', NULL),
(43, 'Bakda Prayoga S.Psi', NULL, '0376 1122 4002', 'hakim.widya@yahoo.com', 'Psr. Bambu No. 47, Tasikmalaya 87560, Jambi', NULL, 0, '2022-03-16 11:13:57', '2022-03-16 11:13:57', NULL),
(44, 'Tasnim Jarwadi Tamba M.Pd', NULL, '0870 0470 728', 'widiastuti.gara@yahoo.com', 'Psr. Rajawali No. 254, Probolinggo 36165, Jambi', NULL, 0, '2022-03-16 11:13:57', '2022-03-16 11:13:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gawe`
--

CREATE TABLE `gawe` (
  `id_gawe` bigint(20) UNSIGNED NOT NULL,
  `name_gawe` varchar(50) NOT NULL,
  `date_gawe` date NOT NULL,
  `info_gawe` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gawe`
--

INSERT INTO `gawe` (`id_gawe`, `name_gawe`, `date_gawe`, `info_gawe`) VALUES
(1, 'Gaweku', '2022-12-31', 'Pernikahanku'),
(2, 'Gawe Adek', '2024-03-03', 'Pernikahan Adek'),
(3, 'Nikahan Saudara', '2021-07-01', ''),
(5, 'Abcde', '2021-03-27', 'test'),
(6, 'Acara 0', '2022-01-02', ''),
(7, 'Acara 1', '2021-11-30', ''),
(8, 'Nikahan Mantan', '2022-03-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id_group` bigint(20) UNSIGNED NOT NULL,
  `name_group` varchar(50) NOT NULL,
  `info_group` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id_group`, `name_group`, `info_group`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 'Unrecognized', '', '2021-11-27 13:18:10', '2021-12-09 09:38:08', NULL),
(1, 'Teman TK', NULL, NULL, NULL, NULL),
(2, 'Teman SD', NULL, NULL, NULL, NULL),
(3, 'Teman SMP', NULL, NULL, '2021-07-08 12:19:09', NULL),
(4, 'Teman SMA', '', NULL, '2021-07-08 12:19:07', NULL),
(5, 'Teman Kuliah', '', NULL, '2021-07-08 12:19:05', NULL),
(6, 'Teman Kerja', 'PT. ABC', '2021-07-06 20:53:40', '2021-07-08 12:19:04', NULL),
(7, 'Tetangga', '', '2021-08-01 14:10:47', '2021-08-01 14:10:59', NULL),
(8, 'Saudara', '', '2021-08-01 14:11:03', '2021-08-01 14:11:03', NULL),
(9, 'Mantan', '', '2021-08-01 14:11:07', '2021-08-01 14:11:10', '2021-08-01 14:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2021-03-17-063227', 'App\\Database\\Migrations\\Gawe', 'default', 'App', 1619835978, 1),
(3, '2021-05-01-092530', 'App\\Database\\Migrations\\CreateUsers', 'default', 'App', 1619861440, 2),
(4, '2021-05-28-135657', 'App\\Database\\Migrations\\CreateGroups', 'default', 'App', 1622210393, 3),
(6, '2021-09-08-090639', 'App\\Database\\Migrations\\Createcontacts', 'default', 'App', 1631092794, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name_user` varchar(60) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `password_user` varchar(60) NOT NULL,
  `info_user` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `email_user`, `password_user`, `info_user`) VALUES
(1, 'Administrator', 'dev.yukcoding@gmail.com', '$2y$10$AH37VG8KoWYP8rZ.gzBhnOW8GWREdY7TO9oRxYfaD7uvOKTGBS9Me', NULL),
(2, 'M. Nur Fawaiq', 'nurfawaiq2@gmail.com', '$2y$10$2D15GMD0YrKuyH4.Wq6MFOT0GzKwjozh7JXMvsKE6mSo/POq.e4Am', NULL),
(3, 'Steven Noor', 'steven@yukcoding.dev', '$2y$10$k7jUNc3j6hWb3iZID.1O0OBr2TM.lfCtAZXyK4ciEoInApVas1CZK', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id_contact`),
  ADD KEY `contacts_id_group_foreign` (`id_group`);

--
-- Indexes for table `gawe`
--
ALTER TABLE `gawe`
  ADD PRIMARY KEY (`id_gawe`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id_contact` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `gawe`
--
ALTER TABLE `gawe`
  MODIFY `id_gawe` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id_group` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_id_group_foreign` FOREIGN KEY (`id_group`) REFERENCES `groups` (`id_group`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
