-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 20-11-01 11:59
-- 서버 버전: 10.4.13-MariaDB
-- PHP 버전: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `1101`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `foods`
--

CREATE TABLE `foods` (
  `idx` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `foods`
--

INSERT INTO `foods` (`idx`, `name`, `price`) VALUES
(17, '육개장', 850),
(18, '김치라면', 950),
(19, '왕뚜껑', 1050),
(20, '비타500', 800),
(21, '바닐라우유', 1200),
(22, '짜장떡볶이', 2800),
(23, '치즈라볶이', 2600),
(24, '참치샌드위치', 2200),
(25, '반반치킨도시락', 4800),
(26, '태화장짜장면', 4500),
(27, '김치볶음밥', 7500),
(28, '설렁탕', 7500),
(29, '마라떢볶이', 2600);

-- --------------------------------------------------------

--
-- 테이블 구조 `records`
--

CREATE TABLE `records` (
  `idx` int(11) NOT NULL,
  `uidx` int(11) NOT NULL,
  `fidx` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `records`
--

INSERT INTO `records` (`idx`, `uidx`, `fidx`, `count`, `date`) VALUES
(1, 7, 25, 1, '2020-09-17'),
(2, 8, 26, 1, '2020-09-17'),
(3, 8, 20, 1, '2020-09-17'),
(4, 9, 27, 1, '2020-09-17'),
(5, 10, 23, 1, '2020-09-17'),
(6, 11, 28, 1, '2020-09-17'),
(7, 12, 22, 1, '2020-09-17'),
(8, 10, 23, 1, '2020-09-17'),
(9, 11, 28, 1, '2020-09-17'),
(10, 12, 22, 1, '2020-09-17'),
(11, 7, 18, 1, '2020-09-20'),
(12, 7, 20, 1, '2020-09-20'),
(13, 8, 26, 2, '2020-09-20'),
(14, 9, 25, 1, '2020-09-20'),
(15, 10, 24, 1, '2020-09-20'),
(16, 11, 24, 1, '2020-09-20'),
(17, 12, 23, 1, '2020-09-20'),
(18, 7, 28, 1, '2020-09-21'),
(19, 8, 26, 2, '2020-09-21'),
(20, 9, 18, 1, '2020-09-21'),
(21, 10, 23, 1, '2020-09-21'),
(22, 10, 21, 2, '2020-09-21'),
(23, 11, 19, 1, '2020-09-21'),
(24, 12, 26, 1, '2020-09-21'),
(25, 7, 27, 1, '2020-09-22'),
(26, 7, 20, 1, '2020-09-22'),
(27, 8, 29, 1, '2020-09-22'),
(28, 9, 28, 1, '2020-09-22'),
(29, 10, 25, 1, '2020-09-22'),
(30, 11, 29, 1, '2020-09-22'),
(31, 12, 29, 1, '2020-09-22');

-- --------------------------------------------------------

--
-- 테이블 구조 `users`
--

CREATE TABLE `users` (
  `idx` int(11) NOT NULL,
  `name` text NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `users`
--

INSERT INTO `users` (`idx`, `name`, `class`) VALUES
(7, '정민석', 3),
(8, '권규량', 3),
(9, '윤장혁', 3),
(10, '노승재', 2),
(11, '원선일', 2),
(12, '김민성', 2);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`idx`),
  ADD UNIQUE KEY `name` (`name`) USING HASH;

--
-- 테이블의 인덱스 `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idx`),
  ADD UNIQUE KEY `name` (`name`) USING HASH;

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `foods`
--
ALTER TABLE `foods`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 테이블의 AUTO_INCREMENT `records`
--
ALTER TABLE `records`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 테이블의 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
