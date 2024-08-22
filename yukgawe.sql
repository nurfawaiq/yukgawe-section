-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2024 at 12:27 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
  `id_contact` bigint UNSIGNED NOT NULL,
  `name_contact` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name_alias` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `info_contact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id_group` bigint UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id_contact`, `name_contact`, `name_alias`, `phone`, `email`, `address`, `info_contact`, `id_group`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Paramita Rahayu', NULL, '0773 7436 9177', 'darman.budiman@gmail.co.id', 'Ds. Cikutra Timur No. 914, Lubuklinggau 38881, Jambi', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(3, 'Fitria Usamah', NULL, '0551 2425 7805', 'andriani.nadine@gmail.com', 'Ds. Bakau Griya Utama No. 992, Pekanbaru 86545, Jabar', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(4, 'Uchita Kusmawati', NULL, '0832 292 515', 'santoso.luis@gmail.co.id', 'Jln. Moch. Toha No. 740, Palangka Raya 26854, Malut', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(5, 'Novi Juli Agustina', NULL, '(+62) 997 2221 355', 'dewi33@gmail.co.id', 'Ki. Ters. Buah Batu No. 480, Jayapura 84941, Sumut', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(6, 'Asirwanda Simbolon', NULL, '0236 1928 4694', 'dinda.handayani@gmail.com', 'Jr. Qrisdoren No. 437, Surabaya 37065, Riau', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(7, 'Irnanto Firmansyah', NULL, '020 9390 505', 'eka85@yahoo.com', 'Ds. K.H. Wahid Hasyim (Kopo) No. 661, Palopo 31679, Sulsel', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(8, 'Ayu Wastuti', NULL, '027 6348 081', 'prakasa.zaenab@yahoo.com', 'Kpg. Yogyakarta No. 960, Bengkulu 59720, Aceh', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(9, 'Aslijan Thamrin', NULL, '(+62) 594 3771 9788', 'bastuti@yahoo.com', 'Psr. Dago No. 253, Kupang 94136, Jambi', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(10, 'Hardana Maheswara', NULL, '0395 4365 4396', 'swulandari@gmail.co.id', 'Ki. Babadak No. 648, Depok 86584, Kalsel', NULL, 1, '2024-05-02 17:38:41', NULL, NULL),
(12, 'Agus', '', '', '', '', '', 1, '2024-05-02 17:40:19', '2024-05-02 17:40:19', NULL),
(14, 'Miss Gerry Oberbrunner', NULL, '1-267-559-4240', 'jamir.haley@ratke.net', '149 Vesta Route\nPort Roslyn, WI 57441-4989', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(15, 'Olga Hutagalung', NULL, '(+62) 658 6902 152', 'nadia.pradana@gmail.co.id', 'Ki. Suryo No. 750, Pontianak 20106, Kepri', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(16, 'Bancar Agus Mustofa', NULL, '0260 6484 5708', 'putu39@gmail.co.id', 'Dk. Basoka No. 227, Lubuklinggau 55592, Jambi', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(17, 'Bala Permadi', NULL, '0874 2694 257', 'melani.daru@yahoo.com', 'Psr. Lada No. 929, Semarang 71004, DIY', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(18, 'Timbul Langgeng Kuswoyo S.Farm', NULL, '(+62) 352 1034 4852', 'narpati.asmadi@gmail.com', 'Jr. Babakan No. 141, Ambon 12512, Sulteng', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(19, 'Maimunah Hasanah', NULL, '(+62) 817 356 291', 'lsaragih@gmail.co.id', 'Ds. Wahidin Sudirohusodo No. 757, Yogyakarta 56513, Lampung', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(20, 'Bakda Prayoga S.Psi', NULL, '0376 1122 4002', 'hakim.widya@yahoo.com', 'Psr. Bambu No. 47, Tasikmalaya 87560, Jambi', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(21, 'Tasnim Jarwadi Tamba M.Pd', NULL, '0870 0470 728', 'widiastuti.gara@yahoo.com', 'Psr. Rajawali No. 254, Probolinggo 36165, Jambi', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(22, 'Cindy Jamalia Suryatmi S.Farm', NULL, '(+62) 691 9730 0400', 'rrahayu@gmail.co.id', 'Gg. Raya Ujungberung No. 141, Manado 44667, Aceh', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(23, 'Tirta Gandi Irawan S.Pt', NULL, '(+62) 760 9271 0983', 'rahimah.belinda@yahoo.co.id', 'Psr. Abdul Muis No. 619, Administrasi Jakarta Timur 69423, Malut', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(24, 'Qori Susanti', NULL, '(+62) 607 0212 0064', 'safitri.farhunnisa@gmail.com', 'Ds. Baik No. 685, Administrasi Jakarta Pusat 61199, Jateng', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(25, 'Koko Bagus Gunarto', NULL, '(+62) 585 0898 3590', 'oyolanda@yahoo.co.id', 'Ds. Jamika No. 517, Banda Aceh 96176, Riau', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(26, 'Lili Haryanti', NULL, '0895 0915 1402', 'bhakim@yahoo.com', 'Jln. Suryo No. 406, Sorong 63322, Sumbar', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(27, 'Elisa Rahimah', NULL, NULL, 'prayogo72@gmail.co.id', 'Ds. Raden Saleh No. 957, Tebing Tinggi 53294, Pabar', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL),
(28, 'Tukijo', NULL, NULL, NULL, '5 langkah dari rumah', NULL, 1, '2024-05-02 17:41:49', '2024-05-02 17:41:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gawe`
--

CREATE TABLE `gawe` (
  `id_gawe` bigint UNSIGNED NOT NULL,
  `name_gawe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_gawe` date NOT NULL,
  `info_gawe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gawe`
--

INSERT INTO `gawe` (`id_gawe`, `name_gawe`, `date_gawe`, `info_gawe`) VALUES
(1, 'Rabiku', '2024-05-12', ''),
(2, 'Nikahan Adek', '2025-06-15', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id_group` bigint UNSIGNED NOT NULL,
  `name_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `info_group` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id_group`, `name_group`, `info_group`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Teman Kerja', '', '2024-05-02 17:38:24', '2024-05-02 19:11:38', NULL),
(2, 'Teman Kuliah', '', '2024-05-02 17:38:33', '2024-05-02 19:11:42', NULL),
(3, 'Teman Sekolah', '', '2024-05-02 19:11:50', '2024-05-02 19:11:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-03-17-063227', 'App\\Database\\Migrations\\Gawe', 'default', 'App', 1714646013, 1),
(2, '2021-05-01-092530', 'App\\Database\\Migrations\\CreateUsers', 'default', 'App', 1714646013, 1),
(3, '2021-05-28-135657', 'App\\Database\\Migrations\\CreateGroups', 'default', 'App', 1714646013, 1),
(4, '2021-09-08-090639', 'App\\Database\\Migrations\\Createcontacts', 'default', 'App', 1714646013, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint UNSIGNED NOT NULL,
  `name_user` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password_user` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `info_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `email_user`, `password_user`, `info_user`) VALUES
(1, 'Administrator', 'dev.yukcoding@gmail.com', '$2y$10$Q15qziiVaBzuDl1rNPH8EOVg5D.jMJ5Z0N/lK7uw9f.3Lnz8MYJbu', NULL),
(2, 'M. Nur Fawaiq', 'nurfawaiq2@gmail.com', '$2y$10$hV0F6IoJPd02uSbVd25FmeUNkrPofKWJFqdnmJ/HeiYFDFH7dAPXW', NULL),
(3, 'Steven Noor', 'steven@yukcoding.dev', '$2y$10$g92X5TK0N9bCQlLRgoj0XelVTDDZyrfQsS0hpCa0BhpRyBBTM6mbu', NULL);

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
  MODIFY `id_contact` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `gawe`
--
ALTER TABLE `gawe`
  MODIFY `id_gawe` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id_group` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
