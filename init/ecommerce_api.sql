-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2026 a las 04:48:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce_api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
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
-- Estructura de tabla para la tabla `job_batches`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(118, '0001_01_01_000000_create_users_table', 1),
(119, '0001_01_01_000001_create_cache_table', 1),
(120, '0001_01_01_000002_create_jobs_table', 1),
(121, '2026_08_29_141807_create_personal_access_tokens_table', 1),
(122, '2026_08_29_151702_create_orders_table', 1),
(123, '2026_08_29_154012_create_products_table', 1),
(124, '2026_08_29_172146_create_order_items_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `telefono_cliente` bigint(20) DEFAULT NULL,
  `email_cliente` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `nombre_cliente`, `direccion_cliente`, `telefono_cliente`, `email_cliente`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'FRANCISCO NORBERTO RAMOS MARQUEZ', 'COL CHILTUPAN PJ A N58', 22101009, 'PAKOs@PAKOsVVV.COM', 1, NULL, '2026-08-30 02:44:56', '2026-08-30 03:31:52'),
(2, 'Leilani Cassin', '38119 Norberto Villages Suite 810\nLake Maggie, DE 50806', 2590024933, 'bartholome.johns@example.com', 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(3, 'Mr. Earnest Hirthe V', '24708 Vladimir Lodge Suite 798\nPort Cliffordview, GA 45802', 8394850710, 'zauer@example.org', 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(4, 'Ms. Ernestine Rolfson', '50997 Ruecker Mission Apt. 918\nMedhurstland, VA 64908', 5470267541, 'enid95@example.org', 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(5, 'Brock Terry', '873 Cartwright Camp\nNorth Allantown, CO 54400', 5689826177, 'jerod00@example.net', 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(6, 'FRANCISCO NORBERTO RAMOS MARQUEZ', 'COL CHILTUPAN PJ A N58', 22101009, 'PAKO@PAKO.COM', 1, NULL, '2026-08-30 02:49:03', '2026-08-30 02:49:03'),
(7, 'FRANCISCO NORBERTO RAMOS MARQUEZ', 'COL CHILTUPAN PJ A N58', 22101009, 'PAKO@PAKO.COM', 1, NULL, '2026-08-30 03:28:19', '2026-08-30 03:28:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` bigint(20) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `cantidad`, `product_id`, `order_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:50:58'),
(2, 1, 2, 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(3, 1, 3, 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(4, 1, 4, 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(5, 1, 5, 1, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(6, 1, 1, 2, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(7, 1, 2, 2, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(8, 1, 3, 2, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(9, 1, 4, 2, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(10, 1, 5, 2, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(11, 1, 1, 3, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(12, 1, 2, 3, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(13, 1, 3, 3, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(14, 1, 4, 3, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(15, 1, 5, 3, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(16, 1, 1, 4, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(17, 1, 2, 4, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(18, 1, 3, 4, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(19, 1, 4, 4, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(20, 1, 5, 4, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(21, 1, 1, 5, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(22, 1, 2, 5, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(23, 1, 3, 5, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(24, 1, 4, 5, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(25, 1, 5, 5, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(26, 8, 1, 6, NULL, '2026-08-30 02:49:03', '2026-08-30 02:49:03'),
(27, 9, 1, 6, NULL, '2026-08-30 02:49:03', '2026-08-30 02:49:03'),
(28, 8, 1, 7, NULL, '2026-08-30 03:28:19', '2026-08-30 03:28:19'),
(29, 9, 1, 7, NULL, '2026-08-30 03:28:19', '2026-08-30 03:28:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '9e6d43f74057fab3af009d90b6628273f7b55174fd4315dc540b091eb9c3ae58', '[\"*\"]', '2026-10-03 22:38:05', NULL, '2026-08-30 02:46:46', '2026-10-03 22:38:05'),
(2, 'App\\Models\\User', 1, 'auth_token', '7d2f2bd8ae84664c464369ee18fb05f8b90b64ef7ed6d43de11993c32029f110', '[\"*\"]', NULL, NULL, '2026-10-03 08:34:23', '2026-10-03 08:34:23'),
(3, 'App\\Models\\User', 1, 'auth_token', 'c9adddfe03281cdef1ff74aa28d1c496c4d41f34f574fad777c2691d6602d451', '[\"*\"]', NULL, NULL, '2026-10-03 22:31:06', '2026-10-03 22:31:06'),
(4, 'App\\Models\\User', 1, 'auth_token', '3d9b4d19bc309281f79806e8e65d171f9ae680bf06123aefe9f2df226b752e5e', '[\"*\"]', NULL, NULL, '2026-10-03 22:31:51', '2026-10-03 22:31:51'),
(5, 'App\\Models\\User', 1, 'auth_token', 'cc4e2a8086b65afc646956325dd07223cbc97baf64c8ed195d708d064c762dac', '[\"*\"]', NULL, NULL, '2026-10-03 22:31:54', '2026-10-03 22:31:54'),
(6, 'App\\Models\\User', 1, 'auth_token', '644995b2b7c3d78ed0dcceddff1b7582b5e3b863c75dc4444e2fc0f392a5ea12', '[\"*\"]', NULL, NULL, '2026-10-03 22:41:13', '2026-10-03 22:41:13'),
(7, 'App\\Models\\User', 1, 'auth_token', 'b17ec2dfb86a394edf1322f5db8955a1ae82ac14f09e5934a8a0278bc1173dcd', '[\"*\"]', NULL, NULL, '2026-10-03 22:47:44', '2026-10-03 22:47:44'),
(8, 'App\\Models\\User', 1, 'auth_token', '64da5d4b5ee5d7954b166c52d39ecbb012e58acf1f6669a41c5cfcea674b2177', '[\"*\"]', NULL, NULL, '2026-10-03 23:08:43', '2026-10-03 23:08:43'),
(9, 'App\\Models\\User', 1, 'auth_token', '25de24d29efe504f4f332b9957be2303775430c41f4c7855320315a0f955784d', '[\"*\"]', '2026-10-03 23:23:41', NULL, '2026-10-03 23:19:14', '2026-10-03 23:23:41'),
(10, 'App\\Models\\User', 1, 'auth_token', '610e5ce69d2c196ec75d835e436c6d96ecd9ddee474d76cb0d003fa871a82617', '[\"*\"]', '2026-10-03 23:33:40', NULL, '2026-10-03 23:27:43', '2026-10-03 23:33:40'),
(11, 'App\\Models\\User', 1, 'auth_token', 'f78be94abd6785b912f73cf60903c73af589abb58b9835a2bcf73452b034f156', '[\"*\"]', NULL, NULL, '2026-10-03 23:46:03', '2026-10-03 23:46:03'),
(12, 'App\\Models\\User', 1, 'auth_token', 'ee81530b4dff649064018097042069407b37438fb1f1a3d1394390736594e9c4', '[\"*\"]', '2026-10-03 23:57:09', NULL, '2026-10-03 23:53:58', '2026-10-03 23:57:09'),
(13, 'App\\Models\\User', 1, 'auth_token', '1711b2ebc713b9c2bad03f87790fc63be24e015159e190692019896c9bf5840c', '[\"*\"]', '2026-10-03 23:57:38', NULL, '2026-10-03 23:57:22', '2026-10-03 23:57:38'),
(14, 'App\\Models\\User', 1, 'auth_token', 'a5452f9b962748124a09d61d4b8c7a6c034b572586de6d9eac1464d449b922ac', '[\"*\"]', NULL, NULL, '2026-10-03 23:57:48', '2026-10-03 23:57:48'),
(15, 'App\\Models\\User', 1, 'auth_token', 'e11e0ee3f2bb342c7c2e13a825c7d093a4bf37fe29be5ae11bd19958885da9eb', '[\"*\"]', '2026-10-03 23:58:09', NULL, '2026-10-03 23:57:51', '2026-10-03 23:58:09'),
(16, 'App\\Models\\User', 1, 'auth_token', 'c22a2919c37f173c90e74d9b0a14daf867734ac660812c0f6ac3a4e0731fa873', '[\"*\"]', '2026-10-03 23:58:31', NULL, '2026-10-03 23:58:21', '2026-10-03 23:58:31'),
(17, 'App\\Models\\User', 1, 'auth_token', '024525b1e07451cf59ad8ac4dd636487dfce9e04dcdd08114773118ed5a6460d', '[\"*\"]', '2026-10-03 23:59:29', NULL, '2026-10-03 23:59:19', '2026-10-03 23:59:29'),
(18, 'App\\Models\\User', 1, 'auth_token', 'c6ec21802c9b553ea5a3a7175e25d241449b279c0755fcb7fc4e973495447ce6', '[\"*\"]', '2026-10-04 00:04:18', NULL, '2026-10-03 23:59:44', '2026-10-04 00:04:18'),
(19, 'App\\Models\\User', 1, 'auth_token', '0ceef90e27a0d39a75cac6b4600c4b5cc5750810f0df7be555fe5f3cfc26f6e2', '[\"*\"]', '2026-10-04 00:16:50', NULL, '2026-10-04 00:04:26', '2026-10-04 00:16:50'),
(20, 'App\\Models\\User', 1, 'auth_token', '442624057052d68ffda5eac12b6dad83bcb7878081a0d1a4e219f1dfb95c6305', '[\"*\"]', NULL, NULL, '2026-10-04 01:21:37', '2026-10-04 01:21:37'),
(21, 'App\\Models\\User', 1, 'auth_token', '6c7add9741c765d6a1be9501e0f495b623d5d46d7db33af9a213dbb1facdedea', '[\"*\"]', NULL, NULL, '2026-10-04 01:25:15', '2026-10-04 01:25:15'),
(22, 'App\\Models\\User', 1, 'auth_token', 'f8f24b50a298056b250bc7b0bd25428e28597c0e51442959cd0d5183d8a1f37a', '[\"*\"]', '2026-10-04 01:52:28', NULL, '2026-10-04 01:44:30', '2026-10-04 01:52:28'),
(23, 'App\\Models\\User', 1, 'auth_token', 'ebf96498da54fed34cc2e4c23bc2c9f59db6cf52885cd71a266b8b894538d662', '[\"*\"]', '2026-10-04 02:28:15', NULL, '2026-10-04 02:27:24', '2026-10-04 02:28:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `tipo`, `nombre`, `precio`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Deportes', 'Bicicleta Montañeza', 70.99, NULL, '2026-08-30 02:44:56', '2026-10-04 01:46:52'),
(2, 'Deportes', 'Bicicleta Estacionaria.', 116.65, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(3, 'Tecnología', 'Cámara Dron', 173.04, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(4, 'Tecnología', 'Monitor curbo 50 pulg', 187.00, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(5, 'Salud', 'Multivitaminas', 100.15, NULL, '2026-08-30 02:44:56', '2026-08-30 02:44:56'),
(6, 'Juguetes', 'Bicicleta', 150.38, '2026-08-30 03:07:47', '2026-08-30 02:47:30', '2026-08-30 03:07:47'),
(7, 'Juguete', 'Ninten switch', 150.35, '2026-10-03 23:22:27', '2026-10-03 22:38:05', '2026-10-03 23:22:27'),
(8, 'test11', 'test11', 0.01, NULL, '2026-10-03 23:58:09', '2026-10-04 02:28:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Francisco Ramos', 'pakonn@kpo.com', '2026-08-30 02:44:56', '$2y$12$Ys.vfdKe542dwzRYR47fse7dW4O3sLmYl7OofCdCyaEMJGUw4S4Tq', 'YeRGHn1eG6', '2026-08-30 02:44:56', '2026-08-30 02:44:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
