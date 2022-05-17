-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 17, 2022 lúc 12:10 PM
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
(32, 2888, 'An', 'nva030801@gmail.com', '966093801', '4', 600000, '2022-05-11 08:44:52', '2022-05-11 08:44:52'),
(33, 3751, 'An', 'nva030801@gmail.com', '966093801', '1', 360000, '2022-05-12 06:37:33', '2022-05-12 06:37:33');

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
(53, 2888, 'C11', '4', '2022-05-11 08:44:52', '2022-05-11 08:44:52'),
(54, 3751, 'B8', '1', '2022-05-12 06:37:33', '2022-05-12 06:37:33'),
(55, 3751, 'B9', '1', '2022-05-12 06:37:33', '2022-05-12 06:37:33'),
(56, 3751, 'C9', '1', '2022-05-12 06:37:33', '2022-05-12 06:37:33');

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
(10, '2022_05_10_083036_create_booking_details_table', 5),
(11, '2022_05_17_075643_create_news_table', 6);

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
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '[ZALOPAY] THÁNG 5 KHUYẾN MÃI CHỈ TỪ 9K KHI ĐẶT VÉ XEM PHIM CGV', '<p><strong>1. Thời gian: Từ ngày 06/05/2022 đến 31/05/2022</strong><br><strong>2. Địa điểm sử dụng:</strong> Website cgv.vn, ứng dụng CGV Cinemas.<br><br><strong>3. Đối tượng khuyến mại:</strong><br>- Bạn cũ: Tất cả khách hàng của ZaloPay đã từng có ít nhất 01 giao dịch thanh toán.<br>- Bạn mới: Lần đầu tiên liên kết thẻ/tài khoản ngân hàng mới với ZaloPay để thanh toán cho dịch vụ/ sản phẩm của CGV.<br><br><strong>4. Nội dung chương trình:</strong><br>- Bạn cũ: Chỉ 69.000đ/vé khi thanh toán bằng ví điện tử ZaloPay.<br>- Bạn mới: Chỉ 9.000đ/vé CGV khi thanh toán bằng ví điện tử ZaloPay, ngoài ra còn nhận thêm 01 voucher giảm 10.000đ cho đơn hàng mua vé phim CGV từ 500.000đ trở lên<br><br><strong>5. Hướng dẫn thực hiện:</strong><br>- Bước 1: Truy cập Website hoặc Ứng dụng CGV Cinemas.<br>- Bước 2: Tiến hành đặt 2 vé phim và chọn phương thức thanh toán ZaloPay.<br>- Bước 3: Mở ứng dụng ZaloPay và thực hiện các bước thanh toán.<br>- Bước 4: Vé giảm sẽ tự động áp dụng nếu bạn thỏa điều kiện khi chuyển sang màn hình thanh toán của ZaloPay.<br>- Bước 5: Kiểm tra thông tin và xác nhận thanh toán.<br>&nbsp;</p><p><a href=\"https://www.cgv.vn/default/movies/now-showing.html\"><strong>Đặt vé theo phim</strong></a></p><p><a href=\"https://www.cgv.vn/default/cinox/site/\"><strong>Đặt vé theo rạp</strong></a></p><p><br><strong>6. Quy định về loại vé và phòng chiếu</strong><br>- Vé 9.000đ chỉ áp dụng duy nhất cho 01 vé đầu tiên<br>- Vé 69.000đ, Tối đa 2 vé/tháng.<br>- Áp dụng các suất chiếu 2D tất cả các ngày trong tuần của CGV (ghế Standard, ghế VIP).<br>- KHÔNG áp dụng ghế Sweetbox, Deluxe.<br>- KHÔNG áp dụng cho các Suất chiếu sớm/ Suất chiếu đặc biệt/ Suất chiếu ngày Lễ Tết. Suất chiếu bất kì trong phòng chiếu đặc biệt HOẶC các phòng chiếu như: IMAX, 4DX, GOLD CLASS, STARIUM, L’AMOUR….<br><br><strong>7. Thể lệ chương trình khuyến mãi:</strong><br>- Trường hợp vé có giá trị &lt; 69.000 VNĐ, giá áp dụng sẽ là vé có giá trị thấp hơn.<br>- Đối với Chương trình 69k/vé, mỗi tài khoản ZaloPay/ thẻ/TK ngân hàng/thiết bị/ email đăng ký tài khoản (đối với CGV) nhận được ưu đãi 2 vé/tháng trong suốt thời gian diễn ra chương trình.<br>- Giao dịch thanh toán phải từ nguồn ví &amp; có GD nạp tiền từ nguồn thẻ vừa liên kết.<br>- Khi KH thay đổi nguồn tiền thanh toán, vui lòng áp dụng lại ưu đãi trước khi xác nhận lại thanh toán.<br>- Chỉ áp dụng cho khách hàng đã thực hiện xác minh thông tin tài khoản hoặc liên kết ngân hàng với ZaloPay.<br>- Không áp dụng thẻ ảo, thẻ prepaid.<br>- Không áp dụng thẻ NAPAS cho chương trình ưu đãi của bạn mới.<br>- Quy định khác:<br>- Chương trình có thể kết thúc trước thời hạn nếu hết ngân sách khuyến mãi hoặc tạm dừng nếu có dấu hiệu gian lận, đầu cơ.<br>- Chương trình này không hỗ trợ các giao dịch hủy, đổi trả đối với các đơn hàng đã thanh toán thành công.<br>- Không áp dụng đồng thời với các chương trình khuyến mãi khác của CGV và ZaloPay.<br><br><strong>8. Quy định khác:</strong><br>- Trường hợp bạn không đủ điều kiện tham gia chương trình do tài khoản Zalo không hoạt động thường xuyên hoặc nằm trong danh sách có hoạt động bất thường được ghi nhận tự động bởi hệ thống ZaloPay.<br>- Chương trình có thể kết thúc trước thời hạn nếu hết ngân sách khuyến mãi hoặc tạm dừng nếu có dấu hiệu gian lận, đầu cơ.<br>- Giao dịch bị xác định là gian lận, giả mạo thì quà tặng khuyến mại sẽ bị hủy.<br>- Không áp dụng đồng thời với các chương trình khuyến mãi khác của CGV và ZaloPay.<br>- Chương trình này không hỗ trợ các giao dịch hủy, đổi trả đối với các đơn hàng đã thanh toán thành công.<br>- Khi thanh toán, nếu khách hàng KHÔNG được giảm giá vui lòng gọi Hotline: 1900 54 54 36 để nhận hướng dẫn trước khi xác nhận thanh toán.<br>- Ban tổ chức sẽ không giải quyết các trường hợp khách hàng khiếu nại về chương trình sau 3 ngày kể từ khi chương trình kết thúc.<br>- Trong mọi trường hợp xảy ra tranh chấp, quyết định của ZaloPay là quyết định cuối cùng<br>* Để biết thêm chi tiết về chương trình, vui lòng liên hệ Trung tâm Hỗ trợ Khách hàng ZaloPay- Hotline: 1900 54 54 36- Email: hotro@zalopay.vn</p><p><br><br>&nbsp;</p><p><strong>Tải app CGV để đặt vé chọn chỗ sớm hơn, nhanh hơn:</strong></p>', 'news/BKJZW1NuxCV6dZCpZugjHEyQutp1ANjg1EiRn62k.jpg', 1, '2022-05-17 01:15:20', '2022-05-17 01:15:20'),
(2, '“MUA SCAN & PAY VOUCHER PHIM HAY KHÔNG ĐỢI CHỜ”', '<p><strong>THỜI GIAN ƯU ĐÃI</strong>: Từ 28/04/2022 đến 31/05/2022 (Toàn quốc)</p><p>&nbsp;</p><p><strong>NỘI DUNG ƯU ĐÃI:&nbsp;</strong>Nhập mã CINE30: Giảm 10% tối đa 30K</p><p><i>*Ưu đãi áp dụng khi thanh toán vé xem phim bằng Shopee Scan &amp; Pay tại rạp</i></p><p>&nbsp;</p><p><strong>KÊNH ÁP DỤNG ƯU ĐÃI:&nbsp; &nbsp;</strong></p><p>1. Áp dụng trực tiếp khi mua vé tại quầy của CGV và sử dụng Shopee Scan &amp; Pay Voucher.</p><p>2. Áp dụng khi thanh toán online qua kênh Website https://www.cgv.vn/ &amp; ứng dụng CGV Cinemas bằng ShopeePay hoặc Shopee Scan &amp; Pay và sử dụng Shopee Scan &amp; Pay Voucher.</p><p><br><br>&nbsp;</p><p><strong>CÁCH THỨC NHẬN ƯU ĐÃI:</strong></p><p><strong>I. Hướng dẫn mua Shopee Scan &amp; Pay Voucher</strong></p><p>Bước 1: Khách hàng truy cập vào ứng dụng Shopee</p><p>Bước 2: Trên trang chủ của ứng dụng Shopee, tìm đến mục ShopeePay Gần Bạn.</p><p>Bước 3: Trong mục ShopeePay Gần Bạn, tìm đến thanh tìm kiếm và nhập CGV.</p><p>Bước 4: Chọn một địa điểm CGV bất kì và lướt tìm Shopee Scan &amp; Pay Voucher.</p><p>Bước 5: Chọn Voucher muốn mua, nhấn “Mua Ngay” và chọn phương thức thanh toán bằng Ví ShopeePay, nhập mã giảm giá để được áp dụng ưu đãi.</p><p><br><strong>II. Hướng dẫn sử dụng voucher tại CGV:</strong></p><p>Bước 1: Chọn nút “Scan” trên trang chủ Shopee.</p><p>Bước 2: Quét mã QR ShopeePay tại cửa hàng.</p><p>Bước 3: Nhập số tiền phải thanh toán.</p><p>Bước 4: Chọn voucher muốn áp dụng, nhấn “Thanh Toán Ngay” để tiếp tục.</p><p>Bước 5: Hoàn tất thanh toán và nhận hoá đơn.</p><p>&nbsp;</p><p><strong>Tải app CGV để đặt vé chọn chỗ sớm hơn, nhanh hơn:</strong></p><p>-&nbsp;<a href=\"https://apps.apple.com/us/app/cgv-cinemas/id1067166194\">Tải CGV Cinemas cho iOS</a></p><p>-&nbsp;<a href=\"https://play.google.com/store/apps/details?id=com.cgv.cinema.vn\">Tải CGV Cinemas cho Android</a></p><p><br>&nbsp;</p><p><a href=\"https://www.cgv.vn/default/movies/now-showing.html\"><strong>Đặt vé theo phim</strong></a></p><p><a href=\"https://www.cgv.vn/default/cinox/site/\"><strong>Đặt vé theo rạp</strong></a></p><p><br>&nbsp;</p><p><strong>ĐIỀU KIỆN VÀ ĐIỀU KHOẢN:</strong></p><p>- Mỗi cặp vé được áp dụng cho cùng một bộ phim, một suất chiếu và cùng hạng ghế (VIP hoặc Standard), chỉ áp dụng phòng chiếu thường của CGV.<br><strong>- Shopee Scan &amp; Pay Voucher có thời hạn sử dụng trong vòng 3 ngày kể từ ngày mua voucher.</strong><br>- Vé xem phim không có giá trị quy đổi thành tiền mặt hay hoàn trả.<br>- Chương trình áp dụng cho các suất chiếu từ thứ Hai đến Chủ nhật trong suốt thời gian diễn ra chương trình (trừ các ngày lễ, Tết theo quy định của Nhà Nước).<br>- Vé xem phim áp dụng cho các suất chiếu thông thường.<br>-&nbsp;Khuyến mãi KHÔNG áp dụng cho Suất chiếu Sớm, Suất chiếu Đặc biệt, và các phòng chiếu đặc biệt như: IMAX, 4DX, GOLD CLASS, STARIUM, L’AMOUR, SCREENX, PREMIUM, SWEETBOX…<br>-&nbsp;Khuyến mãi không áp dụng đồng thời với các chương trình khuyến mãi khác của CGV và đối tác.<br>-&nbsp;Chương trình có thể kết thúc trước thời hạn nếu số lượng vé ưu đãi tặng khách hàng đặt vé trước thời gian kết thúc chương trình và theo quy tắc mua trước, hưởng khuyến mại trước.<br>-&nbsp;CGV bảo lưu toàn quyền điều chỉnh hoặc kết thúc chương trình tại bất kỳ thời điểm nào mà không cần thông báo trước hoặc chịu trách nhiệm bồi thường bằng tiền mặt hoặc tài sản.<br>-&nbsp;CGV bảo lưu quyền không chấp nhận hoặc từ chối người tham gia có dấu hiệu vi phạm các quy định chương trình (căn cứ theo Điều khoản sử dụng dịch vụ hoặc có bất kỳ hành vi nào mà bên tổ chức cho rằng là không phù hợp hoặc không thể chấp nhận).<br>-&nbsp;CGV bảo lưu quyền hủy bỏ, sửa đổi và/hoặc điều chỉnh toàn bộ hoặc một phần bất kì các điều kiện và điều khoản của chương trình tại bất kỳ thời điểm nào mà không cần thông báo trước cho người tham gia.</p><p>Trong trường hợp xảy ra tranh chấp, quyết định của CGV là quyết định cuối cùng.&nbsp;</p>', 'news/YkBfotyn1l8A2MktOk6EHYW85L5fGzSyo7ZJUGd0.jpg', 1, '2022-05-17 01:18:15', '2022-05-17 01:18:15'),
(3, 'CHƯƠNG TRÌNH ƯU ĐÃI DÀNH CHO CHỦ THẺ SHINHAN TẠI CGV', '<p><strong>1. Thời gian triển khai: Thứ Năm</strong>&nbsp;hàng tuần từ ngày <strong>14/04/2022– 31/12/2022</strong><br><br>&nbsp;</p><p><strong>2. Nội dung chương trình ưu đãi:</strong></p><p>- Chi tiêu cùng thẻ tín dụng Shinhan Việt Nam và nhận vé xem phim CGV miễn phí khi mua vé trực tuyến trên ứng dụng CGV Cinema hoặc website&nbsp;<a href=\"http://www.cgv.vn/\"><i>www.cgv.vn</i></a><i>.</i></p><p>- Cách thức<i>&nbsp;</i>nhận ưu đãi:</p><p>+&nbsp;<strong>Bước 1</strong>: Chọn mua vé xem phim.</p><p>+<strong>&nbsp;Bước 2:</strong>&nbsp;Tại mục “Giảm giá”, chọn ô “Đối tác”, tiếp tục chọn “SHINHAN”.</p><p>+<strong>&nbsp;Bước 3:</strong>&nbsp;Chủ thẻ hợp lệ tiếp tục đến bước thanh toán và sử dụng thẻ thanh toán Shinhan</p><p>+&nbsp;<strong>Bước 4:</strong>&nbsp;Chủ thẻ hợp lệ xuất trình thông tin tại rạp CGV để nhận vé xem phim.<br><br>&nbsp;</p><p><i><strong>Ghi chú:</strong></i></p><p>+ Áp dụng cho tất cả Chủ thẻ Shinhan với những đầu BIN sau: 401559, 469673, 469672, 450255, 403013</p><p>+ Số lượt ưu đãi áp dụng: Từ 14/04/2022 – 31/12/20222 áp dụng 150 ưu đãi/ ngày khuyến mãi.</p><p>+ Chương trình bắt đầu từ&nbsp;<strong>09h00 - 23h59</strong>&nbsp;các ngày&nbsp;<strong>Thứ Năm</strong>&nbsp;hàng tuần.</p><p>+ Áp dụng cho vé xem phim 2D tại tất cả rạp CGV trên toàn quốc.</p><p>+ Mỗi chủ thẻ được hưởng ưu đãi không quá 1 lần/tháng (30 ngày). Tương ứng với 01 lần/tháng, được hiểu là lần sử dụng ưu đãi sau phải cách lần sử dụng ưu đãi trước ít nhất 30 ngày.<br><br>&nbsp;</p><p><strong>3.&nbsp; QUY ĐỊNH CHUNG</strong></p><p>- Chương trình chỉ áp dụng cho hạng ghế thường và hạng ghế VIP cho phim 2D. Mỗi cặp vé được áp dụng cho cùng một bộ phim, một suất chiếu và cùng hạng ghế.</p><p>- Khuyến mãi không áp dụng vào các ngày lễ tết.</p><p>- Không áp dụng cho suất chiếu sớm, suất chiếu đặc biệt, và các phòng chiếu đặc biệt như: IMAX, 4DX, GOLD CLASS, STARIUM, L’AMOUR, SWEETBOX…</p><p>- Chương trình áp dụng cho tất cả các cụm rạp chiếu phim CGV trên toàn quốc.</p><p>- Khuyến mãi được áp dụng với số lượng giới hạn mỗi ngày Thứ Năm hàng tuần.</p><p>- Vé xem phim không có giá trị đổi thành tiền mặt hay hoàn trả.</p><p>Chương trình không áp dụng đồng thời với các chương trình khuyến mãi khác.</p><p><br>-&nbsp;<a href=\"https://apps.apple.com/us/app/cgv-cinemas/id1067166194\">Tải CGV Cinemas cho iOS</a><br>-&nbsp;<a href=\"https://play.google.com/store/apps/details?id=com.cgv.cinema.vn\">Tải CGV Cinemas cho Android</a></p>', 'news/67zwulieJuToqL1bT5fjInGvEgUe9c8x9TFHWphm.jpg', 1, '2022-05-17 01:18:39', '2022-05-17 01:18:39'),
(4, 'CẬP NHẬT QUY ĐỊNH SỬ DỤNG THẺ THÀNH VIÊN U22', '<p>Kể từ ngày 01/05/2022, khách hàng là hội viên U22 khi mua vé xem với giá ưu đãi tại CGV cần đáp ứng các quy định sau:<br><br>1. Xuất trình thẻ thành viên U22 + số CMND/Thẻ HSSV tương ứng với số vé muốn mua khi thực hiện giao dịch tại quầy bán vé VÀ khu vực soát vé trước khi vào phòng chiếu.<br>2. Vé U22 không áp dụng vào các ngày Lễ, Tết cũng như các ngày nghỉ bù Lễ Tết theo quy định của pháp luật.</p><p><br><strong>Ví dụ:</strong> Khi mua 06 vé với giá ưu đãi U22, khách hàng cần xuất trình thẻ U22 và 5 CMND/Thẻ học sinh – sinh viên để thỏa mãn yêu cầu xác thực. Khi vào phòng chiếu, khách hàng cần xuất trình 06 vé xem phim + 06 CMND/thẻ U22/thẻ HSSV chính chủ tại quầy soát vé.</p><p><br><strong>Lưu ý:</strong><br>+ Không giới hạn số vé U22/giao dịch và số lần giao dịch/ngày.<br>+ Khách hàng được phép đặt mua vé U22 cho các suất chiếu ngày hôm sau.<br>+ Các ưu đãi và điều khoản khác vẫn không đổi<br>Quy định này có hiệu lực từ ngày 01/05/2022 và áp dụng tại tất cả các rạp CGV trên toàn quốc.</p><p>&nbsp;</p><p><br>&nbsp;</p><p><strong>Tải app CGV để đặt vé chọn chỗ sớm hơn, nhanh hơn:</strong></p><p>-&nbsp;<a href=\"https://apps.apple.com/us/app/cgv-cinemas/id1067166194\">Tải CGV Cinemas cho iOS</a></p><p>-&nbsp;<a href=\"https://play.google.com/store/apps/details?id=com.cgv.cinema.vn\">Tải CGV Cinemas cho Android</a></p>', 'news/NmpyZoldLJCXAZwouoVlsKDUbBMxJRktiewQQGA3.png', 1, '2022-05-17 01:19:05', '2022-05-17 01:19:05'),
(5, 'ƯU ĐÃI DÀNH CHO CHỦ THẺ SCB TẠI CGV', '<p><strong>1. Thời gian triển khai: Thứ Sáu và Thứ Bảy</strong> hàng tuần từ ngày <strong>01/02/2022– 31/05/2022</strong><br><br>&nbsp;</p><p><strong>2. Nội dung chương trình ưu đãi</strong>:</p><p>- Mua 02 vé xem phim CGV chỉ với 99.000 đồng khi mua vé trực tuyến trên ứng dụng CGV Cinema hoặc website <a href=\"http://www.cgv.vn/\"><i>www.cgv.vn</i></a><i>.</i><br><br>&nbsp;</p><p>- Cách thức<i> </i>nhận ưu đãi:</p><p><strong>+ Bước 1</strong>: Chọn mua vé xem phim.</p><p><strong>+ Bước 2</strong>: Tại mục “Giảm giá”, chọn ô “Đối tác”, tiếp tục chọn “Saigon Commercial Card”.</p><p><strong>+ Bước 3</strong>: Chủ thẻ hợp lệ tiếp tục đến bước thanh toán và sử dụng thẻ thanh toán quốc tế SCB.</p><p><strong>+ Bước 4</strong>: Chủ thẻ hợp lệ xuất trình thông tin tại rạp CGV để nhận vé xem phim.<br><br>&nbsp;</p><p><i><strong>Ghi chú</strong>:</i></p><p>- Áp dụng cho tất cả Chủ thẻ Quốc tế (bao gồm SCB Mastercard và SCB Visa) với những đầu BIN sau: 489516, 489517, 489518, 510235, 545579, 554627, 554627.</p><p>- Số lượt ưu đãi áp dụng: Từ 01/02/2022 – 31/05/20222 áp dụng 50 ưu đãi/ ngày khuyến mãi. Riêng tháng 02/2022 áp dụng 60 ưu đãi/ ngày khuyến mãi.</p><p>- Chương trình bắt đầu từ <strong>09h00 - 23h59 </strong>các ngày <strong>Thứ Sáu và Thư Bảy</strong> hàng tuần.</p><p>- Áp dụng cho vé xem phim 2D tại tất cả rạp CGV trên toàn quốc.</p><p>- Mỗi chủ thẻ được hưởng ưu đãi không quá 01 lần/ toàn chương trình. Tương ứng với 01 lần/tháng, được hiểu là lần sử dụng ưu đãi sau phải cách lần sử dụng ưu đãi trước ít nhất 30 ngày.<br><br>&nbsp;</p><p><strong>3.&nbsp; QUY ĐỊNH CHUNG</strong></p><p>- Chương trình chỉ áp dụng cho hạng ghế thường và hạng ghế VIP cho phim 2D. Mỗi cặp vé được áp dụng cho cùng một bộ phim, một suất chiếu và cùng hạng ghế.</p><p>- Khuyến mãi không áp dụng vào các ngày lễ tết.</p><p>- Không áp dụng cho suất chiếu sớm, suất chiếu đặc biệt, và các phòng chiếu đặc biệt như: IMAX, 4DX, GOLD CLASS, STARIUM, L’AMOUR, SWEETBOX…</p><p>- Chương trình áp dụng cho tất cả các cụm rạp chiếu phim CGV trên toàn quốc.</p><p>- Khuyến mãi được áp dụng với số lượng giới hạn mỗi ngày Thứ sáu và Thứ Bảy hàng tuần.</p><p>- Vé xem phim không có giá trị đổi thành tiền mặt hay hoàn trả.</p><p>- Chương trình không áp dụng đồng thời với các chương trình khuyến mãi khác.</p><p>- KH chỉ tiến hành thanh toán khi hệ thống đã hiển thị số tiền giảm giá. SCB và CGV không chịu trách nhiệm về việc hệ thống không hiển thị số tiền giảm giá mà KH vẫn tiến hành thanh toán.</p><p>- CGV bảo lưu toàn quyền điều chỉnh hoặc kết thúc chương trình tại bất kỳ thời điểm nào mà không cần thông báo trước hoặc chịu trách nhiệm bồi thường bằng tiền mặt hoặc tài sản.</p><p>- CGV bảo lưu quyền không chấp nhận hoặc từ chối người tham gia có dấu hiệu vi phạm các quy định chương trình (căn cứ theo Điều khoản sử dụng dịch vụ hoặc có bất kì hành vi nào mà bên tổ chức cho rằng là không phù hợp hoặc không thể chấp nhận).</p><p>- CGV bảo lưu quyền hủy bỏ, sửa đổi và/hoặc điều chỉnh toàn bộ hoặc một phần bất kì các điều kiện và điều khoản của chương trình tại bất kỳ thời điểm nào mà không cần thông báo trước cho người tham gia.</p><p>- Trong trường hợp xảy ra tranh chấp, quyết định của CGV là quyết định cuối cùng.<br><br>&nbsp;</p><p>&nbsp;</p><p><strong>Tải app CGV để đăng ký thành viên ngay:</strong></p><p><strong>- </strong><a href=\"https://apps.apple.com/us/app/cgv-cinemas/id1067166194\"><strong>Tải CGV Cinemas cho iOS</strong></a></p><p><strong>- </strong><a href=\"https://play.google.com/store/apps/details?id=com.cgv.cinema.vn\"><strong>Tải CGV Cinemas cho Android</strong></a></p>', 'news/IF92Dq51OmTR3dceDRn5BdzuFEcTt3sTz5vMTVul.png', 1, '2022-05-17 01:19:32', '2022-05-17 01:19:32');

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
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
