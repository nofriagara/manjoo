-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 02:55 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `majoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint(20) NOT NULL,
  `user_id` int(40) NOT NULL,
  `merchant_name` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `user_id`, `merchant_name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 3, 'merchant 1', '2021-12-23 00:47:47', 1, '2021-12-23 00:47:47', 1),
(2, 2, 'Merchant 2', '2021-12-23 00:47:47', 2, '2021-12-23 00:47:47', 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) NOT NULL,
  `merchant_id` bigint(20) NOT NULL,
  `outlet_name` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`id`, `merchant_id`, `outlet_name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 'Outlet 1 user 1', '2021-12-23 00:47:47', 1, '2021-12-23 00:47:47', 1),
(2, 2, 'Outlet 1 user 2', '2021-12-23 00:47:47', 2, '2021-12-23 00:47:47', 2),
(3, 1, 'Outlet 2 user 1', '2021-12-23 00:47:47', 1, '2021-12-23 00:47:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `merchant_id` bigint(20) NOT NULL,
  `outlet_id` bigint(20) NOT NULL,
  `bill_total` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `merchant_id`, `outlet_id`, `bill_total`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 1, 2000, '2021-11-01 05:30:04', 1, '2021-11-01 05:30:04', 1),
(2, 1, 1, 2500, '2021-11-01 10:20:14', 1, '2021-11-01 10:20:14', 1),
(3, 1, 1, 4000, '2021-11-02 05:30:04', 1, '2021-11-02 05:30:04', 1),
(4, 1, 1, 1000, '2021-11-04 05:30:04', 1, '2021-11-04 05:30:04', 1),
(5, 1, 1, 7000, '2021-11-05 09:59:30', 1, '2021-11-05 09:59:30', 1),
(6, 1, 3, 2000, '2021-11-02 11:30:04', 1, '2021-11-02 11:30:04', 1),
(7, 1, 3, 2500, '2021-11-03 10:20:14', 1, '2021-11-03 10:20:14', 1),
(8, 1, 3, 4000, '2021-11-04 05:30:04', 1, '2021-11-04 05:30:04', 1),
(9, 1, 3, 1000, '2021-11-04 05:31:04', 1, '2021-11-04 05:31:04', 1),
(10, 1, 3, 7000, '2021-11-05 09:59:30', 1, '2021-11-05 09:59:30', 1),
(11, 2, 2, 2000, '2021-11-01 11:30:04', 2, '2021-11-01 11:30:04', 2),
(12, 2, 2, 2500, '2021-11-02 10:20:14', 2, '2021-11-02 10:20:14', 2),
(13, 2, 2, 4000, '2021-11-03 05:30:04', 2, '2021-11-03 05:30:04', 2),
(14, 2, 2, 1000, '2021-11-04 05:31:04', 2, '2021-11-04 05:31:04', 2),
(15, 2, 2, 7000, '2021-11-05 09:59:30', 2, '2021-11-05 09:59:30', 2),
(16, 2, 2, 2000, '2021-11-05 11:30:04', 2, '2021-11-05 11:30:04', 2),
(17, 2, 2, 2500, '2021-11-06 10:20:14', 2, '2021-11-06 10:20:14', 2),
(18, 2, 2, 4000, '2021-11-07 05:30:04', 2, '2021-11-07 05:30:04', 2),
(19, 2, 2, 1000, '2021-11-08 05:31:04', 2, '2021-11-08 05:31:04', 2),
(20, 2, 2, 7000, '2021-11-09 09:59:30', 2, '2021-11-09 09:59:30', 2),
(21, 2, 2, 1000, '2021-11-10 05:31:04', 2, '2021-11-10 05:31:04', 2),
(22, 2, 2, 7000, '2021-11-11 09:59:30', 2, '2021-11-11 09:59:30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin 1', 'admin1', '0000-00-00 00:00:00', '2021-12-23 07:47:47', '1', '2021-12-23 00:47:47', '0000-00-00 00:00:00'),
(2, 'Admin 2', 'admin2', '0000-00-00 00:00:00', '2021-12-23 07:47:47', '2', '2021-12-23 00:47:47', '0000-00-00 00:00:00'),
(3, 'nofriagara', 'nofriagara@gmail.com', NULL, '$2y$10$2pVka2ELfltW0x08CN13MeeHzZj86FejUQU3No/AMcGSTXs79nX3u', NULL, '2021-12-22 17:48:52', '2021-12-22 17:48:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
