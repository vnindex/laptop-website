-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2022 lúc 10:09 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nguyenkim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `check_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_qty` int(11) NOT NULL,
  `ship_method` tinyint(4) NOT NULL,
  `pay_method` tinyint(4) NOT NULL,
  `bill_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `hinhanhcon`
--

CREATE TABLE `hinhanhcon` (
  `chill_id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `chill_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0563ba0d-6116-45f3-b1b4-93b32c46e093', 'App\\Notifications\\OrderSend', 'App\\User', 1, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #1\",\"content\":\"Xem ngay\"}', NULL, '2020-12-14 10:00:29', '2020-12-14 10:00:29'),
('17d07023-83f5-4eb9-b07f-624627d5ac36', 'App\\Notifications\\OrderSend', 'App\\User', 1, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #3\",\"content\":\"Xem ngay\"}', NULL, '2020-12-18 09:06:32', '2020-12-18 09:06:32'),
('26cc0d52-4e39-478c-8288-85cce7daef18', 'App\\Notifications\\OrderSend', 'App\\User', 1, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #8\",\"content\":\"Xem ngay\"}', NULL, '2020-12-20 03:27:43', '2020-12-20 03:27:43'),
('75bf82cc-97e5-4f6a-934c-1e8b190adc3b', 'App\\Notifications\\OrderSend', 'App\\User', 1, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #4\",\"content\":\"Xem ngay\"}', NULL, '2020-12-20 02:30:38', '2020-12-20 02:30:38'),
('88310e88-a9d7-4d25-a8eb-08c9b2c25566', 'App\\Notifications\\OrderSend', 'App\\User', 1, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #9\",\"content\":\"Xem ngay\"}', NULL, '2020-12-20 03:28:28', '2020-12-20 03:28:28'),
('b67a0fef-5033-44ba-9fd1-98d78276e0ba', 'App\\Notifications\\OrderSend', 'App\\User', 1, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #2\",\"content\":\"Xem ngay\"}', NULL, '2020-12-18 09:05:56', '2020-12-18 09:05:56'),
('b828639c-d462-448f-bd14-6e346546e9e2', 'App\\Notifications\\OrderSend', 'App\\User', 1, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #7\",\"content\":\"Xem ngay\"}', NULL, '2020-12-20 03:08:29', '2020-12-20 03:08:29'),
('f7d0f6a9-86a5-494a-b4bc-f44e195148a5', 'App\\Notifications\\OrderSend', 'App\\User', 1, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #5\",\"content\":\"Xem ngay\"}', NULL, '2020-12-20 03:03:37', '2020-12-20 03:03:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `rev_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `pro_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `pro_old_price` int(11) DEFAULT NULL,
  `pro_new_price` int(11) DEFAULT NULL,
  `pro_sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamyeuthich`
--

CREATE TABLE `sanphamyeuthich` (
  `wish_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `role` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`user_id`, `username`, `email`, `email_verified_at`, `password`, `name`, `provider`, `provider_id`, `avatar`, `phone`, `birthday`, `gender`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'tesst1', 'quang123@gmail.com', NULL, '$2y$10$EQQB72ExUtI7dCzcYpPTz.8fhZ3SiBfACOdPZU66bHfXtP4K148W.', 'Nguyễn Duy Quang', NULL, NULL, '627f308217ccd_89300e34a4de65803ccf.jpg', '0987654321', '2022-05-05', 1, 1, NULL, '2022-05-05 04:09:15', '2022-05-13 21:30:58'),
(7, 'Thanh', 'thanh@gmail.com', NULL, '$2y$10$rBScLRmY/QCfYMn5RIQm4.lClrg4ewOI9XaSFLhqPdnVyuSRrJU4e', 'Trần Duy Thanh', NULL, NULL, NULL, NULL, '2002-02-06', 1, 0, NULL, '2022-05-05 06:07:20', '2022-05-05 06:07:20'),
(8, 'manhduy', 'manhduy@gmail.com', NULL, '$2y$10$47/PAWdfrenNJSlFTD41ieQl3t7nptlZZfRJKeuLamx6timC5dOUW', 'Nguyễn Duy Mạnh', NULL, NULL, NULL, NULL, '2000-01-04', 1, 0, NULL, '2022-05-05 06:08:18', '2022-05-05 06:08:18'),
(9, 'mai', 'mai@gmail.com', NULL, '$2y$10$TI0KuJAcQyIEZ5Ep2x5eCe4y4LoH5aLuXnDOKqZaxU6CxsIDKEGGG', 'Nguyễn Thị Mai', NULL, NULL, NULL, NULL, '2001-06-13', 0, 0, NULL, '2022-05-05 06:09:04', '2022-05-05 06:09:04');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`check_id`),
  ADD KEY `chitiethoadon_order_id_foreign` (`order_id`),
  ADD KEY `chitiethoadon_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinhanhcon`
--
ALTER TABLE `hinhanhcon`
  ADD PRIMARY KEY (`chill_id`),
  ADD KEY `pro_chill_images_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`rev_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD PRIMARY KEY (`wish_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `check_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhanhcon`
--
ALTER TABLE `hinhanhcon`
  MODIFY `chill_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `rev_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  MODIFY `wish_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `donhang` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiethoadon_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `sanpham` (`pro_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `taikhoan` (`user_id`);

--
-- Các ràng buộc cho bảng `hinhanhcon`
--
ALTER TABLE `hinhanhcon`
  ADD CONSTRAINT `pro_chill_images_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `sanpham` (`pro_id`);

--
-- Các ràng buộc cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `reviews_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `sanpham` (`pro_id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `taikhoan` (`user_id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `danhmuc` (`cate_id`);

--
-- Các ràng buộc cho bảng `sanphamyeuthich`
--
ALTER TABLE `sanphamyeuthich`
  ADD CONSTRAINT `wishlists_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `sanpham` (`pro_id`),
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `taikhoan` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
