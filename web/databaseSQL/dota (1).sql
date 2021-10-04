-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2021 lúc 08:24 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dota`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(50) NOT NULL,
  `idchitiethoadon` int(50) NOT NULL,
  `idsach` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `created_time` date NOT NULL,
  `last_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idchitiethoadon`, `idsach`, `soluong`, `dongia`, `created_time`, `last_updated`) VALUES
(139, 149, '10', 10, 37000, '2021-05-10', '2021-05-10'),
(139, 150, '4', 10, 57000, '2021-05-10', '2021-05-10'),
(139, 151, '7', 10, 43000, '2021-05-10', '2021-05-10'),
(140, 152, '7', 10, 43000, '2021-05-10', '2021-05-10'),
(141, 153, '7', 1, 43000, '2021-05-10', '2021-05-10'),
(142, 154, '9', 1, 35000, '2021-05-10', '2021-05-10'),
(143, 155, '5', 1, 67000, '2021-05-11', '2021-05-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `idkhachhang` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `iddonhang` int(50) NOT NULL,
  `status` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `totalbill` float NOT NULL,
  `phonenumber` varchar(12) COLLATE utf8_vietnamese_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `note` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `created_time` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`idkhachhang`, `iddonhang`, `status`, `totalbill`, `phonenumber`, `username`, `address`, `note`, `created_time`, `last_update`) VALUES
('38', 139, 'đã xử lí', 1247500, '', 'Lê hoài lân', '14', '', '2021-05-10', '2021-05-10'),
('38', 140, 'đã xử lí', 430000, '', 'Lê hoài lân', '14', '', '2021-05-10', '2021-05-10'),
('38', 141, 'đã xử lí', 43000, '', 'Lê hoài lân', '14', '', '2021-05-10', '2021-05-10'),
('38', 142, 'đã xử lí', 31500, '', 'Lê hoài lân', '14', '', '2021-05-10', '2021-05-10'),
('38', 143, 'đã xử lí', 59630, '0912345678', 'Lê Hoài Lân', 'tphcm', 'ok\r\n', '2021-05-11', '2021-05-11'),
('38', 144, 'Chưa xử lí', 59630, '0912345678', 'Phạm Duy Luân', 'tphcm', 'ko', '2021-05-11', '2021-05-11'),
('38', 145, 'Chưa xử lí', 59630, '0900668711', 'Lê hoài lân', '14', '', '2021-05-11', '2021-05-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `groud_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `uri_match` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `privileges`
--

INSERT INTO `privileges` (`id`, `groud_id`, `name`, `uri_match`, `created_time`, `last_updated`) VALUES
(1, 3, 'Danh sách sản phẩm', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=view\\_sach', 1619803326, 1619803326),
(2, 3, 'Thêm sản phẩm', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=add\\_sach', 1619803326, 1619803326),
(3, 3, 'Sửa sản phẩm', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=edit\\_sach&id\\=d*\\w*', 1619803326, 1619803326),
(4, 3, 'Xóa sản phẩm', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=delete\\_sach&id\\=d*\\w*', 1619803326, 1619803326),
(5, 2, 'Danh sách tài khoản', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=view\\_user', 1619803326, 1619803326),
(6, 2, 'Sửa tài khoản', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=edit\\_user&id\\=d*\\w*', 1619803326, 1619803326),
(7, 2, 'Xóa tài khoản', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=delete\\_user&id\\=d*\\w*', 1619803326, 1619803326),
(8, 1, 'Thống kê', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=view\\_statistical', 1619803326, 1619803326),
(9, 6, 'Danh sách đơn hàng', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=view\\_cart', 1619803326, 1619803326),
(10, 4, 'Danh sách thể loại', '.\\.\\/admi\\/DAO\\.php\\?action\\=view\\_type', 1619803326, 1619803326),
(11, 5, 'Danh sách tác giả', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=view\\_author', 1619803326, 1619803326),
(13, 5, 'Xóa tác giả', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=delete\\_author&id\\=d*\\w*', 1619803326, 1619803326),
(14, 5, 'Thêm tác giả', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=add\\_author', 1619803326, 1619803326),
(15, 5, 'Sửa tác giả', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=edit\\_author&id\\=d*\\w*', 1619803326, 1619803326),
(16, 2, 'Thêm tài khoản', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=add\\_user', 1619803326, 1619803326),
(17, 6, 'Xem chi tiết đơn hàng', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=show\\_detail\\_cart&id\\=d*\\w*', 1619803326, 1619803326),
(18, 6, 'Xử lí đơn hàng', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=edit\\_status&id\\=d*\\w*', 1619803326, 1619803326),
(19, 4, 'Thêm thể loại', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=add\\_type', 1619803326, 1619803326),
(20, 4, 'Sửa thể loại', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=edit\\_type&id\\=d*\\w*', 1619803326, 1619803326),
(21, 4, 'Xóa thể loại', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=delete\\_type&id\\=d*\\w*', 1619803326, 1619803326),
(22, 2, 'Phân quyền user', '\\.\\.\\/admi\\/DAO\\.php\\?action\\=priv\\_user\\&id\\=d*\\w*', 1619803326, 1619803326);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege_groud`
--

CREATE TABLE `privilege_groud` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `privilege_groud`
--

INSERT INTO `privilege_groud` (`id`, `name`, `position`, `created_time`, `last_updated`) VALUES
(1, 'Thống kê', 1, 1619803326, 1619803326),
(2, 'Khách Hàng', 2, 1619803326, 1619803326),
(3, 'Sản Phẩm', 3, 1619803326, 1619803326),
(4, 'Thể Loại', 6, 1619803326, 1619803326),
(5, 'Tác giả', 4, 1619803326, 1619803326),
(6, 'Đơn hàng', 5, 1619803326, 1619803326);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `tensach` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id` int(11) NOT NULL,
  `idtacgia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matheloai` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dongia` int(11) NOT NULL,
  `sale` float NOT NULL,
  `soluongs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`tensach`, `id`, `idtacgia`, `matheloai`, `mota`, `image`, `dongia`, `sale`, `soluongs`) VALUES
('Vũ Trụ Từ Hư Không', 1, '1', '1', 'không có mô tả', 'KH_1.jpg', 40000, 10, 0),
('Trật Tự Thời Gian', 2, '1', '1', 'hay', 'KH_2.jpg', 56000, 10, 0),
('The Book Of Humans', 3, '1', '1', 'Hay', 'KH_3.jpg', 34000, 20, 797),
('Chinh Phục Không Gian', 4, '3', '1', 'Hay', 'KH_13.jpg', 57000, 15, 0),
('Bản Thiết Kế Trí Tuệ', 5, '4', '1', 'Hay', 'KH_49.jpg', 67000, 11, 25),
('Yêu Thầm Mười Năm', 6, '1', '2', 'Hay', 'NT_1.jpg', 50000, 0, 40),
('Anh Không Muốn Để Em Một Mình', 7, '4', '2', 'Hay', 'NT_2.jpg', 43000, 0, 19),
('Ngàn Năm Chờ Đợi', 8, '3', '2', 'Hay', 'NT_3.jpg', 54000, 0, 40),
('Doremon Và Nước Nhật Thời Nguyên Thủy', 9, '2', '3', 'Chú Mèo Máy Đến Từ Tương Lai', 'MG_11.jpg', 35000, 10, 29),
('Doremon Vũ Trụ Phiêu Lưu Ký', 10, '2', '3', 'hay', 'MG_12.jpg', 37000, 10, 30),
('Doremon Dũng Sĩ Có Cánh', 11, '2', '3', 'Chú Mèo Máy Đến Từ Tương Lai', 'MG_13.jpg', 36000, 9, 40),
('Doremon Vương Quốc Robot', 12, '1', '3', 'Chú Mèo Máy Đến Từ Tương Lai', 'MG_14.jpg', 37000, 8, 40),
('Đắc Nhân Tâm', 13, '1', '4', 'Hay', 'KNS_01.jpg', 49000, 7, 40),
('Tuổi Trẻ Đáng Giá Bao Nhiêu', 14, '3', '4', 'Hay', 'KNS_02.jpg', 45000, 10, 40),
('Nếu Tôi Biết Được Khi Còn 20', 15, '4', '4', 'Không có mô tả', 'KNS_03.jpg', 47000, 7, 76);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `id` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `tentacgia` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`id`, `tentacgia`) VALUES
('1', 'Lê Hoài Lân'),
('2', 'Fujiko Fujio'),
('3', 'Phạm Duy Luân'),
('4', 'Nguyễn Trần Huỳnh Long');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `tentheloai` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `tentheloai`) VALUES
('1', 'Khoa Học'),
('123', '123'),
('2', 'Ngôn Tình'),
('3', 'Manga'),
('4', 'Kỹ Năng Sống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user1`
--

CREATE TABLE `user1` (
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user1`
--

INSERT INTO `user1` (`email`, `password`, `id`, `fullname`) VALUES
(' lan', '827ccb0eea8a706c4c34a16891f84e7b', 35, 'Lê Hoài Lân'),
(' lan2', '827ccb0eea8a706c4c34a16891f84e7b', 36, 'Nhân viên 1   '),
('admin', '21232f297a57a5a743894a0e4a801fc3', 37, 'admin'),
('lan1', '827ccb0eea8a706c4c34a16891f84e7b', 38, 'Lê Hoài Lân'),
('lan3', '827ccb0eea8a706c4c34a16891f84e7b', 39, 'Lê Hoài Lân123'),
('lan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 40, 'Lê hoài lân'),
('abc', 'ab56b4d92b40713acc5af89985d4b786', 41, 'lê hoài lân'),
('a@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 42, 'Lê Hoài Lân 123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_privilege`
--

CREATE TABLE `user_privilege` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `privilegeID` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_update` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user_privilege`
--

INSERT INTO `user_privilege` (`id`, `userID`, `privilegeID`, `created_time`, `last_update`) VALUES
(257, 37, 5, 1619964203, 1619964203),
(258, 37, 22, 1619964203, 1619964203),
(259, 37, 8, 1619803326, 1619803326),
(260, 37, 5, 1619803326, 1619803326),
(261, 37, 6, 1619803326, 1619803326),
(262, 37, 7, 1619803326, 1619803326),
(263, 37, 16, 1619803326, 1619803326),
(264, 37, 22, 1619803326, 1619803326),
(265, 37, 1, 1619803326, 1619803326),
(266, 37, 2, 1619803326, 1619803326),
(267, 37, 3, 1619803326, 1619803326),
(268, 37, 4, 1619803326, 1619803326),
(269, 37, 11, 1619803326, 1619803326),
(270, 37, 13, 1619803326, 1619803326),
(271, 37, 14, 1619803326, 1619803326),
(272, 37, 15, 1619803326, 1619803326),
(273, 37, 9, 1619803326, 1619803326),
(274, 37, 17, 1619803326, 1619803326),
(275, 37, 18, 1619803326, 1619803326),
(276, 37, 10, 1619803326, 1619803326),
(277, 37, 19, 1619803326, 1619803326),
(278, 37, 20, 1619803326, 1619803326),
(279, 37, 21, 1619803326, 1619803326),
(280, 40, 8, 1619803326, 1619803326);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`idchitiethoadon`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`iddonhang`);

--
-- Chỉ mục cho bảng `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groud_id` (`groud_id`);

--
-- Chỉ mục cho bảng `privilege_groud`
--
ALTER TABLE `privilege_groud`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `privilegeID` (`privilegeID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `idchitiethoadon` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddonhang` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT cho bảng `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `privilege_groud`
--
ALTER TABLE `privilege_groud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `privileges`
--
ALTER TABLE `privileges`
  ADD CONSTRAINT `privileges_ibfk_1` FOREIGN KEY (`groud_id`) REFERENCES `privilege_groud` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD CONSTRAINT `user_privilege_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_privilege_ibfk_2` FOREIGN KEY (`privilegeID`) REFERENCES `privileges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
