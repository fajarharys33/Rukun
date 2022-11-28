-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2022 at 01:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rukun`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstname`, `lastname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'fajar', 'hary sanjaya', 'fajar@rukun.id', '$2y$10$CQDrS7qZA9pghJekKS.5LuaEjUuUxs08a1IYIEJjj.gBnBh8smMqS', '2022-11-28 17:29:04', '2022-11-28 17:29:04');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_title` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `post_by` char(1) NOT NULL,
  `photo` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_title`, `category`, `description`, `post_by`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'German di tahan imbang oleh Spanyol', 'Olahraga', 'Jerman punya kans angkat koper lebih cepat andaikan di laga kontra Spanyol kalah. Namun, hasil seri yang diperoleh membuat persaingan Grup E Piala Dunia 2022 masih panas.\r\n\r\nSpanyol sebetulnya sudah unggul lebih dulu di menit ke-62 lewat gol Alvaro Morata. Di menit ke-83, Jerman lalu menyamakan kedudukan melalui Niclas Fullkrug.\r\n\r\nKondisinya saat ini di klasemen, Spanyol masih berada di posisi puncak dengan empat poin. Hasil seri di laga terakhir sudah cukup untuk mengamankan slot ke babak 16 besar.\r\n\r\nSedangkan Jerman wajib menang dengan selisih minimal dua gol atas Kosta Rika, sambil berharap Jepang kalah dengan minimal satu gol saat melawan Spanyol.', '1', 'jerman-4.jpg', '2022-11-28 07:50:24', '2022-11-28 08:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('08d4ebb69033ed91fbbcc2817c057748a7bc09ea5854f8b542ea5d35bdf78174773d19b646ebd88a', 1, 7, 'Token name', '[]', 0, '2022-11-28 05:26:24', '2022-11-28 05:26:24', '2023-11-28 12:26:24'),
('2346308424f395d95176ee4e02422880f7066eff5e074abd1b79345a24a80bbb8a3bb5005b05f8f9', 1, 7, 'Token name', '[]', 0, '2022-11-28 05:01:02', '2022-11-28 05:01:02', '2023-11-28 12:01:02'),
('286c06a5e47805a665b8f983cae0c298dda44332f2de90ce7b1991dcd03d7fc3a1c1366ad5006f7f', 1, 7, 'Token name', '[]', 0, '2022-11-28 04:34:15', '2022-11-28 04:34:15', '2023-11-28 11:34:15'),
('575879fdb08ab4ffed9c5f33252c0e9ec7dfdd53dc28b00c5a87471215817e6fc7810fde0dc39def', 1, 7, 'Token name', '[]', 0, '2022-11-28 03:58:51', '2022-11-28 03:58:51', '2023-11-28 10:58:51'),
('6c3b69589edb986efc267d6df078dbeceaade319d882b2f7e89a96ef2928d8ee41b99138a869bffa', 1, 7, 'Token name', '[]', 0, '2022-11-28 03:57:46', '2022-11-28 03:57:46', '2023-11-28 10:57:46'),
('7d911006719093852eb74645d44882c70b4bfbd518f7b566ff4dd00ab126120fd6d7116d23576b83', 1, 7, 'Token name', '[]', 0, '2022-11-28 05:16:21', '2022-11-28 05:16:21', '2023-11-28 12:16:21'),
('bc83c515136b42738c81949121eeb55677929ca6f14e5dfb3c428240644f0c7cad541391e2d106c4', 1, 7, 'Token name', '[]', 0, '2022-11-28 03:57:19', '2022-11-28 03:57:19', '2023-11-28 10:57:19'),
('dc884a2f983db991b2c6193251bf7e70724dd56498e701c42512bc3f5f19e073ad7357e9a07c54df', 1, 7, 'Token name', '[]', 0, '2022-11-28 04:50:07', '2022-11-28 04:50:07', '2023-11-28 11:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'evxE2MVljubGOHtwbnISpz670rkIMNB0mb30XJqP', NULL, 'http://localhost', 1, 0, 0, '2022-11-28 02:07:15', '2022-11-28 02:07:15'),
(2, NULL, 'Laravel Password Grant Client', '0lt66DpNOLDGuv1bDudiZF0xevKBhvhC5fCu195F', 'users', 'http://localhost', 0, 1, 0, '2022-11-28 02:07:15', '2022-11-28 02:07:15'),
(3, NULL, 'Laravel Personal Access Client', '3EEf7eopeP7TcnScGuuCt3OfYF7857CD6TVYyOHG', NULL, 'http://localhost', 1, 0, 0, '2022-11-28 02:07:30', '2022-11-28 02:07:30'),
(4, NULL, 'Laravel Password Grant Client', '7OmCG38MMm72LIAuiSBUCDa3qJCBKd0wb6xKgwG9', 'users', 'http://localhost', 0, 1, 0, '2022-11-28 02:07:30', '2022-11-28 02:07:30'),
(5, NULL, 'Laravel Personal Access Client', 'L46cAO68kDX2Ad5j5TGBtogsglyvg0chguBnPIMY', NULL, 'http://localhost', 1, 0, 0, '2022-11-28 03:51:09', '2022-11-28 03:51:09'),
(6, NULL, 'Laravel Personal Access Client', 'ATJ3mGLtkdDArzmc1XbXa4H7WvcdsPC8BEdKozaW', NULL, 'http://localhost', 1, 0, 0, '2022-11-28 03:51:14', '2022-11-28 03:51:14'),
(7, NULL, 'Laravel Personal Access Client', '7Mgn1CicbfHaVVjvocEgyLxkPokVqjjWHOHaVhUl', NULL, 'http://localhost', 1, 0, 0, '2022-11-28 03:52:21', '2022-11-28 03:52:21'),
(8, NULL, 'Laravel Password Grant Client', 'YJcYfJSCGFu7Oif5HwPexLDec6lZrl41upSwLrJ5', 'users', 'http://localhost', 0, 1, 0, '2022-11-28 03:52:21', '2022-11-28 03:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-28 02:07:15', '2022-11-28 02:07:15'),
(2, 3, '2022-11-28 02:07:30', '2022-11-28 02:07:30'),
(3, 7, '2022-11-28 03:52:21', '2022-11-28 03:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fajar Hary Sanjaya', 'fajar@rukun.id', '2022-11-28', '$2y$10$2eYj4EGA2nXZIB5H3ON32u6eHjnYFdzvE2uaRT05YLxDA8Nx1gGGq', NULL, '2022-11-28 10:57:58', '2022-11-28 05:42:16'),
(4, 'Ghara elfaqih', 'ghara@rukun.id', '2022-11-28', '$2y$10$Gbvm6lUQ6YCaqZ4eKXy3jODIpGkrcRN3VOldVTaxCJE9lxasurkFa', NULL, '2022-11-28 05:15:42', '2022-11-28 05:40:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
