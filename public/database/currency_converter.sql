-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2025 at 12:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `currency_converter`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_name` varchar(255) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `user_id`, `group_name`, `timest`) VALUES
(1, 1, 'JP_BOOKS', '2024-04-05 13:56:11'),
(2, 1, 'BANKS', '2024-04-05 13:57:31'),
(3, 1, 'Balance Keeper', '2024-04-07 13:30:40'),
(4, 1, 'Staff Salary & Exp', '2024-04-07 14:27:51'),
(5, 1, 'Party Account', '2024-04-07 14:30:34'),
(6, 1, 'MARK COMPANY GROUP', '2024-04-07 15:22:51'),
(7, 1, 'HM COMPANY GROUP', '2024-04-07 15:29:27'),
(8, 1, 'Client 501', '2024-04-11 19:48:44'),
(9, 1, '210 RM SUB GROUP', '2024-05-29 16:58:14'),
(10, 1, '249 PSIR GROUP', '2024-06-16 14:45:24'),
(11, 1, 'HK SG COMPANIES', '2024-07-09 23:24:39'),
(12, 1, 'JP NBDMCC 2024', '2024-08-27 16:44:54'),
(13, 7, '301 John JG Group', '2024-10-11 20:27:58'),
(14, 7, '327 HP(Peter) Group', '2024-10-11 20:56:44'),
(15, 1, '369 SS GROUP', '2024-11-12 18:09:31'),
(16, 7, 'Mark Company Pending Payments', '2024-11-19 19:18:16'),
(17, 7, 'JP Company Pending Payments', '2024-11-19 21:14:52'),
(19, 1, '341 BB & COMPANY', '2025-01-14 22:47:18'),
(20, 1, 'VRON CORP', '2025-02-05 18:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `srn` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `party_name` text NOT NULL,
  `chat_id` bigint(20) DEFAULT NULL,
  `ac_number` int(11) NOT NULL,
  `details` text NOT NULL,
  `group_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`srn`, `timest`, `user_id`, `party_name`, `chat_id`, `ac_number`, `details`, `group_id`) VALUES
(1, '2023-02-27 10:59:00', 2, '999', NULL, 100, 'H KANTI', 3),
(2, '2023-02-27 11:00:00', 2, 'capital', -4768268422, 101, 'company capital account', 0),
(3, '2023-02-27 11:00:00', 2, 'MARK', NULL, 102, 'MARK BABA', 5),
(4, '2023-02-27 11:01:00', 2, 'CAPITAL', 7187858083, 103, 'CAPITAL', 0),
(5, '2023-02-27 15:14:00', 2, '345 SULTAN', NULL, 104, '345 SULTAN', 5),
(6, '2023-02-27 15:13:04', 2, 'EXCH_hm11', NULL, 105, 'EXCH ACCOUNT', 7),
(8, '2023-02-27 16:50:00', 2, 'EPROWEB_WIO', NULL, 106, 'EPROERB TECH WIO BANK', 2),
(9, '2023-02-28 13:56:00', 2, '219 SMTKP', NULL, 107, '219 SMTKP', 5),
(10, '2023-02-28 14:03:00', 2, 'JEMS', NULL, 108, 'JEMISBHAI', 5),
(11, '2023-02-28 16:27:00', 2, 'RMWB', NULL, 109, 'RMWB', 5),
(12, '2023-02-28 20:23:00', 2, 'BANK MASHREQ EPROWEB', NULL, 110, 'BANK MASHREQ EPROWEB', 2),
(13, '2023-03-01 15:48:00', 2, 'HM CASH EXP', NULL, 111, 'CASH EXP INDIA', 7),
(14, '2023-03-01 15:51:00', 2, '214 NDM', NULL, 112, '214 NADIMBHAI', 5),
(15, '2023-03-01 19:35:00', 2, '101 RISHI', NULL, 113, '101 RISHI', 5),
(16, '2023-03-02 16:11:00', 2, '011 AK', NULL, 114, '011 AK DXB', 5),
(17, '2023-03-02 16:15:00', 2, '207 JOY', NULL, 115, '207 JOY VC', 5),
(18, '2023-03-02 16:20:00', 2, '002 SK', NULL, 116, '002 SK', 5),
(19, '2023-03-02 16:20:00', 2, '015 NK', NULL, 117, '015 NK', 5),
(20, '2023-03-02 16:21:00', 2, '207 VC', NULL, 118, '207 VC', 5),
(21, '2023-03-03 11:18:00', 2, 'MC COM', NULL, 119, 'Manager Cheque Commison', 7),
(22, '2023-03-06 17:05:00', 2, '103 BHOLENATH', NULL, 120, '103 BHOLENATH', 1),
(23, '2023-03-06 20:12:00', 2, '334 NRMR', NULL, 121, '334 NIRMALBHAI', 5),
(24, '2023-03-07 20:17:00', 2, '241 NS', NULL, 122, '241 NIKUNJ', 5),
(25, '2023-03-09 15:24:00', 2, 'SUSPENSE', NULL, 123, 'SUSPENSE ACCOUNT', 0),
(26, '2023-03-17 17:20:00', 1, 'COMM', NULL, 124, 'COMMISSION', 0),
(27, '2023-03-20 12:33:00', 2, '311 ROCKY', NULL, 125, '311 ROCKY', 5),
(28, '2023-03-20 12:43:00', 2, 'AED DXB HM', NULL, 126, 'AED DXB HM', 3),
(29, '2023-03-20 16:33:00', 2, 'TRADING ACCOUNT', NULL, 127, 'TRADING ACCOUNT', 0),
(30, '2023-03-20 16:36:00', 2, 'JAY MATAJI', NULL, 128, 'JAY MATAJI', 7),
(31, '2023-03-20 16:43:00', 2, 'JP', NULL, 129, 'JP ACCOUNT', 1),
(32, '2023-03-21 20:41:00', 2, 'HB EUR', NULL, 130, 'HB EUR TXN EXCH', 0),
(33, '2023-03-22 15:05:00', 2, '237 GOPAL', NULL, 131, '237 GOPAL', 5),
(34, '2023-03-23 17:27:00', 2, 'staff Dharmeshbhai', NULL, 132, 'staff Dharmeshbhai', 4),
(35, '2023-03-27 10:40:00', 2, '502_FZV', NULL, 133, '502_FZV', 5),
(36, '2023-03-27 15:20:00', 2, '113 BURJUMAN', NULL, 134, '113 BURJUMAN OFFICE', 1),
(37, '2023-03-28 10:50:00', 2, '225_HV', NULL, 135, '225_HV', 5),
(38, '2023-03-28 16:25:00', 2, '998 MK', NULL, 136, '998 MK', 5),
(39, '2023-03-30 15:46:00', 2, '109 RD BVN', NULL, 137, '109 RD BVN', 5),
(40, '2023-03-30 16:00:00', 2, '000 RETAIL', NULL, 138, '000 RETAIL', 0),
(41, '2023-03-31 14:21:00', 2, 'RAHUL', NULL, 139, 'RAHUL', 5),
(42, '2023-03-31 15:41:00', 2, '110 NJY', NULL, 140, '110 NJY', 5),
(43, '2023-03-31 16:46:00', 2, '301 John JG', NULL, 141, '301 John JG', 13),
(44, '2023-04-03 16:06:00', 2, '234 MNN', NULL, 142, '234 MNN', 5),
(45, '2023-04-11 13:49:00', 2, '031 JIGNESH', NULL, 143, '031 JIGNESH', 5),
(46, '2023-04-18 15:17:00', 2, 'TBT', NULL, 144, 'TBT X DELTA', 5),
(47, '2023-04-19 16:36:00', 2, 'closed MIGHTY WIO', NULL, 145, 'closed MIGHTY WIO', 2),
(48, '2023-05-01 14:23:00', 2, '222 YTN', NULL, 146, '222 YTN', 5),
(49, '2023-05-09 17:17:00', 2, 'ICIC BANK', NULL, 147, 'ICIC BANK JP', 1),
(50, '2023-05-10 17:01:00', 2, '249 PSIR', NULL, 148, '249 PSIR', 10),
(51, '2023-05-23 12:56:00', 2, 'MANISHBHAI MALAD', NULL, 149, 'MANISHBHAI MALAD', 5),
(52, '2023-05-23 13:34:00', 2, 'MP Rajiv Mishra', NULL, 150, 'MP Rajiv Mishra', 5),
(53, '2023-05-25 18:01:00', 2, '308 CERT', NULL, 151, '308 CERT', 5),
(54, '2023-06-01 08:57:00', 2, '250_THANOS', NULL, 152, '250_THANOS', 5),
(55, '2023-06-10 16:50:00', 2, 'BIRBET PROM', NULL, 153, 'BIRBET PROMOTIONS', 0),
(56, '2023-06-13 13:13:00', 2, 'HARESH', NULL, 154, 'HARESH', 5),
(57, '2023-06-14 09:50:00', 2, 'CASH CRUSH', NULL, 155, 'CASH CRUSH PROMSSION', 0),
(58, '2023-06-14 13:52:00', 2, 'YESH KALWANI', NULL, 156, 'YESH KALWANI', 5),
(59, '2023-06-17 16:01:00', 2, 'ICIC BANK HM', NULL, 157, 'ICIC BANK HM', 2),
(60, '2023-07-03 14:50:00', 2, 'LUCIFER PRG', NULL, 158, 'LUCIFER PRG', 5),
(61, '2023-07-03 17:01:00', 1, 'EPROWEB COMPANY ACCOUNT', NULL, 159, 'COMPANY EXP LIST', 6),
(62, '2023-07-03 17:01:00', 1, 'MIGHTYONE_EXP', NULL, 160, 'COMPANY EXP LIST', 6),
(63, '2023-07-03 17:01:00', 1, 'GEMGLOW_EXP', NULL, 161, 'COMPANY EXP LIST', 1),
(64, '2023-07-07 14:01:00', 2, '007 DJ', NULL, 162, '007 DJ', 5),
(65, '2023-07-12 09:14:00', 2, 'NONE', NULL, 163, 'NONE', 0),
(66, '2023-07-13 15:25:00', 2, '307 Garry Dxb', NULL, 164, 'Garry Dxb', 5),
(67, '2023-07-25 15:47:00', 2, 'PV PVIJAY', NULL, 165, 'ARPITBHAI', 3),
(68, '2023-08-21 14:30:00', 2, 'VIKASH', NULL, 166, 'VIKASHBHAI', 5),
(69, '2023-08-28 11:28:00', 2, 'krunal', NULL, 167, 'krunal patel', 5),
(70, '2023-09-02 10:16:00', 1, 'NB_DMCC', NULL, 168, 'NB INTERNATIONAL DMCC', 1),
(71, '2023-09-12 11:42:00', 1, 'APHOOK', NULL, 169, 'APHOOK1', 5),
(72, '2023-09-12 16:30:00', 2, 'VICKYBHAI', NULL, 170, 'VICKYBHAI', 5),
(73, '2023-09-12 16:47:00', 2, 'VK RTGS APIHOOM', NULL, 171, 'VK RTGS FOR APIHOOK', 5),
(74, '2023-09-20 09:39:00', 2, '74 UNITY', NULL, 172, 'UNITY', 5),
(75, '2023-09-27 07:18:00', 1, 'MK_SURAT', NULL, 173, 'MKSURAT', 5),
(76, '2023-09-30 11:12:00', 2, 'Alokbhai', NULL, 174, 'Alokbhai', 5),
(77, '2023-09-30 17:53:00', 1, 'CASHCRUSH_JP', NULL, 175, 'CASHCRUSH_JP', 1),
(78, '2023-09-30 17:59:00', 1, 'BANK DINESH PERSONAL AC', NULL, 176, 'JP_DINESHBANKS', 2),
(79, '2023-10-06 19:41:00', 1, 'closed NDMCC', NULL, 177, 'closed NDMCC', 0),
(80, '2023-10-07 13:28:00', 2, 'SHIVRATN', NULL, 178, 'SHIVRATN  RACHIT', 5),
(81, '2023-10-12 16:08:00', 1, 'VB_BOOK_JP', NULL, 179, 'VBBIIJ_HBNKJP', 5),
(82, '2023-10-19 19:10:00', 1, 'JP_CARDS_PERSONAL', NULL, 180, 'JP_CARDS_PERSONAL', 0),
(83, '2023-10-25 11:55:00', 2, '181 Michael RMB', NULL, 181, '181', 5),
(84, '2023-10-27 16:07:00', 2, 'JP PARKING', NULL, 182, 'JP PARKING ACCOUNT', 0),
(85, '2023-11-08 15:29:00', 2, 'GOYANI_BANKS', NULL, 183, 'GOYANI BANK', 2),
(86, '2023-11-21 14:11:00', 2, 'NILESHBHAI SURAT', NULL, 184, 'NILESHBHAI SURAT', 5),
(87, '2023-11-24 14:12:00', 2, 'NIRAVBHAI RAJKOT', NULL, 185, 'NIRAVBHAI RAJKOT', 5),
(88, '2023-12-11 14:46:00', 1, 'Test party add', NULL, 186, 'Test', 0),
(89, '2023-12-18 12:23:00', 2, '321 MNJ HK', NULL, 187, '321', 5),
(90, '2023-12-18 12:24:00', 2, 'BRIJESHBHAI AHEMDABAD', NULL, 188, 'BRIJESHBHAI AHEMDABAD', 5),
(91, '2023-12-19 13:30:00', 2, '302  DPNJJ OM', NULL, 189, '302  DPNJJ OM', 5),
(92, '2023-12-19 18:15:00', 2, 'DIPAK YADAV', NULL, 190, 'DIPAK YADAV', 5),
(93, '2023-12-21 15:56:00', 2, 'CYCLE SETH', NULL, 191, 'CYCLE SETH', 5),
(94, '2023-12-25 16:41:00', 2, 'closed 317 PINFLIX', NULL, 192, 'closed 317 PINFLIX', 0),
(95, '2023-12-25 17:33:00', 2, 'SALARY ACCOUNT', NULL, 193, 'SALARY ACCOUNT', 5),
(96, '2023-12-25 18:06:00', 2, '136 RAJESHWAR', NULL, 194, '136 RAJESHWAR', 5),
(97, '2023-12-25 18:10:00', 2, 'closed 195 PINWALLET', NULL, 195, 'closed 195 PINWALLET', 0),
(98, '2023-12-26 11:48:00', 2, '501 PINTUBHAI', NULL, 196, '501 PINTUBHAI', 5),
(99, '2023-12-28 12:20:00', 2, '210 RM', NULL, 197, '210 RM', 9),
(100, '2023-12-28 12:21:00', 2, 'closed RTGS PARKING', NULL, 198, 'closed RTGS PARKING', 0),
(101, '2024-01-02 17:58:48', 2, 'JP2024', NULL, 199, 'JP BOOK 2024 ACCOUNT', 1),
(102, '2024-01-09 16:00:48', 2, '303 BABA (  RK  )', NULL, 200, '303 BABA (  RK  )', 3),
(103, '2024-01-13 10:44:49', 1, 'EXCH_mark11', NULL, 201, 'EXCH_mark11', 6),
(104, '2024-01-13 12:37:57', 1, 'EXCH', NULL, 202, 'EXCH COMMON', 3),
(105, '2024-01-17 09:16:26', 1, 'Bank FH Gemglow DMCC', NULL, 203, 'Bank FH Gemglow DMCC', 2),
(106, '2024-01-17 09:34:23', 1, 'Gemglow DMCC Comp Ac', NULL, 204, 'Gemglow DMCC Comp Ac', 1),
(107, '2024-01-17 09:35:09', 1, 'JP EXP 2023', NULL, 205, 'JP EXP 2023', 1),
(108, '2024-01-17 12:19:14', 1, 'Bank FAB NB International DMCC', NULL, 206, 'Bank FAB NB International DMCC', 2),
(109, '2024-01-17 12:19:48', 1, 'NB International DMCC Comp AC', NULL, 207, 'NB International DMCC Comp AC', 1),
(110, '2024-01-23 16:45:48', 1, 'Platinum Panorama HM Company', NULL, 208, 'PPHC', 7),
(111, '2024-01-23 16:53:12', 1, 'JSR BANKER DELHI', NULL, 209, 'JSRBD', 1),
(112, '2024-01-24 09:38:27', 1, 'DELTA ONE UAE Comp Acc', NULL, 210, 'DOUAECOMP', 1),
(113, '2024-01-27 10:43:24', 1, 'USDBOOK_PARKING ACCOUNT', NULL, 211, 'USDBOOK_PARKING ACCOUNT', 6),
(114, '2024-01-27 11:00:37', 1, 'Bank HK Spark BEA', NULL, 212, 'Bank HK Spark BEA', 2),
(115, '2024-01-27 14:10:58', 1, 'Bank Wio Mighty One', NULL, 213, 'Bank Wio Mighty One', 2),
(116, '2024-01-27 14:29:09', 1, 'Bank Ofx HK Delta Overseas', NULL, 214, 'Bank Ofx HK Delta Overseas', 2),
(117, '2024-01-27 14:32:23', 1, 'Markbaba Wallet', NULL, 215, '215 Markbaba Wallet', 3),
(118, '2024-01-27 14:45:28', 1, 'BLANK', NULL, 216, 'BLANK', 5),
(119, '2024-01-27 14:46:01', 1, '217 DD GOLD', NULL, 217, 'DD CA GOLD TOWER', 5),
(120, '2024-01-27 15:05:05', 1, '218 AMT UK', NULL, 218, '218 AMT UK', 5),
(121, '2024-01-27 15:33:05', 1, 'Bank Wio Eproweb Tech', NULL, 219, 'Bank Wio Eproweb Tech', 2),
(122, '2024-01-27 15:48:25', 1, 'MARK STOCK AVERAGE', NULL, 220, 'MARK STOCK AVERAGE', 6),
(123, '2024-01-27 15:54:17', 1, 'DT MARK', NULL, 221, 'DT MARK', 6),
(124, '2024-01-27 16:14:50', 1, 'Bank Mashreq Mighty One', NULL, 222, 'Bank Mashreq Mighty One', 2),
(125, '2024-01-27 16:47:10', 1, 'Bank Mashreq Eproweb Tech', NULL, 223, 'Bank Mashreq Eproweb Tech', 2),
(126, '2024-01-27 16:47:34', 1, 'Bank Mbank Eproweb Tech', NULL, 224, 'Bank Mbank Eproweb Tech', 2),
(127, '2024-01-27 16:47:49', 1, 'Bank ENBD Eproweb Tech', NULL, 225, 'Bank ENBD Eproweb Tech', 2),
(128, '2024-01-27 17:14:54', 6, '105 Alaa Kittani', NULL, 226, 'Alaa Kittani', 5),
(129, '2024-01-27 19:59:51', 6, 'SHREE RAM', NULL, 227, 'SHREE RAM', 6),
(130, '2024-01-27 20:16:07', 6, 'MIGHTY ONE COMPANY ACCOUNT', NULL, 228, 'COMPANY EXP LIST', 6),
(131, '2024-01-29 09:37:05', 1, 'MARK TEMP BOOK2 ACCOUNT', NULL, 229, 'MARK TEMP BOOK2 ACCOUNT', 6),
(132, '2024-01-29 15:23:51', 6, 'Kaybee Mumbai  (Ref By Prem)', NULL, 230, 'Kaybee Mumbai  (Ref By Prem)', 5),
(133, '2024-01-29 15:25:21', 6, 'Jigarbhai Surat', NULL, 231, 'Jigarbhai Surat', 5),
(134, '2024-01-29 15:28:50', 6, 'MARK Angadiya Expense', NULL, 232, 'MARK Angadiya Expense', 6),
(135, '2024-01-29 15:53:14', 6, 'Goyani Personal Banks', NULL, 233, 'Goyani Personal Banks', 2),
(136, '2024-01-31 08:09:35', 6, 'Bank Mashreq Platinum', NULL, 234, 'Bank Mashreq Platinum', 2),
(137, '2024-01-31 10:46:56', 6, '137 Abhishekh Jain', NULL, 235, 'Abhishekh Jain', 5),
(138, '2024-01-31 14:59:18', 6, 'Mr T', NULL, 236, 'Mr T', 5),
(139, '2024-01-31 15:07:30', 6, 'Bank Wio Delta One', NULL, 237, 'Bank Wio Delta One', 2),
(140, '2024-02-01 17:48:53', 1, 'EXCH_jp', NULL, 238, 'EXCH_jp', 1),
(141, '2024-02-09 16:27:30', 2, 'Bank Wio Platinum', NULL, 239, 'Bank Wio Platinum', 2),
(142, '2024-02-14 14:18:41', 7, 'HP Peter account', NULL, 240, 'HP Peter account', 5),
(143, '2024-02-14 15:25:33', 2, 'Bank Rak Platinum', NULL, 241, 'Bank Rak Platinum', 2),
(144, '2024-02-14 17:34:40', 2, 'staff MITUL', NULL, 242, 'MITUL', 4),
(145, '2024-02-15 17:40:05', 1, 'DNB DD Almas', NULL, 243, 'DNB DD Almas', 5),
(146, '2024-02-16 14:46:07', 1, 'FZUK', NULL, 244, 'FZUK', 5),
(147, '2024-02-16 14:53:27', 1, 'DELTA OVERSEAS HK COMP AC', NULL, 245, 'DELTA OVERSEAS HK COMP AC', 6),
(148, '2024-02-20 10:44:32', 6, 'Mehulbhai BVN', NULL, 246, 'Mehulbhai BVN', 5),
(149, '2024-02-23 12:25:09', 6, 'Karan Singh Arora', NULL, 247, 'Karan Singh Arora', 5),
(150, '2024-02-28 17:00:14', 6, 'ZZ DXB', NULL, 248, 'ZZ DXB', 5),
(151, '2024-02-29 11:35:26', 6, 'NS Naveen Singh', NULL, 249, 'NS Naveen Singh', 5),
(152, '2024-03-01 14:43:43', 6, 'Mark GBP/EUR/Other Currency', NULL, 250, 'All Other Currency Calculations && Conversions', 2),
(153, '2024-03-02 14:03:27', 6, 'Bank Misr Platinum', NULL, 251, 'Banque Misr Platinum Accounts', 2),
(154, '2024-03-07 15:24:35', 6, 'Bank 3s Money Eproweb Tech', NULL, 252, 'EPROWEB 3S Money Accounts', 2),
(155, '2024-03-13 19:32:52', 6, 'Bank CRX GBP Eproweb', NULL, 253, 'Eproweb & Jignesh GBP Account', 2),
(156, '2024-03-13 19:33:21', 6, 'Jgoyani GBP A/C', NULL, 254, 'Mighty & JGoyani GBP Account', 2),
(157, '2024-03-13 19:35:59', 6, 'UKLester1', NULL, 255, 'UKLester1', 5),
(158, '2024-03-19 09:25:07', 6, 'BB DXB', NULL, 256, 'BB DXB', 19),
(159, '2024-03-20 12:52:07', 6, '322 HG', NULL, 257, 'Hardik Gabani', 5),
(160, '2024-03-20 14:58:19', 2, 'staff Mitul Sergio', NULL, 258, 'Mitul Sergio', 4),
(161, '2024-03-21 10:46:03', 1, 'SAFI MOBILE', NULL, 259, 'SAFI MOBILE', 5),
(162, '2024-03-26 09:51:21', 6, '326 Bisleri', NULL, 260, '326# Bisleri', 5),
(163, '2024-03-26 10:53:29', 2, '315 JP//ROY Portal', NULL, 261, '315# JP//ROY Portal', 5),
(164, '2024-03-26 10:59:32', 2, '323 Rocky/JP AHD', NULL, 262, '323# Rocky/JP AHD', 5),
(165, '2024-03-27 14:18:50', 6, '333 PM Surat', NULL, 263, '333# PM Surat Angadiya', 3),
(166, '2024-03-27 19:28:39', 6, '264 R77T', NULL, 264, 'R77T GBP Deals', 5),
(167, '2024-03-27 19:32:53', 6, 'Bank CRX GBP SparkHK', NULL, 265, 'Spark CRX GBP A/C', 2),
(168, '2024-03-28 11:53:08', 6, 'Bank Islamic Platinum', NULL, 266, 'Bank Emirate Islamic Platinum', 2),
(169, '2024-04-05 18:59:06', 1, 'WPS SALARY ACCOUNT', NULL, 267, 'WPS SALARY ACCOUNT', 4),
(192, '2024-05-12 15:36:18', 1, '290 Peter CZ payout', NULL, 290, 'Peter CZ', 5),
(364, '2024-10-16 22:45:26', 2, 'Bank Ofx Mark Pacific', NULL, 364, 'Bank Ofx Mark Pacific', 2),
(201, '2024-06-01 00:25:07', 6, 'Office AA 203', NULL, 299, 'Al Awazi Office Expenses', 4),
(205, '2024-06-10 22:37:54', 6, 'Pending Card Swipe Settlements', NULL, 303, 'Pending Card Swipe Settlements', 5),
(170, '2024-04-09 18:19:19', 1, '501_2 Panel Account', NULL, 268, '501_2', 5),
(171, '2024-04-09 21:03:53', 6, '269 DV Shah', NULL, 269, '', 5),
(172, '2024-04-10 17:36:45', 6, 'Bank CRX GBP Platinum', NULL, 270, 'Platinum CRX GBP A/C', 2),
(173, '2024-04-11 12:24:14', 6, '327 HP TShelby', NULL, 271, '327# HP TShelby', 14),
(174, '2024-04-11 20:32:58', 6, '272 Mighty EUR A/C', NULL, 272, 'Mighty EUR A/C', 2),
(175, '2024-04-18 15:18:26', 1, '273 CRYPTOINDIA PORTAL', NULL, 273, 'CRYPTOINDIA PORTAL', 1),
(176, '2024-04-18 17:56:18', 6, '274 SK EUR A/C', NULL, 274, 'HB EUR Hisab', 5),
(177, '2024-04-18 19:21:13', 6, '336 Happy DXB', NULL, 275, 'Google DXB', 5),
(178, '2024-04-18 19:35:57', 6, '276 DRaj DXB', NULL, 276, '', 0),
(179, '2024-04-19 17:18:18', 1, '277 Peter_book1', NULL, 277, 'Peter_book1', 1),
(180, '2024-04-19 22:35:08', 6, '278 Alex / JP Delhi', NULL, 278, 'Alex / JP Delhi', 5),
(181, '2024-04-20 18:56:49', 6, '279 VK AXIS 9', NULL, 279, '279 VK AXIS 9', 5),
(182, '2024-04-23 23:36:22', 1, '280 YUVI PAYOUT HP', NULL, 280, 'YUVIPAYOUTHP', 5),
(183, '2024-04-25 21:32:49', 6, '281 KEV-JP Delhi', NULL, 281, 'KEV-JP Delhi', 5),
(184, '2024-04-26 17:48:46', 6, '282 Nikunjbhai Surat', NULL, 282, 'Nikunjbhai Surat', 5),
(185, '2024-04-26 21:41:12', 6, '283 UK GBP DEALS', NULL, 283, 'UK GBP DEALS', 5),
(186, '2024-04-28 18:27:19', 1, '284 CRICKET BOOK BIZ', NULL, 284, 'CRICKET BOOK BIZ', 1),
(187, '2024-04-30 19:41:54', 1, '285 HP PAYOUT APHUK', NULL, 285, 'HP PAYOUT APHUK', 1),
(188, '2024-05-05 22:07:59', 6, '286 Dilin', NULL, 286, 'DILIN POKKATHAYIL ITTIYAVARA', 5),
(189, '2024-05-07 21:07:14', 1, '287 RTGS GAMING JP', NULL, 287, 'RTGS GAMING JP', 1),
(190, '2024-05-08 18:26:47', 2, 'Pankaj Patel', NULL, 288, 'Pankaj Patel', 5),
(191, '2024-05-09 15:04:46', 1, '289 AB SINGAPORE', NULL, 289, 'AB SINGAPORE', 5),
(193, '2024-05-15 20:21:16', 6, '210#2 RM V30 Payout', NULL, 291, '210#2 RM V30 Payout', 9),
(194, '2024-05-17 16:18:25', 6, 'Bank SKN Eproweb Tech', NULL, 292, 'Bank Sokin Eproweb Tech A/C', 2),
(195, '2024-05-19 17:32:40', 1, 'RTGS BOOK JP2024', NULL, 293, 'RTGS', 1),
(196, '2024-05-22 20:08:56', 1, '196 HB ACCOUNT', NULL, 294, 'HN', 5),
(197, '2024-05-28 03:55:58', 1, 'PKXYZ1', NULL, 295, 'PKXYZ1', 1),
(198, '2024-05-28 17:43:10', 2, '246 KRP', NULL, 296, '246 KRP', 5),
(199, '2024-05-29 16:59:47', 1, '210#3 JP/KPPatel portal', NULL, 297, 'JP/KPPatel portal', 9),
(200, '2024-05-29 17:03:55', 1, 'APHOOK COMMISSION', NULL, 298, 'APHOOK COMMISSION', 1),
(202, '2024-06-05 20:57:37', 6, '202# ZZ HK Company', NULL, 300, '202# ZZ HK Company', 5),
(203, '2024-06-07 22:35:17', 1, 'SK HK COMPANY', NULL, 301, '203', 5),
(204, '2024-06-08 19:22:01', 6, '204 John - DT - Card', NULL, 302, 'Card Payment Work HP Ref', 5),
(206, '2024-06-13 14:43:02', 6, '206# Laxmi Narayan', NULL, 304, '206# Laxmi Narayan', 5),
(207, '2024-06-14 15:03:08', 6, 'MARK PACIFIC TRADING PTE LTD', NULL, 305, 'Comapny Expenses', 6),
(208, '2024-06-14 19:59:09', 6, '218#2 AMT UK', NULL, 306, '218#2 AMT UK', 5),
(209, '2024-06-16 14:48:42', 1, '249#2 PSIR', NULL, 307, '249#2', 10),
(210, '2024-06-19 13:07:17', 1, '249#3 CARDS EXP', NULL, 308, '249#2 CARDS EXP', 10),
(211, '2024-06-20 14:54:13', 6, '211 Bruce Wayne AUS', NULL, 309, '211 Bruce Wayne AUS', 5),
(212, '2024-06-21 22:20:20', 1, 'JP DIAMOND', NULL, 310, 'JP D2024', 1),
(213, '2024-06-26 13:33:06', 6, 'Arjun HK', NULL, 311, 'Arjun HK SK Group', 5),
(214, '2024-06-26 19:09:01', 1, '214 vinodkumar bvn', NULL, 312, 'vinodkumar bvn', 1),
(215, '2024-07-09 14:28:37', 6, 'Bank DBS Mark Pacific', NULL, 313, 'Mark Pacific Singapore DBS Statrys', 2),
(216, '2024-07-09 23:26:05', 1, '216 LUXGEM TR HK', NULL, 314, '216 LUXGEM TR HK', 11),
(217, '2024-07-12 19:12:49', 6, 'Bank PVL Eproweb Tech', NULL, 315, 'Privalgo A/C Eproweb', 2),
(218, '2024-07-15 20:57:08', 1, 'None', NULL, 316, 'None', 1),
(219, '2024-07-15 20:58:08', 1, 'None', NULL, 317, 'None', 0),
(220, '2024-07-15 20:58:48', 1, 'APHK PETER', NULL, 318, 'Peter', 1),
(221, '2024-07-15 21:19:14', 2, '328 RNK', NULL, 319, 'RNK', 0),
(222, '2024-07-16 17:30:22', 1, '210#4 JULY 2024', NULL, 320, '210#4 JULY 2024', 9),
(223, '2024-07-17 19:29:11', 6, 'EXCH_usdt11', NULL, 321, 'EXCH_usdt11', 6),
(224, '2024-07-19 15:51:22', 6, '224 NOVA International', NULL, 322, '224 NOVA International', 11),
(225, '2024-07-19 22:08:17', 6, '225 Mike', NULL, 323, '225 Mike', 5),
(226, '2024-07-22 19:12:35', 6, '226 Tony AHD', NULL, 324, '226 Tony AHD', 5),
(227, '2024-07-27 22:49:59', 6, '227 Berlin SRT', NULL, 325, '227 Berlin SRT', 5),
(228, '2024-07-27 22:59:52', 6, '228 Bhayani Sir', NULL, 326, '228 Bhayani Sir', 5),
(229, '2024-07-31 15:48:34', 2, 'HARRY BANK TRANSFER', NULL, 327, 'HARRY BANK TRANSFER', 0),
(230, '2024-07-31 16:23:57', 1, 'staff Musabhai', NULL, 328, 'staff Musabhai', 4),
(231, '2024-07-31 23:25:26', 7, 'EXCH_dt11', NULL, 329, 'EXCH_dt11', 6),
(232, '2024-08-12 17:10:54', 7, 'Bank Airwallex Mark Pacific', NULL, 330, 'Bank Airwallex Mark Pacific', 6),
(233, '2024-08-12 19:36:06', 7, 'nb_invoice0001', NULL, 331, 'nb_invoice0001', 1),
(234, '2024-08-15 19:55:31', 6, 'AL MAHRA BUSINESS SOLUTIONS', NULL, 332, 'AL MAHRA BUSINESS SOLUTIONS', 5),
(235, '2024-08-16 17:01:38', 6, '235 Tim', NULL, 333, '235 Tim', 5),
(236, '2024-08-16 19:14:58', 7, '236 KD Surat DT', NULL, 334, '236 KD Surat DT', 5),
(237, '2024-08-17 15:14:16', 6, 'AW Trading HK', NULL, 335, 'AW Trading HK', 11),
(238, '2024-08-17 15:14:56', 6, 'Spark International HK Limited', NULL, 336, 'Spark International HK Limited', 6),
(239, '2024-08-19 23:43:06', 6, '239 JP Ticket Group', NULL, 337, 'JP Ticket Group With H.Vinayak', 5),
(240, '2024-08-22 19:30:21', 1, 'Hari Mahadev Surat', NULL, 338, 'Hari Mahadev Surat', 12),
(241, '2024-08-27 13:45:57', 6, '241 BG Delhi TT & RMB', NULL, 339, '241 BG Delhi TT & RMB', 5),
(340, '2024-08-27 16:55:26', 1, '340 NBT SURAT', NULL, 340, '340 NBT SURAT', 12),
(341, '2024-08-27 16:59:11', 7, '341 BB-DELTA RMB DT', NULL, 341, '341 BB-DELTA RMB DT', 19),
(342, '2024-08-27 22:28:31', 7, '342 Epro EUR A/C', NULL, 342, '342 Epro EUR A/C', 2),
(343, '2024-08-28 17:24:08', 1, 'SHIMORA GEMS', NULL, 343, 'SHIMORA GEMS', 12),
(344, '2024-08-28 19:37:44', 7, '344 Mark RMB Work', NULL, 344, '344 Mark RMB Work', 6),
(345, '2024-08-29 16:32:22', 1, 'PREKSHA EXPORTS', NULL, 345, 'PREKSHA EXPORTS', 5),
(346, '2024-08-29 16:40:07', 1, 'split amount settlement', NULL, 346, 'split amount settlement', 5),
(347, '2024-08-30 15:47:26', 1, 'EXCH_jpd', NULL, 347, 'EXCH_jpd', 1),
(348, '2024-09-18 20:09:00', 7, '348 TJ BVN', NULL, 348, '348 TJ BVN', 5),
(349, '2024-09-21 18:46:36', 1, '249#4 THAHA', NULL, 349, '249#4 THAHA', 10),
(350, '2024-09-21 19:03:04', 7, '350 JP Tickets Group', NULL, 350, '350 JP Tickets Group', 5),
(351, '2024-09-23 19:34:31', 7, '351 ERC Wallets', NULL, 351, 'ERC To TRC Hisab', 6),
(352, '2024-09-24 18:29:56', 2, 'ROGER', NULL, 352, 'ROGER', 0),
(353, '2024-09-25 13:57:58', 7, '353 Printing POS', NULL, 353, '353 Printing POS', 5),
(354, '2024-09-25 23:36:54', 7, 'Bank PVL Mark HK', NULL, 354, 'Bank PVL Mark HK', 2),
(355, '2024-09-26 12:45:28', 7, '341#2 BB RMB _ EXTRA AC', NULL, 355, '341#2 BB RMB _ EXTRA AC', 19),
(356, '2024-09-26 21:11:50', 2, '356 Staff Hardikbhai', NULL, 356, '356 Staff Hardikbhai', 4),
(357, '2024-09-30 17:24:46', 1, 'IPHONE16NBPURCHASE', NULL, 357, 'IPHONE16NBPURCHASE', 1),
(358, '2024-10-05 15:30:22', 7, '348#2 TJ Exp', NULL, 358, '348#2 TJ Exp', 5),
(359, '2024-10-05 15:30:50', 7, '348#3 TJ Rate Diff', NULL, 359, '348#3 TJ Rate Diff', 5),
(360, '2024-10-05 17:47:19', 7, '360 Montybhai SRT', NULL, 360, '360 Montybhai SRT', 5),
(361, '2024-10-11 20:28:37', 7, '301#2 John JG Bank Balance', NULL, 361, 'Bank Balance For India Expenses', 13),
(362, '2024-10-11 20:32:19', 7, '301#3 JP Exp From JG Bank', NULL, 362, 'JP Exp From JG Bank', 13),
(363, '2024-10-11 20:57:35', 7, '327#2 HP (Peter) Group', NULL, 363, 'Bank Account Expense Hisab', 14),
(365, '2024-10-28 23:37:03', 7, '233#2 NB KP Purchase Payment', NULL, 365, '233#2 NB KP Purchase Payment', 12),
(366, '2024-11-02 17:56:47', 1, '210#5 Tarush Bhatiya', NULL, 366, '210#5 Tarush Bhatiya', 9),
(367, '2024-11-02 18:03:58', 1, 'JP TRAVEL EXP NOV24', NULL, 367, 'JP TRAVEL EXP NOV24', 1),
(368, '2024-11-06 11:41:05', 1, 'BANK ADCB JP PERSONAL ACCOUNT', NULL, 368, 'BANK ADCB JP PERSONAL ACCOUNT', 1),
(369, '2024-11-12 19:47:20', 6, '369#4 WHITE SWAN LOGISTICS DWC LLC', NULL, 369, 'WHITE SWAN LOGISTICS DWC LLC', 15),
(370, '2024-11-14 16:38:39', 7, '210#6 UK AED DEAL', NULL, 370, '210#6 UK AED DEAL', 9),
(371, '2024-11-15 16:23:08', 7, '369#3 Altair Middle East FZE', NULL, 371, 'Altair Middle East FZE', 15),
(372, '2024-11-15 16:23:27', 1, '369 SS CASH COMMISSION', NULL, 372, '369 CASH COMMISSION', 15),
(373, '2024-11-15 16:51:43', 1, 'JP EXP 2024 PERSONAL', NULL, 373, 'JP EXP 2024 PERSONAL', 1),
(374, '2024-11-15 16:52:06', 1, 'JP EXP 2025 PERSONAL', NULL, 374, 'JP EXP 2025 PERSONAL', 1),
(375, '2024-11-19 19:43:53', 7, '249#5 Deepakbhai', NULL, 375, '249#5 Deepakbhai', 10),
(376, '2024-11-19 20:23:01', 7, 'Mark Co. Pending Payments', NULL, 376, 'Mark Co. Pending Payments', 16),
(377, '2024-11-19 20:47:48', 7, '376#1 AJ HYD', NULL, 377, '376#1 AJ HYD', 16),
(378, '2024-11-19 20:48:22', 7, '376#2 DP DELHI', NULL, 378, '376#2 DP DELHI', 16),
(379, '2024-11-19 20:49:08', 7, '376#3 Hassan', NULL, 379, '376#3 Hassan', 16),
(380, '2024-11-19 20:49:37', 7, '376#4 PTFZ', NULL, 380, '376#4 PTFZ', 17),
(381, '2024-11-19 20:50:21', 7, '376#5 KMDELHI', NULL, 381, '376#5 KMDELHI', 17),
(382, '2024-11-19 20:50:46', 7, '376#6 MNN', NULL, 382, '376#6 MNN', 17),
(383, '2024-11-19 20:51:47', 7, '376#7 JDSURAT', NULL, 383, '376#7 JDSURAT', 17),
(384, '2024-11-19 20:52:46', 7, '376#8 MKSURAT', NULL, 384, '376#8 MKSURAT', 17),
(385, '2024-11-29 14:40:18', 7, '250#2 THANOS', NULL, 385, '250#2 THANOS', 5),
(386, '2024-12-03 15:43:31', 1, '249#6 Wallet', NULL, 386, '249#6 Wallet', 10),
(387, '2024-12-04 18:09:43', 7, '249#7 Dinesh Salary', NULL, 387, '249#7 Dinesh Salary', 10),
(388, '2024-12-05 14:18:00', 7, '369#2 SS SWIFT PAYMENTS', NULL, 388, '369#2 SWIFT PAYMENTS', 15),
(389, '2024-12-05 20:43:30', 7, '348#4 TJ India', NULL, 389, '348#4 TJ India', 5),
(390, '2024-12-07 22:43:55', 2, '390 Staff ISHWOR', NULL, 390, '390 Staff ISHWOR', 4),
(391, '2024-12-09 17:55:27', 7, '391 BHAL', NULL, 391, '391 BHAL', 5),
(392, '2024-12-19 03:51:07', 7, '392 Dilipbhai', NULL, 392, '392 Dilipbhai', 5),
(393, '2024-12-19 03:51:41', 7, '392#2 Dilipbhai Exp', NULL, 393, '392#2 Dilipbhai Exp', 5),
(394, '2024-12-19 03:52:01', 7, '392#2 Dilipbhai Rate Diff', NULL, 394, '392#2 Dilipbhai Rate Diff', 5),
(395, '2024-12-19 04:45:47', 7, '395# KRRX BOT', NULL, 395, '395# KRRX BOT', 5),
(396, '2024-12-26 21:03:27', 7, '376#9 HB TT Work', NULL, 396, '376#9 HB TT Work', 16),
(397, '2024-12-27 13:16:02', 1, '369#5 SS Commission Payable', NULL, 397, '369#5 SS Commission Payable', 15),
(398, '2024-12-28 17:50:06', 7, '398 Fees Hisab', NULL, 398, '398 Fees Hisab', 5),
(399, '2025-01-13 22:55:36', 7, '369#6 SS EURO PAYMENTS', NULL, 399, '369#6 SS EURO PAYMENTS', 15),
(400, '2025-01-13 22:58:30', 7, '400# K Gopal', NULL, 400, '400# K Gopal', 19),
(401, '2025-01-13 23:09:04', 7, '401 Safepal Binance', NULL, 401, '401 Safepal Binance', 5),
(402, '2025-01-14 22:47:49', 1, '341#3 WATNI BB', NULL, 402, '341#3 WATNI BB', 19),
(403, '2025-01-14 23:02:07', 1, '341#4 watni usdt india', NULL, 403, '341#4 watni usdt india', 19),
(404, '2025-01-14 23:24:34', 7, '369#7 SS Personal', NULL, 404, '369#7 SS Personal', 15),
(405, '2025-01-16 21:35:52', 1, 'nb cash aed mgmt', NULL, 405, 'nb cash aed mgmt', 12),
(406, '2025-01-22 17:14:23', 6, '369#8 AIRFRAME COMPONENTS SOLUTIONS (FZE)', NULL, 406, '369#8 AIRFRAME COMPONENTS SOLUTIONS (FZE)', 15),
(407, '2025-01-24 14:34:39', 1, '341#5 Barney JAN2025', NULL, 407, '341#5 Barney JAN2025', 19),
(408, '2025-01-24 20:11:50', 6, 'Bank Ofx Spark', NULL, 408, 'Bank Ofx Spark', 2),
(409, '2025-01-28 17:45:06', 1, '369#9 SKS AED PAYMENTS', NULL, 409, 'SKS AED PAYMENTS', 15),
(410, '2025-02-03 13:33:50', 1, '401#2 JP TLINK 2', NULL, 410, '401#2', 0),
(411, '2025-02-05 00:42:24', 1, '341#6 BB Feb2025', NULL, 411, '341#6 BB Feb2025', 19),
(412, '2025-02-05 18:54:42', 1, '412#1 VRON USDT', NULL, 412, '412#1 VRON USDT', 20),
(413, '2025-02-06 18:23:18', 1, '363#2 BGMASTER PAYEXPO', NULL, 413, '363#2 BGMASTER PAYEXPO', 14),
(414, '2025-02-06 19:32:00', 6, '369#10 AL QUA POWER LLC FZ', NULL, 414, '369#10 AL QUA POWER LLC FZ', 15),
(415, '2025-02-06 19:44:47', 6, '369#11 SKY AVIATION SUPPORT SERVICES', NULL, 415, '369#11 SKY AVIATION SUPPORT SERVICES', 15),
(416, '2025-02-07 10:40:27', 11, 'test', 757733098, 416, 'test_party', 1),
(417, '2025-02-10 11:50:54', 11, 'EXCH_test', NULL, 417, 'EXCH_test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_aed`
--

CREATE TABLE `transaction_aed` (
  `srn` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `dr_party` int(11) NOT NULL,
  `cr_party` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `dr_party_balance` int(11) NOT NULL,
  `cr_party_balance` int(11) NOT NULL,
  `info` tinyint(1) NOT NULL DEFAULT 0,
  `actual_rate` decimal(10,2) DEFAULT NULL,
  `map` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction_aed`
--

INSERT INTO `transaction_aed` (`srn`, `timest`, `user_id`, `dr_party`, `cr_party`, `amount`, `note`, `dr_party_balance`, `cr_party_balance`, `info`, `actual_rate`, `map`) VALUES
(1, '2025-02-10 11:58:05', 11, 19, 3, 900, '900', -900, 900, 0, NULL, NULL),
(2, '2025-02-11 11:14:11', 11, 2, 6, 100, 'testdata', -100, 100, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_eur`
--

CREATE TABLE `transaction_eur` (
  `srn` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `dr_party` int(11) NOT NULL,
  `cr_party` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dr_party_balance` int(11) NOT NULL,
  `cr_party_balance` int(11) NOT NULL,
  `info` tinyint(1) NOT NULL DEFAULT 0,
  `actual_rate` decimal(10,2) DEFAULT NULL,
  `map` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_eur`
--

INSERT INTO `transaction_eur` (`srn`, `timest`, `user_id`, `dr_party`, `cr_party`, `amount`, `note`, `dr_party_balance`, `cr_party_balance`, `info`, `actual_rate`, `map`) VALUES
(1, '2025-02-13 16:44:50', 1, 2, 4, 1000, 'Hello', -1000, 1000, 0, NULL, NULL),
(2, '2025-02-13 16:56:17', 1, 2, 4, 1000, 'Hello', -2000, 2000, 0, NULL, NULL),
(3, '2025-02-13 16:56:40', 1, 2, 4, 1000, 'Hello', -3000, 3000, 0, NULL, NULL),
(4, '2025-02-13 16:56:57', 1, 2, 4, 1000, 'Hello data', -4000, 4000, 0, NULL, NULL),
(5, '2025-02-13 16:59:55', 1, 2, 4, 1000, 'Hello data', -5000, 5000, 0, NULL, NULL),
(6, '2025-02-13 17:00:54', 1, 2, 4, 1000, 'Hello eur', -6000, 6000, 0, NULL, NULL),
(7, '2025-02-13 17:05:46', 1, 2, 4, 1000, 'Hello eur data', -7000, 7000, 0, NULL, NULL),
(8, '2025-02-13 17:25:09', 1, 2, 4, 1000, 'Hello eur testdata', -8000, 8000, 0, NULL, NULL),
(9, '2025-02-13 00:00:00', 1, 2, 4, 1000, 'Hello my eur data', -9000, 9000, 0, NULL, NULL),
(10, '2025-02-13 00:00:00', 1, 2, 4, 1000, 'Hello my eur data', -10000, 10000, 0, NULL, NULL),
(11, '2025-02-13 00:00:00', 1, 2, 4, 1000, 'Hello my eur data', -11000, 11000, 0, NULL, NULL),
(12, '2025-02-13 00:00:00', 1, 2, 4, 1000, 'Hello my eur data', -12000, 12000, 0, NULL, NULL),
(13, '2025-02-13 00:00:00', 1, 2, 4, 1000, 'Hello my', -13000, 13000, 0, NULL, NULL),
(14, '2025-02-13 00:00:00', 1, 2, 4, 1000, 'Hello my', -14000, 14000, 0, NULL, NULL),
(15, '2025-02-13 00:00:00', 1, 2, 4, 1000, 'Hello my', -15000, 15000, 0, NULL, NULL),
(16, '2025-02-13 00:00:00', 1, 2, 4, 1000, 'Hello my', -16000, 16000, 0, NULL, NULL),
(17, '2025-02-14 00:00:00', 1, 2, 4, 1000, 'Hello my', -17000, 17000, 0, NULL, NULL),
(18, '2025-02-14 00:00:00', 1, 2, 4, 1000, 'Hello my', -18000, 18000, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_gbp`
--

CREATE TABLE `transaction_gbp` (
  `srn` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `dr_party` int(11) NOT NULL,
  `cr_party` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dr_party_balance` int(11) NOT NULL,
  `cr_party_balance` int(11) NOT NULL,
  `info` tinyint(1) NOT NULL DEFAULT 0,
  `actual_rate` decimal(10,2) DEFAULT NULL,
  `map` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_gbp`
--

INSERT INTO `transaction_gbp` (`srn`, `timest`, `user_id`, `dr_party`, `cr_party`, `amount`, `note`, `dr_party_balance`, `cr_party_balance`, `info`, `actual_rate`, `map`) VALUES
(1, '2025-02-10 11:51:11', 11, 417, 417, 2400, 'exch inr_gbp 100 x 24 = 2400', -2400, 2400, 10, 0.04, 'inr_5KOPvAqMYP'),
(2, '2025-02-10 11:58:31', 11, 2, 4, 900, '9000', -900, 900, 0, NULL, NULL),
(3, '2025-02-13 13:44:56', 1, 2, 4, 1000, 'Hello', -1900, 1900, 0, NULL, NULL),
(4, '2025-02-13 14:02:02', 1, 2, 4, 1000, 'Hello', -2900, 2900, 0, NULL, NULL),
(5, '2025-02-13 14:03:05', 1, 2, 4, 1000, 'Hello', -3900, 3900, 0, NULL, NULL),
(6, '2025-02-13 14:08:49', 1, 2, 4, 1000, 'Hello', -4900, 4900, 0, NULL, NULL),
(7, '2025-02-13 14:11:55', 1, 2, 4, 1000, 'Hello', -5900, 5900, 0, NULL, NULL),
(8, '2025-02-14 00:00:00', 1, 1, 1, 1000, 'Hello', -1000, 1000, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_inr`
--

CREATE TABLE `transaction_inr` (
  `srn` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `dr_party` int(11) NOT NULL,
  `cr_party` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `dr_party_balance` int(11) NOT NULL,
  `cr_party_balance` int(11) NOT NULL,
  `info` tinyint(1) NOT NULL DEFAULT 0,
  `actual_rate` decimal(10,2) DEFAULT NULL,
  `map` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction_inr`
--

INSERT INTO `transaction_inr` (`srn`, `timest`, `user_id`, `dr_party`, `cr_party`, `amount`, `note`, `dr_party_balance`, `cr_party_balance`, `info`, `actual_rate`, `map`) VALUES
(1, '2025-02-13 14:05:52', 1, 2, 4, 1000, 'Hello', -1000, 1000, 0, NULL, NULL),
(2, '2025-02-13 14:06:43', 1, 2, 4, 1000, 'Hello', -2000, 2000, 0, NULL, NULL),
(3, '2025-02-13 14:08:23', 1, 2, 4, 1000, 'Hello', -3000, 3000, 0, NULL, NULL),
(4, '2025-02-13 14:37:06', 1, 5, 4, 1000, 'Hello', -1000, 4000, 0, NULL, NULL),
(5, '2025-02-13 15:28:30', 1, 5, 4, 1000, 'Hello', -2000, 5000, 0, NULL, NULL),
(6, '2025-02-13 15:44:25', 11, 2, 4, 1000, 'test', -4000, 6000, 0, NULL, NULL),
(7, '2025-02-14 10:18:48', 11, 2, 4, 500, 'asasassa', -4500, 6500, 0, NULL, NULL),
(8, '2025-02-14 10:24:19', 11, 2, 4, 50, 'asasas', -4550, 6550, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_usd`
--

CREATE TABLE `transaction_usd` (
  `srn` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `dr_party` int(11) NOT NULL,
  `cr_party` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `dr_party_balance` int(11) NOT NULL,
  `cr_party_balance` int(11) NOT NULL,
  `info` tinyint(1) NOT NULL DEFAULT 0,
  `actual_rate` decimal(10,2) DEFAULT NULL,
  `map` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction_usd`
--

INSERT INTO `transaction_usd` (`srn`, `timest`, `user_id`, `dr_party`, `cr_party`, `amount`, `note`, `dr_party_balance`, `cr_party_balance`, `info`, `actual_rate`, `map`) VALUES
(1, '2025-02-10 11:57:48', 11, 5, 8, 900, '900', -900, 900, 0, NULL, NULL),
(2, '2025-02-10 12:19:34', 11, 417, 417, 100, 'exch usd_eur 100 x 10 = 10', -100, 100, 13, 0.10, 'eur_4VKcokO80g'),
(3, '2025-02-10 13:37:16', 11, 417, 1, 810, 'exch inr_usd 90 x 9 = 810', -910, 810, 3, 0.11, 'inr_BUzWq1VHbl'),
(4, '2025-02-11 14:43:08', 11, 88, 2, 10, 'test', -10, 10, 0, NULL, NULL),
(5, '2025-02-11 14:44:00', 11, 417, 417, 1, 'exch inr_usd 100 x 85 = 1', -911, -909, 3, 100.00, 'inr_0jUNwt27od'),
(6, '2025-02-11 17:39:42', 11, 417, 2, 10000, 'exch inr_usd 100 x 100 = 10000', -10911, 10010, 3, 0.01, 'inr_V2HEzGvxHX');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_name` text NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 = adminuser, 2 = normaluser'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `timest`, `user_name`, `password`, `type`) VALUES
(1, '2022-12-05 10:54:45', 'jp', '$2y$10$fhaJHXZtuX9IN5YHQIPocOdY4X79mEOTwa0ZeaHeEIGVDAPwL0Asi', 1),
(2, '2022-12-05 10:56:51', 'hm11', '$2y$10$K2Il/WJRSC1vkJtRQEjFJ.5wc3.al7p/iInJiiTHvoETMR2X0rQxC', 2),
(6, '2022-12-05 10:56:51', 'mark11', '$2y$10$n0yiQqVYeTunTNbaJx26quWBKrg3GCKguUCdE2V6oZ32ZQ4R6UfBG', 2),
(7, '2022-12-05 10:56:51', 'dt11', '$2a$12$wa85zbfT/CLgH3iYQw4y1uIfOOFkt/AramRoByxcsfOYW0HhIG.cC', 2),
(10, '2022-12-05 10:54:45', 'jpd', '$2y$10$fhaJHXZtuX9IN5YHQIPocOdY4X79mEOTwa0ZeaHeEIGVDAPwL0Asi', 2),
(11, '2025-02-07 09:47:46', 'test', '$2y$10$jQtRTpqLwEp82zHXqbIBK.NdKoAmoMPJwIn6LZNXRSrgjI1bdU19e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webhook_data`
--

CREATE TABLE `webhook_data` (
  `id` int(11) NOT NULL,
  `chat_id` bigint(20) NOT NULL,
  `message` text DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `webhook_data`
--

INSERT INTO `webhook_data` (`id`, `chat_id`, `message`, `data`, `created_at`) VALUES
(1, -4768268422, 'gbp,101,103, 1000 ,Hello gbp', '{\"update_id\":707804363,\"message\":{\"message_id\":210,\"from\":{\"id\":757733098,\"is_bot\":false,\"first_name\":\"deep\",\"last_name\":\"detroja\"},\"chat\":{\"id\":-4768268422,\"title\":\"CODE TEST\",\"type\":\"group\",\"all_members_are_administrators\":true},\"date\":1739520970,\"text\":\"gbp,101,103, 1000 ,Hello gbp\"}}', '2025-02-14 13:46:11'),
(2, -4768268422, 'eur,101,103, 1000 ,Hello gbp', '{\"update_id\":707804364,\"message\":{\"message_id\":213,\"from\":{\"id\":757733098,\"is_bot\":false,\"first_name\":\"deep\",\"last_name\":\"detroja\"},\"chat\":{\"id\":-4768268422,\"title\":\"CODE TEST\",\"type\":\"group\",\"all_members_are_administrators\":true},\"date\":1739521406,\"text\":\"eur,101,103, 1000 ,Hello gbp\"}}', '2025-02-14 13:53:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`srn`);

--
-- Indexes for table `transaction_aed`
--
ALTER TABLE `transaction_aed`
  ADD PRIMARY KEY (`srn`);

--
-- Indexes for table `transaction_eur`
--
ALTER TABLE `transaction_eur`
  ADD PRIMARY KEY (`srn`);

--
-- Indexes for table `transaction_gbp`
--
ALTER TABLE `transaction_gbp`
  ADD PRIMARY KEY (`srn`);

--
-- Indexes for table `transaction_inr`
--
ALTER TABLE `transaction_inr`
  ADD PRIMARY KEY (`srn`);

--
-- Indexes for table `transaction_usd`
--
ALTER TABLE `transaction_usd`
  ADD PRIMARY KEY (`srn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webhook_data`
--
ALTER TABLE `webhook_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `srn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `transaction_aed`
--
ALTER TABLE `transaction_aed`
  MODIFY `srn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_eur`
--
ALTER TABLE `transaction_eur`
  MODIFY `srn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaction_gbp`
--
ALTER TABLE `transaction_gbp`
  MODIFY `srn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction_inr`
--
ALTER TABLE `transaction_inr`
  MODIFY `srn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction_usd`
--
ALTER TABLE `transaction_usd`
  MODIFY `srn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `webhook_data`
--
ALTER TABLE `webhook_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
