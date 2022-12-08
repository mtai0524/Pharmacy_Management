-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 04:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryId` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CategoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `CategoryName`) VALUES
('TDT', 'Thuốc điều trị'),
('TPCN', 'Thực phẩm chức năng'),
('VTYT', 'Vật tư y tế');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('minhnguyen20020524@gmail.com', '$2y$10$CNCjSmaCbdMwp4wjnnxwaOWl5zOGe6Q4MgaH7JVdk411AkVu/u.7e', '2022-12-05 23:53:52'),
('tai@gmail.com', '$2y$10$41IuoR2g8S2JY21Q4ggyDeFx7NtMPHHIoovisGKKOgEYicdgFYSi2', '2022-12-05 23:55:27'),
('tai111@gmail.com', '$2y$10$p9RlIHMjk7TRFgi3vTOWOeufYss81cHrACnhXsGsXLUWuV5ZRzHqe', '2022-12-06 04:38:17');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductId` int(10) NOT NULL,
  `ProductName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Price` double NOT NULL,
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `CategoryId` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `ProductName`, `Unit`, `Price`, `Description`, `CategoryId`, `Img`) VALUES
(1, '3B STADA', 'Hộp', 77219, ' Điều trị các trường hợp thiếu vitamin B1, B6, B12 như: viêm đau dây thần kinh, bệnh lý dây thần kinh do thuốc, do nghiện rượu... ', 'TDT', '3B-STADA.png'),
(2, 'Agi-Bromhexine', 'Hộp', 18000, 'Bromhexin thường được dùng như một chất bổ trợ với kháng sinh, khi bị nhiễm khuấn nặng đường hô hấp', 'TDT', 'Agi-Bromhexine.png'),
(3, 'Alcool 70 độ', 'Chai', 48000, 'Sát trùng ngoài da', 'TDT', 'Alcool-70-do.png'),
(4, 'Alaxan', 'Hộp', 100000, 'Điều trị các cơn đau cơ xương nhẹ đến trung bình như đau cổ, đau vai, đau lưng,đau đầu,…', 'TDT', 'alaxan.png'),
(5, 'Siro Ambroxol', 'Chai', 30000, 'Điều trị các rối loạn về sự bài tiết ở phế quản, chủ yếu trong các bệnh phế quản cấp tính: viêm phế quản cấp tính, giai đoạn cấp tính của bệnh phế quản - phổi mạn tính', 'TDT', 'Siro-Ambroxol.png'),
(6, 'Boganic', 'Hộp', 72000, 'Nhuận gan - lợi mật - thông tiểu - giải độc', 'TDT', 'Boganic.png'),
(7, 'Cao sao vàng', 'Hộp', 5900, 'Cảm cúm, nhức đầu, sổ mũi, buồn nôn, đau bụng, say tàu xe; nhức mỏi; bị muỗi và các côn trùng khác đốt', 'TDT', 'caosaovang.png'),
(8, 'Đại Tràng Nhất Nhất', 'Hộp', 120000, 'Trị viêm đại tràng, tiêu chảy, rối loạn tiêu hóa với các triệu chứng đau bụng, sôi bụng, chướng bụng, ăn không tiêu, phân sống... Hỗ trợ phòng ngừa bệnh tái phát', 'TDT', 'daitrangnhatnhat.png'),
(9, 'Tuần hoàn não Thái Dương', 'Hộp', 35000, 'Tăng cường tuần hoàn máu, điều trị thiểu năng tuần hoàn não, giảm các triệu chứng: Mất ngủ, khó ngủ, đau đầu...', 'TDT', 'tuanhoannao.png'),
(10, 'Viên ngậm Bảo Thanh', 'Hộp', 252000, 'Các chứng ho do cảm lạnh, nhiễm lạnh, ho gió, ho khan, ho có đờm, ho do dị ứng thời tiết. Người bị phế âm hư gây ho dai dẳng lâu ngày, miệng họng khô, cổ họng ngứa, nóng rát, khan tiếng. Hỗ trợ điều trị viêm phổi, viêm họng, viêm phế quản', 'TDT', 'vienngambaothanh.png'),
(11, 'Panadol Cold Flu', 'Hộp', 198000, 'Panadol Cảm cúm làm giảm các triệu chứng của cảm cúm như sốt, đau và xung huyết mũi', 'TDT', 'panadol.png'),
(12, 'Hoạt Huyết Dưỡng Não Traphaco', 'Hộp', 95000, 'Phòng và điều trị các bệnh suy giảm trí nhớ, căng thẳng thần kinh, kém tập trung, thiểu năng tuần hoàn não, hội chứng tiền đình…', 'TDT', 'hoathuyetduongnao.png');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tai', 'minhnguyen20020524@gmail.com', NULL, '$2y$10$HAPJDU3BLMpBIYOsebPt.u7/mJTI/2AB4kBZsrs10etN1ErLxktg6', NULL, '2022-12-05 20:25:16', '2022-12-05 20:25:16'),
(2, 'tai', 'tai1233@gmail.com', NULL, '$2y$10$kpUU7lM60lzNE6LRA4ld0eY6Vn.1QY7X9M/fi.XPJ3ZJrrl7IbAti', NULL, '2022-12-05 20:34:26', '2022-12-05 20:34:26'),
(3, 'tai', 'tai@gmail.com', NULL, '$2y$10$G08yTBxySX/cZb9OF4hMFeGFw2zCxY0Pc18JDPuaUd6WGvSn893oq', '2YM3XORSje5rMSJVxBNdrftGmHelA5e9XKR209zOAyqKXwDWU4ToMRWjnFtN', '2022-12-05 20:39:46', '2022-12-05 20:39:46'),
(4, 'tai', 'tai111@gmail.com', NULL, '$2y$10$l4pdpKTWBjhqngiG6mERY.cKWoswJadl0eos4T/UblZ5eKbQCJH6q', NULL, '2022-12-06 04:37:56', '2022-12-06 04:37:56'),
(5, 'hung', 'hung@123', NULL, '$2y$10$bMPILUkni8Z3rQT0Ad.s8efAYQ42zISxnRUNjfQWPWtB29xmXxyEi', NULL, '2022-12-07 06:13:50', '2022-12-07 06:13:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`),
  ADD KEY `CategoryId` (`CategoryId`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
