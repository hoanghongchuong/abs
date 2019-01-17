-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 17, 2019 lúc 10:22 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `abs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(1, 8, 'Tầm nhìn', 'tam-nhin', '1533089542_about-1.jpg', NULL, NULL, NULL, '<p>Tầm nh&igrave;n của ch&uacute;ng t&ocirc;i được ho&agrave;n thiện khi mỗi gia đ&igrave;nh tr&ecirc;n đất nước Việt Nam đều c&oacute; &iacute;t nhất một sản phẩm nội thất của Vidcom</p>', 0, NULL, NULL, NULL, 'tam-nhin', '2018-08-01 02:12:22', '2018-07-31 19:12:22'),
(2, 8, 'Sứ mệnh', 'su-menh', '1533089598_about-2.jpg', NULL, NULL, NULL, '<p>Sứ mệnh của Vidcom l&agrave; cung cấp c&aacute;c sản phẩm nội thất c&oacute; thiết kế v&agrave; c&ocirc;ng năng ph&ugrave; hợp đi k&egrave;m với gi&aacute; cả phải chăng. Ch&uacute;ng t&ocirc;i cũng cung cấp dịch vụ tư vấn thiết kế nội thất v&agrave; vận chuyển sản phẩm đến từng gia đ&igrave;nh Việt Nam th&ocirc;ng qua c&aacute;c dịch vụ vận chuyển đa dạng.</p>', 0, NULL, NULL, NULL, 'su-menh', '2018-08-01 02:13:18', '2018-07-31 19:13:18'),
(3, 8, 'Về chúng tôi', 've-chung-toi', '1547277154_about.png', '1542881433_img_intro2.png', '<p>C&ocirc;ng ty cổ phần kiến tr&uacute;c - nội thất City Build l&agrave; một trong số những c&ocirc;ng ty nội thất h&agrave;ng đầu Việt Nam hoạt động tr&ecirc;n những lĩnh vực ch&iacute;nh như: tư vấn thiết kế kiến tr&uacute;c, thiết kế nội thất, được kh&aacute;ch h&agrave;ng tin tưởng v&agrave; lu&ocirc;n được đ&aacute;nh gi&aacute; l&agrave; địa chỉ v&agrave;ng cho những dịch vụ x&acirc;y dựng nơi đem lại chất lượng tốt nhất v&agrave; ...</p>', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 0, NULL, NULL, NULL, 'gioi-thieu', '2019-01-12 07:12:34', '2019-01-12 07:12:34'),
(6, 8, NULL, '', NULL, NULL, NULL, NULL, '<p>Nội dung b&aacute;o gi&aacute;</p>', 0, NULL, NULL, NULL, 'bao-gia', '2018-11-22 02:22:11', '2018-11-22 02:22:11'),
(4, 8, 'Giá trị cốt lõi', 'gia-tri-cot-loi', NULL, NULL, NULL, NULL, '<h3 class=\"vk-about__title-sub\">CON NGƯỜI</h3>\r\n<p>Đại diện cho nền tảng của thương hiệu UMA. Điều n&agrave;y được thể hiện bằng việc ch&uacute;ng t&ocirc;i quan t&acirc;m đến c&aacute;ch sống v&agrave; l&agrave;m việc của kh&aacute;ch h&agrave;ng cũng như cung cấp cho mỗi nh&acirc;n vi&ecirc;n một m&ocirc;i trường l&agrave;m việc l&agrave;nh mạnh, cơ hội để học hỏi v&agrave; ph&aacute;t triển. UMA cũng đ&aacute;nh gi&aacute; cao sự đa dạng v&agrave; kh&aacute;c biệt văn h&oacute;a, nhằm phấn đấu cải thiện chất lượng cuộc sống của cộng đồng.</p>\r\n<h3 class=\"vk-about__title-sub\">THIẾT KẾ</h3>\r\n<p>L&agrave; đặc điểm tạo n&ecirc;n sự kh&aacute;c biệt của ch&uacute;ng t&ocirc;i. Những thiết kế được li&ecirc;n tục ph&aacute;t triển v&agrave; khuyến kh&iacute;ch tự đ&aacute;nh gi&aacute; để ho&agrave;n thiện. C&aacute;c xu hướng hiện đại lu&ocirc;n được phản &aacute;nh trong thiết kế của Vidcom, nhưng cũng đảm bảo kh&ocirc;ng mất đi n&eacute;t văn h&oacute;a Việt Nam. Điều n&agrave;y gi&uacute;p Vidcom trở th&agrave;nh một trong những c&ocirc;ng ty thiết kế nội thất chủ đạo ở Việt Nam.</p>\r\n<h3 class=\"vk-about__title-sub\">DỊCH VỤ</h3>\r\n<p>Lu&ocirc;n được đảm bảo t&iacute;nh tối ưu, lấy kh&aacute;ch h&agrave;ng l&agrave;m trọng t&acirc;m v&agrave; thể hiện sự thấu hiểu nhu cầu của kh&aacute;ch h&agrave;ng trong việc giao h&agrave;ng, thiết kế nội thất, lắp đặt cũng như tư vấn chuy&ecirc;n nghiệp tại cửa h&agrave;ng lẫn tr&ecirc;n website.</p>\r\n<h3 class=\"vk-about__title-sub\">SỰ PH&Aacute;T TRIỂN</h3>\r\n<p>Bất kể Vidcom muốn x&acirc;y dựng c&aacute;c thiết kế, dẫn đầu xu thế cạnh tranh hoặc đảm bảo tương lai th&igrave; Vidcom vẫn lu&ocirc;n lu&ocirc;n cần phải ph&aacute;t triển.</p>', 0, NULL, NULL, NULL, 'cot-loi', '2018-08-01 02:17:25', '2018-07-31 19:17:25'),
(5, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'taisao', '2018-08-01 00:29:56', '2018-08-01 00:29:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1533204557_bank-1.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2018-08-02 10:09:17', '2018-08-02 03:09:17'),
(3, '1533204568_bank-2.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2018-08-02 10:09:28', '2018-08-02 03:09:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `title` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mota` text CHARACTER SET utf8,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Tin tức phong thủy', '2018-07-30 02:46:57', '2018-07-29 19:46:57'),
(3, 'Trang giới thiệu', '2017-11-08 02:03:36', '2017-11-07 19:03:36'),
(4, 'Trang dự án', '2018-07-09 01:38:06', '2018-07-08 18:38:06'),
(5, 'Trang liên hệ', '2018-07-09 01:38:30', '2018-07-08 18:38:30'),
(8, 'Trang kiến trúc', '2018-07-31 01:57:00', '2018-07-30 18:57:00'),
(9, 'Trang nội thất đẹp', '2018-07-30 18:57:09', '2018-07-30 18:57:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(2, 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', 'Hà Nội', NULL, NULL, NULL, 2, 1200000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m demo 1\",\"product_numb\":\"3\",\"product_price\":400000,\"product_img\":\"1542855845_2.jpg\",\"product_code\":null}]', '2018-11-22 04:58:54', '2018-11-22 04:58:54', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `map` text,
  `photo` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `phone`, `address`, `map`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'VPGD', NULL, NULL, 'Tầng 12 - Tòa nhà ADI (Vietcombank), đường Tố Hữu, Vạn Phúc, Hà Đông, Hà Nội, Việt Nam', NULL, NULL, '2019-01-17 04:56:22', '2019-01-17 04:56:22'),
(2, 'TTĐT', NULL, NULL, 'Tầng 1, BT3-VT22, Khu đô thị Xa La, Phường Phúc La, Quận Hà Đông, Hà Nội, Việt Nam', NULL, NULL, '2019-01-17 04:56:39', '2019-01-17 04:56:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(2, 'Màu 1', '#00FF22', '2018-08-02 03:04:21', '2018-08-01 20:04:21'),
(3, 'màu 2', '#6E00FF', '2018-08-01 20:04:09', '2018-08-01 20:04:09'),
(4, 'Màu 3', '#092E00', '2018-08-01 20:04:39', '2018-08-01 20:04:39'),
(5, 'Màu 4', '#000', '2018-08-01 20:04:52', '2018-08-01 20:04:52'),
(6, 'Màu 5', '#D10000', '2018-08-01 20:05:20', '2018-08-01 20:05:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `province_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `address` text,
  `content` text CHARACTER SET latin1,
  `website` varchar(250) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `province_id`, `name`, `email`, `phone`, `address`, `content`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', 'Hà Nội', 'uiki i', NULL, 0, '2019-01-12 03:55:54', '2019-01-12 03:55:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `position` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `photo`, `position`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', '1546850390_cmt.png', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>', '2019-01-07 08:39:50', '2019-01-07 08:39:50'),
(2, 'Nguyễn Văn B', '1546850398_cmt.png', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>', '2019-01-07 08:39:58', '2019-01-07 08:39:58'),
(3, 'Trần Thị B', '1546850446_cmt.png', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', '2019-01-07 08:40:46', '2019-01-07 08:40:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `photo` text,
  `mota` text,
  `content` text,
  `title` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `description` text,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `name`, `alias`, `image`, `photo`, `mota`, `content`, `title`, `keyword`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu về công ty', 'gioi-thieu-ve-cong-ty', '1547540694_about1.png', '1547630699_banner_about.jpg', '<p>C&ocirc;ng ty Cổ phần ABS Việt Nam được th&agrave;nh lập bởi đội ngũ l&atilde;nh đạo t&acirc;m huyết, những c&aacute;n bộ, nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm, chuy&ecirc;n m&ocirc;n vững v&agrave;ng v&agrave; c&oacute; bề d&agrave;y hoạt động trong lĩnh vực đưa người lao động đi l&agrave;m việc ở nước ngo&agrave;i.</p>', '<p>C&ocirc;ng ty Cổ phần ABS Việt Nam được th&agrave;nh lập bởi đội ngũ l&atilde;nh đạo t&acirc;m huyết, những c&aacute;n bộ, nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm, chuy&ecirc;n m&ocirc;n vững v&agrave;ng v&agrave; c&oacute; bề d&agrave;y hoạt động trong lĩnh vực đưa người lao động đi l&agrave;m việc ở nước ngo&agrave;i.<br />&nbsp; &nbsp; Với định hướng trở th&agrave;nh c&ocirc;ng ty số 1 về dịch vụ trong ng&agrave;nh xuất khẩu lao động tại Việt Nam, ch&uacute;ng t&ocirc;i kh&ocirc;ng ngừng s&aacute;ng tạo trong c&aacute;c hoạt động đối ngoại, ho&agrave;n thiện bộ m&aacute;y tổ chức v&agrave; đặc biệt ch&uacute; trọng tới c&ocirc;ng t&aacute;c đ&agrave;o tạo lao động cũng như tạo điều kiện tốt nhất để to&agrave;n bộ nh&acirc;n vi&ecirc;n c&oacute; cơ hội ph&aacute;t triển năng lực của m&igrave;nh.<br />&nbsp; &nbsp; Gi&aacute; trị cốt l&otilde;i của ABS:</p>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Với nh&acirc;n vi&ecirc;n:&nbsp;<strong>Approach &ndash; Be the best &ndash; Share</strong></div>\r\n<div>&nbsp;ABS Việt Nam sẽ l&agrave; nơi để mỗi nh&acirc;n vi&ecirc;n sẽ tự đưa ra mục ti&ecirc;u nghề nghiệp, thỏa sức s&aacute;ng tạo để tiếp cận mục ti&ecirc;u, trở th&agrave;nh người giỏi nhất trong vị tr&iacute; của m&igrave;nh v&agrave; chia sẻ cơ hội th&agrave;nh c&ocirc;ng với đồng nghiệp.</div>\r\n<div>- &nbsp;ABS cho thực tập sinh:&nbsp;<strong>Ambition &ndash; Belief &ndash; Shining</strong></div>\r\n<div>Thực tập sinh của ABS VN sẽ phải l&agrave; những c&aacute; nh&acirc;n biết ho&agrave;i b&atilde;o v&agrave; tham vọng thực hiện ước mơ, ng&ocirc;i trường ABS VN sẽ l&agrave; nơi tạo niềm tin v&agrave; động lực gi&uacute;p c&aacute;c em tỏa s&aacute;ng theo c&aacute;ch của ri&ecirc;ng m&igrave;nh.<br />- &nbsp;ABS cho kh&aacute;ch h&agrave;ng:&nbsp;<strong>Advantage &ndash; Benchmark &ndash; Satisfaction</strong><br />Khởi điểm từ những giải ph&aacute;p nh&acirc;n sự vượt trội với mỗi doanh nghiệp, ABS VN sẽ kh&ocirc;ng ngừng đưa ra c&aacute;c ti&ecirc;u chuẩn v&agrave; ph&eacute;p thử mới để li&ecirc;n tục cải tiến giải ph&aacute;p hiện tại với mong muốn cao nhất l&agrave; lời tri &acirc;n từ ph&iacute;a kh&aacute;ch h&agrave;ng.</div>', NULL, NULL, NULL, 1, '2019-01-16 09:24:59', '2019-01-16 09:24:59'),
(2, 'Khối tuyển dụng', 'khoi-tuyen-dung', '1547540954_about1.png', NULL, '<p>Mạng lưới c&aacute;n bộ tuyển dụng của ABS Việt Nam hoạt động t&iacute;ch cực tới từng cơ sở đ&agrave;o tạo nghề, c&aacute;c cơ quan giới thiệu việc l&agrave;m tại địa phương để phối hợp tuyển chọn trực tiếp lực lượng lao động&nbsp;</p>', '<p>Mạng lưới c&aacute;n bộ tuyển dụng của ABS Việt Nam hoạt động t&iacute;ch cực tới từng cơ sở đ&agrave;o tạo nghề, c&aacute;c cơ quan giới thiệu việc l&agrave;m tại địa phương để phối hợp tuyển chọn trực tiếp lực lượng lao động ph&ugrave; hợp nhất với y&ecirc;u cầu từng đơn h&agrave;ng đặc th&ugrave;.<br />Ngo&agrave;i ra, ch&uacute;ng t&ocirc;i c&ograve;n tuyển chọn lao động qua c&aacute;c k&ecirc;nh b&aacute;o ch&iacute;, internet, hệ thống website, fanpage của c&ocirc;ng ty, gi&uacute;p truyền tải điều kiện thi tuyển nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng tới đ&uacute;ng đối tượng người lao động c&oacute; nhu cầu l&agrave;m việc tại Nhật Bản.</p>', NULL, NULL, NULL, 1, '2019-01-15 08:29:14', '2019-01-15 08:29:14'),
(3, 'KHỐI PHÁT TRIỂN THỊ TRƯỜNG', 'khoi-phat-trien-thi-truong', '1547541178_about2.png', NULL, '<p>Đội ngũ nh&acirc;n sự khối ph&aacute;t triển thị trường được v&iacute; như gương mặt đại diện của C&ocirc;ng ty. Đ&oacute; l&agrave; những người trẻ với nền tảng kiến thức tốt, được đ&agrave;o tạo b&agrave;i bản, lu&ocirc;n tr&agrave;n đầy năng lượng v&agrave; sự&nbsp;</p>', '<p>Đội ngũ nh&acirc;n sự khối ph&aacute;t triển thị trường được v&iacute; như gương mặt đại diện của C&ocirc;ng ty. Đ&oacute; l&agrave; những người trẻ với nền tảng kiến thức tốt, được đ&agrave;o tạo b&agrave;i bản, lu&ocirc;n tr&agrave;n đầy năng lượng v&agrave; sự nhạy b&eacute;n để nhanh ch&oacute;ng nắm bắt v&agrave; đ&aacute;p ứng nhu cầu của đối t&aacute;c kh&aacute;ch h&agrave;ng.<br />Tại ABS Việt Nam, b&ecirc;n cạnh chất lượng lao động, ch&uacute;ng t&ocirc;i lu&ocirc;n đưa ra những y&ecirc;u cầu khắt khe nhất cho chất lượng phục vụ kh&aacute;ch h&agrave;ng. Tất cả thể hiện ở c&ocirc;ng t&aacute;c hậu cần chuy&ecirc;n nghiệp, nồng hậu tiếp đ&oacute;n kh&aacute;ch tới thị s&aacute;t, phỏng vấn trực tiếp tại văn ph&ograve;ng c&ocirc;ng ty v&agrave; những xử l&yacute; linh hoạt, kịp thời khi đối ứng với kh&aacute;ch h&agrave;ng tại c&aacute;c nghiệp đo&agrave;n, x&iacute; nghiệp nơi thực tập sinh l&agrave;m việc.</p>', NULL, NULL, NULL, 1, '2019-01-15 08:32:58', '2019-01-15 08:32:58'),
(4, 'TRUNG TÂM ĐÀO TẠO', 'trung-tam-dao-tao', '1547541271_about3.png', NULL, '<p>L&agrave; tr&aacute;i tim, l&agrave; cốt l&otilde;i của mọi hoạt động nghiệp vụ tại ABS Việt Nam, trung t&acirc;m đ&agrave;o tạo lu&ocirc;n được Ban l&atilde;nh đạo C&ocirc;ng ty d&agrave;nh ưu ti&ecirc;n h&agrave;ng đầu trong việc tập trung mọi nguồn lực để tăng&nbsp;</p>', '<p>L&agrave; tr&aacute;i tim, l&agrave; cốt l&otilde;i của mọi hoạt động nghiệp vụ tại ABS Việt Nam, trung t&acirc;m đ&agrave;o tạo lu&ocirc;n được Ban l&atilde;nh đạo C&ocirc;ng ty d&agrave;nh ưu ti&ecirc;n h&agrave;ng đầu trong việc tập trung mọi nguồn lực để tăng cường chất lượng đ&agrave;o tạo tiếng cũng như định hướng nghề nghiệp cho thực tập sinh.<br />&nbsp;<br />Ch&uacute;ng t&ocirc;i lu&ocirc;n hướng tới lợi &iacute;ch của X&iacute; nghiệp, Nghiệp đo&agrave;n v&agrave; thực tập sinh. Nỗ lực đ&agrave;o tạo thực tập sinh trước xuất cảnh về lễ nghi, t&aacute;c phong trong cuộc sống để c&aacute;c bạn c&oacute; thể sống v&agrave; l&agrave;m việc ở 1 đất nước coi trọng lễ nghi số 1 thế giới.<br />Đội ngũ chuy&ecirc;n gia, gi&aacute;o vi&ecirc;n của Trung t&acirc;m sẽ đưa ra nhiều dạng b&agrave;i tập, b&agrave;i học v&agrave; c&aacute;c t&igrave;nh huống thực tế, khuyến kh&iacute;ch tinh thần tự gi&aacute;c trong học tập v&agrave; r&egrave;n luyện của học vi&ecirc;n. Mục ti&ecirc;u sau kh&oacute;a học, học vi&ecirc;n c&oacute; thể thực h&agrave;nh nghe hiểu tiếng Nhật v&agrave; hội thoại tr&ocirc;i chảy đ&uacute;ng ngữ ph&aacute;p &aacute;p dụng linh hoạt v&agrave;o c&ocirc;ng việc thực tế.</p>', NULL, NULL, NULL, 1, '2019-01-15 08:34:31', '2019-01-15 08:34:31'),
(5, 'VĂN PHÒNG ĐẠI DIỆN TẠI NHẬT BẢN', 'van-phong-dai-dien-tai-nhat-ban', '1547541327_about4.png', NULL, '<p>ABS Việt Nam c&oacute; văn ph&ograve;ng đại diện tại c&aacute;c tỉnh, th&agrave;nh phố lớn tại Nhật Bản như: Nagoya, Osaka, Okayama, Fukuoka&hellip;<br />Ch&uacute;ng t&ocirc;i nỗ lực ph&aacute;t triển mạng lưới nh&acirc;n sự&nbsp;</p>', '<p>ABS Việt Nam c&oacute; văn ph&ograve;ng đại diện tại c&aacute;c tỉnh, th&agrave;nh phố lớn tại Nhật Bản như: Nagoya, Osaka, Okayama, Fukuoka&hellip;<br />Ch&uacute;ng t&ocirc;i nỗ lực ph&aacute;t triển mạng lưới nh&acirc;n sự đại diện rộng khắp, gi&uacute;p nhanh ch&oacute;ng đối ứng với c&aacute;c x&iacute; nghiệp, nghiệp đo&agrave;n v&agrave; hỗ trợ giải quyết kịp thời những kh&oacute; khăn ban đầu khi c&aacute;c bạn thực tập sinh mới nhập cảnh, cũng như động vi&ecirc;n chia sẻ kinh nghiệm để c&aacute;c bạn trẻ nhanh ch&oacute;ng h&ograve;a nhập với m&ocirc;i trường mới, bắt kịp với cường độ l&agrave;m việc nghi&ecirc;m t&uacute;c v&agrave; đ&aacute;p ứng được y&ecirc;u cầu khắt khe của đơn vị sử dụng lao động.</p>', NULL, NULL, NULL, 1, '2019-01-15 08:35:27', '2019-01-15 08:35:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT '0',
  `news_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `news_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(7, 1, NULL, NULL, NULL, '1542859805_5 - Copy (2).jpg', 1, NULL, NULL, 0, '2018-11-22 04:10:05', '2018-11-22 04:10:05'),
(2, 1, NULL, NULL, NULL, '1542856598_4.jpg', 1, NULL, NULL, 0, '2018-11-22 03:16:38', '2018-11-22 03:16:38'),
(9, 3, NULL, NULL, NULL, '1546567276_c2.png', 1, NULL, NULL, 0, '2019-01-04 02:01:16', '2019-01-04 02:01:16'),
(5, 2, NULL, NULL, NULL, '1542856872_4.jpg', 1, NULL, NULL, 0, '2018-11-22 03:21:12', '2018-11-22 03:21:12'),
(6, 2, NULL, NULL, NULL, '1542856872_5 - Copy - Copy.jpg', 1, NULL, NULL, 0, '2018-11-22 03:21:12', '2018-11-22 03:21:12'),
(8, 1, NULL, NULL, NULL, '1542859805_111.jpg', 1, NULL, NULL, 0, '2018-11-22 04:10:05', '2018-11-22 04:10:05'),
(10, 3, NULL, NULL, NULL, '1546567276_c3.jpg', 1, NULL, NULL, 0, '2019-01-04 02:01:16', '2019-01-04 02:01:16'),
(11, 3, NULL, NULL, NULL, '1546567276_c4.jpg', 1, NULL, NULL, 0, '2019-01-04 02:01:16', '2019-01-04 02:01:16'),
(12, 0, 22, NULL, NULL, '1547606003_anh1.JPG', 1, NULL, NULL, 0, '2019-01-16 02:33:23', '2019-01-16 02:33:23'),
(13, 0, 22, NULL, NULL, '1547606003_anh2.jpg', 1, NULL, NULL, 0, '2019-01-16 02:33:23', '2019-01-16 02:33:23'),
(14, 0, 23, NULL, NULL, '1547696067_anh1.JPG', 1, NULL, NULL, 0, '2019-01-17 03:34:27', '2019-01-17 03:34:27'),
(15, 0, 23, NULL, NULL, '1547696067_anh2.jpg', 1, NULL, NULL, 0, '2019-01-17 03:34:27', '2019-01-17 03:34:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `document` text COLLATE utf8_unicode_ci,
  `photo2` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `document`, `photo2`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 8, 'Catalog 2018', NULL, '', '1533112457_tuan1_7.xlsx', '', NULL, '<p>CON NGƯỜI đại diện cho nền tảng của thương hiệu Vidcom. Điều n&agrave;y được thể hiện bằng việc ch&uacute;ng t&ocirc;i quan t&acirc;m đến c&aacute;ch sống v&agrave; l&agrave;m việc của kh&aacute;ch h&agrave;ng cũng như cung cấp cho mỗi nh&acirc;n vi&ecirc;n một m&ocirc;i trường l&agrave;m việc l&agrave;nh mạnh, cơ hội để học hỏi v&agrave; ph&aacute;t triển. Vidcom cũng đ&aacute;nh gi&aacute; cao sự đa dạng v&agrave; kh&aacute;c biệt văn h&oacute;a, nhằm phấn đấu cải thiện chất lượng cuộc sống của cộng đồng.</p>\r\n<p><img src=\"http://localhost/vidcom/upload/cata-log-1.jpg\" alt=\"\" width=\"757\" height=\"392\" /></p>', 0, 0, 'catalog', 1, '2018-08-01 08:38:41', '2018-08-01 01:38:41'),
(2, 8, '1', NULL, '1534403716_ads-1.jpg', NULL, '', NULL, NULL, 1, 0, 'quang-cao', 1, '2018-08-16 07:15:16', '2018-08-16 07:15:16'),
(3, 8, NULL, NULL, '1534403723_ads-2.jpg', NULL, '', NULL, NULL, 1, 0, 'quang-cao', 2, '2018-08-16 07:15:23', '2018-08-16 07:15:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'http://localhost/eu/san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-11-08 02:41:38', '2017-11-07 19:41:38'),
(13, 'Tin tức', 'http://localhost/eu/tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 6, '2017-11-08 03:44:27', '2017-11-07 20:44:27'),
(18, 'Bảng giá', 'http://localhost/eu/bang-gia', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-11-08 01:54:33', '2017-11-07 18:54:33'),
(19, 'Chứng chỉ kĩ thuật', 'http://localhost/eu/chung-chi-ki-thuat', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-11-08 01:13:44', '2017-11-07 18:13:44'),
(20, 'Về chi nhánh', 'http://localhost/eu/gioi-thieu/ve-chi-nhanh', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 7, '2017-11-08 01:37:27', '2017-11-07 18:37:27'),
(21, 'Về nhà xưởng', 'http://localhost/eu/gioi-thieu/ve-nha-xuong', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 8, '2017-11-07 18:15:34', '2017-11-07 18:15:34'),
(23, 'Hàng vặn ren', 'http://localhost/eu/san-pham/hang-van-ren', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 9, '2017-11-07 18:43:17', '2017-11-07 18:43:17'),
(24, 'Đai khởi thủy', 'http://localhost/eu/san-pham/dai-khoi-thuy', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 10, '2017-11-07 18:43:39', '2017-11-07 18:43:39'),
(25, 'Van', 'http://localhost/eu/san-pham/van', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 11, '2017-11-07 18:43:54', '2017-11-07 18:43:54'),
(26, 'Phụ kiện HDPE hàn đối đầu', 'http://localhost/eu/san-pham/phu-kien-hdpe-han-doi-dau', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 12, '2017-11-07 18:44:22', '2017-11-07 18:44:22'),
(27, 'Phụ kiện HDPE hàn điện trở', 'https://developer6.gco.vn/euplastic/san-pham/phu-kien-hdpe-han-dien-tro', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 13, '2017-11-07 18:45:09', '2017-11-07 18:45:09'),
(28, 'Phụ kiện HDPE hàn lồng', 'http://localhost/eu/san-pham/phu-kien-hdpe-han-long', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 14, '2017-11-07 18:45:43', '2017-11-07 18:45:43'),
(29, 'Bảng giá tại Hà Nội', 'http://localhost/eu/bang-gia/bang-gia-tai-ha-noi.html', NULL, 1, 0, 18, NULL, NULL, NULL, 'menu-top', 15, '2017-11-07 18:46:20', '2017-11-07 18:46:20'),
(30, 'Bảng giá tại TP.Hồ Chí Minh', 'http://localhost/eu/bang-gia/bang-gia-tai-tpho-chi-minh.html', NULL, 1, 0, 18, NULL, NULL, NULL, 'menu-top', 16, '2017-11-07 18:46:40', '2017-11-07 18:46:40'),
(31, 'Về công ty', 'http://localhost/eu/gioi-thieu/ve-cong-ty', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 17, '2017-11-07 19:09:40', '2017-11-07 19:09:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `home` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `home`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 8, 'Cơ hội mới cho lao động Việt Nam ở Nhật', 'co-hoi-moi-cho-lao-dong-viet-nam-o-nhat', '1547541995_tintuc1.jpg', '', 'Chế độ mới được thực thi từ ngày 1/7/2010 này quy định thực tập sinh kỹ năng phải ký hợp đồng lao động với doanh nghiệp tiếp nhận trước khi qua Nhật Bản. Do đó, sau khi được cơ quan tiếp nhận phỏng vấn và được chọn làm thực tập sinh kỹ năng thì cần phải ký hợp đồng lao động với doanh nghiệp tiếp nhận.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2019-01-15 08:46:35', '2019-01-15 08:46:35'),
(2, 0, 8, 'Đạt kế hoạch năm 2018 về xuất khẩu lao động', 'dat-ke-hoach-nam-2018-ve-xuat-khau-lao-dong', '1547542038_tintuc2.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2019-01-15 08:47:18', '2019-01-15 08:47:18'),
(3, 0, 8, 'Tin tức 3', 'tin-tuc-3', '1547542085_tintuc3.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 3, '2019-01-15 08:48:05', '2019-01-15 08:48:05'),
(4, 0, 8, 'Tin tức 4', 'tin-tuc-4', '1547542100_tintuc2.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 4, '2019-01-15 08:48:20', '2019-01-15 08:48:20'),
(5, 0, 8, 'Cong trình 1', 'cong-trinh-1', '1547281159_news1.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'anh-cong-trinh', 1, '2019-01-12 08:19:19', '2019-01-12 08:19:19'),
(6, 0, 8, 'Công trình 2', 'cong-trinh-2', '1547281171_news2.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'anh-cong-trinh', 2, '2019-01-12 08:19:31', '2019-01-12 08:19:31'),
(7, 0, 8, 'Công trình 3', 'cong-trinh-3', '1547281804_news4.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'anh-cong-trinh', 3, '2019-01-12 08:30:04', '2019-01-12 08:30:04'),
(8, 1, 8, 'Thiết kế nội thất 1', 'thiet-ke-noi-that-1', '1547287293_sv1.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 1, '2019-01-12 10:01:33', '2019-01-12 10:01:33'),
(9, 1, 8, 'Thiết kế nội thất 2', 'thiet-ke-noi-that-2', '1547287328_news2.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 2, '2019-01-12 10:02:08', '2019-01-12 10:02:08'),
(10, 2, 8, 'Thiết kế nội thất 3', 'thiet-ke-noi-that-3', '1547287357_news4.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 3, '2019-01-12 10:02:37', '2019-01-12 10:02:37'),
(11, 3, 8, 'Bài viết thi công 1', 'bai-viet-thi-cong-1', '1547432293_news2.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thi-cong', 1, '2019-01-14 02:39:18', '2019-01-14 02:39:18'),
(12, 3, 8, 'Bài viết thi công 2', 'bai-viet-thi-cong-2', '1547432303_news3.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thi-cong', 2, '2019-01-14 02:39:26', '2019-01-14 02:39:26'),
(13, 3, 8, 'Bài viết thi công 3', 'bai-viet-thi-cong-3', '1547432330_news4.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thi-cong', 3, '2019-01-14 02:39:52', '2019-01-14 02:39:52'),
(14, 3, 8, 'Bài viết thi công 4', 'bai-viet-thi-cong-4', '1547432346_sv1.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thi-cong', 4, '2019-01-14 02:39:47', '2019-01-14 02:39:47'),
(15, 0, 8, 'Công trình 4', 'cong-trinh-4', '1547435083_sv2.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'anh-cong-trinh', 4, '2019-01-14 03:04:43', '2019-01-14 03:04:43'),
(16, 0, 8, 'Công trình 5', 'cong-trinh-5', '1547435044_news4.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'anh-cong-trinh', 5, '2019-01-14 03:04:04', '2019-01-14 03:04:04'),
(17, 1, 8, 'Bài viết thiết kế nội thất 3', 'bai-viet-thiet-ke-noi-that-3', '1547436097_news4.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 4, '2019-01-14 03:21:37', '2019-01-14 03:21:37'),
(18, 1, 8, 'Thiết kế nội thất demo', 'thiet-ke-noi-that-demo', '1547436122_news1.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 5, '2019-01-14 03:22:02', '2019-01-14 03:22:02'),
(19, 1, 8, 'Thiết kế nội thất demo 4', 'thiet-ke-noi-that-demo-4', '1547436139_p1.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 6, '2019-01-14 03:22:19', '2019-01-14 03:22:19'),
(20, 2, 8, 'Thiết kế ngoại thất demo 1', 'thiet-ke-ngoai-that-demo-1', '1547436250_sv2.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 7, '2019-01-14 03:24:10', '2019-01-14 03:24:10'),
(21, 2, 8, 'Thiết kế ngoại thất demo 2', 'thiet-ke-ngoai-that-demo-2', '1547436272_news2.png', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 8, '2019-01-14 03:24:32', '2019-01-14 03:24:32'),
(22, 0, 8, 'Hội thao abs Việt Nam', 'hoi-thao-abs-viet-nam', '1547606003_anh1.JPG', '', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, 'hinh-anh', 1, '2019-01-17 03:40:34', '2019-01-17 03:40:34'),
(23, 0, 8, 'Cuộc sống của TTS ABS tại Nhật bản', 'cuoc-song-cua-tts-abs-tai-nhat-ban', '1547696067_anh2.jpg', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'hinh-anh', 2, '2019-01-17 03:34:27', '2019-01-17 03:34:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `hot` int(2) DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `hot`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(1, 'Thiết kế nội thất', 'thiet-ke-noi-that', '1547432524_sv1.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 1, '2019-01-14 02:27:59', '', '2019-01-14 02:27:59'),
(2, 'Thiết kế ngoại thất', 'thiet-ke-ngoai-that', '1547432514_sv2.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, 0, 0, NULL, NULL, NULL, 'thiet-ke', 2, '2019-01-14 02:28:14', '', '2019-01-14 02:28:14'),
(3, 'Danh mục thi công 1', 'danh-muc-thi-cong-1', '', NULL, 1, 0, 0, 0, NULL, NULL, NULL, 'thi-cong', 1, '2019-01-14 02:17:38', '', '2019-01-14 02:17:38'),
(4, 'Danh mục thi công 2', 'danh-muc-thi-cong-2', '', NULL, 1, 0, 0, 0, NULL, NULL, NULL, 'thi-cong', 2, '2019-01-14 02:17:46', '', '2019-01-14 02:17:46'),
(5, 'Danh mục thi công 3', 'danh-muc-thi-cong-3', '', NULL, 1, 0, 0, 0, NULL, NULL, NULL, 'thi-cong', 3, '2019-01-14 02:17:55', '', '2019-01-14 02:17:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `name`, `url`, `photo`, `desc`, `content`, `com`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '1542872049_news3.jpg', NULL, NULL, 'doi-tac', 1, '2018-11-22 07:34:09', '2018-11-22 07:34:09'),
(2, '2', NULL, '1542872058_5.jpg', NULL, NULL, 'doi-tac', 1, '2018-11-22 07:34:18', '2018-11-22 07:34:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `color_id` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `numb` int(11) DEFAULT NULL,
  `date_test` date DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `ratepoint` int(2) DEFAULT NULL,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `com` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `color_id`, `stt`, `name`, `alias`, `photo`, `price`, `numb`, `date_test`, `address`, `sale`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `baohanh`, `properties`, `model`, `namsanxuat`, `ratepoint`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `com`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 8, 1, NULL, 'null', 1, 'đơn hàng 1', 'don-hang-1', '', 400000, 347, '2019-01-25', 'Vạn Phúc, Hà Đông, Hà Nọi', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'san-pham', 1, NULL, NULL, NULL, '2019-01-17 07:32:13', '2019-01-17 07:32:13'),
(2, 0, 2, NULL, NULL, 2, 'Tuyển 100 công nhân dệt may', 'tuyen-100-cong-nhan-det-may', '', 4000000, 199, '2019-01-20', 'Hà Đông, Hà Nội', 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'san-pham', 1, NULL, NULL, NULL, '2019-01-17 07:32:58', '2019-01-17 07:32:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `lever` int(11) DEFAULT '0',
  `com` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `noibat`, `mota`, `status`, `lever`, `com`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Kiểm hàng hoàn thiện sản phẩm', 'kiem-hang-hoan-thien-san-pham', '1547544899_dg.jpg', 0, NULL, 1, 0, 'san-pham', NULL, NULL, NULL, '2019-01-15 09:34:59', '2019-01-15 09:34:59'),
(2, 0, 2, 'Dệt may', 'det-may', '1547544784_det.jpg', 0, NULL, 1, 0, 'san-pham', NULL, NULL, NULL, '2019-01-15 09:33:04', '2019-01-15 09:33:04'),
(3, 0, 3, 'Công nghệ ô tô', 'cong-nghe-o-to', '1547544988_ckoto.jpg', 0, '<p>Nooij dung mo ta&nbsp;</p>', 1, 0, 'san-pham', NULL, NULL, NULL, '2019-01-17 08:05:51', '2019-01-17 08:05:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenkhongdau` varchar(255) DEFAULT NULL,
  `mota_vi` text,
  `mota_en` text,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '', '', '', '', '', 30, 1, '0000-00-00 00:00:00', '2017-11-23 21:04:04'),
(2, 'Hà Nội', '', '', '', '', '', 24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hải Phòng', '', '', '', '', '', 28, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'An Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bà Rịa Vũng Tàu', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Bạc Liêu', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Bắc Cạn', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Bắc Giang', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Bắc Ninh', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bến Tre', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bình Dương', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bình Định', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bình Phước', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bình Thuận', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Cà Mau', '', '', '', '', '', 12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cao Bằng', '', '', '', '', '', 13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Cần Thơ', '', '', '', '', '', 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Đà Nẵng', '', '', '', '', '', 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Đắk Lắc ', '', '', '', '', '', 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Đắk Nông', '', '', '', '', '', 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Điện Biện', '', '', '', '', '', 18, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Đồng Nai', '', '', '', '', '', 19, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Đồng Tháp', '', '', '', '', '', 20, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Gia Lai', '', '', '', '', '', 21, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Hà Giang', '', '', '', '', '', 22, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hà Nam', '', '', '', '', '', 23, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Hà Tây', '', '', '', '', '', 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Hà Tĩnh', '', '', '', '', '', 26, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Hải Dương', '', '', '', '', '', 27, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Hòa Bình', '', '', '', '', '', 29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Hậu Giang', '', '', '', '', '', 31, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Hưng Yên', '', '', '', '', '', 32, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Khánh Hòa', '', '', '', '', '', 33, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Kiên Giang', '', '', '', '', '', 34, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Kon Tum', '', '', '', '', '', 35, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Lai Châu', '', '', '', '', '', 36, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Lào Cai', '', '', '', '', '', 37, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Lạng Sơn', '', '', '', '', '', 38, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Lâm Đồng ', '', '', '', '', '', 39, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Long An', '', '', '', '', '', 40, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Nam Định', '', '', '', '', '', 41, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Nghệ An', '', '', '', '', '', 42, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Ninh Bình', '', '', '', '', '', 43, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Ninh Thuận', '', '', '', '', '', 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Phú Thọ', '', '', '', '', '', 45, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Phú Yên', '', '', '', '', '', 46, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Quảng Bình ', '', '', '', '', '', 47, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Quảng Nam', '', '', '', '', '', 48, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Quảng Ngãi', '', '', '', '', '', 49, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Quảng Ninh', '', '', '', '', '', 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Quảng Trị', '', '', '', '', '', 51, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Sóc Trăng', '', '', '', '', '', 52, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Sơn La', '', '', '', '', '', 53, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Tây Ninh', '', '', '', '', '', 54, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Thái Bình', '', '', '', '', '', 55, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Thái Nguyên', '', '', '', '', '', 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Thanh Hóa', '', '', '', '', '', 57, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Thừa Thiên - Huế', '', '', '', '', '', 58, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Tiền Giang', '', '', '', '', '', 59, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Trà Vinh', '', '', '', '', '', 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tuyên Quang', '', '', '', '', '', 61, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Vĩnh Long', '', '', '', '', '', 62, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Vĩnh Phúc', '', '', '', '', '', 63, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Yên Bái', '', '', '', '', '', 64, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo_footer` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `photo_page` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `photo_footer`, `photo_page`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `skype`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ABS', 'ABS', 'ABS', NULL, 'Vạn Phúc, Hà Nội', '0987654321', NULL, NULL, 'acb@gmail.com', '1547622614_ABS_logo.png', '1547262822_logo_footer.png', '1542771860_logo1.png', '1547622621_ABS_logo.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', NULL, 'https://plus.google.com/?hl=vi', NULL, 1, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7749747466096!2d105.82069491439643!3d21.00165548601309!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8429ac32cb%3A0x592668996cef591f!2zMzE1IFRyxrDhu51uZyBDaGluaCwgS2jGsMahbmcgVGjGsOG7o25nLCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1531887013298\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2019-01-16 07:10:21', '2019-01-16 07:10:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo1` text CHARACTER SET utf8,
  `photo2` text CHARACTER SET utf8,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `photo1`, `photo2`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(2, 8, 'WELCOME TO OUR SPA', NULL, '1547276856_slider.png', '', '', NULL, 'CHECK OUT OUT SERVICES AND OFFERS', NULL, 1, 0, 'gioi-thieu', 2, '2019-01-12 07:07:36', '2019-01-12 07:07:36'),
(3, 8, 'WELCOME TO OUR SPA', NULL, '1547276866_slider.png', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 2, '2019-01-12 07:07:46', '2019-01-12 07:07:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `photo` text,
  `photo2` text,
  `stt` int(11) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$IP3633RgCQNAfs6J8cic9.XRNb4v7KxvcI0oF1HpWBQKqPT4v.JYG', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'Ljivi1hsYgR59Oy0OVCKjGS9jXPufymhqIPUw5KmqOOltNBeg2cHsAjOZ4Ve', '2018-07-13 09:06:16', '2018-07-13 02:06:16'),
(7, 'hoangchuong', '$2y$10$PnaSJxmZdL0x0wRtj4q0tODPWKtxI85VefEFNZWDQKEH6q8rxjLc6', 'chuong', 'chuonghoanghong@gmail.com', NULL, NULL, 1, NULL, 1, 'DSYV3dr0q7IjUiVKsa4tl4ApOSuDPybd17EupcaO', '2017-11-07 01:31:10', '2017-11-07 01:31:10'),
(8, 'admin', '$2y$10$54bF9zCcwvAY1oDKCLsN3O/sEUOF/a0Q8Zz/UKti5CzFogRactG3O', 'admin', 'admin@gmail.com', NULL, NULL, 1, 'logo-home-2.png', 1, 'izDy0sIi4C14vppFMpvOctFtS8kPKTAREQKfukx6ck4UP8FHlqbZf8KeUZZy', '2019-01-02 07:22:49', '2018-07-13 18:38:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `link` text,
  `photo` varchar(255) DEFAULT NULL,
  `mota` text,
  `content` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `name`, `alias`, `link`, `photo`, `mota`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu', 'gioi-thieu', 'JQLNdLAgm68', NULL, NULL, NULL, '2019-01-17 08:23:12', '2019-01-17 08:55:28'),
(2, 'Video 2', 'video-2', '8rDw4kyH5vM', NULL, NULL, NULL, '2019-01-17 08:40:25', '2019-01-17 08:55:24');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news_categories` ADD FULLTEXT KEY `name1` (`name`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
