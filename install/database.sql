-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2019 at 06:39 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v303_empty`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `ads_id` int(11) NOT NULL AUTO_INCREMENT,
  `ads_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ads_size` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ads_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ads_url` text COLLATE utf8_unicode_ci NOT NULL,
  `ads_image_url` mediumtext COLLATE utf8_unicode_ci,
  `ads_code` longtext COLLATE utf8_unicode_ci,
  `enable` int(1) DEFAULT '0',
  PRIMARY KEY (`ads_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ads_id`, `ads_name`, `unique_name`, `ads_size`, `ads_type`, `ads_url`, `ads_image_url`, `ads_code`, `enable`) VALUES
(1, 'Home Page Header', 'home_header', '728x90', 'code', '#', 'uploads/ads/728x90.jpg', '', 0),
(2, 'Movie Page Header', 'movie_header', '728x90', 'image', '#', 'uploads/ads/728x90.jpg', '', 0),
(3, 'Genre Page Header', 'genre_header', '728x90', 'image', '#', 'uploads/ads/728x90.jpg', '', 0),
(4, 'Country Page Header', 'country_header', '728x90', 'image', '#', 'uploads/ads/728x90.jpg', '', 0),
(5, 'Release Page Header', 'release_header', '728x90', 'code', '#', 'uploads/ads/728x90.jpg', '', 0),
(6, 'TV-series Page Header', 'tv_header', '728x90', 'image', '#', 'uploads/ads/728x90.jpg', '', 0),
(7, 'Type Page Header', 'type_header', '728x90', 'image', '#', 'uploads/ads/728x90.jpg', '', 0),
(8, 'Blog Page Header', 'blog_header', '728x90', 'image', '#', 'uploads/ads/728x90.jpg', '', 0),
(9, 'Sidebar', 'sidebar', '300x600', 'image', '#', 'uploads/ads/300x600.jpg', '', 0),
(12, 'Player Bottom', 'player_bottom', '728x90', 'image', '#', 'uploads/ads/728x90.jpg', '', 0),
(10, 'Player Top', 'player_top', '728x90', 'image', '#', 'uploads/ads/728x90.jpg', '', 0),
(11, 'Billboard(For movie,Landing page & watch page)', 'billboard', '970x250', 'code', '#', 'uploads/ads/970x250.jpg', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comments_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `video_id` int(20) NOT NULL,
  `comment_type` int(5) NOT NULL DEFAULT '1',
  `replay_for` int(10) DEFAULT '0',
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `comment_at` datetime DEFAULT NULL,
  `publication` int(5) DEFAULT '0',
  PRIMARY KEY (`comments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`config_id`, `title`, `value`) VALUES
(1, 'system_name', 'OVOO - Live TV & Movie Portal CMS with Unlimited TV-Series'),
(2, 'site_name', 'My Movie Site'),
(3, 'author', 'Jone Doe'),
(4, 'business_address', 'My Address'),
(5, 'business_phone', '880170000000'),
(6, 'contact_email', 'contact@mydomain.com'),
(7, 'system_email', 'email@mydomain.com'),
(8, 'system_short_name', 'OVOO'),
(9, 'social_share_enable', '0'),
(10, 'default_color', '#00CC6A'),
(11, 'front_end_theme', 'blue'),
(12, 'seo_title', 'Ovoo Movie Stream CMS Pro'),
(13, 'focus_keyword', ''),
(14, 'meta_description', ''),
(15, 'blog_enable', '1'),
(16, 'blog_title', 'Blog Page SEO Title'),
(17, 'blog_keyword', ''),
(18, 'blog_meta_description', ''),
(19, 'home_page_seo_title', 'Your Website Home Page SEO Title'),
(20, 'language', 'english'),
(21, 'site_url', 'https://mydomain.com'),
(22, 'total_movie_in_slider', '10'),
(23, 'footer1_title', 'About'),
(24, 'footer1_content', ''),
(25, 'footer2_title', 'Useful Link'),
(26, 'footer2_content', ''),
(27, 'footer3_title', 'Useful Link'),
(28, 'footer3_content', ''),
(29, 'copyright_text', 'Copyright 2016 <a href=\"#\">Business Name</a>'),
(30, 'slider_type', 'disable'),
(31, 'slide_per_page', '8'),
(32, 'protocol', 'smtp'),
(33, 'mailpath', '/usr/bin/sendmail'),
(34, 'smtp_host', 'smtp.gmail.com'),
(35, 'smtp_user', 'xxxxxxx@gmail.com'),
(36, 'smtp_pass', 'xxxxxxxxxxxxxxxxxxxxxxx'),
(37, 'smtp_port', '465'),
(38, 'smtp_crypto', 'ssl'),
(39, 'facebook_url', '#'),
(40, 'twitter_url', '#'),
(41, 'vimeo_url', '#'),
(42, 'linkedin_url', '#'),
(43, 'youtube_url', '#'),
(44, 'google_analytics_id', 'UA-00000000-1'),
(45, 'about_us_enable', '1'),
(46, 'about_us_title', 'about'),
(47, 'about_us_text', 'about us'),
(48, 'about_us_to_primary_menu', '1'),
(49, 'about_us_to_footer_menu', '0'),
(50, 'facebook_comment_appid', '0000'),
(51, 'comments_method', 'ovoo'),
(52, 'comments_approval', '0'),
(53, 'ad_160x600_code', ''),
(54, 'ad_160x600_type', '1'),
(55, 'ad_160x600_image_url', ''),
(56, 'ad_250x300_type', '1'),
(57, 'ad_250x300_image_url', ''),
(58, 'ad_250x300_code', ''),
(59, 'ad_160x600_url', ''),
(60, 'ad_250x300_url', '#'),
(61, 'map_api', 'xxxxxxxxxxxxxxxxxxxxxxx'),
(62, 'map_lat', 'xxxxxxxxxxxxxxxx'),
(63, 'map_lng', 'xxxxxxxxxxxxxxxxxxxx'),
(64, 'movie_per_page', '18'),
(65, 'google_application_name', 'Connect With Ovoo'),
(66, 'google_client_id', 'xxxxxxxxxxxxxxxxxxxx'),
(67, 'google_client_secret', 'xxxxxxxxxxxxxxxxxxxxxxx'),
(68, 'google_redirect_uri', '#'),
(69, 'google_api_key', ''),
(70, 'google_login_enable', '0'),
(71, 'facebook_app_id', 'xxxxxxxxxxxxxxxxxxxx'),
(72, 'facebook_app_secret', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(73, 'facebook_graph_version', 'v2.10'),
(74, 'google_login_enable', '0'),
(75, 'facebook_login_enable', '0'),
(76, 'tv_series_publish', '1'),
(77, 'tv_series_title', 'Tv-Series Page SEO Title'),
(78, 'tv_series_keyword', ''),
(79, 'tv_series_meta_description', '                              '),
(80, 'tv_series_pin_primary_menu', '1'),
(81, 'tv_series_pin_footer_menu', '1'),
(82, 'purchase_code', 'item_purchase_code'),
(83, 'header_templete', 'header1'),
(84, 'footer_templete', 'footer1'),
(85, 'dark_theme', '1'),
(86, 'player_color_skin', 'blue'),
(87, 'player_watermark', '1'),
(88, 'player_watermark_logo', 'uploads/watermark_logo.png'),
(89, 'player_watermark_url', '#'),
(90, 'player_share', '1'),
(91, 'player_share_fb_id', '35345'),
(92, 'player_seek_button', '1'),
(95, 'player_volume_remember', '1'),
(93, 'player_seek_forward', '10'),
(94, 'player_seek_back', '5'),
(98, 'live_tv_publish', '1'),
(99, 'live_tv_title', 'Latest TV Page SEO Title'),
(100, 'live_tv_keyword', ''),
(101, 'live_tv_meta_description', '                              '),
(102, 'live_tv_pin_primary_menu', '1'),
(103, 'live_tv_pin_footer_menu', '1'),
(104, 'registration_enable', '1'),
(105, 'frontend_login_enable', '1'),
(106, 'push_notification_enable', ''),
(107, 'onesignal_appid', 'xxxxxxxxxxxxxxx'),
(108, 'onesignal_actionmessage', 'We\\\'d like to show you notifications for the latest news.'),
(109, 'onesignal_acceptbuttontext', 'ALLOW'),
(110, 'onesignal_cancelbuttontext', 'NO THANKS'),
(111, 'onesignal_api_keys', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(112, 'landing_page_enable', '1'),
(113, 'landing_page_image_url', ''),
(142, 'mobile_apps_api_secret_key', '1kkfhferpae5x178fny1fagc'),
(115, 'country_to_primary_menu', '1'),
(116, 'genre_to_primary_menu', '1'),
(117, 'release_to_primary_menu', '1'),
(118, 'show_star_image', '0'),
(119, 'movie_page_seo_title', 'Movie Page SEO Title'),
(120, 'movie_page_focus_keyword', ''),
(121, 'movie_page_meta_description', ''),
(128, 'dmca_policy_content', 'privacy_policy_content'),
(122, 'privacy_policy_content', ''),
(123, 'privacy_policy_to_primary_menu', '0'),
(124, 'privacy_policy_to_footer_menu', '1'),
(125, 'disclaimer_text', '<b>Disclaimer:</b> This site does not store any files on its server. All contents are provided by non-affiliated third parties.'),
(126, 'disclaimer_text_enable', '1'),
(127, 'movie_report_enable', '0'),
(129, 'dmca_to_primary_menu', '0'),
(130, 'dmca_to_footer_menu', '1'),
(131, 'dmca_content', ''),
(132, 'contact_to_primary_menu', '0'),
(133, 'contact_to_footer_menu', '1'),
(134, 'movie_report_note', 'Please help us to describe the issue so we can fix it asap. \r\nNote: This feature used to report issue for current movie, not used for requesting new subtitle/audio in another language'),
(135, 'movie_report_email', 'contact@mydomain.com'),
(136, 'movie_request_enable', '0'),
(137, 'movie_request_email', 'contact@mydomain.com'),
(138, 'envato_support_untill', '2019-01-01'),
(139, 'cron_key', '1234567890123456'),
(140, 'db_backup', '1'),
(141, 'backup_schedule', '1'),
(143, 'version', '3.0.3');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(25) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `publication` int(2) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES
(1, 'International', '', 'international', 1),
(2, 'Asia', '', 'asia', 1),
(3, 'USA', '', 'usa', 1),
(4, 'China', '', 'china', 1),
(5, 'Japan', '', 'japan', 1),
(6, 'Korean', '', 'korean', 1),
(7, 'Nepal', '', 'nepal', 1),
(8, 'Thailand', '', 'thailand', 1),
(9, 'Tamil', '', 'tamil', 1),
(10, 'India', '', 'india', 1),
(11, 'France', '', 'france', 1),
(12, 'Italy', '', 'italy', 1),
(13, 'German', '', 'german', 1),
(14, 'London', '', 'london', 1),
(15, 'Canada', '', 'canada', 1),
(16, 'Denmark', '', 'denmark', 1),
(17, 'UK', '', 'uk', 1),
(18, 'Hong kong', '', 'hong-kong', 1),
(19, 'UAE', '', 'uae', 1),
(20, 'Australia', '', 'australia', 1),
(21, 'South Korea', '', 'south-korea', 1),
(22, 'Russia', '', 'russia', 1),
(23, ' Sweden', '', 'sweden', 1),
(24, 'Spain', '', 'spain', 1),
(25, 'Brazil', '', 'brazil', 1),
(26, 'Iran', '', 'iran', 1),
(27, 'Israel', '', 'israel', 1),
(28, 'Indonesia', '', 'indonesia', 1),
(29, 'Philippines', '', 'philippines', 1),
(30, ' Peru', ' Peru', 'peru', 1),
(31, ' Canada', ' Canada', 'canada', 1),
(32, ' Japan', ' Japan', 'japan', 1),
(33, ' USA', ' USA', 'usa', 1),
(34, ' Hong Kong', ' Hong Kong', 'hong-kong', 1),
(35, ' Mexico', ' Mexico', 'mexico', 1),
(36, ' New Zealand', ' New Zealand', 'new-zealand', 1),
(37, ' UK', ' UK', 'uk', 1),
(38, ' Denmark', ' Denmark', 'denmark', 1),
(39, ' Australia', ' Australia', 'australia', 1),
(40, ' Germany', ' Germany', 'germany', 1),
(41, ' Hungary', ' Hungary', 'hungary', 1),
(42, ' India', ' India', 'india', 1),
(43, 'Hungary', 'Hungary', 'hungary', 1),
(44, ' France', ' France', 'france', 1),
(45, ' China', ' China', 'china', 1),
(46, 'Chile', 'Chile', 'chile', 1),
(47, ' Argentina', ' Argentina', 'argentina', 1),
(48, 'Egypt', 'Egypt', 'egypt', 1),
(49, 'New Zealand', 'New Zealand', 'new-zealand', 1),
(50, 'Croatia', 'Croatia', 'croatia', 1),
(51, ' Switzerland', ' Switzerland', 'switzerland', 1),
(52, ' Tunisia', ' Tunisia', 'tunisia', 1),
(53, 'Belgium', 'Belgium', 'belgium', 1),
(68, 'United States of America', 'United States of America', 'united-states-of-america', 1),
(69, 'Bangladesh', 'Bangladesh', 'bangladesh', 1),
(70, 'United Kingdom', 'United Kingdom', 'united-kingdom', 1),
(71, 'Malaysia', 'Malaysia', 'malaysia', 1),
(72, 'South Africa', 'South Africa', 'south-africa', 1),
(73, 'Switzerland', 'Switzerland', 'switzerland', 1),
(74, 'Germany', 'Germany', 'germany', 1),
(75, 'Sweden', 'Sweden', 'sweden', 1),
(76, 'Bulgaria', 'Bulgaria', 'bulgaria', 1),
(77, 'Soviet Union', 'Soviet Union', 'soviet-union', 1),
(78, 'Netherlands', 'Netherlands', 'netherlands', 1),
(80, 'Malta', 'Malta', 'malta', 1),
(81, 'Taiwan', 'Taiwan', 'taiwan', 1),
(82, 'Argentina', 'Argentina', 'argentina', 1),
(83, 'Iceland', 'Iceland', 'iceland', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cron`
--

DROP TABLE IF EXISTS `cron`;
CREATE TABLE IF NOT EXISTS `cron` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `save_to` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `videos_id` int(250) DEFAULT NULL,
  `admin_email_from` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_to` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_sub` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  PRIMARY KEY (`cron_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `download_link`
--

DROP TABLE IF EXISTS `download_link`;
CREATE TABLE IF NOT EXISTS `download_link` (
  `download_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `link_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `download_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`download_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE IF NOT EXISTS `episodes` (
  `episodes_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_id` int(11) DEFAULT NULL,
  `episodes_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_source` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_type` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT '2019-04-04 00:00:00',
  PRIMARY KEY (`episodes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(250) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `publication` int(1) NOT NULL,
  `featured` int(2) DEFAULT '0',
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES
(1, 'Action', 'Action Movie<br>', 'action', 1, 1),
(2, 'TV Show', 'Tv Show <br>', 'tv-show', 1, 0),
(3, 'Si-Fi', '', 'si-fi', 1, 0),
(4, 'Adventure', 'Adventure Movies<br>', 'adventure', 1, 0),
(5, 'Animation', 'Animation Movies<br>', 'animation', 1, 0),
(6, 'Biography', 'Biography Movies<br>', 'biography', 1, 0),
(7, 'Comedy', 'Comedy Movies<br>', 'comedy', 1, 1),
(8, 'Crime', 'Crime Movies<br>', 'crime', 1, 0),
(9, 'Documentary', 'Documentary Movies<br>', 'documentary', 1, 0),
(10, 'Drama', '', 'drama', 1, 0),
(11, 'Family', 'Family<br>', 'family', 1, 0),
(12, 'Fantasy', 'Fantasy Movies<br>', 'fantasy', 1, 0),
(13, 'History', '', 'history', 1, 0),
(14, 'Horror', 'Horror Movies<br>', 'horror', 1, 1),
(15, 'Music', '', 'music', 1, 0),
(16, 'Musical', '', 'musical', 1, 0),
(17, 'Mystery', '', 'mystery', 1, 0),
(18, 'Thriller', '', 'thriller', 1, 1),
(19, 'War', '', 'war', 1, 0),
(20, 'Western', '', 'western', 1, 0),
(21, 'TV Series', '', 'tv-series', 1, 0),
(22, ' Romance', ' Romance', 'romance', 1, 0),
(23, ' Adventure', ' Adventure', 'adventure', 1, 0),
(24, ' Thriller', ' Thriller', 'thriller', 1, 0),
(25, ' Drama', ' Drama', 'drama', 1, 0),
(26, ' Fantasy', ' Fantasy', 'fantasy', 1, 0),
(27, ' Sci-Fi', ' Sci-Fi', 'sci-fi', 1, 0),
(28, ' Comedy', ' Comedy', 'comedy', 1, 0),
(29, ' Family', ' Family', 'family', 1, 0),
(30, ' Action', ' Action', 'action', 1, 0),
(31, 'Short', 'Short', 'short', 1, 0),
(32, ' Music', ' Music', 'music', 1, 0),
(33, ' History', ' History', 'history', 1, 0),
(34, ' Crime', ' Crime', 'crime', 1, 0),
(35, ' Western', ' Western', 'western', 1, 0),
(36, ' Sport', ' Sport', 'sport', 1, 0),
(37, ' Short', ' Short', 'short', 1, 0),
(38, ' Mystery', ' Mystery', 'mystery', 1, 0),
(39, 'Romance', 'Romance', 'romance', 1, 0),
(40, 'Action & Adventure', 'Action & Adventure', 'action-adventure', 1, 0),
(41, 'Sci-Fi & Fantasy', 'Sci-Fi & Fantasy', 'sci-fi-fantasy', 1, 0),
(42, 'Science Fiction', 'Science Fiction', 'science-fiction', 1, 0),
(44, 'TV Movie', 'TV Movie', 'tv-movie', 1, 0),
(45, 'News', 'News', 'news', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bengali` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dutch` longtext COLLATE utf8_unicode_ci NOT NULL,
  `russian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `chinese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `turkish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hungarian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `french` longtext COLLATE utf8_unicode_ci NOT NULL,
  `greek` longtext COLLATE utf8_unicode_ci NOT NULL,
  `german` longtext COLLATE utf8_unicode_ci NOT NULL,
  `italian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thai` longtext COLLATE utf8_unicode_ci NOT NULL,
  `urdu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci NOT NULL,
  `latin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `indonesian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `japanese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `korean` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11317 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages_iso`
--

DROP TABLE IF EXISTS `languages_iso`;
CREATE TABLE IF NOT EXISTS `languages_iso` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` char(49) CHARACTER SET utf8 DEFAULT NULL,
  `iso` char(2) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `languages_iso`
--

INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES
(1, 'English', 'en'),
(2, 'Afar', 'aa'),
(3, 'Abkhazian', 'ab'),
(4, 'Afrikaans', 'af'),
(5, 'Amharic', 'am'),
(6, 'Arabic', 'ar'),
(7, 'Assamese', 'as'),
(8, 'Aymara', 'ay'),
(9, 'Azerbaijani', 'az'),
(10, 'Bashkir', 'ba'),
(11, 'Belarusian', 'be'),
(12, 'Bulgarian', 'bg'),
(13, 'Bihari', 'bh'),
(14, 'Bislama', 'bi'),
(15, 'Bangla', 'bn'),
(16, 'Tibetan', 'bo'),
(17, 'Breton', 'br'),
(18, 'Catalan', 'ca'),
(19, 'Corsican', 'co'),
(20, 'Czech', 'cs'),
(21, 'Welsh', 'cy'),
(22, 'Danish', 'da'),
(23, 'German', 'de'),
(24, 'Bhutani', 'dz'),
(25, 'Greek', 'el'),
(26, 'Esperanto', 'eo'),
(27, 'Spanish', 'es'),
(28, 'Estonian', 'et'),
(29, 'Basque', 'eu'),
(30, 'Persian', 'fa'),
(31, 'Finnish', 'fi'),
(32, 'Fiji', 'fj'),
(33, 'Faeroese', 'fo'),
(34, 'French', 'fr'),
(35, 'Frisian', 'fy'),
(36, 'Irish', 'ga'),
(37, 'Scots/Gaelic', 'gd'),
(38, 'Galician', 'gl'),
(39, 'Guarani', 'gn'),
(40, 'Gujarati', 'gu'),
(41, 'Hausa', 'ha'),
(42, 'Hindi', 'hi'),
(43, 'Croatian', 'hr'),
(44, 'Hungarian', 'hu'),
(45, 'Armenian', 'hy'),
(46, 'Interlingua', 'ia'),
(47, 'Interlingue', 'ie'),
(48, 'Inupiak', 'ik'),
(49, 'Indonesian', 'in'),
(50, 'Icelandic', 'is'),
(51, 'Italian', 'it'),
(52, 'Hebrew', 'iw'),
(53, 'Japanese', 'ja'),
(54, 'Yiddish', 'ji'),
(55, 'Javanese', 'jw'),
(56, 'Georgian', 'ka'),
(57, 'Kazakh', 'kk'),
(58, 'Greenlandic', 'kl'),
(59, 'Cambodian', 'km'),
(60, 'Kannada', 'kn'),
(61, 'Korean', 'ko'),
(62, 'Kashmiri', 'ks'),
(63, 'Kurdish', 'ku'),
(64, 'Kirghiz', 'ky'),
(65, 'Latin', 'la'),
(66, 'Lingala', 'ln'),
(67, 'Laothian', 'lo'),
(68, 'Lithuanian', 'lt'),
(69, 'Latvian/Lettish', 'lv'),
(70, 'Malagasy', 'mg'),
(71, 'Maori', 'mi'),
(72, 'Macedonian', 'mk'),
(73, 'Malayalam', 'ml'),
(74, 'Mongolian', 'mn'),
(75, 'Moldavian', 'mo'),
(76, 'Marathi', 'mr'),
(77, 'Malay', 'ms'),
(78, 'Maltese', 'mt'),
(79, 'Burmese', 'my'),
(80, 'Nauru', 'na'),
(81, 'Nepali', 'ne'),
(82, 'Dutch', 'nl'),
(83, 'Norwegian', 'no'),
(84, 'Occitan', 'oc'),
(85, '(Afan)/Oromoor/Oriya', 'om'),
(86, 'Punjabi', 'pa'),
(87, 'Polish', 'pl'),
(88, 'Pashto/Pushto', 'ps'),
(89, 'Portuguese', 'pt'),
(90, 'Quechua', 'qu'),
(91, 'Rhaeto-Romance', 'rm'),
(92, 'Kirundi', 'rn'),
(93, 'Romanian', 'ro'),
(94, 'Russian', 'ru'),
(95, 'Kinyarwanda', 'rw'),
(96, 'Sanskrit', 'sa'),
(97, 'Sindhi', 'sd'),
(98, 'Sangro', 'sg'),
(99, 'Serbo-Croatian', 'sh'),
(100, 'Singhalese', 'si'),
(101, 'Slovak', 'sk'),
(102, 'Slovenian', 'sl'),
(103, 'Samoan', 'sm'),
(104, 'Shona', 'sn'),
(105, 'Somali', 'so'),
(106, 'Albanian', 'sq'),
(107, 'Serbian', 'sr'),
(108, 'Siswati', 'ss'),
(109, 'Sesotho', 'st'),
(110, 'Sundanese', 'su'),
(111, 'Swedish', 'sv'),
(112, 'Swahili', 'sw'),
(113, 'Tamil', 'ta'),
(114, 'Telugu', 'te'),
(115, 'Tajik', 'tg'),
(116, 'Thai', 'th'),
(117, 'Tigrinya', 'ti'),
(118, 'Turkmen', 'tk'),
(119, 'Tagalog', 'tl'),
(120, 'Setswana', 'tn'),
(121, 'Tonga', 'to'),
(122, 'Turkish', 'tr'),
(123, 'Tsonga', 'ts'),
(124, 'Tatar', 'tt'),
(125, 'Twi', 'tw'),
(126, 'Ukrainian', 'uk'),
(127, 'Urdu', 'ur'),
(128, 'Uzbek', 'uz'),
(129, 'Vietnamese', 'vi'),
(130, 'Volapuk', 'vo'),
(131, 'Wolof', 'wo'),
(132, 'Xhosa', 'xh'),
(133, 'Yoruba', 'yo'),
(134, 'Chinese', 'zh'),
(135, 'Zulu', 'zu');

-- --------------------------------------------------------

--
-- Table structure for table `live_tv`
--

DROP TABLE IF EXISTS `live_tv`;
CREATE TABLE IF NOT EXISTS `live_tv` (
  `live_tv_id` int(11) NOT NULL AUTO_INCREMENT,
  `tv_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_tv_category_id` int(50) DEFAULT NULL,
  `slug` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `language` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'en',
  `stream_from` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `poster` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `thumbnail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `focus_keyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(2) DEFAULT '1',
  `tags` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `publish` int(10) UNSIGNED DEFAULT '0',
  PRIMARY KEY (`live_tv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_category`
--

DROP TABLE IF EXISTS `live_tv_category`;
CREATE TABLE IF NOT EXISTS `live_tv_category` (
  `live_tv_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_tv_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_tv_category_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`live_tv_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_url`
--

DROP TABLE IF EXISTS `live_tv_url`;
CREATE TABLE IF NOT EXISTS `live_tv_url` (
  `live_tv_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `live_tv_id` int(11) DEFAULT NULL,
  `url_for` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`live_tv_url_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `seo_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `primary_menu` int(10) DEFAULT '0',
  `footer_menu` int(10) DEFAULT '0',
  `focus_keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `publication` int(11) DEFAULT '1',
  `publish_at` datetime DEFAULT NULL,
  `deletable` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `posts_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `seo_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `focus_keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `category_id` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image_link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int(20) DEFAULT '1',
  `post_at` datetime DEFAULT NULL,
  `publication` int(11) DEFAULT '1',
  PRIMARY KEY (`posts_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

DROP TABLE IF EXISTS `post_category`;
CREATE TABLE IF NOT EXISTS `post_category` (
  `post_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `slug` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`post_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE IF NOT EXISTS `post_comments` (
  `post_comments_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `post_id` int(20) NOT NULL,
  `comment_type` int(5) NOT NULL DEFAULT '1',
  `replay_for` int(10) DEFAULT '0',
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `comment_at` datetime DEFAULT NULL,
  `publication` int(5) DEFAULT '1',
  PRIMARY KEY (`post_comments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

DROP TABLE IF EXISTS `quality`;
CREATE TABLE IF NOT EXISTS `quality` (
  `quality_id` int(10) NOT NULL AUTO_INCREMENT,
  `quality` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(5) DEFAULT '1',
  PRIMARY KEY (`quality_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES
(1, '4K', 'High Defination', 1),
(2, 'HD', 'Sandard Defination', 1),
(3, 'SD', 'Ultra High Defination', 1),
(4, 'CAM', 'Web Camera Video', 1),
(7, 'LQ', 'Low Quality', 1),
(8, 'DVD', 'Digital Video Device', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` int(50) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `rating` int(5) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
CREATE TABLE IF NOT EXISTS `seasons` (
  `seasons_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_name` varchar(250) DEFAULT NULL,
  `publish` int(11) DEFAULT '1',
  PRIMARY KEY (`seasons_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `video_link` varchar(250) NOT NULL,
  `image_link` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `publication` int(1) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

DROP TABLE IF EXISTS `star`;
CREATE TABLE IF NOT EXISTS `star` (
  `star_id` int(10) NOT NULL AUTO_INCREMENT,
  `star_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `star_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `star_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`star_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subtitle`
--

DROP TABLE IF EXISTS `subtitle`;
CREATE TABLE IF NOT EXISTS `subtitle` (
  `subtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(50) NOT NULL,
  `video_file_id` int(50) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `src` mediumtext COLLATE utf8_unicode_ci,
  `srclang` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `common` int(2) DEFAULT '0',
  `status` int(2) DEFAULT '1',
  PRIMARY KEY (`subtitle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tvseries_subtitle`
--

DROP TABLE IF EXISTS `tvseries_subtitle`;
CREATE TABLE IF NOT EXISTS `tvseries_subtitle` (
  `tvseries_subtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `episodes_id` int(250) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `src` mediumtext COLLATE utf8_unicode_ci,
  `srclang` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `common` int(2) DEFAULT '0',
  `status` int(2) DEFAULT '1',
  PRIMARY KEY (`tvseries_subtitle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci,
  `slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(2) DEFAULT '1',
  `role` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8_unicode_ci,
  `theme` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'default',
  `theme_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '#16163F',
  `join_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `slug`, `username`, `email`, `password`, `gender`, `role`, `token`, `theme`, `theme_color`, `join_date`, `last_login`, `status`) VALUES
(1, 'admin_name', 'admin-name', 'admin_username', 'my_admin_email', 'admin_password', 1, 'admin', NULL, 'default', '#16163F', '2019-01-01 00:00:00', '2019-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `videos_id` int(11) NOT NULL AUTO_INCREMENT,
  `imdbid` varchar(200) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `seo_title` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `description` longtext,
  `stars` varchar(250) DEFAULT '',
  `director` varchar(250) DEFAULT NULL,
  `writer` varchar(250) DEFAULT NULL,
  `rating` varchar(5) DEFAULT '0',
  `release` varchar(25) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `genre` varchar(200) DEFAULT NULL,
  `video_type` varchar(50) DEFAULT NULL,
  `runtime` varchar(10) DEFAULT NULL,
  `video_quality` varchar(200) DEFAULT 'HD',
  `publication` int(5) DEFAULT NULL,
  `trailer` int(5) DEFAULT '0',
  `enable_download` int(5) DEFAULT '1',
  `focus_keyword` text,
  `meta_description` text,
  `tags` text,
  `imdb_rating` varchar(5) DEFAULT NULL,
  `is_tvseries` int(11) NOT NULL DEFAULT '0',
  `total_rating` int(50) DEFAULT '1',
  `today_view` int(250) DEFAULT '0',
  `weekly_view` int(250) DEFAULT '0',
  `monthly_view` int(250) DEFAULT '0',
  `total_view` int(250) DEFAULT '1',
  `last_ep_added` datetime DEFAULT '2019-04-04 00:00:00',
  PRIMARY KEY (`videos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `video_file`
--

DROP TABLE IF EXISTS `video_file`;
CREATE TABLE IF NOT EXISTS `video_file` (
  `video_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `file_source` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_type` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`video_file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video_type`
--

DROP TABLE IF EXISTS `video_type`;
CREATE TABLE IF NOT EXISTS `video_type` (
  `video_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_type_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `primary_menu` int(11) DEFAULT NULL,
  `footer_menu` int(11) DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`video_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
CREATE TABLE IF NOT EXISTS `wish_list` (
  `wish_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `wish_list_type` varchar(200) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`wish_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
