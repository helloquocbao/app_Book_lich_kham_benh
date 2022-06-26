-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 05:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `bacsi`
--

CREATE TABLE `bacsi` (
  `id` int(10) NOT NULL,
  `madanhmuc` int(10) NOT NULL,
  `tenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhmon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `mota` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bacsi`
--

INSERT INTO `bacsi` (`id`, `madanhmuc`, `tenmon`, `hinhmon`, `gia`, `mota`) VALUES
(1, 1, 'Bác sĩ: Kim Sa', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 250000, 'Bác sĩ 10 năm kinh nghiệm.'),
(2, 1, 'Bác sĩ: Quốc Dũng', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 270000, 'Bác sĩ 10 năm kinh nghiệm.'),
(3, 1, 'Bác sĩ: Trần Quốc Công', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 320000, 'Bác sĩ 10 năm kinh nghiệm.'),
(4, 1, 'Bác sĩ: Nguyễn Trà Vinh', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 350000, 'Bác sĩ 10 năm kinh nghiệm.'),
(5, 2, 'Bác sĩ: Trần Dần', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 150000, 'Bác sĩ 10 năm kinh nghiệm.'),
(6, 2, 'Bác sĩ: Lê Thị Hồng Anh', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 150000, 'Bác sĩ 10 năm kinh nghiệm.'),
(7, 3, 'Bác sĩ: Bùi Nhã Tiên', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 150000, 'Bác sĩ 10 năm kinh nghiệm.'),
(8, 3, 'Bác sĩ: Lưu Trần', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 150000, 'Bác sĩ 10 năm kinh nghiệm.'),
(9, 1, 'Bác sĩ: Hạ Sĩ Trung', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 300000, 'Bác sĩ 10 năm kinh nghiệm.'),
(10, 4, 'Bác sĩ:Nguyễn Trung Hiếu ', 'https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg', 250000, 'Bác sĩ 10 năm kinh nghiệm.');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) NOT NULL,
  `madonhang` int(10) NOT NULL,
  `mamon` int(10) NOT NULL,
  `tenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `mamon`, `tenmon`, `gia`, `soluong`) VALUES
(20, 35, 2, 'Bác sĩ: Quốc Dũng', 270000, 1),
(21, 36, 4, 'Bác sĩ: Nguyễn Trà Vinh', 350000, 1),
(22, 37, 3, 'Bác sĩ: Trần Quốc Công', 320000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhdanhmuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `hinhdanhmuc`) VALUES
(1, 'Tim mạch', 'https://taimuihongsg.com/wp-content/uploads/2018/11/chan-doan-tim-mach_taimuihongsg.jpg'),
(2, 'Cảm cúm', 'https://bacsiluan.vn/wp-content/uploads/2020/09/cam-cum-la-gi-trieu-chung-dieu-tri0.jpg'),
(3, 'Xét nghiệm', 'https://tamanhhospital.vn/wp-content/uploads/2021/12/chan-doan-thong-qua-xet-nghiem-mau.jpg'),
(4, 'Xương khớp', 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/1/26/998895/An-Khoptw3--1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) NOT NULL,
  `tenkhachhang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` double NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `email`, `sodienthoai`, `tongtien`, `ghichu`) VALUES
(35, 'Quoc Bao', 'so 1 bui thi xuan , q9 binh thanh', '0917858585', 270000, 'ho dau Hong '),
(36, 'dsadsadsds', 'dds', '2886', 350000, ''),
(37, 'rhhh', 'sdfdff\n', '542505775', 320000, 'gfff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bacsi`
--
ALTER TABLE `bacsi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
