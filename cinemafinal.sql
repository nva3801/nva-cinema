-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2022 lúc 06:08 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cinemafinal`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `madonhang` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bookings`
--

INSERT INTO `bookings` (`id`, `madonhang`, `username`, `email`, `phoneNumber`, `time_id`, `total`, `created_at`, `updated_at`) VALUES
(29, 6074, 'An', 'nva030801@gmail.com', '966093801', '1', 480000, '2022-05-11 07:31:52', '2022-05-11 07:31:52'),
(30, 8420, 'An', 'nva030801@gmail.com', '966093801', '1', 480000, '2022-05-11 07:51:11', '2022-05-11 07:51:11'),
(31, 3681, 'An', 'nva030801@gmail.com', '966093801', '2', 360000, '2022-05-11 07:51:34', '2022-05-11 07:51:34'),
(32, 2888, 'An', 'nva030801@gmail.com', '966093801', '4', 600000, '2022-05-11 08:44:52', '2022-05-11 08:44:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_details`
--

CREATE TABLE `booking_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `madonhang` int(11) NOT NULL,
  `chair` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_details`
--

INSERT INTO `booking_details` (`id`, `madonhang`, `chair`, `time_id`, `created_at`, `updated_at`) VALUES
(38, 6074, 'A1', '1', '2022-05-11 07:31:52', '2022-05-11 07:31:52'),
(39, 6074, 'A2', '1', '2022-05-11 07:31:52', '2022-05-11 07:31:52'),
(40, 6074, 'A3', '1', '2022-05-11 07:31:52', '2022-05-11 07:31:52'),
(41, 6074, 'B3', '1', '2022-05-11 07:31:52', '2022-05-11 07:31:52'),
(42, 8420, 'C17', '1', '2022-05-11 07:51:11', '2022-05-11 07:51:11'),
(43, 8420, 'C18', '1', '2022-05-11 07:51:11', '2022-05-11 07:51:11'),
(44, 8420, 'D17', '1', '2022-05-11 07:51:11', '2022-05-11 07:51:11'),
(45, 8420, 'D18', '1', '2022-05-11 07:51:11', '2022-05-11 07:51:11'),
(46, 3681, 'C8', '2', '2022-05-11 07:51:34', '2022-05-11 07:51:34'),
(47, 3681, 'C9', '2', '2022-05-11 07:51:34', '2022-05-11 07:51:34'),
(48, 3681, 'D8', '2', '2022-05-11 07:51:34', '2022-05-11 07:51:34'),
(49, 2888, 'B10', '4', '2022-05-11 08:44:52', '2022-05-11 08:44:52'),
(50, 2888, 'B11', '4', '2022-05-11 08:44:52', '2022-05-11 08:44:52'),
(51, 2888, 'B12', '4', '2022-05-11 08:44:52', '2022-05-11 08:44:52'),
(52, 2888, 'C10', '4', '2022-05-11 08:44:52', '2022-05-11 08:44:52'),
(53, 2888, 'C11', '4', '2022-05-11 08:44:52', '2022-05-11 08:44:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phim Đang Chiếu', 'phim-dang-chieu', 1, '2022-05-08 07:11:01', '2022-05-08 07:17:39'),
(2, 'Phim Sắp Chiếu', 'phim-sap-chieu', 1, '2022-05-08 07:11:14', '2022-05-08 07:11:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_08_134813_create_categories_table', 2),
(6, '2022_05_08_142100_create_movies_table', 3),
(7, '2022_05_08_153148_create_movie_dates_table', 4),
(8, '2022_05_08_155347_create_movie_times_table', 5),
(9, '2022_05_10_083015_create_bookings_table', 5),
(10, '2022_05_10_083036_create_booking_details_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `premiere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `name`, `slug`, `category_id`, `image`, `description`, `trailer`, `director`, `actors`, `genre`, `premiere`, `time`, `language`, `rated`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PHÙ THỦY TỐI THƯỢNG TRONG ĐA VŨ TRỤ HỖN LOẠN', 'phu-thuy-toi-thuong-trong-da-vu-tru-hon-loan', 1, 'movie/D8cgAZxWSY37R1IRs6TFBXXnEnUOb43iUSzD7TME.jpg', '<p>Sau các sự kiện của Avengers: Endgame, Tiến sĩ Stephen Strange tiếp tục nghiên cứu về Viên đá Thời gian. Nhưng một người bạn cũ đã trở thành kẻ thù tìm cách tiêu diệt mọi phù thủy trên Trái đất, làm xáo trộn kế hoạch của Strange và cũng khiến anh ta mở ra một tội ác khôn lường.</p>', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/nBNtRvpCmms\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Sam Raimi', 'Benedict Cumberbatch, Elizabeth Olsen Rachel McAdams', 'Hành Động, Phiêu Lưu, Thần thoại', '04/05/2022', '126 phút', 'Tiếng Anh - Phụ đề Tiếng Việt', '1', '1', '2022-05-08 07:47:52', '2022-05-08 07:47:52'),
(2, 'NGHỀ SIÊU DỄ', 'nghe-sieu-de', 1, 'movie/0S8m7ZmT9e8hzb4ihlJ6ixaLdIQ4rDOSNK26n1OH.jpg', '<p>Ông Thái là một cảnh sát về hưu nhưng không chịu an phận thủ thường, hàng ngày vẫn đi tìm bắt tội phạm vặt trong xóm cho đỡ nhớ nghề. Một ngày kia, Hoàng - tên trùm ma túy mới ra tù bỗng dưng chuyển đến xóm ông và mở một văn phòng bất động sản. Nghi ngờ đây là nơi làm ăn phi pháp, ông Thái quyết định âm thầm điều tra. Ông mua lại tiệm cơm tấm đối diện trụ sở của Hoàng để làm nơi theo dõi, đồng thời thu nạp Thu - Phú - Vinh - Mèo, đám thanh niên “bất hảo” trong xóm về quán hỗ trợ buôn bán để rảnh tay \"phá án\". Trớ trêu thay, tiệm cơm bất ngờ nổi tiếng và ăn nên làm ra, khiến cho \"chuyên án đặc biệt\" của ông đứng trước nguy cơ đổ bể.</p>', '<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/1anBxcsV5b8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Võ Thanh Hòa', 'Hứa Vĩ Văn, Thu Trang, Kiều Minh Tuấn, Tiến Luật, Huỳnh Phương, Quang Tuấn, Vũ Ngọc Anh, Thanh Mỹ', 'Hài, Hành Động', '29/04/2022', '113 phút', 'Tiếng Việt - Phụ đề Tiếng Anh', '2', '1', '2022-05-08 09:20:30', '2022-05-08 09:20:30'),
(3, 'TĂNG TỐC.. VỀ PHÍA EM', 'tang-toc-ve-phia-em', 1, 'movie/jOfRli776qLF9VndH3MQnScuvo0QxemxxluxZqh4.jpg', '<p>Kao (Nat Kitcharit) là một nhà vô địch thế giới môn xếp ly tốc độ (Speed Stack). Tuy thành công và nổi tiếng nhưng Kao lại chỉ như một đứa trẻ to xác suốt ngày chỉ ăn, ngủ và tập luyện. Mọi vấn đề xung quanh anh đều một tay Jay (Yaya) bạn gái anh quán xuyến. Đến một ngày khi Jay quyết định chia tay thì Kao như bị mất tất cả. Anh phải bắt đầu học những kỹ năng sống cơ bản để có thể tự sống một mình và chăm sóc bản thân. Song song đó những đối thủ mới cũng xuất hiện và đe dọa đến vị trí quán quân của Kao.</p>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/h261_whvLPM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Nawapol Thamrongrattanarit', 'Nat Kitcharit, Urassaya Sperbund, Anusara Korsamphan, Kanokwan Butrachart, Wipawee Patnasiri, Keetapat Pongruea', 'Hài, Tình cảm', '29/04/2022', '131 phút', 'Tiếng Thái - Phụ đề tiếng Việt', '0', '1', '2022-05-09 07:43:37', '2022-05-09 07:43:37'),
(4, 'NHÍM SONIC 2', 'nhim-sonic-2', 1, 'movie/nt0TRwMHa733HJhOh0q5saF9YLwE4TXKuSlWXqdf.jpg', '<p>Khi Robotnik tìm cách quay trở về Trái Đất thành công, ông ta có một đồng minh mới là Knuckles hùng mạnh, liệu Sonic và người bạn ới Tails có thể ngăn chặn được âm mưu điên rồi để cứu lấy thế giới?</p>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JmJfFmoMDwE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Jeff Fowler', 'Ben Schwartz, Idris Elba, Jim Carrey, James Marsden, Tika Sumpter', 'Hành Động, Phiêu Lưu', '15/04/2022', '122 phút', 'Tiếng Anh - Phụ đề Tiếng Việt', '0', '1', '2022-05-09 07:44:50', '2022-05-09 07:44:50'),
(5, 'ÁN MẠNG LIÊN HOÀN LÚC NỬA ĐÊM', 'an-mang-lien-hoan-luc-nua-dem', 1, 'movie/WmjgOm1kD7ewCuSWWDo6cIBtanhVyv3YOFIgT4E1.jpg', '<p>Bộ phim kể về 3 câu chuyện bí ẩn với những sự thật kinh hoàng dần được hé lộ.</p>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Jt8KkskJmlE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Suphakorn Riansuwan', 'Pae Arak Amornsupasiri, Aek Thaneth Warakulnukroh, Prang Kannarun Wongkajornklai, Mark Prin Suparat,…', 'Kinh Dị', '29/04/2022', '98 phút', 'Tiếng Thái - Phụ đề tiếng Việt', '3', '1', '2022-05-09 07:45:47', '2022-05-09 07:45:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_dates`
--

CREATE TABLE `movie_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movie_dates`
--

INSERT INTO `movie_dates` (`id`, `movie_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-09-10', 1, '2022-05-08 08:42:52', '2022-05-08 08:51:31'),
(2, 2, '2022-08-05', 1, '2022-05-08 09:21:25', '2022-05-08 09:21:25'),
(3, 1, '2022-05-09', 1, '2022-05-09 02:29:03', '2022-05-09 02:29:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_times`
--

CREATE TABLE `movie_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_id` int(11) NOT NULL,
  `time` time NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movie_times`
--

INSERT INTO `movie_times` (`id`, `date_id`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '15:34:00', 1, '2022-05-10 01:34:27', '2022-05-10 01:34:27'),
(2, 1, '03:34:00', 1, '2022-05-10 01:34:35', '2022-05-10 01:34:35'),
(3, 3, '15:40:00', 1, '2022-05-10 01:34:45', '2022-05-10 01:34:45'),
(4, 2, '21:34:00', 1, '2022-05-10 01:34:53', '2022-05-10 01:34:53');

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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phoneNumber`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'An', 'nva030801@gmail.com', 966093801, NULL, '$2y$10$AejsYsHZJn0ZKc6ixOoXf.zxRSHs4DXCe0atlWfAf.dmIWBHnRN3u', 1, NULL, '2022-05-08 03:56:00', '2022-05-08 03:56:00'),
(2, 'Ann', 'nva03080@gmail.com', 966093801, NULL, '$2y$10$BNP1UA2lirDFOvn3DHy6COV9bIoJavHiVz1ZD02EzpsoxgETTpdrm', NULL, NULL, '2022-05-08 03:57:44', '2022-05-08 03:57:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `movie_dates`
--
ALTER TABLE `movie_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_dates_movie_id_foreign` (`movie_id`);

--
-- Chỉ mục cho bảng `movie_times`
--
ALTER TABLE `movie_times`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `movie_dates`
--
ALTER TABLE `movie_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `movie_times`
--
ALTER TABLE `movie_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `movie_dates`
--
ALTER TABLE `movie_dates`
  ADD CONSTRAINT `movie_dates_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
