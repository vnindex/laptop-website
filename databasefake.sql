-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 11, 2022 lúc 11:18 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel-fake`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id_admin_roles` int(11) NOT NULL,
  `admin_admin_id` int(10) UNSIGNED NOT NULL,
  `roles_id_roles` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id_admin_roles`, `admin_admin_id`, `roles_id_roles`) VALUES
(30, 8, 3),
(38, 2, 2),
(39, 2, 3),
(40, 2, 1),
(47, 1, 2),
(48, 1, 3),
(49, 3, 3),
(50, 3, 1),
(61, 5, 2),
(62, 6, 3),
(63, 4, 2),
(64, 7, 3),
(65, 8, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'hieutan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'hieutan', '0932023991', NULL, NULL),
(2, 'hieutan123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'hieutan123', '0932023992', NULL, NULL),
(3, 'hieutan456@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'hieutan456', '0932023993', NULL, NULL),
(4, 'nguyenquangduy2202@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'nguyenquangduy2202@gmail.com', '0865096808', NULL, NULL),
(5, 'duy123', 'e10adc3949ba59abbe56e057f20f883e', 'duypro', '0865096808', NULL, NULL),
(6, 'duy123456@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'duy', '0865096808', NULL, NULL),
(7, 'nguyenquangduy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'duykk', '0865096808', NULL, NULL),
(8, 'duy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'omg', '0865096808', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_slug`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Gucci', 'gucci', 'Sang chảnh', 0, NULL, NULL),
(2, 'Chanel', 'chanel', 'Sang chảnh', 0, NULL, NULL),
(3, 'Versace', 'versace', 'Sang chảnh', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_category_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `meta_keywords`, `category_name`, `slug_category_product`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Áo nam mới 2022', 'Áo nam mới 2022', 'ao-nam-moi-2022', 'Áo nam mới 2022', 0, NULL, NULL),
(2, 'Quần nam mới 2022', 'Quần nam mới 2022', 'quan-nam-moi-2022', 'Quần nam mới 2022', 0, NULL, NULL),
(3, 'Giày nam mới 2022', 'Giày nam mới 2022', 'giay-nam-moi-2022', 'Giày nam mới 2022', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(150) NOT NULL,
  `coupon_time` int(50) NOT NULL,
  `coupon_condition` int(11) NOT NULL,
  `coupon_number` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`coupon_id`, `coupon_name`, `coupon_time`, `coupon_condition`, `coupon_number`, `coupon_code`) VALUES
(1, 'Giảm giá 30/4', 10, 1, 10, 'HDH375Y'),
(6, 'Giảm giá Covid', 10, 2, 200000, 'COVID99'),
(7, 'Dep Trai', 4, 1, 40, 'OK'),
(8, 'Tet 2022', 3, 1, 30, 'Tet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(4, 'Hiếu Tấn', 'tanhieu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932023992', NULL, NULL),
(5, 'Hoàng thị yến vi', 'yenvi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932023992', NULL, NULL),
(6, 'Trương Ngọc Tấn Hiếu', 'hieu123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932023992', NULL, NULL),
(7, 'Anh hieu dep giai 123', 'depgiai123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932023992', NULL, NULL),
(8, 'Nguyễn Quang Duy', 'admin123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0865096808', NULL, NULL),
(9, 'Nguyễn Quang Duy', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0865096808', NULL, NULL),
(10, 'Nguyễn Quang', 'quang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '08650', NULL, NULL),
(11, 'Nguyễn Quang Duy', 'kk@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0865096808', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_feeship`
--

CREATE TABLE `tbl_feeship` (
  `fee_id` int(11) NOT NULL,
  `fee_matp` varchar(10) NOT NULL,
  `fee_maqh` varchar(10) NOT NULL,
  `fee_xaid` varchar(10) NOT NULL,
  `fee_feeship` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `shipping_id` int(11) UNSIGNED NOT NULL,
  `order_status` int(20) NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_status`, `order_code`, `created_at`, `updated_at`) VALUES
(18, 4, 19, 1, '1778b', '2020-08-08 08:54:34', NULL),
(19, 9, 20, 1, 'a133e', '2021-12-27 15:12:58', NULL),
(20, 9, 21, 1, 'cc47a', '2021-12-28 15:29:51', NULL),
(21, 9, 22, 2, '982a0', '2021-12-29 13:59:45', NULL),
(22, 9, 23, 3, '4a7e4', '2021-12-29 14:04:05', NULL),
(23, 10, 24, 2, 'f8dfa', '2021-12-29 15:02:53', NULL),
(24, 9, 25, 1, '4a7f8', '2021-12-30 07:59:07', NULL),
(25, 11, 26, 2, '2ab96', '2021-12-30 08:26:52', NULL),
(26, 9, 27, 2, 'dd57a', '2022-01-06 08:20:12', NULL),
(27, 9, 28, 1, '3151f', '2022-01-09 14:48:13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_coupon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_feeship` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_coupon`, `product_feeship`, `created_at`, `updated_at`) VALUES
(1, '3151f', 1, 'Áo sơ mi nam tay ngắn trẻ trung', '500000', 1, 'OK', '10000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sold` int(11) DEFAULT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_quantity`, `product_sold`, `product_slug`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Áo sơ mi nam tay ngắn trẻ trung', '70', NULL, 'ao-so-mi-nam-tay-ngan-tre-trung', 3, 3, '<p>Sang chảnh</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost:8080/85db75b7-8620-4c9a-b477-505b9516c37d\" width=\"862\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '<p>Sang chảnh</p>', '500000', 'somi332.jpg', 0, NULL, NULL),
(2, 'Áo chanel hot 2022', '90', NULL, 'ao-chanel-hot-2022', 1, 2, '<p>&Aacute;o đẹp</p>', '<p>&Aacute;o đẹp</p>', '450000', 'somi239.jpg', 0, NULL, NULL),
(3, 'Áo sơ mi nam jean xanh', '50', NULL, 'ao-so-mi-nam-jean-xanh', 1, 1, '<p>&Aacute;o đẹp</p>', '<p>&Aacute;o đẹp</p>', '400000', 'somi784.jpg', 0, NULL, NULL),
(4, 'Áo sơ mi nâu classic', '50', NULL, 'ao-so-mi-nau-classic', 1, 2, '<p>&Aacute;o đẹp</p>', '<p>&Aacute;o đẹp</p>', '500000', 'somi446.jpg', 0, NULL, NULL),
(5, 'Áo sơ mi quẩy bar cực chất', '70', NULL, 'ao-so-mi-quay-bar-cuc-chat', 1, 1, '<p>&Aacute;o đẹp</p>', '<p>&Aacute;o đẹp</p>', '400000', 'somi529.jpg', 0, NULL, NULL),
(6, 'Áo sơ mi nam trắng classic', '50', NULL, 'ao-so-mi-nam-trang-classic', 1, 3, '<p>&Aacute;o đẹp</p>', '<p>&Aacute;o đẹp</p>', '400000', 'somi144.jpg', 0, NULL, NULL),
(7, 'Quần jean nam nhảy hiphop', '70', NULL, 'quan-jean-nam-nhay-hiphop', 2, 3, '<p>Quần đẹp</p>', '<p>Quần đẹp</p>', '500000', 'quanjean45.jpg', 0, NULL, NULL),
(8, 'Quần jean nam trắng', '90', NULL, 'quan-jean-nam-trang', 2, 2, '<p>Quần đẹp</p>', '<p>Quần đẹp</p>', '500000', 'quanjean496.jpg', 0, NULL, NULL),
(9, 'Quần jean nam xanh', '90', NULL, 'quan-jean-nam-xanh', 2, 1, '<p>Quần đẹp</p>', '<p>Quần đẹp</p>', '500000', 'quanjean582.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_quanhuyen`
--

CREATE TABLE `tbl_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name_quanhuyen` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_quanhuyen`
--

INSERT INTO `tbl_quanhuyen` (`maqh`, `name_quanhuyen`, `type`, `matp`) VALUES
('001', 'Quận Ba Đình', 'Quận', 1),
('002', 'Quận Hoàn Kiếm', 'Quận', 1),
('003', 'Quận Tây Hồ', 'Quận', 1),
('004', 'Quận Long Biên', 'Quận', 1),
('005', 'Quận Cầu Giấy', 'Quận', 1),
('973', 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id_roles` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_roles`
--

INSERT INTO `tbl_roles` (`id_roles`, `name`) VALUES
(1, 'admin'),
(2, 'author'),
(3, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `shipping_method`, `created_at`, `updated_at`) VALUES
(17, 'Hieu Tấn', '245 Nguyễn Văn Khạ, Tân An Hội .Thị trấn Củ Chi,TPHCM', '0932023992', 'Hieu dep giai', 'Nhanh nha mày', 1, NULL, NULL),
(18, 'Hieu tấn', '123/123', '0932023992', 'dsadas@gmail.com', 'dasdasdasdas', 1, NULL, NULL),
(19, 'Hieu tấn', '123/123', '0932023992', 'dsadas@gmail.com', 'dasdasdasdas', 0, NULL, NULL),
(20, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'll', 0, NULL, NULL),
(21, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'kk', 0, NULL, NULL),
(22, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'll', 1, NULL, NULL),
(23, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'll', 0, NULL, NULL),
(24, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'll', 0, NULL, NULL),
(25, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'kk', 0, NULL, NULL),
(26, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'kkkkkk', 1, NULL, NULL),
(27, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'kk', 0, NULL, NULL),
(28, 'Nguyễn Quang Duy', '98 phan văn hân , p17 , Bình Thạnh , TP Hcm', '0865096808', 'nguyenquangduy2202@gmail.com', 'kk', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_status` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_status`, `slider_image`, `slider_desc`) VALUES
(6, 'Slider quan áo', 1, '091216-casualfalloutifts-slider-2png18.png', 'Slider quan áo'),
(9, 'Sale', 1, 'fashion-sale-banner-template-design-9db9afa9dc48742dd1f63f4b3e970eb1_screen32.jpg', 'ok'),
(10, 'Sale 20', 1, 'fashion-sale-banner-template-design-f7863ed31571a109d072a7dae4778ca1_screen92.jpg', 'kk');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `user` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tinhthanhpho`
--

CREATE TABLE `tbl_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name_city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tbl_tinhthanhpho`
--

INSERT INTO `tbl_tinhthanhpho` (`matp`, `name_city`, `type`) VALUES
('01', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('02', 'Tỉnh Hà Giang', 'Tỉnh'),
('04', 'Tỉnh Cao Bằng', 'Tỉnh'),
('06', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_xaphuongthitran`
--

CREATE TABLE `tbl_xaphuongthitran` (
  `xaid` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name_xaphuong` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `maqh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_xaphuongthitran`
--

INSERT INTO `tbl_xaphuongthitran` (`xaid`, `name_xaphuong`, `type`, `maqh`) VALUES
('00001', 'Phường Phúc Xá', 'Phường', 1),
('00004', 'Phường Trúc Bạch', 'Phường', 1),
('32242', 'Xã Viên An', 'Xã', 973),
('32244', 'Thị trấn Rạch Gốc', 'Thị trấn', 973),
('32245', 'Xã Tân Ân', 'Xã', 973),
('32248', 'Xã Đất Mũi', 'Xã', 973);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id_admin_roles`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_feeship`
--
ALTER TABLE `tbl_feeship`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `fee_matp` (`fee_matp`,`fee_maqh`,`fee_xaid`),
  ADD KEY `fee_maqh` (`fee_maqh`),
  ADD KEY `fee_xaid` (`fee_xaid`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`,`shipping_id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`,`brand_id`),
  ADD KEY `tbl_product_ibfk_1` (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_quanhuyen`
--
ALTER TABLE `tbl_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Chỉ mục cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user` (`user`);

--
-- Chỉ mục cho bảng `tbl_tinhthanhpho`
--
ALTER TABLE `tbl_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Chỉ mục cho bảng `tbl_xaphuongthitran`
--
ALTER TABLE `tbl_xaphuongthitran`
  ADD PRIMARY KEY (`xaid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id_admin_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_feeship`
--
ALTER TABLE `tbl_feeship`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_feeship`
--
ALTER TABLE `tbl_feeship`
  ADD CONSTRAINT `tbl_feeship_ibfk_1` FOREIGN KEY (`fee_maqh`) REFERENCES `tbl_quanhuyen` (`maqh`),
  ADD CONSTRAINT `tbl_feeship_ibfk_2` FOREIGN KEY (`fee_matp`) REFERENCES `tbl_tinhthanhpho` (`matp`),
  ADD CONSTRAINT `tbl_feeship_ibfk_3` FOREIGN KEY (`fee_xaid`) REFERENCES `tbl_xaphuongthitran` (`xaid`);

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`shipping_id`) REFERENCES `tbl_shipping` (`shipping_id`),
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customers` (`customer_id`);

--
-- Các ràng buộc cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tbl_category_product` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD CONSTRAINT `tbl_social_ibfk_1` FOREIGN KEY (`user`) REFERENCES `tbl_admin` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
