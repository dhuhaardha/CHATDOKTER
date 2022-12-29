-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 04:38 PM
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
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(27, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(28, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(29, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(30, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(31, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(32, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(33, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(34, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(35, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(36, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(37, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(38, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(39, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(40, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(41, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(42, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(43, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(44, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(45, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(46, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(47, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(48, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(49, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(50, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(51, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(52, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(53, 3, 5, 'cob', '2020-09-30 13:51:40', 2),
(54, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(55, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(56, 3, 5, 'cob', '2020-09-30 13:51:40', 2),
(57, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(58, 9, 5, 'cob', '2020-09-30 13:51:40', 2),
(59, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(60, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(61, 0, 5, 'cob', '2020-09-30 13:51:40', 2),
(62, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(63, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(64, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(65, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(66, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(67, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(68, 10, 5, 'cob', '2020-09-30 13:51:40', 2),
(69, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(70, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(71, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(72, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(73, 5, 5, 'cob', '2020-09-30 13:51:40', 1),
(74, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(75, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(76, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(77, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(78, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(79, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(80, 5, 5, 'cob', '2020-09-30 13:51:40', 2),
(81, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(82, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(83, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(84, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(85, 1, 5, 'cob', '2020-09-30 13:51:40', 2),
(86, 1, 3, 'p', '2021-03-12 03:15:03', 1),
(87, 17, 15, 'selamat pagi, dok', '2022-11-29 03:34:50', 0),
(88, 15, 17, 'selamat pagi, apakh ada yang bisa saya bantu???', '2022-11-29 03:35:14', 0),
(89, 10, 15, 'Selamat Malam Dok', '2022-11-29 13:07:15', 0),
(90, 15, 10, 'Selamat malam, ada yang bisa saya bantu??', '2022-11-29 13:07:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `hak_akses`, `details`) VALUES
(1, 'Dr.johnSmith', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396', 'dokter', 'Gigi'),
(3, 'davidMoore', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396', 'admin', ''),
(5, 'dhuhaardha', '$2y$10$44rF/huFwZdkWEIpIaIkdOemAtKnFwCFmlazmIlbW4/TAAz3xIhzO', 'user', ''),
(10, 'Dr.Dhuha ardha s', '$2y$10$m/YXhey1CMxZm5kwgQeDieYT699JoqH8/8dReI4.wHNDpWPGcnh1q', 'dokter', 'Umum'),
(11, 'Dr.Joko widodo', '$2y$10$dJ9LaToEMkYC2KYiLG0G0.2qoalhHOhoe3uamSwfsBEXJ49nQNbs.', 'dokter', 'Organ Dalam'),
(13, 'bagus', '$2y$10$AFzBo0UYjmPZ8PUZoM4MMOJhms.91JOZEKH88P33IxybaaUy/LT5G', 'admin', '-'),
(14, 'saputra', '$2y$10$oARWvplDmIha1rW.0Thagunutol6nR87htSaxway3hfCTSmYt9sbi', 'user', '-'),
(15, 'dewi', '$2y$10$vqoXpMz9.a1QnFLSid53v.SHlGV4HImcBvYplS.fJsAHZFT45L6.6', 'user', '-'),
(16, 'fardi', '$2y$10$ZE/NbhOHvA6dPhS6kT0EIewwnmbLtkd4NlGgPK.OFwcoDH4f7p8cC', 'admin', '-'),
(17, 'Dr.DImas', '$2y$10$JMZ/1og3HQb9mblJWYOWVeW5Q4iLVjyikrEC93klbKWIoFYxfUyPO', 'dokter', 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2020-08-28 07:10:34', 'no'),
(2, 1, '2020-08-28 07:29:33', 'no'),
(3, 1, '2020-09-03 21:25:05', 'no'),
(4, 5, '2020-09-03 22:30:34', 'no'),
(5, 1, '2020-09-03 22:30:52', 'no'),
(6, 1, '2020-09-03 22:33:05', 'no'),
(7, 5, '2020-09-03 22:36:34', 'no'),
(8, 1, '2020-12-18 04:23:12', 'no'),
(9, 5, '2020-12-18 04:28:55', 'no'),
(10, 1, '2020-12-18 04:29:01', 'no'),
(11, 2, '2020-09-04 05:57:43', 'no'),
(12, 5, '2020-09-05 06:36:10', 'no'),
(13, 5, '2020-09-07 09:03:53', 'no'),
(14, 6, '2020-09-07 09:04:43', 'no'),
(15, 1, '2020-09-07 10:12:59', 'no'),
(16, 1, '2020-09-07 10:16:40', 'no'),
(17, 1, '2020-09-07 10:18:42', 'no'),
(18, 1, '2020-09-07 10:41:18', 'no'),
(19, 1, '2020-09-07 10:48:04', 'no'),
(20, 1, '2020-09-07 11:02:30', 'no'),
(21, 5, '2020-09-07 11:18:30', 'no'),
(22, 1, '2020-09-07 13:20:11', 'no'),
(23, 5, '2020-09-07 13:27:28', 'no'),
(24, 5, '2020-09-07 13:37:08', 'no'),
(25, 5, '2020-09-07 13:40:09', 'no'),
(26, 5, '2020-09-07 13:46:20', 'no'),
(27, 5, '2020-09-07 13:46:29', 'no'),
(28, 5, '2020-09-07 13:47:51', 'no'),
(29, 1, '2020-09-07 13:48:09', 'no'),
(30, 1, '2020-09-07 13:48:09', 'no'),
(31, 5, '2020-09-07 13:56:43', 'no'),
(32, 5, '2020-09-07 14:10:05', 'no'),
(33, 1, '2020-09-07 14:10:15', 'no'),
(34, 1, '2020-09-07 14:10:15', 'no'),
(35, 1, '2020-09-07 14:12:16', 'no'),
(36, 5, '2020-09-07 14:12:27', 'no'),
(37, 5, '2020-09-07 14:12:27', 'no'),
(38, 5, '2020-09-07 14:12:58', 'no'),
(39, 1, '2020-09-07 14:13:35', 'no'),
(40, 1, '2020-09-07 14:13:35', 'no'),
(41, 1, '2020-09-07 14:14:41', 'no'),
(42, 1, '2020-09-07 14:14:53', 'no'),
(43, 1, '2020-09-07 14:14:54', 'no'),
(44, 1, '2020-09-07 14:15:40', 'no'),
(45, 5, '2020-09-07 14:15:51', 'no'),
(46, 5, '2020-09-07 14:15:52', 'no'),
(47, 5, '2020-09-07 14:16:17', 'no'),
(48, 5, '2020-09-07 14:16:31', 'no'),
(49, 5, '2020-09-07 14:16:31', 'no'),
(50, 5, '2020-09-07 14:17:16', 'no'),
(51, 5, '2020-09-07 14:17:26', 'no'),
(52, 5, '2020-09-07 14:18:01', 'no'),
(53, 5, '2020-09-07 14:18:17', 'no'),
(54, 5, '2020-09-07 14:18:42', 'no'),
(55, 5, '2020-09-07 14:19:00', 'no'),
(56, 5, '2020-09-07 14:21:06', 'no'),
(57, 5, '2020-09-07 14:22:09', 'no'),
(58, 5, '2020-09-07 14:22:09', 'no'),
(59, 5, '2020-09-07 14:22:44', 'no'),
(60, 5, '2020-09-07 14:22:49', 'no'),
(61, 1, '2020-09-07 14:23:00', 'no'),
(62, 1, '2020-09-07 14:26:20', 'no'),
(63, 5, '2020-09-07 14:26:35', 'no'),
(64, 5, '2020-09-07 14:26:35', 'no'),
(65, 5, '2020-09-07 14:28:11', 'no'),
(66, 5, '2020-09-07 14:28:11', 'no'),
(67, 5, '2020-09-07 14:28:32', 'no'),
(68, 5, '2020-09-07 14:28:32', 'no'),
(69, 5, '2020-09-07 14:29:49', 'no'),
(70, 5, '2020-09-07 14:35:32', 'no'),
(71, 5, '2020-09-07 14:35:41', 'no'),
(72, 5, '2020-09-07 14:36:12', 'no'),
(73, 5, '2020-09-07 14:36:24', 'no'),
(74, 5, '2020-09-07 14:46:22', 'no'),
(75, 1, '2020-09-07 14:46:30', 'no'),
(76, 1, '2020-09-07 14:47:26', 'no'),
(77, 5, '2020-09-07 14:47:51', 'no'),
(78, 5, '2020-09-07 14:48:28', 'no'),
(79, 1, '2020-09-07 14:48:36', 'no'),
(80, 1, '2020-09-07 14:51:03', 'no'),
(81, 7, '2020-09-07 14:52:02', 'no'),
(82, 7, '2020-09-07 15:41:36', 'no'),
(83, 5, '2020-09-09 14:33:18', 'no'),
(84, 5, '2020-09-09 14:51:34', 'no'),
(85, 5, '2020-09-09 15:09:05', 'no'),
(86, 5, '2020-09-09 15:31:08', 'no'),
(87, 3, '2020-09-09 15:34:48', 'no'),
(88, 5, '2020-09-09 16:21:18', 'no'),
(89, 3, '2020-09-09 17:30:51', 'no'),
(90, 5, '2020-09-14 13:17:49', 'no'),
(91, 3, '2020-09-14 13:18:06', 'no'),
(92, 5, '2020-09-20 00:50:02', 'no'),
(93, 3, '2020-09-20 00:50:19', 'no'),
(94, 1, '2020-09-20 00:51:05', 'no'),
(95, 1, '2020-09-20 00:53:53', 'no'),
(96, 5, '2020-09-22 03:52:30', 'no'),
(97, 1, '2020-09-22 04:05:26', 'no'),
(98, 3, '2020-09-22 04:09:34', 'no'),
(99, 5, '2020-09-22 05:02:58', 'no'),
(100, 5, '2020-09-22 05:38:34', 'no'),
(101, 5, '2020-09-22 05:43:24', 'no'),
(102, 5, '2020-09-22 05:47:32', 'no'),
(103, 5, '2020-09-22 05:47:54', 'no'),
(104, 3, '2020-09-30 14:15:41', 'no'),
(105, 5, '2020-09-30 14:17:24', 'no'),
(106, 5, '2020-10-03 07:00:31', 'no'),
(107, 3, '2020-10-03 07:01:24', 'no'),
(108, 5, '2020-10-21 00:32:46', 'no'),
(109, 3, '2020-10-21 00:36:20', 'no'),
(110, 5, '2020-10-21 01:46:16', 'no'),
(111, 5, '2020-10-21 01:46:30', 'no'),
(112, 5, '2020-10-26 12:24:16', 'no'),
(113, 3, '2020-10-26 12:27:08', 'no'),
(114, 3, '2020-10-26 12:34:46', 'no'),
(115, 5, '2020-10-29 01:44:32', 'no'),
(116, 3, '2020-10-29 01:46:00', 'no'),
(117, 5, '2020-10-29 01:46:21', 'no'),
(118, 3, '2020-10-29 01:46:48', 'no'),
(119, 5, '2020-10-29 01:47:22', 'no'),
(120, 3, '2020-10-29 03:06:43', 'no'),
(121, 5, '2020-10-29 03:15:45', 'no'),
(122, 5, '2020-10-29 10:50:54', 'no'),
(123, 3, '2020-10-29 03:21:10', 'no'),
(124, 5, '2020-12-07 23:55:38', 'no'),
(125, 5, '2020-12-08 00:17:57', 'no'),
(126, 9, '2020-12-08 00:20:30', 'no'),
(127, 1, '2020-12-08 07:30:06', 'no'),
(128, 5, '2020-12-17 21:42:09', 'no'),
(129, 5, '2020-12-17 21:47:57', 'no'),
(130, 9, '2020-12-17 21:48:15', 'no'),
(131, 1, '2020-12-17 21:50:20', 'no'),
(132, 3, '2020-12-17 22:01:15', 'no'),
(133, 10, '2020-12-17 21:59:25', 'no'),
(134, 5, '2020-12-17 22:09:38', 'no'),
(135, 5, '2021-01-06 06:39:49', 'no'),
(136, 1, '2021-01-06 07:04:51', 'no'),
(137, 5, '2021-01-06 07:10:40', 'no'),
(138, 9, '2021-01-06 07:11:02', 'no'),
(139, 9, '2021-01-06 07:12:52', 'no'),
(140, 9, '2021-01-06 07:16:01', 'no'),
(141, 1, '2021-02-11 06:18:27', 'no'),
(142, 1, '2021-02-11 06:31:23', 'no'),
(143, 5, '2021-02-11 06:40:45', 'no'),
(144, 9, '2021-02-11 06:48:40', 'no'),
(145, 1, '2021-02-11 06:50:34', 'no'),
(146, 5, '2021-02-11 07:03:26', 'no'),
(147, 3, '2021-02-11 07:14:33', 'no'),
(148, 5, '2021-02-11 07:18:21', 'no'),
(149, 3, '2021-02-11 07:20:22', 'no'),
(150, 3, '2021-02-11 07:24:11', 'no'),
(151, 5, '2021-02-11 07:32:29', 'no'),
(152, 3, '2021-02-11 07:32:30', 'no'),
(153, 3, '2021-02-11 07:51:10', 'no'),
(154, 5, '2021-02-11 07:52:27', 'no'),
(155, 3, '2021-02-11 07:55:19', 'no'),
(156, 9, '2021-02-11 07:56:46', 'no'),
(157, 1, '2021-02-11 08:14:07', 'no'),
(158, 5, '2021-02-11 08:14:34', 'no'),
(159, 1, '2021-02-11 08:20:42', 'no'),
(161, 1, '2021-02-11 08:25:13', 'no'),
(162, 5, '2021-02-11 08:45:03', 'no'),
(163, 3, '2021-02-11 08:55:15', 'no'),
(164, 1, '2021-02-11 08:55:27', 'no'),
(165, 5, '2021-02-11 08:57:54', 'no'),
(166, 1, '2021-02-11 08:58:12', 'no'),
(167, 5, '2021-02-11 09:00:15', 'no'),
(168, 1, '2021-02-11 09:00:12', 'no'),
(169, 3, '2021-02-11 09:11:15', 'no'),
(170, 5, '2021-02-11 09:13:04', 'no'),
(171, 3, '2021-02-11 09:15:08', 'no'),
(172, 3, '2021-02-11 09:18:16', 'no'),
(173, 3, '2021-02-11 09:40:32', 'no'),
(174, 5, '2021-02-13 18:37:17', 'no'),
(175, 1, '2021-02-13 18:34:20', 'no'),
(176, 5, '2021-02-13 18:36:08', 'no'),
(177, 1, '2021-02-13 18:39:58', 'no'),
(178, 5, '2021-02-13 18:49:31', 'no'),
(179, 1, '2021-02-13 18:40:46', 'no'),
(180, 5, '2021-02-13 19:18:34', 'no'),
(181, 1, '2021-02-13 19:14:04', 'no'),
(182, 5, '2021-03-03 16:49:25', 'no'),
(183, 5, '2021-03-03 18:30:58', 'no'),
(184, 3, '2021-03-03 18:32:52', 'no'),
(185, 5, '2021-03-03 18:34:28', 'no'),
(186, 1, '2021-03-03 18:33:11', 'no'),
(187, 5, '2021-03-05 15:21:44', 'no'),
(188, 1, '2021-03-05 14:51:51', 'no'),
(189, 1, '2021-03-05 17:34:20', 'no'),
(190, 5, '2021-03-05 15:41:35', 'no'),
(191, 5, '2021-03-05 17:35:54', 'no'),
(192, 1, '2021-03-05 18:45:40', 'no'),
(193, 5, '2021-03-05 19:01:16', 'no'),
(194, 5, '2021-03-07 01:56:51', 'no'),
(195, 5, '2021-03-07 02:06:56', 'no'),
(196, 1, '2021-03-07 02:13:31', 'no'),
(197, 5, '2021-03-07 02:22:38', 'no'),
(198, 9, '2021-03-07 02:23:47', 'no'),
(199, 9, '2021-03-07 02:26:36', 'no'),
(200, 9, '2021-03-07 02:32:43', 'no'),
(201, 9, '2021-03-07 02:53:37', 'no'),
(202, 5, '2021-03-07 02:57:31', 'no'),
(203, 5, '2021-03-07 05:15:13', 'no'),
(204, 1, '2021-03-07 05:15:00', 'no'),
(205, 5, '2021-03-07 05:33:33', 'no'),
(206, 3, '2021-03-09 10:00:57', 'no'),
(207, 3, '2021-03-09 10:04:23', 'no'),
(208, 3, '2021-03-09 21:56:29', 'no'),
(209, 3, '2021-03-12 03:26:05', 'no'),
(210, 5, '2021-03-12 03:35:04', 'no'),
(211, 5, '2021-03-12 03:43:49', 'no'),
(212, 3, '2021-03-12 03:46:17', 'no'),
(213, 3, '2021-03-12 03:54:57', 'no'),
(214, 3, '2021-03-12 14:33:19', 'no'),
(215, 5, '2021-03-12 14:40:43', 'no'),
(216, 3, '2021-03-12 14:59:27', 'no'),
(217, 5, '2021-03-12 15:18:01', 'no'),
(218, 5, '2021-03-12 15:26:53', 'no'),
(219, 5, '2021-03-12 15:34:22', 'no'),
(220, 3, '2021-03-12 15:48:43', 'no'),
(221, 3, '2021-03-12 16:13:33', 'no'),
(222, 14, '2022-08-28 04:49:40', 'no'),
(223, 15, '2022-11-29 03:26:03', 'no'),
(224, 16, '2022-11-29 03:30:34', 'no'),
(225, 17, '2022-11-29 03:47:23', 'no'),
(226, 15, '2022-11-29 03:47:23', 'no'),
(227, 16, '2022-11-29 03:47:19', 'no'),
(228, 16, '2022-11-29 04:22:02', 'no'),
(229, 15, '2022-11-29 04:23:05', 'no'),
(230, 15, '2022-11-29 14:06:03', 'no'),
(231, 10, '2022-11-29 14:05:11', 'no'),
(232, 3, '2022-12-29 15:37:57', 'no'),
(233, 5, '2022-12-29 15:38:09', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `payment_delivery`
--

CREATE TABLE `payment_delivery` (
  `payment_id` int(11) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `from_user` text NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `email` text NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `pembayaran` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_delivery`
--

INSERT INTO `payment_delivery` (`payment_id`, `tgl`, `from_user`, `fullname`, `email`, `alamat`, `no_telpon`, `pembayaran`) VALUES
(1, '2021-03-04 17:00:00', 'dhuhaardha', 'dhuha ardha saputra', 'dhuhaardha@gmail.com', 'ngentak, krecek, delanggu', '08994184679', ''),
(2, '2021-03-05 17:29:06', 'dhuhaardha', '', '', '', '', ''),
(3, '2021-03-05 17:41:24', 'dhuhaardha', 'dhuha ardha saputra', 'dhuhaardha@gmail.com', 'ngentak, krecek, delanggu', '08994184679', 'MANDIRI'),
(4, '2021-03-07 01:59:21', 'dhuhaardha', 'dhuha ardha saputra', 'dhuhaardha@gmail.com', 'ngentak', '085567894567', 'BRI'),
(5, '2021-03-07 02:07:41', 'dhuhaardha', 'dhuha ardha saputra', 'dhuhaardha@gmail.com', 'ngentak', '08994184123', 'MANDIRI'),
(6, '2021-03-07 02:11:05', 'dhuhaardha', '', 'sad', '', '', 'MANDIRI'),
(7, '2021-03-07 02:23:51', 'agung', 'agung hapsah', 'agunghap@gmail.com', 'Jl.merpati putih no.12', '085678912312', 'BCA'),
(8, '2021-03-07 02:26:38', 'agung', 'agung hapsah', 'agunghap@gmail.com', 'Jl.merpati putih no.12', '085678912312', 'MANDIRI'),
(9, '2021-03-07 02:30:46', 'agung', '', '', '', '1231', 'MANDIRI'),
(10, '2021-03-07 02:33:08', 'agung', '', '', '', '', 'MANDIRI'),
(11, '2021-03-07 02:35:56', 'agung', '', '', '', '', 'MANDIRI'),
(12, '2021-03-07 02:38:49', 'agung', '', '', '', '', 'MANDIRI'),
(13, '2021-03-07 02:39:47', 'agung', '', '', '', '', 'MANDIRI'),
(14, '2021-03-07 02:45:00', 'agung', '', '', '', '', 'MANDIRI'),
(15, '2021-03-07 02:54:02', 'dhuhaardha', '', '', '', '', 'BCA'),
(16, '2021-03-07 02:55:06', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(17, '2021-03-07 02:56:15', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(18, '2021-03-07 02:58:07', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(19, '2021-03-07 03:03:26', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(20, '2021-03-07 03:07:49', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(21, '2021-03-07 03:12:51', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(22, '2021-03-07 03:21:24', 'dhuhaardha', '', '', '', '', 'BRI'),
(23, '2021-03-07 03:22:04', 'dhuhaardha', '', '', '', '', 'BRI'),
(24, '2021-03-07 03:25:32', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(25, '2021-03-07 03:26:09', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(26, '2021-03-07 03:26:44', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(27, '2021-03-07 03:26:52', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(28, '2021-03-07 03:26:58', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(29, '2021-03-07 03:27:16', 'dhuhaardha', '', '', '', '123', 'MANDIRI'),
(30, '2021-03-07 03:27:56', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(31, '2021-03-07 03:28:20', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(32, '2021-03-07 03:32:04', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(33, '2021-03-07 03:54:25', 'dhuhaardha', '', '', '', '1', 'BRI'),
(34, '2021-03-07 03:55:39', 'dhuhaardha', 'sd', '', '', 'as', 'MANDIRI'),
(35, '2021-03-07 03:56:38', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(36, '2021-03-07 04:02:57', 'dhuhaardha', '', '', 'qwer', 'asd', 'MANDIRI'),
(37, '2021-03-07 04:09:22', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(38, '2021-03-07 04:14:01', 'dhuhaardha', '', '', '', '45', 'MANDIRI'),
(39, '2021-03-07 04:15:28', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(40, '2021-03-07 04:17:22', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(41, '2021-03-07 04:19:01', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(42, '2021-03-07 04:20:30', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(43, '2021-03-07 04:22:47', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(44, '2021-03-07 04:29:50', 'dhuhaardha', '', 'qweq', '', '', 'MANDIRI'),
(45, '2021-03-07 04:30:25', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(46, '2021-03-07 04:33:15', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(47, '2021-03-07 04:37:28', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(48, '2021-03-07 04:38:15', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(49, '2021-03-07 04:39:23', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(50, '2021-03-07 04:43:47', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(51, '2021-03-07 04:46:04', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(52, '2021-03-07 04:47:29', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(53, '2021-03-07 04:47:38', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(54, '2021-03-07 04:50:10', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(55, '2021-03-07 04:51:37', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(56, '2021-03-07 04:52:00', 'dhuhaardha', '', '', 'fg', '', 'MANDIRI'),
(57, '2021-03-07 04:59:21', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(58, '2021-03-07 05:02:18', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(59, '2021-03-07 05:03:28', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(60, '2021-03-07 05:03:58', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(61, '2021-03-07 05:05:47', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(62, '2021-03-07 05:06:55', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(63, '2021-03-07 05:07:33', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(64, '2021-03-07 05:07:53', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(65, '2021-03-07 05:08:04', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(66, '2021-03-07 05:08:13', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(67, '2021-03-07 05:08:33', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(68, '2021-03-07 05:10:22', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(69, '2021-03-07 05:10:32', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(70, '2021-03-07 05:10:46', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(71, '2021-03-07 05:10:55', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(72, '2021-03-07 05:12:02', 'dhuhaardha', '', '', '', '', 'MANDIRI'),
(73, '2021-03-07 05:15:39', 'dhuhaardha', '', '', 'kl', '', 'MANDIRI'),
(74, '2021-03-07 05:18:25', 'dhuhaardha', '', '', 'kl', '', 'MANDIRI'),
(75, '2021-03-07 05:23:15', 'dhuhaardha', '', '', 'kl', '', 'MANDIRI'),
(76, '2021-03-07 05:23:45', 'dhuhaardha', '', '', 'kl', '', 'MANDIRI'),
(77, '2021-03-07 05:26:37', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(78, '2021-03-07 05:26:52', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(79, '2021-03-07 05:27:08', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(80, '2021-03-07 05:27:21', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(81, '2021-03-07 05:28:07', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(82, '2021-03-07 05:28:37', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(83, '2021-03-07 05:28:48', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(84, '2021-03-07 05:28:55', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(85, '2021-03-07 05:31:20', 'dhuhaardha', '', '', '', '12', 'MANDIRI'),
(86, '2022-11-29 03:34:12', 'dewi', 'dewi kusuma', 'dhuhaardha@gmail.com', 'ngentak', '12345678', 'BCA'),
(87, '2022-11-29 04:22:53', 'dewi', 'dewi kusuma', 'dewikusima@gmail.com', 'ngentak', '12345678', 'BCA'),
(88, '2022-11-29 12:58:04', 'dewi', 'asd', 'dhuhardha@gmail.com', 'asd', '123', 'MANDIRI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `payment_delivery`
--
ALTER TABLE `payment_delivery`
  ADD PRIMARY KEY (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `payment_delivery`
--
ALTER TABLE `payment_delivery`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
