-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 08:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Red', 23, '2022-04-28 04:06:01', '2022-04-28 04:06:01'),
(2, 1, 'Blue', 23, '2022-04-28 04:06:01', '2022-04-28 04:06:01'),
(3, 1, 'Green', 23, '2022-04-28 04:06:01', '2022-04-28 04:06:01'),
(4, 1, 'White', 23, '2022-04-28 04:06:01', '2022-04-28 04:06:01'),
(5, 1, 'Black', 23, '2022-04-28 04:06:01', '2022-04-28 04:06:01'),
(6, 1, 'Red', 22, '2022-04-28 11:29:37', '2022-04-28 11:29:37'),
(7, 1, 'Blue', 22, '2022-04-28 11:29:38', '2022-04-28 11:29:38'),
(8, 1, 'Green', 22, '2022-04-28 11:29:38', '2022-04-28 11:29:38'),
(9, 1, 'Black', 22, '2022-04-28 11:29:38', '2022-04-28 11:29:38'),
(10, 1, 'White', 22, '2022-04-28 11:29:38', '2022-04-28 11:29:38'),
(11, 2, '20', 22, '2022-04-28 11:29:38', '2022-04-28 11:29:38'),
(12, 2, '30', 22, '2022-04-28 11:29:38', '2022-04-28 11:29:38'),
(13, 2, '40', 22, '2022-04-28 11:29:38', '2022-04-28 11:29:38'),
(14, 2, '50', 22, '2022-04-28 11:29:38', '2022-04-28 11:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'quisquam unde', 'quisquam-unde', '2022-04-28 03:19:12', '2022-04-28 03:19:12'),
(2, 'harum impedit', 'harum-impedit', '2022-04-28 03:19:12', '2022-04-28 03:19:12'),
(3, 'deleniti adipisci', 'deleniti-adipisci', '2022-04-28 03:19:12', '2022-04-28 03:19:12'),
(4, 'quia laboriosam', 'quia-laboriosam', '2022-04-28 03:19:12', '2022-04-28 03:19:12'),
(5, 'eveniet officiis', 'eveniet-officiis', '2022-04-28 03:19:13', '2022-04-28 03:19:13'),
(6, 'eum assumenda', 'eum-assumenda', '2022-04-28 03:19:13', '2022-04-28 03:19:13'),
(7, 'consequatur enim', 'consequatur-enim', '2022-04-28 03:19:13', '2022-04-28 03:19:13'),
(8, 'sunt eum', 'sunt-eum', '2022-04-28 03:19:13', '2022-04-28 03:19:13'),
(9, 'est blanditiis', 'est-blanditiis', '2022-04-28 03:19:13', '2022-04-28 03:19:13'),
(10, 'quod ex', 'quod-ex', '2022-04-28 03:19:13', '2022-04-28 03:19:13'),
(11, 'voluptatem magnam', 'voluptatem-magnam', '2022-04-28 03:19:13', '2022-04-28 03:19:13'),
(12, 'enim cupiditate', 'enim-cupiditate', '2022-04-28 03:19:13', '2022-04-28 03:19:13'),
(13, 'Electronic', 'electronic', '2022-04-28 04:03:01', '2022-04-28 04:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'MohamedNour', 'mnor32779@gmail.com', '01730931984', 'Test Contact\n', '2022-04-29 03:32:57', '2022-04-29 03:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, '10%OFF', 'percent', '20.00', '1000.00', '2022-04-28 03:44:49', '2022-04-28 03:44:49', '2022-09-30'),
(2, 'OFF20', 'fixed', '50.00', '500.00', '2022-04-28 03:45:52', '2022-04-28 04:11:50', '2022-09-30');

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5', 8, '2022-04-05 09:10:06', '2022-04-28 03:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '', '', '100', 'http://127.0.0.1:8000/shop', '1651222070.jpg', 1, '2022-04-28 03:35:39', '2022-04-29 02:50:36'),
(2, '', '', '150', 'http://127.0.0.1:8000/shop', '1651138655.jpg', 1, '2022-04-28 03:37:35', '2022-04-28 03:40:19'),
(3, '', '', '300', 'http://127.0.0.1:8000/shop', '1651222217.jpg', 1, '2022-04-28 03:38:27', '2022-04-29 02:50:17'),
(4, '', '', '60', 'http://127.0.0.1:8000/shop', '1651138772.jpg', 1, '2022-04-28 03:39:32', '2022-04-28 03:41:41');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_11_051004_create_sessions_table', 1),
(7, '2022_03_16_015734_create_categories_table', 1),
(8, '2022_03_16_015901_create_products_table', 1),
(9, '2022_04_03_085851_create_home_sliders_table', 1),
(10, '2022_04_04_065417_create_home_categories_table', 1),
(11, '2022_04_05_081130_create_sales_table', 1),
(12, '2022_04_11_083922_create_coupons_table', 1),
(13, '2022_04_13_165955_add_expiry_date_to_coupons_table', 1),
(14, '2022_04_14_081343_create_orders_table', 1),
(15, '2022_04_14_081420_create_order_items_table', 1),
(16, '2022_04_14_081440_create_shippings_table', 1),
(17, '2022_04_14_081455_create_transactions_table', 1),
(18, '2022_04_17_110950_add_delivered_canceled_date_to_orders_table', 1),
(19, '2022_04_17_193624_create_reveiws_table', 1),
(20, '2022_04_17_194451_add_rstatus_to_order_items_table', 1),
(21, '2022_04_19_091317_create_contacts_table', 1),
(22, '2022_04_19_150259_create_settings_table', 1),
(23, '2022_04_21_131930_create_shoppingcart_table', 1),
(24, '2022_04_21_155007_create_subcategories_table', 1),
(25, '2022_04_24_084511_create_profiles_table', 1),
(26, '2022_04_25_140138_create_product_attributes_table', 1),
(27, '2022_04_26_064410_create_attribute_values_table', 1),
(28, '2022_04_27_093110_add_options_to_order_items_table', 1),
(29, '2022_04_28_091126_add_subcategory_id_to_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `cancaled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `cancaled_date`) VALUES
(1, 2, '839.00', '50.00', '176.19', '1015.19', 'Nour', 'Abshir', '01730931984', 'mdnourabshir@gmail.com', 'Rampura , Banasree B-block 3-Road', 'Rampura , Banasree B-block 3-Road 3-House 6-float', 'Dhaka', 'Rampura, Banasree', 'Bangladesh', '1219', 'delivered', 0, '2022-04-28 04:12:59', '2022-04-28 04:14:06', '2022-04-28', NULL),
(2, 2, '20.00', '0.00', '4.20', '24.20', 'msdf', 'MohamedNour', '01730931984', 'mnor32779@gmail.com', 'Rampura , Banasree B-block 3-Road', 'Rampura , Banasree B-block 3-Road 3-House 6-float', 'Dhaka', 'Rampura, Banasree', 'Bangladesh', '1219', 'ordered', 0, '2022-04-28 04:40:40', '2022-04-28 04:40:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(1, 23, 1, '20.00', 1, '2022-04-28 04:12:59', '2022-04-28 04:15:20', 1, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:5:\"Color\";s:4:\"Blue\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(2, 20, 1, '491.00', 1, '2022-04-28 04:12:59', '2022-04-28 04:12:59', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(3, 3, 1, '378.00', 1, '2022-04-28 04:12:59', '2022-04-28 04:12:59', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(4, 23, 2, '20.00', 1, '2022-04-28 04:40:40', '2022-04-28 04:40:40', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:5:\"Color\";s:4:\"Blue\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 'dolor ut architecto adipisci', 'dolor-ut-architecto-adipisci', 'Non occaecati quis dolor aut. Dolorem unde numquam dignissimos officia velit itaque ipsam. Aut et doloremque quia. Quo totam sunt laborum voluptatem.', 'Aut cum ipsum quam voluptas. Explicabo vitae aut fuga dolorum. Illo et et iste ex.', '281.00', NULL, '496', 'instock', 0, 166, 'digital_18.jpg', NULL, 1, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(2, 'aut repellat consequatur reiciendis', 'aut-repellat-consequatur-reiciendis', 'Dolorem vel vero aut qui quia. Non impedit ipsam consequatur dolor cum. Quisquam omnis ut et exercitationem porro corporis debitis.', 'Rerum ipsam enim aspernatur nobis. Harum officia quis inventore nostrum molestias quia. Cupiditate ex doloribus vel. A quo architecto eaque qui.', '254.00', NULL, '282', 'instock', 0, 104, 'digital_17.jpg', NULL, 1, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(3, 'unde cum in optio', 'unde-cum-in-optio', 'Vero ut aut similique iste rem harum. Ducimus repudiandae doloremque cumque molestiae. Optio voluptas incidunt autem ipsam. Asperiores reprehenderit nulla nulla repudiandae est et voluptatum quia.', 'At illum unde deleniti perferendis fugiat sint non. Eligendi voluptatem eum impedit et ea nemo eum. Atque eveniet numquam qui aut similique.', '378.00', NULL, '298', 'instock', 0, 167, 'digital_19.jpg', NULL, 1, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(4, 'iste architecto dolore in', 'iste-architecto-dolore-in', 'Sunt nemo omnis recusandae ipsum quis. Maxime eligendi occaecati sed velit et assumenda mollitia neque. Quaerat similique cumque quam quae odit. Sit unde perspiciatis velit rerum.', 'Reprehenderit quidem iusto itaque suscipit sed velit impedit. At provident excepturi tempora sint qui. Deleniti praesentium reprehenderit qui facere illo praesentium amet.', '452.00', NULL, '164', 'instock', 0, 113, 'digital_11.jpg', NULL, 4, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(5, 'consequuntur qui sint recusandae', 'consequuntur-qui-sint-recusandae', 'Rerum illo magnam quo. Eaque nisi voluptates quos esse.', 'Numquam nulla voluptates iste quasi consequatur sed. Blanditiis maxime asperiores repellat et ex quia maxime. Aperiam occaecati ut optio nulla. Porro quia et explicabo ipsam vel.', '153.00', NULL, '254', 'instock', 0, 115, 'digital_5.jpg', NULL, 1, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(6, 'tempore harum modi distinctio', 'tempore-harum-modi-distinctio', 'Accusamus iste aliquid et. Rem consequatur sequi placeat voluptatum cum ullam. Incidunt accusamus earum ducimus non.', 'Qui aspernatur dicta laudantium voluptates dolor occaecati animi. Et veniam et cum corrupti libero. Voluptas iusto sunt voluptatum inventore.', '118.00', NULL, '431', 'instock', 0, 146, 'digital_14.jpg', NULL, 3, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(7, 'officia aut et quas', 'officia-aut-et-quas', 'Non accusantium voluptatem est ducimus nihil. Qui maxime et qui aut cumque.', 'Nihil aut cumque recusandae officiis. Ut eaque aut laboriosam consequatur placeat natus voluptatum. Velit nulla ut fuga.', '306.00', NULL, '213', 'instock', 0, 195, 'digital_16.jpg', NULL, 5, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(8, 'aut maxime quo dolorem', 'aut-maxime-quo-dolorem', 'Mollitia quis voluptatum nemo. Est totam omnis ut autem quos. Laborum ut excepturi quae ut id non necessitatibus. Magnam ea beatae animi officiis sit eum ut molestiae.', 'Nesciunt dignissimos molestias mollitia ratione consequatur nihil. Ullam enim nihil libero minima nam dolorum eveniet maxime. Dolores beatae sit dolorum magnam enim odio eaque quia.', '135.00', NULL, '181', 'instock', 0, 158, 'digital_15.jpg', NULL, 4, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(9, 'voluptas velit modi voluptatum', 'voluptas-velit-modi-voluptatum', 'Consequatur iste sit non est quia recusandae voluptas dolor. Ullam voluptas quaerat et ut. Exercitationem laboriosam debitis est non.', 'Ad et dolorem consectetur nesciunt quos officia quia. Ut consequuntur et ipsum adipisci voluptatem occaecati ipsam. Cum et quam accusantium commodi vero. Voluptatum vel tempore dolor quae.', '310.00', NULL, '500', 'instock', 0, 143, 'digital_9.jpg', NULL, 4, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(10, 'sint assumenda sint in', 'sint-assumenda-sint-in', 'Doloribus rerum qui aut ipsum ad. Ut reprehenderit soluta voluptatem nostrum ut aliquid molestias. Et totam accusamus omnis quo ea. Exercitationem error et et. Maiores nulla et sed non aliquid.', 'Voluptatem hic minima autem eveniet. Aspernatur esse consectetur libero non. Asperiores ipsam architecto sit quo iste.', '386.00', NULL, '167', 'instock', 0, 135, 'digital_20.jpg', NULL, 2, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(11, 'assumenda dicta aut sunt', 'assumenda-dicta-aut-sunt', 'Voluptates omnis et omnis consequatur dolor iure tempora. Assumenda vero eum sint consequatur voluptatem ratione non sed. Aut qui enim error explicabo sed ab.', 'Praesentium doloremque temporibus qui accusamus et mollitia autem atque. Sit consectetur quam ratione iusto aut. Tenetur ducimus alias culpa et sed. Nulla vitae expedita sequi dolorum sit.', '122.00', NULL, '136', 'instock', 0, 102, 'digital_4.jpg', NULL, 3, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(12, 'tempore soluta minima totam', 'tempore-soluta-minima-totam', 'Sint est ut commodi cumque accusamus rerum. Minus adipisci hic magni ut rerum ipsa dolorem deleniti. Delectus perferendis harum rem modi. Numquam ex totam nesciunt ut et.', 'Ut ut dolore possimus rerum rerum eveniet. Veniam dolore ad optio autem laboriosam. Cumque aut aut nesciunt excepturi in quia.', '223.00', NULL, '484', 'instock', 0, 104, 'digital_10.jpg', NULL, 2, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(13, 'delectus suscipit quo quos', 'delectus-suscipit-quo-quos', 'Dignissimos rerum aut rem aliquam unde. Sit esse aspernatur mollitia. Doloribus blanditiis ad voluptas. Voluptatibus nam odit laborum maxime ex. Magnam et quae recusandae ut omnis.', 'Numquam ullam amet fugit aliquam temporibus et. Odit quae ipsam tempore consequuntur aliquid non. In quo odit hic aliquam a consequatur.', '364.00', NULL, '349', 'instock', 0, 188, 'digital_13.jpg', NULL, 4, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(14, 'aspernatur consequatur quas enim', 'aspernatur-consequatur-quas-enim', 'Voluptas optio autem deleniti aperiam quo et. Sapiente quaerat maxime et. Qui sint earum ipsam at ducimus vero et.', 'Sed quia commodi velit iusto quia animi velit. Ut in rerum corrupti totam sit aut vel ratione. Debitis autem amet qui molestiae.', '288.00', NULL, '147', 'instock', 0, 181, 'digital_1.jpg', NULL, 2, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(15, 'aut tempore perspiciatis placeat', 'aut-tempore-perspiciatis-placeat', 'Quo consequatur consequatur pariatur ut. Fugiat unde odit id. Provident dolores reprehenderit et libero consectetur earum. Ut dolorum perspiciatis quidem voluptas laudantium vero ducimus.', 'Deserunt veniam sed atque voluptas molestias consequuntur. Optio error soluta voluptas quidem quisquam. Culpa sapiente doloribus qui.', '277.00', NULL, '331', 'instock', 0, 177, 'digital_12.jpg', NULL, 2, '2022-04-28 03:19:13', '2022-04-28 03:19:13', NULL),
(16, 'dolor qui dolor dolorem', 'dolor-qui-dolor-dolorem', 'Dignissimos esse dolorem ut nulla doloremque dignissimos quae. Rerum sit quam excepturi at rerum ea. Sunt pariatur veniam eius ut. Et ipsam tenetur recusandae exercitationem laudantium iste.', 'Eligendi sed fuga ut aut dolor. Eos voluptas aut explicabo blanditiis quasi qui sapiente quasi. Non et consequatur nihil. Incidunt qui similique cum repudiandae unde amet velit.', '169.00', NULL, '333', 'instock', 0, 194, 'digital_8.jpg', NULL, 2, '2022-04-28 03:19:14', '2022-04-28 03:19:14', NULL),
(17, 'magnam eligendi et repellendus', 'magnam-eligendi-et-repellendus', 'Facere non reprehenderit non similique id. Amet enim molestiae voluptatem. Itaque cupiditate qui accusamus. Et est aut quas nihil.', 'Ea et ullam corrupti consequuntur. Alias doloremque voluptates et error perspiciatis. Praesentium iure consequatur aspernatur illum adipisci eaque.', '208.00', NULL, '474', 'instock', 0, 181, 'digital_2.jpg', NULL, 2, '2022-04-28 03:19:14', '2022-04-28 03:19:14', NULL),
(18, 'rem quo sint tempora', 'rem-quo-sint-tempora', 'Beatae possimus quos dolorem dicta. Consequatur et sit eos et vel unde enim. Qui cumque ullam voluptas ab et ut itaque.', 'In ex officiis reiciendis. Officiis alias porro omnis ratione quidem velit. Optio ipsa molestiae rerum.', '179.00', NULL, '205', 'instock', 0, 173, 'digital_7.jpg', NULL, 5, '2022-04-28 03:19:14', '2022-04-28 03:19:14', NULL),
(19, 'animi odit est nisi', 'animi-odit-est-nisi', 'Velit velit possimus placeat. Voluptatem odit qui neque deserunt tempore aliquam id. Repellendus ipsum dicta et.', 'Accusamus nisi sed omnis omnis aut ut quasi. Et modi voluptatum necessitatibus voluptatem. Molestiae consequuntur rem rerum cum ex nam quis.', '415.00', '400.00', '470', 'instock', 0, 140, 'digital_3.jpg', NULL, 5, '2022-04-28 03:19:14', '2022-04-28 10:38:30', NULL),
(20, 'eveniet voluptatum qui eum', 'eveniet-voluptatum-qui-eum', 'Nulla ad ipsa nobis rerum at qui et blanditiis. Et repellendus exercitationem molestiae aspernatur nemo est. Et natus sed dolores harum voluptatibus atque sapiente quos.', 'Soluta enim est laboriosam quod reiciendis aut maxime. Voluptatem et quibusdam sunt suscipit aliquid ut. Voluptatem nihil in dolores at quia.', '491.00', '470.00', '122', 'instock', 0, 103, 'digital_22.jpg', NULL, 3, '2022-04-28 03:19:14', '2022-04-28 10:38:01', NULL),
(21, 'deserunt qui dolorem porro', 'deserunt-qui-dolorem-porro', 'Nisi in officiis inventore illum enim numquam dolorem. Hic rem possimus et temporibus repellat enim maiores. Accusamus quaerat molestias et hic consequatur illo.', 'Vel quos ut dolores ducimus qui reprehenderit autem tempora. Ut in fugit in. Autem culpa eaque autem accusamus numquam sed laboriosam sint.', '477.00', '450.00', '132', 'instock', 0, 192, 'digital_6.jpg', NULL, 1, '2022-04-28 03:19:14', '2022-04-28 10:37:44', NULL),
(22, 'ut dolore dolorem quasi', 'ut-dolore-dolorem-quasi', 'Omnis quaerat nemo deserunt rerum quidem aut odio. Et sit nesciunt minus.', 'Provident totam odit quibusdam. Id nulla velit officiis voluptas. Sit odit est ipsa architecto. Sapiente ut beatae accusamus omnis eveniet tempore officiis tempora.', '450.00', '400.00', '211', 'instock', 0, 106, 'digital_21.jpg', NULL, 5, '2022-04-28 03:19:14', '2022-04-28 10:37:31', NULL),
(23, 'New Brand Clases', 'new-brand-clases', '<p>New Brand Clases <span style=\"background-color: rgb(241, 196, 15);\">With different colors</span></p>', '<p>New Brand Clases <span style=\"background-color: rgb(241, 196, 15);\">With different colors</span></p>', '30.00', '20.00', 'claese30', 'instock', 0, 12, '1651140361.jpg', ',16511403610.jpg,16511403611.jpg', 13, '2022-04-28 04:06:01', '2022-04-28 04:06:01', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Colors', '2022-04-28 03:32:40', '2022-04-28 12:48:21'),
(2, 'Sizes', '2022-04-28 03:32:45', '2022-04-28 03:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-28 03:31:38', '2022-04-28 03:31:38'),
(2, 2, '1653201794.jpg', '01730931984', 'Rampura,Banasree', 'Rampura,Banasree', 'Dhaka', 'Rampura, Banasree', 'Bangladesh', '1219', '2022-04-28 04:22:53', '2022-05-22 00:43:14'),
(3, 4, '1653151859.jpg', '01730931984', 'jkhdjsdjs', 'ahdjsabdjhsa', 'Dhaka', 'Rampura, Banasree', 'Bangladesh', '1219', '2022-05-21 10:50:07', '2022-05-21 10:50:59'),
(4, 5, '1653154618.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 11:36:19', '2022-05-21 11:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `reveiws`
--

CREATE TABLE `reveiws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reveiws`
--

INSERT INTO `reveiws` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'Very Nice Product', 1, '2022-04-28 04:15:20', '2022-04-28 04:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-09-30 00:00:00', 1, '2022-04-05 09:10:06', '2022-04-28 04:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PGtsaUde98tNHPySujGtNwjT4b6yMhlZVH2xAq4O', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiT3VnVE5tRWt6QkJZYVp2WmJaSHhWVVBHNzBONDVVRm44T0xFTDlaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wP3BhZ2U9MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCR2aERKYTNQV3haZ0FIdG5saUczckt1elJ4SmI0TERLNXlEamliYVV2Q2tYSnBtVVFIVGZsVyI7czo0OiJjYXJ0IjthOjI6e3M6NDoiY2FydCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiYmEwMmIwZGRkYjAwMGIyNTQ0NTE2ODMwMGM2NTM4NmQiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiJiYTAyYjBkZGRiMDAwYjI1NDQ1MTY4MzAwYzY1Mzg2ZCI7czoyOiJpZCI7czoyOiIyMyI7czozOiJxdHkiO2k6NDtzOjQ6Im5hbWUiO3M6MTY6Ik5ldyBCcmFuZCBDbGFzZXMiO3M6NToicHJpY2UiO2Q6MjA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToyOntzOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjM3MGQwODU4NTM2MGY1YzU2OGIxOGQxZjJlNGNhMWRmIjtzOjI6ImlkIjtzOjE6IjIiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjM1OiJhdXQgcmVwZWxsYXQgY29uc2VxdWF0dXIgcmVpY2llbmRpcyI7czo1OiJwcmljZSI7ZDoyNTQ7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiI4YTQ4YWE3YzhlNTIwMjg0MWRkYWY3NjdiYjRkMTBkYSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjhhNDhhYTdjOGU1MjAyODQxZGRhZjc2N2JiNGQxMGRhIjtzOjI6ImlkIjtzOjE6IjYiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjI5OiJ0ZW1wb3JlIGhhcnVtIG1vZGkgZGlzdGluY3RpbyI7czo1OiJwcmljZSI7ZDoxMTg7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkdmhESmEzUFd4WmdBSHRubGlHM3JLdXpSeEpiNExESzV5RGppYmFVdkNrWEpwbVVRSFRmbFciO3M6ODoiY2hlY2tvdXQiO2E6NDp7czo4OiJkaXNjb3VudCI7aTowO3M6ODoic3VidG90YWwiO3M6NToiODAuMDAiO3M6MzoidGF4IjtzOjU6IjE2LjgwIjtzOjU6InRvdGFsIjtzOjU6Ijk2LjgwIjt9fQ==', 1653202680),
('xFuXyQZD4tblDbEmfPaOFfg5xOPKGTCbjJgviUvB', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiN3ZQdExld2l1ZGIycnpqWEJiNHJCVlJobnZLNTNwTVMwRmlYQmlEUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJG9acU1idUJJSnhORVo3R0lmWjltNnVWNFNqOXJVbGdUb2NORWFqREkvMkVOSkxaVXNwOTZTIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRvWnFNYnVCSUp4TkVaN0dJZlo5bTZ1VjRTajlyVWxnVG9jTkVhakRJLzJFTkpMWlVzcDk2UyI7czo0OiJjYXJ0IjthOjM6e3M6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjA3Y2NhMTUxNjhiMWE1ZTQ4ZTBmODlkODc4ZmJmNmVhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDdjY2ExNTE2OGIxYTVlNDhlMGY4OWQ4NzhmYmY2ZWEiO3M6MjoiaWQiO3M6MjoiMTYiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjIzOiJkb2xvciBxdWkgZG9sb3IgZG9sb3JlbSI7czo1OiJwcmljZSI7ZDoxNjk7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjM3MGQwODU4NTM2MGY1YzU2OGIxOGQxZjJlNGNhMWRmIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO3M6MjoiaWQiO3M6MToiMiI7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6MzU6ImF1dCByZXBlbGxhdCBjb25zZXF1YXR1ciByZWljaWVuZGlzIjtzOjU6InByaWNlIjtkOjI1NDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6MTI6InNhdmVGb3JMYXRlciI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6ODoiY2hlY2tvdXQiO2E6NDp7czo4OiJkaXNjb3VudCI7aTowO3M6ODoic3VidG90YWwiO3M6NjoiMjU0LjAwIjtzOjM6InRheCI7czo1OiI1My4zNCI7czo1OiJ0b3RhbCI7czo2OiIzMDcuMzQiO319', 1653157387);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebokk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instgram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebokk`, `pinterest`, `instgram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'mdnourabshir@gmail.com', '01730931984', '01730931984', 'Rampura , Banasree B-block 3-Road', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.50707673964!2d90.42628521411216!3d23.76495098458223!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c78a4f1fe899%3A0x50df1cc3411df811!2sB%20Block%2C%20Main%20Rd%2C%20Dhaka%201212!5e0!3m2!1sen!2sbd!4v1650385490570!5m2!1sen!2sbd', '#', '#', '#', '#', '#', '2022-04-28 03:49:18', '2022-04-28 03:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:4:{s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";s:1:\"3\";s:3:\"qty\";i:1;s:4:\"name\";s:17:\"unde cum in optio\";s:5:\"price\";d:378;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"ba02b0dddb000b25445168300c65386d\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"ba02b0dddb000b25445168300c65386d\";s:2:\"id\";s:2:\"23\";s:3:\"qty\";i:2;s:4:\"name\";s:16:\"New Brand Clases\";s:5:\"price\";d:30;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"eef12573176125ce53e333e13d747a17\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"eef12573176125ce53e333e13d747a17\";s:2:\"id\";s:2:\"12\";s:3:\"qty\";i:1;s:4:\"name\";s:27:\"tempore soluta minima totam\";s:5:\"price\";d:223;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"468399581342505c47f4615b81bedaa9\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"468399581342505c47f4615b81bedaa9\";s:2:\"id\";s:1:\"5\";s:3:\"qty\";i:1;s:4:\"name\";s:32:\"consequuntur qui sint recusandae\";s:5:\"price\";d:153;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-29 03:46:06', NULL),
('admin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:3:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";s:1:\"2\";s:3:\"qty\";i:1;s:4:\"name\";s:35:\"aut repellat consequatur reiciendis\";s:5:\"price\";d:254;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";s:1:\"3\";s:3:\"qty\";i:1;s:4:\"name\";s:17:\"unde cum in optio\";s:5:\"price\";d:378;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"ba02b0dddb000b25445168300c65386d\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"ba02b0dddb000b25445168300c65386d\";s:2:\"id\";s:2:\"23\";s:3:\"qty\";i:1;s:4:\"name\";s:16:\"New Brand Clases\";s:5:\"price\";d:30;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-29 03:46:06', NULL),
('mnor32779@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-30 03:18:39', NULL),
('mnor32779@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-04-30 03:18:39', NULL),
('user@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"ba02b0dddb000b25445168300c65386d\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"ba02b0dddb000b25445168300c65386d\";s:2:\"id\";s:2:\"23\";s:3:\"qty\";i:4;s:4:\"name\";s:16:\"New Brand Clases\";s:5:\"price\";d:20;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-22 00:57:59', NULL),
('user@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";s:1:\"2\";s:3:\"qty\";i:1;s:4:\"name\";s:35:\"aut repellat consequatur reiciendis\";s:5:\"price\";d:254;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"8a48aa7c8e5202841ddaf767bb4d10da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"8a48aa7c8e5202841ddaf767bb4d10da\";s:2:\"id\";s:1:\"6\";s:3:\"qty\";i:1;s:4:\"name\";s:29:\"tempore harum modi distinctio\";s:5:\"price\";d:118;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-22 00:57:59', NULL),
('user2@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";s:1:\"2\";s:3:\"qty\";i:1;s:4:\"name\";s:35:\"aut repellat consequatur reiciendis\";s:5:\"price\";d:254;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-21 12:23:07', NULL),
('user2@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"07cca15168b1a5e48e0f89d878fbf6ea\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"07cca15168b1a5e48e0f89d878fbf6ea\";s:2:\"id\";s:2:\"16\";s:3:\"qty\";i:1;s:4:\"name\";s:23:\"dolor qui dolor dolorem\";s:5:\"price\";d:169;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-21 12:23:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'laptop', 13, '2022-04-28 04:03:12', '2022-04-28 04:03:12'),
(2, 'Mobile', 'mobile', 13, '2022-04-28 04:03:18', '2022-04-28 04:03:18'),
(3, 'Clases', 'clases', 13, '2022-04-28 04:03:23', '2022-04-28 04:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'cod', 'pending', '2022-04-28 04:12:59', '2022-04-28 04:12:59'),
(2, 2, 2, 'cod', 'pending', '2022-04-28 04:40:40', '2022-04-28 04:40:40');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'USR for users and ADM for Admins',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `usertype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$JBrvVcwWtcktQiVOf44Dx.Xj1Z25oP7Sv5U.mhYywBl.gZXnK3JSq', NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-04-28 03:31:10', '2022-04-28 03:31:10'),
(2, 'Nour', 'user@gmail.com', NULL, '$2y$10$vhDJa3PWxZgAHtnliG3rKuzRxJb4LDK5yDjibaUvCkXJpmUQHTflW', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-04-28 04:08:16', '2022-04-28 04:23:45'),
(3, 'Nour', 'mnor32779@gmail.com', NULL, '$2y$10$Mmb7S3yMH9WayCa001hNIuSK99FU9k9krjgpWnwQ9Ldfwtdy.5eeK', NULL, NULL, 'OnCpFR39KzcZtNY502U0a9uEhoKXg7MRLVaMNUfCWGvJcJpgXWOoxH8zyQ4S', NULL, NULL, 'USR', '2022-04-30 02:29:10', '2022-05-21 10:29:02'),
(4, 'Nour', 'mdnourabshir@gmail.com', NULL, '$2y$10$pJ5hyBvmsj.eSAerYLTa/OeWvWU/4i8RB1Oy8r0EMdOIFtVcrYjJ6', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-05-21 10:49:59', '2022-05-21 10:51:53'),
(5, 'Adesh Narayn', 'user2@gmail.com', NULL, '$2y$10$oZqMbuBIJxNEZ7GIfZ9m6uV4Sj9rUlgTocNEajDI/2ENJLZUsp96S', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-05-21 11:35:10', '2022-05-21 12:13:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reveiws`
--
ALTER TABLE `reveiws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reveiws_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reveiws`
--
ALTER TABLE `reveiws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reveiws`
--
ALTER TABLE `reveiws`
  ADD CONSTRAINT `reveiws_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`);

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
