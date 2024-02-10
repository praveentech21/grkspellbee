-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 12:30 PM
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
-- Database: `grkspellbee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `team_name` varchar(10) NOT NULL,
  `category` varchar(20) DEFAULT 'general',
  `admin_name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `stall_area` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`team_name`, `category`, `admin_name`, `mobile`, `stall_area`, `password`) VALUES
('Omega', 'stall', 'Veera Raghava', '8008567115', 'Girls Hostel Stall', 'hosgava#715'),
('Gaama', 'stall', 'Nikhal', '8639290852', 'EEE Opposite', 'gamakil@392'),
('Beta', 'stall', 'Manasa', '8639557638', 'Campus Online Stall', 'campstall!763'),
('alpha', 'stall', 'laxman', '8712131582', 'Technology Center', 'beeman$213'),
('spellbee', 'superadmin', 'Suresh M', '9052727402', 'SRKR CAMPUS', 'shibha%100'),
('accounts', 'stall', 'karthik', '9398954816', 'Lab', 'accthik&548'),
('delta', 'stall', 'Nikitha', '9855677345', 'S Block', 'delspell*345'),
('admin', 'superadmin', 'Suresh Mudunuri', '9866600002', 'Tech Centre', '8080'),
('srkr', 'view', 'general', 'Spellbee#csd', 'SRKR CAMPUS', 'spell#csd');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `regno` varchar(15) NOT NULL,
  `feedback` varchar(200) NOT NULL DEFAULT 'Very wonder full and exciting event.',
  `rating` int(5) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`regno`, `feedback`, `rating`) VALUES
('cse2825938', 'interesting,excellent,enjoying ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `name` varchar(70) NOT NULL,
  `department` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `particapation` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`name`, `department`, `title`, `mobile`, `email`, `particapation`) VALUES
('Dr.Sai Praveen', 'Computer Science and Design', 'php ', '9052727401', 'ravikumar_csd@srkrec.edu.in', 'chaired'),
('Dr.Sai Praveen', 'Computer Science and Design', 'php ', '9052727402', 'ravikumar_csd@srkrec.edu.in', 'participat'),
('Dr.Sai Praveen', 'Computer Science and Design', 'php ', '9052727403', 'ravikumar_csd@srkrec.edu.in', 'oralpresen'),
('Dr.Sai Praveen', 'SRKR College', 'php traning', '9052727404', 'ravikumar_csd@srkrec.edu.in', 'invitedtal'),
('Dr. Suresh Mudunuri', 'CSD', 'Bio Tech', '9866600002', 'suresh_mcr@srkrec.edu.in', 'participat');

-- --------------------------------------------------------

--
-- Table structure for table `replay`
--

CREATE TABLE `replay` (
  `pid` varchar(15) NOT NULL,
  `replay` int(5) NOT NULL,
  `confby` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replay`
--

INSERT INTO `replay` (`pid`, `replay`, `confby`, `date`) VALUES
('6281182778', 0, '8639290852', '2023-09-13 07:15:18'),
('6281234495', 0, '9855677345', '2023-09-20 10:53:23'),
('6300307845', 0, '', '2023-10-04 05:32:14'),
('6300398449', 0, '8639290852', '2023-09-23 06:37:00'),
('6300535532', 0, '9855677345', '2023-09-20 06:50:03'),
('6301312205', 0, '9855677345', '2023-09-20 06:52:13'),
('6301325739', 0, '9855677345', '2023-09-22 11:17:46'),
('6301423363', 0, '8712131582', '2023-10-05 10:13:59'),
('6301865564', 0, '8639557638', '2023-09-12 10:46:43'),
('6301959887', 0, '8639290852', '2023-09-14 11:49:58'),
('6302344787', 0, '9855677345', '2023-09-22 11:01:58'),
('6302618567', 0, '', '2023-09-12 10:07:24'),
('6302995292', 0, '9855677345', '2023-09-14 06:15:01'),
('6303277571', 0, '8639290852', '2023-09-13 11:07:45'),
('6303620892', 0, '8639290852', '2023-09-14 06:48:14'),
('6303875899', 0, '8639290852', '2023-09-13 07:15:18'),
('6303949581', 0, '8712131582', '2023-09-22 11:00:02'),
('6304191177', 0, '8712131582', '2023-09-23 06:09:55'),
('6304371069', 0, '8639290852', '2023-09-19 10:05:53'),
('6304554432', 0, '8008567115', '2023-09-24 10:50:40'),
('6304963059', 0, '8712131582', '2023-10-04 10:08:17'),
('6305071701', 0, '8008567115', '2023-09-24 11:04:15'),
('7013265319', 0, '8639290852', '2023-09-22 12:04:57'),
('7013676969', 0, '8008567115', '2023-09-22 15:26:28'),
('7013760163', 0, '8639290852', '2023-09-14 08:00:26'),
('7032131265', 0, '8639290852', '2023-09-22 11:22:54'),
('7207476697', 0, '8008567115', '2023-09-15 12:03:34'),
('7207793508', 0, '9855677345', '2023-10-07 05:40:07'),
('7207931378', 0, '8712131582', '2023-09-14 10:31:57'),
('7337280089', 0, '8639290852', '2023-09-22 11:11:21'),
('7386348755', 0, '8712131582', '2023-09-12 10:10:21'),
('7386431360', 0, '8712131582', '2023-09-19 11:08:53'),
('7396653507', 0, '8639557638', '2023-09-20 07:22:53'),
('7396707263', 0, '', '2023-09-16 06:18:51'),
('7416324782', 0, '8639290852', '2023-09-14 06:47:26'),
('7416487495', 0, '8712131582', '2023-09-13 10:50:36'),
('7416517078', 0, '8712131582', '2023-09-20 10:52:09'),
('7569602279', 0, '9855677345', '2023-09-12 10:01:27'),
('7569881373', 0, '', '2023-09-21 11:07:01'),
('7661851898', 0, '8712131582', '2023-10-04 06:34:19'),
('7661964767', 0, '8639290852', '2023-09-22 06:12:37'),
('7672081679', 0, '9855677345', '2023-09-12 08:59:43'),
('7780114699', 0, '8639557638', '2023-09-13 05:24:22'),
('7780199438', 0, '9855677345', '2023-09-14 10:29:57'),
('7780262039', 0, '', '2023-09-16 06:41:17'),
('7780460388', 0, '9855677345', '2023-09-20 06:50:16'),
('7794943399', 0, '9855677345', '2023-10-07 05:40:20'),
('7801061426', 0, '9855677345', '2023-09-22 10:28:46'),
('7842353004', 0, '8639290852', '2023-09-13 07:15:18'),
('7842453984', 0, '8712131582', '2023-09-22 06:20:13'),
('7842667024', 0, '9855677345', '2023-09-14 06:05:41'),
('7981138219', 0, '8008567115', '2023-09-23 15:08:27'),
('7981501272', 0, '8712131582', '2023-10-04 05:27:35'),
('7981677646', 0, '8639290852', '2023-09-22 10:58:30'),
('7981935780', 0, '8639557638', '2023-09-28 10:05:46'),
('7989649045', 0, '8639290852', '2023-09-21 08:58:10'),
('7989715356', 0, '8639557638', '2023-09-13 11:28:44'),
('7993137677', 0, '8639290852', '2023-09-23 14:01:44'),
('7993513313', 0, '8712131582', '2023-10-05 06:23:31'),
('7995400493', 0, '8639290852', '2023-09-11 07:52:22'),
('7995955624', 0, '9855677345', '2023-09-21 10:15:26'),
('8008533950', 0, '8712131582', '2023-10-04 07:03:46'),
('8019451899', 0, '8008567115', '2023-09-14 13:26:03'),
('8019618977', 0, '9855677345', '2023-09-20 06:49:35'),
('8074229871', 0, '9855677345', '2023-09-22 10:52:03'),
('8096078844', 0, '9855677345', '2023-09-13 06:39:28'),
('8106137125', 0, '', '2023-09-23 06:21:37'),
('8106970531', 0, '9855677345', '2023-09-14 07:36:31'),
('8125129826', 0, '', '2023-10-03 12:39:28'),
('8247438399', 0, '8639290852', '2023-09-14 10:38:55'),
('8309602055', 0, '8639290852', '2023-09-11 10:30:08'),
('8328124246', 0, '8639290852', '2023-09-13 07:29:57'),
('8328480410', 0, '8639290852', '2023-09-22 10:46:02'),
('8330942837', 0, '8639290852', '2023-09-20 10:35:39'),
('8332899558', 0, '8712131582', '2023-09-23 06:42:17'),
('8367290359', 0, '8712131582', '2023-09-22 11:00:02'),
('8367680544', 0, '8712131582', '2023-10-04 07:35:07'),
('8464906364', 0, '9855677345', '2023-09-20 10:53:34'),
('8500216667', 0, '8712131582', '2023-09-20 11:16:55'),
('8500274802', 0, '8712131582', '2023-09-13 11:14:23'),
('8500454345', 0, '9855677345', '2023-09-14 10:28:24'),
('8555073719', 0, '8639557638', '2023-09-20 11:07:21'),
('8639290852', 0, '8639290852', '2023-09-12 09:14:44'),
('8639315545', 0, '9855677345', '2023-09-20 07:10:00'),
('8688093983', 0, '9855677345', '2023-09-12 06:12:09'),
('8688337372', 0, '8712131582', '2023-10-04 06:02:27'),
('8688454263', 0, '9052727402', '2023-09-20 06:14:08'),
('8712131582', 0, '8712131582', '2023-09-20 10:32:22'),
('8803434888', 0, '9855677345', '2023-09-20 11:09:01'),
('8885436869', 0, '8639290852', '2023-09-11 11:16:06'),
('8885447296', 0, '8712131582', '2023-09-21 11:02:25'),
('8886669611', 0, '8712131582', '2023-10-05 10:08:03'),
('8886791030', 0, '8712131582', '2023-09-23 06:51:29'),
('8897070628', 0, '8639290852', '2023-09-23 14:03:45'),
('8897451518', 0, '8639557638', '2023-09-13 11:09:04'),
('8978142077', 0, '9855677345', '2023-09-20 10:59:07'),
('9014705897', 0, '8639557638', '2023-09-14 10:54:19'),
('9014878331', 0, '8639557638', '2023-10-04 10:25:30'),
('9014999135', 0, '9855677345', '2023-09-14 10:14:33'),
('9032062724', 0, '8712131582', '2023-09-19 10:06:11'),
('9032796219', 0, '9855677345', '2023-09-11 11:23:34'),
('9052091029', 0, '8008567115', '2023-09-23 15:08:11'),
('9059616720', 0, '8639557638', '2023-09-15 11:49:54'),
('9110789885', 0, '8712131582', '2023-09-13 10:34:49'),
('9121564064', 0, '8712131582', '2023-09-22 06:07:24'),
('9121692566', 0, '9855677345', '2023-09-12 06:15:17'),
('9133123000', 0, '8639290852', '2023-09-13 07:33:23'),
('9182975798', 0, '9855677345', '2023-09-14 10:01:04'),
('9262623459', 0, '8712131582', '2023-09-23 06:51:50'),
('9346127312', 0, '8639290852', '2023-09-28 14:09:12'),
('9347877144', 0, '8008567115', '2023-10-04 12:41:22'),
('9390394946', 0, '9855677345', '2023-09-23 06:30:58'),
('9390434589', 0, '8008567115', '2023-09-22 15:28:48'),
('9391179606', 0, '8008567115', '2023-09-22 15:55:04'),
('9391834014', 0, '9855677345', '2023-09-23 06:14:08'),
('9392032285', 0, '9855677345', '2023-09-22 11:18:25'),
('9392076914', 0, '8712131582', '2023-09-23 06:19:07'),
('9392777539', 0, '8639290852', '2023-09-14 06:47:50'),
('9392854386', 0, '8712131582', '2023-09-11 10:15:31'),
('9398086978', 0, '8639557638', '2023-09-14 10:15:37'),
('9398364309', 0, '9855677345', '2023-09-12 11:01:28'),
('9398479686', 0, '8639290852', '2023-09-13 11:49:11'),
('9398933411', 0, '8712131582', '2023-09-14 08:09:02'),
('9490231222', 0, '8639557638', '2023-09-21 08:31:46'),
('9491663377', 0, '8712131582', '2023-10-04 10:15:51'),
('9492067411', 0, '8639557638', '2023-09-12 11:05:09'),
('9492325547', 0, '9855677345', '2023-10-07 06:03:24'),
('9492926008', 0, '8712131582', '2023-10-05 10:13:46'),
('9493475502', 0, '8639290852', '2023-09-14 10:58:19'),
('9493528835', 0, '8639290852', '2023-10-03 10:53:52'),
('9493988292', 0, '9855677345', '2023-09-22 10:30:31'),
('9494711997', 0, '8639290852', '2023-09-23 06:45:01'),
('9494954007', 0, '8639290852', '2023-09-11 10:13:39'),
('9515227552', 0, '9855677345', '2023-09-26 10:59:55'),
('9553834185', 0, '9855677345', '2023-09-22 11:16:57'),
('9573161684', 0, '8639557638', '2023-09-12 10:59:35'),
('9603974999', 0, '8639290852', '2023-09-11 10:59:40'),
('9618882624', 0, '8639290852', '2023-09-13 07:22:33'),
('9640050786', 0, '8639290852', '2023-09-14 10:37:56'),
('9646418666', 0, '8639290852', '2023-10-03 12:26:56'),
('9652343644', 0, '8639557638', '2023-09-15 09:16:32'),
('9652392248', 0, '8639557638', '2023-09-15 11:26:14'),
('9652936663', 0, '8639290852', '2023-09-21 11:11:30'),
('9666211269', 0, '9855677345', '2023-09-12 10:13:51'),
('9666879931', 0, '8639557638', '2023-09-15 11:22:22'),
('9701099299', 0, '9855677345', '2023-09-21 10:16:37'),
('9703596882', 0, '8639290852', '2023-09-28 13:47:38'),
('9704026300', 0, '9855677345', '2023-09-22 10:51:39'),
('9704049694', 0, '8712131582', '2023-10-04 07:35:38'),
('9704280337', 0, '8712131582', '2023-09-12 10:40:55'),
('9848823311', 0, '9052727402', '2023-10-14 10:12:00'),
('9849331582', 0, '8639557638', '2023-09-11 10:33:40'),
('9866560207', 0, '8712131582', '2023-09-20 10:27:17'),
('9866600002', 0, '9866600002', '2023-09-13 10:34:53'),
('9888926665', 0, '8639290852', '2023-09-15 11:15:39'),
('9908128588', 0, '9855677345', '2023-09-14 10:32:05'),
('9912825938', 0, '8712131582', '2023-09-26 10:21:10'),
('9948424333', 0, '8639557638', '2023-09-15 10:57:13'),
('9949616806', 0, '8639290852', '2023-09-11 11:39:26'),
('9951396250', 0, '8639290852', '2023-09-28 19:49:36'),
('9959151155', 0, '8712131582', '2023-09-23 06:02:07'),
('9959808993', 0, '8712131582', '2023-10-04 07:30:27'),
('9985111189', 0, '8639557638', '2023-09-12 08:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `sid` varchar(10) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `marks` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`sid`, `qid`, `answer`, `marks`, `timestamp`) VALUES
('9052727402', 226, 'MYSER', 0, '2024-02-10 09:32:59.478007'),
('9052727402', 2, 'AFFACT', 0, '2024-02-10 09:32:58.317289'),
('9052727402', 352, 'ACUMALATION', 0, '2024-02-10 09:32:57.323717'),
('9052727402', 209, 'KEYS', 0, '2024-02-10 09:32:56.179958'),
('9052727402', 274, 'CODING', 100, '2024-02-10 09:32:54.320645'),
('9052727402', 271, 'FANASTIC', 0, '2024-02-10 09:32:52.447786'),
('9052727402', 160, 'CENIMA', 0, '2024-02-10 09:32:50.891318'),
('9052727402', 197, 'PASSENGRE', 0, '2024-02-10 09:32:48.525813'),
('9052727402', 37, 'PITTCH', 0, '2024-02-10 09:32:46.749119'),
('9052727402', 320, 'PERCEIVE', 200, '2024-02-10 09:33:01.620758'),
('9866892957', 233, 'PRAMOTER', 0, '2024-02-10 10:14:43.119573');

-- --------------------------------------------------------

--
-- Table structure for table `responses1`
--

CREATE TABLE `responses1` (
  `sid` varchar(10) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `marks` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responses3`
--

CREATE TABLE `responses3` (
  `sid` varchar(10) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `marks` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `responses3`
--

INSERT INTO `responses3` (`sid`, `qid`, `answer`, `marks`, `timestamp`) VALUES
('6281176849', 25, 'RR', 0, '2024-02-10 09:23:31.286770');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `pid` varchar(10) NOT NULL,
  `player_name` varchar(100) DEFAULT NULL,
  `father_name` varchar(50) NOT NULL,
  `flat` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `points` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`pid`, `player_name`, `father_name`, `flat`, `status`, `points`) VALUES
('9052727402', 'Sai Praveen ', 'Trimurthulu', '1-149', 1, 300),
('9866892957', 'PRudhivi', 'Sanju', '989', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users3`
--

CREATE TABLE `users3` (
  `pid` varchar(10) NOT NULL,
  `pin` varchar(4) DEFAULT '0000',
  `player_name` varchar(100) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `points` int(5) DEFAULT NULL,
  `lastseen` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `regno` varchar(15) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users3`
--

INSERT INTO `users3` (`pid`, `pin`, `player_name`, `place`, `status`, `points`, `lastseen`, `regno`, `start_time`, `end_time`) VALUES
('6281176849', '0000', 'SAI MADHAVI', '2026', 1, 1400, '2023-11-02 11:17:14', '22B91A0545', '16:30:00', '16:47:14'),
('6300607147', '0000', 'HEMA SATYA.K', '2026', 1, 1000, '2023-11-02 10:08:35', '22B91A5467', '14:49:58', '15:10:00'),
('6301959887', '0000', 'GURIVINDAPALLI PRANAV DURGA SAI KRISHNA', '2026', 1, 200, '2023-11-02 11:32:49', 'LE03959887', '16:31:38', '17:02:49'),
('6303763743', '0000', 'SYAMANTH V', '2026', 1, 2800, '2023-11-02 04:37:34', '22B91A03F0', NULL, NULL),
('6304554432', '0000', 'PURANAPANDA MANASWINI SRI LASYA PRIYA', '2026', 1, 1500, '2023-11-02 12:11:52', '22B91A05M9', '16:32:25', '17:41:52'),
('7013878731', '0000', 'GUDALA SRAVAN VENKAT', '2024', 1, 800, '2023-11-02 10:16:37', '20B91A0253', '14:50:19', '15:05:42'),
('7207759694', '0000', 'N.MANJU SRI PRUDHVLA', '2027', 1, 1500, '2023-11-02 04:37:34', '7207759694', NULL, NULL),
('7382198680', '0000', 'GUNA SEKHAR', '2027', 1, 1900, '2023-11-02 04:37:34', '7382198680', NULL, NULL),
('7386431360', '0000', 'GRANDHI. JAHNAVI', '2026', 1, 800, '2023-11-02 09:46:44', '22B91A5717', '14:50:11', '15:16:44'),
('7396653507', '0000', 'PACHIGOLLA SAI KRISHNA NAGA SAHITHI', '2026', 1, 600, '2023-11-02 10:19:20', '22B91A5735', '14:50:07', '15:48:32'),
('7569617143', '0000', 'S BINDU VARSHA', '2026', 1, 500, '2023-11-02 10:19:13', '22B91A05R3', '14:50:01', '15:05:42'),
('7601033148', '0000', 'NAVYA SRI PAMPANA', '2026', 1, 600, '2023-11-02 11:25:25', '22B91A04H0', '16:32:36', '16:55:25'),
('7780460388', '0000', 'G.PRASANNA', '2027', 1, 700, '2023-11-02 11:31:19', '7780460388', '14:50:05', '17:01:19'),
('7981677646', '0000', 'V.SATYA SRI DEVI', '2026', 1, 600, '2023-11-02 10:18:50', '22B91A04P0', '14:49:55', '15:48:32'),
('7989715356', '0000', 'T SRAVANI', '2026', 1, 1000, '2023-11-02 10:08:10', '22B91A61E5', '14:50:12', '15:38:10'),
('8008533950', '0000', 'G GANESH', '2027', 1, 300, '2023-11-02 11:13:30', '8008533950', '16:33:57', '16:43:30'),
('8019618977', '0000', 'T.PRAVEENA NIHARIKA', '2027', 1, 900, '2023-11-02 10:18:04', '8019618977', '14:49:55', '15:38:10'),
('8106012864', '0000', 'CH LAKSHMI NEERAJ', '2027', 1, 800, '2023-11-02 11:20:31', '8106012864', '16:30:46', '16:50:31'),
('8106137125', '0000', 'P L S KARTHIKEYA VARMA', '2025', 1, 1700, '2023-11-02 04:37:34', '21B91A6149', NULL, NULL),
('8125614594', '0000', 'SAI PRASANTH', '2027', 1, 500, '2023-11-02 11:29:45', '8125614594', '16:32:30', '16:59:45'),
('8125945957', '0000', 'SINDHU', '2026', 1, 2100, '2023-11-02 04:37:34', '22B91A1225', NULL, NULL),
('8317564139', '0000', 'A SAI SRI CHANDANA', '2026', 1, 800, '2023-11-02 11:11:37', '22B91A0514', '16:32:19', '16:41:37'),
('8328480410', '0000', 'REKHA SRI', '2027', 1, 500, '2023-11-02 10:17:33', 'AIDS480410', '14:50:01', '15:42:34'),
('8341236781', '0000', 'MARRI SUDHA BHARGAV', '2024', 1, 400, '2023-11-02 11:26:50', '20B91A03D1', '16:32:56', '16:56:50'),
('8374791751', '0000', 'SAI KEERTANA', '2027', 1, 600, '2023-11-02 10:17:48', 'CSE4791751', '14:49:59', '15:22:00'),
('8555025262', '0000', 'AYITIREDDY BALA DURGA MANIKANTA', '2026', 1, 1100, '2023-11-02 11:22:31', '22B91A0415', '16:32:20', '16:52:31'),
('8639970793', '0000', 'S.SAI VENNELA SRI', '2027', 1, 400, '2023-11-02 11:22:09', '8639970793', '16:30:08', '16:52:09'),
('8897070628', '0000', 'D POOJA', '2027', 1, 200, '2023-11-02 11:12:20', '8897070628', '16:30:03', '16:42:20'),
('8919223468', '0000', 'R.YAKSHITHA', '2025', 1, 500, '2023-11-02 10:17:29', '21B91A04K3', '14:49:56', '15:42:34'),
('8919293705', '0000', 'NEERAJ KUMAR', '2025', 1, 600, '2023-11-02 11:31:55', '21B91A04A3', '16:32:11', '17:01:55'),
('8919431134', '0000', 'SHANMUKH MANEPALLI', '2024', 1, 1400, '2023-11-02 11:17:08', '20B91A04D9', '16:30:05', '16:47:08'),
('8985363995', '0000', 'A SRI VIDYA SAGAR', '2027', 1, 1000, '2023-11-02 11:39:46', '8985363995', '16:40:51', '17:09:46'),
('8985776751', '0000', 'SAHITI AKELLA', '2026', 1, 600, '2023-11-02 10:17:15', '22B91A05N8', '14:50:06', '15:14:59'),
('9030397745', '0000', 'I. DEEPIKA', '2025', 1, 400, '2023-11-02 11:22:31', '21B91A0257', '16:32:25', '16:52:31'),
('905272402', '0000', 'test', '2022', 1, 1800, '2023-11-02 04:53:09', '21B91A6206', NULL, NULL),
('9177974729', '0000', 'D.RAMYA SRI', '2027', 1, 500, '2023-11-02 11:24:44', '9177974729', '16:32:32', '16:54:44'),
('9182017247', '0000', 'LAVANYA', '2026', 1, 1000, '2023-11-02 10:12:34', '22B91A61F2', '14:49:57', '15:42:34'),
('9381048391', '0000', 'G.KALYANI', '2026', 1, 1700, '2023-11-02 11:16:16', '22B91A1249', '16:30:06', '16:46:16'),
('9381645655', '0000', 'AMUDALAPALLI JAYASRI', '2025', 1, 2300, '2023-11-02 04:37:34', '21B91A0520', NULL, NULL),
('9392509992', '0000', 'S JAI KRISHNA', '2024', 1, 2300, '2023-11-02 11:26:37', '20B91A05S9', '16:35:05', '16:56:37'),
('9398140641', '0000', 'KHANDAPU SATYA PRASANTHI', '2026', 1, 200, '2023-11-02 09:44:10', '22B91A5461', '14:50:00', '15:14:10'),
('9398211376', '0000', 'PALLAVI', '2025', 1, 1500, '2023-11-02 04:37:34', '21B91A04J0', NULL, NULL),
('9398479686', '0000', 'BALA RAVI TEJA', '2025', 1, 1100, '2023-11-02 11:31:16', '21B91A5756', '16:32:08', '17:01:16'),
('9398954816', '0000', 'KARTHIK CHITTURI', '2025', 1, 1500, '2023-11-02 10:16:45', '21B91A6208', '14:40:30', '15:16:44'),
('9490231222', '0000', 'B. RAVISHANKAR SAITEJA', '2026', 1, 600, '2023-11-02 09:47:06', '22B91A05N4', '14:49:57', '15:17:06'),
('9492926008', '0000', 'V PAVAN', '2026', 1, 0, '2023-11-02 12:15:49', '22B91A54G1', '16:30:07', '17:20:45'),
('9493363446', '0000', 'KUSHAL SAI', '2027', 1, 800, '2023-11-02 09:47:25', '9493363446', '14:50:03', '15:17:25'),
('9493988292', '0000', 'P.SAI SREEDEVI', '2027', 1, 1100, '2023-11-02 10:09:05', '9493988292', '14:50:03', '15:16:44'),
('9515687194', '0000', 'VEERENDRA NADH', '2027', 1, 100, '2023-11-02 11:33:05', '9515687194', '16:30:01', '17:03:05'),
('9573676453', '0000', 'R LAKSHMI PRASANNA', '2027', 1, 400, '2023-11-02 11:24:16', '9573676453', '16:39:39', '16:54:16'),
('9581664706', '0000', 'D NIVEDITHA', '2027', 1, 400, '2023-11-02 11:25:37', '9581664706', '16:36:12', '16:55:37'),
('9640050786', '0000', 'MUHAMMAD MANSOOR', '2024', 1, 500, '2023-11-02 11:25:07', '20B91AO3E7', '16:30:03', '16:55:07'),
('9652392248', '0000', 'BONAM DEBORAH MARGARET', '2026', 1, 700, '2023-11-02 11:20:13', '22B91A6131', '16:32:15', '16:50:13'),
('9666257214', '0000', 'KRISHNA DILEEP', '2027', 1, 500, '2023-11-02 11:29:38', '9666257214', '16:30:00', '16:59:38'),
('9676685646', '0000', 'SHREEYA', '2024', 1, 300, '2023-11-02 11:16:32', '20B91A03F9', '16:32:17', '16:46:32'),
('9704915077', '0000', 'M N VAISHNAVI', '2026', 1, 900, '2023-11-02 11:32:02', '22B91A12A2', '16:32:17', '17:02:02'),
('9743693436', '0000', 'SAI RISHIK', '2027', 1, 1000, '2023-11-02 11:45:28', '9743693436', '16:57:57', '17:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `qid` int(11) NOT NULL,
  `word` varchar(1000) NOT NULL,
  `meaning` text DEFAULT NULL,
  `level` int(11) NOT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`qid`, `word`, `meaning`, `level`, `option1`, `option2`, `option3`) VALUES
(1, 'Principle', 'rule', 6, 'principal', 'prinecipal', 'princeple'),
(2, 'effect', 'a result or outcome', 6, 'affect', 'effact', 'affact'),
(3, 'compliment', 'a polite expression of praise', 7, 'complement', 'complliment', 'complimant'),
(4, 'desert', 'a dry or sandy area', 4, 'dessert', 'dessart', 'desart'),
(5, 'discreet', 'showing good judgement and careful consideration', 6, 'discrete', 'discreett', 'descreet'),
(6, 'meddle', 'interfere officiously and unwantedly', 5, 'metal', 'mettle', 'medal'),
(7, 'stationery', 'writing materials', 6, 'stationary', 'stationory', 'statioenery'),
(8, 'lie', 'be kept in a specified state', 2, 'lay', 'lye', 'lei'),
(9, 'capital', 'a city that serves as the seat of government', 2, 'capitol', 'capetal', 'capitel'),
(10, 'peace', 'a state of quiet', 3, 'piace', 'piece', 'peice'),
(11, 'cereal', 'breakfast made from grains', 4, 'serials', 'cerreal', 'cireal'),
(12, 'altar', 'a raised platform used for religious ceremonies', 8, 'alter', 'altre', 'alltar'),
(13, 'canvas', 'a heavy,woven fabric used for painting', 2, 'cannvas', 'canvass', 'caanvas'),
(14, 'conscience', 'a persons moral sense of right and wrong', 8, 'conscense', 'conscious', 'consciance'),
(15, 'persistence', 'the act of continuing firmly despite opposition', 6, 'persistance', 'persisstence', 'persestence'),
(16, 'separate', 'to set apart', 6, 'seperate', 'seperete', 'saperate'),
(17, 'occurred', 'happened', 5, 'occured', 'ocurred', 'ocured'),
(18, 'existence', 'the state of being', 4, 'existance', 'exsistence', 'exsistance'),
(19, 'perceive', 'to become aware of through the senses', 7, 'percieve', 'parceive', 'perceve'),
(20, 'bicycle', 'a human powered vehicle with two wheels and pedals', 3, 'bycycle', 'bicicle', 'bicykle'),
(21, 'chocolate', 'a sweet brown treat made from cacao beans', 2, 'choclate', 'chocolat', 'chokolate'),
(22, 'butterfly', 'an insect with colourful wings that undergoes metamorphosis', 1, 'butterflie', 'buterfly', 'buttarfly'),
(23, 'library', 'a place where books and other materials are stored for reading and borrowing', 3, 'librarie', 'librery', 'librare'),
(24, 'dinosaur', 'a prehistoric reptile', 5, 'dinasor', 'dinosor', 'dianosur'),
(25, 'telephone', 'a device used to communicate', 2, 'telefone', 'telephne', 'teliphone'),
(26, 'restaurant', 'a place where meals are prepared and served to customers', 6, 'restaurent', 'restarent', 'restarant'),
(27, 'calendar', 'a chart or system used to organise days,weeks,months', 5, 'calander', 'calender', 'calandar'),
(28, 'television', 'an electronic device that displays moving images and sounds', 2, 'televison', 'telivision', 'telivison'),
(29, 'sunshine', 'the light and heat that comes from the sun', 1, 'sunshyne', 'sunsine', 'sonshine'),
(30, 'rainbow', 'a colorful arc in the sky that appears after the rain', 1, 'renbow', 'rienbow', 'rainbou'),
(31, 'picnic', 'a meal eaten outdoors,often in a park or countryside', 2, 'picknick', 'picnick', 'picknic'),
(32, 'adventure', 'an exciting and often risky experience', 2, 'adventur', 'aventure', 'advanture'),
(33, 'birthday', 'the day on which a person was born,celebrated annually', 1, 'borthday', 'birtday', 'berthday'),
(34, 'Balloon', 'a flexible bag fillled with gas', 4, 'baloon', 'ballun', 'baloon'),
(35, 'telescope', 'an optical instrument used to view distant objects', 2, 'telescop', 'teleskope', 'teliscope'),
(36, 'sandbox', 'a container filled with sand for children to playin', 1, 'sandboks', 'sanndbox', 'sendbox'),
(37, 'pitch', 'the level or tune of sound', 1, 'patch', 'pittch', 'pitchh'),
(38, 'stayed', 'to have been somewhere for a short time', 1, 'stayeed', 'steyed', 'stayid'),
(39, 'doctor', 'a person that treats sick people', 1, 'docter', 'dokter', 'doctar'),
(40, 'gloves', 'handcovers to protect hands', 2, 'glovas', 'glavas', 'glowes'),
(41, 'ocean', 'a large area of water covering earth', 1, 'ocaen', 'occean', 'osean'),
(42, 'cheese', 'a food made from milk curd', 1, 'chesse', 'chease', 'chesee'),
(43, 'coarse', 'having a harsh or rough quality', 7, 'course', 'coaurse', 'cours'),
(44, 'passage', 'a alley or pathway', 2, 'passege', 'pessage', 'pasage'),
(45, 'compartment', 'a section of something large', 2, 'comparment', 'compertment', 'comppartment'),
(46, 'prospector', 'a person who searches for valuable substances such as gold or oil', 5, 'propector', 'perspector', 'prespector'),
(47, 'support', 'to give comfort', 1, 'saport', 'suport', 'sepport'),
(48, 'advance', 'to move forward in a purposeful way', 1, 'edvance', 'advace', 'andvance'),
(49, 'balance', 'an even distribution of weight', 1, 'balence', 'belence', 'baleance'),
(50, 'cancel', 'for a planned event to not take place', 1, 'cancal', 'cencal', 'cancell'),
(51, 'whether', 'showing a choice between alternatives', 4, 'weather', 'whetter', 'whether'),
(52, 'rhythm', 'a strong regular and repeated movement', 7, 'rythm', 'rhytm', 'rithm'),
(53, 'possibilty', 'a chance that something may or maynot happen', 3, 'posibility', 'possibiliity', 'possibiliti'),
(54, 'category', 'a group of people or things that are similar in someway', 4, 'catigory', 'cateegory', 'cattegory'),
(55, 'QUARRELLING', 'arguing angrily', 6, 'querrelling', 'querreling', 'quareling'),
(56, 'orchestra', 'a group of musicians who play many instruments together', 5, 'archestra', 'orchastra', 'orrchastra'),
(57, 'recruit', 'to find people to take part in an event or team', 3, 'reccruit', 'recriut', 'reecruit'),
(58, 'persuade', 'to cause someone to do something or believing something', 5, 'persuate', 'parsuade', 'peruade'),
(59, 'perimeter', 'the outside edge of an area', 1, 'perimetre', 'permeter', 'permetre'),
(60, 'cadet', 'a person training in the armed forces or police', 3, 'cadett', 'cedet', 'kadet'),
(61, 'luminous', 'bright or shining', 4, 'luminuos', 'luminos', 'lumenous'),
(62, 'ABUNDANT', 'HAVING PLENTY OF', 5, 'ABUNDENT', 'ABUNDUNT', 'ABUNNDANT'),
(63, 'ACCOMMODATE', 'FIT IN WITH THE WISHES OR NEEDS OF', 6, 'ACOMMMODATE', 'ACCOMADATE', 'ACCOMMODATTE'),
(64, 'ACQUAINTANCE', 'KNOWLEDGE OR EXPERIENCE OF SOMETHING', 8, 'ACQUAINTTANCE', 'ACQUAINTANCEE', 'ACQUAINTENCE'),
(65, 'BELIEVE', 'HOLD AS AN OPTION', 6, 'BELIVE', 'BELIEVE', 'BELIEVEE'),
(66, 'CAMOUFLAGE', 'THE DISGUISING OF MILITARY PERSONNEL', 7, 'CAMMOUFLAGE', 'CAMOFLAUGE', 'CAMOFLAGE'),
(67, 'ELEPHANT', 'LARGEST LIVING LAND ANIMAL', 1, 'ELEPANT', 'ELEFANT', 'ELEPHANTH'),
(68, 'NEPTUNE', 'PLANENT IN A SOLAR SYSTEM', 2, 'NEPTOON', 'NEPTUN', 'NUPTENE'),
(69, 'TURQUOISE', 'A GREENISH-BLUE COLOUR STONE', 10, 'TUTQUIOSE', 'TUREQUOISE', 'TURQUISE'),
(70, 'TYRANNOSAURUS', 'BIPEDAL CARNIVOROUS DINOSAUR', 10, 'TYRANOSARURUS', 'TYRRANOSARURAS', 'TYRANNOSOROUS'),
(71, 'ASTRONOMER', 'AN EXPERT IN OR STUDENT OF ASTRONOMY', 5, 'ASTRONOMAR', 'ASTRANOMER', 'ASTRONAMER'),
(72, 'SHAKESPEARE', 'A WRITER OF POEMS', 11, 'SHAKESPEAR', 'SHAKESPERE', 'SAKESPEARE'),
(73, 'CENTAUR', 'A CREATURE IN GREEK MYTHOLOGY', 11, 'SENTAUR', 'SENTUAR', 'CENTUAR'),
(74, 'MISSISSIPPI', 'STATE OF SOUTH-EASTERN UNITED-STATE', 9, 'MISISIPPI', 'MISSISIPI', 'MISSISSIIPPI'),
(75, 'PENICILLIN', 'A MEDICATION USED TO MANAGE AND TREAT A WIDE RANGE OF INFECTIONS', 8, 'PENICILIN', 'PENECILLIN', 'PENYCILLIN'),
(76, 'COLUMBUS', 'A NAVIGATOR WHO EXPLORED THE AMERICA', 3, 'COLOMUS', 'COLIMBUS', 'COLUMBUSS'),
(77, 'AFRICA', 'SECOND LARGEST CONTINENT IN WORLD', 1, 'AFREECA', 'AFFRICA', 'AFRIICA'),
(78, 'MAYA', 'ONE OF THE ANCIENT CIVILIZATION IN THE WORLD', 11, 'MAIA', 'MYA', 'MAYYA'),
(79, 'SHAKESPEAREAN', 'RELATING TO OR CHARACTERISTIC OF WILLIAM SHAKESPEARE', 11, 'SHAKESPEREAN', 'SHAKESPEARIAN', 'SHAKEESPEARAN'),
(80, 'KILIMANJARO', 'AFRICA\'S TALLEST MOUNTAIN', 11, 'KILIMANJAROO', 'KILIMUNJARO', 'KILIMANJERO'),
(81, 'ASTRONAUT', 'PERSON WHO TRAINED TO TRAVEL IN A SPACECRAFT', 6, 'ASTRONOUT', 'ASTRONAUGHT', 'ASTROONAUT'),
(82, 'MINOTAUR', 'A CREATURE WITH HALF MAN AND HALF BULL', 11, 'MINOOTAUR', 'MINOTAAR', 'MYNOTAUR'),
(83, 'NILE', 'WORLD\'S LONGEST RIVER', 4, 'NYLE', 'NIEL', 'NYEL'),
(84, 'CHROMIUM', 'THE CHEMICAL ELEMENT OF ATOMIC NO:24', 3, 'CHROMIM', 'CHRROMIUM', 'CRHROMIUM'),
(85, 'VAN GOGH', 'ONE OF THE MOST POPULAR OF THE POST IMPRESSIONIST PAINTER', 11, 'VANN GOGH', 'VANN GOFF', 'VAN GOH'),
(86, 'WASHINGTON', 'CAPTIAL CITY OF UNITED STATES', 3, 'WASHINGTOON', 'WASHINGNTAN', 'WASHINTON'),
(87, 'SPANISH', 'SECOND MOST WIDELY SPOKEN FIRST LANGUAGE IN WORLD', 2, 'SPPANISH', 'SPANNISH', 'SPENNISH'),
(88, 'NEBULA', 'IT IS AN GAINT CLOUD OF DUST AND GASNIN SPACE', 4, 'NEEBULA', 'NEBULLA', 'NUBULA'),
(89, 'COLOSSEUM', 'IT IS AN ELLIPTICAL AMPHITHEATRE IN THE CENTRE OF THE CITY ROME', 11, 'COLLOSEUM', 'COLOSEEUM', 'COLOSIUM'),
(90, 'SAHARA', 'A VERY LARGE DESERT IN NORTH AFRICA', 1, 'SAHARA', 'SAHRA', 'SAHARRA'),
(91, 'MOZART', 'ONE OF THE MOST INFLUENTIAL POPULAR AND PROLIFIC COMPOSERS OF THE CLASSICAL PERIOD', 8, 'MOZZART', 'MOZAART', 'MOZARD'),
(92, 'BELL', 'DEVICE THAT MAKES A RINING SOUND WHEN STRUCK', 1, 'BELIVE', 'BBELL', 'BELB'),
(93, 'ATHENA', 'IT IS THE GREEK GODDNESS OF WISDOM', 11, 'ATENA', 'ATHINA', 'ATHENNA'),
(94, 'ATLANTIC', 'THE SECOND LARGEST OCEAN IN THE WORLD', 3, 'ATLENTIC', 'ATLANTIK', 'ATLANTYC'),
(95, 'PARIS', 'THE CAPITAL AND LARGEST CITY OF FRANCE', 1, 'PARESS', 'PARYS', 'PARISS'),
(96, 'OBTUSE', 'GREATER THAN 90 DEGREE', 6, 'OBTUSEE', 'OBTUISE', 'OBHTUSE'),
(97, 'AXES', 'THE PLURAL FORM OF AXIS', 2, 'AXIS', 'AXISS', 'AXESS'),
(98, 'GRID', 'A NETWORK OF LINES THAT CROSS EACH OTHER TO FORM A SERIES OF SQUARES', 1, 'GRIDH', 'RID', 'RIDH'),
(99, 'ESTIMATE', 'AN APPROXIMATE CALCULATION', 3, 'ESTIMETE', 'ESTIMITE', 'ASTIMATE'),
(100, 'INTERSECTION', 'A POINT WHERE TWO LINES OR STREET CROSS', 2, 'INTERSECTIONN', 'INTERSECITION', 'INTERSECTIION'),
(101, 'HYPOCHONDRIA', 'ABNORMAL CHRONIC ANXIETY ABOUT ONE\'S HEALTH', 11, 'HPYOCOHNDRIA', 'HIGHPOCHONDRIA', 'HIPOCHONDRIA'),
(102, 'ASTROLOGER', 'TELL OTHERS ABOUT THEIR CHARACTER OR TO PERDICT THEIR FUTURE', 2, 'ASTRALOGER', 'ASTROOLOGAR', 'ASTROLAGER'),
(103, 'MISFORTUNE', 'BAD LUCK', 2, 'MISFOURTUNE', 'MISSORTUNE', 'MISSFORTUNEE'),
(104, 'AUTHENTIC', 'OF UNDISPUTED ORIGIN AND NOT A COPY', 3, 'AUTUNHENTIC', 'AUTENTIC', 'AUTHEENTIC'),
(105, 'CHARACTERISTIC', 'TYPICAL OF PARTICULAR PERSON,PLACE,OR THING', 4, 'CHARTERISTIC', 'CHARTERISTIC', 'CHARATERISTIC'),
(106, 'CRUCIAL', 'DECISIVE OR CRITICAL,ESPECIALLY IN THE SUCCESS OR FAILURE OF SOMENTING', 3, 'CRUSIAL', 'CRUCIAL', 'CRUCIEL'),
(107, 'MISCHIEVOUS', 'NOTORIOUS', 6, 'MISCHIEVIOUS', 'MISCHIEVOUS', 'MISCHIEVUES'),
(108, 'LEISURE', 'FREE TIME', 5, 'LESIRE', 'LEESURE', 'LEISIRE'),
(109, 'APPRECIATE', 'RECOGNIZE THE FULL WORTH OF', 4, 'APPERICITE', 'APPERECIATE', 'APPERCIATE'),
(110, 'CRITICISE', 'TO JUDGE(SOMETHING) WITH DISAPPROVAL', 3, 'CRTICISE', 'CRITISISE', 'CRITISIZE'),
(111, 'Engineering', 'The application of science to practical uses such as design of structures and machines', 1, 'engeneering', 'enjineering', 'enginering'),
(112, 'Afraid', 'scared', 1, 'afrayed', 'afreid', 'affraid'),
(113, 'Bought', 'obtain in exchange of payment', 1, 'boght', 'bougt', 'boughht'),
(114, 'PERSONAL', 'belonging to person rather anyone else', 2, 'personel', 'parsonal', 'persanal'),
(115, 'Department', 'a specialised division of a large concern,such as business university', 3, 'departement', 'departmant', 'dipartment'),
(116, 'Reciprocal', 'felt equally both sides', 4, 'receprocal', 'recieprocal', 'reciprocel'),
(117, 'dictionary', 'reference book', 4, 'dictionery', 'dectionary', 'dictonary'),
(118, 'spell bee', 'a competition in which people try to spell words', 1, 'spell bea', 'speel bee', 'spell bie'),
(119, 'vegetables', 'a part of plant used as food', 2, 'vegitables', 'vagetables', 'vegetebles'),
(120, 'fiction', 'imaginary', 1, 'ficton', 'phiction', 'fection'),
(121, 'bakery', 'selling baked goods', 1, 'backery', 'bakary', 'bekary'),
(122, 'sauce', 'relish for food', 2, 'souce', 'sause', 'souse'),
(123, 'teach', 'to cause to acquire knowledge or skill', 1, 'teech', 'tiech', 'taech'),
(124, 'river', 'natural flowing water course', 1, 'rever', 'rivar', 'revar'),
(125, 'story', 'narrative', 1, 'storie', 'stary', 'store'),
(126, 'mammal', 'an animal feeds her young from her own body', 1, 'mamal', 'mammel', 'mamel'),
(127, 'fact', 'truth', 1, 'fat', 'factt', 'faact'),
(128, 'guard', 'watch over inorder to protect', 1, 'gard', 'gord', 'guaard'),
(129, 'stethoscope', 'a piece of equipment that a doctor uses', 4, 'setescope', 'sethescope', 'stethscope'),
(130, 'sustain', 'to keep somebody/something alive or healthy', 2, 'sustane', 'sustaine', 'sustayne'),
(131, 'center', 'the middle point or part of something', 1, 'centre', 'senter', 'centaur'),
(132, 'February', 'The second month of the year', 2, 'febrary', 'feburary', 'feburury'),
(133, 'yacht', 'a boat with sails used for pleasure', 4, 'yatch', 'yachth', 'yaatch'),
(134, 'indonesia', 'country in asia', 2, 'asia', 'indonasia', 'indenoasia'),
(135, 'Thiruvanathapuram', 'captial of kerala', 2, 'Thiruvunthapuarm', 'Thirunantapurm', 'Thrivunanthpuram'),
(136, 'Statistics', 'a branch pf applied physics', 2, 'statistiks', 'statustics', 'statistiics'),
(137, 'Ferrari', 'An italian luxury sports car', 3, 'farrari', 'fererri', 'fererre'),
(138, 'Aadhaar', 'an Identity for an Indian', 2, 'adhaar', 'adhar', 'aadhar'),
(139, 'knight', 'The supreme Warrior', 2, 'night', 'nighyt', 'knnight'),
(140, 'penguin', 'Flightless Brids', 3, 'pengugen', 'penguign', 'penguen'),
(141, 'departure', 'A act of leaving somwhere', 1, 'departere', 'deparchure', 'deperture'),
(142, 'encyclopedia', 'A book that gives information about many things', 3, 'Ancyclopedea', 'Ancyclopedia', 'enncyclopedia'),
(143, 'corpses', 'dead body', 4, 'corpus', 'corpurse', 'corps'),
(144, 'orchestra', 'A large group of musicians who play many different instruments', 4, 'orkestra', 'orchastra', 'orcheestra'),
(145, 'thermometer', 'A device used to measure human body temperature', 2, 'Thermometre', 'thermomtor', 'thermameter'),
(146, 'recruit', 'To find new people to take part in an event or join a group or team', 3, 'recurit', 'recurte', 'recroot'),
(147, 'quarrel', 'an angry argument', 4, 'quarril', 'quarral', 'qaurral'),
(148, 'mussels', 'a type of small sea animal', 5, 'muscels', 'musels', 'musceles'),
(149, 'Foreign', 'loacated outside a place or country', 4, 'Foreing', 'Foriegn', 'Forieng'),
(150, 'Antiseptic', 'a liquid or cream that prevents a cut', 3, 'Anteseptic', 'Antesiptic', 'Antisiptic'),
(151, 'Poster', 'a notice in a public place', 1, 'postter', 'Posster', 'Posterr'),
(152, 'Knife', 'Used for cutting things', 2, 'Knif', 'Knfe', 'Nife'),
(153, 'Ragging', 'Harrashments of new entrants', 2, 'Raging', 'Ragiing', 'Raging'),
(154, 'Campus', 'Area of building of college', 1, 'Canpus', 'Kampus', 'Campuss'),
(155, 'empty', 'having nothing', 2, 'mmpty', 'empity', 'empte'),
(156, 'Prestigious', 'Having highly reputation', 4, 'Pristgious', 'Prestigeous', 'Prestigus'),
(157, 'HINDU', 'relating to or supporting to a religion', 2, 'HINDHU', 'INDU', 'HIENDU'),
(158, 'Technology', 'Sceintific knowledge', 4, 'technilogy', 'technelogy', 'techniology'),
(159, 'Virus', 'Causes diseases in animals and plants', 2, 'yrus', 'vyrus', 'vyris'),
(160, 'cinema', 'technology making motion pictures', 3, 'cinima', 'cenima', 'ciniema'),
(161, 'precipitate', 'a solid formed by change in solution', 5, 'precepitate', 'pricipitate', 'presipatate'),
(162, 'Argue', 'to say something angrily', 4, 'arguae', 'argaue', 'arge'),
(163, 'implement', 'start using a plan or a system', 3, 'emplemnt', 'impliment', 'empliment'),
(164, 'tsunami', 'a natural disaster', 5, 'sunami', 'tsunaami', 'sunima'),
(165, 'castle', 'a set of buildings to defend invasion', 4, 'casttle', 'casle', 'castlle'),
(166, 'wrap', 'to put paper around something', 3, 'rap', 'wraap', 'raap'),
(167, 'wrong', 'not correct', 1, 'rong', 'wronag', 'wring'),
(168, 'psychology', 'study of mind', 6, 'sycology', 'pshycology', 'sycilogy'),
(169, 'delivery', 'to take goods to peoples homes', 4, 'delhivery', 'delevary', 'delevary'),
(170, 'grammar', 'the rules of language', 4, 'grammer', 'gramar', 'gramer'),
(171, 'magazine', 'a periodical book containing articles and pictures', 5, 'maxine', 'magzine', 'maggzne'),
(172, 'chamber', 'a closed space in the body', 3, 'charmber', 'champber', 'khamber'),
(173, 'sweat', 'the liquid produced by body during hot', 2, 'swet', 'sweet', 'swaet'),
(174, 'alternative', 'one or more possibilities', 3, 'alternetive', 'altarnative', 'altarnateve'),
(175, 'possibility', 'thing that may happen', 4, 'posibility', 'possibilite', 'posssibility'),
(176, 'excite', 'give rise to feeling or reaction', 3, 'xcite', 'exsite', 'excyte'),
(177, 'spelling', 'the process of writing', 3, 'speling', 'spillling', 'spelleng'),
(178, 'english', 'language', 1, 'englesh', 'englihs', 'enjlish'),
(179, 'language', 'method of human communication', 2, 'lenguage', 'langauge', 'languege'),
(180, 'communication', 'exchanging of information by speaking', 3, 'comunicatin', 'coommnicaution', 'communiction'),
(181, 'probability', 'event which is lickly to occur', 4, 'probablite', 'propabaility', 'probabilite'),
(182, 'professor', 'the holder of university chair', 6, 'profesor', 'proffsor', 'profassor'),
(183, 'university', 'high level edudcational institute', 3, 'uneversity', 'univecity', 'univercity'),
(184, 'education', 'receiving or giving instructions', 2, 'edecation', 'educaution', 'eduction'),
(185, 'instruction', 'a order', 3, 'instructaion', 'instrukation', 'instrusition'),
(186, 'direction', 'a coures along which someone moves', 2, 'direcation', 'direcsion', 'direkation'),
(187, 'course', 'complete series of lessons', 2, 'coursee', 'coarse', 'corse'),
(188, 'holder', 'a device for holding something', 1, 'holdar', 'holdur', 'holdr'),
(189, 'device', 'a tool made for a particular purpose', 2, 'devise', 'devace', 'divice'),
(190, 'method', 'procedure for approaching something', 1, 'mathad', 'methad', 'methode'),
(191, 'procedure', 'an official way of doing something', 3, 'prosedure', 'procetduru', 'proseger'),
(192, 'office', 'a place for commercial work', 1, 'ofice', 'offece', 'offiece'),
(193, 'commercial', 'making or intended to make a profit', 3, 'comercian', 'commerecial', 'commerician'),
(194, 'profession', 'a paid occupation', 5, 'priofesion', 'profection', 'profassion'),
(195, 'profit', 'financial gain or benifit', 1, 'profeit', 'proffit', 'profite'),
(196, 'occupation', 'a job', 6, 'ocupation', 'occupaction', 'occupasion'),
(197, 'passenger', 'traveller', 3, 'pasenger', 'passengre', 'passengar'),
(198, 'information', 'facts provided to learn about something', 2, 'informasion', 'infurmation', 'informetion'),
(199, 'offer', 'accept or reject as desired', 1, 'oferr', 'offerr', 'ofer'),
(200, 'investigation', 'formal enquiry', 4, 'investagation', 'invastigation', 'investigasion'),
(201, 'examination', 'a detailed inspection of study', 3, 'examnasion', 'examnation', 'examinateion'),
(202, 'exemption', 'a state of being free', 6, 'excumption', 'execemption', 'exempsion'),
(203, 'inspection', 'carefull examination of scrutny', 4, 'inception', 'inspecsion', 'inspecton'),
(204, 'fossil', 'impression of historical animal or plants', 5, 'fosil', 'fossel', 'fossle'),
(205, 'ancient', 'belonging to distant past', 5, 'ansient', 'anscient', 'anciant'),
(206, 'weather', 'climate at certain place and time', 5, 'wether', 'wheather', 'whether'),
(207, 'absence', 'The lack or unavailability of something or someone', 6, 'absense', 'abcance', 'absance'),
(208, 'queue', 'A line or sequence of people or vehicles', 4, 'Q', 'quque', 'queuee'),
(209, 'cease', 'to eventually stop existing.', 6, 'cheese', 'keys', 'ceeze'),
(210, 'sequence', 'a particular order in which related things follow eachother', 3, 'sequense', 'seqeense', 'cequence'),
(211, 'cheque', 'a document you can issue to your bank', 6, 'chek', 'chequ', 'check'),
(212, 'feat', 'an activity that requires great strength,skill and courage', 3, 'faet', 'fett', 'feet'),
(213, 'rhyme', 'correspondence of sound between words', 4, 'rime', 'rhime', 'ryme'),
(214, 'online', 'by means of the internet or other computer network', 1, 'onlane', 'onlyne', 'onliine'),
(215, 'library', 'a collection of books and periodicals held in a library', 2, 'libreri', 'lybrery', 'liebrary'),
(216, 'industry', 'economic activity concerned with the processing of raw materials and manufacturing of goods', 3, 'industree', 'indestry', 'endustry'),
(217, 'server', 'computer program which manages access to a centralised resource or service in a network', 2, 'servar', 'sirver', 'sarver'),
(218, 'contest', 'an event in which people compete for supremacy in a sport or other activity', 1, 'kontest', 'corntest', 'context'),
(219, 'practical', 'lesson in which theories and procedures learned are applied to the actual making', 3, 'pratical', 'prectikal', 'praktical'),
(220, 'font', 'a set of printable or displayable typography', 1, 'foont', 'fant', 'front'),
(221, 'crop', 'to remove or adjust the outside edges of an image', 1, 'croop', 'crope', 'krop'),
(222, 'unique', 'being the only existing one of its kind', 3, 'unikque', 'uniq', 'unike'),
(223, 'innovation', 'implementing a new idea', 3, 'inovasion', 'inovation', 'ennovation'),
(224, 'pixel', 'unit of a digital image or graphic that can be displayed', 4, 'picsel', 'pixsel', 'pixcel'),
(225, 'dogma', 'the doctrine of belief in a religion', 6, 'dokma', 'dogmaa', 'docma'),
(226, 'miser', 'a person who hoards wealth and spends as little money as possible', 6, 'misser', 'mysar', 'myser'),
(227, 'series', 'a set or sequence of related television or radio programme', 2, 'siries', 'seeries', 'serees'),
(228, 'review', 'to view or see again', 3, 'reeview', 'rewiew', 'revivew'),
(229, 'beautiful', 'having qualities of beauty', 4, 'beautyful', 'beautifull', 'bootiful'),
(230, 'elegant', 'graceful and stylish in appearance', 4, 'alegant', 'elegent', 'eleghant'),
(231, 'delightful', 'very pleasant ,attractive and enjoyable', 4, 'dilightful', 'diliteful', 'deliteful'),
(232, 'alluring', 'powerful and mysterious', 6, 'elluring', 'aaluring', 'aluring'),
(233, 'promoter', 'a supporter of a cause or aim', 3, 'pramoter', 'promater', 'promotar'),
(234, 'merge', 'cause to combine to form a single entity', 2, 'meerge', 'marege', 'merje'),
(235, 'wrap', 'cover or enclose in paper', 2, 'raap', 'wrape', 'rap'),
(236, 'layout', 'the way in which text or pictures', 1, 'layut', 'layote', 'laout'),
(237, 'reign', 'the period of rule of a monarch', 7, 'raign', 'rein', 'rain'),
(238, 'semester', 'a half year term in a school or university', 4, 'semister', 'simister', 'cemister'),
(239, 'allopathy', 'the treatment of disease by drugs', 4, 'ellopathy', 'allopathi', 'aelopathy'),
(240, 'squad', 'a small group of people having a particular task', 3, 'scuad', 'squaad', 'sqaud'),
(241, 'petition', 'a formal written request appealing to authority in request of the particular cause', 5, 'petion', 'petision', 'pitition'),
(242, 'despite', 'without being prevented by something', 4, 'desite', 'despiti', 'dispite'),
(243, 'formula', 'mathematical relation or rule expressed in symbols', 2, 'formulae', 'formala', 'farmula'),
(244, 'vindictive', 'having or showing a strong or unreasoning desire for revenge', 5, 'vendictive', 'vinductive', 'windictive'),
(245, 'prevail', 'prove more powerful or superior', 5, 'prewall', 'prewale', 'prewail'),
(246, 'abbreviation', 'a shortened form of word or phrase', 6, 'abreviation', 'abbreviasion', 'abbrevation'),
(247, 'Consanguineous', 'Of the same blood or origin (descended from the same ancestor)', 10, 'consenguineous', 'consangiuneous', 'consengiuneous'),
(248, 'Inchoate', 'Only partly in existence; imperfectly formed', 10, 'inchoat', 'enchoate', 'inchaote'),
(249, 'overcame', 'succeed in dealing with a problem or dificulty', 4, 'ovarcame', 'ovarcome', 'overkome'),
(250, 'fuel', 'material that is burned to produce heat or power', 3, 'phuel', 'fual', 'fueal'),
(251, 'bankrupt ', 'not having enough money to pay your debs', 4, 'bankcrupt', 'bancrupt', 'bankarupt'),
(252, 'neurology', 'a plant of the buttercup family which typically has brightly coloured flowers', 5, 'newrology', 'newrologie', 'neurologey'),
(253, 'satellite', 'something visible in restricted light against a brighter background.', 5, 'satalight', 'satellight', 'sattilite'),
(254, 'yolk', 'of long ago or former times (used in nostalgic or mock-nostalgic recollection)', 3, 'yook', 'yoak', 'youk'),
(255, 'chrysanthemum.', 'a widely cultivated plant with brightly-colored showy flower heads. ...', 9, 'chrysanthanum', 'chrysenthanam', 'chrysenthemum'),
(256, 'caffeine', 'the physical or social setting in which something occurs or develops : environment.', 5, 'caffiine', 'kafeen', 'caffene'),
(257, 'cafeteria', 'a restaurant in which customers serve themselves', 5, 'cafatirea', 'cafiteria', 'cafeteira'),
(258, 'realize', 'understand clearly.', 4, 'rialise', 'realeze', 'realise'),
(259, 'tolet', 'permission', 3, 'toolet', 'tolat', 'tolit'),
(260, 'absent', 'not present in a place', 2, 'absint', 'abcint', 'abcent'),
(261, 'bunk', 'one of two beds attached together', 1, 'berth', 'bunck', 'buck'),
(262, 'silence', 'complete absence of sound', 3, 'silince', 'silience', 'selince'),
(263, 'prohibit', 'to stop something from being done', 4, 'prohebit', 'porhibit', 'prohbit'),
(264, 'Approval', 'Having a positive opinion of something', 3, 'approvel', 'aporval', 'aproval'),
(265, 'opposite', 'radically different in some respect', 4, 'opposite', 'oppozite', 'oposite'),
(266, 'attention', 'Noticing or recognizing something of interest.', 4, 'attension', 'atension', 'atention'),
(267, 'pleasure', 'a feeling of happy satisfaction', 5, 'preasure', 'plesure', 'peassure'),
(268, 'amount', 'A mass or a collection of something', 2, 'amout', 'amountt', 'amont'),
(269, 'borrow', 'To take something with the intention of returning it after a period of time', 4, 'borrou', 'borro', 'borow'),
(270, 'complete', 'finish making or doing', 2, 'compllete', 'completee', 'compelete'),
(271, 'fantasy', 'activity of imagining impossible', 3, 'fanstase', 'fanastic', 'fantesy'),
(272, 'dialogue', 'A conversation between two or more people.', 4, 'dialouge', 'dialonge', 'dilouge'),
(273, 'maximum', 'as great', 2, 'maximom', 'minimum', 'mazimum'),
(274, 'coding', 'tells a machine which actions to perform and how to complete tasks.', 1, 'codeng', 'codng', 'codeing'),
(275, 'quality', 'the degree of excellence of something.', 2, 'qualty', 'qulity', 'qwality'),
(276, 'introduce', 'bringing a person into a group', 3, 'interoduce', 'introdce', 'interduce'),
(277, 'care', 'extra responsibility and attention.', 1, 'caer', 'careh', 'kare'),
(278, 'ban', 'An act prohibited by social pressure or law.', 1, 'baan', 'bann', 'bin'),
(279, 'edible', 'something suitable to be eaten', 3, 'edibe', 'adibe', 'adible'),
(280, 'eloquent', 'an individual who expresses themselves effectively and clearly.', 6, 'eloquant', 'eloqunt', 'aloquent'),
(281, 'cake', 'an item of savoury food formed into a flat round shape', 1, 'cakee', 'caek', 'kake'),
(282, 'fitness', 'the condition of being physically fit and healthy.', 2, 'fitnes', 'featness', 'fittness'),
(283, 'award', 'order the giving of (something) as an official payment', 2, 'awad', 'awarad', 'avard'),
(284, 'scholarship', 'academic study or achievement', 2, 'schloarship', 'scholraship', 'scolarship'),
(285, 'wifi', 'a facility allowing computers', 1, 'vifi', 'wifee', 'wify'),
(286, 'college', 'an educational institution', 2, 'colege', 'colage', 'collage'),
(287, 'Abrogate', 'To revoke', 9, 'aborgate', 'ebrogate', 'abogate'),
(288, 'yoghurt', 'A dairy product', 3, 'yogurt', 'yoguhrt', 'yoogurht'),
(289, 'Asperity', 'Harsh in tone', 9, 'asperty', 'aspert', 'aspeity'),
(290, 'warrior', 'a brave or experienced soldier or fighter.', 5, 'warior', 'varrier', 'varrior'),
(291, 'expert', 'a person who is very knowledgeable about or skilful in a particular area.', 3, 'expart', 'expect', 'xpart'),
(292, 'listen', 'give one\'s attention to a sound', 2, 'lizen', 'lesten', 'lisen'),
(293, 'capital', 'anything that confers value or benefit to its', 2, 'captial', 'kapital', 'capatal'),
(294, 'Initial', 'existing or occuring at the beginning', 3, 'initiel', 'ential', 'inetial'),
(295, 'Former', 'Having previously been a pativular thing', 4, 'fomer', 'farmer', 'faumer'),
(296, 'Examine', 'Test the knowledge or proficiency', 3, 'Examin', 'Eximine', 'Exaamine'),
(297, 'wander', 'move slowly away from a fixed point or a place', 4, 'vander', 'wunder', 'wounder'),
(298, 'creative', 'a person who\'s job involves special work', 1, 'creatve', 'criative', 'kreative'),
(299, 'spectacular', 'Bueatiful in a gramatic and eye-catching way', 3, 'Spectaacular', 'spectaculer', 'spectaculur'),
(300, 'marvelous', 'causing greate wonder', 2, 'marvelus', 'marvelas', 'marvilous'),
(302, 'BORROW', 'something belonging to someone else', 3, 'BORROOW', 'BOWROW', 'BOOROW'),
(301, 'ILLUSION', 'Observing false objects', 3, 'ILLUSON', 'ILLUGION', 'ILUSION'),
(303, 'FEWER', 'a small number of.', 4, 'fewar', 'feuver', 'fewver'),
(304, 'LIE', 'Worng Statement', 2, 'LYE', 'LIEE', 'LYIE'),
(305, 'RISE', 'an upward movement', 3, 'RIYZE', 'RAISE', 'RIZE'),
(306, 'PERCENTILE', 'a measure used in statistics indicating', 4, 'PERECEENTILE', 'PERECENTILE', 'PERSENTILE'),
(307, 'ABDICATE', 'giving up power', 5, 'ABIDICATE', 'ABEDICATE', 'ABIDECATE'),
(308, 'ABSTRUSE', 'difficult to understand', 6, 'ABTRECE', 'ABSTRESE', 'ABSTRUCE'),
(309, 'ANALOGOUS', 'similar in some respects', 6, 'ANALOGOUES', 'ANALOGOES', 'ANALOGUS'),
(310, 'ARTICULATION', 'manner in which things came together', 8, 'ARTECULATION', 'ARTIICULATION', 'ARTCULETION'),
(311, 'COHERENCE', 'state of being consistent', 6, 'CHOHARENCE', 'COHARENCE', 'CHOHARENCE'),
(312, 'ETHNIC', 'distinctive of the way of living of a group of people', 5, 'ETENIC', 'ETHENIC', 'ETHNEC'),
(313, 'EVIDENT', 'clearly revealed to the mind of the senses', 6, 'EVEDENT', 'EVEEDENT', 'EVIIDENT'),
(314, 'PSYCHOLOGY', 'scientific study of human mind', 7, 'PYSCHOLOGY', 'PSSYCHOLOGY', 'PSYSCHOLOGY'),
(315, 'FACILITATE', 'make easier', 8, 'FACELITETE', 'FACILATE', 'FACILITIE'),
(316, 'HEREDITARY', 'bases on inheritance', 7, 'HERIDITARY', 'HERIDETARY', 'HEREDETIARY'),
(317, 'ORDINARY', 'with no special', 5, 'ODINARY', 'ODDINARY', 'ORDENARY'),
(318, 'NOTORIOUS', 'known widely', 6, 'NOTURIOUS', 'NOTORIEOUS', 'NOTURIEOUS'),
(319, 'PARADIGM', 'a standard or typical example', 8, 'PARADIGIM', 'PARADEGM', 'PARAGIDEM'),
(320, 'PERCEIVE', 'become aware of through the senses', 6, 'PERCEVE', 'PERECEVE', 'PERCIEVE'),
(321, 'PERCEPTION', 'the process of becoming aware through the senses', 7, 'PERCEIPTION', 'PERCEPTION', 'PERCIPTION'),
(322, 'PROMULGATE', 'state or announce', 8, 'PORMOLGATE', 'PROMOLGYTE', 'PORMULGYTE'),
(323, 'RECRIMINATION', 'mutual accusations', 5, 'RECREMINATION', 'RECREMINATION', 'RECRIMENATION'),
(324, 'RELIANT', 'depending on another for support', 7, 'RELEANT', 'RELIENT', 'RELENT'),
(325, 'STAGNANT', 'not growing or changing', 8, 'STAGNENT', 'STAGNAANT', 'STAGNET'),
(326, 'VULNERABLE', 'capable of being wounded or hurt', 7, 'VULNARABLE', 'VULNEREBLE', 'VULNAREBLE'),
(327, 'QUAIL', 'a small brown bird', 9, 'QUEL', 'QUIL', 'QUEIL'),
(328, 'QUIP', 'a funny and clever comment', 5, 'QUEP', 'QUEEP', 'QUAP'),
(329, 'WEIGH', 'to find out how heavy', 5, 'WHEY', 'WAY', 'WEYY'),
(330, 'MIRACLE', 'an extraordinary event taken as a sign of the supernatural power of God', 4, 'MIRAKLE', 'MERAKLE', 'MERACLE'),
(331, 'PIECES', 'a part of something', 5, 'PEACES', 'PECES', 'PEICES'),
(332, 'UNCONSCIOUS', 'without awareness', 6, 'UNCONCIOUS', 'UNCONCICOUS', 'UNCONSICOUS'),
(333, 'PRECOCIOUS', 'usually mature', 5, 'PRESOSIOUS', 'PRECOSIUS', 'PRECOCIOES'),
(334, 'LIAISON', 'person who maintains a connection between people', 9, 'LASON', 'LEISON', 'LAISION'),
(335, 'ACRYLIC', 'is a kind of fabric', 9, 'ARCLIC', 'ARCILIC', 'ARCELIC'),
(336, 'RATCHET', 'is a tool', 10, 'RATCHAT', 'RETCHET', 'RETCHET'),
(337, 'MERRILY', 'in a cheerrful way', 10, 'MERRELY', 'MERELY', 'MERILY'),
(338, 'PEAL', 'a loud ringing of a bell or bells.', 5, 'PEARL', 'PEEL', 'PAEL'),
(339, 'PEARL', 'a stone', 6, 'PERL', 'PAERL', 'PEERL'),
(340, 'RECISION', 'Cancellation of a contract', 6, 'RECESION', 'RECISEON', 'RECISEON'),
(341, 'CHARCOAL', 'a porous black solid, consisting of an amorphous form of carbon', 3, 'CHARCOL', 'CHAARCOAL', 'CHARCOEL'),
(342, 'SOME', 'fewObjects', 2, 'SUM', 'SUN', 'SEM'),
(343, 'RESEMBLE', 'a similar appearance to or qualities in common with someone or something', 3, 'RESEMBEL', 'RECEMBEL', 'RECEMBLE'),
(344, 'COLLEAGUE', 'an associate or coworker typically in a profession', 5, 'COLLEAUGE', 'COLLEGUE', 'COLLAEGUE'),
(345, 'MOUSTACHE', 'strip of hair left to grow above the upper lip.', 6, 'MUSTACH', 'MOSTACHE', 'MUSTACHE'),
(346, 'REINDEER', 'a type of deer', 7, 'RAINDEER', 'RENDEER', 'REINDER'),
(347, 'WITCH', 'a person thought to have magic powers,', 7, 'WETCH', 'VITCH', 'WETCH'),
(348, 'PHENOMENON', 'a remarkable person or thing.', 5, 'PENOMENON', 'PHENOMINON', 'PEHNOMENON'),
(349, 'LIEUTENENT', 'a deputy or substitute acting for a superior.', 7, 'LEFTUTENENT', 'LEFTTENENT', 'LIETUTENT'),
(350, 'DELICACY', 'fineness or intricacy of texture or structure.', 5, 'DELICECY', 'DELECACY', 'DELICECY'),
(351, 'EPITAPH', 'a phrase or form of words written in memory of a person who has died, especially as an inscription on a tombstone.', 8, 'EPITEH', 'EPITPH', 'EPITPAH'),
(352, 'ACCUMULATION', 'he acquisition or gradual gathering of something.', 5, 'ACUMALATION', 'ACCUMMULATION', 'ACUMMULATION'),
(353, 'FRANCHISE', 'the right to vote in public elections.', 5, 'FRANCISE', 'FRANCHAISE', 'FRANCHASE'),
(354, 'SYNCHRONIZE', 'cause to occur or operate at the same time or rate.', 5, 'SYNCRONIZE', 'SYNCRONISE', 'SYNCHORISE'),
(355, 'KALOPSIA', 'The delusion of things being more beautiful than they are.', 9, 'CALOPSIA', 'CALOPSEA', 'KALOPSEA'),
(356, 'LEVERAGE', 'he exertion of force by means of a lever.', 6, 'LEVARAGE', 'LEVAREGE', 'LEVARAGH'),
(357, 'MACROCOSM', 'the great world or universe', 9, 'MACROSM', 'MACROCOSOM', 'MACROCSM'),
(358, 'MANIFESTATION', 'an event, action, or object that clearly shows or embodies something abstract or theoretical.', 7, 'MANIFESTION', 'MANEFESTATION', 'MANAFEATATION'),
(359, 'NEOPHYTE', 'someone who\'s brand new at something', 9, 'NEOFHYTE', 'NEOPYTHE', 'NEOFYTHE'),
(360, 'OMNISCIENT', 'knowing everything.', 9, 'OMINECENT', 'OMENECENT', 'OMNISENT'),
(361, 'PINNACLE', 'the most successful point;', 6, 'PINNACALE', 'PINACLE', 'PINECLE'),
(362, 'PSEUDOPODIA', 'temporary projections of the cytoplasm of a cell.', 7, 'PSUDOPODIA', 'PSEUDPODIA', 'PSEUDOPODEA'),
(363, 'QUARANTINE', 'a term during which a ship arriving in port and suspected of carrying contagious disease', 5, 'QUARTINE', 'QUARTIME', 'QUARATINE'),
(364, 'SARCASM', 'the use of irony to mock or convey contempt.', 8, 'SARCISM', 'SARCESM', 'SARCAISM'),
(365, 'UBIQUITOUS', 'present, appearing, or found everywhere.', 9, 'UBIQUITUS', 'UBIQICTUS', 'UBIQUITUS'),
(366, 'VIGOROUS', 'a way that is very forceful or energetic', 5, 'VEGAROUS', 'VIGAROUES', 'VEGARUS'),
(367, 'CAJOLE', 'persuade (someone) to do something by sustained coaxing or flattery.', 7, 'KAJOLE', 'CAJOULE', 'KAJOULE'),
(368, 'REMUNERATION', 'something that remunerates : recompense, pay.', 4, 'REMUNARATION', 'REMUNARTION', 'REMUNRATION'),
(369, 'PHILOSOPHY', 'the study of the fundamental nature of knowledge, reality, and existence, especially when considered as an academic discipline.', 5, 'PHILOSPHY', 'PHILOSOPHE', 'PILOPSPHY'),
(370, 'FORBEARANCE', 'patient self-control; restraint and tolerance.', 8, 'FOREBARANSE', 'FOEARBARANCE', 'FOREBEARENCE'),
(371, 'ANESTHESIA', 'insensitivity to pain, especially as artificially induced by the administration of gases or the injection of drugs before surgical operations.', 4, 'ENASTHESIA', 'ENESTHESIA', 'ANASTHESIA'),
(372, 'CUISINE', 'a style or method of cooking', 7, 'CUSHINE', 'KUSINE', 'CUSINE'),
(373, 'MACINTOSH', 'the family of computers developed by Apple', 6, 'MACINTOSE', 'MACINTHOSE', 'MACENTOSH'),
(374, 'ABNEGATION', 'the action of renouncing or rejecting something.', 9, 'ABNEGAUTION', 'ABNEGATEN', 'ABNEGATEON'),
(375, 'AESTHETIC', 'relating to the enjoyment or study of beauty, or showing great beauty:', 6, 'AESTHATIC', 'ASTHETIC', 'ASTHATIC'),
(376, 'INDICT', 'accuse formally of a crime', 6, 'INDIKT', 'EINDIKT', 'INDICKT'),
(377, 'INTRANSIGENCE', 'stubborn refusal to compromise', 9, 'INTRANCIGENSE', 'INTRANSIGINCE', 'INTRASIEGENSE'),
(378, 'MAYHEM', 'violent and needless disturbance', 9, 'MAHYME', 'MAYEHME', 'MEHYME'),
(379, 'WROUGHT', 'shaped to fit by altering the contours of a pliable mass', 7, 'WRAGHT', 'WRAUHT', 'WROGHT');

-- --------------------------------------------------------

--
-- Table structure for table `words1`
--

CREATE TABLE `words1` (
  `qid` int(11) NOT NULL,
  `word` varchar(1000) NOT NULL,
  `meaning` text DEFAULT NULL,
  `level` int(11) NOT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `words1`
--

INSERT INTO `words1` (`qid`, `word`, `meaning`, `level`, `option1`, `option2`, `option3`) VALUES
(1, 'abject', 'of the most contemptible kind', 14, 'principal', 'prinecipal', 'princeple'),
(2, 'aberration', 'a state or condition markedly different from the norm', 13, '', '', ''),
(3, 'abjure', 'formally reject or disavow a formerly held belief', 11, '', '', ''),
(4, 'abnegation', 'the denial and rejection of a doctrine or belief', 13, '', '', ''),
(5, 'abrogate', 'revoke formally', 11, '', '', ''),
(6, 'abscond', 'run away, often taking something or somebody along', 11, '', '', ''),
(7, 'abstruse', 'difficult to understand', 13, '', '', ''),
(8, 'accede', 'yield to another\'s wish or opinion', 11, '', '', ''),
(9, 'accost', 'approach and speak to someone aggressively or insistently', 11, '', '', ''),
(10, 'accretion', 'an increase by natural growth or addition', 12, '', '', ''),
(11, 'acumen', 'shrewdness shown by keen insight', 12, '', '', ''),
(12, 'adamant', 'impervious to pleas, persuasion, requests, or reason', 12, '', '', ''),
(13, 'admonish', 'scold or reprimand; take to task', 11, '', '', ''),
(14, 'adumbrate', 'describe roughly or give the main points or summary of', 14, '', '', ''),
(15, 'adverse', 'in an opposing direction', 14, '', '', ''),
(16, 'advocate', 'a person who pleads for a person, cause, or idea', 12, '', '', ''),
(17, 'affluent', 'having an abundant supply of money or possessions of value', 11, '', '', ''),
(18, 'aggrandize', 'embellish; increase the scope, power, or importance of', 15, '', '', ''),
(19, 'alacrity', 'liveliness and eagerness', 14, '', '', ''),
(20, 'alias', 'a name that has been assumed temporarily', 11, '', '', ''),
(21, 'ambivalent', 'uncertain or unable to decide about what course to follow', 12, '', '', ''),
(22, 'amenable', 'disposed or willing to comply', 13, '', '', ''),
(23, 'amorphous', 'having no definite form or distinct shape', 12, '', '', ''),
(24, 'anachronistic', 'chronologically misplaced', 15, '', '', ''),
(25, 'anathema', 'a formal ecclesiastical curse accompanied by excommunication', 14, '', '', ''),
(26, 'annex', 'attach to', 12, '', '', ''),
(27, 'antediluvian', 'of or relating to the period before the biblical flood', 15, '', '', ''),
(28, 'antiseptic', 'thoroughly clean and free of disease-causing organisms', 14, '', '', ''),
(29, 'apathetic', 'showing little or no emotion or animation', 13, '', '', ''),
(30, 'antithesis', 'exact opposite', 12, '', '', ''),
(31, 'apocryphal', 'being of questionable authenticity', 13, '', '', ''),
(32, 'approbation', 'official acceptance or agreement', 14, '', '', ''),
(33, 'arbitrary', 'based on or subject to individual discretion or preference', 13, '', '', ''),
(34, 'arboreal', 'of or relating to or formed by trees', 12, '', '', ''),
(35, 'arcane', 'requiring secret or mysterious knowledge', 11, '', '', ''),
(36, 'archetypal', 'of an original pattern on which other things are modeled', 15, '', '', ''),
(37, 'arrogate', 'seize and take control without authority', 13, '', '', ''),
(38, 'ascetic', 'someone who practices self-denial as a spiritual discipline', 12, '', '', ''),
(39, 'aspersion', 'a disparaging remark', 12, '', '', ''),
(40, 'assiduous', 'marked by care and persistent effort', 11, '', '', ''),
(41, 'atrophy', 'a decrease in size of an organ caused by disease or disuse', 11, '', '', ''),
(42, 'bane', 'something causing misery or death', 11, '', '', ''),
(43, 'bashful', 'self-consciously timid', 11, '', '', ''),
(44, 'beguile', 'influence by slyness', 11, '', '', ''),
(45, 'bereft', 'lacking or deprived of something', 11, '', '', ''),
(46, 'blandishment', 'flattery intended to persuade', 11, '', '', ''),
(47, 'bilk', 'cheat somebody out of what is due, especially money', 13, '', '', ''),
(48, 'bombastic', 'ostentatiously lofty in style', 13, '', '', ''),
(49, 'cajole', 'influence or urge by gentle urging, caressing, or flattering', 11, '', '', ''),
(50, 'callous', 'emotionally hardened', 12, '', '', ''),
(51, 'calumny', 'a false accusation of an offense', 13, '', '', ''),
(52, 'camaraderie', 'the quality of affording easy familiarity and sociability', 14, '', '', ''),
(53, 'candor', 'the quality of being honest and straightforward', 11, '', '', ''),
(54, 'capitulate', 'surrender under agreed conditions', 15, '', '', ''),
(55, 'carouse', 'engage in boisterous merrymaking', 13, '', '', ''),
(56, 'carp', 'any of various freshwater fish of the family Cyprinidae', 11, '', '', ''),
(57, 'caucus', 'meet to select a candidate or promote a policy', 12, '', '', ''),
(58, 'cavort', 'play boisterously', 11, '', '', ''),
(59, 'circumlocution', 'an indirect way of expressing something', 14, '', '', ''),
(60, 'circumscribe', 'draw a geometric figure around another figure', 14, '', '', ''),
(61, 'circumvent', 'surround so as to force to give up', 13, '', '', ''),
(62, 'clamor', 'utter or proclaim insistently and noisily', 13, '', '', ''),
(63, 'cleave', 'separate or cut with a tool, such as a sharp instrument', 11, '', '', ''),
(64, 'cobbler', 'a person who makes or repairs shoes', 12, '', '', ''),
(65, 'cogent', 'powerfully persuasive', 11, '', '', ''),
(66, 'cognizant', 'having or showing knowledge or understanding or realization', 15, '', '', ''),
(67, 'commensurate', 'corresponding in size or degree or extent', 13, '', '', ''),
(68, 'complement', 'something added to embellish or make perfect', 11, '', '', ''),
(69, 'compunction', 'a feeling of deep regret, usually for some misdeed', 13, '', '', ''),
(70, 'concomitant', 'following or accompanying as a consequence', 15, '', '', ''),
(71, 'conduit', 'a passage through which water or electric wires can pass', 12, '', '', ''),
(72, 'conflagration', 'a very intense and uncontrolled fire', 15, '', '', ''),
(73, 'congruity', 'the quality of agreeing; being suitable and appropriate', 13, '', '', ''),
(74, 'connive', 'form intrigues (for) in an underhand manner', 12, '', '', ''),
(75, 'consign', 'give over to another for care or safekeeping', 12, '', '', ''),
(76, 'constituent', 'one of the individual parts making up a composite entity', 13, '', '', ''),
(77, 'construe', 'make sense of; assign a meaning to', 15, '', '', ''),
(78, 'contusion', 'an injury in which the skin is not broken', 14, '', '', ''),
(79, 'contrite', 'feeling or expressing pain or sorrow', 13, '', '', ''),
(80, 'contentious', 'showing an inclination to disagree', 13, '', '', ''),
(81, 'contravene', 'go against, as of rules and laws', 12, '', '', ''),
(82, 'convivial', 'occupied with or fond of the pleasures of good company', 14, '', '', ''),
(83, 'corpulence', 'the property of excessive fatness', 15, '', '', ''),
(84, 'covet', 'wish, long, or crave for', 11, '', '', ''),
(85, 'cupidity', 'extreme greed for material wealth', 12, '', '', ''),
(86, 'dearth', 'an insufficient quantity or number', 11, '', '', ''),
(87, 'debacle', 'a sudden and complete disaster', 12, '', '', ''),
(88, 'debauch', 'a wild gathering', 13, '', '', ''),
(89, 'debunk', 'expose while ridiculing', 11, '', '', ''),
(90, 'defunct', 'no longer in force or use; inactive', 12, '', '', ''),
(91, 'demagogue', 'a leader who seeks support by appealing to popular passions', 15, '', '', ''),
(92, 'denigrate', 'attack the good name and reputation of someone', 15, '', '', ''),
(93, 'derivative', 'a compound obtained from another compound', 15, '', '', ''),
(94, 'despot', 'a cruel and oppressive dictator', 11, '', '', ''),
(95, 'diaphanous', 'so thin as to transmit light', 13, '', '', ''),
(96, 'didactic', 'instructive, especially excessively', 13, '', '', ''),
(97, 'dirge', 'a song or hymn of mourning as a memorial to a dead person', 12, '', '', ''),
(98, 'disaffected', 'discontented as toward authority', 11, '', '', ''),
(99, 'discomfit', 'cause to lose one\'s composure', 13, '', '', ''),
(100, 'disparate', 'fundamentally different or distinct in quality or kind', 12, '', '', ''),
(101, 'dispel', 'cause to separate and go in different directions', 12, '', '', ''),
(102, 'disrepute', 'the state of being held in low esteem', 13, '', '', ''),
(103, 'divisive', 'causing or characterized by disagreement or disunity', 11, '', '', ''),
(104, 'dogmatic', 'pertaining to a code of beliefs accepted as authoritative', 11, '', '', ''),
(105, 'dour', 'showing a brooding ill humor', 13, '', '', ''),
(106, 'duplicity', 'the act of deceiving or acting in bad faith', 11, '', '', ''),
(107, 'duress', 'compulsory force or threat', 14, '', '', ''),
(108, 'eclectic', 'selecting what seems best of various styles or ideas', 15, '', '', ''),
(109, 'edict', 'a formal or authoritative proclamation', 11, '', '', ''),
(110, 'ebullient', 'joyously unrestrained', 12, '', '', ''),
(111, 'egregious', 'conspicuously and outrageously bad or reprehensible', 15, '', '', ''),
(112, 'elegy', 'a mournful poem; a lament for the dead', 13, '', '', ''),
(113, 'elicit', 'call forth, as an emotion, feeling, or response', 13, '', '', ''),
(114, 'embezzlement', 'the fraudulent appropriation of funds or property', 14, '', '', ''),
(115, 'emend', 'make corrections to', 12, '', '', ''),
(116, 'emollient', 'a substance with a soothing effect when applied to the skin', 12, '', '', ''),
(117, 'empirical', 'derived from experiment and observation rather than theory', 13, '', '', ''),
(118, 'emulate', 'strive to equal or match, especially by imitating', 12, '', '', ''),
(119, 'enervate', 'weaken physically, mentally, or morally', 14, '', '', ''),
(120, 'enfranchise', 'grant freedom to, as from slavery or servitude', 13, '', '', ''),
(121, 'engender', 'call forth', 12, '', '', ''),
(122, 'ephemeral', 'anything short-lived, as an insect that lives only for a day', 13, '', '', ''),
(123, 'epistolary', 'written in the form of letters or correspondence', 14, '', '', ''),
(124, 'equanimity', 'steadiness of mind under stress', 14, '', '', ''),
(125, 'equivocal', 'open to two or more interpretations', 12, '', '', ''),
(126, 'espouse', 'choose and follow a theory, idea, policy, etc.', 13, '', '', ''),
(127, 'evanescent', 'short-lived; tending to vanish or disappear', 13, '', '', ''),
(128, 'evince', 'give expression to', 12, '', '', ''),
(129, 'exacerbate', 'make worse', 13, '', '', ''),
(130, 'exhort', 'spur on or encourage especially by cheers and shouts', 13, '', '', ''),
(131, 'execrable', 'unequivocally detestable', 14, '', '', ''),
(132, 'exigent', 'demanding immediate attention', 12, '', '', ''),
(133, 'expedient', 'appropriate to a purpose', 13, '', '', ''),
(134, 'expiate', 'make amends for', 13, '', '', ''),
(135, 'expunge', 'remove by erasing or crossing out or as if by drawing a line', 12, '', '', ''),
(136, 'extraneous', 'not belonging to that in which it is contained', 14, '', '', ''),
(137, 'extol', 'praise, glorify, or honor', 12, '', '', ''),
(138, 'extant', 'still in existence; not extinct or destroyed or lost', 12, '', '', ''),
(139, 'expurgate', 'edit by omitting or modifying parts considered indelicate', 13, '', '', ''),
(140, 'fallacious', 'containing or based on incorrect reasoning', 13, '', '', ''),
(141, 'fatuous', 'devoid of intelligence', 14, '', '', ''),
(142, 'fetter', 'a shackle for the ankles or feet', 11, '', '', ''),
(143, 'flagrant', 'conspicuously and outrageously bad or reprehensible', 13, '', '', ''),
(144, 'foil', 'hinder or prevent, as an effort, plan, or desire', 11, '', '', ''),
(145, 'forbearance', 'good-natured tolerance of delay or incompetence', 13, '', '', ''),
(146, 'fortuitous', 'lucky; occurring by happy chance', 14, '', '', ''),
(147, 'fractious', 'easily irritated or annoyed', 13, '', '', ''),
(148, 'garrulous', 'full of trivial conversation', 13, '', '', ''),
(149, 'gourmand', 'a person who is devoted to eating and drinking to excess', 13, '', '', ''),
(150, 'grandiloquent', 'lofty in style', 14, '', '', ''),
(151, 'gratuitous', 'unnecessary and unwarranted', 15, '', '', ''),
(152, 'hapless', 'unfortunate and deserving pity', 13, '', '', ''),
(153, 'hegemony', 'the dominance or leadership of one social group over others', 13, '', '', ''),
(154, 'heterogenous', 'consisting of elements that are not of the same kind', 12, '', '', ''),
(155, 'iconoclast', 'someone who attacks cherished ideas or institutions', 13, '', '', ''),
(156, 'idiosyncratic', 'peculiar to the individual', 15, '', '', ''),
(157, 'impecunious', 'not having enough money to pay for necessities', 15, '', '', ''),
(158, 'impetuous', 'characterized by undue haste and lack of thought', 14, '', '', ''),
(159, 'impinge', 'infringe upon', 13, '', '', ''),
(160, 'impute', 'attribute or credit to', 12, '', '', ''),
(161, 'inane', 'devoid of intelligence', 11, '', '', ''),
(162, 'inchoate', 'only partly in existence; imperfectly formed', 13, '', '', ''),
(163, 'incontrovertible', 'impossible to deny or disprove', 14, '', '', ''),
(164, 'incumbent', 'necessary as a duty or responsibility; morally binding', 12, '', '', ''),
(165, 'inexorable', 'impossible to prevent, resist, or stop', 13, '', '', ''),
(166, 'inimical', 'tending to obstruct or cause harm', 14, '', '', ''),
(167, 'injunction', 'a judicial remedy to prohibit a party from doing something', 12, '', '', ''),
(168, 'inoculate', 'inject or treat with the germ of a disease to render immune', 13, '', '', ''),
(169, 'insidious', 'working or spreading in a hidden and usually injurious way', 12, '', '', ''),
(170, 'instigate', 'provoke or stir up', 13, '', '', ''),
(171, 'insurgent', 'in opposition to a civil authority or government', 12, '', '', ''),
(172, 'interlocutor', 'a person who takes part in a conversation', 13, '', '', ''),
(173, 'intimation', 'a slight suggestion or vague understanding', 12, '', '', ''),
(174, 'inure', 'cause to accept or become hardened to', 15, '', '', ''),
(175, 'invective', 'abusive language used to express blame or censure', 13, '', '', ''),
(176, 'intransigent', 'impervious to pleas, persuasion, requests, or reason', 12, '', '', ''),
(177, 'inveterate', 'habitual', 13, '', '', ''),
(178, 'irreverence', 'a mental attitude showing lack of due respect', 13, '', '', ''),
(179, 'knell', 'the sound of a bell rung slowly to announce a death', 12, '', '', ''),
(180, 'laconic', 'brief and to the point', 13, '', '', ''),
(181, 'largesse', 'liberality in bestowing gifts', 14, '', '', ''),
(182, 'legerdemain', 'an illusory feat', 15, '', '', ''),
(183, 'libertarian', 'an advocate of freedom of thought and speech', 13, '', '', ''),
(184, 'licentious', 'lacking moral discipline', 13, '', '', ''),
(185, 'linchpin', 'a central cohesive source of support and stability', 14, '', '', ''),
(186, 'litigant', 'a party to a lawsuit', 13, '', '', ''),
(187, 'maelstrom', 'a powerful circular current of water', 15, '', '', ''),
(188, 'maudlin', 'very sentimental or emotional', 12, '', '', ''),
(189, 'maverick', 'someone who exhibits independence in thought and action', 12, '', '', ''),
(190, 'mawkish', 'very sentimental or emotional', 14, '', '', ''),
(191, 'maxim', 'a saying that is widely accepted on its own merits', 12, '', '', ''),
(192, 'mendacious', 'given to lying', 15, '', '', ''),
(193, 'modicum', 'a small or moderate or token amount', 14, '', '', ''),
(194, 'morass', 'a soft wet area of low-lying land that sinks underfoot', 13, '', '', ''),
(195, 'mores', 'the conventions embodying the fundamental values of a group', 12, '', '', ''),
(196, 'munificent', 'very generous', 15, '', '', ''),
(197, 'multifarious', 'having many aspects', 14, '', '', ''),
(198, 'nadir', 'the lowest point of anything', 12, '', '', ''),
(199, 'negligent', 'characterized by undue lack of attention or concern', 15, '', '', ''),
(200, 'neophyte', 'a participant with no experience with an activity', 15, '', '', ''),
(201, 'noisome', 'offensively malodorous', 14, '', '', ''),
(202, 'noxious', 'injurious to physical or mental health', 13, '', '', ''),
(203, 'obdurate', 'stubbornly persistent in wrongdoing', 13, '', '', ''),
(204, 'obfuscate', 'make obscure or unclear', 13, '', '', ''),
(205, 'obstreperous', 'noisily and stubbornly defiant', 13, '', '', ''),
(206, 'officious', 'intrusive in a meddling or offensive manner', 12, '', '', ''),
(207, 'onerous', 'burdensome or difficult to endure', 14, '', '', ''),
(208, 'ostensible', 'appearing as such but not necessarily so', 14, '', '', ''),
(209, 'ostracism', 'the act of excluding someone from society by general consent', 14, '', '', ''),
(210, 'palliate', 'lessen or to try to lessen the seriousness or extent of', 11, '', '', ''),
(211, 'panacea', 'hypothetical remedy for all ills or diseases', 13, '', '', ''),
(212, 'paradigm', 'a standard or typical example', 11, '', '', ''),
(213, 'pariah', 'a person who is rejected from society or home', 13, '', '', ''),
(214, 'partisan', 'a fervent and even militant proponent of something', 12, '', '', ''),
(215, 'paucity', 'an insufficient quantity or number', 12, '', '', ''),
(216, 'pejorative', 'expressing disapproval', 12, '', '', ''),
(217, 'pellucid', 'transparently clear; easily understandable', 12, '', '', ''),
(218, 'penchant', 'a strong liking or preference', 13, '', '', ''),
(219, 'penurious', 'excessively unwilling to spend', 15, '', '', ''),
(220, 'pert', 'characterized by a lightly saucy or impudent quality', 15, '', '', ''),
(221, 'pernicious', 'exceedingly harmful', 11, '', '', ''),
(222, 'pertinacious', 'stubbornly unyielding', 13, '', '', ''),
(223, 'phlegmatic', 'showing little emotion', 13, '', '', ''),
(224, 'philanthropic', 'of or relating to charitable giving', 12, '', '', ''),
(225, 'pithy', 'concise and full of meaning', 12, '', '', ''),
(226, 'platitude', 'a trite or obvious remark', 11, '', '', ''),
(227, 'plaudit', 'enthusiastic approval', 13, '', '', ''),
(228, 'plenitude', 'a full supply', 13, '', '', ''),
(229, 'plethora', 'extreme excess', 14, '', '', ''),
(230, 'portent', 'a sign of something about to happen', 11, '', '', ''),
(231, 'potentate', 'a powerful ruler, especially one who is unconstrained by law', 12, '', '', ''),
(232, 'preclude', 'make impossible, especially beforehand', 12, '', '', ''),
(233, 'predilection', 'a predisposition in favor of something', 14, '', '', ''),
(234, 'preponderance', 'exceeding in heaviness; having greater weight', 15, '', '', ''),
(235, 'presage', 'a foreboding about what is about to happen', 14, '', '', ''),
(236, 'probity', 'complete and confirmed integrity', 12, '', '', ''),
(237, 'proclivity', 'a natural inclination', 12, '', '', ''),
(238, 'profligate', 'unrestrained by convention or morality', 13, '', '', ''),
(239, 'promulgate', 'state or announce', 14, '', '', ''),
(240, 'proscribe', 'command against', 14, '', '', ''),
(241, 'protean', 'taking on different forms', 13, '', '', ''),
(242, 'prurient', 'characterized by lust', 14, '', '', ''),
(243, 'puerile', 'displaying or suggesting a lack of maturity', 13, '', '', ''),
(244, 'pugnacious', 'ready and able to resort to force or violence', 13, '', '', ''),
(245, 'pulchritude', 'physical beauty, especially of a woman', 14, '', '', ''),
(246, 'punctilious', 'marked by precise accordance with details', 15, '', '', ''),
(247, 'quaint', 'attractively old-fashioned', 11, '', '', ''),
(248, 'quixotic', 'not sensible about practical matters', 14, '', '', ''),
(249, 'quandary', 'state of uncertainty in a choice between unfavorable options', 14, '', '', ''),
(250, 'recalcitrant', 'stubbornly resistant to authority or control', 12, '', '', ''),
(251, 'redoubtable', 'inspiring fear', 14, '', '', ''),
(252, 'relegate', 'assign to a lower position', 14, '', '', ''),
(253, 'remiss', 'failing in what duty requires', 11, '', '', ''),
(254, 'reprieve', 'postpone the punishment of a convicted criminal', 11, '', '', ''),
(255, 'reprobate', 'a person without moral scruples', 11, '', '', ''),
(256, 'rescind', 'cancel officially', 14, '', '', ''),
(257, 'requisition', 'an authoritative demand', 13, '', '', ''),
(258, 'rife', 'excessively abundant', 13, '', '', ''),
(259, 'sanctimonious', 'excessively or hypocritically pious', 11, '', '', ''),
(260, 'sanguine', 'confidently optimistic and cheerful', 14, '', '', ''),
(261, 'scurrilous', 'expressing offensive, insulting, or scandalous criticism', 14, '', '', ''),
(262, 'semaphore', 'an apparatus for visual signaling', 11, '', '', ''),
(263, 'serendipity', 'good luck in making unexpected and fortunate discoveries', 14, '', '', ''),
(264, 'sobriety', 'the state of being unaffected or not intoxicated by alcohol', 14, '', '', ''),
(265, 'solicitous', 'full of anxiety and concern', 14, '', '', ''),
(266, 'solipsism', 'the philosophical theory that the self is all that exists', 14, '', '', ''),
(267, 'spurious', 'plausible but false', 14, '', '', ''),
(268, 'staid', 'characterized by dignity and propriety', 13, '', '', ''),
(269, 'stolid', 'having or revealing little emotion or sensibility', 13, '', '', ''),
(270, 'subjugate', 'make subservient; force to submit or subdue', 12, '', '', ''),
(271, 'surfeit', 'indulge (one\'s appetite) to satiety', 13, '', '', ''),
(272, 'surreptitious', 'marked by quiet and caution and secrecy', 11, '', '', ''),
(273, 'swarthy', 'naturally having skin of a dark color', 11, '', '', ''),
(274, 'tangential', 'of superficial relevance if any', 13, '', '', ''),
(275, 'tome', 'a large and scholarly book', 13, '', '', ''),
(276, 'toady', 'a person who tries to please someone to gain an advantage', 11, '', '', ''),
(277, 'torpid', 'in a condition of biological rest or suspended animation', 11, '', '', ''),
(278, 'travesty', 'a composition that imitates or misrepresents a style', 15, '', '', ''),
(279, 'trenchant', 'having keenness and forcefulness and penetration in thought', 11, '', '', ''),
(280, 'trite', 'repeated too often; overfamiliar through overuse', 11, '', '', ''),
(281, 'truculent', 'defiantly aggressive', 11, '', '', ''),
(282, 'turpitude', 'a corrupt or depraved or degenerate act or practice', 11, '', '', ''),
(283, 'ubiquitous', 'being present everywhere at once', 13, '', '', ''),
(284, 'umbrage', 'a feeling of anger caused by being offended', 14, '', '', ''),
(285, 'upbraid', 'express criticism towards', 12, '', '', ''),
(286, 'utilitarian', 'having a useful function', 12, '', '', ''),
(287, 'veracity', 'unwillingness to tell lies', 13, '', '', ''),
(288, 'vestige', 'an indication that something has been present', 11, '', '', ''),
(289, 'vicissitude', 'a variation in circumstances or fortune', 12, '', '', ''),
(290, 'vilify', 'spread negative information about', 14, '', '', ''),
(291, 'virtuoso', 'someone who is dazzlingly skilled in any field', 13, '', '', ''),
(292, 'vitriolic', 'harsh, bitter, or malicious in tone', 14, '', '', ''),
(293, 'vituperate', 'spread negative information about', 14, '', '', ''),
(294, 'vociferous', 'conspicuously and offensively loud', 14, '', '', ''),
(295, 'wanton', 'a lewd or immoral person', 14, '', '', ''),
(296, 'winsome', 'charming in a childlike or naive way', 11, '', '', ''),
(297, 'yoke', 'join with stable gear, as two draft animals', 12, '', '', ''),
(298, 'zephyr', 'a slight wind', 11, '', '', ''),
(299, 'wily', 'marked by skill in deception', 12, '', '', ''),
(300, 'tirade', 'a speech of violent denunciation', 14, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `words3`
--

CREATE TABLE `words3` (
  `qid` int(11) NOT NULL,
  `word` varchar(1000) NOT NULL,
  `meaning` text DEFAULT NULL,
  `level` int(11) NOT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `words3`
--

INSERT INTO `words3` (`qid`, `word`, `meaning`, `level`, `option1`, `option2`, `option3`) VALUES
(1, 'Inimical', 'reflecting or indicating hostility', 0, NULL, NULL, NULL),
(2, 'Euphoric', 'feleling intense excitement and happiness', 0, NULL, NULL, NULL),
(3, 'Ineffable', 'to great or extreme to be  expressed', 0, NULL, NULL, NULL),
(4, 'Nebulous', 'in the form of a cloud ', 0, NULL, NULL, NULL),
(5, 'Gregarious', 'sociable', 0, NULL, NULL, NULL),
(6, 'Pernicious', 'having a harmful effect', 0, NULL, NULL, NULL),
(7, 'Disseminate', 'spread widely', 0, NULL, NULL, NULL),
(8, 'Serendipity', 'in making unexpected and fortunate discoveries', 0, NULL, NULL, NULL),
(9, 'Facetious', 'treating serious issues with deliberately', 0, NULL, NULL, NULL),
(10, 'Exacerbate', 'bad situation', 0, NULL, NULL, NULL),
(11, 'Sycophant', 'a person who acts obsequiously towards someone important in order to gain advantage', 0, NULL, NULL, NULL),
(12, 'Verisimilitude', 'the appearance of being true or real', 0, NULL, NULL, NULL),
(13, 'Procrastinate', 'delay or postpone action', 0, NULL, NULL, NULL),
(14, 'Obfuscate', 'unclear', 0, NULL, NULL, NULL),
(15, 'Juxtaposition', 'the fact of two things being seen or placed close together with contrasting effect', 0, NULL, NULL, NULL),
(16, 'Euphemism', 'a mild or indirect word or expression substituted', 0, NULL, NULL, NULL),
(17, 'Aberration', 'a departure from what  is normal,usual,or expected', 0, NULL, NULL, NULL),
(18, 'Paroxysm', 'a sudden attack or outburst of a particular emotion activity', 0, NULL, NULL, NULL),
(19, 'Ostentatious', 'characterized by pretentious or showly display', 0, NULL, NULL, NULL),
(20, 'Maelstrom', 'a powerful whirlpool in the sea or a river', 0, NULL, NULL, NULL),
(21, 'Mellifluous', 'pleasingly,smooth and musical to hear', 0, NULL, NULL, NULL),
(22, 'Perspicacious', 'having a ready insight into and understading of things', 0, NULL, NULL, NULL),
(23, 'Sesquipedalian', 'long-winded', 0, NULL, NULL, NULL),
(24, 'Vicissitude', 'a change of circumstancesor fortune ,typically one that is unwelcome or unpleasant', 0, NULL, NULL, NULL),
(25, 'Circumlocution', 'to use of many words where where do,especially in a delibrate attempt to be vague', 0, NULL, NULL, NULL),
(26, 'Loquacious', 'tending to talk  a great deal', 0, NULL, NULL, NULL),
(27, 'Ubiquity', 'the fact of appearing everywhere or of being very common', 0, NULL, NULL, NULL),
(28, 'Capitulation', 'the action of ceasing to resist an opponent or demand', 0, NULL, NULL, NULL),
(29, 'Ambiguity', 'the quality of being open to more than one interpretation', 0, NULL, NULL, NULL),
(30, 'Propinquity', 'the state of being close to someone or something ', 0, NULL, NULL, NULL),
(31, 'Perspicacity ', 'the quality of having a ready  insight into things', 0, NULL, NULL, NULL),
(32, 'Querulous', 'complaning in a rather petulant  or whining manner', 0, NULL, NULL, NULL),
(33, 'Ameliorate', 'unsatisfactory', 0, NULL, NULL, NULL),
(34, 'Apotheosis', 'the highest point in the development of something', 0, NULL, NULL, NULL),
(35, 'Penultimate', 'last but one in a series of things', 0, NULL, NULL, NULL),
(36, 'Mercurial', 'subject to sudden or upredictable changes of mood or mind', 0, NULL, NULL, NULL),
(37, 'Supercilious', 'behaving or looking as though one thinks one is superior to others', 0, NULL, NULL, NULL),
(38, 'Ephemeral', 'lasting for a very short time', 0, NULL, NULL, NULL),
(39, 'Lethargic', 'sluggish', 0, NULL, NULL, NULL),
(40, 'Perseverance', 'persistence in doing something  despite diffculty or delay in achieving success', 0, NULL, NULL, NULL),
(41, 'Vicarious', 'experienced in the imagination through the feelings or actions of another person', 0, NULL, NULL, NULL),
(42, 'Ubiquitous', 'present,appearing,or found everywhere', 0, NULL, NULL, NULL),
(43, 'worcestershire', 'sauce and spices', 0, NULL, NULL, NULL),
(44, 'Effervescent', 'giving off bubbles', 0, NULL, NULL, NULL),
(45, 'Panacea', 'a solution or remedy', 0, NULL, NULL, NULL),
(46, 'Quintessential', 'representing the most perfect or typical example of a quality or class', 0, NULL, NULL, NULL),
(47, 'Recalcitrant', 'having an obstinately uncooperative  attitude towards authority or discipline', 0, NULL, NULL, NULL),
(48, 'Equanimity', 'calmness and composure , especially in a difficult situation', 0, NULL, NULL, NULL),
(49, 'Superfluous', 'unnecessary,especially through morre than enough', 0, NULL, NULL, NULL),
(50, 'Inscrutable', 'impossible to understand or interpret', 0, NULL, NULL, NULL),
(51, 'Copacetic', 'in excellent order', 0, NULL, NULL, NULL),
(52, 'Inexorable', 'impossible to stop or prevent', 0, NULL, NULL, NULL),
(53, 'Desultory', 'lacking a plan,purpose ,or enthusiasm', 0, NULL, NULL, NULL),
(54, 'Reticent', 'not revealing one\'s thoughts or fellings readily.', 0, NULL, NULL, NULL),
(55, 'Exacerbate', 'bad situation or negative feeling', 0, NULL, NULL, NULL),
(56, 'Alacrity', 'cheerful readliness', 0, NULL, NULL, NULL),
(57, 'Disparate', 'essentially different in kind ,not able to be compared', 0, NULL, NULL, NULL),
(58, 'Paradigm', 'a typical example or pattern of something', 0, NULL, NULL, NULL),
(59, 'Harbinger', 'a person or thing that announces or singles the approach of another', 0, NULL, NULL, NULL),
(60, 'Meticulous', 'showing great attention to detail', 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`mobile`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`regno`,`feedback`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`mobile`);

--
-- Indexes for table `replay`
--
ALTER TABLE `replay`
  ADD PRIMARY KEY (`pid`,`replay`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`sid`,`qid`);

--
-- Indexes for table `responses1`
--
ALTER TABLE `responses1`
  ADD PRIMARY KEY (`sid`,`qid`,`timestamp`);

--
-- Indexes for table `responses3`
--
ALTER TABLE `responses3`
  ADD PRIMARY KEY (`sid`,`qid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users3`
--
ALTER TABLE `users3`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `words1`
--
ALTER TABLE `words1`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `words3`
--
ALTER TABLE `words3`
  ADD PRIMARY KEY (`qid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3437;

--
-- AUTO_INCREMENT for table `words1`
--
ALTER TABLE `words1`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `words3`
--
ALTER TABLE `words3`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
