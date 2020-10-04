-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: dd18306
-- Generation Time: Oct 04, 2020 at 03:35 PM
-- Server version: 5.7.28-nmm1-log
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d0330cd7`
--

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_actionscheduler_actions`
--

CREATE TABLE `c1wwi_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_actionscheduler_actions`
--

INSERT INTO `c1wwi_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(8, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":1}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2020-09-09 06:29:59', '2020-09-09 07:29:59', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_actionscheduler_claims`
--

CREATE TABLE `c1wwi_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_actionscheduler_groups`
--

CREATE TABLE `c1wwi_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_actionscheduler_groups`
--

INSERT INTO `c1wwi_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'action-scheduler-migration'),
(3, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_actionscheduler_logs`
--

CREATE TABLE `c1wwi_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_actionscheduler_logs`
--

INSERT INTO `c1wwi_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(8, 8, 'action started via WP Cron', '2020-09-09 06:29:59', '2020-09-09 06:29:59'),
(9, 8, 'action complete via WP Cron', '2020-09-09 06:29:59', '2020-09-09 06:29:59'),
(7, 8, 'action created', '2020-09-09 06:28:58', '2020-09-09 06:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_commentmeta`
--

CREATE TABLE `c1wwi_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_comments`
--

CREATE TABLE `c1wwi_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_comments`
--

INSERT INTO `c1wwi_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-07-18 09:36:13', '2020-07-18 07:36:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 15, 'Tamara', 'tamarajosten@gmail.com', '', '145.253.103.90', '2020-09-09 09:29:04', '2020-09-09 08:29:04', 'Eine sehr coole Geschichte! :-)\r\nIch freu mich schon auf eine Forsetzung!', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_links`
--

CREATE TABLE `c1wwi_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_options`
--

CREATE TABLE `c1wwi_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_options`
--

INSERT INTO `c1wwi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://blog.maxjosten.de', 'yes'),
(2, 'home', 'http://blog.maxjosten.de', 'yes'),
(3, 'blogname', 'blog.maxjosten.de', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mail@chriss-baumann.de', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:29:\"antispam-bee/antispam_bee.php\";i:2;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '1', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(404, 'finished_updating_comment_type', '1', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '48748', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:29:\"antispam-bee/antispam_bee.php\";a:2:{i:0;s:12:\"Antispam_Bee\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1608368219', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'c1wwi_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(103, 'cron', 'a:9:{i:1601737328;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1601740619;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601758619;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601801819;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601801832;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601801833;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601801992;a:1:{s:26:\"antispam_bee_daily_cronjob\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601974619;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', 'z1C%(K1DyB:R`#4;HPFC</K?nA@6Y`_HcI5JxbJ=$TVoJiXB|xFd,T1Zp}qcuewm', 'no'),
(111, 'nonce_salt', '/F0}7bk@*I/Y5q5x3_Y+?-[[Wck+5f.VzMBKhM|Tb!j%Mf?D@%NOILYIwa]wg}P4', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(126, 'auth_key', '^r_C#QMAvF7]j@J&b]j{%c+}P*:9LhW!uInA1R{!o2DtE#z4jW`hzG]85f6OB4@F', 'no'),
(116, 'theme_mods_twentytwenty', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'wp_mail_smtp_initial_version', '2.1.1', 'no'),
(145, 'wp_mail_smtp_version', '2.1.1', 'no'),
(146, 'wp_mail_smtp', 'a:8:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:22:\"mail@chriss-baumann.de\";s:9:\"from_name\";s:17:\"blog.maxjosten.de\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:1;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:11:\"pepipostapi\";a:1:{s:7:\"api_key\";s:0:\"\";}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}}', 'no'),
(147, 'wp_mail_smtp_activated_time', '1592816288', 'no'),
(148, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(149, 'schema-ActionScheduler_StoreSchema', '3.0.1592816288', 'yes'),
(150, 'schema-ActionScheduler_LoggerSchema', '2.0.1592816288', 'yes'),
(155, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1592816288;s:9:\"dismissed\";b:0;}', 'yes'),
(152, 'wp_mail_smtp_migration_version', '2', 'yes'),
(127, 'auth_salt', 'F5Opi-@(p3r%?H@)Ta.Wo`*jAsJg50Jm],v,*H00DSEXY0987W]^f_sog3wCid?L', 'no'),
(128, 'logged_in_key', '{.tfcm^%Ju78nV(H6#sb$}{?4x8tq*&ovekP>mLzUC}QVK_J$@-y:`sJ6d39)?)R', 'no'),
(129, 'logged_in_salt', ']$nh=}Ywq@!T%l9l1c.s`7/ofB2y>d9W5tD*kx4hTdT{]bELj334RF)$GLoOb0*%', 'no'),
(161, 'antispam_bee', 'a:26:{s:9:\"flag_spam\";i:1;s:12:\"email_notify\";i:0;s:14:\"cronjob_enable\";i:1;s:16:\"cronjob_interval\";i:60;s:9:\"no_notice\";i:0;s:15:\"dashboard_count\";i:0;s:15:\"dashboard_chart\";i:0;s:12:\"regexp_check\";i:1;s:7:\"spam_ip\";i:1;s:17:\"already_commented\";i:1;s:10:\"time_check\";i:0;s:14:\"always_allowed\";i:0;s:12:\"ignore_pings\";i:0;s:13:\"ignore_filter\";i:0;s:11:\"ignore_type\";i:1;s:14:\"reasons_enable\";i:1;s:14:\"ignore_reasons\";a:2:{i:0;s:3:\"css\";i:1;s:5:\"empty\";}s:12:\"bbcode_check\";i:1;s:14:\"gravatar_check\";i:0;s:12:\"country_code\";i:0;s:13:\"country_black\";s:0:\"\";s:13:\"country_white\";s:0:\"\";s:13:\"translate_api\";i:0;s:14:\"translate_lang\";a:0:{}s:24:\"delete_data_on_uninstall\";i:1;s:17:\"cronjob_timestamp\";i:1601737325;}', 'no'),
(162, 'antispambee_db_version', '1.01', 'yes'),
(156, 'action_scheduler_lock_async-request-runner', '1601380009', 'yes'),
(158, 'action_scheduler_migration_status', 'complete', 'yes'),
(408, 'can_compress_scripts', '0', 'no'),
(734, '_site_transient_timeout_theme_roots', '1601739123', 'no'),
(735, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(736, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601737324;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:29:\"antispam-bee/antispam_bee.php\";s:5:\"2.9.2\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"2.3.1\";}s:8:\"response\";a:1:{s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"antispam-bee/antispam_bee.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/antispam-bee\";s:4:\"slug\";s:12:\"antispam-bee\";s:6:\"plugin\";s:29:\"antispam-bee/antispam_bee.php\";s:11:\"new_version\";s:5:\"2.9.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/antispam-bee/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/antispam-bee.2.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/antispam-bee/assets/icon-256x256.png?rev=977629\";s:2:\"1x\";s:64:\"https://ps.w.org/antispam-bee/assets/icon-128x128.png?rev=977629\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/antispam-bee/assets/banner-1544x500.png?rev=1109432\";s:2:\"1x\";s:67:\"https://ps.w.org/antispam-bee/assets/banner-772x250.png?rev=1109432\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(722, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/de_DE/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"de_DE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/de_DE/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1601737322;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(175, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":1}', 'yes'),
(454, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1599632999;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(723, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601737323;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(195, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'WPLANG', 'de_DE', 'yes'),
(200, 'new_admin_email', 'mail@chriss-baumann.de', 'yes'),
(401, 'disallowed_keys', '', 'no'),
(402, 'comment_previously_approved', '1', 'yes'),
(403, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(405, 'db_upgraded', '', 'yes'),
(429, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"mail@chriss-baumann.de\";s:7:\"version\";s:5:\"5.5.1\";s:9:\"timestamp\";i:1599632920;}', 'no'),
(430, 'wp_mail_smtp_debug', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_postmeta`
--

CREATE TABLE `c1wwi_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_postmeta`
--

INSERT INTO `c1wwi_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(17, 15, '_edit_lock', '1600099683:2'),
(16, 14, '_edit_lock', '1599646313:2');

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_posts`
--

CREATE TABLE `c1wwi_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_posts`
--

INSERT INTO `c1wwi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-07-18 09:36:13', '2020-07-18 07:36:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-07-18 09:36:13', '2020-07-18 07:36:13', '', 0, 'http://blog.maxjosten.de/?p=1', 0, 'post', '', 1),
(2, 1, '2020-07-18 09:36:13', '2020-07-18 07:36:13', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://blog.maxjosten.de/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-07-18 09:36:13', '2020-07-18 07:36:13', '', 0, 'http://blog.maxjosten.de/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-07-18 09:36:13', '2020-07-18 07:36:13', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://blog.maxjosten.de.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-07-18 09:36:13', '2020-07-18 07:36:13', '', 0, 'http://blog.maxjosten.de/?page_id=3', 0, 'page', '', 0),
(14, 2, '2020-09-09 07:41:38', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>jhjkjk</p>\n<!-- /wp:paragraph -->', '', '', 'draft', 'open', 'open', '', '', '', '', '2020-09-09 07:41:38', '2020-09-09 06:41:38', '', 0, 'http://blog.maxjosten.de/?p=14', 0, 'post', '', 0),
(15, 2, '2020-09-09 08:55:37', '2020-09-09 07:55:37', '<!-- wp:paragraph -->\n<p>An einem schönem Morgen machte Lukas (14 Jahre) sich für die Schule bereit. Er kam in der Schule an und dann begann auch schon sofort der Unterricht. Sie hatten in der ersten Stunde Mathe. Lukas hatte heute keine Lust, weil heute eine Mathearbeit anstand. Nach einer Weile ging der Alarm in der Schule los. Die Lehrer sagten das alle Klassen das Schulgebäude verlassen sollen. Lukas hatte angst und rannte weg. Als er in eine Straße abbog da wo keine Lichter und Laternen zusehen waren hatte er noch mehr angst. Lukas sagte zu sich selbst:\"Du darfst jetzt keine angst haben!\" In diesem Moment bewegte sich etwas in der Dunklen Straße. Es war eine Gestalt die Beine hatte, Arme, und vieles mehr. Später erkannte er das es ein Mensch ist. Er schrie:\" Brauchen sie Hilfe?\" Es kam keine Antwort zurück und diese Person sah grässlich aus und sie taumelte auch noch. Als Die Person Lukas nahe war erkannte er das es kein Normalere Mensch sei. Es war ein Zombie. Er beschloss weg zulaufen. Er wollte gerade los laufen da sind in der Straße noch mehr. Sie hatten ihn umkreist und jeden flucht weg abgeschnitten. Er schrie so laut wie er konnte:\"Hilfe! Hilfe! Hilfe!...\" Und Irgendwann kam gerade noch zum letztem Moment Hilfe. Seine Klassenkameraden: Jack, Miguel, Marco, Jannik und Melissa kamen ihm zur Hilfe. Sie bildeten ein gutes Team. Nach einiger Zeit hatten sie Sachen entwickelt, um die Zombies zu töten. Jeder hatte eine feste Rüstung zu tragen und natürlich die entwickelten Waffen. Sie besiegten jeden einzelnen Zombie. Eines Tages waren keine Zombies mehr zusehen. Doch dann in einer Nacht rumste es ganz laut und alle wurden wach davon. Alle hielten eine Taschenlampe in der Hand und gingen zusammen durch die Gänge des Bunkers. An einem Gang zog es ein wenig weil dort ein Loch in der Wand war und das war gerade nicht sehr klein. Drei von ihnen gingen hinein und schauten ob dort was ist. Jack und Miguel hörten nur noch ein Schrei der dreien. Sie gingen hinterher und schauten wo sie sind. Sie hingen an der Decke. Sie fragten was passiert sei. Melissa sagte:\" Wir wurden von einer Riesigen Zombie Spinne eingespinnt. Sie befreiten sie und gingen ihre Rüstungen holen. Alle zusammen gingen nah beieinander hinein und hörten überall ein krabeln. Nach einer Weile sahen sie alle die Spinne. Man sah an ihr das sie die Mutter aller Zombies ist. Sie nahmen ihre Waffen und greiften die Spinne an. Sie erlegten die Spinne nach harter Arbeit und eliminierten den Rest der Zombies. Nun war die Inwarsion vorbei und die mutigen Schüler bekamen eine sehr große Auszeichnung. Doch sie bemerkten nicht das noch ein Zombie lebt. Er greift sich ein Melissa und zieht sie weit weg von ihren Freunden. Später darauf bemerkten sie das Melissa weg ist. Sie suchten sie überall und fanden sie aber nicht. Der Zombie Packte sie und biss ihr in dem Hals. Ihr als wurde grün, danach die Hände, die Beine,... Später war sie ganz Grün. Sie fing an komige Töne zu machen. Die Zombies entwickelten sich immer weiter und weiter und weiter. Irgendwann waren sie nichte mehr zu stoppen. Sie übernahmen die Ganze Welt. Nach 23 Jahren danach fanden die vier überlebende und trainierten sie und zogen sie auf. Sie wurden richtig gute Kämpfer. Jack hatte nach einer weile eine richtig gute Idee gehabt. Er sagte:\" wieso bauen wir nicht ein paar richtig große Roboter zum selber steuern. Sie bauten die Roboter 10 Jahre lang. Dann waren sie endlich fertig. Sie bekamen ein Signal, da wo viele Zombies waren. Sie gingen in den Dreatside, Dangerous, Zombiefind(Roboter). Sie bekämpften die Zombie mit links und waren bald wieder fertig. Diesmal waren sie sich sicher das alle Zombies tot sind. Nach ca.15 Stunden bekamen sie wieder ein Signal. Es war von einem sehr großem Zombie. Jack und Miguel gingen in den Dreatside und gingen raus. Die anderen blieben im Bunker da wo sie sich waren. Sie erlegten dieses Vieh. Sie kamen wieder zurück und sagten zu den anderen das war ja so einfach. Viele Jahre konnte man kein Zombie mehr sehen und die Inwarsion war vorbei. Sie hatten ein erfolgreichen Sieg und feierten den Sieg. </p>\n<!-- /wp:paragraph -->', 'Lukas und die Zombies', '', 'publish', 'open', 'open', '', 'lukas-und-die-zombies', '', '', '2020-09-09 08:55:37', '2020-09-09 07:55:37', '', 0, 'http://blog.maxjosten.de/?p=15', 0, 'post', '', 0),
(16, 2, '2020-09-09 08:54:58', '2020-09-09 07:54:58', '<!-- wp:paragraph -->\n<p>An einem schönem Morgen machte Lukas (14 Jahre) sich für die Schule bereit. Er kam in der Schule an und dann begann auch schon sofort der Unterricht. Sie hatten in der ersten Stunde Mathe. Lukas hatte heute keine Lust, weil heute eine Mathearbeit anstand. Nach einer Weile ging der Alarm in der Schule los. Die Lehrer sagten das alle Klassen das Schulgebäude verlassen sollen. Lukas hatte angst und rannte weg. Als er in eine Straße abbog da wo keine Lichter und Laternen zusehen waren hatte er noch mehr angst. Lukas sagte zu sich selbst:\"Du darfst jetzt keine angst haben!\" In diesem Moment bewegte sich etwas in der Dunklen Straße. Es war eine Gestalt die Beine hatte, Arme, und vieles mehr. Später erkannte er das es ein Mensch ist. Er schrie:\" Brauchen sie Hilfe?\" Es kam keine Antwort zurück und diese Person sah grässlich aus und sie taumelte auch noch. Als Die Person Lukas nahe war erkannte er das es kein Normalere Mensch sei. Es war ein Zombie. Er beschloss weg zulaufen. Er wollte gerade los laufen da sind in der Straße noch mehr. Sie hatten ihn umkreist und jeden flucht weg abgeschnitten. Er schrie so laut wie er konnte:\"Hilfe! Hilfe! Hilfe!...\" Und Irgendwann kam gerade noch zum letztem Moment Hilfe. Seine Klassenkameraden: Jack, Miguel, Marco, Jannik und Melissa kamen ihm zur Hilfe. Sie bildeten ein gutes Team. Nach einiger Zeit hatten sie Sachen entwickelt, um die Zombies zu töten. Jeder hatte eine feste Rüstung zu tragen und natürlich die entwickelten Waffen. Sie besiegten jeden einzelnen Zombie. Eines Tages waren keine Zombies mehr zusehen. Doch dann in einer Nacht rumste es ganz laut und alle wurden wach davon. Alle hielten eine Taschenlampe in der Hand und gingen zusammen durch die Gänge des Bunkers. An einem Gang zog es ein wenig weil dort ein Loch in der Wand war und das war gerade nicht sehr klein. Drei von ihnen gingen hinein und schauten ob dort was ist. Jack und Miguel hörten nur noch ein Schrei der dreien. Sie gingen hinterher und schauten wo sie sind. Sie hingen an der Decke. Sie fragten was passiert sei. Melissa sagte:\" Wir wurden von einer Riesigen Zombie Spinne eingespinnt. Sie befreiten sie und gingen ihre Rüstungen holen. Alle zusammen gingen nah beieinander hinein und hörten überall ein krabeln. Nach einer Weile sahen sie alle die Spinne. Man sah an ihr das sie die Mutter aller Zombies ist. Sie nahmen ihre Waffen und greiften die Spinne an. Sie erlegten die Spinne nach harter Arbeit und eliminierten den Rest der Zombies. Nun war die Inwarsion vorbei und die mutigen Schüler bekamen eine sehr große Auszeichnung. Doch sie bemerkten nicht das noch ein Zombie lebt. Er greift sich ein Melissa und zieht sie weit weg von ihren Freunden. Später darauf bemerkten sie das Melissa weg ist. Sie suchten sie überall und fanden sie aber nicht. Der Zombie Packte sie und biss ihr in dem Hals. Ihr als wurde grün, danach die Hände, die Beine,... Später war sie ganz Grün. Sie fing an komige Töne zu machen. Die Zombies entwickelten sich immer weiter und weiter und weiter. Irgendwann waren sie nichte mehr zu stoppen. Sie übernahmen die Ganze Welt. Nach 23 Jahren danach fanden die vier überlebende und trainierten sie und zogen sie auf. Sie wurden richtig gute Kämpfer. Jack hatte nach einer weile eine richtig gute Idee gehabt. Er sagte:\" wieso bauen wir nicht ein paar richtig große Roboter zum selber steuern. Sie bauten die Roboter 10 Jahre lang. Dann waren sie endlich fertig. Sie bekamen ein Signal, da wo viele Zombies waren. Sie gingen in den Dreatside, Dangerous, Zombiefind(Roboter). Sie bekämpften die Zombie mit links und waren bald wieder fertig. Diesmal waren sie sich sicher das alle Zombies tot sind. Nach ca.15 Stunden bekamen sie wieder ein Signal. Es war von einem sehr großem Zombie. Jack und Miguel gingen in den Dreatside und gingen raus. Die anderen blieben im Bunker da wo sie sich waren. Sie erlegten dieses Vieh. Sie kamen wieder zurück und sagten zu den anderen das war ja so einfach. Viele Jahre konnte man kein Zombie mehr sehen und die Inwarsion war vorbei. Sie hatten ein erfolgreichen Sieg und feierten den Sieg. </p>\n<!-- /wp:paragraph -->', 'Lukas und die Zombies', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-09-09 08:54:58', '2020-09-09 07:54:58', '', 15, 'http://blog.maxjosten.de/2020/09/09/15-revision-v1/', 0, 'revision', '', 0),
(17, 2, '2020-09-09 11:17:37', '2020-09-09 10:17:37', '<!-- wp:paragraph -->\n<p>An einem schönem Morgen machte Lukas (14 Jahre) sich für die Schule bereit. Er kam in der Schule an und dann begann auch schon sofort der Unterricht. Sie hatten in der ersten Stunde Mathe. Lukas hatte heute keine Lust, weil heute eine Mathearbeit anstand. Nach einer Weile ging der Alarm in der Schule los. Die Lehrer sagten dass alle Klassen das Schulgebäude verlassen sollen. Lukas hatte Angst und rannte weg.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Als er in eine Straße abbog da wo keine Lichter und Laternen zusehen waren hatte er noch mehr angst. Lukas sagte zu sich selbst:\"Du darfst jetzt keine Angst haben!\" In diesem Moment bewegte sich etwas in der Dunklen Straße. Es war eine Gestalt die Beine hatte, Arme, und vieles mehr. Später erkannte er das es ein Mensch ist. Er schrie:\" Brauchen sie Hilfe?\" Es kam keine Antwort zurück und diese Person sah grässlich aus und sie taumelte auch noch. Als Die Person Lukas nahe war erkannte er dass es kein Normaler Mensch sei. Es war ein Zombie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Er beschloss weg zu laufen. Er wollte gerade loslaufen da sind in der Straße noch mehr. Sie hatten ihn umkreist und jeden fluchtweg abgeschnitten. Er schrie so laut wie er konnte:\"Hilfe! Hilfe! Hilfe!...\" Und Irgendwann kam gerade noch zum letzten Moment Hilfe. Seine Klassenkameraden: Jack, Miguel, Marco, Jannik und Melissa kamen ihm zur Hilfe. Sie bildeten ein gutes Team.Nach einiger Zeit hatten sie Sachen entwickelt, um die Zombies zu töten. Jeder hatte eine feste Rüstung zu tragen und natürlich die entwickelten Waffen. Sie besiegten jeden einzelnen Zombie. Eines Tages waren keine Zombies mehr zusehen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Doch dann in einer Nacht rumste es ganz laut und alle wurden wach davon. Alle hielten eine Taschenlampe in der Hand und gingen zusammen durch die Gänge des Bunkers. An einem Gang zog es ein wenig weil dort ein Loch in der Wand war und das war gerade nicht sehr klein. Drei von ihnen gingen hinein und schauten ob dort was ist. Jack und Miguel hörten nur noch ein Schrei der dreien. Sie gingen hinterher und schauten wo sie sind. Sie hingen an der Decke. Sie fragten was passiert sei. Melissa sagte:\" Wir wurden von einer Riesigen Zombie Spinne eingesponnen. Sie befreiten sie und gingen ihre Rüstungen holen. Alle zusammen gingen nah beieinander hinein und hörten überall ein krabeln. Nach einer Weile sahen sie alle die Spinne.Man sah an ihr das sie die Mutter aller Zombies ist. Sie nahmen ihre Waffen und griff die Spinne an. Sie erlegten die Spinne nach harter Arbeit und eliminierten den Rest der Zombies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Nun war die Invasion vorbei und die mutigen Schüler bekamen eine sehr große Auszeichnung. Doch sie bemerkten nicht das noch ein Zombie lebt. Er greift sich Melissa und zieht sie weit weg von ihren Freunden. Später darauf bemerkten sie das Melissa weg ist. Sie suchten sie überall und fanden sie aber nicht. Der Zombie Packte sie und biss ihr in dem Hals. Ihr Hals wurde grün, danach die Hände, die Beine,... Später war sie ganz Grün. Sie fing an komische Töne zu machen. Die Zombies entwickelten sich immer weiter und weiter und weiter. Irgendwann waren sie nichte mehr zu stoppen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Sie übernahmen die Ganze Welt. Nach 23 Jahren danach fanden die vier überlebende und trainierten sie und zogen sie auf. Sie wurden richtig gute Kämpfer. Jack hatte nach einer weile eine richtig gute Idee gehabt. Er sagte:\" wieso bauen wir nicht ein paar richtig große Roboter zum selber steuern. Sie bauten die Roboter 10 Jahre lang. Dann waren sie endlich fertig. Sie bekamen ein Signal, da wo viele Zombies waren. Sie gingen in den Dreatside, Dangerous, Zombiefind(Roboter). Sie bekämpften die Zombie mit links und waren bald wieder fertig. Diesmal waren sie sich sicher das alle Zombies tot sind.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Nach ca.15 Stunden bekamen sie wieder ein Signal. Es war von einem sehr großem Zombie. Jack und Miguel gingen in den Dreatside und gingen raus. Die anderen blieben im Bunker da wo sie sich waren. Sie erlegten dieses Vieh. Sie kamen wieder zurück und sagten zu den anderen das war ja so einfach. Viele Jahre konnte man kein Zombie mehr sehen und die Invasion war vorbei. Sie hatten ein erfolgreichen Sieg und feierten den Sieg. </p>\n<!-- /wp:paragraph -->', 'Lukas und die Zombies', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2020-09-09 11:17:37', '2020-09-09 10:17:37', '', 15, 'http://blog.maxjosten.de/2020/09/09/15-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_termmeta`
--

CREATE TABLE `c1wwi_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_terms`
--

CREATE TABLE `c1wwi_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_terms`
--

INSERT INTO `c1wwi_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_term_relationships`
--

CREATE TABLE `c1wwi_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_term_relationships`
--

INSERT INTO `c1wwi_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 1, 0),
(15, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_term_taxonomy`
--

CREATE TABLE `c1wwi_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_term_taxonomy`
--

INSERT INTO `c1wwi_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_usermeta`
--

CREATE TABLE `c1wwi_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_usermeta`
--

INSERT INTO `c1wwi_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'chrissbaumann'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'c1wwi_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'c1wwi_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'c1wwi_dashboard_quick_press_last_post_id', '12'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"dd81b030cc729c37788adecd046a2c9dbb2a9abcd44ec31d258cd867094a1617\";a:4:{s:10:\"expiration\";i:1600842522;s:2:\"ip\";s:13:\"217.80.107.27\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36\";s:5:\"login\";i:1599632922;}}'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"217.80.107.0\";}'),
(20, 2, 'nickname', 'Max'),
(21, 2, 'first_name', 'Max'),
(22, 2, 'last_name', 'Josten'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', 'de_DE'),
(31, 2, 'c1wwi_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(32, 2, 'c1wwi_user_level', '7'),
(33, 2, 'dismissed_wp_pointers', ''),
(34, 2, 'session_tokens', 'a:1:{s:64:\"66fba7c9c8a2bf787d42633348522c3ec2812bdac2c8738dc418b20dc1d8db0e\";a:4:{s:10:\"expiration\";i:1600843200;s:2:\"ip\";s:13:\"217.80.107.27\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36\";s:5:\"login\";i:1599633600;}}'),
(35, 2, 'c1wwi_dashboard_quick_press_last_post_id', '13'),
(36, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"217.80.107.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_users`
--

CREATE TABLE `c1wwi_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_users`
--

INSERT INTO `c1wwi_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'chrissbaumann', '$P$Bfetj0.K41KpmWyilCK4tDsE5YEirQ0', 'chrissbaumann', 'mail@chriss-baumann.de', 'http://blog.maxjosten.de', '2020-07-18 09:36:13', '', 0, 'chrissbaumann'),
(2, 'Max', '$P$BBNkQIKaU6TUfzSuBWhnofFWEKOZ6K/', 'max', 'maxjosten06@gmail.com', 'http://maxjosten.de', '2020-09-09 06:29:59', '1599746190:$P$BgsW51D0l3WB/wvT3OWVZ/e5NCv2DK1', 0, 'Max Josten');

-- --------------------------------------------------------

--
-- Table structure for table `c1wwi_wpmailsmtp_tasks_meta`
--

CREATE TABLE `c1wwi_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `c1wwi_wpmailsmtp_tasks_meta`
--

INSERT INTO `c1wwi_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2020-09-09 06:28:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c1wwi_actionscheduler_actions`
--
ALTER TABLE `c1wwi_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `c1wwi_actionscheduler_claims`
--
ALTER TABLE `c1wwi_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `c1wwi_actionscheduler_groups`
--
ALTER TABLE `c1wwi_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `c1wwi_actionscheduler_logs`
--
ALTER TABLE `c1wwi_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `c1wwi_commentmeta`
--
ALTER TABLE `c1wwi_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `c1wwi_comments`
--
ALTER TABLE `c1wwi_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `c1wwi_links`
--
ALTER TABLE `c1wwi_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `c1wwi_options`
--
ALTER TABLE `c1wwi_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `c1wwi_postmeta`
--
ALTER TABLE `c1wwi_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `c1wwi_posts`
--
ALTER TABLE `c1wwi_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `c1wwi_termmeta`
--
ALTER TABLE `c1wwi_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `c1wwi_terms`
--
ALTER TABLE `c1wwi_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `c1wwi_term_relationships`
--
ALTER TABLE `c1wwi_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `c1wwi_term_taxonomy`
--
ALTER TABLE `c1wwi_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `c1wwi_usermeta`
--
ALTER TABLE `c1wwi_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `c1wwi_users`
--
ALTER TABLE `c1wwi_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `c1wwi_wpmailsmtp_tasks_meta`
--
ALTER TABLE `c1wwi_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c1wwi_actionscheduler_actions`
--
ALTER TABLE `c1wwi_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `c1wwi_actionscheduler_claims`
--
ALTER TABLE `c1wwi_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT for table `c1wwi_actionscheduler_groups`
--
ALTER TABLE `c1wwi_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `c1wwi_actionscheduler_logs`
--
ALTER TABLE `c1wwi_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `c1wwi_commentmeta`
--
ALTER TABLE `c1wwi_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1wwi_comments`
--
ALTER TABLE `c1wwi_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `c1wwi_links`
--
ALTER TABLE `c1wwi_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1wwi_options`
--
ALTER TABLE `c1wwi_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;

--
-- AUTO_INCREMENT for table `c1wwi_postmeta`
--
ALTER TABLE `c1wwi_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `c1wwi_posts`
--
ALTER TABLE `c1wwi_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `c1wwi_termmeta`
--
ALTER TABLE `c1wwi_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1wwi_terms`
--
ALTER TABLE `c1wwi_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `c1wwi_term_taxonomy`
--
ALTER TABLE `c1wwi_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `c1wwi_usermeta`
--
ALTER TABLE `c1wwi_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `c1wwi_users`
--
ALTER TABLE `c1wwi_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `c1wwi_wpmailsmtp_tasks_meta`
--
ALTER TABLE `c1wwi_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
