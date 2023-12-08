-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2023 at 07:08 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_react`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2023_12_08_153026_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d9462a0fb905c38fddadee0f8a2bc926b8185a8471fb7ca13f8a7a8f36f523e81c5a80429ce20da4', 7, 1, 'main', '[]', 0, '2023-12-07 13:50:10', '2023-12-07 13:50:10', '2024-12-07 19:20:10'),
('2e4c604d95ec1e93a55776d72995e82800604f90a0ddb89183822ec6e421fbfd60a75bccb69cb298', 8, 1, 'main', '[]', 0, '2023-12-07 13:53:15', '2023-12-07 13:53:15', '2024-12-07 19:23:15'),
('4d9196d333d352222fe191a4f22d5993cce4296d4a4430928d549e2c23f7b5c49400bbc1a986c482', 9, 1, 'main', '[]', 1, '2023-12-07 13:55:43', '2023-12-07 13:55:43', '2024-12-07 19:25:43'),
('8897ae3fee85424b56523c1717d5dad4f305435c39c144460b262d7c62b0ae76b822a3397bd26f59', 10, 1, 'main', '[]', 0, '2023-12-07 13:59:32', '2023-12-07 13:59:32', '2024-12-07 19:29:32'),
('07162f9f0b13c6d547a976daf95f36220a8c38e965470451a84d5625b5d05d7e07568fdced64d9a0', 9, 1, 'main', '[]', 1, '2023-12-07 14:53:13', '2023-12-07 14:53:13', '2024-12-07 20:23:13'),
('b86ff128ef483ccd1af04bc45adbc8d587d6bf44d528f18b3381b2d4b1a7abde96b7274bac9e953e', 9, 1, 'main', '[]', 1, '2023-12-07 15:06:41', '2023-12-07 15:06:41', '2024-12-07 20:36:41'),
('a012d6a0a4a8e8107a8c05bbf076b39913c92e6354075c80532f8d9cbaf1d7e1ebec5a5a91fda478', 9, 1, 'main', '[]', 1, '2023-12-07 15:17:19', '2023-12-07 15:17:19', '2024-12-07 20:47:19'),
('83b026e9a9c1c074754aacd7c5a8419edf7baa5f9f2b584306fddd3440a6e2fea257ed284bc41ce0', 11, 1, 'main', '[]', 1, '2023-12-07 15:19:29', '2023-12-07 15:19:29', '2024-12-07 20:49:29'),
('e12e94dc8387835d9edf92ec0fb91213e5e512ab0308c7a2f3d478b3763067f1bd8a371a58a7ca77', 12, 1, 'main', '[]', 1, '2023-12-08 12:30:32', '2023-12-08 12:30:32', '2024-12-08 18:00:32'),
('77af253ab099ccd7d8505b6537066cac9a8ed36d869f73453dd1e7270c91510c580fc4b159dc40ab', 13, 1, 'main', '[]', 1, '2023-12-08 12:40:17', '2023-12-08 12:40:17', '2024-12-08 18:10:17'),
('9274909bf7f5fb9aa9f96d0b1ec2f38e318f2369de3c4abf0bc6b321e393a3a7be2dbdee2f816322', 13, 1, 'main', '[]', 1, '2023-12-08 12:40:41', '2023-12-08 12:40:41', '2024-12-08 18:10:41'),
('3ad90d086e0b9f01c377cc87ff8a19696606c22cc411d8fee6da254d4e6a9e027a943d6b78838ffa', 13, 1, 'main', '[]', 0, '2023-12-08 12:45:35', '2023-12-08 12:45:35', '2024-12-08 18:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'vE3PraEMOkvRjPzEIMkOCi4WrYX7PCNIntyKoNrM', NULL, 'http://localhost', 1, 0, 0, '2023-12-07 13:46:39', '2023-12-07 13:46:39'),
(2, NULL, 'Laravel Password Grant Client', 'rI3yY8wFhrOKvNumHGPR5x0Hg3lcUp96jCMfn1Gf', 'users', 'http://localhost', 0, 1, 0, '2023-12-07 13:46:39', '2023-12-07 13:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-07 13:46:39', '2023-12-07 13:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_sku_unique` (`sku`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `sku`, `description`, `created_at`, `updated_at`) VALUES
(25, 'product8', 107.23, 'pr-028', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(26, 'product9', 108.23, 'pr-029', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(24, 'product7', 106.23, 'pr-027', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(19, 'product2', 101.23, 'pr-022', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 13:04:16'),
(20, 'product3', 102.23, 'pr-023', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(21, 'product4', 103.23, 'pr-024', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(22, 'product5', 104.23, 'pr-025', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(23, 'product6', 105.23, 'pr-026', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(28, 'product11', 110.23, 'pr-031', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(27, 'product10', 109.23, 'pr-030', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(18, 'product1', 100.23, 'pr-021', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(29, 'product12', 111.23, 'pr-032', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(30, 'product13', 112.23, 'pr-033', 'okdkdkknd', '2023-12-08 12:25:17', '2023-12-08 12:25:17'),
(31, 'product 111', 100.23, 'pr-0210', 'description 1', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(32, 'product 112', 101.23, 'pr-0211', 'description 2', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(33, 'product 113', 102.23, 'pr-0212', 'description 3', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(34, 'product 114', 103.23, 'pr-0213', 'description 4', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(35, 'product 115', 104.23, 'pr-0214', 'description 5', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(36, 'product 116', 105.23, 'pr-0215', 'description 6', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(37, 'product 117', 106.23, 'pr-0216', 'description 7', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(38, 'product 118', 107.23, 'pr-0217', 'description 8', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(39, 'product 119', 108.23, 'pr-0218', 'description 9', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(40, 'product 120', 109.23, 'pr-0219', 'description 10', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(41, 'product 121', 110.23, 'pr-0220', 'description 11', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(42, 'product 122', 111.23, 'pr-0221', 'description 12', '2023-12-08 12:51:53', '2023-12-08 12:51:53'),
(43, 'product 123', 112.23, 'pr-0222', 'description 13', '2023-12-08 12:51:53', '2023-12-08 12:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'Jishnujith', 'test@test.co', NULL, '$2y$10$JvNaZi6VFaIFGiSrvC.OLe4kSwPs2nuPtqYQsbcM/mkEfb2CFo.LC', NULL, '2023-12-08 12:30:32', '2023-12-08 12:30:32'),
(13, 'tester', 'test@test.in', NULL, '$2y$10$dCE/RNMawr5tDr2pqYdCmuH66pdgXE.u2UG5OsGIfA4jKiuMdyXj6', NULL, '2023-12-08 12:40:17', '2023-12-08 12:40:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
