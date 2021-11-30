-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 01:32 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empowered`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_types_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `app_types_id`, `name`, `description`, `created_at`, `updated_at`, `project_id`) VALUES
(2, 1, 'Mobile apps', 'This is awesome apps', '2021-11-08 01:45:34', '2021-11-08 01:45:34', 0),
(3, 1, 'Web App', 'this is web app', '2021-11-09 06:26:32', '2021-11-09 06:26:32', 48),
(8, 1, 'Medi Plus', 'medi plus descriptions', '2021-11-16 01:10:34', '2021-11-16 01:20:04', 49),
(10, 1, 'llkll', 'lklkjljk', '2021-11-17 01:31:50', '2021-11-17 01:31:50', 48);

-- --------------------------------------------------------

--
-- Table structure for table `app_modules`
--

CREATE TABLE `app_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_modules`
--

INSERT INTO `app_modules` (`id`, `app_id`, `module_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 8, 5, 'responsive', 'responsive description 2', '2021-11-16 03:44:06', '2021-11-16 03:44:17'),
(2, 3, 4, 'Footer', 'footer description', '2021-11-16 10:06:48', '2021-11-16 10:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `app_screens`
--

CREATE TABLE `app_screens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` int(10) UNSIGNED NOT NULL,
  `screen_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_screens`
--

INSERT INTO `app_screens` (`id`, `app_id`, `screen_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(20, 2, 7, 'Desktop', 'desktop description', '2021-11-16 11:38:15', '2021-11-16 11:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `app_types`
--

CREATE TABLE `app_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_types`
--

INSERT INTO `app_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Hisab Rakho', 'This is hisab rakho', '2021-11-08 00:45:51', '2021-11-08 00:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `ind_id` int(10) UNSIGNED DEFAULT NULL,
  `ind_org_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `ind_id`, `ind_org_id`, `name`, `created_at`, `updated_at`) VALUES
(8, 7, 5, 'Napa Extra', '2021-11-03 05:50:44', '2021-11-03 05:51:00'),
(9, 8, 5, 'Speed', '2021-11-07 05:18:36', '2021-11-07 05:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `category_related_services`
--

CREATE TABLE `category_related_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `portfolio_category_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_related_services`
--

INSERT INTO `category_related_services` (`id`, `portfolio_category_id`, `name`, `icon`, `position`, `level`, `created_at`, `updated_at`) VALUES
(7, 53, 'asa', 'backend/cat_releted_service/3563D_Christmas_Smile_1280 x 1024.jpg', '2', '3', '2021-10-20 09:17:24', '2021-10-20 09:17:24'),
(8, 53, 'asa', 'backend/cat_releted_service/4973D_Christmas_Smile_1280 x 1024.jpg', '2', '3', '2021-10-20 09:17:28', '2021-10-20 09:17:28'),
(9, 53, 'asa', 'backend/cat_releted_service/5603D_Christmas_Smile_1280 x 1024.jpg', '2', '3', '2021-10-20 09:17:29', '2021-10-20 09:17:29'),
(10, 53, 'asa', 'backend/cat_releted_service/7173D_Christmas_Smile_1280 x 1024.jpg', '2', '3', '2021-10-20 09:17:29', '2021-10-20 09:17:29'),
(11, 53, 'asa', 'backend/cat_releted_service/8843D_Christmas_Smile_1280 x 1024.jpg', '2', '3', '2021-10-20 09:17:30', '2021-10-20 09:17:30'),
(12, 53, 'asa', 'backend/cat_releted_service/7763D_Christmas_Smile_1280 x 1024.jpg', '2', '3', '2021-10-20 09:17:48', '2021-10-20 09:17:48'),
(13, 53, 'asa', 'backend/cat_releted_service/8313D_Christmas_Smile_1280 x 1024.jpg', '2', '3', '2021-10-20 09:18:11', '2021-10-20 09:18:11'),
(14, 53, 'aaaa', 'backend/cat_releted_service/1022Advanced Works.jpg', '52', '2', '2021-10-20 09:19:36', '2021-10-20 09:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `image`, `precedence`, `url`, `position`, `created_at`, `updated_at`) VALUES
(9, 'Dhaka', 'backend/clients/6721_DM Intercepting.jpg', '2', 'adaad', '2', '2021-10-20 08:29:03', '2021-11-03 23:46:19'),
(10, 'Khulna', 'backend/clients/22.jpg', '3', 'khulna.com', '2', '2021-10-24 23:38:33', '2021-10-24 23:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `counts`
--

CREATE TABLE `counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counts`
--

INSERT INTO `counts` (`id`, `parameter`, `value`, `position`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 'aaaa', 1, '2021-10-19 23:57:48', '2021-10-19 23:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teams_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `teams_id`, `name`, `description`, `created_at`, `updated_at`, `salary`) VALUES
(2, 1, 'Jr. Backend Developer', 'He is backend junior developer', '2021-11-08 04:26:19', '2021-11-08 04:26:19', 0),
(3, 2, 'Jr. Frontend Developer', 'This is for frontend developer', '2021-11-15 19:43:55', '2021-11-15 19:52:10', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(3, 'Hello', 'who is this', '2021-10-24 23:48:29', '2021-10-24 23:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `frequencies`
--

CREATE TABLE `frequencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frequencies`
--

INSERT INTO `frequencies` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'month', 'Monthly frequencies up', '2021-09-22 05:19:15', '2021-09-27 05:21:37'),
(3, 'year', 'Yearly frequency', '2021-09-22 05:21:04', '2021-09-27 05:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `brand_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(6, 8, 'Paracetamol', 'genre', '2021-11-04 03:49:36', '2021-11-04 03:49:36'),
(7, 9, 'Energy Drinks', 'This is most Popular Energy Drinks in Bangladesh', '2021-11-12 08:07:45', '2021-11-12 08:07:45'),
(8, 9, 'Tobaco', 'This is tobaco section', '2021-11-12 08:27:00', '2021-11-12 08:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `get_quotes`
--

CREATE TABLE `get_quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `get_quotes`
--

INSERT INTO `get_quotes` (`id`, `service_name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'online delivery', 'admin@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(10) UNSIGNED NOT NULL,
  `ind_cat_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productorservice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `ind_cat_id`, `name`, `description`, `productorservice`, `created_at`, `updated_at`) VALUES
(7, 4, 'Beximco', 'beximco is the bighest industry in bangladesh', 'Product', '2021-11-03 05:37:07', '2021-11-03 05:37:07'),
(8, 4, 'Akij', 'Akij description', 'Product', '2021-11-03 05:41:37', '2021-11-03 05:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `industry_categories`
--

CREATE TABLE `industry_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industry_categories`
--

INSERT INTO `industry_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Production', 'This is Production Category', '2021-11-03 05:36:00', '2021-11-03 05:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `industry_organizations`
--

CREATE TABLE `industry_organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industry_organizations`
--

INSERT INTO `industry_organizations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'NGO', '2021-11-03 05:49:23', '2021-11-03 05:50:16'),
(6, 'Government', '2021-11-03 05:49:55', '2021-11-03 05:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `mobile`, `email`, `address`, `logo`, `facebook_url`, `instagram_url`, `linkedin_url`, `youtube_url`, `created_at`, `updated_at`) VALUES
(3, '013585425', 'abc@gmail.com.bd', 'brahmanbaria', 'backend/infos/4351_DM Intercepting.jpg', 'fb', 'joih', 'odjoi', 'iojoa', '2021-10-20 01:49:22', '2021-10-20 08:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_category_id`, `name`, `description`, `unit_price`) VALUES
(8, 4, 'logo again', 'this is a logo', 5000),
(9, 4, 'Web Applications', 'A big project', 15000),
(11, 3, 'UI', 'Ui Design', 12850);

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Design again', 'This is Design2 again', '2021-11-02 05:15:44', '2021-11-09 23:53:35'),
(4, 'Tech', 'Hello Tech', '2021-11-02 06:23:37', '2021-11-02 06:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `item_genres`
--

CREATE TABLE `item_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_genres`
--

INSERT INTO `item_genres` (`id`, `genre_id`, `item_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(6, 6, 8, 15000, 50, NULL, NULL),
(7, 7, 8, 2500, 250, NULL, NULL),
(8, 8, 11, 20000, 5000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_plans`
--

CREATE TABLE `master_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_module_id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `hourly_rate` double NOT NULL,
  `hours` double NOT NULL,
  `costs` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_plans`
--

INSERT INTO `master_plans` (`id`, `app_module_id`, `designation_id`, `task_id`, `project_id`, `hourly_rate`, `hours`, `costs`, `description`, `created_at`, `updated_at`) VALUES
(13, 1, 2, 1, 49, 2000, 10, 20000, 'fgh', '2021-11-17 12:00:16', '2021-11-18 00:22:39'),
(18, 1, 3, 2, 49, 80, 10, 800, 'description', '2021-11-18 00:18:37', '2021-11-18 00:53:08'),
(19, 1, 2, 1, 49, 70, 10, 700, 'description', '2021-11-18 00:19:49', '2021-11-18 00:50:20');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_21_104343_create_web_site_contents_table', 2),
(6, '2021_09_22_064307_create_subscription_categories_table', 3),
(7, '2021_09_22_105227_create_frequencies_table', 4),
(8, '2021_09_22_113133_create_service_wings_table', 5),
(10, '2021_09_26_182810_create_organizations_table', 6),
(11, '2021_09_26_183225_create_subscriptions_table', 6),
(12, '2021_10_18_114118_create_portfolio_categories_table', 7),
(15, '2021_10_19_094007_create_infos_table', 9),
(16, '2021_10_19_094835_create_faqs_table', 10),
(17, '2021_10_19_105326_create_terms_policies_table', 11),
(18, '2021_10_19_122141_create_tags_table', 12),
(19, '2021_10_19_165637_create_clients_table', 13),
(20, '2021_10_20_045903_create_counts_table', 14),
(21, '2021_10_20_080113_create_category_related_services_table', 15),
(22, '2021_10_20_104316_create_services_table', 16),
(23, '2021_10_20_104531_create_get_quotes_table', 16),
(24, '2021_10_20_120814_create_portfolio_items_table', 17),
(25, '2021_10_22_160941_create_p_d_f_downloaders_table', 18),
(26, '2021_10_22_170658_create_requesters_table', 18),
(27, '2021_10_22_174046_create_requester_questions_table', 18),
(28, '2021_10_23_050005_create_questions_table', 19),
(29, '2021_10_24_060536_create_portfolio_tags_table', 20),
(30, '2021_10_24_061501_create_portfolio_positions_table', 21),
(31, '2021_10_26_050619_create_industry_categories_table', 22),
(32, '2021_10_26_054140_create_industry_organizations_table', 23),
(33, '2021_10_26_060338_create_industries_table', 24),
(34, '2021_10_26_090539_create_brands_table', 25),
(35, '2021_10_26_100212_create_status_categories_table', 26),
(41, '2021_10_26_102145_create_statuses_table', 27),
(42, '2021_10_27_052217_create_projects_table', 27),
(43, '2021_10_27_052555_create_project_statuses_table', 27),
(44, '2021_10_28_110518_add_paid_to_projects_table', 28),
(45, '2021_11_02_105051_create_item_categories_table', 29),
(46, '2021_11_02_112439_create_items_table', 30),
(47, '2021_11_03_050516_create_genres_table', 31),
(48, '2021_11_03_050642_create_item_genres_table', 31),
(49, '2021_11_07_102927_create_retainers_table', 32),
(50, '2021_11_08_054231_create_app_types_table', 33),
(51, '2021_11_08_065034_create_apps_table', 34),
(52, '2021_11_08_065316_create_module_types_table', 35),
(53, '2021_11_08_072144_create_sapiens_table', 35),
(54, '2021_11_08_085307_create_modules_table', 35),
(55, '2021_11_08_084924_create_tasks_table', 36),
(56, '2021_11_08_091136_create_teams_table', 36),
(58, '2021_11_08_095144_create_designations_table', 37),
(65, '2021_11_16_013516_add_salry_to_designations_table', 42),
(66, '2021_11_16_020216_rename_table', 43),
(67, '2021_11_16_054131_add_module_type_to_module_categories_table', 44),
(68, '2021_11_16_065023_add_project_id_to_apps_table', 45),
(69, '2021_11_16_073836_create_app_screens_table', 46),
(70, '2021_11_16_091607_create_app_modules_table', 47),
(71, '2021_11_09_062219_create_screens_table', 48),
(72, '2021_11_09_062344_create_screen_modules_table', 48),
(74, '2021_11_17_045144_create_master_plans_table', 49),
(75, '2021_11_17_093128_create_project_costs_table', 49),
(76, '2021_11_08_114209_create_sapiens_stories_table', 50),
(77, '2021_11_08_114716_create_sapiens_story_modules_table', 50),
(78, '2021_11_21_094449_add_fav_icon_to_web_site_contents_table', 51);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_types_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_types_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Us', 'This is a part of section', '2021-11-08 03:15:09', '2021-11-08 03:18:13'),
(3, 2, 'Add', 'add', '2021-11-09 06:27:27', '2021-11-09 06:27:27'),
(4, 2, 'footer', 'footer', '2021-11-09 06:27:43', '2021-11-09 06:27:43'),
(5, 7, 'Tech analysis', 'tech analysis description', '2021-11-16 03:40:26', '2021-11-16 03:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `module_categories`
--

CREATE TABLE `module_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_categories`
--

INSERT INTO `module_categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `module_type`) VALUES
(7, 'vvvv', 'vvvvvv', '2021-11-16 00:43:56', '2021-11-16 00:43:56', 'Section Module');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `description`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'test', 'tests fhdjkfhk jfasdhfjkhaskj d', 'organization/1711994514320973.svg', '2021-09-26 13:18:17', '2021-09-26 13:39:58');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `portfolio_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`portfolio_category_id`, `name`, `description`, `logo`, `created_at`, `updated_at`) VALUES
(53, 'aaa1', 'aaa1', 'backend/portfolio_Cat/290___remaining_desperation.jpg', '2021-10-19 03:22:11', '2021-10-19 03:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `portfolio_category_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `title`, `image`, `url`, `level`, `position`, `portfolio_category_id`, `client_id`, `created_at`, `updated_at`) VALUES
(14, 'test', 'backend/portfolio_item/59116.jpg', 'test.com', 2, 3, 53, 9, '2021-10-24 23:49:38', '2021-10-24 23:49:38'),
(16, 'wew1', 'backend/portfolio_item/34673.jpg', 'wew1', 3, 5, 53, 9, '2021-10-25 01:25:26', '2021-10-25 01:32:41'),
(17, 'aaaa', 'backend/portfolio_item/28702.jpg', 'aaaa', 2, 2, 53, 9, '2021-10-25 01:34:33', '2021-10-25 01:35:21'),
(18, 'aaaas', 'backend/portfolio_item/9904.jpg', 'aaaas', 1, 3, 53, 9, '2021-10-25 01:41:04', '2021-10-25 01:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_positions`
--

CREATE TABLE `portfolio_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `portfolio_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `portfolio_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_positions`
--

INSERT INTO `portfolio_positions` (`id`, `portfolio_category_id`, `portfolio_item_id`, `position`, `created_at`, `updated_at`) VALUES
(9, 53, 14, 3, '2021-10-24 23:49:38', '2021-10-24 23:49:38'),
(11, 53, 16, 5, '2021-10-25 01:25:26', '2021-10-25 01:32:41'),
(12, 53, 17, 2, '2021-10-25 01:34:33', '2021-10-25 01:35:22'),
(13, 53, 18, 3, '2021-10-25 01:41:04', '2021-10-25 01:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_tags`
--

CREATE TABLE `portfolio_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `portfolio_item_id` int(10) UNSIGNED DEFAULT NULL,
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_tags`
--

INSERT INTO `portfolio_tags` (`id`, `portfolio_item_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(24, 13, 4, NULL, NULL),
(26, 14, 4, NULL, NULL),
(27, 15, 4, NULL, NULL),
(31, 16, 6, NULL, NULL),
(36, 17, 6, NULL, NULL),
(41, 18, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `brand_id`, `name`, `created_at`, `updated_at`, `amount`, `is_completed`) VALUES
(48, 8, 'Peracitamol', '2021-11-07 01:49:18', '2021-11-07 01:50:51', 5000, 1),
(49, 9, 'Soft Drinks', '2021-11-14 23:48:27', '2021-11-14 23:52:49', 5000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_costs`
--

CREATE TABLE `project_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `total_hours` double NOT NULL,
  `total_costs` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_costs`
--

INSERT INTO `project_costs` (`id`, `project_id`, `total_hours`, `total_costs`, `created_at`, `updated_at`) VALUES
(9, 48, 10, 800, '2021-11-18 00:18:37', '2021-11-18 00:52:25'),
(10, 49, 30, 21500, '2021-11-18 00:22:39', '2021-11-18 00:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `project_statuses`
--

CREATE TABLE `project_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `responsible` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_statuses`
--

INSERT INTO `project_statuses` (`id`, `project_id`, `status_id`, `start_date`, `end_date`, `responsible`, `created_at`, `updated_at`) VALUES
(146, 48, 4, '2021-10-31 18:00:00', '2021-11-01 18:00:00', 'amran', NULL, '2021-11-07 01:49:39'),
(147, 48, 4, '2021-11-02 18:00:00', '2021-11-03 18:00:00', 'saad', NULL, '2021-11-07 01:49:57'),
(148, 48, 4, '2021-11-04 18:00:00', '2021-11-05 18:00:00', 'waliur', NULL, '2021-11-07 01:50:32'),
(149, 48, 4, '2021-11-06 18:00:00', '2021-11-07 18:00:00', 'seyam', NULL, '2021-11-07 01:50:51'),
(150, 49, 4, '2021-10-31 18:00:00', '2021-11-01 18:00:00', 'amran', NULL, '2021-11-14 23:48:59'),
(151, 49, 4, '2021-11-02 18:00:00', '2021-11-03 18:00:00', 'Sabit', NULL, '2021-11-14 23:49:36'),
(152, 49, 4, '2021-11-04 18:00:00', '2021-11-05 18:00:00', 'Sheeyam', NULL, '2021-11-14 23:50:50'),
(153, 49, 4, '2021-11-06 18:00:00', '2021-11-09 18:00:00', 'Waliur', NULL, '2021-11-14 23:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `p_d_f_downloaders`
--

CREATE TABLE `p_d_f_downloaders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `created_at`, `updated_at`) VALUES
(1, 'Hi! We are Antopolis. What should we call you?', NULL, NULL),
(2, 'Awesome! What\'s your email?', NULL, NULL),
(3, 'Can we have your phone no. so that we can smoothly set up the online consultancy session?', NULL, NULL),
(4, 'Okay great! Have sort of marketing have you tried?', NULL, NULL),
(5, 'We\'re guessing none of them have given you the business results you want. What\'s the biggest pain point holding you back from hitting your goal?', NULL, NULL),
(6, 'What do you want to achieve through this session to fix your pain points?', NULL, NULL),
(7, 'What is your revenue range (BDT)?', NULL, NULL),
(8, 'Please tell us your company name. if you have website for your business, please insert the URL here\r\nalong with your company name.\r\n', NULL, NULL),
(9, 'What products or services do you sell?', NULL, NULL),
(10, 'On a scale of 1-10 how interested are you to play the e-commerce game & explode your profits?', NULL, NULL),
(11, 'হ্যালো! আমরা অ্যান্টোপলিস। আপনার নাম?', NULL, NULL),
(12, 'ধন্যবাদ। আপনার ইমেইল?', NULL, NULL),
(13, 'অনুগ্রহ করে আপনার ফোন নাম্বারটি দিন, যাতে করে দ্রুততম সময়ে আপনার কন্সালটেন্সি সেশন টি সেট আপ করতে পারি', NULL, NULL),
(14, 'দারুণ। আপনি কি ধরনের মার্কেটিং ট্রাই করেছেন?', NULL, NULL),
(15, 'আমরা অনুমান করছি উপরের কোনোটিই আপনাকে আশানুরূপ ফল এনে দেয়নি। আপনার নিজ লক্ষ্যে পৌঁছাতে কোনটি সবচেয়ে বড় চ্যালেঞ্জ হয়ে দাঁড়িয়েছে?', NULL, NULL),
(16, 'আপনার চ্যালেঞ্জগুলো কাটিয়ে উঠতে এই সেশন এর মাধ্যমে আপনি কি আশা করছেন?', NULL, NULL),
(17, 'আপনার রেভেনিউ এর রেঞ্জ কত?', NULL, NULL),
(18, 'অনুগ্রহ করে আপনার কোম্পানির নামটি বলুন। আপনার বিজনেসের ওয়েবসাইট থাকলে URL টি এখানে ইনসার্ট করুন', NULL, NULL),
(19, 'আপনি কি প্রোডাক্ট বা সার্ভিস সেল করেন?', NULL, NULL),
(20, '১-১০ এর স্কেলে আপনি ই-কমার্স এ এসে আপনার মুনাফাকে অন্য মাত্রায় নিয়ে যেতে কতোটা আগ্রহী?', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requesters`
--

CREATE TABLE `requesters` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requesters`
--

INSERT INTO `requesters` (`id`, `name`, `email`, `url`, `created_at`, `updated_at`, `lang_type`, `phone`) VALUES
(2, 'Abir', 'pranto@gmail.com', 'fdfsafd', '2021-06-29 15:11:50', '2021-06-29 15:11:50', 'bn', '01785458458'),
(3, 'Sheikh Waliur Rahman', 'abwaliur@gmail.com', 'service', '2021-06-30 03:27:34', '2021-06-30 03:27:34', 'en', '01729901263'),
(4, 'waliur', 'abwaliur@gmail.com', 'test.com', '2021-06-30 03:29:14', '2021-06-30 03:29:14', 'bn', '01729901263'),
(5, 'polash', 'ace746@tapi.re', 'micropro.me', '2021-07-01 04:54:19', '2021-07-01 04:54:19', 'bn', '01858731100'),
(6, 'Multi Trade International', 'multitrade_int_bd@yahoo.com', 'Multi Trade International', '2021-07-01 04:59:42', '2021-07-01 04:59:42', 'bn', '01712638722'),
(7, 'Multi Trade International', 'multitrade_int_bd@yahoo.com', 'Multi Trade International', '2021-07-01 04:59:43', '2021-07-01 04:59:43', 'bn', '01712638722'),
(8, 'Multi Trade International', 'multitrade_int_bd@yahoo.com', 'Multi Trade International', '2021-07-01 04:59:45', '2021-07-01 04:59:45', 'bn', '01712638722'),
(9, 'Syed sajol', 'salma1990r@gmail.com', 'Bd leather', '2021-07-01 05:06:36', '2021-07-01 05:06:36', 'bn', '01781100382'),
(10, 'Syed sajol', 'salma1990r@gmail.com', 'Bd leather', '2021-07-01 05:06:40', '2021-07-01 05:06:40', 'bn', '01781100382'),
(11, 'abir', 'abir000029@gmail.com', 'fasefaa', '2021-07-01 21:49:49', '2021-07-01 21:49:49', 'bn', 'dfhdra'),
(12, 'AI Siam', 'acm473792@gmail.com', 'mbs.com', '2021-07-02 14:11:59', '2021-07-02 14:11:59', 'bn', '01305038315'),
(13, 'Arefin', 'saymajannat1994@gmail.com', 'Raiyanshop bd', '2021-07-02 14:55:59', '2021-07-02 14:55:59', 'bn', '01961708725'),
(14, 'Arefin', 'saymajannat1994@gmail.com', 'Raiyanshop bd', '2021-07-02 14:56:00', '2021-07-02 14:56:00', 'bn', '01961708725'),
(15, 'Arefin', 'saymajannat1994@gmail.com', 'Raiyanshop bd', '2021-07-02 14:56:02', '2021-07-02 14:56:02', 'bn', '01961708725'),
(16, 'Arefin', 'saymajannat1994@gmail.com', 'Raiyanshop bd', '2021-07-02 14:56:03', '2021-07-02 14:56:03', 'bn', '01961708725'),
(17, 'Arefin', 'saymajannat1994@gmail.com', 'Raiyanshop bd', '2021-07-02 14:56:04', '2021-07-02 14:56:04', 'bn', '01961708725'),
(18, 'Arefin', 'saymajannat1994@gmail.com', 'Raiyanshop bd', '2021-07-02 14:56:04', '2021-07-02 14:56:04', 'bn', '01961708725'),
(19, 'Arefin', 'saymajannat1994@gmail.com', 'Raiyanshop bd', '2021-07-02 14:56:04', '2021-07-02 14:56:04', 'bn', '01961708725'),
(20, 'Rubel', 'rubelmia75@gmail.com', 'Babymartbd.com', '2021-07-02 15:08:40', '2021-07-02 15:08:40', 'bn', '01917462410'),
(21, 'Tanjima akter itu', 'shahadat.gr@gamil.com', 'Manha', '2021-07-02 16:10:43', '2021-07-02 16:10:43', 'bn', '01537109271'),
(22, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:13:07', '2021-07-02 16:13:07', 'bn', '01818353903'),
(23, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:13:09', '2021-07-02 16:13:09', 'bn', '01818353903'),
(24, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:13:11', '2021-07-02 16:13:11', 'bn', '01818353903'),
(25, 'Ab kuddus', 'abkuddus077@gmail.com', 'Megaman', '2021-07-02 16:22:10', '2021-07-02 16:22:10', 'bn', '01756924159'),
(26, 'Ab kuddus', 'abkuddus077@gmail.com', 'Megaman', '2021-07-02 16:22:12', '2021-07-02 16:22:12', 'bn', '01756924159'),
(27, 'Gopal Chandra Mohanta', 'parthogopalmohanta@gmail.com', 'মহন্ত নার্সারী', '2021-07-02 16:24:24', '2021-07-02 16:24:24', 'bn', '01516701717'),
(28, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:40:43', '2021-07-02 16:40:43', 'bn', '01818353903'),
(29, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:42:28', '2021-07-02 16:42:28', 'bn', '01818353903'),
(30, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:42:29', '2021-07-02 16:42:29', 'bn', '01818353903'),
(31, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:42:31', '2021-07-02 16:42:31', 'bn', '01818353903'),
(32, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:42:32', '2021-07-02 16:42:32', 'bn', '01818353903'),
(33, 'Rayhan', 'rayhan181@yahoo.com', 'aonetechnology', '2021-07-02 16:47:33', '2021-07-02 16:47:33', 'bn', '01818353903'),
(34, 'zalal uddin', 'md.zalaluddin882@gmail.com', 'fabric', '2021-07-02 17:02:58', '2021-07-02 17:02:58', 'en', '01770599483'),
(35, 'zalal uddin', 'md.zalaluddin882@gmail.com', 'fabric', '2021-07-02 17:02:58', '2021-07-02 17:02:58', 'en', '01770599483'),
(36, 'zalal uddin', 'md.zalaluddin882@gmail.com', 'fabric', '2021-07-02 17:02:59', '2021-07-02 17:02:59', 'en', '01770599483'),
(37, 'K.M. Mamunur Rashid', 'kmmamunur5@gmail.com', 'Muhurtei', '2021-07-02 17:07:32', '2021-07-02 17:07:32', 'bn', '01711427481'),
(38, 'Arefin', 'arefin@sic.com.bd', 'SIC Corporation', '2021-07-02 17:18:25', '2021-07-02 17:18:25', 'bn', '01988890099'),
(39, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:08', '2021-07-02 18:46:08', 'bn', '01842446756'),
(40, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:10', '2021-07-02 18:46:10', 'bn', '01842446756'),
(41, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:11', '2021-07-02 18:46:11', 'bn', '01842446756'),
(42, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:11', '2021-07-02 18:46:11', 'bn', '01842446756'),
(43, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:12', '2021-07-02 18:46:12', 'bn', '01842446756'),
(44, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:13', '2021-07-02 18:46:13', 'bn', '01842446756'),
(45, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:13', '2021-07-02 18:46:13', 'bn', '01842446756'),
(46, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:13', '2021-07-02 18:46:13', 'bn', '01842446756'),
(47, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:14', '2021-07-02 18:46:14', 'bn', '01842446756'),
(48, 'Saikot', 'mobilebd852@gmail.com', 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:14', '2021-07-02 18:46:14', 'bn', '01842446756'),
(49, 'Likhon', 'jplikhonahaned.mail@gmail.com', 'Jp.com', '2021-07-02 19:00:59', '2021-07-02 19:00:59', 'bn', '01952820552'),
(50, 'Murad', 'muradicab@gmail.com', 'Sultanymart.com', '2021-07-02 19:40:37', '2021-07-02 19:40:37', 'bn', '01920756500'),
(51, 'Nafis', 'nafis.chow71@gmail.com', 'FnF Pharmaceuticals. Com', '2021-07-02 20:04:54', '2021-07-02 20:04:54', 'bn', '01626558513'),
(52, 'Nafis', 'nafis.chow71@gmail.com', 'FnF Pharmaceuticals. Com', '2021-07-02 20:04:55', '2021-07-02 20:04:55', 'bn', '01626558513'),
(53, 'Nafis', 'nafis.chow71@gmail.com', 'FnF Pharmaceuticals. Com', '2021-07-02 20:04:57', '2021-07-02 20:04:57', 'bn', '01626558513'),
(54, 'Nafis', 'nafis.chow71@gmail.com', 'FnF Pharmaceuticals. Com', '2021-07-02 20:04:58', '2021-07-02 20:04:58', 'bn', '01626558513'),
(55, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:16', '2021-07-02 20:16:16', 'bn', '01609063004'),
(56, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:16', '2021-07-02 20:16:16', 'bn', '01609063004'),
(57, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:16', '2021-07-02 20:16:16', 'bn', '01609063004'),
(58, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:17', '2021-07-02 20:16:17', 'bn', '01609063004'),
(59, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:17', '2021-07-02 20:16:17', 'bn', '01609063004'),
(60, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:17', '2021-07-02 20:16:17', 'bn', '01609063004'),
(61, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:20', '2021-07-02 20:16:20', 'bn', '01609063004'),
(62, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:21', '2021-07-02 20:16:21', 'bn', '01609063004'),
(63, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:22', '2021-07-02 20:16:22', 'bn', '01609063004'),
(64, 'মো:আব্দুর রাজ্জাক', 'abdurrazzaque2222@gmail.com', 'Moon & Moon kids', '2021-07-02 20:16:23', '2021-07-02 20:16:23', 'bn', '01609063004'),
(65, 'আব্দুল্লাহ আল মামুন', 'mamunmn@gmail.com', 'spicyhealthcaretea', '2021-07-02 20:46:28', '2021-07-02 20:46:28', 'bn', '০১৭১১১৮৬৭৮৭'),
(66, 'আব্দুল্লাহ আল মামুন', 'mamunmn@gmail.com', 'spicyhealthcaretea', '2021-07-02 20:46:30', '2021-07-02 20:46:30', 'bn', '০১৭১১১৮৬৭৮৭'),
(67, 'Md Tamim Hasan', 'tamim18500@gmail.com', 'Arcane', '2021-07-02 21:10:56', '2021-07-02 21:10:56', 'bn', '01734191834'),
(68, 'Md Tamim Hasan', 'tamim18500@gmail.com', 'Arcane', '2021-07-02 21:10:58', '2021-07-02 21:10:58', 'bn', '01734191834'),
(69, 'Md Tamim Hasan', 'tamim18500@gmail.com', 'Arcane', '2021-07-02 21:10:59', '2021-07-02 21:10:59', 'bn', '01734191834'),
(70, 'Md Tamim Hasan', 'tamim18500@gmail.com', 'Arcane', '2021-07-02 21:11:01', '2021-07-02 21:11:01', 'bn', '01734191834'),
(71, 'Md Tamim Hasan', 'tamim18500@gmail.com', 'Arcane', '2021-07-02 21:11:03', '2021-07-02 21:11:03', 'bn', '01734191834'),
(72, 'Rafi Ahmed', '1621555@iub.edu.bd', 'Opaikar.com', '2021-07-02 21:21:06', '2021-07-02 21:21:06', 'bn', '01744-232346'),
(73, 'Abjol Hossen', 'abcdbcefg1@gmail.com', 'Nai', '2021-07-02 21:27:14', '2021-07-02 21:27:14', 'bn', '01797-475346'),
(74, 'Abjol Hossen', 'abcdbcefg1@gmail.com', 'Nai', '2021-07-02 21:27:14', '2021-07-02 21:27:14', 'bn', '01797-475346'),
(75, 'Abjol Hossen', 'abcdbcefg1@gmail.com', 'Nai', '2021-07-02 21:27:15', '2021-07-02 21:27:15', 'bn', '01797-475346'),
(76, 'Abjol Hossen', 'abcdbcefg1@gmail.com', 'Nai', '2021-07-02 21:27:16', '2021-07-02 21:27:16', 'bn', '01797-475346'),
(77, 'Abjol Hossen', 'abcdbcefg1@gmail.com', 'Nai', '2021-07-02 21:27:16', '2021-07-02 21:27:16', 'bn', '01797-475346'),
(78, 'Abjol Hossen', 'abcdbcefg1@gmail.com', 'Nai', '2021-07-02 21:27:17', '2021-07-02 21:27:17', 'bn', '01797-475346'),
(79, 'MD SHAHNAWAZ', 'sadisbnm@gmail.com', 'https://www.facebook.com/Aliffashioncraft/', '2021-07-02 22:19:51', '2021-07-02 22:19:51', 'bn', '01712874534'),
(80, 'Ratna', 'sabina15yesmin@gmail.com', 'zarasin shop', '2021-07-02 22:51:31', '2021-07-02 22:51:31', 'bn', '01953662306'),
(81, 'Ratna', 'sabina15yesmin@gmail.com', 'zarasin shop', '2021-07-02 22:53:02', '2021-07-02 22:53:02', 'bn', '01953662306'),
(82, 'Ratna', 'sabina15yesmin@gmail.com', 'zarasin shop', '2021-07-02 22:53:03', '2021-07-02 22:53:03', 'bn', '01953662306'),
(83, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:50', '2021-07-02 23:04:50', 'bn', '01619020007'),
(84, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:51', '2021-07-02 23:04:51', 'bn', '01619020007'),
(85, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:51', '2021-07-02 23:04:51', 'bn', '01619020007'),
(86, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:51', '2021-07-02 23:04:51', 'bn', '01619020007'),
(87, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:53', '2021-07-02 23:04:53', 'bn', '01619020007'),
(88, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:54', '2021-07-02 23:04:54', 'bn', '01619020007'),
(89, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:54', '2021-07-02 23:04:54', 'bn', '01619020007'),
(90, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:55', '2021-07-02 23:04:55', 'bn', '01619020007'),
(91, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:55', '2021-07-02 23:04:55', 'bn', '01619020007'),
(92, 'Khondoker Idris Ali', 'kh.ali020007@gmail.com', 'www.albeliz.com', '2021-07-02 23:04:56', '2021-07-02 23:04:56', 'bn', '01619020007'),
(93, 'Meharab Rahman', 'fashionfocusbd.007@gmail.com', 'Fashionfocus.net', '2021-07-02 23:54:17', '2021-07-02 23:54:17', 'bn', '01622881525'),
(94, 'Delowar', 'delowarhossen1727@gmail.com', 'Brand DS', '2021-07-03 00:38:03', '2021-07-03 00:38:03', 'bn', '01403185565'),
(95, 'Enam', 'enam_reza@yahoo.com', 'N/A', '2021-07-03 00:39:08', '2021-07-03 00:39:08', 'bn', '01971376666'),
(96, 'Ibrahim', 'khan.sba.ibrahim@gmail.com', 'www.laksura.com.bd', '2021-07-03 01:26:55', '2021-07-03 01:26:55', 'bn', '01991342153'),
(97, 'ফজলে রাব্বী', 'fazleyrabbi632@gmail.com', 'phoneact.bd', '2021-07-03 02:24:25', '2021-07-03 02:24:25', 'bn', '01785405858'),
(98, 'ফজলে রাব্বী', 'fazleyrabbi632@gmail.com', 'phoneact.bd', '2021-07-03 02:24:26', '2021-07-03 02:24:26', 'bn', '01785405858'),
(99, 'ফজলে রাব্বী', 'fazleyrabbi632@gmail.com', 'phoneact.bd', '2021-07-03 02:25:33', '2021-07-03 02:25:33', 'bn', '01785405858'),
(100, 'ফজলে রাব্বী', 'fazleyrabbi632@gmail.com', 'phoneact.bd', '2021-07-03 02:25:35', '2021-07-03 02:25:35', 'bn', '01785405858'),
(101, 'ফজলে রাব্বী', 'fazleyrabbi632@gmail.com', 'phoneact.bd', '2021-07-03 02:25:44', '2021-07-03 02:25:44', 'bn', '01785405858'),
(102, 'ফজলে রাব্বী', 'fazleyrabbi632@gmail.com', 'phoneact.bd', '2021-07-03 02:25:44', '2021-07-03 02:25:44', 'bn', '01785405858'),
(103, 'Atiqul hoque', 'ahmasud98@gmail.com', 'The uttara Bazar', '2021-07-03 02:38:07', '2021-07-03 02:38:07', 'bn', '0171040032'),
(104, 'Md. Sohanur Rahman', 'sohantech360@gmail.com', 'https://sohanonlineshop.xyz', '2021-07-03 03:56:23', '2021-07-03 03:56:23', 'bn', '01315625747'),
(105, 'Md.Mohidul Islam', 'mdmohitruc@gmail.com', 'মহাদেবপুর বাজারবাড়ি', '2021-07-03 04:08:38', '2021-07-03 04:08:38', 'bn', '01737652752'),
(106, 'Dust', 'click@gmail.com', 'Fuvkhy', '2021-07-03 05:03:05', '2021-07-03 05:03:05', 'bn', '01912858310'),
(107, 'Sahidul Haque', 'artexfurniture2019@gmail.com', 'Ar tex furniture bd', '2021-07-03 05:34:31', '2021-07-03 05:34:31', 'bn', '01712596108'),
(108, 'Sahidul Haque', 'artexfurniture2019@gmail.com', 'Ar tex furniture bd', '2021-07-03 05:34:32', '2021-07-03 05:34:32', 'bn', '01712596108'),
(109, 'Ershad', 'a_ershad7@yahoo.com', '-', '2021-07-03 06:51:09', '2021-07-03 06:51:09', 'bn', '01974466007'),
(110, 'Md. Momenul Islam', 'momenulimomin@gmail.com', 'MMS Media City', '2021-07-03 08:39:20', '2021-07-03 08:39:20', 'bn', '01717927236'),
(111, 'Md. Momenul Islam', 'momenulimomin@gmail.com', 'MMS Media City', '2021-07-03 08:39:21', '2021-07-03 08:39:21', 'bn', '01717927236'),
(112, 'Md. Momenul Islam', 'momenulimomin@gmail.com', 'MMS Media City', '2021-07-03 08:39:22', '2021-07-03 08:39:22', 'bn', '01717927236'),
(113, 'Md. Momenul Islam', 'momenulimomin@gmail.com', 'MMS Media City', '2021-07-03 08:39:22', '2021-07-03 08:39:22', 'bn', '01717927236'),
(114, 'Md. Momenul Islam', 'momenulimomin@gmail.com', 'MMS Media City', '2021-07-03 08:39:23', '2021-07-03 08:39:23', 'bn', '01717927236'),
(115, 'Md. Momenul Islam', 'momenulimomin@gmail.com', 'MMS Media City', '2021-07-03 08:39:23', '2021-07-03 08:39:23', 'bn', '01717927236'),
(116, 'Md. Momenul Islam', 'momenulimomin@gmail.com', 'MMS Media City', '2021-07-03 08:39:23', '2021-07-03 08:39:23', 'bn', '01717927236'),
(117, 'ArkovOutfits', 'arkovoutfits@gmail.com', 'ArkovOutfits', '2021-07-03 08:40:47', '2021-07-03 08:40:47', 'bn', '01969249444'),
(118, 'মোঃ মহিবুর রহমান', 'avijatrikjoy@gmail.com', 'নেই', '2021-07-03 09:18:21', '2021-07-03 09:18:21', 'bn', '০১৫১৬৭৪৪০১৯'),
(119, 'শারমিলা শারমিন', 'sharminmost473@gmail.com', 'রংনীড় ফ্যাশন হাউস', '2021-07-03 15:50:08', '2021-07-03 15:50:08', 'bn', '01721349082'),
(120, 'শারমিলা শারমিন', 'sharminmost473@gmail.com', 'রংনীড় ফ্যাশন হাউস', '2021-07-03 15:50:08', '2021-07-03 15:50:08', 'bn', '01721349082'),
(121, 'Ferdous', 'sumon.ece99@gmail.com', 'jdpcbd.com', '2021-07-03 16:01:04', '2021-07-03 16:01:04', 'en', '01718891906'),
(122, 'Ferdous', 'sumon.ece99@gmail.com', 'jdpcbd.com', '2021-07-03 16:01:06', '2021-07-03 16:01:06', 'en', '01718891906'),
(123, 'Max dream', 'lifewin95@gmail.com', 'Max Dream Fashion', '2021-07-03 16:17:20', '2021-07-03 16:17:20', 'bn', '01715641217'),
(124, 'Max dream', 'lifewin95@gmail.com', 'Max Dream Fashion', '2021-07-03 16:17:22', '2021-07-03 16:17:22', 'bn', '01715641217'),
(125, 'Tanimur Rahman', 'rahman_tanimur@yahoo.com', 'onlinefamilyservice.com', '2021-07-03 17:43:11', '2021-07-03 17:43:11', 'bn', '+8801911965615'),
(126, 'Rokibul Hasan', 'kishorrony33@gmail.com', 'Kabirshop', '2021-07-03 17:52:37', '2021-07-03 17:52:37', 'bn', '01304457883'),
(127, 'Easin', 'vtkeasin07@gmail.com', 'Men fashion', '2021-07-03 18:03:15', '2021-07-03 18:03:15', 'bn', '01721007997'),
(128, 'Asadul Haque', 'asadul.haque344@gmail.com', 'N/A', '2021-07-03 19:24:48', '2021-07-03 19:24:48', 'bn', '01734858513'),
(129, 'Md Shakil Mridha', 'odommoshakil@gmail.com', 'Dress point', '2021-07-03 19:28:28', '2021-07-03 19:28:28', 'bn', '01712974536'),
(130, 'Al mamun', 'almamunsardar5285@gimaigmail.com', 'Zaber international', '2021-07-03 19:33:20', '2021-07-03 19:33:20', 'bn', '01724024372'),
(131, 'Amdadul Haque', 'amdadulh590@gmail.com', 'beijinginternational', '2021-07-03 19:52:33', '2021-07-03 19:52:33', 'bn', '01826759279'),
(132, 'Biz World International', 'biz.world.int@gmail.com', 'www.bizworld.com.bd', '2021-07-03 20:58:41', '2021-07-03 20:58:41', 'bn', '+8801827815603'),
(133, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:00', '2021-07-03 21:13:00', 'bn', '01533621462'),
(134, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:01', '2021-07-03 21:13:01', 'bn', '01533621462'),
(135, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:03', '2021-07-03 21:13:03', 'bn', '01533621462'),
(136, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:05', '2021-07-03 21:13:05', 'bn', '01533621462'),
(137, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:08', '2021-07-03 21:13:08', 'bn', '01533621462'),
(138, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:08', '2021-07-03 21:13:08', 'bn', '01533621462'),
(139, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:09', '2021-07-03 21:13:09', 'bn', '01533621462'),
(140, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:11', '2021-07-03 21:13:11', 'bn', '01533621462'),
(141, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:27', '2021-07-03 21:13:27', 'bn', '01533621462'),
(142, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:31', '2021-07-03 21:13:31', 'bn', '01533621462'),
(143, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:31', '2021-07-03 21:13:31', 'bn', '01533621462'),
(144, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:31', '2021-07-03 21:13:31', 'bn', '01533621462'),
(145, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:32', '2021-07-03 21:13:32', 'bn', '01533621462'),
(146, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:32', '2021-07-03 21:13:32', 'bn', '01533621462'),
(147, 'Mamun', 'munna6964@gmail.com', 'Dream modesty fashion', '2021-07-03 21:13:32', '2021-07-03 21:13:32', 'bn', '01533621462'),
(148, 'Tofazzol Hossain Raha', 'rahadhossain2834@gmail.com', 'Giash telecom', '2021-07-03 21:22:52', '2021-07-03 21:22:52', 'bn', '01732805609'),
(149, 'Tofazzol Hossain Raha', 'rahadhossain2834@gmail.com', 'Giash telecom', '2021-07-03 21:22:52', '2021-07-03 21:22:52', 'bn', '01732805609'),
(150, 'Tofazzol Hossain Raha', 'rahadhossain2834@gmail.com', 'Giash telecom', '2021-07-03 21:22:53', '2021-07-03 21:22:53', 'bn', '01732805609'),
(151, 'Tofazzol Hossain Raha', 'rahadhossain2834@gmail.com', 'Giash telecom', '2021-07-03 21:22:53', '2021-07-03 21:22:53', 'bn', '01732805609'),
(152, 'Tofazzol Hossain Raha', 'rahadhossain2834@gmail.com', 'Giash telecom', '2021-07-03 21:22:53', '2021-07-03 21:22:53', 'bn', '01732805609'),
(153, 'Tofazzol Hossain Raha', 'rahadhossain2834@gmail.com', 'Giash telecom', '2021-07-03 21:22:54', '2021-07-03 21:22:54', 'bn', '01732805609'),
(154, 'Rakib Hasan', 'rkbhsn87@gmail.com', 'shulovbazar.xyz', '2021-07-03 21:27:00', '2021-07-03 21:27:00', 'bn', '01632448024'),
(155, 'Nitu', 'tahminaneetu471@gmail.com', 'NN collection', '2021-07-03 21:49:53', '2021-07-03 21:49:53', 'bn', '01716319494'),
(156, 'shahin', 'btex.fashion71@gmail.com', 'Mercury', '2021-07-03 22:00:01', '2021-07-03 22:00:01', 'bn', '01716884083'),
(157, 'HASAN', 'khandakar.hasaan@gmail.com', 'mayush', '2021-07-03 22:06:39', '2021-07-03 22:06:39', 'bn', '01756858907'),
(158, 'HASAN', 'khandakar.hasaan@gmail.com', 'mayush', '2021-07-03 22:06:41', '2021-07-03 22:06:41', 'bn', '01756858907'),
(159, 'Fabric shirt', 'mdmaruf7014@gmail.com', 'Fabric shirt', '2021-07-03 22:12:37', '2021-07-03 22:12:37', 'bn', '01610677039'),
(160, 'Fabric shirt', 'mdmaruf7014@gmail.com', 'Fabric shirt', '2021-07-03 22:12:38', '2021-07-03 22:12:38', 'bn', '01610677039'),
(161, 'ariful islam', 'arifcse96@gmail.com', 'aloronshop.com', '2021-07-04 00:11:45', '2021-07-04 00:11:45', 'bn', '01740112631'),
(162, 'Mohammad Hannan Sikder', 'hannanhp6@gmail.com', 'No', '2021-07-04 00:33:01', '2021-07-04 00:33:01', 'bn', '01738644426'),
(163, 'Mobaraq Hossain', 'hossainmobarok759@gmail.com', 'Rekha Rahman trade link', '2021-07-04 00:47:43', '2021-07-04 00:47:43', 'bn', '01611811759'),
(164, 'Mobaraq Hossain', 'hossainmobarok759@gmail.com', 'Rekha Rahman trade link', '2021-07-04 00:47:44', '2021-07-04 00:47:44', 'bn', '01611811759'),
(165, 'Mobaraq Hossain', 'hossainmobarok759@gmail.com', 'Rekha Rahman trade link', '2021-07-04 00:47:44', '2021-07-04 00:47:44', 'bn', '01611811759'),
(166, 'Mobaraq Hossain', 'hossainmobarok759@gmail.com', 'Rekha Rahman trade link', '2021-07-04 00:47:46', '2021-07-04 00:47:46', 'bn', '01611811759'),
(167, 'Mobaraq Hossain', 'hossainmobarok759@gmail.com', 'Rekha Rahman trade link', '2021-07-04 00:48:35', '2021-07-04 00:48:35', 'bn', '01611811759'),
(168, 'Mobaraq Hossain', 'hossainmobarok759@gmail.com', 'Rekha Rahman trade link', '2021-07-04 00:48:35', '2021-07-04 00:48:35', 'bn', '01611811759'),
(169, 'Mobaraq Hossain', 'hossainmobarok759@gmail.com', 'Rekha Rahman trade link', '2021-07-04 00:48:35', '2021-07-04 00:48:35', 'bn', '01611811759'),
(170, 'Mobaraq Hossain', 'hossainmobarok759@gmail.com', 'Rekha Rahman trade link', '2021-07-04 00:48:36', '2021-07-04 00:48:36', 'bn', '01611811759'),
(171, 'Jahirul Islam', 'mustofa017900@gmail.com', 'www.ajkarbazarbd.com', '2021-07-04 00:57:04', '2021-07-04 00:57:04', 'bn', '01701034920'),
(172, 'Md. Nizam Uddin', 'tnizam79@gmail.com', 'Taseen trading', '2021-07-04 01:26:18', '2021-07-04 01:26:18', 'bn', '01718344293'),
(173, 'Khairul Basher Suman', 'khairulbasher2012@gmail.com', 'Hello Kiddo', '2021-07-04 01:29:13', '2021-07-04 01:29:13', 'bn', '01811799922'),
(174, 'abir', 'abir000029@gmail.com', 'fasefaa', '2021-07-04 01:53:10', '2021-07-04 01:53:10', 'en', 'dfhdra'),
(175, 'Md.jillur rahman', 'jillurrahaman768@gmail.com', 'Rahman & sorker associates', '2021-07-04 01:54:23', '2021-07-04 01:54:23', 'bn', '01744919454'),
(176, 'Md.jillur rahman', 'jillurrahaman768@gmail.com', 'Rahman & sorker associates', '2021-07-04 01:55:41', '2021-07-04 01:55:41', 'bn', '01744919454'),
(177, 'Md.jillur rahman', 'jillurrahaman768@gmail.com', 'Rahman & sorker associates', '2021-07-04 01:55:41', '2021-07-04 01:55:41', 'bn', '01744919454'),
(178, 'Md.jillur rahman', 'jillurrahaman768@gmail.com', 'Rahman & sorker associates', '2021-07-04 01:56:12', '2021-07-04 01:56:12', 'bn', '01744919454'),
(179, 'Shazzad Hossain', 'emon.dcc16@gmail.com', 'Gantlema Bangladesh', '2021-07-04 02:07:25', '2021-07-04 02:07:25', 'bn', '01685905970'),
(180, 'Mahabub Ahmed', 'mzdenim777@gmail.com', 'Mz denim', '2021-07-04 04:08:40', '2021-07-04 04:08:40', 'bn', '01886511156'),
(181, 'মোঃ ওমর ফারুক', 'autotltd@gmail.com', 'https://www.facebook.com/profile.php?id=100000275242372', '2021-07-04 04:13:32', '2021-07-04 04:13:32', 'bn', '01970897044'),
(182, 'মোঃ ওমর ফারুক', 'autotltd@gmail.com', 'https://www.facebook.com/profile.php?id=100000275242372', '2021-07-04 04:13:33', '2021-07-04 04:13:33', 'bn', '01970897044'),
(183, 'MD:Nasir uddin', 'mdnasiruddin1611235957@gmail.com', 'শাওন গ্লাস হাউজ', '2021-07-04 05:09:28', '2021-07-04 05:09:28', 'bn', '01636888385'),
(184, 'MD Masud', 'mdm643909@gmail.com', 'www.foodond.com', '2021-07-04 05:40:03', '2021-07-04 05:40:03', 'bn', '01959118680'),
(185, 'Mohammad Kamal Uddin', 'kamalkingstar1@gmail.com', 'Mi Store Electra, Mirpur 02', '2021-07-04 05:46:24', '2021-07-04 05:46:24', 'bn', '01716499929'),
(186, 'Mohammad Kamal Uddin', 'kamalkingstar1@gmail.com', 'Mi Store Electra, Mirpur 02', '2021-07-04 05:46:26', '2021-07-04 05:46:26', 'bn', '01716499929'),
(187, 'Mohammad Kamal Uddin', 'kamalkingstar1@gmail.com', 'Mi Store Electra, Mirpur 02', '2021-07-04 05:46:27', '2021-07-04 05:46:27', 'bn', '01716499929'),
(188, 'Taslim Uddin', 'orrisfashion@gmail.com', 'www.orrisfashion.com', '2021-07-04 07:05:09', '2021-07-04 07:05:09', 'bn', '01716903161'),
(189, 'Taslim Uddin', 'orrisfashion@gmail.com', 'www.orrisfashion.com', '2021-07-04 07:05:11', '2021-07-04 07:05:11', 'bn', '01716903161'),
(190, 'mawlana nasrullah', 'mawlananasrullah570@gmail.com', 'Ikra taylors and fabrics', '2021-07-04 07:32:00', '2021-07-04 07:32:00', 'bn', '01884088810'),
(191, 'MD Zakaria', 'mdjakaria6666@gmail.com', 'মোবাইল কেয়ার', '2021-07-04 07:54:03', '2021-07-04 07:54:03', 'bn', '01723519646'),
(192, 'আমির হাসান', 'Hasan01629255220@gmail.com', 'পন্য সমাহার', '2021-07-04 08:11:15', '2021-07-04 08:11:15', 'bn', '01718750929'),
(193, 'Turza', 'turzohassan20@gmail.com', 'https://www.facebook.com/planwayit', '2021-07-04 09:56:48', '2021-07-04 09:56:48', 'bn', '01739978613'),
(194, 'ফাতেমা', '01748745637@gmail.com', 'Fatema\'s Choco Online Store', '2021-07-04 10:17:31', '2021-07-04 10:17:31', 'bn', '01724498005'),
(195, 'MD Farid Ahammad', 'asfarid143@gmail.com', 'Farid mart', '2021-07-04 11:14:47', '2021-07-04 11:14:47', 'bn', '01816274363'),
(196, 'MD Farid Ahammad', 'asfarid143@gmail.com', 'Farid mart', '2021-07-04 11:14:47', '2021-07-04 11:14:47', 'bn', '01816274363'),
(197, 'MD Farid Ahammad', 'asfarid143@gmail.com', 'Farid mart', '2021-07-04 11:14:48', '2021-07-04 11:14:48', 'bn', '01816274363'),
(198, 'শহীদুল ইসলাম শাহীদ', 'shahidcse.cu@gmail.com', 'www.agricabd.com', '2021-07-04 14:21:39', '2021-07-04 14:21:39', 'bn', '01515658272'),
(199, 'Fahad', 'seikhfahad891@gmail.com', 'Sky Attire', '2021-07-04 14:45:00', '2021-07-04 14:45:00', 'bn', '01632405910'),
(200, 'Tariqul', 'tariqul63363@gmail.com', 'Lineage interior design bd', '2021-07-04 14:49:57', '2021-07-04 14:49:57', 'bn', '01682163363'),
(201, 'Mahmud Hassan Rubel', 'rubel33.ccr@gmail.com', 'I don\'t have any want site.', '2021-07-04 15:04:42', '2021-07-04 15:04:42', 'bn', '01765908567'),
(202, 'Mahmud Hassan Rubel', 'rubel33.ccr@gmail.com', 'I don\'t have any want site.', '2021-07-04 15:04:44', '2021-07-04 15:04:44', 'bn', '01765908567'),
(203, 'saharul islam', 'islamsaharul69@gmail.com', 'computer graphics deginer', '2021-07-04 15:21:06', '2021-07-04 15:21:06', 'bn', '01736639692'),
(204, 'Amit', 'amit01746961661@gmail.com', 'Mini Online mart bd', '2021-07-04 15:52:18', '2021-07-04 15:52:18', 'bn', '01746961661'),
(205, 'Sayed Safiul Newaz', 'safiulnewaz@gmail.com', 'Innisfree Style Zone-ISZ', '2021-07-04 17:34:24', '2021-07-04 17:34:24', 'bn', '01975492524'),
(206, 'Raohan rajib', 'raihanrajib02@gmail.com', 'Blackboard', '2021-07-04 17:45:35', '2021-07-04 17:45:35', 'bn', '01974393366'),
(207, 'Raohan rajib', 'raihanrajib02@gmail.com', 'Blackboard', '2021-07-04 17:45:35', '2021-07-04 17:45:35', 'bn', '01974393366'),
(208, 'Raohan rajib', 'raihanrajib02@gmail.com', 'Blackboard', '2021-07-04 17:46:08', '2021-07-04 17:46:08', 'bn', '01974393366'),
(209, 'Raohan rajib', 'raihanrajib02@gmail.com', 'Blackboard', '2021-07-04 17:46:09', '2021-07-04 17:46:09', 'bn', '01974393366'),
(210, 'Raohan rajib', 'raihanrajib02@gmail.com', 'Blackboard', '2021-07-04 17:46:09', '2021-07-04 17:46:09', 'bn', '01974393366'),
(211, 'Raohan rajib', 'raihanrajib02@gmail.com', 'Blackboard', '2021-07-04 17:46:10', '2021-07-04 17:46:10', 'bn', '01974393366'),
(212, 'Sonjoy Roy', 'ssrriihi@gmail.com', 'Roy Shopping', '2021-07-04 17:58:36', '2021-07-04 17:58:36', 'bn', '01778742901'),
(213, 'Sonjoy Roy', 'ssrriihi@gmail.com', 'Roy Shopping', '2021-07-04 17:58:37', '2021-07-04 17:58:37', 'bn', '01778742901'),
(214, 'Fiaz Safone Rakib', 'fiazsofonerakib@gmail.com', 'Hashtag Fashion Wear', '2021-07-04 18:10:48', '2021-07-04 18:10:48', 'en', '01983482129'),
(215, 'Fiaz Safone Rakib', 'fiazsofonerakib@gmail.com', 'Hashtag Fashion Wear', '2021-07-04 18:12:24', '2021-07-04 18:12:24', 'en', '01983482129'),
(216, 'MITHUN BORMON', 'amimithun195@gmail.com', 'https://www.facebook.com/maans.wholesale/', '2021-07-04 18:36:57', '2021-07-04 18:36:57', 'bn', '01856743037'),
(217, 'Ebrahim', 'ebrahimmai4441@gmail.com', 'Desginbaz', '2021-07-04 18:39:12', '2021-07-04 18:39:12', 'bn', '01919056441'),
(218, 'বেলাল', 'belalhusain39@gmail.com', 'belal & brother\'s', '2021-07-04 18:59:51', '2021-07-04 18:59:51', 'bn', '01799920099'),
(219, 'Imran', 'ihossainproject585@gmail.com', 'Sohagi Enterprise', '2021-07-04 19:19:02', '2021-07-04 19:19:02', 'bn', '01904310292'),
(220, 'Hossain Mohammad', 'hossainrocksong@gmail.com', 'Maa IT Farm', '2021-07-04 20:11:10', '2021-07-04 20:11:10', 'bn', '01772719737'),
(221, 'রবিউল ইসলাম', 'ri113878@gmail.com', 'Ri113878@gmail. Com', '2021-07-04 21:00:13', '2021-07-04 21:00:13', 'bn', '01784888929'),
(222, 'রবিউল ইসলাম', 'ri113878@gmail.com', 'Ri113878@gmail.com', '2021-07-04 21:04:33', '2021-07-04 21:04:33', 'en', '01784888929'),
(223, 'MOHAMMAD ASHRAFUL ALOM MAKLOKAT', 'raj.ahsan000@gmail.com', 'Sabakitchen', '2021-07-04 22:19:55', '2021-07-04 22:19:55', 'bn', '01719103441'),
(224, 'MOHAMMAD ASHRAFUL ALOM MAKLOKAT', 'raj.ahsan000@gmail.com', 'Sabakitchen', '2021-07-04 22:20:26', '2021-07-04 22:20:26', 'bn', '01719103441'),
(227, 'Sheikh Waliur Rahman', 'abwaliur@gmail.com', 'test.com', '2021-07-04 12:20:24', '2021-07-04 12:20:24', 'en', '01729901263'),
(228, 'Test', 'test@gmail.com', 'test.com', '2021-07-05 08:02:08', '2021-07-05 08:02:08', 'en', '01729901263');

-- --------------------------------------------------------

--
-- Table structure for table `requester_questions`
--

CREATE TABLE `requester_questions` (
  `id` int(20) UNSIGNED NOT NULL,
  `requester_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requester_questions`
--

INSERT INTO `requester_questions` (`id`, `requester_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(11, 2, 11, 'Abir', '2021-06-29 15:11:51', '2021-06-29 15:11:51'),
(12, 2, 12, 'pranto@gmail.com', '2021-06-29 15:11:51', '2021-06-29 15:11:51'),
(13, 2, 13, 'df', '2021-06-29 15:11:51', '2021-06-29 15:11:51'),
(14, 2, 14, 'টেলিভিশন, রেডিও', '2021-06-29 15:11:52', '2021-06-29 15:11:52'),
(15, 2, 15, 'আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-06-29 15:11:52', '2021-06-29 15:11:52'),
(16, 2, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-06-29 15:11:52', '2021-06-29 15:11:52'),
(17, 2, 17, '৩ লাখ-৫ লাখ', '2021-06-29 15:11:52', '2021-06-29 15:11:52'),
(18, 2, 18, 'fdfsafd', '2021-06-29 15:11:52', '2021-06-29 15:11:52'),
(19, 2, 19, 'fgf', '2021-06-29 15:11:52', '2021-06-29 15:11:52'),
(20, 2, 20, '১০', '2021-06-29 15:11:52', '2021-06-29 15:11:52'),
(21, 3, 1, 'Sheikh Waliur Rahman', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(22, 3, 2, 'abwaliur@gmail.com', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(23, 3, 3, '01729901263', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(24, 3, 4, 'SEO', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(25, 3, 5, 'We are not able to keep existing customers.', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(26, 3, 6, 'Increase online sales', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(27, 3, 7, '50k', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(28, 3, 8, 'service', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(29, 3, 9, 'test', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(30, 3, 10, '10', '2021-06-30 03:27:34', '2021-06-30 03:27:34'),
(31, 4, 11, 'waliur', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(32, 4, 12, 'abwaliur@gmail.com', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(33, 4, 13, '01729901263', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(34, 4, 14, 'এসইও, টেলিভিশন', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(35, 4, 15, 'ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(36, 4, 16, 'অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(37, 4, 17, '৫০ হাজার- ১ লাখ', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(38, 4, 18, 'test.com', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(39, 4, 19, 'test', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(40, 4, 20, '১০', '2021-06-30 03:29:14', '2021-06-30 03:29:14'),
(41, 5, 11, 'polash', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(42, 5, 12, 'ace746@tapi.re', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(43, 5, 13, '01858731100', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(44, 5, 14, 'ফেসবুক অ্যাড, এসইও', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(45, 5, 15, 'কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(46, 5, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(47, 5, 17, '৫০হাজার', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(48, 5, 18, 'micropro.me', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(49, 5, 19, 'Assessorries', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(50, 5, 20, '১০', '2021-07-01 04:54:19', '2021-07-01 04:54:19'),
(51, 6, 11, 'Multi Trade International', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(52, 6, 12, 'multitrade_int_bd@yahoo.com', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(53, 6, 13, '01712638722', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(54, 6, 14, 'কোনোটিই না', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(55, 6, 15, 'ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(56, 6, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(57, 6, 17, '৫ লাখ+', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(58, 6, 18, 'Multi Trade International', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(59, 6, 19, 'Gas stove , kitchen hood', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(60, 6, 20, '১০', '2021-07-01 04:59:42', '2021-07-01 04:59:42'),
(61, 7, 11, 'Multi Trade International', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(62, 7, 12, 'multitrade_int_bd@yahoo.com', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(63, 7, 13, '01712638722', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(64, 7, 14, 'কোনোটিই না', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(65, 7, 15, 'ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(66, 7, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(67, 7, 17, '৫ লাখ+', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(68, 7, 18, 'Multi Trade International', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(69, 7, 19, 'Gas stove , kitchen hood', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(70, 7, 20, '১০', '2021-07-01 04:59:43', '2021-07-01 04:59:43'),
(71, 8, 11, 'Multi Trade International', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(72, 8, 12, 'multitrade_int_bd@yahoo.com', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(73, 8, 13, '01712638722', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(74, 8, 14, 'কোনোটিই না', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(75, 8, 15, 'ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(76, 8, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(77, 8, 17, '৫ লাখ+', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(78, 8, 18, 'Multi Trade International', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(79, 8, 19, 'Gas stove , kitchen hood', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(80, 8, 20, '১০', '2021-07-01 04:59:45', '2021-07-01 04:59:45'),
(81, 9, 11, 'Syed sajol', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(82, 9, 12, 'salma1990r@gmail.com', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(83, 9, 13, '01781100382', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(84, 9, 14, 'কোনোটিই না', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(85, 9, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(86, 9, 16, 'বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(87, 9, 17, '৫০ হাজার- ১ লাখ', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(88, 9, 18, 'Bd leather', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(89, 9, 19, 'Yes', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(90, 9, 20, '১০', '2021-07-01 05:06:36', '2021-07-01 05:06:36'),
(91, 10, 11, 'Syed sajol', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(92, 10, 12, 'salma1990r@gmail.com', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(93, 10, 13, '01781100382', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(94, 10, 14, 'কোনোটিই না', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(95, 10, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(96, 10, 16, 'বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(97, 10, 17, '৫০ হাজার- ১ লাখ', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(98, 10, 18, 'Bd leather', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(99, 10, 19, 'Yes', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(100, 10, 20, '১০', '2021-07-01 05:06:40', '2021-07-01 05:06:40'),
(101, 11, 11, 'abir', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(102, 11, 12, 'abir000029@gmail.com', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(103, 11, 13, 'dfhdra', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(104, 11, 14, 'গুগল অ্যাডওয়ার্ডস', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(105, 11, 15, 'রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(106, 11, 16, 'আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(107, 11, 17, '৫০হাজার', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(108, 11, 18, 'fasefaa', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(109, 11, 19, 'hh', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(110, 11, 20, '৯', '2021-07-01 21:49:49', '2021-07-01 21:49:49'),
(111, 12, 11, 'AI Siam', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(112, 12, 12, 'acm473792@gmail.com', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(113, 12, 13, '01305038315', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(114, 12, 14, 'ফেসবুক অ্যাড', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(115, 12, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(116, 12, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(117, 12, 17, '৫০হাজার', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(118, 12, 18, 'mbs.com', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(119, 12, 19, 'Boost, Promote', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(120, 12, 20, '১০', '2021-07-02 14:11:59', '2021-07-02 14:11:59'),
(121, 13, 11, 'Arefin', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(122, 13, 12, 'saymajannat1994@gmail.com', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(123, 13, 13, '01961708725', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(124, 13, 14, 'ফেসবুক অ্যাড', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(125, 13, 15, 'কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(126, 13, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(127, 13, 17, '৫০হাজার', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(128, 13, 18, 'Raiyanshop bd', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(129, 13, 19, 'Mobile', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(130, 13, 20, '১০', '2021-07-02 14:55:59', '2021-07-02 14:55:59'),
(131, 14, 11, 'Arefin', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(132, 14, 12, 'saymajannat1994@gmail.com', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(133, 14, 13, '01961708725', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(134, 14, 14, 'ফেসবুক অ্যাড', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(135, 14, 15, 'কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(136, 14, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(137, 14, 17, '৫০হাজার', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(138, 14, 18, 'Raiyanshop bd', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(139, 14, 19, 'Mobile', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(140, 14, 20, '১০', '2021-07-02 14:56:00', '2021-07-02 14:56:00'),
(141, 15, 11, 'Arefin', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(142, 15, 12, 'saymajannat1994@gmail.com', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(143, 15, 13, '01961708725', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(144, 15, 14, 'ফেসবুক অ্যাড', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(145, 15, 15, 'কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(146, 15, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(147, 15, 17, '৫০হাজার', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(148, 15, 18, 'Raiyanshop bd', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(149, 15, 19, 'Mobile', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(150, 15, 20, '১০', '2021-07-02 14:56:02', '2021-07-02 14:56:02'),
(151, 16, 11, 'Arefin', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(152, 16, 12, 'saymajannat1994@gmail.com', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(153, 16, 13, '01961708725', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(154, 16, 14, 'ফেসবুক অ্যাড', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(155, 16, 15, 'কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(156, 16, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(157, 16, 17, '৫০হাজার', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(158, 16, 18, 'Raiyanshop bd', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(159, 16, 19, 'Mobile', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(160, 16, 20, '১০', '2021-07-02 14:56:03', '2021-07-02 14:56:03'),
(161, 17, 11, 'Arefin', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(162, 17, 12, 'saymajannat1994@gmail.com', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(163, 17, 13, '01961708725', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(164, 17, 14, 'ফেসবুক অ্যাড', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(165, 17, 15, 'কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(166, 17, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(167, 17, 17, '৫০হাজার', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(168, 17, 18, 'Raiyanshop bd', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(169, 17, 19, 'Mobile', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(170, 17, 20, '১০', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(171, 18, 11, 'Arefin', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(172, 18, 12, 'saymajannat1994@gmail.com', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(173, 18, 13, '01961708725', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(174, 18, 14, 'ফেসবুক অ্যাড', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(175, 18, 15, 'কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(176, 18, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(177, 18, 17, '৫০হাজার', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(178, 18, 18, 'Raiyanshop bd', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(179, 18, 19, 'Mobile', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(180, 18, 20, '১০', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(181, 19, 11, 'Arefin', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(182, 19, 12, 'saymajannat1994@gmail.com', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(183, 19, 13, '01961708725', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(184, 19, 14, 'ফেসবুক অ্যাড', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(185, 19, 15, 'কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(186, 19, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(187, 19, 17, '৫০হাজার', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(188, 19, 18, 'Raiyanshop bd', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(189, 19, 19, 'Mobile', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(190, 19, 20, '১০', '2021-07-02 14:56:04', '2021-07-02 14:56:04'),
(191, 20, 11, 'Rubel', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(192, 20, 12, 'rubelmia75@gmail.com', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(193, 20, 13, '01917462410', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(194, 20, 14, 'কোনোটিই না', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(195, 20, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(196, 20, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(197, 20, 17, '৫০হাজার', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(198, 20, 18, 'Babymartbd.com', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(199, 20, 19, 'Baby items', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(200, 20, 20, '১০', '2021-07-02 15:08:40', '2021-07-02 15:08:40'),
(201, 21, 11, 'Tanjima akter itu', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(202, 21, 12, 'shahadat.gr@gamil.com', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(203, 21, 13, '01537109271', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(204, 21, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(205, 21, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(206, 21, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(207, 21, 17, '৫০হাজার', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(208, 21, 18, 'Manha', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(209, 21, 19, 'কাপোড়', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(210, 21, 20, '১০', '2021-07-02 16:10:43', '2021-07-02 16:10:43'),
(211, 22, 11, 'Rayhan', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(212, 22, 12, 'rayhan181@yahoo.com', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(213, 22, 13, '01818353903', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(214, 22, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(215, 22, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(216, 22, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(217, 22, 17, '৫০হাজার', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(218, 22, 18, 'aonetechnology', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(219, 22, 19, 'Computer Accessories', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(220, 22, 20, '১০', '2021-07-02 16:13:07', '2021-07-02 16:13:07'),
(221, 23, 11, 'Rayhan', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(222, 23, 12, 'rayhan181@yahoo.com', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(223, 23, 13, '01818353903', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(224, 23, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(225, 23, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(226, 23, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(227, 23, 17, '৫০হাজার', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(228, 23, 18, 'aonetechnology', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(229, 23, 19, 'Computer Accessories', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(230, 23, 20, '১০', '2021-07-02 16:13:09', '2021-07-02 16:13:09'),
(231, 24, 11, 'Rayhan', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(232, 24, 12, 'rayhan181@yahoo.com', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(233, 24, 13, '01818353903', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(234, 24, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(235, 24, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(236, 24, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(237, 24, 17, '৫০হাজার', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(238, 24, 18, 'aonetechnology', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(239, 24, 19, 'Computer Accessories', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(240, 24, 20, '১০', '2021-07-02 16:13:11', '2021-07-02 16:13:11'),
(241, 25, 11, 'Ab kuddus', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(242, 25, 12, 'abkuddus077@gmail.com', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(243, 25, 13, '01756924159', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(244, 25, 14, 'ফেসবুক অ্যাড', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(245, 25, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(246, 25, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(247, 25, 17, '৩ লাখ-৫ লাখ', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(248, 25, 18, 'Megaman', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(249, 25, 19, 'Light', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(250, 25, 20, '১০', '2021-07-02 16:22:10', '2021-07-02 16:22:10'),
(251, 26, 11, 'Ab kuddus', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(252, 26, 12, 'abkuddus077@gmail.com', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(253, 26, 13, '01756924159', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(254, 26, 14, 'ফেসবুক অ্যাড', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(255, 26, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(256, 26, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(257, 26, 17, '৩ লাখ-৫ লাখ', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(258, 26, 18, 'Megaman', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(259, 26, 19, 'Light', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(260, 26, 20, '১০', '2021-07-02 16:22:12', '2021-07-02 16:22:12'),
(261, 27, 11, 'Gopal Chandra Mohanta', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(262, 27, 12, 'parthogopalmohanta@gmail.com', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(263, 27, 13, '01516701717', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(264, 27, 14, 'ফেসবুক অ্যাড', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(265, 27, 15, 'নতুন কাস্টমার পাচ্ছেন না।, কেউ আমাদের চেনে না।', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(266, 27, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(267, 27, 17, '৫০হাজার', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(268, 27, 18, 'মহন্ত নার্সারী', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(269, 27, 19, 'গাছের চারা', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(270, 27, 20, '১০', '2021-07-02 16:24:24', '2021-07-02 16:24:24'),
(271, 28, 11, 'Rayhan', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(272, 28, 12, 'rayhan181@yahoo.com', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(273, 28, 13, '01818353903', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(274, 28, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(275, 28, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(276, 28, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(277, 28, 17, '৫০হাজার', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(278, 28, 18, 'aonetechnology', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(279, 28, 19, 'Computer Accessories', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(280, 28, 20, '১০', '2021-07-02 16:40:43', '2021-07-02 16:40:43'),
(281, 29, 11, 'Rayhan', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(282, 29, 12, 'rayhan181@yahoo.com', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(283, 29, 13, '01818353903', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(284, 29, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(285, 29, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(286, 29, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(287, 29, 17, '৫০হাজার', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(288, 29, 18, 'aonetechnology', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(289, 29, 19, 'Computer Accessories', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(290, 29, 20, '১০', '2021-07-02 16:42:28', '2021-07-02 16:42:28'),
(291, 30, 11, 'Rayhan', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(292, 30, 12, 'rayhan181@yahoo.com', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(293, 30, 13, '01818353903', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(294, 30, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(295, 30, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(296, 30, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(297, 30, 17, '৫০হাজার', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(298, 30, 18, 'aonetechnology', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(299, 30, 19, 'Computer Accessories', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(300, 30, 20, '১০', '2021-07-02 16:42:29', '2021-07-02 16:42:29'),
(301, 31, 11, 'Rayhan', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(302, 31, 12, 'rayhan181@yahoo.com', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(303, 31, 13, '01818353903', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(304, 31, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(305, 31, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(306, 31, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(307, 31, 17, '৫০হাজার', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(308, 31, 18, 'aonetechnology', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(309, 31, 19, 'Computer Accessories', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(310, 31, 20, '১০', '2021-07-02 16:42:31', '2021-07-02 16:42:31'),
(311, 32, 11, 'Rayhan', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(312, 32, 12, 'rayhan181@yahoo.com', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(313, 32, 13, '01818353903', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(314, 32, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(315, 32, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(316, 32, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(317, 32, 17, '৫০হাজার', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(318, 32, 18, 'aonetechnology', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(319, 32, 19, 'Computer Accessories', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(320, 32, 20, '১০', '2021-07-02 16:42:32', '2021-07-02 16:42:32'),
(321, 33, 11, 'Rayhan', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(322, 33, 12, 'rayhan181@yahoo.com', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(323, 33, 13, '01818353903', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(324, 33, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(325, 33, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(326, 33, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(327, 33, 17, '৫০হাজার', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(328, 33, 18, 'aonetechnology', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(329, 33, 19, 'Computer Accessories', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(330, 33, 20, '১০', '2021-07-02 16:47:33', '2021-07-02 16:47:33'),
(331, 34, 1, 'zalal uddin', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(332, 34, 2, 'md.zalaluddin882@gmail.com', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(333, 34, 3, '01770599483', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(334, 34, 4, 'None', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(335, 34, 5, 'Nobody knows who we are.', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(336, 34, 6, 'Increase online sales', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(337, 34, 7, '50k', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(338, 34, 8, 'fabric', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(339, 34, 9, 'Gagipur', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(340, 34, 10, '10', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(341, 35, 1, 'zalal uddin', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(342, 35, 2, 'md.zalaluddin882@gmail.com', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(343, 35, 3, '01770599483', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(344, 35, 4, 'None', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(345, 35, 5, 'Nobody knows who we are.', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(346, 35, 6, 'Increase online sales', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(347, 35, 7, '50k', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(348, 35, 8, 'fabric', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(349, 35, 9, 'Gagipur', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(350, 35, 10, '10', '2021-07-02 17:02:58', '2021-07-02 17:02:58'),
(351, 36, 1, 'zalal uddin', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(352, 36, 2, 'md.zalaluddin882@gmail.com', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(353, 36, 3, '01770599483', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(354, 36, 4, 'None', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(355, 36, 5, 'Nobody knows who we are.', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(356, 36, 6, 'Increase online sales', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(357, 36, 7, '50k', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(358, 36, 8, 'fabric', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(359, 36, 9, 'Gagipur', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(360, 36, 10, '10', '2021-07-02 17:02:59', '2021-07-02 17:02:59'),
(361, 37, 11, 'K.M. Mamunur Rashid', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(362, 37, 12, 'kmmamunur5@gmail.com', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(363, 37, 13, '01711427481', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(364, 37, 14, 'কোনোটিই না', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(365, 37, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(366, 37, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(367, 37, 17, '৫০হাজার', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(368, 37, 18, 'Muhurtei', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(369, 37, 19, 'গ্রোসারি', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(370, 37, 20, '১০', '2021-07-02 17:07:32', '2021-07-02 17:07:32'),
(371, 38, 11, 'Arefin', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(372, 38, 12, 'arefin@sic.com.bd', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(373, 38, 13, '01988890099', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(374, 38, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(375, 38, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(376, 38, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(377, 38, 17, '৫০হাজার', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(378, 38, 18, 'SIC Corporation', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(379, 38, 19, 'Jewellery', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(380, 38, 20, '১০', '2021-07-02 17:18:25', '2021-07-02 17:18:25'),
(381, 39, 11, 'Saikot', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(382, 39, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(383, 39, 13, '01842446756', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(384, 39, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(385, 39, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(386, 39, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(387, 39, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(388, 39, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(389, 39, 19, 'Elections', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(390, 39, 20, '১০', '2021-07-02 18:46:08', '2021-07-02 18:46:08'),
(391, 40, 11, 'Saikot', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(392, 40, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(393, 40, 13, '01842446756', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(394, 40, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(395, 40, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(396, 40, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(397, 40, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(398, 40, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(399, 40, 19, 'Elections', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(400, 40, 20, '১০', '2021-07-02 18:46:10', '2021-07-02 18:46:10'),
(401, 41, 11, 'Saikot', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(402, 41, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(403, 41, 13, '01842446756', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(404, 41, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(405, 41, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(406, 41, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(407, 41, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(408, 41, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(409, 41, 19, 'Elections', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(410, 41, 20, '১০', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(411, 42, 11, 'Saikot', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(412, 42, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(413, 42, 13, '01842446756', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(414, 42, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(415, 42, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(416, 42, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(417, 42, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(418, 42, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(419, 42, 19, 'Elections', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(420, 42, 20, '১০', '2021-07-02 18:46:11', '2021-07-02 18:46:11'),
(421, 43, 11, 'Saikot', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(422, 43, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(423, 43, 13, '01842446756', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(424, 43, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(425, 43, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(426, 43, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(427, 43, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(428, 43, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(429, 43, 19, 'Elections', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(430, 43, 20, '১০', '2021-07-02 18:46:12', '2021-07-02 18:46:12'),
(431, 44, 11, 'Saikot', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(432, 44, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(433, 44, 13, '01842446756', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(434, 44, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(435, 44, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(436, 44, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(437, 44, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(438, 44, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(439, 44, 19, 'Elections', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(440, 44, 20, '১০', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(441, 45, 11, 'Saikot', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(442, 45, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(443, 45, 13, '01842446756', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(444, 45, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(445, 45, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(446, 45, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(447, 45, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(448, 45, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(449, 45, 19, 'Elections', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(450, 45, 20, '১০', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(451, 46, 11, 'Saikot', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(452, 46, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(453, 46, 13, '01842446756', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(454, 46, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(455, 46, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(456, 46, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(457, 46, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(458, 46, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(459, 46, 19, 'Elections', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(460, 46, 20, '১০', '2021-07-02 18:46:13', '2021-07-02 18:46:13'),
(461, 47, 11, 'Saikot', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(462, 47, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(463, 47, 13, '01842446756', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(464, 47, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(465, 47, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(466, 47, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(467, 47, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(468, 47, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(469, 47, 19, 'Elections', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(470, 47, 20, '১০', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(471, 48, 11, 'Saikot', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(472, 48, 12, 'mobilebd852@gmail.com', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(473, 48, 13, '01842446756', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(474, 48, 14, 'ফেসবুক অ্যাড', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(475, 48, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(476, 48, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(477, 48, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 18:46:14', '2021-07-02 18:46:14'),
(478, 48, 18, 'www.facebook.com/saikothossain.rumel', '2021-07-02 18:46:15', '2021-07-02 18:46:15'),
(479, 48, 19, 'Elections', '2021-07-02 18:46:15', '2021-07-02 18:46:15'),
(480, 48, 20, '১০', '2021-07-02 18:46:15', '2021-07-02 18:46:15'),
(481, 49, 11, 'Likhon', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(482, 49, 12, 'jplikhonahaned.mail@gmail.com', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(483, 49, 13, '01952820552', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(484, 49, 14, 'ফেসবুক অ্যাড', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(485, 49, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(486, 49, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(487, 49, 17, '৫০হাজার', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(488, 49, 18, 'Jp.com', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(489, 49, 19, 'Bal', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(490, 49, 20, '১০', '2021-07-02 19:00:59', '2021-07-02 19:00:59'),
(491, 50, 11, 'Murad', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(492, 50, 12, 'muradicab@gmail.com', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(493, 50, 13, '01920756500', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(494, 50, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(495, 50, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(496, 50, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(497, 50, 17, '৫০হাজার', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(498, 50, 18, 'Sultanymart.com', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(499, 50, 19, 'All', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(500, 50, 20, '১০', '2021-07-02 19:40:37', '2021-07-02 19:40:37'),
(501, 51, 11, 'Nafis', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(502, 51, 12, 'nafis.chow71@gmail.com', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(503, 51, 13, '01626558513', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(504, 51, 14, 'ফেসবুক অ্যাড, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(505, 51, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(506, 51, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(507, 51, 17, '৫০হাজার', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(508, 51, 18, 'FnF Pharmaceuticals. Com', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(509, 51, 19, 'Medicine', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(510, 51, 20, '১০', '2021-07-02 20:04:54', '2021-07-02 20:04:54'),
(511, 52, 11, 'Nafis', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(512, 52, 12, 'nafis.chow71@gmail.com', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(513, 52, 13, '01626558513', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(514, 52, 14, 'ফেসবুক অ্যাড, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(515, 52, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(516, 52, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(517, 52, 17, '৫০হাজার', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(518, 52, 18, 'FnF Pharmaceuticals. Com', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(519, 52, 19, 'Medicine', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(520, 52, 20, '১০', '2021-07-02 20:04:55', '2021-07-02 20:04:55'),
(521, 53, 11, 'Nafis', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(522, 53, 12, 'nafis.chow71@gmail.com', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(523, 53, 13, '01626558513', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(524, 53, 14, 'ফেসবুক অ্যাড, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 20:04:57', '2021-07-02 20:04:57');
INSERT INTO `requester_questions` (`id`, `requester_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(525, 53, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(526, 53, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(527, 53, 17, '৫০হাজার', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(528, 53, 18, 'FnF Pharmaceuticals. Com', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(529, 53, 19, 'Medicine', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(530, 53, 20, '১০', '2021-07-02 20:04:57', '2021-07-02 20:04:57'),
(531, 54, 11, 'Nafis', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(532, 54, 12, 'nafis.chow71@gmail.com', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(533, 54, 13, '01626558513', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(534, 54, 14, 'ফেসবুক অ্যাড, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(535, 54, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(536, 54, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(537, 54, 17, '৫০হাজার', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(538, 54, 18, 'FnF Pharmaceuticals. Com', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(539, 54, 19, 'Medicine', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(540, 54, 20, '১০', '2021-07-02 20:04:58', '2021-07-02 20:04:58'),
(541, 55, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(542, 55, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(543, 55, 13, '01609063004', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(544, 55, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(545, 55, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(546, 55, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(547, 55, 17, '৫০হাজার', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(548, 55, 18, 'Moon & Moon kids', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(549, 55, 19, 'Garment kids item & lads', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(550, 55, 20, '১০', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(551, 56, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(552, 56, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(553, 56, 13, '01609063004', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(554, 56, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(555, 56, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(556, 56, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(557, 56, 17, '৫০হাজার', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(558, 56, 18, 'Moon & Moon kids', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(559, 56, 19, 'Garment kids item & lads', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(560, 56, 20, '১০', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(561, 57, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(562, 57, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(563, 57, 13, '01609063004', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(564, 57, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(565, 57, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(566, 57, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(567, 57, 17, '৫০হাজার', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(568, 57, 18, 'Moon & Moon kids', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(569, 57, 19, 'Garment kids item & lads', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(570, 57, 20, '১০', '2021-07-02 20:16:16', '2021-07-02 20:16:16'),
(571, 58, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(572, 58, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(573, 58, 13, '01609063004', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(574, 58, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(575, 58, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(576, 58, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(577, 58, 17, '৫০হাজার', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(578, 58, 18, 'Moon & Moon kids', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(579, 58, 19, 'Garment kids item & lads', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(580, 58, 20, '১০', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(581, 59, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(582, 59, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(583, 59, 13, '01609063004', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(584, 59, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(585, 59, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(586, 59, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(587, 59, 17, '৫০হাজার', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(588, 59, 18, 'Moon & Moon kids', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(589, 59, 19, 'Garment kids item & lads', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(590, 59, 20, '১০', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(591, 60, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(592, 60, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(593, 60, 13, '01609063004', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(594, 60, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(595, 60, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(596, 60, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(597, 60, 17, '৫০হাজার', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(598, 60, 18, 'Moon & Moon kids', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(599, 60, 19, 'Garment kids item & lads', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(600, 60, 20, '১০', '2021-07-02 20:16:17', '2021-07-02 20:16:17'),
(601, 61, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(602, 61, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(603, 61, 13, '01609063004', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(604, 61, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(605, 61, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(606, 61, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(607, 61, 17, '৫০হাজার', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(608, 61, 18, 'Moon & Moon kids', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(609, 61, 19, 'Garment kids item & lads', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(610, 61, 20, '১০', '2021-07-02 20:16:20', '2021-07-02 20:16:20'),
(611, 62, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(612, 62, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(613, 62, 13, '01609063004', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(614, 62, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(615, 62, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(616, 62, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(617, 62, 17, '৫০হাজার', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(618, 62, 18, 'Moon & Moon kids', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(619, 62, 19, 'Garment kids item & lads', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(620, 62, 20, '১০', '2021-07-02 20:16:21', '2021-07-02 20:16:21'),
(621, 63, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(622, 63, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(623, 63, 13, '01609063004', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(624, 63, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(625, 63, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(626, 63, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(627, 63, 17, '৫০হাজার', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(628, 63, 18, 'Moon & Moon kids', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(629, 63, 19, 'Garment kids item & lads', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(630, 63, 20, '১০', '2021-07-02 20:16:22', '2021-07-02 20:16:22'),
(631, 64, 11, 'মো:আব্দুর রাজ্জাক', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(632, 64, 12, 'abdurrazzaque2222@gmail.com', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(633, 64, 13, '01609063004', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(634, 64, 14, 'ফেসবুক অ্যাড', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(635, 64, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(636, 64, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(637, 64, 17, '৫০হাজার', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(638, 64, 18, 'Moon & Moon kids', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(639, 64, 19, 'Garment kids item & lads', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(640, 64, 20, '১০', '2021-07-02 20:16:23', '2021-07-02 20:16:23'),
(641, 65, 11, 'আব্দুল্লাহ আল মামুন', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(642, 65, 12, 'mamunmn@gmail.com', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(643, 65, 13, '০১৭১১১৮৬৭৮৭', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(644, 65, 14, 'কোনোটিই না', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(645, 65, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(646, 65, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(647, 65, 17, '৫০হাজার', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(648, 65, 18, 'spicyhealthcaretea', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(649, 65, 19, 'spicy health care tea', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(650, 65, 20, '১০', '2021-07-02 20:46:28', '2021-07-02 20:46:28'),
(651, 66, 11, 'আব্দুল্লাহ আল মামুন', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(652, 66, 12, 'mamunmn@gmail.com', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(653, 66, 13, '০১৭১১১৮৬৭৮৭', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(654, 66, 14, 'কোনোটিই না', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(655, 66, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(656, 66, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(657, 66, 17, '৫০হাজার', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(658, 66, 18, 'spicyhealthcaretea', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(659, 66, 19, 'spicy health care tea', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(660, 66, 20, '১০', '2021-07-02 20:46:30', '2021-07-02 20:46:30'),
(661, 67, 11, 'Md Tamim Hasan', '2021-07-02 21:10:56', '2021-07-02 21:10:56'),
(662, 67, 12, 'tamim18500@gmail.com', '2021-07-02 21:10:56', '2021-07-02 21:10:56'),
(663, 67, 13, '01734191834', '2021-07-02 21:10:56', '2021-07-02 21:10:56'),
(664, 67, 14, 'কোনোটিই না', '2021-07-02 21:10:56', '2021-07-02 21:10:56'),
(665, 67, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।', '2021-07-02 21:10:56', '2021-07-02 21:10:56'),
(666, 67, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 21:10:56', '2021-07-02 21:10:56'),
(667, 67, 17, '৫ লাখ+', '2021-07-02 21:10:56', '2021-07-02 21:10:56'),
(668, 67, 18, 'Arcane', '2021-07-02 21:10:57', '2021-07-02 21:10:57'),
(669, 67, 19, 'mens Denim pants', '2021-07-02 21:10:57', '2021-07-02 21:10:57'),
(670, 67, 20, '১০', '2021-07-02 21:10:57', '2021-07-02 21:10:57'),
(671, 68, 11, 'Md Tamim Hasan', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(672, 68, 12, 'tamim18500@gmail.com', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(673, 68, 13, '01734191834', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(674, 68, 14, 'কোনোটিই না', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(675, 68, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(676, 68, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(677, 68, 17, '৫ লাখ+', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(678, 68, 18, 'Arcane', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(679, 68, 19, 'mens Denim pants', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(680, 68, 20, '১০', '2021-07-02 21:10:58', '2021-07-02 21:10:58'),
(681, 69, 11, 'Md Tamim Hasan', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(682, 69, 12, 'tamim18500@gmail.com', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(683, 69, 13, '01734191834', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(684, 69, 14, 'কোনোটিই না', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(685, 69, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(686, 69, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(687, 69, 17, '৫ লাখ+', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(688, 69, 18, 'Arcane', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(689, 69, 19, 'mens Denim pants', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(690, 69, 20, '১০', '2021-07-02 21:10:59', '2021-07-02 21:10:59'),
(691, 70, 11, 'Md Tamim Hasan', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(692, 70, 12, 'tamim18500@gmail.com', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(693, 70, 13, '01734191834', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(694, 70, 14, 'কোনোটিই না', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(695, 70, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(696, 70, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(697, 70, 17, '৫ লাখ+', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(698, 70, 18, 'Arcane', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(699, 70, 19, 'mens Denim pants', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(700, 70, 20, '৯', '2021-07-02 21:11:01', '2021-07-02 21:11:01'),
(701, 71, 11, 'Md Tamim Hasan', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(702, 71, 12, 'tamim18500@gmail.com', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(703, 71, 13, '01734191834', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(704, 71, 14, 'কোনোটিই না', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(705, 71, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(706, 71, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(707, 71, 17, '৫ লাখ+', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(708, 71, 18, 'Arcane', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(709, 71, 19, 'mens Denim pants', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(710, 71, 20, '১০', '2021-07-02 21:11:03', '2021-07-02 21:11:03'),
(711, 72, 11, 'Rafi Ahmed', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(712, 72, 12, '1621555@iub.edu.bd', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(713, 72, 13, '01744-232346', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(714, 72, 14, 'কোনোটিই না', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(715, 72, 15, 'কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(716, 72, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(717, 72, 17, '৫০ হাজার- ১ লাখ', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(718, 72, 18, 'Opaikar.com', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(719, 72, 19, 'Wholesale', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(720, 72, 20, '১০', '2021-07-02 21:21:06', '2021-07-02 21:21:06'),
(721, 73, 11, 'Abjol Hossen', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(722, 73, 12, 'abcdbcefg1@gmail.com', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(723, 73, 13, '01797-475346', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(724, 73, 14, 'ফেসবুক অ্যাড', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(725, 73, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(726, 73, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(727, 73, 17, '৫ লাখ+', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(728, 73, 18, 'Nai', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(729, 73, 19, 'Ecommerce', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(730, 73, 20, '১০', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(731, 74, 11, 'Abjol Hossen', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(732, 74, 12, 'abcdbcefg1@gmail.com', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(733, 74, 13, '01797-475346', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(734, 74, 14, 'ফেসবুক অ্যাড', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(735, 74, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(736, 74, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(737, 74, 17, '৫ লাখ+', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(738, 74, 18, 'Nai', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(739, 74, 19, 'Ecommerce', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(740, 74, 20, '১০', '2021-07-02 21:27:14', '2021-07-02 21:27:14'),
(741, 75, 11, 'Abjol Hossen', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(742, 75, 12, 'abcdbcefg1@gmail.com', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(743, 75, 13, '01797-475346', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(744, 75, 14, 'ফেসবুক অ্যাড', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(745, 75, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(746, 75, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(747, 75, 17, '৫ লাখ+', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(748, 75, 18, 'Nai', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(749, 75, 19, 'Ecommerce', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(750, 75, 20, '১০', '2021-07-02 21:27:15', '2021-07-02 21:27:15'),
(751, 76, 11, 'Abjol Hossen', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(752, 76, 12, 'abcdbcefg1@gmail.com', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(753, 76, 13, '01797-475346', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(754, 76, 14, 'ফেসবুক অ্যাড', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(755, 76, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(756, 76, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(757, 76, 17, '৫ লাখ+', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(758, 76, 18, 'Nai', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(759, 76, 19, 'Ecommerce', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(760, 76, 20, '১০', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(761, 77, 11, 'Abjol Hossen', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(762, 77, 12, 'abcdbcefg1@gmail.com', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(763, 77, 13, '01797-475346', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(764, 77, 14, 'ফেসবুক অ্যাড', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(765, 77, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(766, 77, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(767, 77, 17, '৫ লাখ+', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(768, 77, 18, 'Nai', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(769, 77, 19, 'Ecommerce', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(770, 77, 20, '১০', '2021-07-02 21:27:16', '2021-07-02 21:27:16'),
(771, 78, 11, 'Abjol Hossen', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(772, 78, 12, 'abcdbcefg1@gmail.com', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(773, 78, 13, '01797-475346', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(774, 78, 14, 'ফেসবুক অ্যাড', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(775, 78, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(776, 78, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(777, 78, 17, '৫ লাখ+', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(778, 78, 18, 'Nai', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(779, 78, 19, 'Ecommerce', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(780, 78, 20, '১০', '2021-07-02 21:27:17', '2021-07-02 21:27:17'),
(781, 79, 11, 'MD SHAHNAWAZ', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(782, 79, 12, 'sadisbnm@gmail.com', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(783, 79, 13, '01712874534', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(784, 79, 14, 'ফেসবুক অ্যাড', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(785, 79, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(786, 79, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(787, 79, 17, '৫০হাজার', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(788, 79, 18, 'https://www.facebook.com/Aliffashioncraft/', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(789, 79, 19, 'Women\'s Clothing Store', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(790, 79, 20, '১০', '2021-07-02 22:19:51', '2021-07-02 22:19:51'),
(791, 80, 11, 'Ratna', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(792, 80, 12, 'sabina15yesmin@gmail.com', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(793, 80, 13, '01953662306', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(794, 80, 14, 'ফেসবুক অ্যাড', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(795, 80, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(796, 80, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(797, 80, 17, '৫০হাজার', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(798, 80, 18, 'zarasin shop', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(799, 80, 19, 'clothes, watch,jewelry', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(800, 80, 20, '১০', '2021-07-02 22:51:31', '2021-07-02 22:51:31'),
(801, 81, 11, 'Ratna', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(802, 81, 12, 'sabina15yesmin@gmail.com', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(803, 81, 13, '01953662306', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(804, 81, 14, 'ফেসবুক অ্যাড', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(805, 81, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(806, 81, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(807, 81, 17, '৫০হাজার', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(808, 81, 18, 'zarasin shop', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(809, 81, 19, 'clothes, watch,jewelry', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(810, 81, 20, '১০', '2021-07-02 22:53:02', '2021-07-02 22:53:02'),
(811, 82, 11, 'Ratna', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(812, 82, 12, 'sabina15yesmin@gmail.com', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(813, 82, 13, '01953662306', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(814, 82, 14, 'ফেসবুক অ্যাড', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(815, 82, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(816, 82, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(817, 82, 17, '৫০হাজার', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(818, 82, 18, 'zarasin shop', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(819, 82, 19, 'clothes, watch,jewelry', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(820, 82, 20, '১০', '2021-07-02 22:53:03', '2021-07-02 22:53:03'),
(821, 83, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(822, 83, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(823, 83, 13, '01619020007', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(824, 83, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(825, 83, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(826, 83, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(827, 83, 17, '৫ লাখ+', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(828, 83, 18, 'www.albeliz.com', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(829, 83, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(830, 83, 20, '৭', '2021-07-02 23:04:50', '2021-07-02 23:04:50'),
(831, 84, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(832, 84, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(833, 84, 13, '01619020007', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(834, 84, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(835, 84, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(836, 84, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(837, 84, 17, '৫ লাখ+', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(838, 84, 18, 'www.albeliz.com', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(839, 84, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(840, 84, 20, '৭', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(841, 85, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(842, 85, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(843, 85, 13, '01619020007', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(844, 85, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(845, 85, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(846, 85, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(847, 85, 17, '৫ লাখ+', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(848, 85, 18, 'www.albeliz.com', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(849, 85, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(850, 85, 20, '৭', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(851, 86, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(852, 86, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(853, 86, 13, '01619020007', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(854, 86, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(855, 86, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(856, 86, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:51', '2021-07-02 23:04:51'),
(857, 86, 17, '৫ লাখ+', '2021-07-02 23:04:52', '2021-07-02 23:04:52'),
(858, 86, 18, 'www.albeliz.com', '2021-07-02 23:04:52', '2021-07-02 23:04:52'),
(859, 86, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:52', '2021-07-02 23:04:52'),
(860, 86, 20, '৭', '2021-07-02 23:04:52', '2021-07-02 23:04:52'),
(861, 87, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(862, 87, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(863, 87, 13, '01619020007', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(864, 87, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(865, 87, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(866, 87, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(867, 87, 17, '৫ লাখ+', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(868, 87, 18, 'www.albeliz.com', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(869, 87, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(870, 87, 20, '৭', '2021-07-02 23:04:53', '2021-07-02 23:04:53'),
(871, 88, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(872, 88, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(873, 88, 13, '01619020007', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(874, 88, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(875, 88, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(876, 88, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(877, 88, 17, '৫ লাখ+', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(878, 88, 18, 'www.albeliz.com', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(879, 88, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(880, 88, 20, '৭', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(881, 89, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(882, 89, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(883, 89, 13, '01619020007', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(884, 89, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(885, 89, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(886, 89, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(887, 89, 17, '৫ লাখ+', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(888, 89, 18, 'www.albeliz.com', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(889, 89, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(890, 89, 20, '৬', '2021-07-02 23:04:54', '2021-07-02 23:04:54'),
(891, 90, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(892, 90, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(893, 90, 13, '01619020007', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(894, 90, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(895, 90, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(896, 90, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(897, 90, 17, '৫ লাখ+', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(898, 90, 18, 'www.albeliz.com', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(899, 90, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(900, 90, 20, '১০', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(901, 91, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(902, 91, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(903, 91, 13, '01619020007', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(904, 91, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(905, 91, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(906, 91, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(907, 91, 17, '৫ লাখ+', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(908, 91, 18, 'www.albeliz.com', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(909, 91, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(910, 91, 20, '২', '2021-07-02 23:04:55', '2021-07-02 23:04:55'),
(911, 92, 11, 'Khondoker Idris Ali', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(912, 92, 12, 'kh.ali020007@gmail.com', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(913, 92, 13, '01619020007', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(914, 92, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(915, 92, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(916, 92, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(917, 92, 17, '৫ লাখ+', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(918, 92, 18, 'www.albeliz.com', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(919, 92, 19, 'Multi Vendor e-commerce site', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(920, 92, 20, '২', '2021-07-02 23:04:56', '2021-07-02 23:04:56'),
(921, 93, 11, 'Meharab Rahman', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(922, 93, 12, 'fashionfocusbd.007@gmail.com', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(923, 93, 13, '01622881525', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(924, 93, 14, 'ফেসবুক অ্যাড', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(925, 93, 15, 'নতুন কাস্টমার পাচ্ছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(926, 93, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(927, 93, 17, '৩ লাখ-৫ লাখ', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(928, 93, 18, 'Fashionfocus.net', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(929, 93, 19, 'Shirt, Panjabi, kabli', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(930, 93, 20, '৮', '2021-07-02 23:54:17', '2021-07-02 23:54:17'),
(931, 94, 11, 'Delowar', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(932, 94, 12, 'delowarhossen1727@gmail.com', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(933, 94, 13, '01403185565', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(934, 94, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(935, 94, 15, 'নতুন কাস্টমার পাচ্ছেন না।, কেউ আমাদের চেনে না।', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(936, 94, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(937, 94, 17, '৫০হাজার', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(938, 94, 18, 'Brand DS', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(939, 94, 19, 'Clothe shop', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(940, 94, 20, '১০', '2021-07-03 00:38:03', '2021-07-03 00:38:03'),
(941, 95, 11, 'Enam', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(942, 95, 12, 'enam_reza@yahoo.com', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(943, 95, 13, '01971376666', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(944, 95, 14, 'ফেসবুক অ্যাড', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(945, 95, 15, 'আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(946, 95, 16, 'অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(947, 95, 17, '৫০হাজার', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(948, 95, 18, 'N/A', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(949, 95, 19, 'Gadgets and Home Appliances', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(950, 95, 20, '৮', '2021-07-03 00:39:08', '2021-07-03 00:39:08'),
(951, 96, 11, 'Ibrahim', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(952, 96, 12, 'khan.sba.ibrahim@gmail.com', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(953, 96, 13, '01991342153', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(954, 96, 14, 'ফেসবুক অ্যাড', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(955, 96, 15, 'নতুন কাস্টমার পাচ্ছেন না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(956, 96, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(957, 96, 17, '৫০হাজার', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(958, 96, 18, 'www.laksura.com.bd', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(959, 96, 19, 'All kinds of product', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(960, 96, 20, '১০', '2021-07-03 01:26:55', '2021-07-03 01:26:55'),
(961, 97, 11, 'ফজলে রাব্বী', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(962, 97, 12, 'fazleyrabbi632@gmail.com', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(963, 97, 13, '01785405858', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(964, 97, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(965, 97, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(966, 97, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(967, 97, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(968, 97, 18, 'phoneact.bd', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(969, 97, 19, 'Smartphone Sales', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(970, 97, 20, '১০', '2021-07-03 02:24:25', '2021-07-03 02:24:25'),
(971, 98, 11, 'ফজলে রাব্বী', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(972, 98, 12, 'fazleyrabbi632@gmail.com', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(973, 98, 13, '01785405858', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(974, 98, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(975, 98, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(976, 98, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(977, 98, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(978, 98, 18, 'phoneact.bd', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(979, 98, 19, 'Smartphone Sales', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(980, 98, 20, '১০', '2021-07-03 02:24:26', '2021-07-03 02:24:26'),
(981, 99, 11, 'ফজলে রাব্বী', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(982, 99, 12, 'fazleyrabbi632@gmail.com', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(983, 99, 13, '01785405858', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(984, 99, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(985, 99, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(986, 99, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(987, 99, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(988, 99, 18, 'phoneact.bd', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(989, 99, 19, 'Smartphone Sales', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(990, 99, 20, '১০', '2021-07-03 02:25:33', '2021-07-03 02:25:33'),
(991, 100, 11, 'ফজলে রাব্বী', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(992, 100, 12, 'fazleyrabbi632@gmail.com', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(993, 100, 13, '01785405858', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(994, 100, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(995, 100, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(996, 100, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(997, 100, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(998, 100, 18, 'phoneact.bd', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(999, 100, 19, 'Smartphone Sales', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(1000, 100, 20, '১০', '2021-07-03 02:25:35', '2021-07-03 02:25:35'),
(1001, 101, 11, 'ফজলে রাব্বী', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1002, 101, 12, 'fazleyrabbi632@gmail.com', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1003, 101, 13, '01785405858', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1004, 101, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1005, 101, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1006, 101, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1007, 101, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1008, 101, 18, 'phoneact.bd', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1009, 101, 19, 'Smartphone Sales', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1010, 101, 20, '১০', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1011, 102, 11, 'ফজলে রাব্বী', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1012, 102, 12, 'fazleyrabbi632@gmail.com', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1013, 102, 13, '01785405858', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1014, 102, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-03 02:25:44', '2021-07-03 02:25:44');
INSERT INTO `requester_questions` (`id`, `requester_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(1015, 102, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1016, 102, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1017, 102, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1018, 102, 18, 'phoneact.bd', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1019, 102, 19, 'Smartphone Sales', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1020, 102, 20, '১০', '2021-07-03 02:25:44', '2021-07-03 02:25:44'),
(1021, 103, 11, 'Atiqul hoque', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1022, 103, 12, 'ahmasud98@gmail.com', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1023, 103, 13, '0171040032', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1024, 103, 14, 'ফেসবুক অ্যাড', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1025, 103, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1026, 103, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1027, 103, 17, '৫০হাজার', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1028, 103, 18, 'The uttara Bazar', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1029, 103, 19, 'নিত্য প্রয়োজনীয় পণ্যের হোম ডেলিভারি', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1030, 103, 20, '১০', '2021-07-03 02:38:07', '2021-07-03 02:38:07'),
(1031, 104, 11, 'Md. Sohanur Rahman', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1032, 104, 12, 'sohantech360@gmail.com', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1033, 104, 13, '01315625747', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1034, 104, 14, 'ফেসবুক অ্যাড, এসইও', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1035, 104, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1036, 104, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1037, 104, 17, '৫০হাজার', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1038, 104, 18, 'https://sohanonlineshop.xyz', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1039, 104, 19, 'E-commerce', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1040, 104, 20, '১০', '2021-07-03 03:56:23', '2021-07-03 03:56:23'),
(1041, 105, 11, 'Md.Mohidul Islam', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1042, 105, 12, 'mdmohitruc@gmail.com', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1043, 105, 13, '01737652752', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1044, 105, 14, 'ফেসবুক অ্যাড', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1045, 105, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1046, 105, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1047, 105, 17, '৫০হাজার', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1048, 105, 18, 'মহাদেবপুর বাজারবাড়ি', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1049, 105, 19, 'মোবাইল & মোবাইল এস্কেসরিস', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1050, 105, 20, '১০', '2021-07-03 04:08:38', '2021-07-03 04:08:38'),
(1051, 106, 11, 'Dust', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1052, 106, 12, 'click@gmail.com', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1053, 106, 13, '01912858310', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1054, 106, 14, 'অন্যান্য', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1055, 106, 15, 'ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1056, 106, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1057, 106, 17, '১ লাখ-৩ লাখ', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1058, 106, 18, 'Fuvkhy', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1059, 106, 19, 'Bata', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1060, 106, 20, '১০', '2021-07-03 05:03:05', '2021-07-03 05:03:05'),
(1061, 107, 11, 'Sahidul Haque', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1062, 107, 12, 'artexfurniture2019@gmail.com', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1063, 107, 13, '01712596108', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1064, 107, 14, 'ফেসবুক অ্যাড', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1065, 107, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1066, 107, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1067, 107, 17, '৫০হাজার', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1068, 107, 18, 'Ar tex furniture bd', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1069, 107, 19, 'All furniture sofa bed Almira drasing divan abrithing furniture', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1070, 107, 20, '১০', '2021-07-03 05:34:31', '2021-07-03 05:34:31'),
(1071, 108, 11, 'Sahidul Haque', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1072, 108, 12, 'artexfurniture2019@gmail.com', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1073, 108, 13, '01712596108', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1074, 108, 14, 'ফেসবুক অ্যাড', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1075, 108, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1076, 108, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1077, 108, 17, '৫০হাজার', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1078, 108, 18, 'Ar tex furniture bd', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1079, 108, 19, 'All furniture sofa bed Almira drasing divan abrithing furniture', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1080, 108, 20, '১০', '2021-07-03 05:34:32', '2021-07-03 05:34:32'),
(1081, 109, 11, 'Ershad', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1082, 109, 12, 'a_ershad7@yahoo.com', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1083, 109, 13, '01974466007', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1084, 109, 14, 'ফেসবুক অ্যাড', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1085, 109, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1086, 109, 16, 'বেশি ট্রাফিক পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1087, 109, 17, '১ লাখ-৩ লাখ', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1088, 109, 18, '-', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1089, 109, 19, 'Dress', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1090, 109, 20, '১০', '2021-07-03 06:51:09', '2021-07-03 06:51:09'),
(1091, 110, 11, 'Md. Momenul Islam', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1092, 110, 12, 'momenulimomin@gmail.com', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1093, 110, 13, '01717927236', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1094, 110, 14, 'ফেসবুক অ্যাড, টেলিভিশন, রেডিও', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1095, 110, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1096, 110, 16, 'বেশি লিড পাওয়া, কনভার্সন রেট বাড়ানো', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1097, 110, 17, '৫০হাজার', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1098, 110, 18, 'MMS Media City', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1099, 110, 19, 'Audio & Visual Content', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1100, 110, 20, '১০', '2021-07-03 08:39:20', '2021-07-03 08:39:20'),
(1101, 111, 11, 'Md. Momenul Islam', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1102, 111, 12, 'momenulimomin@gmail.com', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1103, 111, 13, '01717927236', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1104, 111, 14, 'ফেসবুক অ্যাড, টেলিভিশন, রেডিও', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1105, 111, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1106, 111, 16, 'বেশি লিড পাওয়া, কনভার্সন রেট বাড়ানো', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1107, 111, 17, '৫০হাজার', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1108, 111, 18, 'MMS Media City', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1109, 111, 19, 'Audio & Visual Content', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1110, 111, 20, '১০', '2021-07-03 08:39:21', '2021-07-03 08:39:21'),
(1111, 112, 11, 'Md. Momenul Islam', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1112, 112, 12, 'momenulimomin@gmail.com', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1113, 112, 13, '01717927236', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1114, 112, 14, 'ফেসবুক অ্যাড, টেলিভিশন, রেডিও', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1115, 112, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1116, 112, 16, 'বেশি লিড পাওয়া, কনভার্সন রেট বাড়ানো', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1117, 112, 17, '৫০হাজার', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1118, 112, 18, 'MMS Media City', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1119, 112, 19, 'Audio & Visual Content', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1120, 112, 20, '১০', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1121, 113, 11, 'Md. Momenul Islam', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1122, 113, 12, 'momenulimomin@gmail.com', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1123, 113, 13, '01717927236', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1124, 113, 14, 'ফেসবুক অ্যাড, টেলিভিশন, রেডিও', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1125, 113, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1126, 113, 16, 'বেশি লিড পাওয়া, কনভার্সন রেট বাড়ানো', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1127, 113, 17, '৫০হাজার', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1128, 113, 18, 'MMS Media City', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1129, 113, 19, 'Audio & Visual Content', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1130, 113, 20, '১০', '2021-07-03 08:39:22', '2021-07-03 08:39:22'),
(1131, 114, 11, 'Md. Momenul Islam', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1132, 114, 12, 'momenulimomin@gmail.com', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1133, 114, 13, '01717927236', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1134, 114, 14, 'ফেসবুক অ্যাড, টেলিভিশন, রেডিও', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1135, 114, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1136, 114, 16, 'বেশি লিড পাওয়া, কনভার্সন রেট বাড়ানো', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1137, 114, 17, '৫০হাজার', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1138, 114, 18, 'MMS Media City', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1139, 114, 19, 'Audio & Visual Content', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1140, 114, 20, '১০', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1141, 115, 11, 'Md. Momenul Islam', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1142, 115, 12, 'momenulimomin@gmail.com', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1143, 115, 13, '01717927236', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1144, 115, 14, 'ফেসবুক অ্যাড, টেলিভিশন, রেডিও', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1145, 115, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1146, 115, 16, 'বেশি লিড পাওয়া, কনভার্সন রেট বাড়ানো', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1147, 115, 17, '৫০হাজার', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1148, 115, 18, 'MMS Media City', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1149, 115, 19, 'Audio & Visual Content', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1150, 115, 20, '১০', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1151, 116, 11, 'Md. Momenul Islam', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1152, 116, 12, 'momenulimomin@gmail.com', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1153, 116, 13, '01717927236', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1154, 116, 14, 'ফেসবুক অ্যাড, টেলিভিশন, রেডিও', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1155, 116, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1156, 116, 16, 'বেশি লিড পাওয়া, কনভার্সন রেট বাড়ানো', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1157, 116, 17, '৫০হাজার', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1158, 116, 18, 'MMS Media City', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1159, 116, 19, 'Audio & Visual Content', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1160, 116, 20, '১০', '2021-07-03 08:39:23', '2021-07-03 08:39:23'),
(1161, 117, 11, 'ArkovOutfits', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1162, 117, 12, 'arkovoutfits@gmail.com', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1163, 117, 13, '01969249444', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1164, 117, 14, 'ফেসবুক অ্যাড', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1165, 117, 15, 'নতুন কাস্টমার পাচ্ছেন না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1166, 117, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1167, 117, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1168, 117, 18, 'ArkovOutfits', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1169, 117, 19, 'Cloth', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1170, 117, 20, '১', '2021-07-03 08:40:47', '2021-07-03 08:40:47'),
(1171, 118, 11, 'মোঃ মহিবুর রহমান', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1172, 118, 12, 'avijatrikjoy@gmail.com', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1173, 118, 13, '০১৫১৬৭৪৪০১৯', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1174, 118, 14, 'কোনোটিই না', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1175, 118, 15, 'কেউ আমাদের চেনে না।', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1176, 118, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1177, 118, 17, '৫ লাখ+', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1178, 118, 18, 'নেই', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1179, 118, 19, 'ভেরাইটিজ প্রোডাক্ট', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1180, 118, 20, '১০', '2021-07-03 09:18:21', '2021-07-03 09:18:21'),
(1181, 119, 11, 'শারমিলা শারমিন', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1182, 119, 12, 'sharminmost473@gmail.com', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1183, 119, 13, '01721349082', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1184, 119, 14, 'ফেসবুক অ্যাড', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1185, 119, 15, 'নতুন কাস্টমার পাচ্ছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1186, 119, 16, 'বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1187, 119, 17, '৫০হাজার', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1188, 119, 18, 'রংনীড় ফ্যাশন হাউস', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1189, 119, 19, 'শাড়ি থ্রিপিস বেডশিট ওড়না ফ্রেবিক্স', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1190, 119, 20, '১০', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1191, 120, 11, 'শারমিলা শারমিন', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1192, 120, 12, 'sharminmost473@gmail.com', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1193, 120, 13, '01721349082', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1194, 120, 14, 'ফেসবুক অ্যাড', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1195, 120, 15, 'নতুন কাস্টমার পাচ্ছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1196, 120, 16, 'বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1197, 120, 17, '৫০হাজার', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1198, 120, 18, 'রংনীড় ফ্যাশন হাউস', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1199, 120, 19, 'শাড়ি থ্রিপিস বেডশিট ওড়না ফ্রেবিক্স', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1200, 120, 20, '১০', '2021-07-03 15:50:08', '2021-07-03 15:50:08'),
(1201, 121, 1, 'Ferdous', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1202, 121, 2, 'sumon.ece99@gmail.com', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1203, 121, 3, '01718891906', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1204, 121, 4, 'Facebook ads, Google Adwords, SEO', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1205, 121, 5, 'We are not able to get new customers.', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1206, 121, 6, 'Get more traffic', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1207, 121, 7, '50K-100K', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1208, 121, 8, 'jdpcbd.com', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1209, 121, 9, 'Jute Products', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1210, 121, 10, '10', '2021-07-03 16:01:04', '2021-07-03 16:01:04'),
(1211, 122, 1, 'Ferdous', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1212, 122, 2, 'sumon.ece99@gmail.com', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1213, 122, 3, '01718891906', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1214, 122, 4, 'Facebook ads, Google Adwords, SEO', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1215, 122, 5, 'We are not able to get new customers.', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1216, 122, 6, 'Get more traffic', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1217, 122, 7, '50K-100K', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1218, 122, 8, 'jdpcbd.com', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1219, 122, 9, 'Jute Products', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1220, 122, 10, '10', '2021-07-03 16:01:06', '2021-07-03 16:01:06'),
(1221, 123, 11, 'Max dream', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1222, 123, 12, 'lifewin95@gmail.com', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1223, 123, 13, '01715641217', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1224, 123, 14, 'ফেসবুক অ্যাড', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1225, 123, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1226, 123, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1227, 123, 17, '৫০হাজার', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1228, 123, 18, 'Max Dream Fashion', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1229, 123, 19, 'সব ধরনের পোশাক', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1230, 123, 20, '১০', '2021-07-03 16:17:20', '2021-07-03 16:17:20'),
(1231, 124, 11, 'Max dream', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1232, 124, 12, 'lifewin95@gmail.com', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1233, 124, 13, '01715641217', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1234, 124, 14, 'ফেসবুক অ্যাড', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1235, 124, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1236, 124, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1237, 124, 17, '৫০হাজার', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1238, 124, 18, 'Max Dream Fashion', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1239, 124, 19, 'সব ধরনের পোশাক', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1240, 124, 20, '১০', '2021-07-03 16:17:22', '2021-07-03 16:17:22'),
(1241, 125, 11, 'Tanimur Rahman', '2021-07-03 17:43:11', '2021-07-03 17:43:11'),
(1242, 125, 12, 'rahman_tanimur@yahoo.com', '2021-07-03 17:43:11', '2021-07-03 17:43:11'),
(1243, 125, 13, '+8801911965615', '2021-07-03 17:43:11', '2021-07-03 17:43:11'),
(1244, 125, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, অন্যান্য', '2021-07-03 17:43:11', '2021-07-03 17:43:11'),
(1245, 125, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-03 17:43:11', '2021-07-03 17:43:11'),
(1246, 125, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 17:43:11', '2021-07-03 17:43:11'),
(1247, 125, 17, '৫০হাজার', '2021-07-03 17:43:12', '2021-07-03 17:43:12'),
(1248, 125, 18, 'onlinefamilyservice.com', '2021-07-03 17:43:12', '2021-07-03 17:43:12'),
(1249, 125, 19, 'E commerce website', '2021-07-03 17:43:12', '2021-07-03 17:43:12'),
(1250, 125, 20, '১০', '2021-07-03 17:43:12', '2021-07-03 17:43:12'),
(1251, 126, 11, 'Rokibul Hasan', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1252, 126, 12, 'kishorrony33@gmail.com', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1253, 126, 13, '01304457883', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1254, 126, 14, 'ফেসবুক অ্যাড', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1255, 126, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1256, 126, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1257, 126, 17, '৫০হাজার', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1258, 126, 18, 'Kabirshop', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1259, 126, 19, 'Women dress,Tshirt,Watch', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1260, 126, 20, '১০', '2021-07-03 17:52:37', '2021-07-03 17:52:37'),
(1261, 127, 11, 'Easin', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1262, 127, 12, 'vtkeasin07@gmail.com', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1263, 127, 13, '01721007997', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1264, 127, 14, 'ফেসবুক অ্যাড', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1265, 127, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1266, 127, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1267, 127, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1268, 127, 18, 'Men fashion', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1269, 127, 19, 'Dress', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1270, 127, 20, '৬', '2021-07-03 18:03:15', '2021-07-03 18:03:15'),
(1271, 128, 11, 'Asadul Haque', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1272, 128, 12, 'asadul.haque344@gmail.com', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1273, 128, 13, '01734858513', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1274, 128, 14, 'ফেসবুক অ্যাড, এসইও', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1275, 128, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1276, 128, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1277, 128, 17, '৩ লাখ-৫ লাখ', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1278, 128, 18, 'N/A', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1279, 128, 19, 'Lift', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1280, 128, 20, '১০', '2021-07-03 19:24:48', '2021-07-03 19:24:48'),
(1281, 129, 11, 'Md Shakil Mridha', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1282, 129, 12, 'odommoshakil@gmail.com', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1283, 129, 13, '01712974536', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1284, 129, 14, 'ফেসবুক অ্যাড', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1285, 129, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1286, 129, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1287, 129, 17, '১ লাখ-৩ লাখ', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1288, 129, 18, 'Dress point', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1289, 129, 19, 'Dress', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1290, 129, 20, '১০', '2021-07-03 19:28:28', '2021-07-03 19:28:28'),
(1291, 130, 11, 'Al mamun', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1292, 130, 12, 'almamunsardar5285@gimaigmail.com', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1293, 130, 13, '01724024372', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1294, 130, 14, 'কোনোটিই না', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1295, 130, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1296, 130, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1297, 130, 17, '৫ লাখ+', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1298, 130, 18, 'Zaber international', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1299, 130, 19, 'কন্সট্রাকশন ও সাপলাই', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1300, 130, 20, '৯', '2021-07-03 19:33:21', '2021-07-03 19:33:21'),
(1301, 131, 11, 'Amdadul Haque', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1302, 131, 12, 'amdadulh590@gmail.com', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1303, 131, 13, '01826759279', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1304, 131, 14, 'কোনোটিই না', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1305, 131, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1306, 131, 16, 'ভালো লিড পাওয়া, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1307, 131, 17, '৫০হাজার', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1308, 131, 18, 'beijinginternational', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1309, 131, 19, 'Imported Any kind of product', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1310, 131, 20, '১০', '2021-07-03 19:52:33', '2021-07-03 19:52:33'),
(1311, 132, 11, 'Biz World International', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1312, 132, 12, 'biz.world.int@gmail.com', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1313, 132, 13, '+8801827815603', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1314, 132, 14, 'ফেসবুক অ্যাড', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1315, 132, 15, 'আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1316, 132, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1317, 132, 17, '৫০ হাজার- ১ লাখ', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1318, 132, 18, 'www.bizworld.com.bd', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1319, 132, 19, 'Kitchen & Household', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1320, 132, 20, '১০', '2021-07-03 20:58:41', '2021-07-03 20:58:41'),
(1321, 133, 11, 'Mamun', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1322, 133, 12, 'munna6964@gmail.com', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1323, 133, 13, '01533621462', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1324, 133, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1325, 133, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1326, 133, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1327, 133, 17, '৫০হাজার', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1328, 133, 18, 'Dream modesty fashion', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1329, 133, 19, 'Woman\'s clothes', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1330, 133, 20, '৯', '2021-07-03 21:13:00', '2021-07-03 21:13:00'),
(1331, 134, 11, 'Mamun', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1332, 134, 12, 'munna6964@gmail.com', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1333, 134, 13, '01533621462', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1334, 134, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1335, 134, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1336, 134, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1337, 134, 17, '৫০হাজার', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1338, 134, 18, 'Dream modesty fashion', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1339, 134, 19, 'Woman\'s clothes', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1340, 134, 20, '৯', '2021-07-03 21:13:01', '2021-07-03 21:13:01'),
(1341, 135, 11, 'Mamun', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1342, 135, 12, 'munna6964@gmail.com', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1343, 135, 13, '01533621462', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1344, 135, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1345, 135, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1346, 135, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1347, 135, 17, '৫০হাজার', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1348, 135, 18, 'Dream modesty fashion', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1349, 135, 19, 'Woman\'s clothes', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1350, 135, 20, '৯', '2021-07-03 21:13:03', '2021-07-03 21:13:03'),
(1351, 136, 11, 'Mamun', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1352, 136, 12, 'munna6964@gmail.com', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1353, 136, 13, '01533621462', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1354, 136, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1355, 136, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1356, 136, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1357, 136, 17, '৫০হাজার', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1358, 136, 18, 'Dream modesty fashion', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1359, 136, 19, 'Woman\'s clothes', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1360, 136, 20, '৯', '2021-07-03 21:13:05', '2021-07-03 21:13:05'),
(1361, 137, 11, 'Mamun', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1362, 137, 12, 'munna6964@gmail.com', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1363, 137, 13, '01533621462', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1364, 137, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1365, 137, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1366, 137, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1367, 137, 17, '৫০হাজার', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1368, 137, 18, 'Dream modesty fashion', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1369, 137, 19, 'Woman\'s clothes', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1370, 137, 20, '১০', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1371, 138, 11, 'Mamun', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1372, 138, 12, 'munna6964@gmail.com', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1373, 138, 13, '01533621462', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1374, 138, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1375, 138, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1376, 138, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1377, 138, 17, '৫০হাজার', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1378, 138, 18, 'Dream modesty fashion', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1379, 138, 19, 'Woman\'s clothes', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1380, 138, 20, '১০', '2021-07-03 21:13:08', '2021-07-03 21:13:08'),
(1381, 139, 11, 'Mamun', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1382, 139, 12, 'munna6964@gmail.com', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1383, 139, 13, '01533621462', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1384, 139, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1385, 139, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1386, 139, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1387, 139, 17, '৫০হাজার', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1388, 139, 18, 'Dream modesty fashion', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1389, 139, 19, 'Woman\'s clothes', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1390, 139, 20, '১০', '2021-07-03 21:13:09', '2021-07-03 21:13:09'),
(1391, 140, 11, 'Mamun', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1392, 140, 12, 'munna6964@gmail.com', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1393, 140, 13, '01533621462', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1394, 140, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1395, 140, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1396, 140, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1397, 140, 17, '৫০হাজার', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1398, 140, 18, 'Dream modesty fashion', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1399, 140, 19, 'Woman\'s clothes', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1400, 140, 20, '৯', '2021-07-03 21:13:11', '2021-07-03 21:13:11'),
(1401, 141, 11, 'Mamun', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1402, 141, 12, 'munna6964@gmail.com', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1403, 141, 13, '01533621462', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1404, 141, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1405, 141, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1406, 141, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1407, 141, 17, '৫০হাজার', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1408, 141, 18, 'Dream modesty fashion', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1409, 141, 19, 'Woman\'s clothes', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1410, 141, 20, '৯', '2021-07-03 21:13:27', '2021-07-03 21:13:27'),
(1411, 142, 11, 'Mamun', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1412, 142, 12, 'munna6964@gmail.com', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1413, 142, 13, '01533621462', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1414, 142, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1415, 142, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1416, 142, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1417, 142, 17, '৫০হাজার', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1418, 142, 18, 'Dream modesty fashion', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1419, 142, 19, 'Woman\'s clothes', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1420, 142, 20, '৯', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1421, 143, 11, 'Mamun', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1422, 143, 12, 'munna6964@gmail.com', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1423, 143, 13, '01533621462', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1424, 143, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1425, 143, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1426, 143, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1427, 143, 17, '৫০হাজার', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1428, 143, 18, 'Dream modesty fashion', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1429, 143, 19, 'Woman\'s clothes', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1430, 143, 20, '৯', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1431, 144, 11, 'Mamun', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1432, 144, 12, 'munna6964@gmail.com', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1433, 144, 13, '01533621462', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1434, 144, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1435, 144, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1436, 144, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1437, 144, 17, '৫০হাজার', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1438, 144, 18, 'Dream modesty fashion', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1439, 144, 19, 'Woman\'s clothes', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1440, 144, 20, '৯', '2021-07-03 21:13:31', '2021-07-03 21:13:31'),
(1441, 145, 11, 'Mamun', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1442, 145, 12, 'munna6964@gmail.com', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1443, 145, 13, '01533621462', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1444, 145, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1445, 145, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1446, 145, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1447, 145, 17, '৫০হাজার', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1448, 145, 18, 'Dream modesty fashion', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1449, 145, 19, 'Woman\'s clothes', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1450, 145, 20, '৯', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1451, 146, 11, 'Mamun', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1452, 146, 12, 'munna6964@gmail.com', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1453, 146, 13, '01533621462', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1454, 146, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1455, 146, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1456, 146, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1457, 146, 17, '৫০হাজার', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1458, 146, 18, 'Dream modesty fashion', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1459, 146, 19, 'Woman\'s clothes', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1460, 146, 20, '৯', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1461, 147, 11, 'Mamun', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1462, 147, 12, 'munna6964@gmail.com', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1463, 147, 13, '01533621462', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1464, 147, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1465, 147, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1466, 147, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1467, 147, 17, '৫০হাজার', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1468, 147, 18, 'Dream modesty fashion', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1469, 147, 19, 'Woman\'s clothes', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1470, 147, 20, '৯', '2021-07-03 21:13:32', '2021-07-03 21:13:32'),
(1471, 148, 11, 'Tofazzol Hossain Raha', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1472, 148, 12, 'rahadhossain2834@gmail.com', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1473, 148, 13, '01732805609', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1474, 148, 14, 'টেলিভিশন', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1475, 148, 15, 'কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1476, 148, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1477, 148, 17, '৫০হাজার', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1478, 148, 18, 'Giash telecom', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1479, 148, 19, 'Tale com', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1480, 148, 20, '১০', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1481, 149, 11, 'Tofazzol Hossain Raha', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1482, 149, 12, 'rahadhossain2834@gmail.com', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1483, 149, 13, '01732805609', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1484, 149, 14, 'টেলিভিশন', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1485, 149, 15, 'কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1486, 149, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1487, 149, 17, '৫০হাজার', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1488, 149, 18, 'Giash telecom', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1489, 149, 19, 'Tale com', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1490, 149, 20, '১০', '2021-07-03 21:22:52', '2021-07-03 21:22:52'),
(1491, 150, 11, 'Tofazzol Hossain Raha', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1492, 150, 12, 'rahadhossain2834@gmail.com', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1493, 150, 13, '01732805609', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1494, 150, 14, 'টেলিভিশন', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1495, 150, 15, 'কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1496, 150, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1497, 150, 17, '৫০হাজার', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1498, 150, 18, 'Giash telecom', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1499, 150, 19, 'Tale com', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1500, 150, 20, '১০', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1501, 151, 11, 'Tofazzol Hossain Raha', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1502, 151, 12, 'rahadhossain2834@gmail.com', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1503, 151, 13, '01732805609', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1504, 151, 14, 'টেলিভিশন', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1505, 151, 15, 'কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1506, 151, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1507, 151, 17, '৫০হাজার', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1508, 151, 18, 'Giash telecom', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1509, 151, 19, 'Tale com', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1510, 151, 20, '১০', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1511, 152, 11, 'Tofazzol Hossain Raha', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1512, 152, 12, 'rahadhossain2834@gmail.com', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1513, 152, 13, '01732805609', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1514, 152, 14, 'টেলিভিশন', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1515, 152, 15, 'কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1516, 152, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1517, 152, 17, '৫০হাজার', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1518, 152, 18, 'Giash telecom', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1519, 152, 19, 'Tale com', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1520, 152, 20, '১০', '2021-07-03 21:22:53', '2021-07-03 21:22:53'),
(1521, 153, 11, 'Tofazzol Hossain Raha', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1522, 153, 12, 'rahadhossain2834@gmail.com', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1523, 153, 13, '01732805609', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1524, 153, 14, 'টেলিভিশন', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1525, 153, 15, 'কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1526, 153, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1527, 153, 17, '৫০হাজার', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1528, 153, 18, 'Giash telecom', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1529, 153, 19, 'Tale com', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1530, 153, 20, '১০', '2021-07-03 21:22:54', '2021-07-03 21:22:54'),
(1531, 154, 11, 'Rakib Hasan', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1532, 154, 12, 'rkbhsn87@gmail.com', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1533, 154, 13, '01632448024', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1534, 154, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1535, 154, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1536, 154, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1537, 154, 17, '৫০হাজার', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1538, 154, 18, 'shulovbazar.xyz', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1539, 154, 19, 'All Products', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1540, 154, 20, '১০', '2021-07-03 21:27:00', '2021-07-03 21:27:00'),
(1541, 155, 11, 'Nitu', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1542, 155, 12, 'tahminaneetu471@gmail.com', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1543, 155, 13, '01716319494', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1544, 155, 14, 'ফেসবুক অ্যাড', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1545, 155, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1546, 155, 16, 'ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1547, 155, 17, '৫০হাজার', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1548, 155, 18, 'NN collection', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1549, 155, 19, 'Ladies dress', '2021-07-03 21:49:53', '2021-07-03 21:49:53');
INSERT INTO `requester_questions` (`id`, `requester_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(1550, 155, 20, '১০', '2021-07-03 21:49:53', '2021-07-03 21:49:53'),
(1551, 156, 11, 'shahin', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1552, 156, 12, 'btex.fashion71@gmail.com', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1553, 156, 13, '01716884083', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1554, 156, 14, 'এসইও', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1555, 156, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1556, 156, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1557, 156, 17, '৫০হাজার', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1558, 156, 18, 'Mercury', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1559, 156, 19, 'Cloth', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1560, 156, 20, '১০', '2021-07-03 22:00:01', '2021-07-03 22:00:01'),
(1561, 157, 11, 'HASAN', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1562, 157, 12, 'khandakar.hasaan@gmail.com', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1563, 157, 13, '01756858907', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1564, 157, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1565, 157, 15, 'আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1566, 157, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1567, 157, 17, '১ লাখ-৩ লাখ', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1568, 157, 18, 'mayush', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1569, 157, 19, 'Eyewear', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1570, 157, 20, '১০', '2021-07-03 22:06:39', '2021-07-03 22:06:39'),
(1571, 158, 11, 'HASAN', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1572, 158, 12, 'khandakar.hasaan@gmail.com', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1573, 158, 13, '01756858907', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1574, 158, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1575, 158, 15, 'আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1576, 158, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1577, 158, 17, '১ লাখ-৩ লাখ', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1578, 158, 18, 'mayush', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1579, 158, 19, 'Eyewear', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1580, 158, 20, '১০', '2021-07-03 22:06:41', '2021-07-03 22:06:41'),
(1581, 159, 11, 'Fabric shirt', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1582, 159, 12, 'mdmaruf7014@gmail.com', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1583, 159, 13, '01610677039', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1584, 159, 14, 'ফেসবুক অ্যাড', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1585, 159, 15, 'নতুন কাস্টমার পাচ্ছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1586, 159, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1587, 159, 17, '৫০হাজার', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1588, 159, 18, 'Fabric shirt', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1589, 159, 19, 'Shirt', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1590, 159, 20, '৯', '2021-07-03 22:12:37', '2021-07-03 22:12:37'),
(1591, 160, 11, 'Fabric shirt', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1592, 160, 12, 'mdmaruf7014@gmail.com', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1593, 160, 13, '01610677039', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1594, 160, 14, 'ফেসবুক অ্যাড', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1595, 160, 15, 'নতুন কাস্টমার পাচ্ছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1596, 160, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1597, 160, 17, '৫০হাজার', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1598, 160, 18, 'Fabric shirt', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1599, 160, 19, 'Shirt', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1600, 160, 20, '৯', '2021-07-03 22:12:38', '2021-07-03 22:12:38'),
(1601, 161, 11, 'ariful islam', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1602, 161, 12, 'arifcse96@gmail.com', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1603, 161, 13, '01740112631', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1604, 161, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1605, 161, 15, 'বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1606, 161, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1607, 161, 17, '১ লাখ-৩ লাখ', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1608, 161, 18, 'aloronshop.com', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1609, 161, 19, 'food item, fashion, electronic', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1610, 161, 20, '১০', '2021-07-04 00:11:45', '2021-07-04 00:11:45'),
(1611, 162, 11, 'Mohammad Hannan Sikder', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1612, 162, 12, 'hannanhp6@gmail.com', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1613, 162, 13, '01738644426', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1614, 162, 14, 'কোনোটিই না', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1615, 162, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1616, 162, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1617, 162, 17, '৫ লাখ+', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1618, 162, 18, 'No', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1619, 162, 19, 'Mobile phone', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1620, 162, 20, '১০', '2021-07-04 00:33:01', '2021-07-04 00:33:01'),
(1621, 163, 11, 'Mobaraq Hossain', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1622, 163, 12, 'hossainmobarok759@gmail.com', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1623, 163, 13, '01611811759', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1624, 163, 14, 'অন্যান্য', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1625, 163, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1626, 163, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1627, 163, 17, '৫০হাজার', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1628, 163, 18, 'Rekha Rahman trade link', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1629, 163, 19, 'প্রোডাক্ট', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1630, 163, 20, '১০', '2021-07-04 00:47:43', '2021-07-04 00:47:43'),
(1631, 164, 11, 'Mobaraq Hossain', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1632, 164, 12, 'hossainmobarok759@gmail.com', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1633, 164, 13, '01611811759', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1634, 164, 14, 'অন্যান্য', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1635, 164, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1636, 164, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1637, 164, 17, '৫০হাজার', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1638, 164, 18, 'Rekha Rahman trade link', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1639, 164, 19, 'প্রোডাক্ট', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1640, 164, 20, '১০', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1641, 165, 11, 'Mobaraq Hossain', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1642, 165, 12, 'hossainmobarok759@gmail.com', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1643, 165, 13, '01611811759', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1644, 165, 14, 'অন্যান্য', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1645, 165, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1646, 165, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1647, 165, 17, '৫০হাজার', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1648, 165, 18, 'Rekha Rahman trade link', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1649, 165, 19, 'প্রোডাক্ট', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1650, 165, 20, '১০', '2021-07-04 00:47:44', '2021-07-04 00:47:44'),
(1651, 166, 11, 'Mobaraq Hossain', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1652, 166, 12, 'hossainmobarok759@gmail.com', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1653, 166, 13, '01611811759', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1654, 166, 14, 'অন্যান্য', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1655, 166, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1656, 166, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1657, 166, 17, '৫০হাজার', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1658, 166, 18, 'Rekha Rahman trade link', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1659, 166, 19, 'প্রোডাক্ট', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1660, 166, 20, '১০', '2021-07-04 00:47:46', '2021-07-04 00:47:46'),
(1661, 167, 11, 'Mobaraq Hossain', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1662, 167, 12, 'hossainmobarok759@gmail.com', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1663, 167, 13, '01611811759', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1664, 167, 14, 'অন্যান্য', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1665, 167, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1666, 167, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1667, 167, 17, '৫০হাজার', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1668, 167, 18, 'Rekha Rahman trade link', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1669, 167, 19, 'প্রোডাক্ট', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1670, 167, 20, '১০', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1671, 168, 11, 'Mobaraq Hossain', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1672, 168, 12, 'hossainmobarok759@gmail.com', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1673, 168, 13, '01611811759', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1674, 168, 14, 'অন্যান্য', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1675, 168, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1676, 168, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1677, 168, 17, '৫০হাজার', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1678, 168, 18, 'Rekha Rahman trade link', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1679, 168, 19, 'প্রোডাক্ট', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1680, 168, 20, '১০', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1681, 169, 11, 'Mobaraq Hossain', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1682, 169, 12, 'hossainmobarok759@gmail.com', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1683, 169, 13, '01611811759', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1684, 169, 14, 'অন্যান্য', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1685, 169, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1686, 169, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1687, 169, 17, '৫০হাজার', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1688, 169, 18, 'Rekha Rahman trade link', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1689, 169, 19, 'প্রোডাক্ট', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1690, 169, 20, '১০', '2021-07-04 00:48:35', '2021-07-04 00:48:35'),
(1691, 170, 11, 'Mobaraq Hossain', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1692, 170, 12, 'hossainmobarok759@gmail.com', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1693, 170, 13, '01611811759', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1694, 170, 14, 'অন্যান্য', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1695, 170, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1696, 170, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1697, 170, 17, '৫০হাজার', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1698, 170, 18, 'Rekha Rahman trade link', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1699, 170, 19, 'প্রোডাক্ট', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1700, 170, 20, '১০', '2021-07-04 00:48:36', '2021-07-04 00:48:36'),
(1701, 171, 11, 'Jahirul Islam', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1702, 171, 12, 'mustofa017900@gmail.com', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1703, 171, 13, '01701034920', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1704, 171, 14, 'ফেসবুক অ্যাড', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1705, 171, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1706, 171, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1707, 171, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1708, 171, 18, 'www.ajkarbazarbd.com', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1709, 171, 19, 'Fashion- healt -Organic Food', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1710, 171, 20, '১০', '2021-07-04 00:57:04', '2021-07-04 00:57:04'),
(1711, 172, 11, 'Md. Nizam Uddin', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1712, 172, 12, 'tnizam79@gmail.com', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1713, 172, 13, '01718344293', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1714, 172, 14, 'ফেসবুক অ্যাড', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1715, 172, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1716, 172, 16, 'বেশি ট্রাফিক পাওয়া', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1717, 172, 17, '৫০হাজার', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1718, 172, 18, 'Taseen trading', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1719, 172, 19, 'N 95 mask', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1720, 172, 20, '১০', '2021-07-04 01:26:18', '2021-07-04 01:26:18'),
(1721, 173, 11, 'Khairul Basher Suman', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1722, 173, 12, 'khairulbasher2012@gmail.com', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1723, 173, 13, '01811799922', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1724, 173, 14, 'ফেসবুক অ্যাড', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1725, 173, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1726, 173, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1727, 173, 17, '৫০হাজার', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1728, 173, 18, 'Hello Kiddo', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1729, 173, 19, 'product', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1730, 173, 20, '১০', '2021-07-04 01:29:14', '2021-07-04 01:29:14'),
(1731, 174, 1, 'abir', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1732, 174, 2, 'abir000029@gmail.com', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1733, 174, 3, 'dfhdra', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1734, 174, 4, 'Television', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1735, 174, 5, 'Revenues are OK but profitability sucks.', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1736, 174, 6, 'Increase conversion rate', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1737, 174, 7, '500K+', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1738, 174, 8, 'fasefaa', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1739, 174, 9, 'hh', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1740, 174, 10, '5', '2021-07-04 01:53:10', '2021-07-04 01:53:10'),
(1741, 175, 11, 'Md.jillur rahman', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1742, 175, 12, 'jillurrahaman768@gmail.com', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1743, 175, 13, '01744919454', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1744, 175, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1745, 175, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1746, 175, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1747, 175, 17, '৫০হাজার', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1748, 175, 18, 'Rahman & sorker associates', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1749, 175, 19, 'Income tex', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1750, 175, 20, '১০', '2021-07-04 01:54:23', '2021-07-04 01:54:23'),
(1751, 176, 11, 'Md.jillur rahman', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1752, 176, 12, 'jillurrahaman768@gmail.com', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1753, 176, 13, '01744919454', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1754, 176, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1755, 176, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1756, 176, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1757, 176, 17, '৫০হাজার', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1758, 176, 18, 'Rahman & sorker associates', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1759, 176, 19, 'Income tex', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1760, 176, 20, '১০', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1761, 177, 11, 'Md.jillur rahman', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1762, 177, 12, 'jillurrahaman768@gmail.com', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1763, 177, 13, '01744919454', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1764, 177, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1765, 177, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1766, 177, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1767, 177, 17, '৫০হাজার', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1768, 177, 18, 'Rahman & sorker associates', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1769, 177, 19, 'Income tex', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1770, 177, 20, '১০', '2021-07-04 01:55:41', '2021-07-04 01:55:41'),
(1771, 178, 11, 'Md.jillur rahman', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1772, 178, 12, 'jillurrahaman768@gmail.com', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1773, 178, 13, '01744919454', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1774, 178, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1775, 178, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1776, 178, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1777, 178, 17, '৫০হাজার', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1778, 178, 18, 'Rahman & sorker associates', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1779, 178, 19, 'Income tex', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1780, 178, 20, '১০', '2021-07-04 01:56:12', '2021-07-04 01:56:12'),
(1781, 179, 11, 'Shazzad Hossain', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1782, 179, 12, 'emon.dcc16@gmail.com', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1783, 179, 13, '01685905970', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1784, 179, 14, 'ফেসবুক অ্যাড', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1785, 179, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1786, 179, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1787, 179, 17, '৫০হাজার', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1788, 179, 18, 'Gantlema Bangladesh', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1789, 179, 19, 'Man\' items & food items', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1790, 179, 20, '১০', '2021-07-04 02:07:25', '2021-07-04 02:07:25'),
(1791, 180, 11, 'Mahabub Ahmed', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1792, 180, 12, 'mzdenim777@gmail.com', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1793, 180, 13, '01886511156', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1794, 180, 14, 'ফেসবুক অ্যাড', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1795, 180, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1796, 180, 16, 'অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1797, 180, 17, '৫০হাজার', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1798, 180, 18, 'Mz denim', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1799, 180, 19, 'Men\'s clothing', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1800, 180, 20, '১', '2021-07-04 04:08:40', '2021-07-04 04:08:40'),
(1801, 181, 11, 'মোঃ ওমর ফারুক', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1802, 181, 12, 'autotltd@gmail.com', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1803, 181, 13, '01970897044', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1804, 181, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1805, 181, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1806, 181, 16, 'ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1807, 181, 17, '৫০হাজার', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1808, 181, 18, 'https://www.facebook.com/profile.php?id=100000275242372', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1809, 181, 19, 'গার্মেন্টস + বিল্ডিং এর সরঞ্জাম', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1810, 181, 20, '১০', '2021-07-04 04:13:32', '2021-07-04 04:13:32'),
(1811, 182, 11, 'মোঃ ওমর ফারুক', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1812, 182, 12, 'autotltd@gmail.com', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1813, 182, 13, '01970897044', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1814, 182, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1815, 182, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1816, 182, 16, 'ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1817, 182, 17, '৫০হাজার', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1818, 182, 18, 'https://www.facebook.com/profile.php?id=100000275242372', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1819, 182, 19, 'গার্মেন্টস + বিল্ডিং এর সরঞ্জাম', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1820, 182, 20, '১০', '2021-07-04 04:13:33', '2021-07-04 04:13:33'),
(1821, 183, 11, 'MD:Nasir uddin', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1822, 183, 12, 'mdnasiruddin1611235957@gmail.com', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1823, 183, 13, '01636888385', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1824, 183, 14, 'ফেসবুক অ্যাড', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1825, 183, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1826, 183, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1827, 183, 17, '৫০হাজার', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1828, 183, 18, 'শাওন গ্লাস হাউজ', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1829, 183, 19, 'মিরর ফ্রেম', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1830, 183, 20, '১০', '2021-07-04 05:09:28', '2021-07-04 05:09:28'),
(1831, 184, 11, 'MD Masud', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1832, 184, 12, 'mdm643909@gmail.com', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1833, 184, 13, '01959118680', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1834, 184, 14, 'ফেসবুক অ্যাড', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1835, 184, 15, 'নতুন কাস্টমার পাচ্ছেন না।, কেউ আমাদের চেনে না।', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1836, 184, 16, 'বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1837, 184, 17, '৫০হাজার', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1838, 184, 18, 'www.foodond.com', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1839, 184, 19, 'Food delivery service', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1840, 184, 20, '১০', '2021-07-04 05:40:03', '2021-07-04 05:40:03'),
(1841, 185, 11, 'Mohammad Kamal Uddin', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1842, 185, 12, 'kamalkingstar1@gmail.com', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1843, 185, 13, '01716499929', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1844, 185, 14, 'ফেসবুক অ্যাড', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1845, 185, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1846, 185, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1847, 185, 17, '১ লাখ-৩ লাখ', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1848, 185, 18, 'Mi Store Electra, Mirpur 02', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1849, 185, 19, 'Mobile', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1850, 185, 20, '১০', '2021-07-04 05:46:24', '2021-07-04 05:46:24'),
(1851, 186, 11, 'Mohammad Kamal Uddin', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1852, 186, 12, 'kamalkingstar1@gmail.com', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1853, 186, 13, '01716499929', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1854, 186, 14, 'ফেসবুক অ্যাড', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1855, 186, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1856, 186, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1857, 186, 17, '১ লাখ-৩ লাখ', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1858, 186, 18, 'Mi Store Electra, Mirpur 02', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1859, 186, 19, 'Mobile', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1860, 186, 20, '১০', '2021-07-04 05:46:26', '2021-07-04 05:46:26'),
(1861, 187, 11, 'Mohammad Kamal Uddin', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1862, 187, 12, 'kamalkingstar1@gmail.com', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1863, 187, 13, '01716499929', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1864, 187, 14, 'ফেসবুক অ্যাড', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1865, 187, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1866, 187, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1867, 187, 17, '১ লাখ-৩ লাখ', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1868, 187, 18, 'Mi Store Electra, Mirpur 02', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1869, 187, 19, 'Mobile', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1870, 187, 20, '১০', '2021-07-04 05:46:27', '2021-07-04 05:46:27'),
(1871, 188, 11, 'Taslim Uddin', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1872, 188, 12, 'orrisfashion@gmail.com', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1873, 188, 13, '01716903161', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1874, 188, 14, 'কোনোটিই না', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1875, 188, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1876, 188, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1877, 188, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1878, 188, 18, 'www.orrisfashion.com', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1879, 188, 19, 'Ready made Garment &Jute  shopping bags', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1880, 188, 20, '১০', '2021-07-04 07:05:09', '2021-07-04 07:05:09'),
(1881, 189, 11, 'Taslim Uddin', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1882, 189, 12, 'orrisfashion@gmail.com', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1883, 189, 13, '01716903161', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1884, 189, 14, 'কোনোটিই না', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1885, 189, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1886, 189, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1887, 189, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1888, 189, 18, 'www.orrisfashion.com', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1889, 189, 19, 'Ready made Garment &Jute  shopping bags', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1890, 189, 20, '১০', '2021-07-04 07:05:11', '2021-07-04 07:05:11'),
(1891, 190, 11, 'mawlana nasrullah', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1892, 190, 12, 'mawlananasrullah570@gmail.com', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1893, 190, 13, '01884088810', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1894, 190, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও, অন্যান্য', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1895, 190, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1896, 190, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1897, 190, 17, '১ লাখ-৩ লাখ', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1898, 190, 18, 'Ikra taylors and fabrics', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1899, 190, 19, 'পান্জাবী, শাট,কোটি,ফতুয়া,', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1900, 190, 20, '১০', '2021-07-04 07:32:00', '2021-07-04 07:32:00'),
(1901, 191, 11, 'MD Zakaria', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1902, 191, 12, 'mdjakaria6666@gmail.com', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1903, 191, 13, '01723519646', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1904, 191, 14, 'ফেসবুক অ্যাড', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1905, 191, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1906, 191, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1907, 191, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1908, 191, 18, 'মোবাইল কেয়ার', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1909, 191, 19, 'টেলিকম', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1910, 191, 20, '১০', '2021-07-04 07:54:03', '2021-07-04 07:54:03'),
(1911, 192, 11, 'আমির হাসান', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1912, 192, 12, 'Hasan01629255220@gmail.com', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1913, 192, 13, '01718750929', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1914, 192, 14, 'ফেসবুক অ্যাড', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1915, 192, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1916, 192, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1917, 192, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1918, 192, 18, 'পন্য সমাহার', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1919, 192, 19, 'সব কিছু', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1920, 192, 20, '৮', '2021-07-04 08:11:15', '2021-07-04 08:11:15'),
(1921, 193, 11, 'Turza', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1922, 193, 12, 'turzohassan20@gmail.com', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1923, 193, 13, '01739978613', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1924, 193, 14, 'ফেসবুক অ্যাড', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1925, 193, 15, 'নতুন কাস্টমার পাচ্ছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1926, 193, 16, 'বেশি ট্রাফিক পাওয়া, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1927, 193, 17, '৫০হাজার', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1928, 193, 18, 'https://www.facebook.com/planwayit', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1929, 193, 19, 'স্কুল & কলেজ ম্যানেজমেন্ট সফটওয়্যার ✪ দোকান ম্যানেজমেন্ট সফটওয়্যার ✪ এইচ.আর ও পেরোল সফটওয়্যার ✪ গার্মেন্টস ফ্যাক্টরী ই.আর.পি সফটওয়্যার ✪ হসপিটাল ম্যানেজমেন্ট সফটওয়্যার ✪ হোটেল ম্যানেজমেন্ট সফটওয়্যার ✪ এনজিও সফটওয়্যার ✪ মেডিকেল শপ সফটওয়্যার ✪ ইনভেন্টরি সফটওয়্যার ✪ ওয়েব ডিজাইন/ ডেভেলোপমেন্ট ✪ থিম ডেভেলোপমেন্ট ✪  মোবাইল অ্যাপস/ কাস্টমাইজ android/iOS ✪ ই-কমার্স সাইট', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1930, 193, 20, '৯', '2021-07-04 09:56:48', '2021-07-04 09:56:48'),
(1931, 194, 11, 'ফাতেমা', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1932, 194, 12, '01748745637@gmail.com', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1933, 194, 13, '01724498005', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1934, 194, 14, 'অন্যান্য', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1935, 194, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1936, 194, 16, 'ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1937, 194, 17, '৫০হাজার', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1938, 194, 18, 'Fatema\'s Choco Online Store', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1939, 194, 19, 'Babies ladies &couples item', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1940, 194, 20, '১০', '2021-07-04 10:17:31', '2021-07-04 10:17:31'),
(1941, 195, 11, 'MD Farid Ahammad', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1942, 195, 12, 'asfarid143@gmail.com', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1943, 195, 13, '01816274363', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1944, 195, 14, 'কোনোটিই না', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1945, 195, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1946, 195, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1947, 195, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1948, 195, 18, 'Farid mart', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1949, 195, 19, 'Ready made garments', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1950, 195, 20, '১০', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1951, 196, 11, 'MD Farid Ahammad', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1952, 196, 12, 'asfarid143@gmail.com', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1953, 196, 13, '01816274363', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1954, 196, 14, 'কোনোটিই না', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1955, 196, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1956, 196, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1957, 196, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1958, 196, 18, 'Farid mart', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1959, 196, 19, 'Ready made garments', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1960, 196, 20, '১০', '2021-07-04 11:14:47', '2021-07-04 11:14:47'),
(1961, 197, 11, 'MD Farid Ahammad', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1962, 197, 12, 'asfarid143@gmail.com', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1963, 197, 13, '01816274363', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1964, 197, 14, 'কোনোটিই না', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1965, 197, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1966, 197, 16, 'বেশি ট্রাফিক পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1967, 197, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1968, 197, 18, 'Farid mart', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1969, 197, 19, 'Ready made garments', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1970, 197, 20, '১০', '2021-07-04 11:14:48', '2021-07-04 11:14:48'),
(1971, 198, 11, 'শহীদুল ইসলাম শাহীদ', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1972, 198, 12, 'shahidcse.cu@gmail.com', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1973, 198, 13, '01515658272', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1974, 198, 14, 'ফেসবুক অ্যাড', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1975, 198, 15, 'আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1976, 198, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1977, 198, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1978, 198, 18, 'www.agricabd.com', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1979, 198, 19, 'অর্গানিক ফুড ও ৬৪ জেলার বিখ্যাত ফুড', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1980, 198, 20, '১০', '2021-07-04 14:21:39', '2021-07-04 14:21:39'),
(1981, 199, 11, 'Fahad', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1982, 199, 12, 'seikhfahad891@gmail.com', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1983, 199, 13, '01632405910', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1984, 199, 14, 'ফেসবুক অ্যাড', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1985, 199, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1986, 199, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1987, 199, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1988, 199, 18, 'Sky Attire', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1989, 199, 19, 'ওমেন ক্লোথ এন্ড কসমেটিক্স', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1990, 199, 20, '৫', '2021-07-04 14:45:00', '2021-07-04 14:45:00'),
(1991, 200, 11, 'Tariqul', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(1992, 200, 12, 'tariqul63363@gmail.com', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(1993, 200, 13, '01682163363', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(1994, 200, 14, 'ফেসবুক অ্যাড, অন্যান্য', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(1995, 200, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(1996, 200, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(1997, 200, 17, '৫০হাজার', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(1998, 200, 18, 'Lineage interior design bd', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(1999, 200, 19, 'Interior product', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(2000, 200, 20, '১০', '2021-07-04 14:49:57', '2021-07-04 14:49:57'),
(2001, 201, 11, 'Mahmud Hassan Rubel', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2002, 201, 12, 'rubel33.ccr@gmail.com', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2003, 201, 13, '01765908567', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2004, 201, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2005, 201, 15, 'কেউ আমাদের চেনে না।', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2006, 201, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2007, 201, 17, '৫০হাজার', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2008, 201, 18, 'I don\'t have any want site.', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2009, 201, 19, 'No', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2010, 201, 20, '১০', '2021-07-04 15:04:42', '2021-07-04 15:04:42'),
(2011, 202, 11, 'Mahmud Hassan Rubel', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2012, 202, 12, 'rubel33.ccr@gmail.com', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2013, 202, 13, '01765908567', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2014, 202, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2015, 202, 15, 'কেউ আমাদের চেনে না।', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2016, 202, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2017, 202, 17, '৫০হাজার', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2018, 202, 18, 'I don\'t have any want site.', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2019, 202, 19, 'No', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2020, 202, 20, '১০', '2021-07-04 15:04:44', '2021-07-04 15:04:44'),
(2021, 203, 11, 'saharul islam', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2022, 203, 12, 'islamsaharul69@gmail.com', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2023, 203, 13, '01736639692', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2024, 203, 14, 'ফেসবুক অ্যাড', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2025, 203, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2026, 203, 16, 'ভালো লিড পাওয়া', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2027, 203, 17, '৫০হাজার', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2028, 203, 18, 'computer graphics deginer', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2029, 203, 19, 'online graphics degine', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2030, 203, 20, '১০', '2021-07-04 15:21:06', '2021-07-04 15:21:06'),
(2031, 204, 11, 'Amit', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2032, 204, 12, 'amit01746961661@gmail.com', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2033, 204, 13, '01746961661', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2034, 204, 14, 'ফেসবুক অ্যাড', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2035, 204, 15, 'নতুন কাস্টমার পাচ্ছেন না।', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2036, 204, 16, 'অনলাইন সেলস বাড়ানো', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2037, 204, 17, '৫০হাজার', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2038, 204, 18, 'Mini Online mart bd', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2039, 204, 19, 'Gee,', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2040, 204, 20, '১০', '2021-07-04 15:52:18', '2021-07-04 15:52:18'),
(2041, 205, 11, 'Sayed Safiul Newaz', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2042, 205, 12, 'safiulnewaz@gmail.com', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2043, 205, 13, '01975492524', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2044, 205, 14, 'ফেসবুক অ্যাড', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2045, 205, 15, 'কেউ আমাদের চেনে না।', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2046, 205, 16, 'আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2047, 205, 17, '৫০হাজার', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2048, 205, 18, 'Innisfree Style Zone-ISZ', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2049, 205, 19, 'Bag & shoe', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2050, 205, 20, '১০', '2021-07-04 17:34:24', '2021-07-04 17:34:24'),
(2051, 206, 11, 'Raohan rajib', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2052, 206, 12, 'raihanrajib02@gmail.com', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2053, 206, 13, '01974393366', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2054, 206, 14, 'অন্যান্য', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2055, 206, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2056, 206, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2057, 206, 17, '৫০হাজার', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2058, 206, 18, 'Blackboard', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2059, 206, 19, '3 pich', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2060, 206, 20, '১০', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2061, 207, 11, 'Raohan rajib', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2062, 207, 12, 'raihanrajib02@gmail.com', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2063, 207, 13, '01974393366', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2064, 207, 14, 'অন্যান্য', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2065, 207, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2066, 207, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2067, 207, 17, '৫০হাজার', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2068, 207, 18, 'Blackboard', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2069, 207, 19, '3 pich', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2070, 207, 20, '১০', '2021-07-04 17:45:35', '2021-07-04 17:45:35'),
(2071, 208, 11, 'Raohan rajib', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2072, 208, 12, 'raihanrajib02@gmail.com', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2073, 208, 13, '01974393366', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2074, 208, 14, 'অন্যান্য', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2075, 208, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2076, 208, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2077, 208, 17, '৫০হাজার', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2078, 208, 18, 'Blackboard', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2079, 208, 19, '3 pich', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2080, 208, 20, '১০', '2021-07-04 17:46:08', '2021-07-04 17:46:08'),
(2081, 209, 11, 'Raohan rajib', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2082, 209, 12, 'raihanrajib02@gmail.com', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2083, 209, 13, '01974393366', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2084, 209, 14, 'অন্যান্য', '2021-07-04 17:46:09', '2021-07-04 17:46:09');
INSERT INTO `requester_questions` (`id`, `requester_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(2085, 209, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2086, 209, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2087, 209, 17, '৫০হাজার', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2088, 209, 18, 'Blackboard', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2089, 209, 19, '3 pich', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2090, 209, 20, '১০', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2091, 210, 11, 'Raohan rajib', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2092, 210, 12, 'raihanrajib02@gmail.com', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2093, 210, 13, '01974393366', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2094, 210, 14, 'অন্যান্য', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2095, 210, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2096, 210, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2097, 210, 17, '৫০হাজার', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2098, 210, 18, 'Blackboard', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2099, 210, 19, '3 pich', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2100, 210, 20, '১০', '2021-07-04 17:46:09', '2021-07-04 17:46:09'),
(2101, 211, 11, 'Raohan rajib', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2102, 211, 12, 'raihanrajib02@gmail.com', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2103, 211, 13, '01974393366', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2104, 211, 14, 'অন্যান্য', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2105, 211, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2106, 211, 16, 'অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2107, 211, 17, '৫০হাজার', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2108, 211, 18, 'Blackboard', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2109, 211, 19, '3 pich', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2110, 211, 20, '৮', '2021-07-04 17:46:10', '2021-07-04 17:46:10'),
(2111, 212, 11, 'Sonjoy Roy', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2112, 212, 12, 'ssrriihi@gmail.com', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2113, 212, 13, '01778742901', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2114, 212, 14, 'ফেসবুক অ্যাড', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2115, 212, 15, 'নতুন কাস্টমার পাচ্ছেন না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2116, 212, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2117, 212, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2118, 212, 18, 'Roy Shopping', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2119, 212, 19, 'Organic Foods', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2120, 212, 20, '১০', '2021-07-04 17:58:36', '2021-07-04 17:58:36'),
(2121, 213, 11, 'Sonjoy Roy', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2122, 213, 12, 'ssrriihi@gmail.com', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2123, 213, 13, '01778742901', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2124, 213, 14, 'ফেসবুক অ্যাড', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2125, 213, 15, 'নতুন কাস্টমার পাচ্ছেন না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2126, 213, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2127, 213, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2128, 213, 18, 'Roy Shopping', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2129, 213, 19, 'Organic Foods', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2130, 213, 20, '১০', '2021-07-04 17:58:37', '2021-07-04 17:58:37'),
(2131, 214, 1, 'Fiaz Safone Rakib', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2132, 214, 2, 'fiazsofonerakib@gmail.com', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2133, 214, 3, '01983482129', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2134, 214, 4, 'Facebook ads, Google Adwords, Newspaper/print', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2135, 214, 5, 'We are not able to get new customers., We are not able to keep existing customers.', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2136, 214, 6, 'Increase online sales, Raise my prices, Sell more follow-on products/services', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2137, 214, 7, '50K-100K', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2138, 214, 8, 'Hashtag Fashion Wear', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2139, 214, 9, 'Fashion Wear', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2140, 214, 10, '10', '2021-07-04 18:10:48', '2021-07-04 18:10:48'),
(2141, 215, 1, 'Fiaz Safone Rakib', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2142, 215, 2, 'fiazsofonerakib@gmail.com', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2143, 215, 3, '01983482129', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2144, 215, 4, 'Facebook ads, Google Adwords, Newspaper/print', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2145, 215, 5, 'We are not able to get new customers., We are not able to keep existing customers.', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2146, 215, 6, 'Increase online sales, Raise my prices, Sell more follow-on products/services', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2147, 215, 7, '50K-100K', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2148, 215, 8, 'Hashtag Fashion Wear', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2149, 215, 9, 'Fashion Wear', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2150, 215, 10, '10', '2021-07-04 18:12:27', '2021-07-04 18:12:27'),
(2151, 216, 11, 'MITHUN BORMON', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2152, 216, 12, 'amimithun195@gmail.com', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2153, 216, 13, '01856743037', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2154, 216, 14, 'ফেসবুক অ্যাড', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2155, 216, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, কেউ আমাদের চেনে না।', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2156, 216, 16, 'বেশি ট্রাফিক পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2157, 216, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2158, 216, 18, 'https://www.facebook.com/maans.wholesale/', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2159, 216, 19, 'Shoes', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2160, 216, 20, '৯', '2021-07-04 18:36:57', '2021-07-04 18:36:57'),
(2161, 217, 11, 'Ebrahim', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2162, 217, 12, 'ebrahimmai4441@gmail.com', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2163, 217, 13, '01919056441', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2164, 217, 14, 'ফেসবুক অ্যাড', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2165, 217, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, কেউ আমাদের চেনে না।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2166, 217, 16, 'অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2167, 217, 17, '৫০হাজার', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2168, 217, 18, 'Desginbaz', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2169, 217, 19, 'Design', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2170, 217, 20, '১০', '2021-07-04 18:39:12', '2021-07-04 18:39:12'),
(2171, 218, 11, 'বেলাল', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2172, 218, 12, 'belalhusain39@gmail.com', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2173, 218, 13, '01799920099', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2174, 218, 14, 'কোনোটিই না', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2175, 218, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2176, 218, 16, 'ভালো লিড পাওয়া, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2177, 218, 17, '৫০হাজার', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2178, 218, 18, 'belal & brother\'s', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2179, 218, 19, 'লুঙ্গি', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2180, 218, 20, '১০', '2021-07-04 18:59:51', '2021-07-04 18:59:51'),
(2181, 219, 11, 'Imran', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2182, 219, 12, 'ihossainproject585@gmail.com', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2183, 219, 13, '01904310292', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2184, 219, 14, 'ফেসবুক অ্যাড', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2185, 219, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2186, 219, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2187, 219, 17, '৫০হাজার', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2188, 219, 18, 'Sohagi Enterprise', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2189, 219, 19, 'Electronic& Farniture', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2190, 219, 20, '১০', '2021-07-04 19:19:02', '2021-07-04 19:19:02'),
(2191, 220, 11, 'Hossain Mohammad', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2192, 220, 12, 'hossainrocksong@gmail.com', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2193, 220, 13, '01772719737', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2194, 220, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, এসইও', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2195, 220, 15, 'নতুন কাস্টমার পাচ্ছেন না।, বর্তমান কাস্টমারদের ধরে রাখতে পারছেন না।, ক্যাশ ফ্লো এর খুব টানটান অবস্থা। এই মাসের শেষে হয়তো বেতন দেওয়া সম্ভব হবে না।, রেভেনিউ ঠিকঠাক আছে কিন্তু কোনোভাবেই লাভের মুখ দেখতে পারছি না।, কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, ক্লায়েন্টের প্রোজেক্টগুলো সময়মতো শেষ করা যাচ্ছে না। কাস্টমারদের অভিযোগ বেড়েই চলেছে।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।, আমি গত তিন বছরে একটিও ছুটি পাইনি।', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2196, 220, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2197, 220, 17, '৫ লাখ+', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2198, 220, 18, 'Maa IT Farm', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2199, 220, 19, 'tshirt, android, glass', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2200, 220, 20, '১০', '2021-07-04 20:11:10', '2021-07-04 20:11:10'),
(2201, 221, 11, 'রবিউল ইসলাম', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2202, 221, 12, 'ri113878@gmail.com', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2203, 221, 13, '01784888929', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2204, 221, 14, 'ফেসবুক অ্যাড', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2205, 221, 15, 'কর্মচারীরা তাদের কাজে নিষ্ঠাবান না। কাজে কোনো নৈতিকতা নেই।', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2206, 221, 16, 'বেশি ট্রাফিক পাওয়া, বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, আমার প্রোডাক্ট/সার্ভিস এর দাম বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2207, 221, 17, '৫০হাজার', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2208, 221, 18, 'Ri113878@gmail. Com', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2209, 221, 19, 'Threepics kamij', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2210, 221, 20, '১০', '2021-07-04 21:00:14', '2021-07-04 21:00:14'),
(2211, 222, 1, 'রবিউল ইসলাম', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2212, 222, 2, 'ri113878@gmail.com', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2213, 222, 3, '01784888929', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2214, 222, 4, 'None', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2215, 222, 5, 'My sales guys don’t know how to sell big deals.', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2216, 222, 6, 'Get more leads', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2217, 222, 7, '50k', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2218, 222, 8, 'Ri113878@gmail.com', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2219, 222, 9, 'Threepics', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2220, 222, 10, '10', '2021-07-04 21:04:33', '2021-07-04 21:04:33'),
(2221, 223, 11, 'MOHAMMAD ASHRAFUL ALOM MAKLOKAT', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2222, 223, 12, 'raj.ahsan000@gmail.com', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2223, 223, 13, '01719103441', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2224, 223, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, টেলিভিশন, রেডিও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2225, 223, 15, 'নতুন কাস্টমার পাচ্ছেন না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2226, 223, 16, 'বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2227, 223, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2228, 223, 18, 'Sabakitchen', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2229, 223, 19, 'All everything', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2230, 223, 20, '১০', '2021-07-04 22:19:55', '2021-07-04 22:19:55'),
(2231, 224, 11, 'MOHAMMAD ASHRAFUL ALOM MAKLOKAT', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2232, 224, 12, 'raj.ahsan000@gmail.com', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2233, 224, 13, '01719103441', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2234, 224, 14, 'ফেসবুক অ্যাড, গুগল অ্যাডওয়ার্ডস, টেলিভিশন, রেডিও, খবরের কাগজ/প্রিন্ট, অন্যান্য', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2235, 224, 15, 'নতুন কাস্টমার পাচ্ছেন না।, কেউ আমাদের চেনে না।, আমাদের প্রতিদ্বন্দ্বীদের অ্যাডভার্টাইজিং আমাদের থেকে অনেক বেশি কার্যকর।, আমাদের সেলস এর লোকেরা জানেনা কিভাবে বড় আইডিয়া প্রমোট করতে হয়।', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2236, 224, 16, 'বেশি লিড পাওয়া, ভালো লিড পাওয়া, অনলাইন সেলস বাড়ানো, কনভার্সন রেট বাড়ানো, বেশি বেশি ফলো অন প্রোডাক্ট/সার্ভিস বিক্রি করা', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2237, 224, 17, '৫০ হাজার- ১ লাখ', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2238, 224, 18, 'Sabakitchen', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2239, 224, 19, 'All everything', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2240, 224, 20, '১০', '2021-07-04 22:20:26', '2021-07-04 22:20:26'),
(2261, 227, 1, 'Sheikh Waliur Rahman', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2262, 227, 2, 'abwaliur@gmail.com', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2263, 227, 3, '01729901263', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2264, 227, 4, 'Google Adwords, Television, SEO', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2265, 227, 5, 'We are not able to keep existing customers., Revenues are OK but profitability sucks.', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2266, 227, 6, 'Get more leads, Get better leads', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2267, 227, 7, '100-300k', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2268, 227, 8, 'test.com', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2269, 227, 9, 'test', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2270, 227, 10, '8', '2021-07-04 12:20:24', '2021-07-04 12:20:24'),
(2271, 228, 1, 'Test', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2272, 228, 2, 'test@gmail.com', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2273, 228, 3, '01729901263', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2274, 228, 4, 'Facebook ads, Google Adwords, SEO, Television, Radio, Newspaper/print, Other', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2275, 228, 5, 'We are not able to get new customers., We are not able to keep existing customers., Cash flow is really tight. We may not make payroll later this month., Revenues are OK but profitability sucks., My employees are coasting on me. There’s no work ethic here., Nobody knows who we are., The competitors’ advertising is way better than ours., Client projects are not getting done on time. Customer complaints are up., My sales guys don’t know how to sell big deals., I haven’t had a vacation in three years.', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2276, 228, 6, 'Get more traffic, Get more leads, Get better leads, Increase online sales, Increase conversion rate, Raise my prices, Sell more follow-on products/services', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2277, 228, 7, '50K-100K', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2278, 228, 8, 'test.com', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2279, 228, 9, 'test', '2021-07-05 08:02:08', '2021-07-05 08:02:08'),
(2280, 228, 10, '6', '2021-07-05 08:02:08', '2021-07-05 08:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `retainers`
--

CREATE TABLE `retainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retainers`
--

INSERT INTO `retainers` (`id`, `brand_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 8, 'Gazi Pharma', '2021-11-07 05:24:11', '2021-11-07 05:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `sapiens`
--

CREATE TABLE `sapiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sapiens`
--

INSERT INTO `sapiens` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sheeyam', 'Intern', '2021-11-08 07:09:18', '2021-11-08 07:09:18'),
(2, 'Sabit', 'Intern', '2021-11-08 07:09:35', '2021-11-08 07:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `sapiens_stories`
--

CREATE TABLE `sapiens_stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sapiens_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `wants_to_do` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_that` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `how` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sapiens_stories`
--

INSERT INTO `sapiens_stories` (`id`, `sapiens_id`, `module_id`, `wants_to_do`, `so_that`, `how`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 'xxxxxxxx', 'xxxxxxxxxxxx', 'xxxxxxxxxxx', '2021-11-18 00:10:49', '2021-11-18 00:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `sapiens_story_modules`
--

CREATE TABLE `sapiens_story_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `sapiens_story_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sapiens_story_modules`
--

INSERT INTO `sapiens_story_modules` (`id`, `module_id`, `sapiens_story_id`, `created_at`, `updated_at`) VALUES
(4, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `screens`
--

CREATE TABLE `screens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `screens`
--

INSERT INTO `screens` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(7, 'Mobile', 'mobile description', '2021-11-16 05:25:22', '2021-11-16 05:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `screen_modules`
--

CREATE TABLE `screen_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_module_id` bigint(20) UNSIGNED NOT NULL,
  `app_screen_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `screen_modules`
--

INSERT INTO `screen_modules` (`id`, `app_module_id`, `app_screen_id`, `created_at`, `updated_at`) VALUES
(6, 2, 20, '2021-11-16 11:38:15', '2021-11-16 11:38:15'),
(7, 1, 20, '2021-11-16 11:39:01', '2021-11-16 11:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `created_at`, `updated_at`) VALUES
(2, 'Online Delivery', '2021-10-20 05:10:25', '2021-10-20 05:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `service_wings`
--

CREATE TABLE `service_wings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_wings`
--

INSERT INTO `service_wings` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tech', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', '2021-09-22 05:43:27', '2021-09-22 05:44:22'),
(3, 'Content', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', '2021-09-22 05:44:35', '2021-09-22 05:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stat_cat_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `stat_cat_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(4, 4, 'Running', 'This Project is under Construction since last few months.', '2021-11-03 05:53:06', '2021-11-03 05:54:32'),
(5, 4, 'Paused', 'For certain reasons project paused', '2021-11-03 05:55:23', '2021-11-03 05:55:23'),
(6, 4, 'bbb', 'bbb', '2021-11-08 23:45:46', '2021-11-08 23:45:46'),
(7, 4, 'ggg', 'ggg', '2021-11-08 23:45:55', '2021-11-08 23:45:55'),
(8, 4, 'eee', 'eee', '2021-11-08 23:46:05', '2021-11-08 23:46:05'),
(9, 4, 'lll', 'lll', '2021-11-08 23:46:19', '2021-11-08 23:46:19'),
(10, 4, 'kkk', 'kkk', '2021-11-08 23:46:29', '2021-11-08 23:46:29'),
(11, 4, 'ppp', 'ppp', '2021-11-08 23:46:43', '2021-11-08 23:46:43'),
(12, 4, 'oooo', 'oooo', '2021-11-08 23:46:52', '2021-11-08 23:46:52'),
(13, 4, 'mmm', 'mmm', '2021-11-08 23:47:00', '2021-11-08 23:47:00'),
(14, 4, 'nnn', 'nnn', '2021-11-08 23:47:07', '2021-11-08 23:47:07'),
(15, 4, 'qqq', 'qqq', '2021-11-08 23:47:21', '2021-11-08 23:47:21'),
(16, 4, 'aaa', 'aaa', '2021-11-08 23:47:35', '2021-11-08 23:47:35'),
(17, 4, 'bbb', 'bbb', '2021-11-08 23:48:15', '2021-11-08 23:48:15'),
(18, 4, 'ttt', 'ttt', '2021-11-08 23:48:23', '2021-11-08 23:48:23'),
(19, 4, 'ccc', 'ccc', '2021-11-08 23:48:42', '2021-11-08 23:48:42'),
(20, 4, 'zzz', 'zzz', '2021-11-08 23:48:56', '2021-11-08 23:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `status_categories`
--

CREATE TABLE `status_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_categories`
--

INSERT INTO `status_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Developer', 'house rent and sell 2', '2021-11-03 05:51:58', '2021-11-03 05:52:08'),
(5, 'sdsd', 'sdd', '2021-11-08 23:52:18', '2021-11-08 23:52:18'),
(6, 'aaa', 'aaa', '2021-11-08 23:52:23', '2021-11-08 23:52:23'),
(7, 'ss', 'sss', '2021-11-08 23:52:29', '2021-11-08 23:52:29'),
(8, 'fff', 'fff', '2021-11-08 23:52:34', '2021-11-08 23:52:34'),
(9, 'fffs', 'ssssssssf', '2021-11-08 23:52:43', '2021-11-08 23:52:43'),
(10, 'yyy', 'yyy', '2021-11-08 23:53:00', '2021-11-08 23:53:00'),
(11, 'ooo', 'ooo', '2021-11-08 23:53:06', '2021-11-08 23:53:06'),
(12, 'lll', 'lll', '2021-11-08 23:53:19', '2021-11-08 23:53:19'),
(13, 'uuu', 'uuu', '2021-11-08 23:53:27', '2021-11-08 23:53:27'),
(14, 'ttt', 'ttt', '2021-11-08 23:53:35', '2021-11-08 23:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_category_id` bigint(20) UNSIGNED NOT NULL,
  `frequency_id` bigint(20) UNSIGNED NOT NULL,
  `service_wing_id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `billed_on` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `subscription_category_id`, `frequency_id`, `service_wing_id`, `organization_id`, `name`, `website`, `amount`, `start_date`, `end_date`, `billed_on`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, 'Test 12', 'test.com', 10000, '2021-08-29', '2021-10-07', '2021-09-08', '2021-09-27 03:30:48', '2021-09-27 07:09:47'),
(3, 1, 1, 3, 1, 'test content', 'test.com', 4550, '2021-09-27', NULL, NULL, '2021-09-27 03:31:07', '2021-11-04 03:53:02'),
(4, 1, 3, 3, 1, 'test 2154', 'test.com', 1500.65, '2021-08-29', NULL, NULL, '2021-09-27 03:31:29', '2021-11-04 03:55:06'),
(5, 1, 1, 1, 1, 'Test Tech', 'test.com', 1000, '2021-08-02', NULL, NULL, '2021-09-27 03:31:53', '2021-09-27 03:31:53'),
(6, 1, 3, 1, 1, 'test 3235', 'digitalocean.com', 1000, '2021-08-29', NULL, '2021-09-28', '2021-09-27 07:00:25', '2021-09-27 07:00:35'),
(7, 1, 1, 3, 1, 'Category 1', 'test.com', 15000, '2021-08-29', '2021-09-22', '2021-09-30', '2021-09-27 07:11:39', '2021-09-27 07:11:39'),
(8, 1, 3, 3, 1, 'Test', 'abc.com', 512541, '2021-11-02', '2021-11-15', '0000-00-00', '2021-11-04 03:53:54', '2021-11-04 03:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_categories`
--

CREATE TABLE `subscription_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_categories`
--

INSERT INTO `subscription_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Category 11', 'dsf sdafsadf ds dfsad', '2021-09-22 01:08:32', '2021-09-22 01:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(4, 'Dhaka', '2021-10-19 07:01:17', '2021-10-19 07:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Static Page', 'This is Static', '2021-11-08 05:21:37', '2021-11-08 05:21:37'),
(2, 'Dynamic', 'this is dynamic', '2021-11-08 05:21:51', '2021-11-08 05:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Beckend', 'This is Beckend', '2021-11-08 04:19:48', '2021-11-08 04:19:48'),
(2, 'Frontend', 'This is Frontend', '2021-11-08 04:20:06', '2021-11-08 04:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `terms_policies`
--

CREATE TABLE `terms_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_policies`
--

INSERT INTO `terms_policies` (`id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Title12', 'subtitle12', 'description12', '2021-10-19 05:32:37', '2021-10-19 05:45:08');

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
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_super_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `contact`, `gender`, `photo`, `is_admin`, `is_super_admin`, `is_verified`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sheehan Rahman', 'sheehanvy@gmail.com', NULL, '$2y$10$6kZWXBJVybhbTJNIWaFFbOBeL9soQMBYAJLsgQ7Fcu3Jos7mJfhLO', '01254845547', 'Male', 'avatar/1711411421503342.png', 0, 1, 1, NULL, NULL, NULL, '2021-09-20 03:15:39'),
(2, 'Waliur Rahman', 'abwaliur@gmail.com', NULL, '$2y$10$vMXwkbGebUaAsiAgi4wwL.GcAYN9A5Hcd./.z/4xYKSC7KQfeG0l.', '01729901263', 'Male', 'avatar/1711515492816250.jpg', 1, 0, 1, NULL, NULL, '2021-09-21 03:56:31', '2021-09-21 06:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `web_site_contents`
--

CREATE TABLE `web_site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_site_contents`
--

INSERT INTO `web_site_contents` (`id`, `app_name`, `logo`, `created_at`, `updated_at`, `fav_icon`) VALUES
(1, 'Empowered App', 'contents/1717037847276543.png', '2021-09-21 10:54:42', '2021-11-21 05:44:53', 'contents/1717038055427920.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_modules`
--
ALTER TABLE `app_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_screens`
--
ALTER TABLE `app_screens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_types`
--
ALTER TABLE `app_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_related_services`
--
ALTER TABLE `category_related_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counts`
--
ALTER TABLE `counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frequencies`
--
ALTER TABLE `frequencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `get_quotes`
--
ALTER TABLE `get_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry_categories`
--
ALTER TABLE `industry_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry_organizations`
--
ALTER TABLE `industry_organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `infos_email_unique` (`email`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_item_category_id_foreign` (`item_category_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_genres`
--
ALTER TABLE `item_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_genres_genre_id_foreign` (`genre_id`),
  ADD KEY `item_genres_item_id_foreign` (`item_id`);

--
-- Indexes for table `master_plans`
--
ALTER TABLE `master_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_categories`
--
ALTER TABLE `module_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`portfolio_category_id`);

--
-- Indexes for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_positions`
--
ALTER TABLE `portfolio_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_tags`
--
ALTER TABLE `portfolio_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_costs`
--
ALTER TABLE `project_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_statuses`
--
ALTER TABLE `project_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_statuses_project_id_foreign` (`project_id`),
  ADD KEY `project_statuses_status_id_foreign` (`status_id`);

--
-- Indexes for table `p_d_f_downloaders`
--
ALTER TABLE `p_d_f_downloaders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requesters`
--
ALTER TABLE `requesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requester_questions`
--
ALTER TABLE `requester_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retainers`
--
ALTER TABLE `retainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapiens`
--
ALTER TABLE `sapiens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapiens_stories`
--
ALTER TABLE `sapiens_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapiens_story_modules`
--
ALTER TABLE `sapiens_story_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sapiens_story_modules_module_id_foreign` (`module_id`),
  ADD KEY `sapiens_story_modules_sapiens_story_id_foreign` (`sapiens_story_id`);

--
-- Indexes for table `screens`
--
ALTER TABLE `screens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screen_modules`
--
ALTER TABLE `screen_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `screen_modules_app_module_id_foreign` (`app_module_id`),
  ADD KEY `screen_modules_app_screen_id_foreign` (`app_screen_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_wings`
--
ALTER TABLE `service_wings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_categories`
--
ALTER TABLE `status_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_subscription_category_id_foreign` (`subscription_category_id`),
  ADD KEY `subscriptions_frequency_id_foreign` (`frequency_id`),
  ADD KEY `subscriptions_service_wing_id_foreign` (`service_wing_id`),
  ADD KEY `subscriptions_organization_id_foreign` (`organization_id`);

--
-- Indexes for table `subscription_categories`
--
ALTER TABLE `subscription_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_policies`
--
ALTER TABLE `terms_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_site_contents`
--
ALTER TABLE `web_site_contents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `app_modules`
--
ALTER TABLE `app_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_screens`
--
ALTER TABLE `app_screens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `app_types`
--
ALTER TABLE `app_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_related_services`
--
ALTER TABLE `category_related_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `counts`
--
ALTER TABLE `counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `frequencies`
--
ALTER TABLE `frequencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `get_quotes`
--
ALTER TABLE `get_quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `industry_categories`
--
ALTER TABLE `industry_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `industry_organizations`
--
ALTER TABLE `industry_organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item_genres`
--
ALTER TABLE `item_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_plans`
--
ALTER TABLE `master_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `module_categories`
--
ALTER TABLE `module_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `portfolio_category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `portfolio_positions`
--
ALTER TABLE `portfolio_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `portfolio_tags`
--
ALTER TABLE `portfolio_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `project_costs`
--
ALTER TABLE `project_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_statuses`
--
ALTER TABLE `project_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `p_d_f_downloaders`
--
ALTER TABLE `p_d_f_downloaders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `requesters`
--
ALTER TABLE `requesters`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `requester_questions`
--
ALTER TABLE `requester_questions`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2291;

--
-- AUTO_INCREMENT for table `retainers`
--
ALTER TABLE `retainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sapiens`
--
ALTER TABLE `sapiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sapiens_stories`
--
ALTER TABLE `sapiens_stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sapiens_story_modules`
--
ALTER TABLE `sapiens_story_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `screens`
--
ALTER TABLE `screens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `screen_modules`
--
ALTER TABLE `screen_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_wings`
--
ALTER TABLE `service_wings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `status_categories`
--
ALTER TABLE `status_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscription_categories`
--
ALTER TABLE `subscription_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms_policies`
--
ALTER TABLE `terms_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `web_site_contents`
--
ALTER TABLE `web_site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_genres`
--
ALTER TABLE `item_genres`
  ADD CONSTRAINT `item_genres_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_genres_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_statuses`
--
ALTER TABLE `project_statuses`
  ADD CONSTRAINT `project_statuses_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_statuses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sapiens_story_modules`
--
ALTER TABLE `sapiens_story_modules`
  ADD CONSTRAINT `sapiens_story_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sapiens_story_modules_sapiens_story_id_foreign` FOREIGN KEY (`sapiens_story_id`) REFERENCES `sapiens_stories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `screen_modules`
--
ALTER TABLE `screen_modules`
  ADD CONSTRAINT `screen_modules_app_module_id_foreign` FOREIGN KEY (`app_module_id`) REFERENCES `app_modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `screen_modules_app_screen_id_foreign` FOREIGN KEY (`app_screen_id`) REFERENCES `app_screens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_frequency_id_foreign` FOREIGN KEY (`frequency_id`) REFERENCES `frequencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_service_wing_id_foreign` FOREIGN KEY (`service_wing_id`) REFERENCES `service_wings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_subscription_category_id_foreign` FOREIGN KEY (`subscription_category_id`) REFERENCES `subscription_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
