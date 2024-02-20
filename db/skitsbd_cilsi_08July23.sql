-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2023 at 12:27 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skitsbd_cilsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_feed`
--

CREATE TABLE `activity_feed` (
  `activity_feed_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `users_id` tinyint(1) NOT NULL,
  `activity_feed_title` varchar(255) NOT NULL,
  `activity_feed_name` text NOT NULL,
  `activity_feed_link` varchar(255) NOT NULL,
  `uri_table_name` varchar(255) NOT NULL,
  `uri_table_field_name` varchar(255) NOT NULL,
  `field_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_feed`
--

INSERT INTO `activity_feed` (`activity_feed_id`, `created_on`, `users_id`, `activity_feed_title`, `activity_feed_name`, `activity_feed_link`, `uri_table_name`, `uri_table_field_name`, `field_value`) VALUES
(1, '2023-03-19 18:47:04', 1, 'Menu was edited', 'HOME', '/Manage_Data/front_menu/view/2', 'front_menu', 'front_menu_publish', '1'),
(2, '2023-03-19 18:47:27', 1, 'Menu was edited', 'PESTS', '/Manage_Data/front_menu/view/3', 'front_menu', 'front_menu_publish', '1'),
(3, '2023-03-19 21:06:46', 1, 'Menu was edited', 'PESTS', '/Manage_Data/front_menu/view/3', 'front_menu', 'front_menu_publish', '1'),
(4, '2023-03-19 21:07:26', 1, 'Menu was edited', 'SERVICES', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(5, '2023-03-19 21:07:33', 1, 'Menu was edited', 'PESTS', '/Manage_Data/front_menu/view/3', 'front_menu', 'front_menu_publish', '1'),
(6, '2023-03-19 21:14:30', 1, 'Menu was edited', 'NEWS', '/Manage_Data/front_menu/view/4', 'front_menu', 'front_menu_publish', '1'),
(7, '2023-03-19 21:14:51', 1, 'Menu was edited', 'CONTACTS', '/Manage_Data/front_menu/view/5', 'front_menu', 'front_menu_publish', '1'),
(8, '2023-03-19 21:15:10', 1, 'Menu was edited', 'CONTACTS', '/Manage_Data/front_menu/view/5', 'front_menu', 'front_menu_publish', '1'),
(9, '2023-03-19 22:00:40', 1, 'Pages was edited', 'Top Header Email', '/Manage_Data/pages/view/2', 'pages', 'pages_publish', '1'),
(10, '2023-03-19 22:00:47', 1, 'Pages was edited', 'Top Header Phone', '/Manage_Data/pages/view/1', 'pages', 'pages_publish', '1'),
(11, '2023-03-19 23:20:06', 1, 'Videos was edited', 'Ant Invasions', '/Manage_Data/videos/view/3', 'videos', 'videos_publish', '1'),
(12, '2023-03-19 23:20:59', 1, 'Videos was edited', 'LEPTOSPIROSIS', '/Manage_Data/videos/view/2', 'videos', 'videos_publish', '1'),
(13, '2023-03-19 23:22:09', 1, 'Videos was edited', 'Cockroach Health Risks', '/Manage_Data/videos/view/1', 'videos', 'videos_publish', '1'),
(14, '2023-03-20 21:16:22', 1, 'branches was edited', 'Main Branch', '/Settings/branches/view/1', 'branches', 'branches_publish', '1'),
(15, '2023-03-20 21:32:35', 1, 'User was edited', 'Info Pesterminate', '/Settings/users_setup/view/3', 'users', 'users_id', '3'),
(16, '2023-03-20 21:32:55', 1, 'User was edited', 'Abdus Shobhan', '/Settings/users_setup/view/2', 'users', 'users_id', '2'),
(17, '2023-03-21 20:10:40', 1, 'Pages was edited', 'Top Header Phone', '/Manage_Data/pages/view/1', 'pages', 'pages_publish', '1'),
(18, '2023-04-15 04:25:20', 1, 'Pages was edited', 'Pests', '/Manage_Data/pages/view/3', 'pages', 'pages_publish', '1'),
(19, '2023-04-16 02:24:17', 1, 'Menu was edited', 'SERVICES', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(20, '2023-04-16 03:58:35', 1, 'Menu was edited', 'NEWS', '/Manage_Data/front_menu/view/4', 'front_menu', 'front_menu_publish', '1'),
(21, '2023-04-21 00:12:28', 1, 'Menu was edited', 'CONTACTS', '/Manage_Data/front_menu/view/5', 'front_menu', 'front_menu_publish', '1'),
(22, '2023-04-21 00:15:41', 1, 'Menu was edited', 'CONTACTS', '/Manage_Data/front_menu/view/5', 'front_menu', 'front_menu_publish', '1'),
(23, '2023-04-30 22:05:22', 1, 'Pages was edited', 'Top Header Phone', '/Manage_Data/pages/view/1', 'pages', 'pages_publish', '1'),
(24, '2023-05-01 02:34:08', 1, 'branches was edited', 'Dalmatian', '/Settings/branches/view/2', 'branches', 'branches_publish', '1'),
(25, '2023-05-01 02:34:23', 1, 'branches was edited', 'Main Branch', '/Settings/branches/view/1', 'branches', 'branches_publish', '1'),
(26, '2023-05-01 04:08:47', 1, 'Pages was edited', 'About Pesterminate', '/Manage_Data/pages/view/3', 'pages', 'pages_publish', '1'),
(27, '2023-05-01 04:09:04', 1, 'Menu was edited', 'PESTS', '/Manage_Data/front_menu/view/3', 'front_menu', 'front_menu_publish', '1'),
(28, '2023-05-01 06:16:54', 3, 'Pages was edited', 'Best Pest Control in Toronto', '/Manage_Data/pages/view/12', 'pages', 'pages_publish', '1'),
(29, '2023-05-01 06:17:31', 3, 'Pages was edited', 'Residential Pest Control in Toronto', '/Manage_Data/pages/view/11', 'pages', 'pages_publish', '1'),
(30, '2023-05-01 06:36:20', 3, 'Pages was edited', 'Ants and Carpenter Ants Removal treatment in Toronto', '/Manage_Data/pages/view/15', 'pages', 'pages_publish', '1'),
(31, '2023-05-03 23:42:06', 1, 'Pages was edited', 'Rat Removal treatment in Toronto', '/Manage_Data/pages/view/14', 'pages', 'pages_publish', '1'),
(32, '2023-05-03 23:45:14', 1, 'Menu was edited', 'Rat Removal treatment in Toronto', '/Manage_Data/front_menu/view/18', 'front_menu', 'front_menu_publish', '1'),
(33, '2023-05-09 03:08:27', 1, 'Pages was edited', 'About Pesterminate', '/Manage_Data/pages/view/3', 'pages', 'pages_publish', '1'),
(34, '2023-05-09 23:13:51', 2, 'Menu was edited', 'About Us', '/Manage_Data/front_menu/view/3', 'front_menu', 'front_menu_publish', '1'),
(35, '2023-05-09 23:19:36', 2, 'Menu was edited', 'LEGAL SERVICES', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(36, '2023-05-09 23:20:09', 2, 'Menu was edited', 'ABOUT US', '/Manage_Data/front_menu/view/3', 'front_menu', 'front_menu_publish', '1'),
(37, '2023-05-09 23:23:34', 2, 'Menu was edited', 'LEGAL SERVICES', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(38, '2023-05-09 23:26:29', 2, 'Menu was edited', 'CONTACTS US', '/Manage_Data/front_menu/view/5', 'front_menu', 'front_menu_publish', '1'),
(39, '2023-05-09 23:26:45', 2, 'Menu was edited', 'CONTACTS US', '/Manage_Data/front_menu/view/5', 'front_menu', 'front_menu_publish', '1'),
(40, '2023-05-09 23:29:02', 2, 'Menu was edited', 'NEWS', '/Manage_Data/front_menu/view/4', 'front_menu', 'front_menu_publish', '1'),
(41, '2023-05-10 03:06:09', 2, 'Pages was edited', 'Top Header Phone', '/Manage_Data/pages/view/1', 'pages', 'pages_publish', '1'),
(42, '2023-05-10 03:12:28', 2, 'Pages was edited', 'Top Header Email', '/Manage_Data/pages/view/2', 'pages', 'pages_publish', '1'),
(43, '2023-05-10 03:52:14', 2, 'Pages was edited', 'Top Header Email', '/Manage_Data/pages/view/2', 'pages', 'pages_publish', '1'),
(44, '2023-05-10 05:13:28', 2, 'Banners was edited', 'STUDY IN CANADA YOUR PATHWAY TO A WORLD-CLASS EDUCATION', '/Manage_Data/banners/view/1', 'banners', 'banners_publish', '1'),
(45, '2023-05-10 05:13:59', 2, 'Banners was edited', 'CANADIAN IMMIGRATION & LEGAL SERVICES INC', '/Manage_Data/banners/view/2', 'banners', 'banners_publish', '1'),
(46, '2023-05-10 05:14:36', 2, 'Banners was edited', 'PROFESSIONAL VISA APPLICATION SERVICES', '/Manage_Data/banners/view/3', 'banners', 'banners_publish', '1'),
(47, '2023-05-10 05:15:29', 2, 'Banners was edited', 'a professional consultancy firm helping people and families around the world begin their immigration to Canada.', '/Manage_Data/banners/view/4', 'banners', 'banners_publish', '1'),
(48, '2023-05-17 01:39:36', 2, 'Banners was edited', 'Unlocking Your  Future in Canada', '/Manage_Data/banners/view/4', 'banners', 'banners_publish', '1'),
(49, '2023-05-17 04:06:53', 2, 'Videos was edited', 'Cockroach Health Risks', '/Manage_Data/videos/view/1', 'videos', 'videos_publish', '1'),
(50, '2023-05-17 04:09:37', 2, 'Photo Gallery was edited', 'Mr. Salauddin Ahmed', '/Manage_Data/photo_gallery/', 'photo_gallery', 'photo_gallery_publish', '1'),
(51, '2023-05-17 04:25:38', 2, 'Pages was edited', 'We are leading in the market', '/Manage_Data/pages/view/3', 'pages', 'pages_publish', '1'),
(52, '2023-05-17 04:29:15', 2, 'Pages was edited', 'We have 15+ years of experience. We offer Immigration & Legal Services', '/Manage_Data/pages/view/4', 'pages', 'pages_publish', '1'),
(53, '2023-05-17 04:41:22', 2, 'Pages was edited', 'Have any question? Give us a call', '/Manage_Data/pages/view/15', 'pages', 'pages_publish', '1'),
(54, '2023-05-17 04:48:50', 2, 'Pages was edited', 'OUR MISSION', '/Manage_Data/pages/view/12', 'pages', 'pages_publish', '1'),
(55, '2023-05-17 04:49:24', 2, 'Pages was edited', 'OUR COMMITMENT', '/Manage_Data/pages/view/13', 'pages', 'pages_publish', '1'),
(56, '2023-05-17 04:53:06', 2, 'Pages was edited', 'OUR SERVICE', '/Manage_Data/pages/view/14', 'pages', 'pages_publish', '1'),
(57, '2023-05-17 19:30:36', 2, 'Why choose us was edited', 'Fill In The Required Form', '/Manage_Data/why_choose_us/view/1', 'why_choose_us', 'why_choose_us_publish', '1'),
(58, '2023-05-17 19:31:26', 2, 'Why choose us was edited', 'Submit All Your Documents', '/Manage_Data/why_choose_us/view/2', 'why_choose_us', 'why_choose_us_publish', '1'),
(59, '2023-05-17 19:32:06', 2, 'Why choose us was edited', 'We Will Call', '/Manage_Data/why_choose_us/view/3', 'why_choose_us', 'why_choose_us_publish', '1'),
(60, '2023-05-17 19:32:46', 2, 'Why choose us was edited', 'Ready To Receive Your Visa', '/Manage_Data/why_choose_us/view/4', 'why_choose_us', 'why_choose_us_publish', '1'),
(61, '2023-05-17 21:40:23', 2, 'Pages was edited', 'WHAT THEY ARE TALKING', '/Manage_Data/pages/view/21', 'pages', 'pages_publish', '1'),
(62, '2023-05-17 21:45:32', 2, 'Customer Reviews was edited', 'Robert Mick', '/Manage_Data/customer_reviews/view/1', 'customer_reviews', 'customer_reviews_publish', '1'),
(63, '2023-05-17 21:46:35', 2, 'Customer Reviews was edited', 'Robert Mick 1', '/Manage_Data/customer_reviews/view/2', 'customer_reviews', 'customer_reviews_publish', '1'),
(64, '2023-05-17 21:47:30', 2, 'Customer Reviews was edited', 'Robert Mick 2', '/Manage_Data/customer_reviews/view/3', 'customer_reviews', 'customer_reviews_publish', '1'),
(65, '2023-05-17 21:48:26', 2, 'Customer Reviews was edited', 'Robert Mick 3', '/Manage_Data/customer_reviews/view/4', 'customer_reviews', 'customer_reviews_publish', '1'),
(66, '2023-05-17 21:49:23', 2, 'Customer Reviews was edited', 'Robert Mick 4', '/Manage_Data/customer_reviews/view/5', 'customer_reviews', 'customer_reviews_publish', '1'),
(67, '2023-05-17 22:05:22', 2, 'Menu was edited', 'CONTACTS US', '/Manage_Data/front_menu/view/5', 'front_menu', 'front_menu_publish', '1'),
(68, '2023-05-17 22:11:48', 2, 'Menu was edited', 'ABOUT US', '/Manage_Data/front_menu/view/3', 'front_menu', 'front_menu_publish', '1'),
(69, '2023-05-17 22:12:46', 2, 'Pages was edited', 'About us', '/Manage_Data/pages/view/22', 'pages', 'pages_publish', '1'),
(70, '2023-05-21 01:29:27', 2, 'Menu was edited', 'Our Services', '/Manage_Data/front_menu/view/14', 'front_menu', 'front_menu_publish', '1'),
(71, '2023-05-21 01:32:07', 2, 'Menu was edited', 'Our Services', '/Manage_Data/front_menu/view/14', 'front_menu', 'front_menu_publish', '1'),
(72, '2023-05-21 01:33:44', 2, 'Menu was edited', 'STUDENT VISA', '/Manage_Data/front_menu/view/15', 'front_menu', 'front_menu_publish', '1'),
(73, '2023-05-21 01:34:13', 2, 'Menu was edited', 'TEMPORARY WORK VISA', '/Manage_Data/front_menu/view/16', 'front_menu', 'front_menu_publish', '1'),
(74, '2023-05-21 01:34:37', 2, 'Menu was edited', 'BUSINESS VISA', '/Manage_Data/front_menu/view/17', 'front_menu', 'front_menu_publish', '1'),
(75, '2023-05-21 01:45:26', 2, 'Menu was edited', 'IMMIGRATION', '/Manage_Data/front_menu/view/18', 'front_menu', 'front_menu_publish', '1'),
(76, '2023-05-21 01:46:01', 2, 'Menu was edited', 'WORK PERMIT & LIMA', '/Manage_Data/front_menu/view/19', 'front_menu', 'front_menu_publish', '1'),
(77, '2023-05-21 01:52:57', 2, 'Menu was edited', 'OUR SERVICES', '/Manage_Data/front_menu/view/14', 'front_menu', 'front_menu_publish', '1'),
(78, '2023-05-21 07:16:32', 2, 'Pages was edited', 'Canadian immigration lawyer', '/Manage_Data/pages/view/24', 'pages', 'pages_publish', '1'),
(79, '2023-05-21 07:17:22', 2, 'Pages was edited', 'Best Immigration and Legal Services in Toronto', '/Manage_Data/pages/view/24', 'pages', 'pages_publish', '1'),
(80, '2023-05-21 07:18:11', 2, 'Pages was edited', 'Canadian immigration lawyer', '/Manage_Data/pages/view/23', 'pages', 'pages_publish', '1'),
(81, '2023-05-21 07:19:43', 2, 'Pages was edited', 'Canadian immigration lawyer', '/Manage_Data/pages/view/23', 'pages', 'pages_publish', '1'),
(82, '2023-05-21 23:56:27', 2, 'Pages was edited', 'WHAT OUR CLIENT TALKING', '/Manage_Data/pages/view/21', 'pages', 'pages_publish', '1'),
(83, '2023-05-21 23:56:57', 2, 'Pages was edited', 'WHAT OUR CLIENT ARE TALKING', '/Manage_Data/pages/view/21', 'pages', 'pages_publish', '1'),
(84, '2023-05-21 23:57:29', 2, 'Pages was edited', 'WHAT OUR CLIENTS ARE TALKING', '/Manage_Data/pages/view/21', 'pages', 'pages_publish', '1'),
(85, '2023-05-23 05:53:48', 2, 'Menu was edited', 'LEGAL SERVICES', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(86, '2023-05-23 05:54:43', 2, 'Menu was edited', 'LEGAL SERVICES', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(87, '2023-05-23 05:55:53', 2, 'Menu was edited', 'LEGAL SERVICES', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(88, '2023-05-23 05:58:21', 2, 'Menu was edited', 'LEGAL SERVICES2', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(89, '2023-05-23 05:59:24', 2, 'Menu was edited', 'COMMERCIAL', '/Manage_Data/front_menu/view/12', 'front_menu', 'front_menu_publish', '1'),
(90, '2023-05-23 05:59:36', 2, 'Menu was edited', 'RESIDENTIAL', '/Manage_Data/front_menu/view/11', 'front_menu', 'front_menu_publish', '1'),
(91, '2023-05-23 05:59:47', 2, 'Menu was edited', 'LEGAL SERVICES', '/Manage_Data/front_menu/view/10', 'front_menu', 'front_menu_publish', '1'),
(92, '2023-05-23 06:18:42', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(93, '2023-05-23 06:19:17', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(94, '2023-05-23 06:26:09', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(95, '2023-05-23 07:27:20', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(96, '2023-05-23 07:28:42', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(97, '2023-05-29 06:48:23', 2, 'Pages was edited', 'OUR EXPERT TEAM', '/Manage_Data/pages/view/20', 'pages', 'pages_publish', '1'),
(98, '2023-06-14 01:58:16', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(99, '2023-06-14 01:59:32', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(100, '2023-06-14 02:00:30', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(101, '2023-06-14 02:01:10', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(102, '2023-06-14 02:04:05', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(103, '2023-06-14 02:06:50', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(104, '2023-06-14 02:07:40', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(105, '2023-06-14 02:32:24', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(106, '2023-06-14 02:42:13', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(107, '2023-06-14 02:46:09', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(108, '2023-06-14 02:46:59', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(109, '2023-06-14 02:48:13', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(110, '2023-06-14 02:48:40', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(111, '2023-06-14 02:57:53', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(112, '2023-06-14 02:59:01', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(113, '2023-06-14 02:59:58', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(114, '2023-06-14 03:01:31', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(115, '2023-06-14 03:02:39', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(116, '2023-06-14 04:25:14', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(117, '2023-06-14 04:26:47', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(118, '2023-06-14 04:30:11', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(119, '2023-06-14 04:31:28', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(120, '2023-06-14 04:38:13', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(121, '2023-06-14 04:39:26', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(122, '2023-06-14 04:42:25', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(123, '2023-06-14 04:42:52', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(124, '2023-06-14 04:43:40', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(125, '2023-06-14 04:44:32', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(126, '2023-06-14 04:49:51', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(127, '2023-06-14 04:53:02', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(128, '2023-06-14 04:54:36', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(129, '2023-06-14 04:55:12', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(130, '2023-06-14 04:56:03', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(131, '2023-06-14 05:00:28', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(132, '2023-06-14 05:51:08', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(133, '2023-06-14 05:52:43', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(134, '2023-06-14 05:53:12', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(135, '2023-06-14 06:00:09', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(136, '2023-06-14 06:01:36', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(137, '2023-06-14 06:02:41', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(138, '2023-06-14 06:06:38', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(139, '2023-06-14 06:07:31', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(140, '2023-06-14 06:08:03', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(141, '2023-06-14 06:11:38', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(142, '2023-06-14 06:12:34', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(143, '2023-06-14 06:13:30', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(144, '2023-06-14 06:19:23', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(145, '2023-06-14 06:28:33', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(146, '2023-06-14 06:31:33', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(147, '2023-06-14 06:38:02', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(148, '2023-06-14 06:39:46', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(149, '2023-06-14 06:50:52', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(150, '2023-06-14 06:51:59', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(151, '2023-06-14 06:58:49', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(152, '2023-06-14 07:19:33', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(153, '2023-06-14 07:20:33', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(154, '2023-06-14 07:21:34', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(155, '2023-06-14 07:27:47', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(156, '2023-06-14 07:29:49', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(157, '2023-06-14 07:30:53', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(158, '2023-06-14 07:41:15', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(159, '2023-06-14 07:48:04', 2, 'Pages was edited', 'Visitor Visa', '/Manage_Data/pages/view/35', 'pages', 'pages_publish', '1'),
(160, '2023-06-14 07:49:53', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(161, '2023-06-14 07:57:25', 2, 'Pages was edited', 'Visitor Visa', '/Manage_Data/pages/view/35', 'pages', 'pages_publish', '1'),
(162, '2023-06-14 08:02:40', 2, 'Pages was edited', 'Citizenship and Program', '/Manage_Data/pages/view/36', 'pages', 'pages_publish', '1'),
(163, '2023-06-14 08:03:39', 2, 'Pages was edited', 'Citizenship and Program', '/Manage_Data/pages/view/36', 'pages', 'pages_publish', '1'),
(164, '2023-06-14 08:08:27', 2, 'Pages was edited', 'Citizenship and Program', '/Manage_Data/pages/view/36', 'pages', 'pages_publish', '1'),
(165, '2023-06-14 08:11:43', 2, 'Pages was edited', 'Citizenship', '/Manage_Data/pages/view/36', 'pages', 'pages_publish', '1'),
(166, '2023-06-14 08:22:34', 2, 'Pages was edited', 'Citizenship', '/Manage_Data/pages/view/36', 'pages', 'pages_publish', '1'),
(167, '2023-06-14 08:25:07', 2, 'Pages was edited', 'Temporary Work Visa', '/Manage_Data/pages/view/37', 'pages', 'pages_publish', '1'),
(168, '2023-06-14 08:31:09', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(169, '2023-06-14 08:32:03', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(170, '2023-06-14 08:33:50', 2, 'Pages was edited', 'Citizenship', '/Manage_Data/pages/view/36', 'pages', 'pages_publish', '1'),
(171, '2023-06-14 08:34:21', 2, 'Pages was edited', 'Citizenship', '/Manage_Data/pages/view/36', 'pages', 'pages_publish', '1'),
(172, '2023-06-14 08:40:12', 2, 'Pages was edited', 'Temporary Work Visa', '/Manage_Data/pages/view/37', 'pages', 'pages_publish', '1'),
(173, '2023-06-14 08:49:14', 2, 'Pages was edited', 'Temporary Work Visa', '/Manage_Data/pages/view/37', 'pages', 'pages_publish', '1'),
(174, '2023-06-14 08:54:49', 2, 'Pages was edited', 'Student Visa', '/Manage_Data/pages/view/38', 'pages', 'pages_publish', '1'),
(175, '2023-06-14 09:02:01', 2, 'Pages was edited', 'Student Visa', '/Manage_Data/pages/view/38', 'pages', 'pages_publish', '1'),
(176, '2023-06-14 09:46:34', 2, 'Pages was edited', 'Student Visa', '/Manage_Data/pages/view/38', 'pages', 'pages_publish', '1'),
(177, '2023-06-14 09:48:30', 2, 'Pages was edited', 'Appeal Hearing', '/Manage_Data/pages/view/39', 'pages', 'pages_publish', '1'),
(178, '2023-06-14 09:54:40', 2, 'Pages was edited', 'Appeal Hearing', '/Manage_Data/pages/view/39', 'pages', 'pages_publish', '1'),
(179, '2023-06-14 09:55:19', 2, 'Pages was edited', 'Appeal Hearing', '/Manage_Data/pages/view/39', 'pages', 'pages_publish', '1'),
(180, '2023-06-14 09:58:12', 2, 'Pages was edited', 'Appeal Hearing', '/Manage_Data/pages/view/39', 'pages', 'pages_publish', '1'),
(181, '2023-06-14 10:00:19', 2, 'Pages was edited', 'Immigration Appeal Hearing', '/Manage_Data/pages/view/39', 'pages', 'pages_publish', '1'),
(182, '2023-06-14 10:01:05', 2, 'Pages was edited', 'Immigration Appeal Hearing', '/Manage_Data/pages/view/39', 'pages', 'pages_publish', '1'),
(183, '2023-06-15 01:20:59', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(184, '2023-06-15 01:25:29', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(185, '2023-06-15 01:28:26', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(186, '2023-06-15 01:47:02', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(187, '2023-06-15 04:14:49', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(188, '2023-06-15 04:46:22', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(189, '2023-06-15 04:51:22', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(190, '2023-06-15 04:52:55', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(191, '2023-06-15 04:54:13', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(192, '2023-06-15 05:01:27', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(193, '2023-06-15 05:05:01', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(194, '2023-06-15 05:13:43', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(195, '2023-06-15 05:19:37', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(196, '2023-06-15 05:23:45', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(197, '2023-06-15 05:34:21', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(198, '2023-06-15 05:52:25', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(199, '2023-06-15 05:54:36', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(200, '2023-06-15 05:55:36', 2, 'Pages was edited', 'Legal Services Content', '/Manage_Data/pages/view/29', 'pages', 'pages_publish', '1'),
(201, '2023-06-15 06:25:22', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(202, '2023-06-15 06:36:15', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(203, '2023-06-15 06:41:01', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(204, '2023-06-15 07:25:14', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(205, '2023-06-15 07:29:40', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(206, '2023-06-17 00:53:19', 2, 'Pages was edited', 'Immigration Program', '/Manage_Data/pages/view/33', 'pages', 'pages_publish', '1'),
(207, '2023-06-17 01:25:13', 2, 'Pages was edited', 'Immigration law firm toronto', '/Manage_Data/pages/view/44', 'pages', 'pages_publish', '1'),
(208, '2023-06-17 01:29:03', 2, 'Pages was edited', 'Immigration law firm toronto', '/Manage_Data/pages/view/44', 'pages', 'pages_publish', '1'),
(209, '2023-06-17 01:32:40', 2, 'Pages was edited', 'immigration law firm toronto', '/Manage_Data/pages/view/44', 'pages', 'pages_publish', '1'),
(210, '2023-06-17 01:42:26', 2, 'Pages was edited', 'Immigration law firm toronto', '/Manage_Data/pages/view/44', 'pages', 'pages_publish', '1'),
(211, '2023-06-17 02:46:25', 2, 'Pages was edited', 'Canadian Immigration Lawyer', '/Manage_Data/pages/view/23', 'pages', 'pages_publish', '1'),
(212, '2023-06-17 02:47:37', 2, 'Pages was edited', 'Immigration Law Firm Toronto', '/Manage_Data/pages/view/44', 'pages', 'pages_publish', '1'),
(213, '2023-06-17 04:43:02', 2, 'Pages was edited', 'Canadian Immigration Lawyer', '/Manage_Data/pages/view/23', 'pages', 'pages_publish', '1'),
(214, '2023-06-17 04:44:25', 2, 'Pages was edited', 'Canadian Immigration Lawyer', '/Manage_Data/pages/view/23', 'pages', 'pages_publish', '1'),
(215, '2023-06-17 04:50:00', 2, 'Pages was edited', 'Canadian Immigration Lawyer', '/Manage_Data/pages/view/23', 'pages', 'pages_publish', '1'),
(216, '2023-06-17 05:01:39', 2, 'Pages was edited', 'Canadian Immigration Visa', '/Manage_Data/pages/view/40', 'pages', 'pages_publish', '1'),
(217, '2023-06-17 05:02:53', 2, 'Pages was edited', 'Canadian Immigration Lawyer', '/Manage_Data/pages/view/23', 'pages', 'pages_publish', '1'),
(218, '2023-06-17 05:06:36', 2, 'Pages was edited', 'Canadian Immigration Lawyer', '/Manage_Data/pages/view/23', 'pages', 'pages_publish', '1'),
(219, '2023-06-17 05:16:20', 2, 'Pages was edited', 'Canadian Immigration Visa', '/Manage_Data/pages/view/40', 'pages', 'pages_publish', '1'),
(220, '2023-06-17 05:18:45', 2, 'Pages was edited', 'Canadian Immigration Visa', '/Manage_Data/pages/view/40', 'pages', 'pages_publish', '1'),
(221, '2023-06-17 05:36:41', 2, 'Pages was edited', 'Work Permit Visa in Canada', '/Manage_Data/pages/view/41', 'pages', 'pages_publish', '1'),
(222, '2023-06-17 05:46:56', 2, 'Pages was edited', 'Refugee Lawyer Toronto', '/Manage_Data/pages/view/43', 'pages', 'pages_publish', '1'),
(223, '2023-06-17 05:56:17', 2, 'Pages was edited', 'Immigration Law Firm Toronto', '/Manage_Data/pages/view/44', 'pages', 'pages_publish', '1'),
(224, '2023-06-19 00:14:56', 2, 'Pages was edited', 'Business Visa', '/Manage_Data/pages/view/34', 'pages', 'pages_publish', '1'),
(225, '2023-06-19 00:17:23', 2, 'Pages was edited', 'Visitor Visa', '/Manage_Data/pages/view/35', 'pages', 'pages_publish', '1'),
(226, '2023-06-19 00:18:53', 2, 'Pages was edited', 'Citizenship', '/Manage_Data/pages/view/36', 'pages', 'pages_publish', '1'),
(227, '2023-06-19 00:19:59', 2, 'Pages was edited', 'Temporary Work Visa', '/Manage_Data/pages/view/37', 'pages', 'pages_publish', '1'),
(228, '2023-06-19 00:25:34', 2, 'Pages was edited', 'Student Visa', '/Manage_Data/pages/view/38', 'pages', 'pages_publish', '1'),
(229, '2023-06-19 00:31:49', 2, 'Pages was edited', 'Immigration Appeal Hearing', '/Manage_Data/pages/view/39', 'pages', 'pages_publish', '1'),
(230, '2023-06-19 00:42:39', 2, 'Pages was edited', 'Student Visa in Canada', '/Manage_Data/pages/view/42', 'pages', 'pages_publish', '1'),
(231, '2023-06-19 01:19:22', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(232, '2023-06-21 05:05:56', 2, 'Pages was edited', 'Immigration Page Content', '/Manage_Data/pages/view/26', 'pages', 'pages_publish', '1'),
(233, '2023-06-21 05:09:33', 2, 'Pages was edited', 'Immigration Page Content', '/Manage_Data/pages/view/26', 'pages', 'pages_publish', '1'),
(234, '2023-06-25 05:39:29', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(235, '2023-06-25 05:43:00', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(236, '2023-06-25 05:45:11', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(237, '2023-06-25 05:46:05', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1'),
(238, '2023-06-25 05:50:45', 2, 'Pages was edited', 'Fingerprint Content', '/Manage_Data/pages/view/31', 'pages', 'pages_publish', '1');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointments_id` int(11) NOT NULL,
  `appointments_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `appointments_no` int(11) NOT NULL,
  `services_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `services_type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `appointments_date` datetime NOT NULL,
  `notifications` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointments_id`, `appointments_publish`, `created_on`, `last_updated`, `users_id`, `appointments_no`, `services_id`, `customers_id`, `services_type`, `description`, `appointments_date`, `notifications`) VALUES
(1, 1, '2023-03-19 03:52:49', '2023-03-19 03:52:49', 0, 1, 1, 1, 'RESIDENTIAL', 'I am fetching some problems for Cockroach. Please set appointment as soon as you can.', '2023-03-19 03:52:49', 0),
(2, 1, '2023-03-21 17:18:05', '2023-03-21 17:18:05', 0, 2, 8, 2, '', '', '2023-03-21 00:00:00', 0),
(3, 1, '2023-03-21 17:21:56', '2023-03-21 17:21:56', 0, 3, 5, 2, '', '', '2023-03-21 00:00:00', 0),
(4, 1, '2023-03-21 17:22:10', '2023-03-21 17:22:10', 0, 4, 5, 2, '', '', '2023-03-21 00:00:00', 0),
(5, 1, '2023-03-21 20:12:36', '2023-03-21 20:12:36', 0, 5, 5, 4, '', '', '2023-03-21 00:00:00', 0),
(6, 1, '2023-04-07 22:35:04', '2023-04-07 22:35:04', 0, 6, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(7, 1, '2023-04-07 22:35:07', '2023-04-07 22:35:07', 0, 7, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(8, 1, '2023-04-07 22:35:08', '2023-04-07 22:35:08', 0, 8, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(9, 1, '2023-04-07 22:35:09', '2023-04-07 22:35:09', 0, 9, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(10, 1, '2023-04-07 22:35:09', '2023-04-07 22:35:09', 0, 10, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(11, 1, '2023-04-07 22:35:10', '2023-04-07 22:35:10', 0, 11, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(12, 1, '2023-04-07 22:35:11', '2023-04-07 22:35:11', 0, 12, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(13, 1, '2023-04-07 22:35:12', '2023-04-07 22:35:12', 0, 13, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(14, 1, '2023-04-07 22:35:12', '2023-04-07 22:35:12', 0, 14, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(15, 1, '2023-04-07 22:35:13', '2023-04-07 22:35:13', 0, 15, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(16, 1, '2023-04-07 22:35:14', '2023-04-07 22:35:14', 0, 16, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(17, 1, '2023-04-07 22:35:15', '2023-04-07 22:35:15', 0, 17, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(18, 1, '2023-04-07 22:35:15', '2023-04-07 22:35:15', 0, 18, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(19, 1, '2023-04-07 22:35:15', '2023-04-07 22:35:15', 0, 19, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(20, 1, '2023-04-07 22:35:16', '2023-04-07 22:35:16', 0, 20, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(21, 1, '2023-04-07 22:35:16', '2023-04-07 22:35:16', 0, 21, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(22, 1, '2023-04-07 22:35:17', '2023-04-07 22:35:17', 0, 22, 7, 5, '', '', '2023-04-07 00:00:00', 0),
(23, 1, '2023-04-16 04:50:11', '2023-04-16 04:50:11', 1, 23, 7, 8, '', '', '2023-04-16 00:00:00', 2),
(24, 1, '2023-04-16 05:16:45', '2023-04-16 05:16:45', 1, 24, 7, 9, '', 'test desc', '2023-04-16 00:00:00', 2),
(25, 1, '2023-04-16 05:20:09', '2023-04-16 05:20:09', 1, 25, 7, 10, '', 'test description', '2023-04-16 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_publish`, `created_on`, `last_updated`, `users_id`, `name`, `description`) VALUES
(1, 1, '2023-03-19 19:19:52', '2023-05-10 05:13:28', 2, 'STUDY IN CANADA YOUR PATHWAY TO A WORLD-CLASS EDUCATION', 'Expert Guidance and Support for a Successful Student Visa Application'),
(2, 1, '2023-03-19 19:20:37', '2023-05-10 05:13:59', 2, 'CANADIAN IMMIGRATION & LEGAL SERVICES INC', 'a professional consultancy firm helping people and families around the world begin their immigration to Canada.'),
(3, 1, '2023-03-19 19:21:03', '2023-05-10 05:14:36', 2, 'PROFESSIONAL VISA APPLICATION SERVICES', 'We are professional consultancy firm helping people and families around the world begin their immigration to Canada.'),
(4, 1, '2023-03-19 19:21:24', '2023-05-17 01:39:35', 2, 'Unlocking Your  Future in Canada', 'a professional consultancy firm helping people and families around the world begin their immigration to Canada.');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branches_id` int(11) NOT NULL,
  `branches_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `google_map` text NOT NULL,
  `working_hours` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branches_id`, `branches_publish`, `created_on`, `last_updated`, `users_id`, `name`, `address`, `google_map`, `working_hours`) VALUES
(1, 1, '2023-03-20 02:06:18', '2023-05-01 02:34:23', 1, 'Main Branch', '3098 Danforth Ave, Unit 204\r\nToronto, ON M1L1B1', '<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2884.916944563348!2d-79.290207049875!3d43.6914900578711!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d4ce9e66387eaf%3A0xaaef2b750681afb1!2s3098%20Danforth%20Ave%20%23204%2C%20Scarborough%2C%20ON%20M1L%201B1!5e0!3m2!1sen!2sca!4v1679292302785!5m2!1sen!2sca\\\" width=\\\"100%\\\" height=\\\"300\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"></iframe>', 'Monday to Friday \r\n9am - 6pm'),
(2, 1, '2023-03-21 20:40:18', '2023-05-01 02:34:08', 1, 'Dalmatian', '78 Dalmatian Crescent, Scarborough, ON M1C 4W', '<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2880.1209516531235!2d-79.16484009999999!3d43.791103199999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d4da3795c7b2c9%3A0x254e4600836184bd!2s78%20Dalmatian%20Crescent%2C%20Scarborough%2C%20ON%20M1C%204W6!5e0!3m2!1sen!2sca!4v1679445577048!5m2!1sen!2sca\\\" width=\\\"100%\\\" height=\\\"300\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"></iframe>', 'Monday to Friday\r\n9:00 AM to 7:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `offers_email` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_publish`, `created_on`, `last_updated`, `users_id`, `name`, `phone`, `email`, `address`, `offers_email`) VALUES
(1, 1, '2023-03-19 03:30:58', '2023-05-17 19:54:09', 2, 'Peter Hart', '416-509-1935', 'mdshobhancse@gmail.com', 'Cheif Consultant', 1),
(2, 1, '2023-03-19 11:27:17', '2023-05-17 19:55:40', 2, 'Amanda Seyfried', '4165091935', 'shobhancse@gmail.com', 'Consultant', 1),
(4, 1, '2023-03-21 20:12:36', '2023-05-17 20:00:31', 2, 'Debbie Kübel-Sorger', '09332453-05932', 'info@perterminate.ca', 'Consultant', 1),
(5, 1, '2023-04-07 22:35:04', '2023-05-17 20:02:42', 2, 'Cintia Le Corre', '+8801612554925', 'shaker.hossain87@gmail.com', 'Consultant', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_reviews`
--

CREATE TABLE `customer_reviews` (
  `customer_reviews_id` int(11) NOT NULL,
  `customer_reviews_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reviews_date` date NOT NULL,
  `reviews_rating` double NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_reviews`
--

INSERT INTO `customer_reviews` (`customer_reviews_id`, `customer_reviews_publish`, `created_on`, `last_updated`, `users_id`, `name`, `address`, `reviews_date`, `reviews_rating`, `description`) VALUES
(1, 1, '2023-03-19 22:17:32', '2023-05-17 21:45:32', 2, 'Robert Mick', 'Customer', '2017-01-17', 5, 'Normal that has evolved from gene ration X is on the runway heading towards a streamlined cloud solution. strategies to ensure proactive domination.'),
(2, 1, '2023-03-19 22:19:05', '2023-05-17 21:46:34', 2, 'Robert Mick 1', 'Customer', '2028-02-02', 5, 'Normal that has evolved from gene ration X is on the runway heading towards a streamlined cloud solution. strategies to ensure proactive domination.'),
(3, 1, '2023-03-19 22:20:32', '2023-05-17 21:47:30', 2, 'Robert Mick 2', 'Customer', '2018-03-05', 5, 'Normal that has evolved from gene ration X is on the runway heading towards a streamlined cloud solution. strategies to ensure proactive domination.'),
(4, 1, '2023-03-19 22:21:39', '2023-05-17 21:48:26', 2, 'Robert Mick 3', 'Customer', '2019-04-08', 5, 'Normal that has evolved from gene ration X is on the runway heading towards a streamlined cloud solution. strategies to ensure proactive domination.'),
(5, 1, '2023-03-19 22:25:34', '2023-05-17 21:49:23', 2, 'Robert Mick 4', 'Customer', '2022-04-10', 5, 'Normal that has evolved from gene ration X is on the runway heading towards a streamlined cloud solution. strategies to ensure proactive domination.');

-- --------------------------------------------------------

--
-- Table structure for table `front_menu`
--

CREATE TABLE `front_menu` (
  `front_menu_id` smallint(6) NOT NULL,
  `front_menu_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `users_id` smallint(6) NOT NULL,
  `root_menu_id` smallint(6) NOT NULL,
  `sub_menu_id` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `menu_uri` varchar(255) NOT NULL,
  `menu_position` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_menu`
--

INSERT INTO `front_menu` (`front_menu_id`, `front_menu_publish`, `created_on`, `last_updated`, `users_id`, `root_menu_id`, `sub_menu_id`, `name`, `menu_uri`, `menu_position`) VALUES
(1, 1, '2023-03-19 18:42:51', '2023-03-19 18:42:51', 1, 0, 0, 'Header Menu', 'header-menu', 1),
(2, 1, '2023-03-19 18:43:44', '2023-03-19 18:47:04', 1, 1, 0, 'HOME', 'home', 1),
(3, 1, '2023-03-19 18:45:12', '2023-05-17 22:11:48', 2, 1, 0, 'ABOUT US', 'about-us', 2),
(4, 1, '2023-03-19 18:49:43', '2023-05-09 23:29:02', 2, 13, 0, 'NEWS', 'news-articles', 4),
(5, 1, '2023-03-19 18:55:27', '2023-05-17 22:05:22', 2, 1, 0, 'CONTACTS US', 'contact-us', 6),
(6, 0, '2023-03-19 18:56:20', '2023-03-19 18:56:20', 1, 1, 3, 'COCKROACHES', 'cockroach-control', 3),
(7, 0, '2023-03-19 18:56:56', '2023-03-19 18:56:56', 1, 1, 3, 'MICE', 'mice-control', 4),
(8, 0, '2023-03-19 18:57:41', '2023-03-19 18:57:41', 1, 1, 3, 'FLIES', 'fly-control', 5),
(9, 0, '2023-03-19 18:58:22', '2023-03-19 18:58:22', 1, 1, 3, 'WASPS', 'wasp-nest-removal', 6),
(10, 1, '2023-03-19 21:03:14', '2023-05-23 05:59:47', 2, 1, 0, 'LEGAL SERVICES', 'legal-services', 4),
(11, 1, '2023-03-19 21:08:53', '2023-05-23 05:59:36', 2, 1, 4, 'RESIDENTIAL', 'residential', 1),
(12, 1, '2023-03-19 21:09:05', '2023-05-23 05:59:24', 2, 1, 4, 'COMMERCIAL', 'commercial', 2),
(13, 1, '2023-05-03 01:10:19', '2023-05-03 01:10:19', 1, 0, 0, 'Sidebar Menu', 'sidebar-menu', 1),
(14, 1, '2023-05-03 01:23:51', '2023-05-21 01:52:57', 2, 13, 0, 'OUR SERVICES', 'our-services', 1),
(15, 1, '2023-05-03 01:28:16', '2023-05-21 01:33:44', 2, 13, 14, 'STUDENT VISA', 'student-visa', 1),
(16, 1, '2023-05-03 01:28:39', '2023-05-21 01:34:13', 2, 13, 14, 'TEMPORARY WORK VISA', 'temporary-work-visa', 2),
(17, 1, '2023-05-03 01:28:57', '2023-05-21 01:34:37', 2, 13, 14, 'BUSINESS VISA', 'business-visa', 3),
(18, 1, '2023-05-03 01:29:24', '2023-05-21 01:45:26', 2, 13, 14, 'IMMIGRATION', 'immigration', 4),
(19, 1, '2023-05-03 01:29:43', '2023-05-21 01:46:01', 2, 13, 14, 'WORK PERMIT & LIMA', 'work-permit-and-lima', 5),
(20, 1, '2023-05-09 23:22:00', '2023-05-09 23:22:00', 2, 1, 0, 'IMMIGRATION', 'immigration', 3),
(21, 1, '2023-05-09 23:25:53', '2023-05-09 23:25:53', 2, 1, 0, 'FINGERPRINT', 'fingerprint', 5),
(22, 1, '2023-05-21 01:47:14', '2023-05-21 01:47:14', 2, 13, 14, 'CITIZENSHIP & PR', 'citizenship-and-pr', 5),
(23, 1, '2023-05-21 01:52:07', '2023-05-21 01:52:07', 2, 13, 4, 'CLSI New Website Launch', 'clsi-new-website-launch', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_articles`
--

CREATE TABLE `news_articles` (
  `news_articles_id` int(11) NOT NULL,
  `news_articles_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `uri_value` varchar(100) NOT NULL,
  `news_articles_date` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`news_articles_id`, `news_articles_publish`, `created_on`, `last_updated`, `users_id`, `name`, `uri_value`, `news_articles_date`, `created_by`, `short_description`, `description`) VALUES
(1, 1, '2023-03-20 01:54:56', '2023-05-17 02:01:40', 2, 'BUSINESS VISA', 'business-visa', '2023-03-13', 'Admin', 'For those who want to invest in or about to start businesses in Canada as an immigrant.', 'This blog post could discuss the potential dangers of attempting to control pests without the help of a professional pest control service. The article could highlight the risks of using store-bought pesticides and other DIY methods that may not be effective in getting rid of pests or may even be harmful to humans and pets.'),
(2, 1, '2023-03-20 02:03:30', '2023-05-17 02:04:19', 2, 'STUDENT VISA', 'student-visa', '2016-07-19', 'Admin', 'For study permit, student work permit, and Canadian Experience Class related needs.', 'This article could provide readers with information about common household pests, such as ants, cockroaches, and rodents, and offer tips and tricks for getting rid of them. The article could also cover preventative measures that homeowners can take to keep pests from entering their homes in the first place.'),
(3, 1, '2023-03-20 19:30:35', '2023-05-17 02:07:17', 2, 'TEMPORARY WORK VISA', 'temporary-work-visa', '2020-10-02', 'Admin', 'For those who want to work in Canada or employers who want to hire foreign workers.', 'This article could emphasize the importance of regular pest inspections for both homeowners and business owners. The post could explain how routine inspections can help identify potential pest problems early on and prevent them from becoming more serious and costly to address later. The article could also offer tips for finding a reputable pest control company to conduct the inspections.');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `notes_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `note_for` varchar(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `note` mediumtext NOT NULL,
  `publics` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`notes_id`, `table_id`, `note_for`, `created_on`, `last_updated`, `users_id`, `note`, `publics`) VALUES
(0, 1, 'appointments', '2023-03-18 23:58:04', '2023-03-18 23:58:04', 1, 'This is a testing note.', 1),
(0, 1, 'customers', '2023-03-19 03:56:53', '2023-03-19 03:56:53', 1, 'Testasad fasdfa sfasdf', 0),
(0, 3, 'customers', '2023-03-19 18:37:53', '2023-03-19 18:37:53', 1, 'Customers archived successfully Test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pages_id` int(11) NOT NULL,
  `pages_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri_value` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pages_id`, `pages_publish`, `created_on`, `last_updated`, `users_id`, `name`, `uri_value`, `short_description`, `description`) VALUES
(1, 1, '2023-03-19 21:21:01', '2023-05-10 03:06:08', 2, 'Top Header Phone', 'top-header-phone', '(657)-876-999', ''),
(2, 1, '2023-03-19 21:21:25', '2023-05-10 03:52:14', 2, 'Top Header Email', 'top-header-email', 'immigration75@gmail.com', 'shaker.hossain87@gmail.com'),
(3, 1, '2023-03-19 22:04:14', '2023-05-17 04:25:38', 2, 'We are leading in the market', 'we-are-leading-in-the-market', 'Canadian Immigration & Legal Services Inc. is a professional consultancy firm helping people and families around the world begin their immigration to Canada. We provide a variety of services to help clients through the immigration process in the most clear and cost-effective manner.', '<span style=\\\"color:#f2f2f2\\\">Canadian Immigration & Legal Services Inc.</span> is a professional consultancy firm helping people and families around the world begin their immigration to Canada. We provide a variety of services to help clients through the immigration process in the most clear and cost-effective manner.'),
(4, 1, '2023-03-21 00:48:08', '2023-05-17 04:29:15', 2, 'We have 15+ years of experience. We offer Immigration & Legal Services', 'we-have-15-plus-years-of-experience-we-offer-immigration-and-legal-services', 'As a Regulated Canadian Immigration Consultant (RCIC), licensed member of the ICCRC (Immigration Consultants of Canada Regulatory Council), you can be confident that a certified professional and experienced expert will succeed when taking your case.', 'As a Regulated Canadian Immigration Consultant (RCIC), licensed member of the ICCRC (Immigration Consultants of Canada Regulatory Council), you can be confident that a certified professional and experienced expert will succeed when taking your case.'),
(5, 1, '2023-03-21 01:22:20', '2023-03-21 01:22:20', 1, 'Terms of Service', 'terms-of-service', 'Pesterminate Inc. is committed to respecting the privacy of individuals and recognizes a need for the appropriate management and protection of any personal information that you agree to provide to us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request.', 'Your privacy is extremely important to us. The trust placed in us by our customers is absolutely essential to our success. We understand that and do all we can to earn and protect that trust. We do not share your personal information with any outside companies or collect any information.\r\n\r\nOur Commitment To Privacy:\r\n\r\nWe take customer privacy seriously and do not sell or give out any customer information. We do not keep a mailing list nor distribute a newsletter.\r\n\r\nAs required we follow the Privacy policy of the following:\r\n\r\nGovernment of Canada – Canada Business Network\r\n\r\nhttp://www.canadabusiness.ca/eng/page/2764/\r\n\r\nPrivacy Guide for Small Businesses: The Basics – Office of the Privacy Commissioner of Canada\r\n\r\nhttps://www.priv.gc.ca/information/pub/guide_sb_e.asp\r\n\r\nPrivacy Toolkit – Office of the Privacy Commissioner of Canada\r\n\r\nhttps://www.priv.gc.ca/information/pub/guide_org_e.pdf'),
(6, 1, '2023-03-21 01:23:01', '2023-03-21 01:23:01', 1, 'Privacy Policy', 'privacy-policy', 'Pesterminate Inc. is committed to respecting the privacy of individuals and recognizes a need for the appropriate management and protection of any personal information that you agree to provide to us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request.', 'Your privacy is extremely important to us. The trust placed in us by our customers is absolutely essential to our success. We understand that and do all we can to earn and protect that trust. We do not share your personal information with any outside companies nor collect any information.\r\n\r\nOur Commitment To Privacy:\r\n\r\nWe take customer privacy seriously and do not sell or give out any customer information. We do not keep a mailing list nor distribute a newsletter.\r\n\r\nAs per required we follow the Privacy policy of the following:\r\n\r\nGovernment of Canada – Canada Business Network\r\n\r\nhttp://www.canadabusiness.ca/eng/page/2764/\r\n\r\nPrivacy Guide for Small Businesses: The Basics – Office of the Privacy Commissioner of Canada\r\n\r\nhttps://www.priv.gc.ca/information/pub/guide_sb_e.asp\r\n\r\nPrivacy Toolkit – Office of the Privacy Commissioner of Canada\r\n\r\nhttps://www.priv.gc.ca/information/pub/guide_org_e.pdf'),
(7, 1, '2023-04-21 00:34:19', '2023-04-21 00:34:19', 1, 'What our customer says !', 'what-our-customer-says-', 'Clients Testimonials', 'Clients Testimonials'),
(8, 1, '2023-04-21 00:35:10', '2023-04-21 00:35:10', 1, 'Contact us Address', 'contact-us-address', 'House # B/153, Road # 22, New DOHS, Mohakhali, Dhaka-1206, Bangladesh.', 'House # B/153, Road # 22, New DOHS, Mohakhali, Dhaka-1206, Bangladesh.'),
(9, 1, '2023-04-21 00:35:34', '2023-04-21 00:35:34', 1, 'Contact us Email', 'contact-us-email', '<a href=\\\"mailto:info@skitsbd.com.com\\\"> info@skitsbd.com</a>', '<a href=\\\"mailto:info@skitsbd.com.com\\\"> info@skitsbd.com</a>'),
(10, 1, '2023-04-21 00:36:06', '2023-04-21 00:36:06', 1, 'Contact us Phone', 'contact-us-phone', 'Canada Office # +1416-509-1935, Bangladesh Office # +88 019 1171 8043', 'Canada Office # +1416-509-1935, Bangladesh Office # +88 019 1171 8043'),
(11, 1, '2023-05-01 06:10:16', '2023-05-01 06:17:31', 3, 'Residential Pest Control in Toronto', 'residential-pest-control-in-toronto', 'We offers year-round defense against more than 15 of the most prevalent home pests. You can count on us to take care of any pest issues you may have throughout the year at no additional expense to you.\r\n\r\nThe interior and exterior of your property will be carefully inspected during our initial visit in order to look for any present infestations or possible entry points. On our second visit, we\\\'ll take care of any infections and offer precautions.', ''),
(12, 1, '2023-05-01 06:16:00', '2023-05-17 04:48:50', 2, 'OUR MISSION', 'our-mission', 'Responsible for the future immigration dreams of our clients, our mission is to provide practical solutions and legal support to anyone wanting to come to Canada.', ''),
(13, 1, '2023-05-01 06:20:59', '2023-05-17 04:49:23', 2, 'OUR COMMITMENT', 'our-commitment', 'We work with our clients to obtain their Visa to Canada. We will communicate the status of their application and help solve their problems so their case is a success.', ''),
(14, 1, '2023-05-01 06:26:40', '2023-05-17 04:53:05', 2, 'OUR SERVICE', 'our-service', 'Begin Your Immigration To Canada TODAY', ''),
(15, 1, '2023-05-01 06:34:43', '2023-05-17 04:41:21', 2, 'Have any question? Give us a call', 'have-any-question-give-us-a-call', '416-686-7713', '416-686-7713'),
(16, 1, '2023-05-10 03:08:00', '2023-05-10 03:08:00', 2, 'Fax No', 'fax-no', '767-767-988', ''),
(17, 1, '2023-05-10 03:20:20', '2023-05-10 03:20:20', 2, 'top Header Address', 'top-header-address', '2942 Danforth Avenue, Toronto, ON M4C 1M5', ''),
(18, 1, '2023-05-10 03:51:18', '2023-05-10 03:51:18', 2, 'Toll Free No', 'toll-free-no', '+1 (416) 686 7713', ''),
(19, 1, '2023-05-17 19:25:43', '2023-05-17 19:25:43', 2, 'Guide To The Visa Application', 'guide-to-the-visa-application', 'HOW WE HELP CLIENTS', ''),
(20, 1, '2023-05-17 19:47:30', '2023-05-29 06:48:23', 2, 'OUR EXPERT TEAM', 'our-team', 'OUR EXPERT TEAM', ''),
(21, 1, '2023-05-17 21:36:56', '2023-05-21 23:57:29', 2, 'WHAT OUR CLIENTS ARE TALKING', 'what-our-clients-are-talking', 'Trusted by more than 4,200 customers', ''),
(22, 1, '2023-05-17 21:38:43', '2023-05-17 22:12:46', 2, 'About us', 'about-us-title', 'About us', ''),
(23, 1, '2023-05-17 22:15:41', '2023-06-17 05:06:36', 2, 'Canadian Immigration Lawyer', 'canadian-immigration-lawyer', '<p class=\\\"text-color\\\"> Immigrating to Canada can be a life-changing opportunity, but the immigration process can be complex and overwhelming. To ensure a smooth and successful journey, it is advisable to seek the expertise of a Canadian immigration lawyer. A Canadian immigration lawyer is a legal professional with specialized knowledge and experience in immigration law, who can provide invaluable guidance, support, and representation throughout the immigration process. In this article, we will explore the role of a Canadian immigration lawyer and the benefits they offer to individuals aspiring to move to Canada. </p>\r\n<br>', '<h5><p>Understanding the Role of a Canadian Immigration Lawyer: </p></h5>\r\n<p class=\\\"text-color\\\"> A Canadian immigration lawyer is well-versed in the ever-changing immigration laws, policies, and procedures of Canada. They possess a deep understanding of the Canadian legal system and can assist individuals in various immigration matters, including: </p>\r\n<ul class=\\\"list\\\"><li>Immigration Applications: A Canadian immigration lawyer can guide you through the process of applying for visas, work permits, study permits, permanent residency, and citizenship. They will ensure that all the required documentation is properly prepared, submitted, and meet the stringent requirements set by the immigration authorities.</li><li>Legal Advice: Immigration lawyers provide expert advice tailored to your specific circumstances. They can assess your eligibility for various immigration programs and help you choose the most suitable path based on your goals and qualifications. Their knowledge and experience allow them to anticipate potential issues and provide strategies to overcome them.</li><li> Appeals and Hearings: In case of a visa refusal, an immigration lawyer can help you navigate the appeal process and represent you at hearings or tribunals. They will analyze the reasons for the refusal and work to strengthen your case, increasing the chances of a successful outcome. </li><li>Sponsorship and Family Reunification: If you wish to sponsor a family member for immigration to Canada, an immigration lawyer can guide you through the sponsorship process, ensuring compliance with all legal requirements. They can assist with spousal sponsorships, parent and grandparent sponsorships, and other family reunification programs.</li></ul>\r\n<h5><p>Benefits of Hiring a Canadian Immigration Lawyer:</p></h5>\r\n<ul class=\\\"list\\\"><li>Expertise and Knowledge: Immigration lawyers have an in-depth understanding of Canadian immigration law, policies, and regulations. They stay updated with the latest changes, ensuring that your application is accurate, complete, and meets the necessary criteria.</li><li>Personalized Guidance: Each immigration case is unique, and an immigration lawyer will provide tailored advice based on your specific circumstances. They will evaluate your eligibility, explain available options, and develop a customized strategy to maximize your chances of success.</li><li> Documentation and Application Assistance: Applying for Canadian immigration requires meticulous preparation and submission of various documents. An immigration lawyer will help you compile and organize the necessary paperwork, ensuring accuracy and completeness to avoid delays or rejections. </li><li>Legal Representation: If your case requires attending hearings or appeals, an immigration lawyer will represent you, providing a strong legal argument and advocating for your rights. Their expertise and familiarity with the legal system will significantly enhance your chances of a favorable outcome.</li></ul>\r\n<p class=\\\"text-color\\\"> Navigating the Canadian immigration process can be complex, but with the support and expertise of a Canadian immigration lawyer, you can greatly improve your chances of success. From application preparation to legal representation, an immigration lawyer will guide you through the intricate process, offering personalized advice and ensuring compliance with immigration laws. By hiring a Canadian immigration lawyer, you can embark on your immigration journey with confidence, knowing that you have a trusted legal professional by your side. </p>'),
(24, 1, '2023-05-17 22:23:05', '2023-05-21 07:17:22', 2, 'Best Immigration and Legal Services in Toronto', 'best-immigration-and-legal-services-in-toronto', 'Canadian immigration lawyer', 'Best Immigration and Legal Services in Toronto.'),
(25, 1, '2023-05-23 00:13:07', '2023-05-23 00:13:07', 2, 'Your Immigration to Canada', 'your-immigration-to-canada', 'Your Immigration to Canada', 'Your Immigration to Canada'),
(26, 1, '2023-05-23 00:13:57', '2023-06-21 05:09:33', 2, 'Immigration Page Content', 'immigration-page-content', '<p class=\\\"text-color\\\">Individuals intending to move to Canada have access to more than 60 Canadian immigration programs. Our all-encompassing examination approach determines your eligibility in ALL categories.  It can be difficult to choose the right Canadian immigration category for your circumstances.  Fill out our free evaluation form to have your qualifications evaluated against all Canadian immigration streams.\r\n\r\nObtaining Canadian permanent resident status is the first step in obtaining Canadian citizenship. A Canada Permanent Resident Card, similar to a \\\"Green Card\\\" in the United States, will allow you to work and live in Canada. Filling out our assessment form is the best method to find out if you qualify for Canadian Permanent Residency through one of Canada\\\'s several immigration programs. Our Canadian immigration team will thoroughly review your application. </p>', ''),
(27, 1, '2023-05-23 05:12:29', '2023-05-23 05:12:29', 2, 'Immigration Assessment', 'immigration-assessment', 'Immigration Assessment', 'Immigration Assessment'),
(28, 1, '2023-05-23 06:09:26', '2023-05-23 06:09:26', 2, 'We Are Ready To Provide You Legal & Consultation Services', 'we-are-ready-to-provide-you-legal-and-consultation-services', 'We Are Ready To Provide You Legal & Consultation Services', 'We Are Ready To Provide You Legal & Consultation Services'),
(29, 1, '2023-05-23 06:15:48', '2023-06-15 05:55:36', 2, 'Legal Services Content', 'legal-services-content', '<p class=\\\"text-color\\\">When he founded our firm, we had a simple philosophy: treat each immigration, citizenship, or refugee (immigration) case as if it were your own life. Our outcomes reflect our dedication and enthusiasm. We see hundreds of clients each year and take pride in the thoroughness of our immigration consultations. We use a team approach to immigration case reviews in order to collect as much pertinent information as possible in order to give our clients with inexpensive, effective, and long-term immigration solutions. </p>\r\n<h4><b>Our Service Fees</b></h4>\r\n<p class=\\\"text-color\\\">We take considerable care at CILSI to uphold the legal concept of equal access to justice. Our pricing reflect the high quality of our work, and we make every effort to keep our rates affordable for our clients.\r\n\r\nOur fees will vary depending on the type and complexity of your immigration case, as well as the number of immigration petitions that must be filed on your behalf. Specific fees will be provided after your case is carefully evaluated during the immigration case examination. </p>\r\n<br>', '<h4><b> Affidavits, Declarations, and Documents Attestations </b></h4>\r\n<p class=\\\"text-color\\\">As a Notary Public and Commissioner of Oath, we can provide Affidavits, Declaration, and Document Attestation services for our clients. An Affidavit or Declaration is a legal document that lists several statements that an individual swears upon to be true in front of a notary and can be used as evidence in court or other purposes like obtaining your Visa & Passport or copies of them. Before an Affidavit, Declaration, or Document is signed, it must be brought to a Notary Public and an oath must be taken. We will notarize your Affidavit. Declaration, or Attesting Document and administer oaths as required.</p>\r\n<h4><b> Ontario Court of Justice</b></h4>\r\n<p class=\\\"text-color\\\"> As a registered paralegal with the Law Society of Ontario, we also provide attorney or representation services for lower court claims and administrative tribunals. We provide legal assistance in the following related cases: </p>\r\n<div class=\\\"flex\\\">\r\n<div><ul class=\\\"list\\\"><li>Passport or Visa Denial </li><li>Landlord & Tenant Matters</li><li>Personal Injury (SABS)</li><li>Immigration Appeals</li></ul> </div> \r\n<div><ul class=\\\"list\\\"><li>Motor Vehicle Accident (SABS) </li> <li>Punitive Detention Review & Release</li> <li> Humanitarian and Compassionate (H&C) </li> <li>Inadmissibility</li> </ul> </div>\r\n</div>\r\n<p class=\\\"text-color\\\">For more information about immigration appeals or inadmissibility, click HERE. </p>'),
(30, 1, '2023-05-23 07:19:45', '2023-05-23 07:19:45', 2, 'Fingerprints - The Canadas Biometrics Visa Requirements', 'fingerprints--the-canadas-biometrics-visa-requirements', 'Fingerprints One of The Canadas Biometrics Visa Requirements', 'Fingerprints One of The Canadas Biometrics Visa Requirements'),
(31, 1, '2023-05-23 07:25:51', '2023-06-25 05:50:45', 2, 'Fingerprint Content', 'fingerprint-content', '<p class=\\\"text-color\\\">Because of Canada\\\'s enhanced biometrics regulations, anyone applying for a guest visa, work or study permit, permanent residence visa, or claiming refugee/asylum status must first determine whether they are required to provide biometrics (fingerprints and a photo).\r\nThe collecting of biometric data allows the Government of Canada to process applications more efficiently and simplify the entry of low-risk visitors into Canada.\r\n</p>\r\n<h4 class=\\\"h-edit\\\"><b>YOUR RESPONSIBLE FINGERPRINTING COMPANY IN TORONTO & SCARBOROUGH</b></h4>\r\n<p class=\\\"text-color\\\">We are an RCMP accredited fingerprinting agency proudly serving our customers in Toronto with digital and traditional fingerprinting services.</p>\r\n<br>', '<h4 class=\\\"h-edit\\\"><b>Digital Fingerprint Services in Danforth, Toronto </b> </h4>\r\n<p class=\\\"text-color\\\"> We provide digital or ink and roll fingerprinting services to clients that require a Certified Criminal Record Check or Police Clearance from RCMP Canada for the following purposes: </p>\r\n<div class=\\\"flex\\\">\r\n<div><ul class=\\\"list\\\"><li>Immigration</li><li>Permanent Residency (PR)</li><li>Foreign Visa, Travel, and Work Permit</li><li>Citizenship</li> <li>Criminal Background Check </li><li>Employment (Private Industry, Corporate, Agency, Federal, Provincial, Police)</li> <li>Controlled Goods </li> <li>Other Civil Purposes</li></ul> </div> \r\n<div><ul class=\\\"list\\\"><li>Pardon (Record Suspension) </li> <li>Security Clearances</li> <li> Contracts, Licenses, and Licensing </li> <li>Privacy Act Request</li> <li>Volunteer Employment </li> <li>Name Change </li> <li>Adoption </li></ul> </div>\r\n</div>\r\n<h4 class=\\\"h-edit\\\"><b>Criminal Record Checks </b></h4>\r\n<p class=\\\"text-color\\\"> A Criminal Record Check is required to determine if you have been charged or convicted of a crime. The use of fingerprints provides the most accurate way to confirm a person’s identity and is often required for employment or immigration purposes to ensure you have no previous criminal record. </p>\r\n<h4 class=\\\"h-edit\\\"><b>Why Choose Us? </b> </h4>\r\n<p class=\\\"text-color\\\"> We provide our services on behalf of RCMP Canada and comply with municipal, provincial, and federal privacy protection laws. We will submit your fingerprints directly to the RCMP’s Canadian Criminal Real Time Identification Services (CCRTIS) for processing. Our fees are competitive and reasonable. There may be a $25 federal processing fee applied under certain conditions which you can find HERE or contact us to find out.\r\n\r\nWhen visiting our office, please bring two forms of valid IDs. We accept the following identifications:\r\n</p>\r\n<div class=\\\"flex\\\">\r\n<div><ul class=\\\"list\\\"><li>Passport</li><li>Driving License </li><li> Valid Health Card</li><li> Birth Certificate</li> <li>Government ID</li></ul> </div> \r\n<div><ul class=\\\"list\\\"><li>Citizenship Card</li><li>Permanent Resident Card </li><li> Work Permit </li><li> Study Permit </li> <li>Other Valid Forms of ID</li></ul> </div>\r\n</div>'),
(32, 1, '2023-05-31 04:11:09', '2023-05-31 04:11:08', 2, 'Services we provides', 'services-we-provides', 'Having and managing a correct strategy for migration is crucial in a immigration.', 'Having and managing a correct strategy for migration is crucial in a immigration.'),
(33, 1, '2023-06-14 01:35:56', '2023-06-17 00:53:19', 2, 'Immigration Program', 'immigration-program', '<p class=\\\"text-color\\\">Planning on immigrating to Canada? If so, you have come to the right place. Canada provides a variety of immigration options including Express Entry, Family Sponsorship, and Refugee Claim. Find out which option you are eligible for before getting a professional assessment. </p>\r\n<br>', '<h4><b>Express Entry</b></h4>\r\n<p class=\\\"text-color\\\"> Express Entry is considered the fastest and easiest way to immigrate to Canada. To qualify for the Express Entry system, you must be eligible for one of three immigration programs. These options include: </p>\r\n <ul class=\\\"list\\\"> <li>The Federal Skilled Worker Program</li><li>The Federal Skilled Trades Program, or</li><li>The Canadian Experience Class Program</li></ul>\r\n<h5><p>The Federal Skilled Worker Program Requirements:</p></h5>\r\n<ul class=\\\"list\\\"><li>Minimum 1 year of continuous paid work experience (1,560 hours total) in the last 10 years OR secured a permanent job offer in Canada </li><li>Meet the skill level of 0, A or B in the National Occupational Classification.</li><li>Minimum language proficiency score in English or French of CLB 7</li><li>Proof of funds to be able to settle in Canada</li></ul>\r\n<p class=\\\"text-color\\\"> In addition to the above requirements, you must be able to score a minimum of 67 points which is given based on several factors. These factors include:</p>\r\n<ul class=\\\"list\\\"> <li>Language Ability </li><li>Education History </li><li>Work Experience </li><li>Age </li><li>Having a Permanent Job Offer in Canada</li><li>Other Factors</li>\r\n<h5><p>The Federal Skilled Trades Program Requirements </p></h5>\r\n<ul class=\\\"list\\\"><li>Minimum 2 years of full-time work experience in a skilled trade within the last 5 years</li><li>Minimum language proficiency score in English or French of CLB 5 for speaking and CLB 4 for reading</li><li>Received an offer of employment for at least 1-year full-time work duration OR obtain a Certificate of Qualification in the specified trade by a provincial or territorial government in Canada</li><li>Be able to perform the job requirements as described in the National Occupational Classification (NOC)</li></ul>\r\n<p class=\\\"text-color\\\">The type of jobs considered eligible for this program as classified under NOC include: </p>\r\n<ul class=\\\"list\\\"><li>Industrial, electrical and construction trades</li><li>Maintenance and equipment operation trades</li><li>Supervisors and technical jobs in natural resources, agriculture and related production</li><li>Processing, manufacturing and utilities supervisors and central control operators</li><li>Chefs and cooks</li><li>Butchers and bakers</li></ul>\r\n<h5><p>The Canadian Experience Class Program Requirements: </p></h5>\r\n<p class=\\\"text-color\\\">The Canadian Experience Class (CEC) is an express entry program that allows temporary foreign workers and international students who hold valid visas in Canada the ability to apply for permanent residency after completing the following conditions:</p>\r\n<ul class=\\\"list\\\"><li>If applying under a Temporary Work Visa; 2 years of full-time work experience in Canada or as a student; 1 year of full-time work experience after graduating from a Canadian DIL</li><li>Worked in a Managerial, Professional, or Skilled and Technical job</li><li>Achieved the requisite English or French language proficiency benchmark</li><li>Apply within 1 year after completing your employment term in Canada</li> </ul>\r\n<p class=\\\"text-color\\\">Once an applicant is successfully accepted into one of these programs, they will need to undergo a final medical examination and obtain a security clearance after receiving their Invitation to Apply (ITA). If you need a security clearance, please contact us as we can provide you this service. </p>\r\n<h4><b>Family Sponsorship</b></h4>\r\n<p class=\\\"text-color\\\"> The Canadian government allows for citizens of Canada or permanent residents (PR) to sponsor family members. Eligible family members includes: </p>\r\n<ul class=\\\"list\\\"><li>Brother, Sister, Relatives</li><li>Spouse</li><li>Common-Law Partner</li><li>Conjugal Partner</li><li>Dependent Children</li><li>Parents / Grandparent</li></ul>\r\n<h4><b>Refugee Claim & Hearing</b></h4>\r\n<p class=\\\"text-color\\\">Depending on your situation, it may be possible to immigrate to Canada with Refugee status. You must be able to prove that: </p>\r\n<ul class=\\\"list\\\"><li>Your life is in danger from persecution; or</li><li>Your life is being threatened due to circumstances</li></ul>\r\n<p class=\\\"text-color\\\"> Whichever the situation, we are one of the few that offers to take your case to court and testify to help you.</p>'),
(34, 1, '2023-06-14 06:52:33', '2023-06-19 00:14:56', 2, 'Business Visa', 'business-visa', '<p class=\\\"text-color\\\">Planning on visiting Canada to meet your family or for vacation? A Visitor Visa will provide you temporary admission into Canada. Depending on your situation, you may apply through one of the following methods such as a Tourist Visa or Temporary Resident Visa, Super Visa, or Business Visitor Visa. Information about work permits can be found here: https://todaysimmigration.ca/service/temporary-work-visa/ </p>\r\n<br>', '<h4><b>Business Visa</b></h4>\r\n<p class=\\\"text-color\\\">Planning on doing business in Canada? This area of immigration is for those with business acumen and high net worth investors. Canada provides business immigration options for investors, individuals intending self-employment, start-up businesses, and more.\r\n\r\nThe various entrepreneur and self-employed programs are aimed at individuals with mid-range income who intend to operate and manage their business in Canada. In comparison, the investor program does not have an obligation to establish a physical business in Canada. This investment is passive but very costly. To know more about Canada Business and Investment Immigration, please contact us.</p>\r\n<h4><b>Federal Business Immigration</b></h4>\r\n<p class=\\\"text-color\\\">Federal Business Immigration Programs are designed for mid-sized business owners and high net worth investors who are considered economic immigrants. To qualify, you must meet certain criteria for any of the Federal Business Immigration programs. These options include:</p>\r\n<ul class=\\\"list\\\"><li>The Federal Investor Program</li><li>The Federal Venture Capital Program</li><li>The Federal Self-Employed Program</li><li>The Federal Startup Visa</li></ul>\r\n<h4><b>Provincial Nominee Business Programs (PNP) Immigration</b></h4>\r\n<p class=\\\"text-color\\\">Each province of Canada has their own application procedure if you are intending on becoming a Permanent Resident. The difficulty in meeting the criteria depends on the province selected. We will provide consultation on which province is most suitable for your case based on your needs. PNP options include: </p>\r\n<ul class=\\\"list\\\"> <li>The Provincial Investors Nominee Program</li><li>The Provincial Entrepreneur Nominee Program</li> </ul>\r\n<h4><b>Quebec Business Immigration</b></h4>\r\n<p class=\\\"text-color\\\">The province of Quebec has their own unique set of policies and business immigration programs aimed at attracting investors and businesses. These unique programs might be more favorable depending on your situation and best advised to contact us directly. The Quebec Business Immigration programs include: </p>\r\n<ul class=\\\"list\\\"> <li>The Quebec Investor Program</li><li>The Quebec Entrepreneur Program</li> <li>The Quebec Self-Employed Business Program</li></ul>'),
(35, 1, '2023-06-14 07:31:40', '2023-06-19 00:17:23', 2, 'Visitor Visa', 'visitor-visa', '<p class=\\\"text-color\\\">Planning on visiting Canada to meet your family or for vacation? A Visitor Visa will provide you temporary admission into Canada. Depending on your situation, you may apply through one of the following methods such as a Tourist Visa or Temporary Resident Visa, Super Visa, or Business Visitor Visa. Information about work permits can be found here: https://cilsi.skitsbd.com/</p>\r\n<br>', '<h4><b>Tourist Visa / Temporary Resident Visa</b></h4>\r\n<p class=\\\"text-color\\\"> A tourist visa or a temporary resident visa (TRV) will allow you to visit Canada as a tourist for temporary and vacation purposes. Applicants may visit Canada for 6 months after which they are eligible to renew their Visa for another 6 months. To be eligible for a tourist visa, you must prove: </p>\r\n<ul class=\\\"list\\\"><li>Your intention is to return after your temporary stay</li><li>You have the finances to support your stay</li><li>Possess up-to-date travel documents</li><li>You meet the criminal and medical requirements</li> <li>Visitors have no intention to work or study </li></ul>\r\n<h4><b>Super Visa</b></h4>\r\n<p class=\\\"text-color\\\">The super visa is intended to give citizens or permanent residents (PR) of Canada the ability to sponsor their parents and grandparents to live permanently in Canada. The super visa is valid for 10 years with a renewal period of 2 years at a time. To be eligible for a super visa, you must prove: </p>\r\n<ul class=\\\"list\\\"><li>Valid documentations (criminal, travel, medical, etc)</li><li>Visitors have NO intention to work or study</li><li>Meet private medical coverage requirements</li><li>Financial responsibility obligations from the sponsor</li></ul>\r\n<h4><b>Business Visitor Visa</b></h4>\r\n<p class=\\\"text-color\\\">This section covers business visitor visas for work-related travel and investors. In order to be eligible for a business visitor visa, you must prove: </p>\r\n<ul class=\\\"list\\\"><li>You are visiting Canada for work-related purposes</li><li>Your intention is NOT to enter the job market</li><li>You meet the required conditions to visit and stay</li><li>Your main source of income resides outside of Canada</li></ul>'),
(36, 1, '2023-06-14 07:59:24', '2023-06-19 00:18:53', 2, 'Citizenship', 'citizenship', '<h2><b>Citizenship Program</b></h2>\r\n<p class=\\\"text-color\\\"> Obtaining your citizenship status is an excellent choice if you plan on living in Canada. Whether it’s permanent residency or Canadian citizenship, you must prove your status in Canada to be able to travel in and outside the country and apply for benefits such as free health care and government-funded financial aid. Depending on your situation, you may apply for one of the following options:</p>\r\n<br>', '<h4><b>Canadian Citizenship</b></h4>\r\n<p class=\\\"text-color\\\"> Becoming a Canadian citizen will provide you with all the rights and privileges Canada has to offer–and there are many in terms of finances and mobility. If you already hold citizenship in another country, do not worry! Canada offers dual-citizenship so you will not need to forfeit your prior one. Core requirements include: </p>\r\n<ul class=\\\"list\\\"><li>3 years of permanent residency</li><li>Language proficiency in English or French</li><li>No serious criminal offenses, and more</li></ul>\r\n<h4><b> Permanent Residence (PR) Card Renewal </b></h4>\r\n<p class=\\\"text-color\\\">A Permanent Resident (PR) Card is proof of your Canadian status and can be renewed to extend your PR upon expiration. You may be required to apply for a renewal if:</p>\r\n<ul class=\\\"list\\\"><li>PR card is expired or will expire in less than 9 months;</li><li>You didn’t receive your PR card within 180 days of immigrating to Canada;</li><li>PR card has been lost, stolen, or destroyed; or</li><li>You legally changed your name</li></ul>\r\n<h4><b> Humanitarian & Compassionate (HC)</b></h4>\r\n<p class=\\\"text-color\\\">In special cases, you can apply for Permanent Resident (PR) status through Humanitarian & Compassionate (HC) if you have been living in Canada for at least 3 years with no status. This method of immigration is very circumstantial and requires substantial evidence supporting your reason to stay in Canada despite not qualifying through other immigration programs and may take several years to process. HC cases are generally granted if there are reasons to believe issues involving: </p>\r\n<ul class=\\\"list\\\"><li>Families and or children</li><li>Other substantial circumstantial evidence</li><li>It indicates a high probability of undue harm to the applicant should he/she be moved back to their home country.</li></ul>\r\n<p class=\\\"text-color\\\">In order to succeed in H&C cases, the candidate must typically demonstrate good behaviors in Canada such as employment background, community integration/involvement (ex. volunteering), & financial responsibility.</p>'),
(37, 1, '2023-06-14 08:23:27', '2023-06-19 00:19:59', 2, 'Temporary Work Visa', 'temporary-work-visa', '<h2><b>Work Permit & LMIA</b></h2>\r\n<p class=\\\"text-color\\\">Intend on working in Canada? Before you can start working and earning income from an employer in Canada as a foreigner worker, you must first obtain your work permit & Labour Market Impact Assessment (LMIA). Depending on your situation, you may apply through one of the following methods: </p>\r\n<br>', '<h4><b>Temporary Work Permit</b></h4>\r\n<p class=\\\"text-color\\\">In order to work in Canada as a foreign worker, you must obtain a Temporary Work Permit. This permit will allow you to work legally and earn an income in Canada. The employer that hires a foreign worker is responsible for completing a LMIA. Alternatively, those with an Open Work Permit are not required to submit a LMIA on behalf of their employer. To obtain an Open Work Permit, you must be a spouse or common-law partner or dependent child of: </p>\r\n<ul class=\\\"list\\\"><li>A worker who is approved to work in Canada for six months or longer and performs a high-skill job; or</li><li>A student who is enrolled in full-time studies at a DLI under student visa status</li></ul>\r\n<h4><b>High Wage / Low Wage LMIA </b></h4>\r\n<p class=\\\"text-color\\\">An employer can hire a foreign worker by offering to pay a low or high wage depending on the supply of workers qualified to do that job in Canada. A positive LMIA indicates there is a need for the foreign worker and the employer must pay at or above the median wage (high wage). Otherwise, the foreign worker may be hired at a wage below the provincial median wage (low age).</p>\r\n<ul class=\\\"list\\\"><li>The employer must: complete the LMIA;</li><li>Prove no available applicants domestically</li></ul>\r\n<h4><b>High Wage / Low Wage LMIA </b></h4>\r\n<p class=\\\"text-color\\\">Express Entry is considered the fastest and easiest way to immigrate to Canada. To qualify for the Express Entry system, you must be eligible for one of three immigration programs. These options include: </p>\r\n<ul class=\\\"list\\\"><li>The Federal Skilled Worker Program</li><li>The Federal Skilled Trades Program, or</li> <li>The Canadian Experience Class</li></ul>\r\n<p class=\\\"text-color\\\">For more information, see our immigration programs HERE. </p>'),
(38, 1, '2023-06-14 08:52:58', '2023-06-19 00:25:34', 2, 'Student Visa', 'student-visa', '<p class=\\\"text-color\\\">Interested in studying abroad? Canada’s education system is among the best in the world. No matter what your age is, many colleges and universities in Canada welcome international students and offer a wide range of courses and programs students can take to excel in their careers. Becoming a Canadian student may also benefit you if you intend to immigrate to Canada in the future under the Canadian Experience Class program. The following options are available to international students who want to study in Canada. </p>\r\n<br>', '<h4><b>Canadian Study Permit </b></h4>\r\n<p class=\\\"text-color\\\"> In order to qualify for a student visa, you must apply to a Designated Learning Institution (DLI) and have received your acceptance letter for a particular course or program. The additional requirements are as follows: </p>\r\n<ul class=\\\"list\\\"><li>Proof of funds to pay for the tuition fees and living expenses during the period of study</li><li>Have intentions to return to your home country after completing the specified study purpose</li><li> Must be a law-abiding citizen with no criminal record and not be a risk to the security of Canada. </li> <li>Must be in good health and may be required to complete a medical examination.</li></ul>\r\n<p class=\\\"text-color\\\"> International students with student visa status are granted the ability to work and make an income for a maximum of 20 hours per week off-campus during their study semester but may work full-time during the study breaks. Alternatively, students may work on-campus for any duration. Under these conditions, you do NOT need a work permit.\r\n\r\nStudents successful in obtaining student visa status are allowed to bring their spouse, common-law partner, or dependent children to Canada during the duration of the visa. They will also obtain an Open Work Permit which grants them the ability to work for any employer in Canada and make an income without having to file an LMIA. More information can be found HERE.\r\n\r\nStudents may also extend their student visa status once their original study purpose concludes but must apply 30 days in advance. In the event that you lose your student visa status (ex. failing to meet the conditions specified under the study permit), you will be arrested and sent back to your country of origin unless you restore your status within 90 days.</p>\r\n<h4><b> Co-op/Internship Work Permit </b></h4>\r\n<p class=\\\"text-color\\\"> For students who intend to complete a co-op or Internship program at their Designated Learning Institution (DLI), they must also acquire a Co-op/Internship Work Permit which informs the government that the student will be working under a student visa status to fulfill their study purpose. The following conditions apply to be eligible for a Co-op/Internship Work Permit. </p>\r\n<ul class=\\\"list\\\"><li>Currently have student visa status or a valid study permit\r\n</li><li>The co-op/internship program has been authorized by the DLI</li><li> The co-op/internship is required to fulfill the program requirements specified under the study permit</li> <li>The duration of employment must not exceed 50% of the total study program</li> <li> The discipline of study is not primarily English or French or other general interest programs </li></ul>\r\n<p class=\\\"text-color\\\"> The co-op/internship program is greatly beneficial for international students who intend to immigrate to Canada under the Canadian Experience Class (Express Entry) program which grants Permanent Residency to those who have graduated from a Canadian DLI and have at least 1 year of full-time work experience.</p>\r\n<h4><b> Post-Graduate Student Work Permit</b></h4>\r\n<p class=\\\"text-color\\\"> Upon graduating from a Canadian DLI, students may extend their student visa status by obtaining a post-graduate student work permit which is an Open Work Permit that allows them to work in Canada in any job for a maximum of 3 years. Similar to the co-op/intern work permit, this permit is greatly beneficial for those who intend to immigrate to Canada under the Canadian Experience Class (Express Entry) program. The following conditions apply for a post-graduate student work permit: </p>\r\n<ul class=\\\"list\\\"><li>You have or will be graduating from an eligible program at a Canadian DLI where you have completed full-time studies for at least 8 months prior to your application</li><li>Must apply within 90 days of receiving confirmation of successful completion of the academic program and notified of receiving your diploma, degree, or certificate</li><li> Currently hold a valid study permit</li></ul>\r\n<h4><b> Canadian Experience Class (Express Entry)</b></h4>\r\n<p class=\\\"text-color\\\">The Canadian Experience Class (CEC) is an express entry program that allows temporary foreign workers and international students who hold valid visas in Canada the ability to apply for permanent residency after completing the following conditions: </p>\r\n<ul class=\\\"list\\\"><li>If applying under a Temporary Work Visa; 2 years of full-time work experience in Canada or as a student; 1 year of full-time work experience after graduating from a Canadian DIL</li><li>Worked in a Managerial, Professional, or Skilled and Technical job</li><li> Achieved the requisite English or French language proficiency benchmark</li> <li> Apply within 1 year after completing your employment term in Canada </li></ul>\r\n<p class=\\\"text-color\\\"> Once an applicant is successfully accepted into this program, they will need to undergo a final medical examination and obtain a security clearance after receiving their Invitation to Apply (ITA). If you need a security clearance, please contact us as we can provide you this service. </p>'),
(39, 1, '2023-06-14 09:47:31', '2023-06-19 00:31:49', 2, 'Immigration Appeal Hearing', 'immigration-appeal-hearing', '<p class=\\\"text-color\\\">We represent you in the Federal Court of Canada or Immigration Appeal Division (IAD) and at other Hearings and Appeals. We are experienced in helping people with any appeal issue as Federal Court or Immigration Appeal Division (IAD). People have the right to appeal and for judicial review within a certain time limit.</p>\r\n<br>', '<h4><b>Any kind of refusal or any complex situations include: </b> </h4>\r\n<ul class=\\\"list\\\"><li>Spousal Sponsorship Refusals: Refusals happen when the visa officer may not believe the marriage or common-law relationship is genuine.</li><li>Residency Appeals: When an Immigration Officer believes that a Permanent Resident has not met his/her residency obligations. In this case, Humanitarian and Compassionate factors may be considered.</li><li>Skilled Worker Refusal: In some cases, Skilled Workers applications can be refused due to inaccurate assessments of education, language skills, work experience, settlement funds, or other factors due to poor documentation, or an unsuccessful interview.</li><li>Business Immigrants refusals: When an officer has determined that the applicant does not have required business experience or could not prove the evidence of proper fund that obtained in a legal way.</li> <li> Entrepreneur Condition Removals: When an officer has determined that you could not manage the business in a proper way or you didn’t invest properly within the 2 or 3-year time frame then you could be ordered deported. We can often negotiate and make an appeal on behalf of you for an extension of time to comply.</li></ul>\r\n<p class=\\\"text-color\\\"> If you confront any of these circumstances and want to get a consultation for removal or deportation and wish to discuss the refusal of an Immigration Application, please feel free to contact us.</p>\r\n<ul class=\\\"list\\\"><li>Medical Inadmissibility refusals: In the case of medical and inadmissibility refusals, usually an Immigration Officer determines the applicant would be a danger to public health safety or would cause undue demands on Canada’s health or social services. These decisions may be challenged, and there may be lying Humanitarian and Compassionate factors that should be considered in the appeal.</li><li>Criminal Inadmissibility: When an Officer has determined that you have committed, or are likely to commit, particular criminal offenses inside or outside of Canada, it is called criminally inadmissible. There are some ways for a person to overcome a finding of criminal inadmissibility. Humanitarian and Compassionate factors may be taken into consideration in an appeal. In this regard, we help people to overcome these bindings.</li></ul>'),
(40, 1, '2023-06-17 01:05:41', '2023-06-17 05:18:45', 2, 'Canadian Immigration Visa', 'canadian-immigration-visa', '<p class=\\\"text-color\\\"> Canada is renowned for its inclusive society, thriving economy, and high standard of living, making it an attractive destination for individuals seeking new opportunities and a better quality of life. If you are considering immigrating to Canada, understanding the Canadian immigration visa system is crucial. In this article, we will explore the Canadian immigration visa and its significance in realizing your dreams of living and working in Canada. </p>\r\n<br>', '<h5><p>What is a Canadian Immigration Visa? </p></h5>\r\n<p class=\\\"text-color\\\"> A Canadian immigration visa, also known as a permanent resident visa, grants individuals the right to live, work, and study in Canada permanently. It signifies that the Canadian government has deemed them eligible to contribute to the country\\\'s economic growth and multicultural fabric. Holding a Canadian immigration visa opens up a plethora of benefits and opportunities for immigrants and their families.  </p>\r\n<h5><p>Types of Canadian Immigration Visas:</p></h5>\r\n<ul class=\\\"list\\\"><li>Express Entry System: The Express Entry system is a popular pathway for skilled workers to obtain Canadian immigration visas. It is a points-based system that assesses candidates based on factors such as age, education, work experience, language proficiency, and adaptability. Successful candidates are placed in the Express Entry pool and may be invited to apply for permanent residency through federal economic programs like the Federal Skilled Worker Program, Federal Skilled Trades Program, or Canadian Experience Class.</li><li>Provincial Nominee Programs (PNPs): Canadian provinces and territories have their own PNPs, which allow them to nominate individuals who possess skills and qualifications in demand in their respective regions. PNPs offer an alternative route to Canadian immigration visas, providing opportunities for individuals with specific skills or connections to a particular province or territory.</li><li> Family Sponsorship: Canadian citizens and permanent residents have the opportunity to sponsor their eligible family members to immigrate to Canada. The Family Class sponsorship program includes spouses, common-law partners, dependent children, parents, and grandparents. By sponsoring a family member, individuals can reunite with their loved ones and help them establish a new life in Canada.</li><li>Canadian Experience Class: This immigration category targets individuals who have gained work experience in Canada. Candidates who have obtained Canadian work experience, language proficiency, and integration into Canadian society may be eligible to apply for permanent residency through this program.</li></ul>\r\n<h5> <p> Benefits of Canadian Immigration Visa: </p> </h5>\r\n<ul class=\\\"list\\\"><li>Permanent Residency: A Canadian immigration visa grants individuals permanent resident status, allowing them to live, work, or study anywhere in Canada.</li><li>Access to Healthcare and Social Benefits: Canadian permanent residents are entitled to essential healthcare services through the publicly funded healthcare system. They also have access to social benefits, including education, social assistance, and retirement benefits.</li><li> Education Opportunities: Canada boasts world-class educational institutions, and holding a Canadian immigration visa opens doors to quality education for immigrants and their children. Permanent residents may benefit from lower tuition fees and scholarships.</li><li>Path to Canadian Citizenship: After residing in Canada as a permanent resident for a specific period, individuals may have the opportunity to apply for Canadian citizenship, granting them additional rights and privileges.</li></ul>\r\n<p class=\\\"text-color\\\"> Obtaining a Canadian immigration visa is a significant milestone in your journey towards a new life in Canada. It provides individuals with the opportunity to live, work, and contribute to one of the most welcoming and prosperous countries in the world. By understanding the various immigration pathways and requirements, such as the Express Entry system, Provincial Nominee Programs, and family sponsorship, you can embark on your immigration journey with clarity and confidence. A Canadian immigration visa is not just a document; it is your gateway to a brighter future in Canada. </p>');
INSERT INTO `pages` (`pages_id`, `pages_publish`, `created_on`, `last_updated`, `users_id`, `name`, `uri_value`, `short_description`, `description`) VALUES
(41, 1, '2023-06-17 01:07:12', '2023-06-17 05:36:41', 2, 'Work Permit Visa in Canada', 'work-permit-visa-in-canada', '<p class=\\\"text-color\\\"> Canada offers abundant employment opportunities for individuals from around the world, and obtaining a work permit visa is often the first step towards realizing your professional aspirations in the country. A work permit visa allows foreign nationals to work legally in Canada for a specified period, granting them access to the country\\\'s thriving job market and the chance to gain valuable international work experience. In this article, we will explore the ins and outs of obtaining a work permit visa in Canada and the benefits it brings to individuals seeking employment opportunities. </p>\r\n<br>', '<h5><p>What is a Work Permit Visa in Canada? </p></h5>\r\n<p class=\\\"text-color\\\"> A work permit visa is an official document issued by Immigration, Refugees and Citizenship Canada (IRCC) that authorizes foreign nationals to work in Canada. It is generally granted for a specific job, employer, and duration. A work permit visa signifies that the Canadian government has approved an individual\\\'s employment in Canada and ensures compliance with relevant labor laws and regulations. </p>\r\n<h5><p>Types of Work Permits: </p></h5>\r\n<ul class=\\\"list\\\"><li>Employer-Specific Work Permit: This type of work permit is tied to a specific employer in Canada. To obtain an employer-specific work permit, the Canadian employer must first obtain a Labor Market Impact Assessment (LMIA) from Employment and Social Development Canada (ESDC) to demonstrate that hiring a foreign worker will not negatively impact the Canadian labor market.</li><li>Open Work Permit: An open work permit allows foreign workers to work for any employer in Canada, with some exceptions. Open work permits are available in specific situations, such as the Post-Graduation Work Permit for international graduates from Canadian educational institutions or through the Spousal or Common-Law Partner Sponsorship program.</li><li>International Mobility Program: The International Mobility Program includes work permits for individuals who are exempt from the LMIA requirement. These work permits are granted under various international agreements, such as the NAFTA agreement (now CUSMA) or the International Experience Canada (IEC) program, which provides work permits for young adults from specific countries. </li></ul>\r\n<h5><p>Benefits of a Work Permit Visa: </p></h5>\r\n<ul class=\\\"list\\\"><li>Employment Opportunities: A work permit visa opens up a world of employment opportunities in Canada. It allows individuals to gain valuable work experience, develop new skills, and contribute to the Canadian workforce, fostering professional growth and career advancement.</li><li>Canadian Work Experience: Work experience gained in Canada is highly valued by Canadian employers. It can enhance job prospects, open doors to permanent residency options, and provide a pathway to Canadian citizenship.</li><li>Quality of Life: Canada offers a high standard of living, excellent healthcare, and social benefits. With a work permit visa, individuals can enjoy these benefits and access essential services for themselves and their families.</li> <li> Networking and Cultural Exchange: Working in Canada provides opportunities for networking with professionals from diverse backgrounds, fostering cultural exchange and broadening perspectives. </li> </ul>\r\n<p class=\\\"text-color\\\"> A work permit visa in Canada is a valuable document that unlocks a wealth of employment opportunities and professional growth. By meeting the specific requirements and securing a job offer from a </p>'),
(42, 1, '2023-06-17 01:09:03', '2023-06-19 00:42:39', 2, 'Student Visa in Canada', 'student-visa-in-canada', '<p class=\\\"text-color\\\">Interested in studying abroad? Canada’s education system is among the best in the world. No matter what your age is, many colleges and universities in Canada welcome international students and offer a wide range of courses and programs students can take to excel in their careers. Becoming a Canadian student may also benefit you if you intend to immigrate to Canada in the future under the Canadian Experience Class program. The following options are available to international students who want to study in Canada. </p>\r\n<br>', '<h4><b>Canadian Study Permit </b></h4>\r\n<p class=\\\"text-color\\\"> In order to qualify for a student visa, you must apply to a Designated Learning Institution (DLI) and have received your acceptance letter for a particular course or program. The additional requirements are as follows: </p>\r\n<ul class=\\\"list\\\"><li>Proof of funds to pay for the tuition fees and living expenses during the period of study</li><li>Have intentions to return to your home country after completing the specified study purpose</li><li> Must be a law-abiding citizen with no criminal record and not be a risk to the security of Canada. </li> <li>Must be in good health and may be required to complete a medical examination.</li></ul>\r\n<p class=\\\"text-color\\\"> International students with student visa status are granted the ability to work and make an income for a maximum of 20 hours per week off-campus during their study semester but may work full-time during the study breaks. Alternatively, students may work on-campus for any duration. Under these conditions, you do NOT need a work permit.\r\n\r\nStudents successful in obtaining student visa status are allowed to bring their spouse, common-law partner, or dependent children to Canada during the duration of the visa. They will also obtain an Open Work Permit which grants them the ability to work for any employer in Canada and make an income without having to file an LMIA. More information can be found HERE.\r\n\r\nStudents may also extend their student visa status once their original study purpose concludes but must apply 30 days in advance. In the event that you lose your student visa status (ex. failing to meet the conditions specified under the study permit), you will be arrested and sent back to your country of origin unless you restore your status within 90 days.</p>\r\n<h4><b> Co-op/Internship Work Permit </b></h4>\r\n<p class=\\\"text-color\\\"> For students who intend to complete a co-op or Internship program at their Designated Learning Institution (DLI), they must also acquire a Co-op/Internship Work Permit which informs the government that the student will be working under a student visa status to fulfill their study purpose. The following conditions apply to be eligible for a Co-op/Internship Work Permit. </p>\r\n<ul class=\\\"list\\\"><li>Currently have student visa status or a valid study permit\r\n</li><li>The co-op/internship program has been authorized by the DLI</li><li> The co-op/internship is required to fulfill the program requirements specified under the study permit</li> <li>The duration of employment must not exceed 50% of the total study program</li> <li> The discipline of study is not primarily English or French or other general interest programs </li></ul>\r\n<p class=\\\"text-color\\\"> The co-op/internship program is greatly beneficial for international students who intend to immigrate to Canada under the Canadian Experience Class (Express Entry) program which grants Permanent Residency to those who have graduated from a Canadian DLI and have at least 1 year of full-time work experience.</p>\r\n<h4><b> Post-Graduate Student Work Permit</b></h4>\r\n<p class=\\\"text-color\\\"> Upon graduating from a Canadian DLI, students may extend their student visa status by obtaining a post-graduate student work permit which is an Open Work Permit that allows them to work in Canada in any job for a maximum of 3 years. Similar to the co-op/intern work permit, this permit is greatly beneficial for those who intend to immigrate to Canada under the Canadian Experience Class (Express Entry) program. The following conditions apply for a post-graduate student work permit: </p>\r\n<ul class=\\\"list\\\"><li>You have or will be graduating from an eligible program at a Canadian DLI where you have completed full-time studies for at least 8 months prior to your application</li><li>Must apply within 90 days of receiving confirmation of successful completion of the academic program and notified of receiving your diploma, degree, or certificate</li><li> Currently hold a valid study permit</li></ul>\r\n<h4><b> Canadian Experience Class (Express Entry)</b></h4>\r\n<p class=\\\"text-color\\\">The Canadian Experience Class (CEC) is an express entry program that allows temporary foreign workers and international students who hold valid visas in Canada the ability to apply for permanent residency after completing the following conditions: </p>\r\n<ul class=\\\"list\\\"><li>If applying under a Temporary Work Visa; 2 years of full-time work experience in Canada or as a student; 1 year of full-time work experience after graduating from a Canadian DIL</li><li>Worked in a Managerial, Professional, or Skilled and Technical job</li><li> Achieved the requisite English or French language proficiency benchmark</li> <li> Apply within 1 year after completing your employment term in Canada </li></ul>\r\n<p class=\\\"text-color\\\"> Once an applicant is successfully accepted into this program, they will need to undergo a final medical examination and obtain a security clearance after receiving their Invitation to Apply (ITA). If you need a security clearance, please contact us as we can provide you this service. </p>'),
(43, 1, '2023-06-17 01:11:07', '2023-06-17 05:46:56', 2, 'Refugee Lawyer Toronto', 'refugee-lawyer-toronto', '<p class=\\\"text-color\\\"> In a world where conflicts and persecution displace millions of people, seeking refuge in a safe country becomes a matter of survival. For individuals in Toronto facing the challenges of seeking asylum, a refugee lawyer plays a vital role in navigating the complex legal processes and advocating for their rights. In this article, we will explore the significance of a refugee lawyer in Toronto and how they provide guidance and protection to vulnerable individuals seeking asylum. </p>\r\n<br>', '<h5><p>Understanding the Role of a Refugee Lawyer: </p></h5>\r\n<p class=\\\"text-color\\\"> A refugee lawyer in Toronto specializes in immigration and refugee law, focusing specifically on assisting individuals who are seeking asylum. Their primary objective is to protect the rights and interests of refugees and provide them with the legal expertise and support necessary to navigate the asylum process. Key aspects of their role include: </p>\r\n<ul class=\\\"list\\\"><li>Legal Representation: A refugee lawyer represents individuals throughout the asylum process, from initial applications to hearings and appeals. They provide legal advice, assess eligibility for asylum, prepare and submit necessary documentation, and advocate for their clients\\\' rights before immigration authorities or tribunals.</li><li>Application Preparation: Applying for asylum involves complex paperwork and documentation. A refugee lawyer guides clients through the process, ensuring that all necessary forms are completed accurately and submitted within the specified timelines. They compile supporting evidence and present a compelling case to establish the client\\\'s eligibility for refugee protection.</li><li> Evidence Gathering: A crucial aspect of an asylum claim is providing evidence to support the client\\\'s fear of persecution in their home country. A refugee lawyer assists in gathering relevant evidence, such as country condition reports, witness testimonies, or medical records, to strengthen the client\\\'s case and substantiate their need for protection. </li><li>Appeals and Hearings: If an asylum claim is denied, a refugee lawyer can represent the client in appeals and hearings. They analyze the reasons for refusal, identify any legal errors, and develop a strong legal strategy to challenge the decision and seek a favorable outcome.</li></ul>\r\n<h5><p>The Importance of a Refugee Lawyer in Toronto:</p></h5>\r\n<ul class=\\\"list\\\"><li>Expertise in Refugee Law: Refugee lawyers possess specialized knowledge and experience in refugee law, including the Immigration and Refugee Protection Act (IRPA) and the United Nations Convention relating to the Status of Refugees. They understand the complex legal requirements and processes involved in seeking asylum, ensuring that their clients\\\' claims are presented effectively.</li><li>Guidance and Support: Navigating the asylum process can be overwhelming for individuals fleeing persecution or seeking protection. A refugee lawyer provides guidance, support, and reassurance throughout the journey, offering advice on available options, explaining legal rights, and answering questions to alleviate anxiety and stress.</li><li> Protection of Rights: The role of a refugee lawyer is to protect the rights of individuals seeking asylum. They advocate for their clients, ensuring they receive fair and just treatment throughout the asylum process and that their fundamental rights are upheld.</li></ul>\r\n<p class=\\\"text-color\\\"> For individuals in Toronto seeking asylum and protection from persecution, a refugee lawyer plays a crucial role in providing legal guidance, support, and representation. They navigate the complex asylum process, protect their clients\\\' rights, and increase the likelihood of a successful outcome. With their expertise and dedication, refugee lawyers in Toronto contribute to the pursuit of justice and the safeguarding of vulnerable individuals seeking refuge in Canada. </p>'),
(44, 1, '2023-06-17 01:12:20', '2023-06-17 05:56:17', 2, 'Immigration Law Firm Toronto', 'immigration-law-firm-toronto', '<p class=\\\"text-color\\\"> Navigating the intricacies of Canadian immigration law can be a daunting task. Whether you are an individual seeking to immigrate, a business looking to hire foreign talent, or a family hoping to reunite in Canada, an immigration law firm in Toronto can be your invaluable ally. In this article, we will explore the role and benefits of an immigration law firm in Toronto and how they can assist you in achieving your immigration goals. </p>\r\n<br>', '<h5><p>Comprehensive Immigration Services: </p></h5>\r\n<p class=\\\"text-color\\\"> An immigration law firm in Toronto provides a wide range of services tailored to meet the diverse needs of clients. Their experienced team of immigration lawyers and professionals offer comprehensive assistance in various immigration matters, including: </p>\r\n<ul class=\\\"list\\\"><li>Immigration Applications: A Canadian immigration lawyer can guide you through the process of applying for visas, work permits, study permits, permanent residency, and citizenship. They will ensure that all the required documentation is properly prepared, submitted, and meet the stringent requirements set by the immigration authorities.</li><li>Legal Advice: Immigration lawyers provide expert advice tailored to your specific circumstances. They can assess your eligibility for various immigration programs and help you choose the most suitable path based on your goals and qualifications. Their knowledge and experience allow them to anticipate potential issues and provide strategies to overcome them.</li><li> Appeals and Hearings: In case of a visa refusal, an immigration lawyer can help you navigate the appeal process and represent you at hearings or tribunals. They will analyze the reasons for the refusal and work to strengthen your case, increasing the chances of a successful outcome. </li><li>Sponsorship and Family Reunification: If you wish to sponsor a family member for immigration to Canada, an immigration lawyer can guide you through the sponsorship process, ensuring compliance with all legal requirements. They can assist with spousal sponsorships, parent and grandparent sponsorships, and other family reunification programs.</li></ul>\r\n<h5><p>Benefits of Hiring a Canadian Immigration Lawyer:</p></h5>\r\n<ul class=\\\"list\\\"><li>Immigration Consultation: A reputable immigration law firm starts by understanding your unique circumstances and immigration goals. They provide personalized consultations, assessing your eligibility for different immigration programs and offering tailored advice on the most suitable pathways for you and your family.</li><li>Visa and Permit Applications: Immigration lawyers assist individuals and businesses in preparing and submitting visa and permit applications. Whether it\\\'s a work permit, study permit, visitor visa, or other temporary residence permits, they ensure that all necessary documentation is accurately completed and submitted within the required timelines.</li><li>Appeals and Hearings: In cases where immigration applications are refused or rejected, immigration law firms provide representation in appeals and hearings. They analyze the reasons for refusal, develop strong legal arguments, and present your case before immigration authorities or tribunals to seek a favorable outcome. </li><li>Business Immigration Services: Immigration law firms assist businesses in navigating the complexities of hiring foreign workers. They provide guidance on the appropriate work permits, facilitate the LMIA process, help with intra-company transfers, and advise on compliance with immigration laws and regulations.</li></ul>\r\n<h5><p>Benefits of Hiring an Immigration Law Firm in Toronto: </p></h5>\r\n<ul class=\\\"list\\\"><li>Expertise and Knowledge: Immigration law firms specialize in Canadian immigration law and stay updated with the latest regulations, policies, and procedures. Their in-depth knowledge and experience allow them to provide accurate advice, assess eligibility, and guide clients through the most suitable immigration pathways.</li><li>Personalized Guidance: Each client\\\'s immigration journey is unique, and an immigration law firm offers personalized guidance tailored to your specific circumstances. They take the time to understand your goals and provide advice and strategies that align with your aspirations.</li><li>Application Support: Immigration lawyers help streamline the application process, ensuring that all documentation is complete, organized, and submitted correctly. Their attention to detail minimizes the chances of errors or omissions that could result in application delays or refusals.</li><li>Legal Representation: In situations requiring legal representation, such as appeals or hearings, immigration law firms advocate for your rights. They present strong legal arguments, navigate complex legal procedures, and work towards achieving a positive outcome on your behalf.</li></ul>\r\n<p class=\\\"text-color\\\"> An immigration law firm in Toronto serves as a valuable resource for individuals, families, and businesses seeking immigration solutions. With their expertise, personalized guidance, and comprehensive services, these firms play a vital role in navigating Canadian immigration laws and ensuring a smooth and successful immigration journey. Whether you are looking to study, work, reunite with family, or establish a business in Canada. </p>');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE `photo_gallery` (
  `photo_gallery_id` int(11) NOT NULL,
  `photo_gallery_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo_gallery`
--

INSERT INTO `photo_gallery` (`photo_gallery_id`, `photo_gallery_publish`, `created_on`, `last_updated`, `users_id`, `name`) VALUES
(6, 1, '2023-05-07 00:33:51', '2023-05-17 04:09:37', 2, 'Mr. Salauddin Ahmed'),
(7, 1, '2023-05-17 19:45:09', '2023-05-17 19:45:09', 2, 'GUIDE ');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `services_id` int(11) NOT NULL,
  `services_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `font_awesome` varchar(50) NOT NULL,
  `uri_value` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `services_publish`, `created_on`, `last_updated`, `users_id`, `name`, `font_awesome`, `uri_value`, `short_description`, `description`) VALUES
(1, 1, '2023-03-19 03:37:06', '2023-05-17 04:56:48', 2, 'Immigration', 'logo-image-cockroach', 'immigration', 'Permanent Resident, Family Sponsorship, Express Entry, Refugee Claim, Green Card.', 'Permanent Resident, Family Sponsorship, Express Entry, Refugee Claim, Green Card.'),
(2, 1, '2023-03-20 20:31:12', '2023-05-17 04:58:16', 2, 'Business Visa', 'logo-image-spiders', 'business-visa', 'Business Visa, Federal & Provincial Entrepreneur Visa, Investor Programs.', 'Business Visa, Federal & Provincial Entrepreneur Visa, Investor Programs.'),
(3, 1, '2023-03-20 20:35:06', '2023-05-17 05:01:00', 2, 'Visitor Visa', 'logo-image-termite', 'visitor-visa', 'Temporary Resident Visa, Super Visa, Travel Documents, Vacation & Tourism.', 'Temporary Resident Visa, Super Visa, Travel Documents, Vacation & Tourism.'),
(4, 1, '2023-03-20 20:37:54', '2023-05-17 05:03:12', 2, 'Citizenship and PR', 'logo-image-mice', 'citizenship-and-pr', 'Citizenship Application, Appeal Hearing, PR Card Renewal, Humanitarian & Compassionate.', 'Citizenship Application, Appeal Hearing, PR Card Renewal, Humanitarian & Compassionate.'),
(5, 1, '2023-03-20 20:44:37', '2023-05-17 05:05:10', 2, 'Work Permit & LMIA', 'logo-image-fleas', 'work-permit-and-lmia', 'Temporary Work Permit, Caregiver LMIA, Federal Skilled Workers (Express Entry)', 'Temporary Work Permit, Caregiver LMIA, Federal Skilled Workers (Express Entry)'),
(6, 1, '2023-03-20 21:00:49', '2023-05-17 05:08:08', 2, 'Student Visa', 'logo-image-fleas', 'student-visa', 'International Student Program, Co-op Work Permit, Post-Grad Work Permit.', 'International Student Program, Co-op Work Permit, Post-Grad Work Permit.');

-- --------------------------------------------------------

--
-- Table structure for table `track_edits`
--

CREATE TABLE `track_edits` (
  `track_edits_id` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `record_for` varchar(20) NOT NULL,
  `record_id` int(11) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `track_edits`
--

INSERT INTO `track_edits` (`track_edits_id`, `created_on`, `users_id`, `record_for`, `record_id`, `details`) VALUES
(1, '2023-03-19 00:13:52', 1, 'appointments', 1, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(2, '2023-03-19 00:23:23', 1, 'appointments', 1, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(3, '2023-03-19 00:26:57', 1, 'appointments', 1, '{\"changed\":{\"\":\"Changed this Appointment from Cancel to Approved\"},\"moreInfo\":[]}'),
(4, '2023-03-19 00:39:45', 1, 'appointments', 1, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(5, '2023-03-19 11:27:38', 1, 'customers', 2, '{\"changed\":{\"name\":[\"Oyazur\",\"Oyazur Rahman\"]},\"moreInfo\":[]}'),
(6, '2023-03-19 11:28:57', 1, 'customers', 2, '{\"changed\":{\"name\":[\"Oyazur Rahman\",\"Md. Abdus Shobhan\"],\"address\":[\"\",\"2942 Danforth Ave,\"]},\"moreInfo\":[]}'),
(7, '2023-03-20 02:00:20', 1, 'news_articles', 1, '{\"changed\":{\"news_articles_date\":[\"2016-07-19\",\"2023-03-13\"]},\"moreInfo\":[]}'),
(8, '2023-03-20 02:00:44', 1, 'news_articles', 1, '{\"changed\":{\"uri_value\":[\"WHAT YOU NEED TO KNOW ABOUT ANTS IN YOUR HOUSE\",\"what-you-need-to-know-about-ants-in-your-house\"]},\"moreInfo\":[]}'),
(9, '2023-03-20 12:41:13', 1, 'appointments', 1, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(10, '2023-03-20 12:41:29', 1, 'appointments', 1, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(11, '2023-03-20 19:28:27', 1, 'news_articles', 2, '{\"changed\":{\"name\":[\"HOW TO CHOOSE YOUR GREATER TORONTO AREA (GTA) PEST CONTROL COMPANY\",\"10 Common Household Pests and How to Get Rid of Them\"],\"uri_value\":[\"how-to-choose-your-greater-toronto-area-gta-pest-control-company\",\"10-common-household-pests-and-how-to-get-rid-of-them\"],\"short_description\":[\"There\\u2019s no worse way to start the spring and summer months than getting bugged by pesky pests. If you know you have a pest problem, it can be a knee-jerk response to call up the same pest control expert that your family has been using for years.\\r\\n\\r\\nBut is it really the right idea to use the same pest control service over and over simply because you\\u2019ve always used them? To make sure that you\\u2019re getting the best service possible, you should choose a pest control company that perfectly fits your needs.\\r\\n\\r\\nKnowledge is the first thing to arm yourself with in your battle against pests! Here\\u2019s our ultimate guide on how to choose your Seattle pest control company.\",\"This article could provide readers with information about common household pests, such as ants, cockroaches, and rodents, and offer tips and tricks for getting rid of them. The article could also cover preventative measures that homeowners can take to keep pests from entering their homes in the first place.\"]},\"moreInfo\":[]}'),
(12, '2023-03-20 19:28:45', 1, 'news_articles', 2, '{\"changed\":{\"description\":[\"LICENSING AND QUALIFICATIONS\\r\\nWhen you choose a pest control company, there can be a lot of options to choose from. However, some of these options do not have the correct licensing and registration to effectively handle your pest problems.\\r\\n\\r\\nHaving a pest control company that is licensed in your local municipality ensures that your service will be in accordance with pest control best practices, and that the team will be comprised of true pest control experts.\\r\\n\\r\\nYou can check here to see if your GTA pest control company is fully licensed. When you work with Pesterminate, you know that you\\u2019re working with one of the most well-recognized and licensed pest control companies in the GTA area.\\r\\n\\r\\nEXCELLENT CUSTOMER SERVICE\\r\\nPest control needs vary situation by situation, and it\\u2019s imperative that you work with a pest control expert who knows how to listen to your needs.\\r\\n\\r\\nWhen your home is invaded by pests, such as the dreaded rats, mice, bedbugs,  it\\u2019s easy for emotions to run a little high. Ideally, you\\u2019ll want to work with a GTA licensed pest control company that takes the time to explain its full process to you and make sure that the treatment plan fits your needs and budget.\\r\\n\\r\\nProviding this type of customer service is something that Pesterminate is extraordinarily passionate about. We\\u2019ve been recognized by many different organizations for our superior service, and we take the pride serving in Toronto and having earned HomeStars : Best of 2019 award. Say what customers have to say about us in HomeStars.\\r\\n\\r\\nSAFETY\\r\\nExterminations and poison seem to go hand in hand. When you work with a pest control expert, it\\u2019s likely that they\\u2019ll be using pesticides of some sort to eliminate your pest woes. But are they handling the materials safely and cautiously?\\r\\n\\r\\nMake sure that your GTA pest control company exercises the following tenets of safe pest control:\\r\\n\\r\\nDo they use environmentally-friendly pesticides when possible?\\r\\nDo they wear protective equipment when appropriate?\\r\\nAre they insured in order to cover themselves, you, and your property?\\r\\nAre they cautious and careful as they traverse your property?\\r\\nPesterminate is dedicated to providing safe and effective pest control for its customers, and always take measures to ensure that the job is completed to maximum satisfaction while exercises the utmost caution.\\r\\n\\r\\nVALUE\\r\\nValue may be the most important part of the equation when working with GTA pest control companies.\\r\\n\\r\\nMany professional pest control services will overcharge for what they provide, simply because they know you\\u2019re in a difficult bargaining position. Rodent services in GTA are one example of this, as people are often in a big hurry to eliminate their rat troubles. This can lead to hasty decisions and overpaying for what you receive.\\r\\n\\r\\nWhen you work with Pesterminate, you have flexibility in your treatment options. We offer a pest control maintenance plan that covers all of your pest needs and prevents issues in the future. Whatever sort of GTA pest control services you\\u2019re in need of, we can find a solution that fits your unique situation\",\"\"]},\"moreInfo\":[]}'),
(13, '2023-03-20 19:29:37', 1, 'news_articles', 1, '{\"changed\":{\"name\":[\"WHAT YOU NEED TO KNOW ABOUT ANTS IN YOUR HOUSE\",\"The Dangers of DIY Pest Control\"],\"uri_value\":[\"what-you-need-to-know-about-ants-in-your-house\",\"the-dangers-of-diy-pest-control\"],\"short_description\":[\"You may be able to exterminate these pests without calling in a professional, though more severe infestations will require a stronger approach. Some ant species, like carpenter ants, can cause structural damage to your house if not treated immediately. Other infestations might be harder to eliminate due to a colony resisting natural and chemical extermination solutions.\",\"This blog post could discuss the potential dangers of attempting to control pests without the help of a professional pest control service. The article could highlight the risks of using store-bought pesticides and other DIY methods that may not be effective in getting rid of pests or may even be harmful to humans and pets.\"],\"description\":[\"GET RID OF ANTS IN YOUR HOME BY ELIMINATING THE COLONY\\r\\nTake note of where you\\u2019re seeing the ants. They may run along your baseboards, emerge from holes under cabinets, or pop out of cracks in your walls or floors, particularly if your house is older. There may be other exterior entry points to your home, including visible ant colonies in your front or back yard or cracks in your driveway.\\r\\n\\r\\nThe key to getting rid of ants in your home is to take out the colony, and finding the colony is easier when you can identify the type of ant invading your space. Here are some common ants, their differentiating characteristics, and where you might locate their colonies:\\r\\n\\r\\nSugar ants\\u2014These ants typically feed on sweet or greasy foods and can be found around your kitchen or places where you store food. They distribute food and water to the rest of their colony. They have brownish-black bodies with black heads and their nests are typically found in old wood or dark, moist areas.\\r\\nCarpenter ants\\u2014Carpenter ants are either black or red and typically 3\\/16 inch to \\u00bd inch long and prefer to build colonies in moist wood, such as tree stumps, around bathtubs, showers,or dishwashers, or behind bathroom tiles. They are most easily identified by their thorax, which is rounded and smooth. Carpenter ants will tunnel in wood, creating smooth channels and leaving behind wood shavings, so if you notice wood shavings concentrated in a specific location, the colony may be close by. If you do investigate and find tunnels that are dirty and filled with material, the culprit may be termites.\\r\\nPavement ants\\u2014These ants are also black or reddish brown with pale legs and antennae and are typically \\u215b inch long. Pavement ants prefer to nest in soil covered by solid material like rocks or pavement and are often found under driveways, sidewalk slabs, or concrete foundations of houses. Pavement ants are most likely to enter your home through cracks in the wall.\\r\\nMoisture ants (yellow ants)\\u2014These ants are longer and yellow or reddish brown in color. When they are crushed, they give off a citronella scent. Moisture ants tend to build their colonies against the foundation of homes or outdoors under rocks and logs. As their name suggests, they are attracted to high-moisture areas and are often found in bathrooms.\\r\\nWhen you locate the colony\\u2014the source of your ant infestation\\u2014the next step is to eliminate any pheromone trails made by the ants. Pheromone trails are basic scent trails that ants leave behind for other ants to join them in finding food and water. When you identify the source of the ants, you can eliminate the entire ant colony by getting rid of the existing trail. Here\\u2019s how.\\r\\n\\r\\n \\r\\n\\r\\nYou may be able to exterminate these pests without calling in a professional, though more severe infestations will require a stronger approach. Some ant species, like carpenter ants, can cause structural damage to your house if not treated immediately. Other infestations might be harder to eliminate due to a colony resisting natural and chemical extermination solutions.\\r\\n\\r\\nGET RID OF ANTS IN YOUR HOME BY ELIMINATING THE COLONY\\r\\nTake note of where you\\u2019re seeing the ants. They may run along your baseboards, emerge from holes under cabinets, or pop out of cracks in your walls or floors, particularly if your house is older. There may be other exterior entry points to your home, including visible ant colonies in your front or back yard or cracks in your driveway.\\r\\n\\r\\nThe key to getting rid of ants in your home is to take out the colony, and finding the colony is easier when you can identify the type of ant invading your space. Here are some common ants, their differentiating characteristics, and where you might locate their colonies:\\r\\n\\r\\nSugar ants\\u2014These ants typically feed on sweet or greasy foods and can be found around your kitchen or places where you store food. They distribute food and water to the rest of their colony. They have brownish-black bodies with black heads and their nests are typically found in old wood or dark, moist areas.\\r\\nCarpenter ants\\u2014Carpenter ants are either black or red and typically 3\\/16 inch to \\u00bd inch long and prefer to build colonies in moist wood, such as tree stumps, around bathtubs, showers,or dishwashers, or behind bathroom tiles. They are most easily identified by their thorax, which is rounded and smooth. Carpenter ants will tunnel in wood, creating smooth channels and leaving behind wood shavings, so if you notice wood shavings concentrated in a specific location, the colony may be close by. If you do investigate and find tunnels that are dirty and filled with material, the culprit may be termites.\\r\\nPavement ants\\u2014These ants are also black or reddish brown with pale legs and antennae and are typically \\u215b inch long. Pavement ants prefer to nest in soil covered by solid material like rocks or pavement and are often found under driveways, sidewalk slabs, or concrete foundations of houses. Pavement ants are most likely to enter your home through cracks in the wall.\\r\\nMoisture ants (yellow ants)\\u2014These ants are longer and yellow or reddish brown in color. When they are crushed, they give off a citronella scent. Moisture ants tend to build their colonies against the foundation of homes or outdoors under rocks and logs. As their name suggests, they are attracted to high-moisture areas and are often found in bathrooms.\\r\\nWhen you locate the colony\\u2014the source of your ant infestation\\u2014the next step is to eliminate any pheromone trails made by the ants. Pheromone trails are basic scent trails that ants leave behind for other ants to join them in finding food and water. When you identify the source of the ants, you can eliminate the entire ant colony by getting rid of the existing trail. Here\\u2019s how.\\r\\n\\r\\nHOW TO KEEP ANTS OUT OF YOUR HOME\\r\\nOnce ants are in your house, they can become a pesky and recurring nuisance. Follow these tips to prevent ants from infesting your home in the future:\\r\\n\\r\\nKeep your house clean\\u2014By putting food away, cleaning off countertops and floors, and emptying the trash daily, you reduce the risk of ants in your home. Try to regularly vacuum, mop, and wipe down counters, especially in areas of your house where you prepare or store food.\\r\\nBe vigilant during the hotter months\\u2014Ants are more prevalent in warm and humid conditions than they are in colder temperatures. They tend to appear more often during the summer months than they do in the winter months. Especially during warmer periods, keep your house clean.\\r\\nFind possible entry points and seal them off\\u2014Spray natural pesticides along the perimeter of your home to prevent ants from coming inside.\\r\\nFix leaks in your house\\u2014Ants are attracted to food and water sources. By fixing leaky pipes and cleaning up damp areas around your house, you will lessen the chance of allowing ants to find a source of water for the whole colony.\\r\\nKill ants in the yard\\u2014If you see nests outdoors, spot-treat the area with an insecticide. Spray in the morning and late afternoon when ants are most active. Insecticides that contain bifenthrin work especially well in dismantling ant mounds and getting rid of most ants.\\r\\nCall in a professional exterminator\\u2014Some colonies are extremely hard to eliminate despite your best effort. In this case, call in a professional to get the job done. Exterminators have tougher chemicals to get rid of the ants and can save you the time from checking every crack and crevice for ants.\",\"\"]},\"moreInfo\":[]}'),
(14, '2023-03-20 20:54:57', 1, 'services', 2, '{\"changed\":{\"short_description\":[\"Spiders are a common sight in homes and businesses around the world. While some people may find these eight-legged creatures creepy or frightening, others appreciate them for their role in controlling other pests, such as flies and mosquitoes. So, are spiders friend or foe? Let\\\\\'s take a closer look.\",\"Spiders: Friend or Foe? Understanding these Common Arachnids\"],\"description\":[\"First, it\\\\\'s important to understand that not all spiders are the same. In fact, there are more than 45,000 known species of spiders, each with their own unique characteristics and behaviors. While some spiders are venomous and can pose a threat to humans and pets, most species are harmless and prefer to avoid contact with people altogether.\\r\\n\\r\\nTo determine if you have a spider infestation in your home or business, it\\\\\'s important to know what to look for. Common signs of a spider infestation include spider webs, egg sacs, and spider sightings. If you suspect you have a spider problem, it\\\\\'s best to contact a pest control professional for an inspection and treatment plan.\\r\\n\\r\\nIf you\\\\\'re wondering whether or not you should try to get rid of spiders in your home, the answer depends on your personal preferences and the specific species of spider. If you have a harmless species of spider in your home, it may be best to leave them alone or relocate them outside. However, if you have a venomous species of spider, such as the black widow or brown recluse, it\\\\\'s important to seek professional pest control services to eliminate the infestation and prevent potential health risks.\\r\\n\\r\\nIn conclusion, while spiders may not be everyone\\\\\'s favorite creatures, they can play an important role in controlling other pests and maintaining the balance of ecosystems. By understanding these common arachnids and taking appropriate pest control measures when necessary, we can coexist with spiders in a safe and harmonious way.\",\"Spiders are a common sight in homes and businesses around the world. While some people may find these eight-legged creatures creepy or frightening, others appreciate them for their role in controlling other pests, such as flies and mosquitoes. So, are spiders friend or foe? Let\\\\\'s take a closer look.\\r\\nFirst, it\\\\\'s important to understand that not all spiders are the same. In fact, there are more than 45,000 known species of spiders, each with their own unique characteristics and behaviors. While some spiders are venomous and can pose a threat to humans and pets, most species are harmless and prefer to avoid contact with people altogether.\\r\\n\\r\\nTo determine if you have a spider infestation in your home or business, it\\\\\'s important to know what to look for. Common signs of a spider infestation include spider webs, egg sacs, and spider sightings. If you suspect you have a spider problem, it\\\\\'s best to contact a pest control professional for an inspection and treatment plan.\\r\\n\\r\\nIf you\\\\\'re wondering whether or not you should try to get rid of spiders in your home, the answer depends on your personal preferences and the specific species of spider. If you have a harmless species of spider in your home, it may be best to leave them alone or relocate them outside. However, if you have a venomous species of spider, such as the black widow or brown recluse, it\\\\\'s important to seek professional pest control services to eliminate the infestation and prevent potential health risks.\\r\\n\\r\\nIn conclusion, while spiders may not be everyone\\\\\'s favorite creatures, they can play an important role in controlling other pests and maintaining the balance of ecosystems. By understanding these common arachnids and taking appropriate pest control measures when necessary, we can coexist with spiders in a safe and harmonious way.\"]},\"moreInfo\":[]}'),
(15, '2023-03-20 20:55:55', 1, 'services', 3, '{\"changed\":{\"short_description\":[\"Termites are often called \\\\\\\"silent destroyers\\\\\\\" because they can cause significant damage to a home or business without being detected until it\\\\\'s too late. These wood-eating insects are responsible for billions of dollars in property damage each year, making them a serious threat to homeowners and business owners alike.\",\"Termites: The Silent Destroyers\"],\"description\":[\"Termites are social insects that live in large colonies and feed on wood and other cellulose-based materials. They are typically found in warm, humid climates and can be difficult to detect due to their underground tunnels and hidden nesting sites.\\r\\n\\r\\nTo protect your home or business from termite damage, it\\\\\'s important to know what signs to look for. Common signs of a termite infestation include mud tubes on exterior walls, damaged or hollow-sounding wood, and discarded termite wings. If you suspect you have a termite problem, it\\\\\'s crucial to contact a pest control professional as soon as possible to prevent further damage.\\r\\n\\r\\nPreventing termite infestations starts with taking proactive measures to make your property less attractive to these pests. Some tips for preventing termites include reducing moisture levels in and around your home or business, keeping firewood and other wood-based materials away from the building, and sealing any cracks or gaps in the foundation or walls.\\r\\n\\r\\nIf you do end up with a termite infestation, there are several treatment options available. A pest control professional may recommend a variety of methods, including liquid treatments, baits, and fumigation. The best treatment option will depend on the severity of the infestation and other factors unique to your property.\\r\\n\\r\\nIn conclusion, termites are a serious threat to the structural integrity of homes and businesses. By taking proactive measures to prevent infestations and contacting a pest control professional at the first sign of trouble, you can protect your property from these silent destroyers.\",\"Termites are often called \\\\\\\"silent destroyers\\\\\\\" because they can cause significant damage to a home or business without being detected until it\\\\\'s too late. These wood-eating insects are responsible for billions of dollars in property damage each year, making them a serious threat to homeowners and business owners alike.\\r\\nTermites are social insects that live in large colonies and feed on wood and other cellulose-based materials. They are typically found in warm, humid climates and can be difficult to detect due to their underground tunnels and hidden nesting sites.\\r\\n\\r\\nTo protect your home or business from termite damage, it\\\\\'s important to know what signs to look for. Common signs of a termite infestation include mud tubes on exterior walls, damaged or hollow-sounding wood, and discarded termite wings. If you suspect you have a termite problem, it\\\\\'s crucial to contact a pest control professional as soon as possible to prevent further damage.\\r\\n\\r\\nPreventing termite infestations starts with taking proactive measures to make your property less attractive to these pests. Some tips for preventing termites include reducing moisture levels in and around your home or business, keeping firewood and other wood-based materials away from the building, and sealing any cracks or gaps in the foundation or walls.\\r\\n\\r\\nIf you do end up with a termite infestation, there are several treatment options available. A pest control professional may recommend a variety of methods, including liquid treatments, baits, and fumigation. The best treatment option will depend on the severity of the infestation and other factors unique to your property.\\r\\n\\r\\nIn conclusion, termites are a serious threat to the structural integrity of homes and businesses. By taking proactive measures to prevent infestations and contacting a pest control professional at the first sign of trouble, you can protect your property from these silent destroyers.\"]},\"moreInfo\":[]}'),
(16, '2023-03-20 20:57:49', 1, 'services', 4, '{\"changed\":{\"short_description\":[\"Rodents, such as mice and rats, are a common pest problem for homeowners and businesses. These small, furry creatures are known for their ability to squeeze through even the tiniest of openings and can cause significant damage to property if left unchecked.\",\"Rodents: The Unwelcome House Guests\"],\"description\":[\"One of the biggest concerns with rodents is their ability to spread disease. Rodents can carry a variety of diseases, including hantavirus, salmonellosis, and leptospirosis. They can also contaminate food and surfaces with their urine and droppings, posing a health risk to humans and pets.\\r\\n\\r\\nTo prevent a rodent infestation, it\\\\\'s important to take proactive measures to make your property less attractive to these pests. Some tips for preventing rodents include sealing any cracks or gaps in the foundation or walls, keeping food stored in airtight containers, and eliminating any sources of standing water.\\r\\n\\r\\nIf you suspect you have a rodent problem, there are several signs to look for. Common signs of a rodent infestation include gnaw marks on wires or other materials, droppings, and the sound of scurrying or scratching in the walls or ceilings. If you notice any of these signs, it\\\\\'s important to contact a pest control professional as soon as possible to prevent further damage and potential health risks.\\r\\n\\r\\nA pest control professional can provide a variety of treatment options for rodent infestations, including traps and baits. They can also offer advice on how to prevent future infestations and provide ongoing monitoring and maintenance services to ensure that your property remains rodent-free.\\r\\n\\r\\nIn conclusion, rodents can pose a serious health risk to humans and pets and can cause significant damage to property if left unchecked. By taking proactive measures to prevent infestations and contacting a pest control professional at the first sign of trouble, you can protect your property from these unwelcome house guests.\",\"Rodents, such as mice and rats, are a common pest problem for homeowners and businesses. These small, furry creatures are known for their ability to squeeze through even the tiniest of openings and can cause significant damage to property if left unchecked.\\r\\nOne of the biggest concerns with rodents is their ability to spread disease. Rodents can carry a variety of diseases, including hantavirus, salmonellosis, and leptospirosis. They can also contaminate food and surfaces with their urine and droppings, posing a health risk to humans and pets.\\r\\n\\r\\nTo prevent a rodent infestation, it\\\\\'s important to take proactive measures to make your property less attractive to these pests. Some tips for preventing rodents include sealing any cracks or gaps in the foundation or walls, keeping food stored in airtight containers, and eliminating any sources of standing water.\\r\\n\\r\\nIf you suspect you have a rodent problem, there are several signs to look for. Common signs of a rodent infestation include gnaw marks on wires or other materials, droppings, and the sound of scurrying or scratching in the walls or ceilings. If you notice any of these signs, it\\\\\'s important to contact a pest control professional as soon as possible to prevent further damage and potential health risks.\\r\\n\\r\\nA pest control professional can provide a variety of treatment options for rodent infestations, including traps and baits. They can also offer advice on how to prevent future infestations and provide ongoing monitoring and maintenance services to ensure that your property remains rodent-free.\\r\\n\\r\\nIn conclusion, rodents can pose a serious health risk to humans and pets and can cause significant damage to property if left unchecked. By taking proactive measures to prevent infestations and contacting a pest control professional at the first sign of trouble, you can protect your property from these unwelcome house guests.\"]},\"moreInfo\":[]}'),
(17, '2023-03-20 20:58:55', 1, 'services', 1, '{\"changed\":{\"short_description\":[\"Cockroaches are a common household pest that can be difficult to get rid of once they infest your home. These insects are known for their resilience and ability to adapt to a variety of environments, which makes them a particularly challenging pest to control.\",\"Cockroaches: How to Identify, Prevent, and Control Infestations\"],\"description\":[\"Identification: Cockroaches are typically brown or black in color and have a flat, oval-shaped body. They have six legs and two long antennae that they use to navigate their environment. There are several different species of cockroaches, including the German cockroach, American cockroach, and Oriental cockroach, all of which have slightly different physical characteristics.\\r\\n\\r\\nBehavior: Cockroaches are primarily nocturnal and prefer to hide in dark, moist areas during the day. They are attracted to food and can often be found in kitchens, pantries, and other areas where food is stored. Cockroaches can also spread bacteria and disease, making them a health hazard in addition to being a nuisance.\\r\\n\\r\\nPrevention: To prevent cockroach infestations, it\'s important to keep your home clean and free of food debris. This includes wiping down counters and surfaces, storing food in airtight containers, and regularly taking out the garbage. Sealing up any cracks or gaps in your home\'s foundation can also help prevent cockroaches from entering.\\r\\n\\r\\nTreatment: If you do have a cockroach infestation, it\'s important to take action quickly to prevent the problem from getting worse. This may include using cockroach baits or traps, applying insecticides, or hiring a professional pest control company to eliminate the infestation.\\r\\n\\r\\nOverall, cockroaches are a pest that no homeowner wants to deal with. By taking preventative measures and seeking professional help when necessary, you can keep your home free of these pesky insects and protect your family\'s health and safety.\",\"Cockroaches are a common household pest that can be difficult to get rid of once they infest your home. These insects are known for their resilience and ability to adapt to a variety of environments, which makes them a particularly challenging pest to control.\\r\\n\\r\\nIdentification: Cockroaches are typically brown or black in color and have a flat, oval-shaped body. They have six legs and two long antennae that they use to navigate their environment. There are several different species of cockroaches, including the German cockroach, American cockroach, and Oriental cockroach, all of which have slightly different physical characteristics.\\r\\n\\r\\nBehavior: Cockroaches are primarily nocturnal and prefer to hide in dark, moist areas during the day. They are attracted to food and can often be found in kitchens, pantries, and other areas where food is stored. Cockroaches can also spread bacteria and disease, making them a health hazard in addition to being a nuisance.\\r\\n\\r\\nPrevention: To prevent cockroach infestations, it\\\\\'s important to keep your home clean and free of food debris. This includes wiping down counters and surfaces, storing food in airtight containers, and regularly taking out the garbage. Sealing up any cracks or gaps in your home\\\\\'s foundation can also help prevent cockroaches from entering.\\r\\n\\r\\nTreatment: If you do have a cockroach infestation, it\\\\\'s important to take action quickly to prevent the problem from getting worse. This may include using cockroach baits or traps, applying insecticides, or hiring a professional pest control company to eliminate the infestation.\\r\\n\\r\\nOverall, cockroaches are a pest that no homeowner wants to deal with. By taking preventative measures and seeking professional help when necessary, you can keep your home free of these pesky insects and protect your family\\\\\'s health and safety.\"]},\"moreInfo\":[]}'),
(18, '2023-03-21 20:16:09', 1, 'services', 6, '{\"changed\":{\"name\":[\"Bee Control\",\"Wasps Nest Removal\"],\"uri_value\":[\"bee-control\",\"wasps-nest-removal\"],\"short_description\":[\"Bee Control: Tips for Safe and Effective Removal\",\"Wasps Nest Removal: Tips for Safe and Effective Removal\"],\"description\":[\"Bees are an important part of our ecosystem, but when they establish their hives in or around our homes or businesses, they can pose a serious risk to our health and safety. While it\\\\\'s important to respect these beneficial insects and their role in pollinating our crops and flowers, it\\\\\'s also important to know how to safely and effectively remove them when they become a nuisance.\\r\\n\\r\\nThe first step in bee control is to properly identify the species of bee and the location of the hive. Different species of bees have different behaviors and require different removal methods. For example, honey bees are social insects that form large colonies and are often found in cavities such as walls, while carpenter bees are solitary insects that burrow into wood.\\r\\n\\r\\nOnce you\\\\\'ve identified the bee species and hive location, it\\\\\'s important to take the appropriate safety precautions. Bees can become aggressive when their hive is disturbed, so it\\\\\'s important to wear protective clothing, avoid making sudden movements, and keep children and pets at a safe distance.\\r\\n\\r\\nIf the hive is small and accessible, it may be possible to remove it yourself using a vacuum or insecticide spray. However, if the hive is large or located in a difficult-to-reach area, it\\\\\'s best to seek professional help. A pest control professional can provide safe and effective removal methods that will minimize harm to the bees and prevent future infestations.\\r\\n\\r\\nIn addition to removal, it\\\\\'s also important to take preventive measures to reduce the risk of future bee infestations. This can include sealing up any gaps or cracks in your home or business, removing sources of standing water, and avoiding planting flowering plants near the building.\\r\\n\\r\\nBy taking a respectful and cautious approach to bee control, you can ensure the safety of yourself and others while also preserving the important role that bees play in our environment. A pest control professional can provide further advice and assistance in developing a comprehensive bee control plan tailored to your specific needs and concerns.\\r\\n\\r\\nIn conclusion, bee control is an important aspect of maintaining a safe and pest-free environment for both humans and bees. By taking steps to identify, remove, and prevent bee infestations, you can ensure the safety of yourself and others while also preserving the vital role that these beneficial insects play in our ecosystem.\",\"Wasps Nest Removal are an important part of our ecosystem, but when they establish their hives in or around our homes or businesses, they can pose a serious risk to our health and safety. While it\\\\\'s important to respect these beneficial insects and their role in pollinating our crops and flowers, it\\\\\'s also important to know how to safely and effectively remove them when they become a nuisance.\\r\\n\\r\\nThe first step in bee control is to properly identify the species of bee and the location of the hive. Different species of bees have different behaviors and require different removal methods. For example, honey bees are social insects that form large colonies and are often found in cavities such as walls, while carpenter bees are solitary insects that burrow into wood.\\r\\n\\r\\nOnce you\\\\\'ve identified the bee species and hive location, it\\\\\'s important to take the appropriate safety precautions. Bees can become aggressive when their hive is disturbed, so it\\\\\'s important to wear protective clothing, avoid making sudden movements, and keep children and pets at a safe distance.\\r\\n\\r\\nIf the hive is small and accessible, it may be possible to remove it yourself using a vacuum or insecticide spray. However, if the hive is large or located in a difficult-to-reach area, it\\\\\'s best to seek professional help. A pest control professional can provide safe and effective removal methods that will minimize harm to the bees and prevent future infestations.\\r\\n\\r\\nIn addition to removal, it\\\\\'s also important to take preventive measures to reduce the risk of future bee infestations. This can include sealing up any gaps or cracks in your home or business, removing sources of standing water, and avoiding planting flowering plants near the building.\\r\\n\\r\\nBy taking a respectful and cautious approach to bee control, you can ensure the safety of yourself and others while also preserving the important role that bees play in our environment. A pest control professional can provide further advice and assistance in developing a comprehensive bee control plan tailored to your specific needs and concerns.\\r\\n\\r\\nIn conclusion, bee control is an important aspect of maintaining a safe and pest-free environment for both humans and bees. By taking steps to identify, remove, and prevent bee infestations, you can ensure the safety of yourself and others while also preserving the vital role that these beneficial insects play in our ecosystem.\"]},\"moreInfo\":[]}'),
(19, '2023-04-26 00:36:15', 1, 'news_articles', 3, '{\"changed\":{\"description\":[\"\",\"This article could emphasize the importance of regular pest inspections for both homeowners and business owners. The post could explain how routine inspections can help identify potential pest problems early on and prevent them from becoming more serious and costly to address later. The article could also offer tips for finding a reputable pest control company to conduct the inspections.\"]},\"moreInfo\":[]}'),
(20, '2023-04-26 00:36:51', 1, 'news_articles', 2, '{\"changed\":{\"description\":[\"\",\"This article could provide readers with information about common household pests, such as ants, cockroaches, and rodents, and offer tips and tricks for getting rid of them. The article could also cover preventative measures that homeowners can take to keep pests from entering their homes in the first place.\"]},\"moreInfo\":[]}'),
(21, '2023-04-26 00:37:45', 1, 'news_articles', 4, '{\"changed\":{\"description\":[\"\",\"This post could provide readers with tips for selecting a reliable and effective pest control service. The article could cover topics such as what to look for in a pest control company, how to compare pricing and services, and what questions to ask before hiring a pest control service.\"]},\"moreInfo\":[]}'),
(22, '2023-04-26 00:37:58', 1, 'news_articles', 5, '{\"changed\":{\"description\":[\"\",\"This article could discuss the ways in which climate change is impacting pest populations around the world. The post could explain how rising temperatures, changing precipitation patterns, and other environmental factors are affecting the behavior and distribution of pests. The article could also offer tips for homeowners and businesses on how to adapt to these changes and prevent pest infestations.\"]},\"moreInfo\":[]}'),
(23, '2023-04-26 00:38:10', 1, 'news_articles', 1, '{\"changed\":{\"description\":[\"\",\"This blog post could discuss the potential dangers of attempting to control pests without the help of a professional pest control service. The article could highlight the risks of using store-bought pesticides and other DIY methods that may not be effective in getting rid of pests or may even be harmful to humans and pets.\"]},\"moreInfo\":[]}'),
(24, '2023-04-30 06:04:27', 1, 'appointments', 25, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(25, '2023-04-30 06:08:30', 1, 'appointments', 25, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(26, '2023-04-30 06:09:50', 1, 'appointments', 25, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(27, '2023-04-30 06:21:35', 1, 'appointments', 25, '{\"changed\":{\"\":\"Approved this Appointment\"},\"moreInfo\":[]}'),
(28, '2023-04-30 20:54:10', 1, 'appointments', 25, '{\"changed\":{\"\":\"Cancel this Appointment\"},\"moreInfo\":[]}'),
(29, '2023-04-30 20:54:15', 1, 'appointments', 24, '{\"changed\":{\"\":\"Cancel this Appointment\"},\"moreInfo\":[]}'),
(30, '2023-04-30 20:54:20', 1, 'appointments', 23, '{\"changed\":{\"\":\"Cancel this Appointment\"},\"moreInfo\":[]}'),
(31, '2023-05-01 02:12:14', 1, 'services', 3, '{\"changed\":{\"font_awesome\":[\"flaticon-termite\",\"termite\"]},\"moreInfo\":[]}'),
(32, '2023-05-01 02:18:07', 1, 'services', 3, '{\"changed\":{\"font_awesome\":[\"termite\",\"bug\"]},\"moreInfo\":[]}'),
(33, '2023-05-01 02:19:57', 1, 'services', 7, '{\"changed\":{\"font_awesome\":[\"flaticon-ant\",\"bug\"]},\"moreInfo\":[]}'),
(34, '2023-05-01 02:20:57', 1, 'services', 7, '{\"changed\":{\"font_awesome\":[\"bug\",\"bugs\"]},\"moreInfo\":[]}'),
(35, '2023-05-01 02:21:05', 1, 'services', 7, '{\"changed\":{\"font_awesome\":[\"bugs\",\"bug\"]},\"moreInfo\":[]}'),
(36, '2023-05-01 02:21:16', 1, 'services', 5, '{\"changed\":{\"font_awesome\":[\"flaticon-fly\",\"bugs\"]},\"moreInfo\":[]}'),
(37, '2023-05-01 02:21:43', 1, 'services', 8, '{\"changed\":{\"font_awesome\":[\"flaticon-mosquito\",\"mosquito\"]},\"moreInfo\":[]}'),
(38, '2023-05-01 02:22:47', 1, 'services', 2, '{\"changed\":{\"font_awesome\":[\"flaticon-tarantula\",\"spider\"]},\"moreInfo\":[]}'),
(39, '2023-05-01 02:24:50', 1, 'services', 6, '{\"changed\":{\"font_awesome\":[\"flaticon-bee\",\"mosquito\"]},\"moreInfo\":[]}'),
(40, '2023-05-01 02:26:11', 1, 'services', 1, '{\"changed\":{\"font_awesome\":[\"flaticon-cockroach\",\"spider\"]},\"moreInfo\":[]}'),
(41, '2023-05-01 02:26:52', 1, 'services', 4, '{\"changed\":{\"font_awesome\":[\"flaticon-squirrel\",\"cat\"]},\"moreInfo\":[]}'),
(42, '2023-05-02 23:37:30', 1, 'services', 8, '{\"changed\":{\"font_awesome\":[\"mosquito\",\"fa-spider\"]},\"moreInfo\":[]}'),
(43, '2023-05-02 23:37:47', 1, 'services', 8, '{\"changed\":{\"font_awesome\":[\"fa-spider\",\"spider\"]},\"moreInfo\":[]}'),
(44, '2023-05-03 00:24:02', 1, 'services', 8, '{\"changed\":{\"font_awesome\":[\"spider\",\"logo-image-bedbug\"]},\"moreInfo\":[]}'),
(45, '2023-05-03 00:29:03', 1, 'services', 7, '{\"changed\":{\"font_awesome\":[\"bug\",\"logo-image-ant\"]},\"moreInfo\":[]}'),
(46, '2023-05-03 00:49:52', 1, 'services', 1, '{\"changed\":{\"font_awesome\":[\"spider\",\"logo-image-cockroach\"]},\"moreInfo\":[]}'),
(47, '2023-05-03 00:51:00', 1, 'services', 5, '{\"changed\":{\"font_awesome\":[\"bugs\",\"logo-image-fleas\"]},\"moreInfo\":[]}'),
(48, '2023-05-03 00:51:46', 1, 'services', 4, '{\"changed\":{\"font_awesome\":[\"cat\",\"logo-image-mice\"]},\"moreInfo\":[]}'),
(49, '2023-05-03 00:52:25', 1, 'services', 2, '{\"changed\":{\"font_awesome\":[\"spider\",\"logo-image-spiders\"]},\"moreInfo\":[]}'),
(50, '2023-05-03 00:52:58', 1, 'services', 3, '{\"changed\":{\"font_awesome\":[\"bug\",\"logo-image-termite\"]},\"moreInfo\":[]}'),
(51, '2023-05-03 00:55:31', 1, 'services', 6, '{\"changed\":{\"font_awesome\":[\"mosquito\",\"logo-image-fleas\"]},\"moreInfo\":[]}'),
(52, '2023-05-06 03:23:02', 1, 'services', 6, '{\"changed\":{\"name\":[\"Wasps Nest Removal\",\"Wasps Nest\"],\"uri_value\":[\"wasps-nest-removal\",\"wasps-nest\"]},\"moreInfo\":[]}'),
(53, '2023-05-06 03:24:19', 1, 'services', 6, '{\"changed\":{\"short_description\":[\"Wasps Nest Removal: Tips for Safe and Effective Removal\",\"Tips for Safe and Effective Wasps Nest Removal Service\"]},\"moreInfo\":[]}'),
(54, '2023-05-06 03:25:14', 1, 'services', 7, '{\"changed\":{\"short_description\":[\"Ant Control: Tips for Effective Removal and Prevention\",\"Tips for Effective Control and Prevention of Ant\"]},\"moreInfo\":[]}'),
(55, '2023-05-06 03:26:01', 1, 'services', 8, '{\"changed\":{\"short_description\":[\"Bed Bug Control: How to Identify, Treat, and Prevent Infestations\",\"How to Identify, Treat, and Prevent Infestations to control Bed Bug\"]},\"moreInfo\":[]}'),
(56, '2023-05-06 03:27:05', 1, 'services', 1, '{\"changed\":{\"short_description\":[\"Cockroaches: How to Identify, Prevent, and Control Infestations\",\"How to Identify, Prevent, and Control Infestations made by Cockroaches movement\"]},\"moreInfo\":[]}'),
(57, '2023-05-06 03:27:46', 1, 'services', 5, '{\"changed\":{\"short_description\":[\"Fly Control: Tips for Keeping Your Home or Business Pest-Free\",\"Tips for Keeping Your Home or Business Fly Pest-Free\"]},\"moreInfo\":[]}'),
(58, '2023-05-06 03:28:19', 1, 'services', 4, '{\"changed\":{\"short_description\":[\"Rodents: The Unwelcome House Guests\",\"Rodents The Unwelcome House Guests\"]},\"moreInfo\":[]}'),
(59, '2023-05-06 03:29:07', 1, 'services', 2, '{\"changed\":{\"short_description\":[\"Spiders: Friend or Foe? Understanding these Common Arachnids\",\"Friend or Foe? Understanding these Common Arachnids Spiders\"]},\"moreInfo\":[]}'),
(60, '2023-05-06 03:29:40', 1, 'services', 3, '{\"changed\":{\"short_description\":[\"Termites: The Silent Destroyers\",\"Termites The Silent Destroyers\"]},\"moreInfo\":[]}'),
(61, '2023-05-06 03:30:40', 1, 'services', 1, '{\"changed\":{\"short_description\":[\"How to Identify, Prevent, and Control Infestations made by Cockroaches movement\",\"How to Prevent and Control Infestations made by Cockroaches movement\"]},\"moreInfo\":[]}'),
(62, '2023-05-06 03:31:12', 1, 'services', 1, '{\"changed\":{\"short_description\":[\"How to Prevent and Control Infestations made by Cockroaches movement\",\"How to Prevent Infestations made by Cockroaches movement\"]},\"moreInfo\":[]}'),
(63, '2023-05-06 03:32:07', 1, 'services', 3, '{\"changed\":{\"short_description\":[\"Termites The Silent Destroyers\",\"Control The Termites The Silent Destroyers\"]},\"moreInfo\":[]}'),
(64, '2023-05-06 03:33:19', 1, 'services', 5, '{\"changed\":{\"short_description\":[\"Tips for Keeping Your Home or Business Fly Pest-Free\",\"Keep Your Home or Business Fly Pest-Free\"]},\"moreInfo\":[]}'),
(65, '2023-05-06 03:35:26', 1, 'services', 8, '{\"changed\":{\"short_description\":[\"How to Identify, Treat, and Prevent Infestations to control Bed Bug\",\"How to Identify, Treat Infestations spread by Bed Bug\"]},\"moreInfo\":[]}'),
(66, '2023-05-06 03:36:00', 1, 'services', 2, '{\"changed\":{\"short_description\":[\"Friend or Foe? Understanding these Common Arachnids Spiders\",\"Understanding these Common Arachnids Spiders\"]},\"moreInfo\":[]}'),
(67, '2023-05-17 02:01:41', 2, 'news_articles', 1, '{\"changed\":{\"name\":[\"The Dangers of DIY Pest Control\",\"BUSINESS VISA\"],\"uri_value\":[\"the-dangers-of-diy-pest-control\",\"business-visa\"],\"short_description\":[\"This blog post could discuss the potential dangers of attempting to control pests without the help of a professional pest control service. The article could highlight the risks of using store-bought pesticides and other DIY methods that may not be effective in getting rid of pests or may even be harmful to humans and pets.\",\"For those who want to invest in or about to start businesses in Canada as an immigrant.\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(68, '2023-05-17 02:04:19', 2, 'news_articles', 2, '{\"changed\":{\"name\":[\"10 Common Household Pests and How to Get Rid of Them\",\"STUDENT VISA\"],\"uri_value\":[\"10-common-household-pests-and-how-to-get-rid-of-them\",\"student-visa\"],\"short_description\":[\"This article could provide readers with information about common household pests, such as ants, cockroaches, and rodents, and offer tips and tricks for getting rid of them. The article could also cover preventative measures that homeowners can take to keep pests from entering their homes in the first place.\",\"For study permit, student work permit, and Canadian Experience Class related needs.\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(69, '2023-05-17 02:07:17', 2, 'news_articles', 3, '{\"changed\":{\"name\":[\"The Importance of Regular Pest Inspections\",\"TEMPORARY WORK VISA\"],\"uri_value\":[\"the-importance-of-regular-pest-inspections\",\"temporary-work-visa\"],\"short_description\":[\"This article could emphasize the importance of regular pest inspections for both homeowners and business owners. The post could explain how routine inspections can help identify potential pest problems early on and prevent them from becoming more serious and costly to address later. The article could also offer tips for finding a reputable pest control company to conduct the inspections.\",\"For those who want to work in Canada or employers who want to hire foreign workers.\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}');
INSERT INTO `track_edits` (`track_edits_id`, `created_on`, `users_id`, `record_for`, `record_id`, `details`) VALUES
(70, '2023-05-17 04:56:49', 2, 'services', 1, '{\"changed\":{\"name\":[\"Cockroach\",\"Immigration\"],\"uri_value\":[\"Cockroach\",\"immigration\"],\"short_description\":[\"How to Prevent Infestations made by Cockroaches movement\",\"Permanent Resident, Family Sponsorship, Express Entry, Refugee Claim, Green Card.\"],\"description\":[\"Cockroaches are a common household pest that can be difficult to get rid of once they infest your home. These insects are known for their resilience and ability to adapt to a variety of environments, which makes them a particularly challenging pest to control.\\r\\n\\r\\nIdentification: Cockroaches are typically brown or black in color and have a flat, oval-shaped body. They have six legs and two long antennae that they use to navigate their environment. There are several different species of cockroaches, including the German cockroach, American cockroach, and Oriental cockroach, all of which have slightly different physical characteristics.\\r\\n\\r\\nBehavior: Cockroaches are primarily nocturnal and prefer to hide in dark, moist areas during the day. They are attracted to food and can often be found in kitchens, pantries, and other areas where food is stored. Cockroaches can also spread bacteria and disease, making them a health hazard in addition to being a nuisance.\\r\\n\\r\\nPrevention: To prevent cockroach infestations, it\\\\\'s important to keep your home clean and free of food debris. This includes wiping down counters and surfaces, storing food in airtight containers, and regularly taking out the garbage. Sealing up any cracks or gaps in your home\\\\\'s foundation can also help prevent cockroaches from entering.\\r\\n\\r\\nTreatment: If you do have a cockroach infestation, it\\\\\'s important to take action quickly to prevent the problem from getting worse. This may include using cockroach baits or traps, applying insecticides, or hiring a professional pest control company to eliminate the infestation.\\r\\n\\r\\nOverall, cockroaches are a pest that no homeowner wants to deal with. By taking preventative measures and seeking professional help when necessary, you can keep your home free of these pesky insects and protect your family\\\\\'s health and safety.\",\"Permanent Resident, Family Sponsorship, Express Entry, Refugee Claim, Green Card.\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(71, '2023-05-17 04:58:16', 2, 'services', 2, '{\"changed\":{\"name\":[\"Spiders\",\"Business Visa\"],\"uri_value\":[\"spiders\",\"business-visa\"],\"short_description\":[\"Understanding these Common Arachnids Spiders\",\"Business Visa, Federal & Provincial Entrepreneur Visa, Investor Programs.\"],\"description\":[\"Spiders are a common sight in homes and businesses around the world. While some people may find these eight-legged creatures creepy or frightening, others appreciate them for their role in controlling other pests, such as flies and mosquitoes. So, are spiders friend or foe? Let\\\\\'s take a closer look.\\r\\nFirst, it\\\\\'s important to understand that not all spiders are the same. In fact, there are more than 45,000 known species of spiders, each with their own unique characteristics and behaviors. While some spiders are venomous and can pose a threat to humans and pets, most species are harmless and prefer to avoid contact with people altogether.\\r\\n\\r\\nTo determine if you have a spider infestation in your home or business, it\\\\\'s important to know what to look for. Common signs of a spider infestation include spider webs, egg sacs, and spider sightings. If you suspect you have a spider problem, it\\\\\'s best to contact a pest control professional for an inspection and treatment plan.\\r\\n\\r\\nIf you\\\\\'re wondering whether or not you should try to get rid of spiders in your home, the answer depends on your personal preferences and the specific species of spider. If you have a harmless species of spider in your home, it may be best to leave them alone or relocate them outside. However, if you have a venomous species of spider, such as the black widow or brown recluse, it\\\\\'s important to seek professional pest control services to eliminate the infestation and prevent potential health risks.\\r\\n\\r\\nIn conclusion, while spiders may not be everyone\\\\\'s favorite creatures, they can play an important role in controlling other pests and maintaining the balance of ecosystems. By understanding these common arachnids and taking appropriate pest control measures when necessary, we can coexist with spiders in a safe and harmonious way.\",\"Business Visa, Federal & Provincial Entrepreneur Visa, Investor Programs.\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(72, '2023-05-17 05:01:00', 2, 'services', 3, '{\"changed\":{\"name\":[\"Termites\",\"Visitor Visa\"],\"uri_value\":[\"termites\",\"visitor-visa\"],\"short_description\":[\"Control The Termites The Silent Destroyers\",\"Temporary Resident Visa, Super Visa, Travel Documents, Vacation & Tourism.\"],\"description\":[\"Termites are often called \\\\\\\"silent destroyers\\\\\\\" because they can cause significant damage to a home or business without being detected until it\\\\\'s too late. These wood-eating insects are responsible for billions of dollars in property damage each year, making them a serious threat to homeowners and business owners alike.\\r\\nTermites are social insects that live in large colonies and feed on wood and other cellulose-based materials. They are typically found in warm, humid climates and can be difficult to detect due to their underground tunnels and hidden nesting sites.\\r\\n\\r\\nTo protect your home or business from termite damage, it\\\\\'s important to know what signs to look for. Common signs of a termite infestation include mud tubes on exterior walls, damaged or hollow-sounding wood, and discarded termite wings. If you suspect you have a termite problem, it\\\\\'s crucial to contact a pest control professional as soon as possible to prevent further damage.\\r\\n\\r\\nPreventing termite infestations starts with taking proactive measures to make your property less attractive to these pests. Some tips for preventing termites include reducing moisture levels in and around your home or business, keeping firewood and other wood-based materials away from the building, and sealing any cracks or gaps in the foundation or walls.\\r\\n\\r\\nIf you do end up with a termite infestation, there are several treatment options available. A pest control professional may recommend a variety of methods, including liquid treatments, baits, and fumigation. The best treatment option will depend on the severity of the infestation and other factors unique to your property.\\r\\n\\r\\nIn conclusion, termites are a serious threat to the structural integrity of homes and businesses. By taking proactive measures to prevent infestations and contacting a pest control professional at the first sign of trouble, you can protect your property from these silent destroyers.\",\"Temporary Resident Visa, Super Visa, Travel Documents, Vacation & Tourism.\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(73, '2023-05-17 05:03:12', 2, 'services', 4, '{\"changed\":{\"name\":[\"Rodents\",\"Citizenship and PR\"],\"uri_value\":[\"rodents\",\"citizenship-and-pr\"],\"short_description\":[\"Rodents The Unwelcome House Guests\",\"Citizenship Application, Appeal Hearing, PR Card Renewal, Humanitarian & Compassionate.\"],\"description\":[\"Rodents, such as mice and rats, are a common pest problem for homeowners and businesses. These small, furry creatures are known for their ability to squeeze through even the tiniest of openings and can cause significant damage to property if left unchecked.\\r\\nOne of the biggest concerns with rodents is their ability to spread disease. Rodents can carry a variety of diseases, including hantavirus, salmonellosis, and leptospirosis. They can also contaminate food and surfaces with their urine and droppings, posing a health risk to humans and pets.\\r\\n\\r\\nTo prevent a rodent infestation, it\\\\\'s important to take proactive measures to make your property less attractive to these pests. Some tips for preventing rodents include sealing any cracks or gaps in the foundation or walls, keeping food stored in airtight containers, and eliminating any sources of standing water.\\r\\n\\r\\nIf you suspect you have a rodent problem, there are several signs to look for. Common signs of a rodent infestation include gnaw marks on wires or other materials, droppings, and the sound of scurrying or scratching in the walls or ceilings. If you notice any of these signs, it\\\\\'s important to contact a pest control professional as soon as possible to prevent further damage and potential health risks.\\r\\n\\r\\nA pest control professional can provide a variety of treatment options for rodent infestations, including traps and baits. They can also offer advice on how to prevent future infestations and provide ongoing monitoring and maintenance services to ensure that your property remains rodent-free.\\r\\n\\r\\nIn conclusion, rodents can pose a serious health risk to humans and pets and can cause significant damage to property if left unchecked. By taking proactive measures to prevent infestations and contacting a pest control professional at the first sign of trouble, you can protect your property from these unwelcome house guests.\",\"Citizenship Application, Appeal Hearing, PR Card Renewal, Humanitarian & Compassionate.\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(74, '2023-05-17 05:05:10', 2, 'services', 5, '{\"changed\":{\"name\":[\"Fly Control\",\"Work Permit & LMIA\"],\"uri_value\":[\"fly-control\",\"work-permit-and-lmia\"],\"short_description\":[\"Keep Your Home or Business Fly Pest-Free\",\"Temporary Work Permit, Caregiver LMIA, Federal Skilled Workers (Express Entry)\"],\"description\":[\"Flies are a common pest problem that can be a nuisance for homeowners and businesses alike. These flying insects are known for their ability to spread disease and contaminate food and surfaces, making them a health risk to humans and pets.\\r\\n\\r\\nTo prevent a fly infestation, it\\\\\'s important to take proactive measures to make your property less attractive to these pests. Some tips for preventing flies include keeping food stored in airtight containers, cleaning up spills and crumbs immediately, and eliminating any sources of standing water.\\r\\n\\r\\nIf you already have a fly problem, there are several treatment options available. A pest control professional may recommend a variety of methods, including fly traps and baits, insecticides, and light traps. The best treatment option will depend on the severity of the infestation and other factors unique to your property.\\r\\n\\r\\nIn addition to prevention and treatment, it\\\\\'s also important to educate yourself and others about fly control. This can include learning about the different types of flies and their habits, as well as how to properly dispose of food waste and other potential attractants.\\r\\n\\r\\nBy taking proactive measures to prevent and control fly infestations, you can keep your home or business pest-free and reduce the risk of disease and contamination. A pest control professional can provide further advice and assistance in developing a comprehensive fly control plan tailored to your specific needs and concerns.\\r\\n\\r\\nIn conclusion, fly control is an important aspect of maintaining a healthy and pest-free environment for both humans and pets. By taking steps to prevent infestations and seeking professional assistance when needed, you can ensure that your property remains free from these annoying and potentially dangerous pests.\",\"Temporary Work Permit, Caregiver LMIA, Federal Skilled Workers (Express Entry)\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(75, '2023-05-17 05:08:08', 2, 'services', 6, '{\"changed\":{\"name\":[\"Wasps Nest\",\"Student Visa\"],\"uri_value\":[\"wasps-nest\",\"student-visa\"],\"short_description\":[\"Tips for Safe and Effective Wasps Nest Removal Service\",\"International Student Program, Co-op Work Permit, Post-Grad Work Permit.\"],\"description\":[\"Wasps Nest Removal are an important part of our ecosystem, but when they establish their hives in or around our homes or businesses, they can pose a serious risk to our health and safety. While it\\\\\'s important to respect these beneficial insects and their role in pollinating our crops and flowers, it\\\\\'s also important to know how to safely and effectively remove them when they become a nuisance.\\r\\n\\r\\nThe first step in bee control is to properly identify the species of bee and the location of the hive. Different species of bees have different behaviors and require different removal methods. For example, honey bees are social insects that form large colonies and are often found in cavities such as walls, while carpenter bees are solitary insects that burrow into wood.\\r\\n\\r\\nOnce you\\\\\'ve identified the bee species and hive location, it\\\\\'s important to take the appropriate safety precautions. Bees can become aggressive when their hive is disturbed, so it\\\\\'s important to wear protective clothing, avoid making sudden movements, and keep children and pets at a safe distance.\\r\\n\\r\\nIf the hive is small and accessible, it may be possible to remove it yourself using a vacuum or insecticide spray. However, if the hive is large or located in a difficult-to-reach area, it\\\\\'s best to seek professional help. A pest control professional can provide safe and effective removal methods that will minimize harm to the bees and prevent future infestations.\\r\\n\\r\\nIn addition to removal, it\\\\\'s also important to take preventive measures to reduce the risk of future bee infestations. This can include sealing up any gaps or cracks in your home or business, removing sources of standing water, and avoiding planting flowering plants near the building.\\r\\n\\r\\nBy taking a respectful and cautious approach to bee control, you can ensure the safety of yourself and others while also preserving the important role that bees play in our environment. A pest control professional can provide further advice and assistance in developing a comprehensive bee control plan tailored to your specific needs and concerns.\\r\\n\\r\\nIn conclusion, bee control is an important aspect of maintaining a safe and pest-free environment for both humans and bees. By taking steps to identify, remove, and prevent bee infestations, you can ensure the safety of yourself and others while also preserving the vital role that these beneficial insects play in our ecosystem.\",\"International Student Program, Co-op Work Permit, Post-Grad Work Permit.\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(76, '2023-05-17 19:54:09', 2, 'customers', 1, '{\"changed\":{\"name\":[\"Md. Abdus Shobhan\",\"Peter Hart\"],\"address\":[\"2942 Denforth Avenew, Toronto, Canada\",\"Cheif Consultant\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(77, '2023-05-17 19:55:40', 2, 'customers', 2, '{\"changed\":{\"name\":[\"Md. Abdus Shobhan\",\"Amanda Seyfried\"],\"address\":[\"2942 Danforth Ave,\",\"Consultant\"],\"users_id\":[\"1\",\"2\"]},\"moreInfo\":[]}'),
(78, '2023-05-17 20:00:31', 2, 'customers', 4, '{\"changed\":{\"name\":[\"Ruhul Amin\",\"Debbie K\\u00fcbel-Sorger\"],\"address\":[\"\",\"Consultant\"],\"users_id\":[\"0\",\"2\"]},\"moreInfo\":[]}'),
(79, '2023-05-17 20:02:42', 2, 'customers', 5, '{\"changed\":{\"name\":[\"Shaker Hossain\",\"Cintia Le Corre\"],\"address\":[\"\",\"Consultant\"],\"users_id\":[\"0\",\"2\"]},\"moreInfo\":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `password_hash` varchar(64) NOT NULL,
  `changepass_link` varchar(32) NOT NULL,
  `employee_number` varchar(20) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `branches_id` tinyint(1) NOT NULL,
  `users_first_name` varchar(12) NOT NULL,
  `users_last_name` varchar(17) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_publish` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(1) NOT NULL,
  `users_roll` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `minute_to_logout` smallint(6) NOT NULL DEFAULT 60,
  `popup_message` mediumtext NOT NULL,
  `login_message` text NOT NULL,
  `login_ck_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `password_hash`, `changepass_link`, `employee_number`, `pin`, `branches_id`, `users_first_name`, `users_last_name`, `users_email`, `users_publish`, `is_admin`, `users_roll`, `created_on`, `last_updated`, `lastlogin`, `minute_to_logout`, `popup_message`, `login_message`, `login_ck_id`) VALUES
(1, '$2y$10$ODEjMtZw4559Kf6zTW5pJ.Q8IyzmVi7CdnHiVk//Z7Yx3fgbTqwIK', '', '', '', 0, 'Super', 'Administrator', 'mdshobhancse@gmail.com', 1, 1, '[]', '2011-01-12 00:00:00', '2023-06-12 02:13:58', '2023-03-20 21:15:46', 60, '<h4><br></h4>', '', ''),
(2, '$2y$10$mDvBy1YFrT5NzBtGRT565.X4DkSU.H8QMhUUO9/ZO8gl1JwWVUcZC', '45be180323bb65cac44414eb31dc4038', '', '', 1, 'Abdus', 'Shobhan', 'shobhancse@gmail.com', 1, 1, '[]', '2011-01-12 00:00:00', '2023-07-08 01:14:33', '2023-07-08 01:14:33', 60, '<h4><br></h4>', '', 'c26c7956ecc7c63'),
(3, '$2y$10$Vt9qPgLXgaTyjjYhacQzWu1C7dgoW0CdoVAJ3h5yRDyZ5OEbjOfcW', '', '', '', 0, 'Info', 'Pesterminate', 'info@pesterminate.ca', 1, 0, '[]', '2021-04-30 10:15:01', '2023-05-02 01:34:25', '2023-05-02 01:34:25', 60, '', '', '19c6cb29dcf2125');

-- --------------------------------------------------------

--
-- Table structure for table `users_login_history`
--

CREATE TABLE `users_login_history` (
  `users_login_history_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `login_datetime` datetime NOT NULL,
  `logout_datetime` datetime NOT NULL,
  `login_ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_login_history`
--

INSERT INTO `users_login_history` (`users_login_history_id`, `users_id`, `login_datetime`, `logout_datetime`, `login_ip`) VALUES
(1, 3, '2023-03-21 20:41:15', '2023-03-21 20:41:15', '127.0.0.1'),
(2, 3, '2023-05-01 04:47:05', '2023-05-01 04:47:12', '103.175.130.18'),
(3, 3, '2023-05-01 04:49:14', '2023-05-01 04:49:39', '103.175.130.18'),
(4, 3, '2023-05-01 04:49:56', '2023-05-01 04:49:56', '103.175.130.18'),
(5, 3, '2023-05-01 06:06:42', '2023-05-01 06:06:42', '103.252.226.12'),
(6, 3, '2023-05-02 01:33:29', '2023-05-02 01:33:29', '49.0.33.130'),
(7, 3, '2023-05-02 01:34:02', '2023-05-02 01:34:02', '49.0.33.130'),
(8, 3, '2023-05-02 01:34:25', '2023-05-02 01:34:25', '49.0.33.130'),
(9, 2, '2023-05-09 23:12:09', '2023-05-09 23:12:09', '::1'),
(10, 2, '2023-05-16 23:28:57', '2023-05-17 23:02:17', '::1'),
(11, 2, '2023-05-17 23:02:23', '2023-05-17 23:02:23', '::1'),
(12, 2, '2023-05-20 23:56:11', '2023-05-20 23:56:11', '::1'),
(13, 2, '2023-05-21 23:55:34', '2023-05-21 23:55:34', '::1'),
(14, 2, '2023-05-22 22:54:54', '2023-05-22 22:54:54', '::1'),
(15, 2, '2023-05-23 23:32:39', '2023-05-23 23:32:39', '::1'),
(16, 2, '2023-05-29 04:16:34', '2023-05-29 04:16:34', '::1'),
(17, 2, '2023-05-29 06:42:20', '2023-05-29 06:42:20', '::1'),
(18, 2, '2023-05-30 00:20:27', '2023-05-30 00:20:27', '::1'),
(19, 2, '2023-05-30 23:43:52', '2023-05-30 23:43:52', '::1'),
(20, 2, '2023-05-31 02:41:09', '2023-05-31 02:41:09', '::1'),
(21, 2, '2023-06-12 02:13:34', '2023-06-12 02:13:34', '49.0.33.130'),
(22, 2, '2023-06-12 02:13:49', '2023-06-12 02:13:49', '49.0.33.130'),
(23, 2, '2023-06-12 02:15:21', '2023-06-12 02:15:21', '49.0.33.130'),
(24, 2, '2023-06-12 02:22:08', '2023-06-12 02:22:08', '49.0.33.130'),
(25, 2, '2023-06-12 02:35:55', '2023-06-12 02:35:55', '49.0.33.130'),
(26, 2, '2023-06-13 00:03:23', '2023-06-13 00:03:23', '49.0.33.130'),
(27, 2, '2023-06-13 00:03:36', '2023-06-13 00:03:36', '49.0.33.130'),
(28, 2, '2023-06-13 04:22:15', '2023-06-13 04:22:15', '49.0.33.130'),
(29, 2, '2023-06-13 23:48:43', '2023-06-13 23:48:43', '49.0.33.130'),
(30, 2, '2023-06-13 23:57:36', '2023-06-13 23:57:36', '49.0.33.130'),
(31, 2, '2023-06-14 04:24:45', '2023-06-14 04:24:45', '49.0.33.130'),
(32, 2, '2023-06-15 00:37:57', '2023-06-15 00:37:57', '49.0.33.130'),
(33, 2, '2023-06-16 23:41:06', '2023-06-17 01:24:08', '49.0.33.130'),
(34, 2, '2023-06-17 01:24:16', '2023-06-17 01:26:22', '49.0.33.130'),
(35, 2, '2023-06-17 01:26:28', '2023-06-17 01:26:28', '49.0.33.130'),
(36, 2, '2023-06-19 00:09:48', '2023-06-19 00:09:48', '49.0.33.130'),
(37, 2, '2023-06-20 02:01:54', '2023-06-20 02:01:54', '49.0.33.130'),
(38, 2, '2023-06-20 02:44:09', '2023-06-20 02:44:09', '49.0.33.130'),
(39, 2, '2023-06-21 04:36:28', '2023-06-21 05:00:36', '49.0.33.130'),
(40, 2, '2023-06-21 05:00:44', '2023-06-21 05:08:25', '49.0.33.130'),
(41, 2, '2023-06-21 05:08:31', '2023-06-21 05:08:31', '49.0.33.130'),
(42, 2, '2023-06-24 03:55:30', '2023-06-24 03:55:30', '49.0.33.130'),
(43, 2, '2023-06-25 05:35:24', '2023-06-25 05:35:24', '49.0.33.130'),
(44, 2, '2023-07-08 00:10:54', '2023-07-08 00:10:54', '49.0.33.130'),
(45, 2, '2023-07-08 01:14:33', '2023-07-08 01:14:33', '49.0.33.130');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videos_id` int(11) NOT NULL,
  `videos_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `youtube_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videos_id`, `videos_publish`, `created_on`, `last_updated`, `users_id`, `name`, `youtube_url`) VALUES
(1, 1, '2023-03-19 22:55:04', '2023-05-17 04:06:53', 2, 'Cockroach Health Risks', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `why_choose_us_id` int(11) NOT NULL,
  `why_choose_us_publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `why_choose_us`
--

INSERT INTO `why_choose_us` (`why_choose_us_id`, `why_choose_us_publish`, `created_on`, `last_updated`, `users_id`, `name`, `description`) VALUES
(1, 1, '2023-03-20 23:06:29', '2023-05-17 19:30:36', 2, 'Fill In The Required Form', 'You can call or email us to register for our services. Fill up the form details and we will get back to you.'),
(2, 1, '2023-03-20 23:06:48', '2023-05-17 19:31:25', 2, 'Submit All Your Documents', 'Our experts suggest documentation submission as per country’s policy and applicant base.'),
(3, 1, '2023-03-20 23:07:02', '2023-05-17 19:32:06', 2, 'We Will Call', 'After reviewing your documents we will communicate with you for the next personal meeting for guidance.'),
(4, 1, '2023-03-20 23:07:20', '2023-05-17 19:32:45', 2, 'Ready To Receive Your Visa', 'That’s all! It’s that simple. We will ensure you obtain your Visa after the government has approved your case.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_feed`
--
ALTER TABLE `activity_feed`
  ADD PRIMARY KEY (`activity_feed_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointments_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branches_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `customer_reviews`
--
ALTER TABLE `customer_reviews`
  ADD PRIMARY KEY (`customer_reviews_id`);

--
-- Indexes for table `front_menu`
--
ALTER TABLE `front_menu`
  ADD PRIMARY KEY (`front_menu_id`),
  ADD KEY `menu_uri` (`menu_uri`) USING BTREE;

--
-- Indexes for table `news_articles`
--
ALTER TABLE `news_articles`
  ADD PRIMARY KEY (`news_articles_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pages_id`);

--
-- Indexes for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  ADD PRIMARY KEY (`photo_gallery_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `track_edits`
--
ALTER TABLE `track_edits`
  ADD PRIMARY KEY (`track_edits_id`),
  ADD KEY `created_by` (`record_for`,`record_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `users_login_history`
--
ALTER TABLE `users_login_history`
  ADD PRIMARY KEY (`users_login_history_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videos_id`);

--
-- Indexes for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`why_choose_us_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_feed`
--
ALTER TABLE `activity_feed`
  MODIFY `activity_feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branches_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_reviews`
--
ALTER TABLE `customer_reviews`
  MODIFY `customer_reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `front_menu`
--
ALTER TABLE `front_menu`
  MODIFY `front_menu_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `news_articles`
--
ALTER TABLE `news_articles`
  MODIFY `news_articles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  MODIFY `photo_gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `track_edits`
--
ALTER TABLE `track_edits`
  MODIFY `track_edits_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_login_history`
--
ALTER TABLE `users_login_history`
  MODIFY `users_login_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `videos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `why_choose_us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
