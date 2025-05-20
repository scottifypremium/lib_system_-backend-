-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 07:43 PM
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
-- Database: `library_management_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `total_copies` int(11) NOT NULL DEFAULT 1,
  `available_copies` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`, `description`, `total_copies`, `available_copies`, `created_at`, `updated_at`) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'A novel about the serious issues of rape and racial inequality.', 7, 0, '2025-05-14 05:05:20', '2025-05-18 18:47:56'),
(2, '1984', 'George Orwell', 'Dystopian', 'A dystopian social science fiction novel and cautionary tale.', 3, 0, '2025-05-14 05:05:20', '2025-05-14 05:05:20'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 'A story of the fabulously wealthy Jay Gatsby and his love for Daisy Buchanan.', 4, 0, '2025-05-14 05:05:20', '2025-05-14 05:05:20'),
(6, 's', 's', 's', 's', 1, 0, '2025-05-18 05:23:36', '2025-05-18 08:15:55'),
(8, 'asd', 'as', 'asd', 'd', 23, 13, '2025-05-18 08:36:51', '2025-05-19 09:11:37'),
(16, 'test123', 'test1', 'test1', 'sn', 1, 1, '2025-05-19 04:06:41', '2025-05-19 04:06:46'),
(17, 'test', 'aa', 'a', 'a', 12, 12, '2025-05-19 04:25:33', '2025-05-19 04:25:33'),
(18, 'test21', 'test', 'test', 'sa', 1, 0, '2025-05-19 04:40:59', '2025-05-19 09:11:49'),
(20, 'this is', 'A', 'Test', 'For', 12, 12, '2025-05-19 09:24:23', '2025-05-19 09:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_18_030510_create_books_table', 1),
(5, '2025_04_18_030634_create_transactions_table', 1),
(6, '2025_04_20_061558_create_personal_access_tokens_table', 1),
(7, '2025_05_18_153839_rename_borrowed_date_to_borrowed_at_in_transactions_table', 2),
(8, '2024_03_21_000000_add_profile_image_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 13, 'auth_token', '74728a0bbf30a4586f832b767acd7879e0e5878638406c57c2bfb9acd9007cae', '[\"*\"]', NULL, NULL, '2025-05-18 01:40:27', '2025-05-18 01:40:27'),
(4, 'App\\Models\\User', 16, 'auth_token', 'a81b46d853de5cf5279376f2523b62d889b576aebb0d4031c5c699716fa8b83f', '[\"*\"]', NULL, NULL, '2025-05-18 02:01:56', '2025-05-18 02:01:56'),
(15, 'App\\Models\\User', 1, 'auth_token', '7e3beffc70c0d263d112406b8476701fe22e8cda46236fa5fec5b133f4501add', '[\"*\"]', '2025-05-18 03:46:15', NULL, '2025-05-18 03:44:22', '2025-05-18 03:46:15'),
(16, 'App\\Models\\User', 17, 'auth_token', 'aa26690fc63c944ef749654a54d2c87085dc4a31980d9b7d8b68a8709106972f', '[\"*\"]', NULL, NULL, '2025-05-18 03:54:23', '2025-05-18 03:54:23'),
(44, 'App\\Models\\User', 1, 'auth_token', '0c1fc5b43d609db33eb6dad96d4f59119317edbc9ed9065e83dc4844b297ea8c', '[\"*\"]', '2025-05-18 20:05:41', NULL, '2025-05-18 18:29:37', '2025-05-18 20:05:41'),
(45, 'App\\Models\\User', 19, 'auth_token', '7dcdaca7bb4826411300efac2ce43c6b566a4b06c034fec0779dc441fe4ff628', '[\"*\"]', NULL, NULL, '2025-05-18 19:05:51', '2025-05-18 19:05:51'),
(47, 'App\\Models\\User', 1, 'auth_token', '59b8ada8d88e9cedbc5f04229e3add1ff41482e63b38042470262b930161aec2', '[\"*\"]', NULL, NULL, '2025-05-18 20:05:59', '2025-05-18 20:05:59'),
(48, 'App\\Models\\User', 1, 'auth_token', '2d92a844cc491f73232a0311f74df7dfef669ff42b20a7b3594f9c212d1fce41', '[\"*\"]', NULL, NULL, '2025-05-18 20:06:06', '2025-05-18 20:06:06'),
(49, 'App\\Models\\User', 1, 'auth_token', 'be2eac197e1fca36c7025706dc01b949affd3663ceab697848ed8d7c38ac2fd1', '[\"*\"]', '2025-05-18 21:22:22', NULL, '2025-05-18 20:06:12', '2025-05-18 21:22:22'),
(52, 'App\\Models\\User', 1, 'auth_token', '049203192e4307968c736c889fee8bfba66f5dfc725b3a55069419c03cf21a68', '[\"*\"]', '2025-05-18 21:22:50', NULL, '2025-05-18 21:22:41', '2025-05-18 21:22:50'),
(59, 'App\\Models\\User', 17, 'auth_token', '6b45989c83cd88ab9c6aa309bb1b9f538498d2a48946ab8098e4e03b0668f7be', '[\"*\"]', '2025-05-19 02:14:07', NULL, '2025-05-19 02:11:16', '2025-05-19 02:14:07'),
(60, 'App\\Models\\User', 20, 'auth_token', '1110b99acdc07d54eaff5750f8eca1fc4b0268de4813247a53e65472e2dc384e', '[\"*\"]', NULL, NULL, '2025-05-19 02:18:18', '2025-05-19 02:18:18'),
(61, 'App\\Models\\User', 20, 'auth_token', '656067dcaedada203261605dc45c7a9c51aaf1b1e3995f6a5038d1594e4e02a8', '[\"*\"]', '2025-05-19 02:37:16', NULL, '2025-05-19 02:18:21', '2025-05-19 02:37:16'),
(63, 'App\\Models\\User', 20, 'auth_token', '9f615f5085bc49918d8632aa9de839c1a4ed1b2477725445403d76a811725071', '[\"*\"]', '2025-05-19 03:01:35', NULL, '2025-05-19 02:26:53', '2025-05-19 03:01:35'),
(67, 'App\\Models\\User', 1, 'auth_token', '24ef0ac2c9be1f7e5c3ad98f893b87b830cfaa1c0d4d53633a2b25e0bef9cc60', '[\"*\"]', '2025-05-19 03:28:53', NULL, '2025-05-19 03:26:54', '2025-05-19 03:28:53'),
(81, 'App\\Models\\User', 1, 'auth_token', 'c63ed9ff1bbe691a6b69ce4dcc9bc7b585de2d67e9843fe12bf34da4a18680ff', '[\"*\"]', '2025-05-19 07:01:34', NULL, '2025-05-19 06:42:45', '2025-05-19 07:01:34'),
(83, 'App\\Models\\User', 1, 'auth_token', '64fc7032ac0501eb884bcf638b14adbc9448e32820c6f2cdfb9a654d38071481', '[\"*\"]', '2025-05-19 07:12:08', NULL, '2025-05-19 07:07:42', '2025-05-19 07:12:08'),
(84, 'App\\Models\\User', 1, 'auth_token', '54c6cc04a5b396b90f31b910663e1f84574326264712c1c1ecc8e2723ae0621c', '[\"*\"]', '2025-05-19 07:21:26', NULL, '2025-05-19 07:17:06', '2025-05-19 07:21:26'),
(86, 'App\\Models\\User', 1, 'auth_token', '7c45b2e7619a163673e75cb9d0aebc0c1e3dffd1d05ada74cd9c6711bea14b90', '[\"*\"]', '2025-05-19 07:44:57', NULL, '2025-05-19 07:28:05', '2025-05-19 07:44:57'),
(98, 'App\\Models\\User', 1, 'auth_token', 'e503f44f6e785eebcda1a2cb33c89be71e7bedf0fcae565ea619abf422f103aa', '[\"*\"]', '2025-05-19 09:29:50', NULL, '2025-05-19 09:27:43', '2025-05-19 09:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0M112leALMLqhU8FxBc7RI5hP8Za2umdI2MxLXvU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0VObVlMQng1cnJXeGdVUTVRNUVETnpWUHdvSWMyOHowR3FZWnpkUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747636390),
('FXTUIPFwNnCyKFIDNPSa5qxtg6JMsebhLuZLoNJK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlV5WFZYSGEySkhKTWF5TzdKbHdMcWtqNkdFYUdQSXRCVFJsVVV6ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747561018),
('K1iz5UWw2UaYIru2xp6zhGBnz9L20IDBNWIFNkk8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0k3TXpxVEFXekJXanVyWWlyYWxiMEN0dndWMFBmUlA3TDBXb0pzRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747620323),
('ohjsj24eeQO7ptvuoEVeNepRBwt1pv8wB1vpdTtR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWdaelFrWW1GM3ZVUnBoTlo3QXNjQ2xyc1J3S2lncWhEVUZTeVlaRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747628636),
('V6EWOqw8PAOUVrTiGJZ0ix9eU82I15J4RBGUxFQR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXFkRFp4a3NDdE43Z0MzVGVaeEdRZjNEYUpINkdDOWtQR3ZLcXhvaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747653505);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrowed_at` date NOT NULL,
  `returned_at` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `status` enum('borrowed','returned','overdue') NOT NULL DEFAULT 'borrowed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `book_id`, `borrowed_at`, `returned_at`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(20, 17, 1, '2025-05-18', NULL, '2025-06-01', 'borrowed', '2025-05-18 07:17:05', '2025-05-18 07:17:05'),
(21, 17, 1, '2025-05-18', NULL, '2025-06-01', 'borrowed', '2025-05-18 07:28:10', '2025-05-18 07:28:10'),
(22, 17, 1, '2025-05-18', NULL, '2025-06-01', 'borrowed', '2025-05-18 07:28:22', '2025-05-18 07:28:22'),
(23, 17, 1, '2025-05-18', NULL, '2025-06-01', 'borrowed', '2025-05-18 07:47:51', '2025-05-18 07:47:51'),
(24, 17, 1, '2025-05-18', NULL, '2025-06-01', 'borrowed', '2025-05-18 08:05:58', '2025-05-18 08:05:58'),
(25, 17, 6, '2025-05-18', NULL, '2025-06-01', 'borrowed', '2025-05-18 08:15:55', '2025-05-18 08:15:55'),
(26, 17, 8, '2025-05-18', NULL, '2025-06-01', 'borrowed', '2025-05-18 08:52:07', '2025-05-18 08:52:07'),
(27, 17, 1, '2025-05-18', NULL, '2025-06-01', 'borrowed', '2025-05-18 11:45:15', '2025-05-18 11:45:15'),
(28, 16, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-18 18:06:43', '2025-05-18 18:06:43'),
(29, 16, 1, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-18 18:47:56', '2025-05-18 18:47:56'),
(30, 19, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-18 19:06:04', '2025-05-18 19:06:04'),
(31, 19, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-18 20:10:24', '2025-05-18 20:10:24'),
(32, 19, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-18 20:33:30', '2025-05-18 20:33:30'),
(33, 19, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-18 20:44:22', '2025-05-18 20:44:22'),
(34, 16, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-18 22:41:41', '2025-05-18 22:41:41'),
(35, 16, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-18 23:11:58', '2025-05-18 23:11:58'),
(36, 20, 8, '2025-05-19', '2025-05-19', '2025-06-02', 'returned', '2025-05-19 02:25:09', '2025-05-19 03:47:44'),
(37, 20, 8, '2025-05-19', '2025-05-19', '2025-06-02', 'returned', '2025-05-19 02:37:33', '2025-05-19 03:47:50'),
(39, 20, 8, '2025-05-19', '2025-05-19', '2025-06-02', 'returned', '2025-05-19 03:40:36', '2025-05-19 03:47:58'),
(41, 20, 8, '2025-05-19', '2025-05-19', '2025-06-02', 'returned', '2025-05-19 04:14:14', '2025-05-19 04:14:29'),
(42, 20, 8, '2025-05-19', '2025-05-19', '2025-06-02', 'returned', '2025-05-19 08:52:03', '2025-05-19 08:52:16'),
(43, 20, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-19 09:04:54', '2025-05-19 09:04:54'),
(44, 20, 8, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-19 09:08:21', '2025-05-19 09:08:21'),
(45, 20, 8, '2025-05-19', '2025-05-19', '2025-06-02', 'returned', '2025-05-19 09:11:30', '2025-05-19 09:11:37'),
(46, 20, 18, '2025-05-19', NULL, '2025-06-02', 'borrowed', '2025-05-19 09:11:49', '2025-05-19 09:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `profile_image`) VALUES
(1, 'Admin', 'admin@library.com', '2025-05-14 05:05:16', '$2y$12$uakZxeffX3seo5uRY5O4yeOu22xaK496H56Ly0PgZLOvDDRAMQmTu', 'apsHUOcJ39', '2025-05-14 05:05:16', '2025-05-19 08:37:43', 'admin', 'profile-images/TwzKD6du3KhPR3YvCkbfxpmRZ17Fpp4V5u4eN8JC.png'),
(13, 'dan', 'dada@gmail.com', NULL, '$2y$12$hTbdpgSCIloCiHr40MD6su00yrTCKhumpuANHnKqZn7UMLSdZVR2S', NULL, '2025-05-18 01:40:27', '2025-05-18 01:40:27', 'user', NULL),
(15, 'New Admin', 'newadmin@library.com', '2025-05-18 09:50:12', '$2y$12$eImiTXuWVxfM37uY4JANj.Q.DuRcj6.C69pS4Wr9ZdZsM/WV8ZSiC', 'XyzToken123', '2025-05-18 09:50:12', '2025-05-18 09:50:12', 'admin', NULL),
(16, 'daniel', 'dadaa@gmail.com', NULL, '$2y$12$1sSqpjUqqxBJz7/jjNpzAOshnN4FXDl92isjGNEu4a2SWzNi5nTx2', NULL, '2025-05-18 02:01:56', '2025-05-18 02:01:56', 'user', NULL),
(17, 'da', 'dadaaa@gmail.com', NULL, '$2y$12$E28f9Mc/OiyJclLG/DmxUOJ/hh8kt87zpU/yI1gbNqYuPYEllqlIa', NULL, '2025-05-18 03:54:23', '2025-05-18 03:54:23', 'user', NULL),
(18, 'New Admin', 'admin2@gmail.com', '2025-05-18 11:57:56', '$2y$12$eImiTXuWVxfM37uY4JANj.Q.DuRcj6.C69pS4Wr9ZdZsM/WV8ZSiC', 'Tkn456xyz', '2025-05-18 11:57:56', '2025-05-18 11:57:56', 'admin', NULL),
(19, 'Danyel', 'dan@gmail.com', NULL, '$2y$12$3Gg8g40b7BBvC0TOGN2iQ.NqO.UQy8J/HeEdz9h34.vJTi4oKJAE2', NULL, '2025-05-18 19:05:51', '2025-05-18 19:05:51', 'user', NULL),
(20, 'Daniel Diaz', 'pedro@gmail.com', NULL, '$2y$12$TyiRuaxYDPUd227Jd.8nqeyCsEM2mkU6qBHy5A3IyIVAxXorr1oCu', NULL, '2025-05-19 02:18:18', '2025-05-19 02:18:18', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_book_id_foreign` (`book_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
