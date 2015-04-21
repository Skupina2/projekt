-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 21. apr 2015 ob 21.30
-- Različica strežnika: 5.6.21
-- Različica PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Zbirka podatkov: `wordpress`
--

-- --------------------------------------------------------

--
-- Struktura tabele `dejavnost`
--

CREATE TABLE IF NOT EXISTS `dejavnost` (
`ID_dejavnosti` int(11) NOT NULL,
  `Ime_dejavnosti` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mentor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `predvid_stev_srecanj` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `kontakt_za_prijavo` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `organizac_oblika` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `izobraz_prog` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `starost_dijakov` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `razvoj_nadar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `drugo_opombe` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Odloži podatke za tabelo `dejavnost`
--

INSERT INTO `dejavnost` (`ID_dejavnosti`, `Ime_dejavnosti`, `Mentor`, `predvid_stev_srecanj`, `kontakt_za_prijavo`, `organizac_oblika`, `izobraz_prog`, `starost_dijakov`, `razvoj_nadar`, `drugo_opombe`) VALUES
(1, 'Pohod na zeleno gmajno', 'Darjan Toth', '', '', '', '', '', '', ''),
(3, 'Vegovacraft', 'AleÅ¡ VolÄini', 'Po dogovoru', 'ekm.vegova.si', 'KroÅ¾ek', 'Vsi programi', 'Vsi letniki', 'TehniÄna nadarjenost', ''),
(4, 'CISCO AKADEMIJA', 'Andreja Vehovec', 'TEDENSKO', 'GOVORILNE URE NOSILCA', 'GOVORILNE URE NOSILCA	KROÅ½EK', 'VSI PROGRAMI', 'VSI LETNIKI', 'RAÄŒUNALNIÅ TVO', 'Zajema znanje komunikacijskih omreÅ¾ij na razliÄnih stopnjah in dijakom omogoÄa pridobitev mednarodnih certifikatov na podroÄju komunikacij in sicer certifikate: CCNA1, CCNA2, CCNA3 in CCNA4.\r\n'),
(5, 'CISCO AKADEMIJA', 'Andreja Vehovec', 'TEDENSKO', 'GOVORILNE URE NOSILCA', 'GOVORILNE URE NOSILCA	KROÅ½EK', 'VSI PROGRAMI', 'VSI LETNIKI', 'RAÄŒUNALNIÅ TVO', 'Zajema znanje komunikacijskih omreÅ¾ij na razliÄnih stopnjah in dijakom omogoÄa pridobitev mednarodnih certifikatov na podroÄju komunikacij in sicer certifikate: CCNA1, CCNA2, CCNA3 in CCNA4.\r\n'),
(6, 'Priprave na tekmovanje iz fizike', 'Riko Jerman', 'Po dogovoru', 'Govorilne ure nosilca', 'Priprave', 'Vsi programi', 'Vsi letniki', 'SPLOÅ NO-INTELEKTUALNA NADARJENOST', ''),
(7, 'Priprave na tekmovanje iz fizike', 'Riko Jerman', 'Po dogovoru', 'Govorilne ure nosilca', 'Priprave', 'Vsi programi', 'Vsi letniki', 'SPLOÅ NO-INTELEKTUALNA NADARJENOST', ''),
(8, 'Priprave na tekmovanje iz fizike', 'Riko Jerman', 'Po dogovoru', 'Govorilne ure nosilca', 'Priprave', 'Vsi programi', 'Vsi letniki', 'SPLOÅ NO-INTELEKTUALNA NADARJENOST', ''),
(9, 'Priprave na tekmovanje iz fizike', 'Riko Jerman', 'Po dogovoru', 'Govorilne ure nosilca', 'Priprave', 'Vsi programi', 'Vsi letniki', 'SPLOÅ NO-INTELEKTUALNA NADARJENOST', '');

-- --------------------------------------------------------

--
-- Struktura tabele `ucitelji`
--

CREATE TABLE IF NOT EXISTS `ucitelji` (
  `Ime` text COLLATE utf8_unicode_ci NOT NULL,
  `Priimek` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Odloži podatke za tabelo `ucitelji`
--

INSERT INTO `ucitelji` (`Ime`, `Priimek`) VALUES
('Marko', 'Ecika'),
('Luka', 'Tralala'),
('Miha', 'Fiha'),
('Luka', 'Kovač'),
('Boris', 'Belec'),
('Gašper', 'Cerar');

-- --------------------------------------------------------

--
-- Struktura tabele `vpis`
--

CREATE TABLE IF NOT EXISTS `vpis` (
  `ID_dejavnosti` int(11) NOT NULL,
  `ID` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazacommentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_bazacommentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazacomments`
--

CREATE TABLE IF NOT EXISTS `wp_bazacomments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazacomments`
--

INSERT INTO `wp_bazacomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'G. WordPress', '', 'https://wordpress.org/', '', '2015-02-20 11:23:33', '2015-02-20 11:23:33', 'Hi, this is a comment.\r\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazagroups_rs`
--

CREATE TABLE IF NOT EXISTS `wp_bazagroups_rs` (
`ID` bigint(20) NOT NULL,
  `group_name` text NOT NULL,
  `group_description` text NOT NULL,
  `group_homepage` varchar(128) NOT NULL DEFAULT '',
  `group_meta_id` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazagroups_rs`
--

INSERT INTO `wp_bazagroups_rs` (`ID`, `group_name`, `group_description`, `group_homepage`, `group_meta_id`) VALUES
(1, '[WP administrator]', 'All users with the WordPress administrator blog role', '', 'wp_role_administrator'),
(2, '[WP editor]', 'All users with the WordPress editor blog role', '', 'wp_role_editor'),
(3, '[WP author]', 'All users with the WordPress author blog role', '', 'wp_role_author'),
(4, '[WP contributor]', 'All users with the WordPress contributor blog role', '', 'wp_role_contributor'),
(5, '[WP subscriber]', 'All users with the WordPress subscriber blog role', '', 'wp_role_subscriber'),
(6, '[WP ucitelj]', 'All users with the WordPress ucitelj blog role', '', 'wp_role_ucitelj'),
(7, '[Anonymous]', 'Anonymous users (not logged in)', '', 'wp_anon'),
(8, '[Pending Revision Monitors]', 'Administrators / Publishers to notify (by default) of pending revisions', '', 'rv_pending_rev_notice_ed_nr_'),
(9, '[Scheduled Revision Monitors]', 'Administrators / Publishers to notify when any scheduled revision is published', '', 'rv_scheduled_rev_notice_ed_nr_');

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazalinks`
--

CREATE TABLE IF NOT EXISTS `wp_bazalinks` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazaoptions`
--

CREATE TABLE IF NOT EXISTS `wp_bazaoptions` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazaoptions`
--

INSERT INTO `wp_bazaoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/projekt', 'yes'),
(2, 'home', 'http://localhost/projekt', 'yes'),
(3, 'blogname', 'Projektna naloga', 'yes'),
(4, 'blogdescription', 'Še eno spletišče WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'killerworm31@gmail.com', 'yes'),
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
(23, 'date_format', 'j. n. Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. n. Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:15:"abase/abase.php";i:1;s:37:"user-role-editor/user-role-editor.php";i:2;s:53:"wordpress-access-control/wordpress-access-control.php";i:3;s:53:"wpfront-user-role-editor/wpfront-user-role-editor.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '+1', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'twentythirteen', 'yes'),
(42, 'stylesheet', 'twentythirteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_bazauser_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:77:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:14:"ure_edit_roles";b:1;s:16:"ure_create_roles";b:1;s:16:"ure_delete_roles";b:1;s:23:"ure_create_capabilities";b:1;s:23:"ure_delete_capabilities";b:1;s:18:"ure_manage_options";b:1;s:15:"ure_reset_roles";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:10:"edit_roles";b:1;s:12:"delete_roles";b:1;s:15:"edit_role_menus";b:1;s:27:"edit_posts_role_permissions";b:1;s:27:"edit_pages_role_permissions";b:1;s:25:"edit_nav_menu_permissions";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:7:"ucitelj";a:2:{s:4:"name";s:8:"Učitelj";s:12:"capabilities";a:64:{s:13:"publish_posts";b:1;s:10:"edit_posts";b:1;s:12:"delete_posts";b:1;s:20:"edit_published_posts";b:1;s:22:"delete_published_posts";b:1;s:17:"edit_others_posts";b:1;s:19:"delete_others_posts";b:1;s:18:"read_private_posts";b:1;s:18:"edit_private_posts";b:1;s:20:"delete_private_posts";b:1;s:17:"manage_categories";b:1;s:12:"upload_files";b:1;s:17:"unfiltered_upload";b:1;s:13:"publish_pages";b:1;s:10:"edit_pages";b:1;s:12:"delete_pages";b:1;s:20:"edit_published_pages";b:1;s:22:"delete_published_pages";b:1;s:17:"edit_others_pages";b:1;s:19:"delete_others_pages";b:1;s:18:"read_private_pages";b:1;s:18:"edit_private_pages";b:1;s:20:"delete_private_pages";b:1;s:12:"edit_comment";b:1;s:17:"moderate_comments";b:1;s:13:"switch_themes";b:1;s:18:"edit_theme_options";b:1;s:11:"edit_themes";b:1;s:13:"delete_themes";b:1;s:14:"install_themes";b:1;s:13:"update_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:15:"install_plugins";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:10:"list_users";b:1;s:12:"create_users";b:1;s:10:"edit_users";b:1;s:12:"delete_users";b:1;s:13:"promote_users";b:1;s:9:"add_users";b:1;s:12:"remove_users";b:1;s:6:"import";b:1;s:6:"export";b:1;s:14:"manage_options";b:1;s:11:"update_core";b:1;s:15:"unfiltered_html";b:1;s:12:"manage_links";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:10:"edit_roles";b:1;s:12:"delete_roles";b:1;s:15:"edit_role_menus";b:1;s:27:"edit_posts_role_permissions";b:1;s:27:"edit_pages_role_permissions";b:1;s:25:"edit_nav_menu_permissions";b:1;s:14:"ure_edit_roles";b:1;s:16:"ure_create_roles";b:1;s:16:"ure_delete_roles";b:1;s:23:"ure_create_capabilities";b:1;s:23:"ure_delete_capabilities";b:1;s:18:"ure_manage_options";b:1;s:15:"ure_reset_roles";b:1;}}}', 'yes'),
(90, 'WPLANG', 'sl_SI', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1429658618;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1429683780;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1429701848;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1429703694;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(99, '_transient_random_seed', 'a69b03020278dba60e19d38d453c9f99', 'yes'),
(113, '_transient_twentyfifteen_categories', '1', 'yes'),
(114, 'can_compress_scripts', '1', 'yes'),
(129, 'current_theme', 'Twenty Thirteen', 'yes'),
(130, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1428651260;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(131, 'theme_switched', '', 'yes'),
(132, 'theme_mods_twentythirteen', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(137, '_site_transient_timeout_browser_534c07c4c06c14de70178e1296fcf30e', '1425999155', 'yes'),
(138, '_site_transient_browser_534c07c4c06c14de70178e1296fcf30e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"30.0.1599.101";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(155, 'recently_activated', 'a:1:{s:27:"role-scoper/role-scoper.php";i:1428653800;}', 'yes'),
(158, 'user_role_editor', 'a:4:{s:11:"ure_version";s:6:"4.18.3";s:17:"ure_caps_readable";i:0;s:24:"ure_show_deprecated_caps";i:0;s:19:"ure_hide_pro_banner";i:0;}', 'yes'),
(159, 'wp_bazabackup_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:69:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:14:"ure_edit_roles";b:1;s:16:"ure_create_roles";b:1;s:16:"ure_delete_roles";b:1;s:23:"ure_create_capabilities";b:1;s:23:"ure_delete_capabilities";b:1;s:18:"ure_manage_options";b:1;s:15:"ure_reset_roles";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'no'),
(161, '_site_transient_timeout_available_translations', '1425406285', 'yes'),
(162, '_site_transient_available_translations', 'a:51:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 19:01:24";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-27 15:23:28";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 11:10:33";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-08 17:39:56";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-26 03:38:28";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-09 11:12:57";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 22:27:33";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-04 12:59:40";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 11:05:07";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-26 19:02:34";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 20:53:36";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-28 01:01:02";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-05 09:59:30";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 13:11:32";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-05 15:18:10";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-25 14:34:19";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-19 08:14:32";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-09 12:20:08";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-23 14:29:09";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-17 07:01:16";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 19:01:48";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 18:37:43";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-12 01:05:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.1/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-01 00:26:14";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-20 16:50:00";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-15 20:01:36";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-31 07:30:24";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-26 01:33:47";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-02 13:41:23";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-29 10:53:40";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-21 03:05:42";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-08 00:36:50";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-23 10:05:46";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 11:09:37";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-18 13:44:24";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-16 15:47:22";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-25 20:46:09";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-19 19:37:03";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-23 20:32:43";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-17 18:16:58";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-02 18:38:35";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-13 22:38:48";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-18 19:08:01";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-29 09:41:07";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-26 04:10:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-01-19 08:42:08";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-19 05:33:04";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-02-19 08:39:08";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-26 02:21:02";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(164, 'wpfront-user-role-editor-db-version', '2.7', 'yes'),
(165, '_site_transient_timeout_ure_caps_readable', '1425396461', 'yes'),
(166, '_site_transient_ure_caps_readable', '0', 'yes'),
(171, '_site_transient_timeout_browser_8ad956d5ed998d7fd5ce990427c67e2a', '1426420417', 'yes'),
(172, '_site_transient_browser_8ad956d5ed998d7fd5ce990427c67e2a', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"29.0.1547.66";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(194, 'bus311mtd_show', '', 'yes'),
(195, 'bus311mtd_disable_wptexturize', '', 'yes'),
(196, 'bus311mtd_form_min', '0', 'yes'),
(197, 'bus311mtd_form_max', '0', 'yes'),
(198, 'bus311mtd_dbhost', '', 'yes'),
(199, 'bus311mtd_dbname', '', 'yes'),
(200, 'bus311mtd_dbuser', '', 'yes'),
(201, 'bus311mtd_dbpwd', '', 'yes'),
(202, 'bus311mtd_dbfiles', '', 'yes'),
(203, 'bus311mtd_dbhost2', '', 'yes'),
(204, 'bus311mtd_dbname2', '', 'yes'),
(205, 'bus311mtd_dbuser2', '', 'yes'),
(206, 'bus311mtd_dbpwd2', '', 'yes'),
(207, 'bus311mtd_dbfiles2', '', 'yes'),
(208, 'bus311mtd_dbhost3', '', 'yes'),
(209, 'bus311mtd_dbname3', '', 'yes'),
(210, 'bus311mtd_dbuser3', '', 'yes'),
(211, 'bus311mtd_dbpwd3', '', 'yes'),
(212, 'bus311mtd_dbfiles3', '', 'yes'),
(243, '_site_transient_timeout_browser_e0acbe6b4333b2774cf2305ecf4cd614', '1426766542', 'yes'),
(244, '_site_transient_browser_e0acbe6b4333b2774cf2305ecf4cd614', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"32.0.1700.76";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(272, '_site_transient_timeout_browser_c917cbcbdbc2b619466b4aeb270ad980', '1428059297', 'yes'),
(273, '_site_transient_browser_c917cbcbdbc2b619466b4aeb270ad980', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"36.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(316, '_transient_timeout_plugin_slugs', '1428740305', 'no'),
(317, '_transient_plugin_slugs', 'a:6:{i:0;s:15:"abase/abase.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";i:3;s:37:"user-role-editor/user-role-editor.php";i:4;s:53:"wordpress-access-control/wordpress-access-control.php";i:5;s:53:"wpfront-user-role-editor/wpfront-user-role-editor.php";}', 'no'),
(318, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1428693573', 'no'),
(319, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Napaka RSS</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>Napaka RSS</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(336, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(337, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1428663981', 'yes'),
(338, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4916";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3078";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3022";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2529";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2346";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1892";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1729";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1680";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1678";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1676";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1612";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1609";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1505";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1322";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1276";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1175";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1171";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1083";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1079";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"918";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"905";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"874";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"843";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"837";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"794";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"758";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"748";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"709";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"700";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"692";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"682";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"657";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"649";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"642";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"642";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"623";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"620";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"605";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"600";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"593";}}', 'yes'),
(341, 'scoper_main_htaccess_date', '1428653800', 'yes'),
(342, 'scoper_version', 'a:2:{s:7:"version";s:6:"1.3.64";s:10:"db_version";s:5:"1.1.4";}', 'yes'),
(343, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/sl_SI/wordpress-4.1.2.zip";s:6:"locale";s:5:"sl_SI";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/sl_SI/wordpress-4.1.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.2";s:7:"version";s:5:"4.1.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.1.2-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.2";s:7:"version";s:5:"4.1.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:5:"4.1.1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/sl_SI/wordpress-4.1.2.zip";s:6:"locale";s:5:"sl_SI";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/sl_SI/wordpress-4.1.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.2";s:7:"version";s:5:"4.1.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.1.2-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:0:"";s:7:"version";s:0:"";s:11:"php_version";s:3:"4.3";s:13:"mysql_version";s:5:"4.1.2";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:5:"4.1.1";}}s:12:"last_checked";i:1429644611;s:15:"version_checked";s:5:"4.1.1";s:12:"translations";a:0:{}}', 'yes'),
(345, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1429644621;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(346, 'scoper_custom_nav_menu', 'a:1:{i:2;b:1;}', 'yes'),
(351, '_site_transient_timeout_browser_28a852a08789958a28a252919317792b', '1429258333', 'yes'),
(352, '_site_transient_browser_28a852a08789958a28a252919317792b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.118";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(354, 'scoper_need_cache_flush', '1', 'yes'),
(355, 'scoper_file_htaccess_date', '1428653800', 'yes'),
(358, '_transient_is_multi_author', '0', 'yes'),
(368, '_site_transient_timeout_theme_roots', '1429646413', 'yes'),
(369, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(372, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1429644621;s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}s:53:"wpfront-user-role-editor/wpfront-user-role-editor.php";O:8:"stdClass":7:{s:2:"id";s:5:"48417";s:4:"slug";s:24:"wpfront-user-role-editor";s:6:"plugin";s:53:"wpfront-user-role-editor/wpfront-user-role-editor.php";s:11:"new_version";s:5:"2.9.1";s:3:"url";s:55:"https://wordpress.org/plugins/wpfront-user-role-editor/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/wpfront-user-role-editor.2.9.1.zip";s:14:"upgrade_notice";s:8:"Bug fix.";}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:15:"abase/abase.php";O:8:"stdClass":6:{s:2:"id";s:5:"42597";s:4:"slug";s:5:"abase";s:6:"plugin";s:15:"abase/abase.php";s:11:"new_version";s:5:"2.5.1";s:3:"url";s:36:"https://wordpress.org/plugins/abase/";s:7:"package";s:48:"https://downloads.wordpress.org/plugin/abase.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:37:"user-role-editor/user-role-editor.php";O:8:"stdClass":6:{s:2:"id";s:5:"13697";s:4:"slug";s:16:"user-role-editor";s:6:"plugin";s:37:"user-role-editor/user-role-editor.php";s:11:"new_version";s:6:"4.18.3";s:3:"url";s:47:"https://wordpress.org/plugins/user-role-editor/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/user-role-editor.zip";}s:53:"wordpress-access-control/wordpress-access-control.php";O:8:"stdClass":6:{s:2:"id";s:5:"19439";s:4:"slug";s:24:"wordpress-access-control";s:6:"plugin";s:53:"wordpress-access-control/wordpress-access-control.php";s:11:"new_version";s:6:"4.0.13";s:3:"url";s:55:"https://wordpress.org/plugins/wordpress-access-control/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/wordpress-access-control.4.0.13.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazapostmeta`
--

CREATE TABLE IF NOT EXISTS `wp_bazapostmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazapostmeta`
--

INSERT INTO `wp_bazapostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_lock', '1425816202:1'),
(3, 4, '_edit_last', '1'),
(4, 5, '_edit_lock', '1427456209:1'),
(5, 5, '_edit_last', '1'),
(6, 12, '_edit_last', '1'),
(7, 12, '_edit_lock', '1428653414:1'),
(8, 15, '_edit_lock', '1428654625:1'),
(9, 15, '_edit_last', '1'),
(10, 30, '_edit_lock', '1428652935:1'),
(11, 30, '_edit_last', '1'),
(12, 52, '_edit_lock', '1427456117:1'),
(13, 52, '_edit_last', '1'),
(14, 54, '_edit_lock', '1428650579:1'),
(15, 54, '_edit_last', '1'),
(16, 52, '_wp_trash_meta_status', 'draft'),
(17, 52, '_wp_trash_meta_time', '1427456123'),
(18, 12, '_post_restored_from', 'a:3:{s:20:"restored_revision_id";i:74;s:16:"restored_by_user";i:1;s:13:"restored_time";i:1428652606;}'),
(19, 79, '_menu_item_type', 'custom'),
(20, 79, '_menu_item_menu_item_parent', '0'),
(21, 79, '_menu_item_object_id', '79'),
(22, 79, '_menu_item_object', 'custom'),
(23, 79, '_menu_item_target', ''),
(24, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 79, '_menu_item_xfn', ''),
(26, 79, '_menu_item_url', 'http://localhost/projekt/'),
(28, 79, 'wpfront-user-role-editor-nav-menu-data', 'O:8:"stdClass":1:{s:4:"type";i:1;}'),
(29, 80, '_menu_item_type', 'post_type'),
(30, 80, '_menu_item_menu_item_parent', '0'),
(31, 80, '_menu_item_object_id', '15'),
(32, 80, '_menu_item_object', 'page'),
(33, 80, '_menu_item_target', ''),
(34, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 80, '_menu_item_xfn', ''),
(36, 80, '_menu_item_url', ''),
(38, 80, 'wpfront-user-role-editor-nav-menu-data', 'O:8:"stdClass":1:{s:4:"type";i:1;}'),
(39, 81, '_menu_item_type', 'post_type'),
(40, 81, '_menu_item_menu_item_parent', '0'),
(41, 81, '_menu_item_object_id', '5'),
(42, 81, '_menu_item_object', 'page'),
(43, 81, '_menu_item_target', ''),
(44, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 81, '_menu_item_xfn', ''),
(46, 81, '_menu_item_url', ''),
(48, 81, 'wpfront-user-role-editor-nav-menu-data', 'O:8:"stdClass":1:{s:4:"type";i:1;}'),
(49, 82, '_menu_item_type', 'post_type'),
(50, 82, '_menu_item_menu_item_parent', '0'),
(51, 82, '_menu_item_object_id', '30'),
(52, 82, '_menu_item_object', 'page'),
(53, 82, '_menu_item_target', ''),
(54, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 82, '_menu_item_xfn', ''),
(56, 82, '_menu_item_url', ''),
(57, 82, '_menu_item_orphaned', '1428652922'),
(58, 82, 'wpfront-user-role-editor-nav-menu-data', 'O:8:"stdClass":1:{s:4:"type";i:1;}'),
(59, 83, '_menu_item_type', 'post_type'),
(60, 83, '_menu_item_menu_item_parent', '0'),
(61, 83, '_menu_item_object_id', '12'),
(62, 83, '_menu_item_object', 'page'),
(63, 83, '_menu_item_target', ''),
(64, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 83, '_menu_item_xfn', ''),
(66, 83, '_menu_item_url', ''),
(68, 83, 'wpfront-user-role-editor-nav-menu-data', 'O:8:"stdClass":1:{s:4:"type";i:1;}'),
(69, 84, '_menu_item_type', 'post_type'),
(70, 84, '_menu_item_menu_item_parent', '0'),
(71, 84, '_menu_item_object_id', '54'),
(72, 84, '_menu_item_object', 'page'),
(73, 84, '_menu_item_target', ''),
(74, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 84, '_menu_item_xfn', ''),
(76, 84, '_menu_item_url', ''),
(78, 84, 'wpfront-user-role-editor-nav-menu-data', 'O:8:"stdClass":1:{s:4:"type";i:1;}'),
(79, 85, '_menu_item_type', 'post_type'),
(80, 85, '_menu_item_menu_item_parent', '0'),
(81, 85, '_menu_item_object_id', '2'),
(82, 85, '_menu_item_object', 'page'),
(83, 85, '_menu_item_target', ''),
(84, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 85, '_menu_item_xfn', ''),
(86, 85, '_menu_item_url', ''),
(88, 85, 'wpfront-user-role-editor-nav-menu-data', 'O:8:"stdClass":1:{s:4:"type";i:1;}'),
(89, 1, '_edit_lock', '1428652966:1'),
(90, 15, '_scoper_custom', '1'),
(91, 15, '_wpac_is_members_only', 'true'),
(92, 15, '_wpac_restricted_to', 's:24:"a:1:{i:0;s:7:"ucitelj";}";'),
(93, 15, '_wpac_members_redirect_to', ''),
(94, 15, '_wpac_show_in_search', '0'),
(95, 15, '_wpac_show_excerpt_in_search', '0'),
(96, 15, '_wpac_nonmembers_redirect_to', '');

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazaposts`
--

CREATE TABLE IF NOT EXISTS `wp_bazaposts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazaposts`
--

INSERT INTO `wp_bazaposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-02-20 11:23:33', '2015-02-20 11:23:33', 'Dobrodošli v WordPressu. To je vaš prvi prispevek. Uredite ali izbrišite ga, nato začnite pisati blog!', 'Pozdravljen svet!', '', 'publish', 'open', 'open', '', 'pozdravljen-svet', '', '', '2015-02-20 11:23:33', '2015-02-20 11:23:33', '', 0, 'http://localhost/projekt/?p=1', 0, 'post', '', 1),
(2, 1, '2015-02-20 11:23:33', '2015-02-20 11:23:33', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href="http://localhost/projekt/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Vzorčna stran', '', 'publish', 'open', 'open', '', 'vzorčna stran', '', '', '2015-02-20 11:23:33', '2015-02-20 11:23:33', '', 0, 'http://localhost/projekt/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-03-08 12:55:11', '0000-00-00 00:00:00', '', 'Pregled dejavnosti', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-08 12:55:11', '2015-03-08 11:55:11', '', 0, 'http://localhost/projekt/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-03-08 13:05:30', '2015-03-08 12:05:30', '[abase table="dejavnost"]', 'Pregled dejavnosti', '', 'publish', 'open', 'open', '', 'pregled-dejavnosti', '', '', '2015-03-27 12:35:30', '2015-03-27 11:35:30', '', 0, 'http://localhost/projekt/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-03-08 13:05:30', '2015-03-08 12:05:30', '[abase table="employees"]', 'Pregled dejavnosti', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-08 13:05:30', '2015-03-08 12:05:30', '', 5, 'http://localhost/projekt/?p=6', 0, 'revision', '', 0),
(7, 1, '2015-03-08 13:05:52', '2015-03-08 12:05:52', '[abase table="ucitelji"]', 'Pregled dejavnosti', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-08 13:05:52', '2015-03-08 12:05:52', '', 5, 'http://localhost/projekt/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-03-08 13:08:38', '2015-03-08 12:08:38', '[abase table="ucitelji"]\n\n\n\n[abase form=",insert" table="ucitelji" columns="ime,priimek$Add Employee" elements="ime,priimek" ack="red"]\n\n', 'Pregled dejavnosti', '', 'inherit', 'open', 'open', '', '5-autosave-v1', '', '', '2015-03-08 13:08:38', '2015-03-08 12:08:38', '', 5, 'http://localhost/projekt/?p=8', 0, 'revision', '', 0),
(9, 1, '2015-03-08 13:07:15', '2015-03-08 12:07:15', '[abase table="ucitelji"]\r\n\r\n\r\n\r\n[abase form="1,insert" table="ucitelji" columns="ime,priimek$Add Employee" elements="first_name,last_name" ack="red"]\r\n\r\n', 'Pregled dejavnosti', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-08 13:07:15', '2015-03-08 12:07:15', '', 5, 'http://localhost/projekt/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-03-08 13:07:34', '2015-03-08 12:07:34', '[abase table="ucitelji"]\r\n\r\n\r\n\r\n[abase form="1,insert" table="ucitelji" columns="ime,priimek$Add Employee" elements="ime,priimek" ack="red"]\r\n\r\n', 'Pregled dejavnosti', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-08 13:07:34', '2015-03-08 12:07:34', '', 5, 'http://localhost/projekt/?p=10', 0, 'revision', '', 0),
(11, 1, '2015-03-08 13:08:40', '2015-03-08 12:08:40', '[abase table="ucitelji"]\r\n\r\n\r\n\r\n[abase form="2,insert" table="ucitelji" columns="ime,priimek$Add Employee" elements="ime,priimek" ack="red"]\r\n\r\n', 'Pregled dejavnosti', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-08 13:08:40', '2015-03-08 12:08:40', '', 5, 'http://localhost/projekt/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-03-08 13:11:04', '2015-03-08 12:11:04', '[abase form="2,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika " ack="red" style="color:red;width:500px;"]\r\n\r\n\r\n[abase form="3,insert" table="dejavnost" columns="izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'publish', 'open', 'open', '', 'vnos', '', '', '2015-04-10 08:56:46', '2015-04-10 07:56:46', '', 0, 'http://localhost/projekt/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-03-08 13:10:58', '2015-03-08 12:10:58', '[abase table="ucitelji"]\r\n\r\n\r\n\r\n\r\n', 'Pregled dejavnosti', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-08 13:10:58', '2015-03-08 12:10:58', '', 5, 'http://localhost/projekt/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-03-08 13:11:04', '2015-03-08 12:11:04', '[abase form="1,insert" table="ucitelji" columns="ime,priimek$Add Employee" elements="ime,priimek" ack="red"]', 'Vnos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-08 13:11:04', '2015-03-08 12:11:04', '', 12, 'http://localhost/projekt/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-03-08 13:12:21', '2015-03-08 12:12:21', '[abase form="1,search" table="dejavnost" columns="Ime_dejavnosti$Iskanje Dejavnosti" elements="Ime_dejavnosti" form="1,search,/projekt/?page_id=30/"]\r\n', 'Iskanje dejavnosti', '', 'publish', 'open', 'open', '', 'iskanje', '', '', '2015-04-10 09:19:00', '2015-04-10 08:19:00', '', 0, 'http://localhost/projekt/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-03-08 13:12:21', '2015-03-08 12:12:21', '[abase form="1,search" table="ucitelji" columns="ime,priimek$Search Employees" elements="ime,priimek"]\r\n', 'Iskanje', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:12:21', '2015-03-08 12:12:21', '', 15, 'http://localhost/projekt/?p=16', 0, 'revision', '', 0),
(17, 1, '2015-03-08 13:14:16', '2015-03-08 12:14:16', '[abase form="search" table="ucitelji" columns="ime,priimek$Search Employees" elements="ime,priimek"]\r\n', 'Iskanje', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:14:16', '2015-03-08 12:14:16', '', 15, 'http://localhost/projekt/?p=17', 0, 'revision', '', 0),
(18, 1, '2015-03-08 13:15:03', '2015-03-08 12:15:03', '[abase form="1,search" table="ucitelji" columns="ime,priimek$Search Employees" elements="ime"]\r\n', 'Iskanje', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:15:03', '2015-03-08 12:15:03', '', 15, 'http://localhost/projekt/?p=18', 0, 'revision', '', 0),
(19, 1, '2015-03-08 13:15:59', '2015-03-08 12:15:59', '[abase form="1,search" table="ucitelji" columns="ime$Search Employees" elements="ime"]\r\n', 'Iskanje', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:15:59', '2015-03-08 12:15:59', '', 15, 'http://localhost/projekt/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-03-08 13:16:26', '2015-03-08 12:16:26', '[abase form="1,search" table="ucitelji" columns="ime $Search Ucitelji" elements="ime"]\r\n', 'Iskanje', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:16:26', '2015-03-08 12:16:26', '', 15, 'http://localhost/projekt/?p=20', 0, 'revision', '', 0),
(21, 1, '2015-03-08 13:16:43', '2015-03-08 12:16:43', '[abase form="1,search" table="ucitelji" columns="Ime, Priimek $Search Ucitelji" elements="Ime, Priimek"]', 'Iskanje', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:16:43', '2015-03-08 12:16:43', '', 15, 'http://localhost/projekt/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-03-08 13:17:05', '2015-03-08 12:17:05', '[abase form="1,search" table="ucitelji" columns="Ime, Priimek$Search Ucitelji" elements="Ime, Priimek"]', 'Iskanje', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:17:05', '2015-03-08 12:17:05', '', 15, 'http://localhost/projekt/?p=22', 0, 'revision', '', 0),
(23, 1, '2015-03-08 13:17:26', '2015-03-08 12:17:26', '[abase form="1,search" table="ucitelji" columns="Ime, Priimek$Iskanje Ucitelji" elements="Ime, Priimek"]', 'Iskanje', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:17:26', '2015-03-08 12:17:26', '', 15, 'http://localhost/projekt/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-03-08 13:17:34', '2015-03-08 12:17:34', '[abase form="1,search" table="ucitelji" columns="Ime, Priimek$Iskanje Ucitelji" elements="Ime, Priimek"]', 'Iskanje uciteljev', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:17:34', '2015-03-08 12:17:34', '', 15, 'http://localhost/projekt/?p=24', 0, 'revision', '', 0),
(25, 1, '2015-03-08 13:22:39', '2015-03-08 12:22:39', '[abase form="1,search" table="ucitelji" columns="Ime, Priimek$Iskanje Ucitelji" elements="Ime, Priimek" form="1,search,/projekt/?page_id=30/"]\n', 'Iskanje uciteljev', '', 'inherit', 'open', 'open', '', '15-autosave-v1', '', '', '2015-03-08 13:22:39', '2015-03-08 12:22:39', '', 15, 'http://localhost/projekt/?p=25', 0, 'revision', '', 0),
(26, 1, '2015-03-08 13:18:49', '2015-03-08 12:18:49', '[abase form="1,search" table="ucitelji" columns="Ime, Priimek$Iskanje Ucitelji" elements="Ime, Priimek"]\r\n\r\n[abase table="ucitelji" columns="Ime, Priimek" where="AND `status`=''1''" echo="0" ack="green"]\r\n\r\n', 'Iskanje uciteljev', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:18:49', '2015-03-08 12:18:49', '', 15, 'http://localhost/projekt/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-03-08 13:19:29', '2015-03-08 12:19:29', '[abase form="2,search" table="ucitelji" columns="Ime, Priimek$Iskanje Ucitelji" elements="Ime, Priimek"]\r\n\r\n[abase table="ucitelji" columns="Ime, Priimek" where="AND `status`=''1''" echo="0" ack="green"]\r\n', 'Iskanje uciteljev', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:19:29', '2015-03-08 12:19:29', '', 15, 'http://localhost/projekt/?p=27', 0, 'revision', '', 0),
(28, 1, '2015-03-08 13:19:56', '2015-03-08 12:19:56', '[abase form="2,search" table="ucitelji" columns="Ime, Priimek$Iskanje Ucitelji" elements="Ime, Priimek"]\r\n\r\n[abase table="ucitelji" columns="Ime, Priimek" where="AND status=''1''" echo="0" ack="green"]\r\n', 'Iskanje uciteljev', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:19:56', '2015-03-08 12:19:56', '', 15, 'http://localhost/projekt/?p=28', 0, 'revision', '', 0),
(29, 1, '2015-03-08 13:21:34', '2015-03-08 12:21:34', '[abase form="1,search" table="ucitelji" columns="Ime, Priimek$Iskanje Ucitelji" elements="Ime, Priimek" form="1,search,/search-results/"]\r\n\r\n', 'Iskanje uciteljev', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:21:34', '2015-03-08 12:21:34', '', 15, 'http://localhost/projekt/?p=29', 0, 'revision', '', 0),
(30, 1, '2015-03-08 13:22:24', '2015-03-08 12:22:24', '[abase table="dejavnost" columns="Ime_dejavnosti" echo="0" ack="green"]\r\n', 'rezultati iskanja', '', 'publish', 'open', 'open', '', 'rezultati-iskanja', '', '', '2015-03-27 12:38:12', '2015-03-27 11:38:12', '', 0, 'http://localhost/projekt/?page_id=30', 0, 'page', '', 0),
(31, 1, '2015-03-08 13:22:24', '2015-03-08 12:22:24', '[abase table="ucitelji" columns="Ime, Priimek" where="AND `status`=''1''" echo="0" ack="green"]\r\n', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-08 13:22:24', '2015-03-08 12:22:24', '', 30, 'http://localhost/projekt/?p=31', 0, 'revision', '', 0),
(32, 1, '2015-03-08 13:22:41', '2015-03-08 12:22:41', '[abase form="1,search" table="ucitelji" columns="Ime, Priimek$Iskanje Ucitelji" elements="Ime, Priimek" form="1,search,/projekt/?page_id=30/"]\r\n', 'Iskanje uciteljev', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-08 13:22:41', '2015-03-08 12:22:41', '', 15, 'http://localhost/projekt/?p=32', 0, 'revision', '', 0),
(33, 1, '2015-03-08 13:23:20', '2015-03-08 12:23:20', '', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-08 13:23:20', '2015-03-08 12:23:20', '', 30, 'http://localhost/projekt/?p=33', 0, 'revision', '', 0),
(35, 1, '2015-03-08 13:24:43', '2015-03-08 12:24:43', '[abase table="employees" columns="first_name,last_name" where="AND ''status''=''1''" echo="0" ack="green"]\r\n', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-08 13:24:43', '2015-03-08 12:24:43', '', 30, 'http://localhost/projekt/?p=35', 0, 'revision', '', 0),
(36, 1, '2015-03-08 13:25:06', '2015-03-08 12:25:06', '[abase table="ucitelji" columns="Ime, Priimek" where="AND ''status''=''1''" echo="0" ack="green"]\r\n', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-08 13:25:06', '2015-03-08 12:25:06', '', 30, 'http://localhost/projekt/?p=36', 0, 'revision', '', 0),
(37, 1, '2015-03-08 13:25:46', '2015-03-08 12:25:46', '[abase table="ucitelji" columns="Ime, Priimek" where="AND `status`=''1''" echo="0" ack="green"]', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-08 13:25:46', '2015-03-08 12:25:46', '', 30, 'http://localhost/projekt/?p=37', 0, 'revision', '', 0),
(38, 1, '2015-03-08 13:26:31', '2015-03-08 12:26:31', '[abase table="ucitelji" columns="Ime, Priimek" where="AND " echo="0" ack="green"]', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-08 13:26:31', '2015-03-08 12:26:31', '', 30, 'http://localhost/projekt/?p=38', 0, 'revision', '', 0),
(39, 1, '2015-03-08 13:27:22', '2015-03-08 12:27:22', '[abase table="ucitelji" columns="Ime, Priimek" where="`status`=''1'' AND" echo="0" ack="green"]', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-08 13:27:22', '2015-03-08 12:27:22', '', 30, 'http://localhost/projekt/?p=39', 0, 'revision', '', 0),
(41, 1, '2015-03-12 13:08:03', '2015-03-12 12:08:03', '[abase table="ucitelji" columns="Ime, Priimek" where="AND `status`=''1''" echo="0" ack="green"]\n', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-autosave-v1', '', '', '2015-03-12 13:08:03', '2015-03-12 12:08:03', '', 30, 'http://localhost/projekt/?p=41', 0, 'revision', '', 0),
(42, 1, '2015-03-12 13:08:50', '2015-03-12 12:08:50', '[abase table="ucitelji" columns="Ime, Priimek" echo="0" ack="green"]\r\n', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-12 13:08:50', '2015-03-12 12:08:50', '', 30, 'http://localhost/projekt/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-04-10 08:56:22', '2015-04-10 07:56:22', '[abase form="2,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj" ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="2,insert" table="dejavnost" columns="kontakt_za_prijavo, organizac_oblika" elements="kontakt_za_prijavo, organizac_oblika " ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="2,insert" table="dejavnost" columns="izobraz_prog, starost_dijakov, razvoj_nadar" elements="izobraz_prog, starost_dijakov, razvoj_nadar   " ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="3,insert" table="dejavnost" columns="drugo_opombe$Dodaj" elements="drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-autosave-v1', '', '', '2015-04-10 08:56:22', '2015-04-10 07:56:22', '', 12, 'http://localhost/projekt/?p=43', 0, 'revision', '', 0),
(44, 1, '2015-03-12 13:12:42', '2015-03-12 12:12:42', '[abase form="1,insert" table="ucitelji" columns="Ime, Priimek$Dodaj" elements="ime,priimek" ack="red"]', 'Vnos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-12 13:12:42', '2015-03-12 12:12:42', '', 12, 'http://localhost/projekt/?p=44', 0, 'revision', '', 0),
(45, 1, '2015-03-12 13:13:07', '2015-03-12 12:13:07', '[abase form="1,insert" table="ucitelji" columns="Ime, Priimek$Dodaj" elements="Ime, Priimek" ack="red"]', 'Vnos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-12 13:13:07', '2015-03-12 12:13:07', '', 12, 'http://localhost/projekt/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-03-12 13:18:57', '2015-03-12 12:18:57', '[abase form="1,insert" table="ucitelji" columns="Ime, Priimek$Dodaj" elements="Ime, Priimek" ack="red" style="color:red;width:500px;"]', 'Vnos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-12 13:18:57', '2015-03-12 12:18:57', '', 12, 'http://localhost/projekt/?p=46', 0, 'revision', '', 0),
(48, 1, '2015-03-27 12:11:18', '2015-03-27 11:11:18', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor$Dodaj" elements="Ime_dejavnosti, Mentor" ack="red" style="color:red;width:500px;"]', 'Vnos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-27 12:11:18', '2015-03-27 11:11:18', '', 12, 'http://localhost/projekt/?p=48', 0, 'revision', '', 0),
(49, 1, '2015-03-27 12:11:31', '2015-03-27 11:11:31', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor$Dodaj" elements="Ime dejavnosti, Mentor" ack="red" style="color:red;width:500px;"]', 'Vnos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-27 12:11:31', '2015-03-27 11:11:31', '', 12, 'http://localhost/projekt/?p=49', 0, 'revision', '', 0),
(50, 1, '2015-03-27 12:11:44', '2015-03-27 11:11:44', '[abase form="1,insert" table="dejavnost" columns="Ime dejavnosti, Mentor$Dodaj" elements="Ime_dejavnosti, Mentor" ack="red" style="color:red;width:500px;"]', 'Vnos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-27 12:11:44', '2015-03-27 11:11:44', '', 12, 'http://localhost/projekt/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-03-27 12:12:00', '2015-03-27 11:12:00', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor$Dodaj" elements="Ime_dejavnosti, Mentor" ack="red" style="color:red;width:500px;"]', 'Vnos', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-27 12:12:00', '2015-03-27 11:12:00', '', 12, 'http://localhost/projekt/?p=51', 0, 'revision', '', 0),
(52, 1, '2015-03-27 12:12:39', '2015-03-27 11:12:39', '[abase table="dejavnost"]', 'dejavnost', '', 'trash', 'open', 'open', '', 'dejavnost', '', '', '2015-03-27 12:35:23', '2015-03-27 11:35:23', '', 0, 'http://localhost/projekt/?page_id=52', 0, 'page', '', 0),
(53, 1, '2015-03-27 12:31:53', '2015-03-27 11:31:53', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor$Dodaj" elements="Ime_dejavnosti, Mentor" ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-03-27 12:31:53', '2015-03-27 11:31:53', '', 12, 'http://localhost/projekt/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-03-27 12:34:00', '2015-03-27 11:34:00', '[abase form="1,insert" table="vpis" columns="ID, ID_dejavnosti$Dodaj" elements="ID, ID_dejavnosti" ack="red" style="color:red;width:500px;"]\r\n\r\n', 'Vpis k dejavnosti', '', 'publish', 'open', 'open', '', 'vpis-k-dejavnosti', '', '', '2015-03-27 12:34:48', '2015-03-27 11:34:48', '', 0, 'http://localhost/projekt/?page_id=54', 0, 'page', '', 0),
(55, 1, '2015-03-27 12:34:00', '2015-03-27 11:34:00', '[abase form="1,insert" table="vpis" columns="ID, ID_dejavnosti$Dodaj" elements="ID, ID_dejavnosti" ack="red" style="color:red;width:500px;"]\r\n\r\n[abase table="dejavnost"]\r\n[abase table="wp_bazausers" columns="ID, user_login"]', 'Vpis k dejavnosti', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2015-03-27 12:34:00', '2015-03-27 11:34:00', '', 54, 'http://localhost/projekt/?p=55', 0, 'revision', '', 0),
(56, 1, '2015-03-27 12:34:48', '2015-03-27 11:34:48', '[abase form="1,insert" table="vpis" columns="ID, ID_dejavnosti$Dodaj" elements="ID, ID_dejavnosti" ack="red" style="color:red;width:500px;"]\r\n\r\n', 'Vpis k dejavnosti', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2015-03-27 12:34:48', '2015-03-27 11:34:48', '', 54, 'http://localhost/projekt/?p=56', 0, 'revision', '', 0),
(57, 1, '2015-03-27 12:35:23', '2015-03-27 11:35:23', '[abase table="dejavnost"]', 'dejavnost', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2015-03-27 12:35:23', '2015-03-27 11:35:23', '', 52, 'http://localhost/projekt/?p=57', 0, 'revision', '', 0),
(58, 1, '2015-03-27 12:35:30', '2015-03-27 11:35:30', '[abase table="dejavnost"]', 'Pregled dejavnosti', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-03-27 12:35:30', '2015-03-27 11:35:30', '', 5, 'http://localhost/projekt/?p=58', 0, 'revision', '', 0),
(60, 1, '2015-03-27 12:37:45', '2015-03-27 11:37:45', '[abase form="1,search" table="ucitelji" columns="Ime_dejavnosti$Iskanje Ucitelji" elements="Ime_dejavnosti" form="1,search,/projekt/?page_id=30/"]\r\n', 'Iskanje dejavnosti', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-27 12:37:45', '2015-03-27 11:37:45', '', 15, 'http://localhost/projekt/?p=60', 0, 'revision', '', 0),
(61, 1, '2015-03-27 12:38:12', '2015-03-27 11:38:12', '[abase table="dejavnost" columns="Ime_dejavnosti" echo="0" ack="green"]\r\n', 'rezultati iskanja', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-03-27 12:38:12', '2015-03-27 11:38:12', '', 30, 'http://localhost/projekt/?p=61', 0, 'revision', '', 0),
(62, 1, '2015-03-27 12:38:38', '2015-03-27 11:38:38', '[abase form="1,search" table="dejavnost" columns="Ime_dejavnosti$Iskanje Dejavnosti" elements="Ime_dejavnosti" form="1,search,/projekt/?page_id=30/"]\r\n', 'Iskanje dejavnosti', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-27 12:38:38', '2015-03-27 11:38:38', '', 15, 'http://localhost/projekt/?p=62', 0, 'revision', '', 0),
(64, 1, '2015-04-10 08:26:00', '2015-04-10 07:26:00', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj$Dodaj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:26:00', '2015-04-10 07:26:00', '', 12, 'http://localhost/projekt/?p=64', 0, 'revision', '', 0),
(65, 1, '2015-04-10 08:26:39', '2015-04-10 07:26:39', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo$Dodaj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:26:39', '2015-04-10 07:26:39', '', 12, 'http://localhost/projekt/?p=65', 0, 'revision', '', 0),
(66, 1, '2015-04-10 08:28:35', '2015-04-10 07:28:35', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:28:35', '2015-04-10 07:28:35', '', 12, 'http://localhost/projekt/?p=66', 0, 'revision', '', 0),
(67, 1, '2015-04-10 08:32:23', '2015-04-10 07:32:23', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="''Ime dejavnosti'', Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:32:23', '2015-04-10 07:32:23', '', 12, 'http://localhost/projekt/?p=67', 0, 'revision', '', 0),
(68, 1, '2015-04-10 08:32:41', '2015-04-10 07:32:41', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="Ime dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:32:41', '2015-04-10 07:32:41', '', 12, 'http://localhost/projekt/?p=68', 0, 'revision', '', 0),
(69, 1, '2015-04-10 08:32:57', '2015-04-10 07:32:57', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:32:57', '2015-04-10 07:32:57', '', 12, 'http://localhost/projekt/?p=69', 0, 'revision', '', 0),
(70, 1, '2015-04-10 08:33:02', '2015-04-10 07:33:02', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="Ime_dejavnosti1, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:33:02', '2015-04-10 07:33:02', '', 12, 'http://localhost/projekt/?p=70', 0, 'revision', '', 0),
(71, 1, '2015-04-10 08:33:18', '2015-04-10 07:33:18', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti1, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:33:18', '2015-04-10 07:33:18', '', 12, 'http://localhost/projekt/?p=71', 0, 'revision', '', 0),
(72, 1, '2015-04-10 08:33:31', '2015-04-10 07:33:31', '[abase form="1,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika, izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:33:31', '2015-04-10 07:33:31', '', 12, 'http://localhost/projekt/?p=72', 0, 'revision', '', 0),
(73, 1, '2015-04-10 08:44:05', '2015-04-10 07:44:05', '[abase form="2,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika,$Dodaj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika " ack="red" style="color:red;width:500px;"]\r\n\r\n\r\n[abase form="3,insert" table="dejavnost" columns="izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:44:05', '2015-04-10 07:44:05', '', 12, 'http://localhost/projekt/?p=73', 0, 'revision', '', 0),
(74, 1, '2015-04-10 08:44:29', '2015-04-10 07:44:29', '[abase form="2,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika " ack="red" style="color:red;width:500px;"]\r\n\r\n\r\n[abase form="3,insert" table="dejavnost" columns="izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:44:29', '2015-04-10 07:44:29', '', 12, 'http://localhost/projekt/?p=74', 0, 'revision', '', 0),
(75, 1, '2015-04-10 08:49:19', '2015-04-10 07:49:19', '[abase form="2,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj" ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="2,insert" table="dejavnost" columns="kontakt_za_prijavo, organizac_oblika" elements="kontakt_za_prijavo, organizac_oblika " ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="3,insert" table="dejavnost" columns="izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:49:19', '2015-04-10 07:49:19', '', 12, 'http://localhost/projekt/?p=75', 0, 'revision', '', 0),
(76, 1, '2015-04-10 08:53:37', '2015-04-10 07:53:37', '[abase form="2,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj" ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="2,insert" table="dejavnost" columns="kontakt_za_prijavo, organizac_oblika" elements="kontakt_za_prijavo, organizac_oblika " ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="2,insert" table="dejavnost" columns="izobraz_prog, starost_dijakov, razvoj_nadar$Dodaj" elements="izobraz_prog, starost_dijakov, razvoj_nadar   " ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="3,insert" table="dejavnost" columns="drugo_opombe$Dodaj" elements="drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:53:37', '2015-04-10 07:53:37', '', 12, 'http://localhost/projekt/?p=76', 0, 'revision', '', 0),
(77, 1, '2015-04-10 08:54:57', '2015-04-10 07:54:57', '[abase form="2,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj" ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="2,insert" table="dejavnost" columns="kontakt_za_prijavo, organizac_oblika" elements="kontakt_za_prijavo, organizac_oblika " ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="2,insert" table="dejavnost" columns="izobraz_prog, starost_dijakov, razvoj_nadar" elements="izobraz_prog, starost_dijakov, razvoj_nadar   " ack="red" style="color:red;width:500px;"]\r\n\r\n[abase form="3,insert" table="dejavnost" columns="drugo_opombe$Dodaj" elements="drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:54:57', '2015-04-10 07:54:57', '', 12, 'http://localhost/projekt/?p=77', 0, 'revision', '', 0),
(78, 1, '2015-04-10 08:56:46', '2015-04-10 07:56:46', '[abase form="2,insert" table="dejavnost" columns="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika" elements="Ime_dejavnosti, Mentor, predvid_stev_srecanj, kontakt_za_prijavo, organizac_oblika " ack="red" style="color:red;width:500px;"]\r\n\r\n\r\n[abase form="3,insert" table="dejavnost" columns="izobraz_prog, starost_dijakov, razvoj_nadar, drugo_opombe$Dodaj" elements="izobraz_prog, starost_dijakov, razvoj_nadar,drugo_opombe   " ack="red" style="color:red;width:500px;"]', 'Vnos dejavnosti', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-10 08:56:46', '2015-04-10 07:56:46', '', 12, 'http://localhost/projekt/?p=78', 0, 'revision', '', 0),
(79, 1, '2015-04-10 09:02:10', '2015-04-10 08:02:10', '', 'Domov', '', 'publish', 'open', 'open', '', 'domov', '', '', '2015-04-10 09:02:17', '2015-04-10 08:02:17', '', 0, 'http://localhost/projekt/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2015-04-10 09:02:10', '2015-04-10 08:02:10', ' ', '', '', 'publish', 'open', 'open', '', '80', '', '', '2015-04-10 09:02:17', '2015-04-10 08:02:17', '', 0, 'http://localhost/projekt/?p=80', 2, 'nav_menu_item', '', 0),
(81, 1, '2015-04-10 09:02:11', '2015-04-10 08:02:11', ' ', '', '', 'publish', 'open', 'open', '', '81', '', '', '2015-04-10 09:02:17', '2015-04-10 08:02:17', '', 0, 'http://localhost/projekt/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2015-04-10 09:02:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-10 09:02:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/projekt/?p=82', 1, 'nav_menu_item', '', 0),
(83, 1, '2015-04-10 09:02:11', '2015-04-10 08:02:11', ' ', '', '', 'publish', 'open', 'open', '', '83', '', '', '2015-04-10 09:02:18', '2015-04-10 08:02:18', '', 0, 'http://localhost/projekt/?p=83', 4, 'nav_menu_item', '', 0),
(84, 1, '2015-04-10 09:02:11', '2015-04-10 08:02:11', ' ', '', '', 'publish', 'open', 'open', '', '84', '', '', '2015-04-10 09:02:18', '2015-04-10 08:02:18', '', 0, 'http://localhost/projekt/?p=84', 5, 'nav_menu_item', '', 0),
(85, 1, '2015-04-10 09:02:12', '2015-04-10 08:02:12', ' ', '', '', 'publish', 'open', 'open', '', '85', '', '', '2015-04-10 09:02:18', '2015-04-10 08:02:18', '', 0, 'http://localhost/projekt/?p=85', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazarole_scope_rs`
--

CREATE TABLE IF NOT EXISTS `wp_bazarole_scope_rs` (
`requirement_id` bigint(20) NOT NULL,
  `role_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_type` enum('rs','wp','wp_cap') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'rs',
  `topic` enum('blog','term','object') COLLATE utf8_unicode_ci NOT NULL,
  `src_or_tx_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `obj_or_term_id` bigint(20) NOT NULL DEFAULT '0',
  `max_scope` enum('blog','term','object') COLLATE utf8_unicode_ci NOT NULL,
  `require_for` enum('entity','children','both') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'entity',
  `inherited_from` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Odloži podatke za tabelo `wp_bazarole_scope_rs`
--

INSERT INTO `wp_bazarole_scope_rs` (`requirement_id`, `role_name`, `role_type`, `topic`, `src_or_tx_name`, `obj_or_term_id`, `max_scope`, `require_for`, `inherited_from`) VALUES
(1, 'nav_menu_manager', 'rs', 'term', 'nav_menu', 2, 'term', 'entity', 0);

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazaterms`
--

CREATE TABLE IF NOT EXISTS `wp_bazaterms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazaterms`
--

INSERT INTO `wp_bazaterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Nerazvrščeno', 'nekategorizirano', 0),
(2, 'Meni 1', 'meni-1', 0);

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazaterm_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_bazaterm_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazaterm_relationships`
--

INSERT INTO `wp_bazaterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(79, 2, 0),
(80, 2, 0),
(81, 2, 0),
(83, 2, 0),
(84, 2, 0),
(85, 2, 0);

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazaterm_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_bazaterm_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazaterm_taxonomy`
--

INSERT INTO `wp_bazaterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazauser2group_rs`
--

CREATE TABLE IF NOT EXISTS `wp_bazauser2group_rs` (
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `assigner_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `status` enum('active','recommended','requested') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazauser2role2object_rs`
--

CREATE TABLE IF NOT EXISTS `wp_bazauser2role2object_rs` (
`assignment_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  `role_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_type` enum('rs','wp','wp_cap') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'rs',
  `scope` enum('blog','term','object') COLLATE utf8_unicode_ci NOT NULL,
  `src_or_tx_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `obj_or_term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `assign_for` enum('entity','children','both') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'entity',
  `inherited_from` bigint(20) unsigned NOT NULL DEFAULT '0',
  `assigner_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_limited` tinyint(2) NOT NULL DEFAULT '0',
  `start_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date_gmt` datetime NOT NULL DEFAULT '2035-01-01 00:00:00',
  `content_date_limited` tinyint(2) NOT NULL DEFAULT '0',
  `content_min_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content_max_date_gmt` datetime NOT NULL DEFAULT '2035-01-01 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Odloži podatke za tabelo `wp_bazauser2role2object_rs`
--

INSERT INTO `wp_bazauser2role2object_rs` (`assignment_id`, `user_id`, `group_id`, `role_name`, `role_type`, `scope`, `src_or_tx_name`, `obj_or_term_id`, `assign_for`, `inherited_from`, `assigner_id`, `date_limited`, `start_date_gmt`, `end_date_gmt`, `content_date_limited`, `content_min_date_gmt`, `content_max_date_gmt`) VALUES
(1, 1, NULL, 'administrator', 'wp', 'blog', '', 0, 'entity', 0, 0, 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00', 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00'),
(2, 2, NULL, 'ucitelj', 'wp', 'blog', '', 0, 'entity', 0, 0, 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00', 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00'),
(3, NULL, 6, 'nav_menu_manager', 'rs', 'term', 'nav_menu', 2, 'entity', 0, 1, 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00', 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00'),
(4, 2, NULL, 'private_page_reader', 'rs', 'object', 'post', 15, 'entity', 0, 1, 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00', 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00'),
(5, NULL, 6, 'private_page_reader', 'rs', 'object', 'post', 15, 'entity', 0, 1, 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00', 0, '0000-00-00 00:00:00', '2035-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazausermeta`
--

CREATE TABLE IF NOT EXISTS `wp_bazausermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazausermeta`
--

INSERT INTO `wp_bazausermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_bazacapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_bazauser_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"cd08aacd07417aca299be7c220d03ad658f9c2aa96fd0fcb10ca848525de03ce";a:4:{s:10:"expiration";i:1428823170;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428650370;}}'),
(15, 1, 'wp_bazadashboard_quick_press_last_post_id', '63'),
(16, 1, 'meta-box-order_wpfront-user-role-editor-add-new', 'a:1:{s:6:"normal";s:233:"postbox-Dashboard,postbox-Posts,postbox-Media,postbox-Pages,postbox-Comments,postbox-Themes,postbox-Plugins,postbox-Users,postbox-Tools,postbox-Admin,postbox-Links,postbox-Deprecated,postbox-Roles (WPFront),postbox-Other Capabilities";}'),
(17, 2, 'nickname', 'KristjanGrm'),
(18, 2, 'first_name', 'Kristjan'),
(19, 2, 'last_name', 'Grm'),
(20, 2, 'description', ''),
(21, 2, 'rich_editing', 'true'),
(22, 2, 'comment_shortcuts', 'false'),
(23, 2, 'admin_color', 'fresh'),
(24, 2, 'use_ssl', '0'),
(25, 2, 'show_admin_bar_front', 'true'),
(26, 2, 'wp_bazacapabilities', 'a:1:{s:7:"ucitelj";b:1;}'),
(27, 2, 'wp_bazauser_level', '0'),
(28, 2, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(29, 1, 'wp_bazauser-settings', 'editor=html'),
(30, 1, 'wp_bazauser-settings-time', '1425816328'),
(31, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(32, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(33, 1, 'nav_menu_recently_edited', '2'),
(35, 2, 'wp_bazadashboard_quick_press_last_post_id', '86');

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazausers`
--

CREATE TABLE IF NOT EXISTS `wp_bazausers` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Odloži podatke za tabelo `wp_bazausers`
--

INSERT INTO `wp_bazausers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BeiLoaic6WOjdI8JHR8S/T27RAQ.aN1', 'admin', 'killerworm31@gmail.com', '', '2015-02-20 11:23:33', '', 0, 'Admin'),
(2, 'KristjanGrm', '$P$BN8raW3Ef6uUcr.EABzHizj/kqoKEn1', 'kristjangrm', 'free.gta5@gmail.com', '', '2015-03-03 15:15:02', '', 0, 'Kristjan Grm');

-- --------------------------------------------------------

--
-- Struktura tabele `wp_bazawpfront_ure_options`
--

CREATE TABLE IF NOT EXISTS `wp_bazawpfront_ure_options` (
`id` bigint(20) NOT NULL,
  `option_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Odloži podatke za tabelo `wp_bazawpfront_ure_options`
--

INSERT INTO `wp_bazawpfront_ure_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'wp_bazawpfront_ure_options-db-version', '2.7');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `dejavnost`
--
ALTER TABLE `dejavnost`
 ADD PRIMARY KEY (`ID_dejavnosti`), ADD UNIQUE KEY `ID_dejavnosti` (`ID_dejavnosti`);

--
-- Indeksi tabele `vpis`
--
ALTER TABLE `vpis`
 ADD PRIMARY KEY (`ID_dejavnosti`,`ID`), ADD KEY `ID` (`ID`);

--
-- Indeksi tabele `wp_bazacommentmeta`
--
ALTER TABLE `wp_bazacommentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indeksi tabele `wp_bazacomments`
--
ALTER TABLE `wp_bazacomments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indeksi tabele `wp_bazagroups_rs`
--
ALTER TABLE `wp_bazagroups_rs`
 ADD PRIMARY KEY (`ID`), ADD KEY `meta_id` (`group_meta_id`,`ID`);

--
-- Indeksi tabele `wp_bazalinks`
--
ALTER TABLE `wp_bazalinks`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indeksi tabele `wp_bazaoptions`
--
ALTER TABLE `wp_bazaoptions`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indeksi tabele `wp_bazapostmeta`
--
ALTER TABLE `wp_bazapostmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indeksi tabele `wp_bazaposts`
--
ALTER TABLE `wp_bazaposts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indeksi tabele `wp_bazarole_scope_rs`
--
ALTER TABLE `wp_bazarole_scope_rs`
 ADD PRIMARY KEY (`requirement_id`), ADD KEY `role_scope` (`max_scope`,`topic`,`require_for`,`role_type`,`role_name`,`src_or_tx_name`,`obj_or_term_id`), ADD KEY `role_scope_assignments` (`max_scope`,`topic`,`require_for`,`role_type`,`role_name`,`src_or_tx_name`,`obj_or_term_id`,`inherited_from`,`requirement_id`);

--
-- Indeksi tabele `wp_bazaterms`
--
ALTER TABLE `wp_bazaterms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indeksi tabele `wp_bazaterm_relationships`
--
ALTER TABLE `wp_bazaterm_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeksi tabele `wp_bazaterm_taxonomy`
--
ALTER TABLE `wp_bazaterm_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeksi tabele `wp_bazauser2group_rs`
--
ALTER TABLE `wp_bazauser2group_rs`
 ADD PRIMARY KEY (`user_id`,`group_id`), ADD KEY `status_key` (`status`,`user_id`,`group_id`);

--
-- Indeksi tabele `wp_bazauser2role2object_rs`
--
ALTER TABLE `wp_bazauser2role2object_rs`
 ADD PRIMARY KEY (`assignment_id`), ADD KEY `role2obj` (`scope`,`assign_for`,`role_type`,`role_name`,`src_or_tx_name`,`obj_or_term_id`), ADD KEY `role2agent` (`assign_for`,`scope`,`role_type`,`role_name`,`group_id`,`user_id`), ADD KEY `role_rs` (`date_limited`,`role_type`,`role_name`,`scope`,`assign_for`,`src_or_tx_name`,`group_id`,`user_id`,`obj_or_term_id`), ADD KEY `role_assignments` (`role_name`,`role_type`,`scope`,`assign_for`,`src_or_tx_name`,`group_id`,`user_id`,`obj_or_term_id`,`inherited_from`,`assignment_id`);

--
-- Indeksi tabele `wp_bazausermeta`
--
ALTER TABLE `wp_bazausermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indeksi tabele `wp_bazausers`
--
ALTER TABLE `wp_bazausers`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Indeksi tabele `wp_bazawpfront_ure_options`
--
ALTER TABLE `wp_bazawpfront_ure_options`
 ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `dejavnost`
--
ALTER TABLE `dejavnost`
MODIFY `ID_dejavnosti` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT tabele `wp_bazacommentmeta`
--
ALTER TABLE `wp_bazacommentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `wp_bazacomments`
--
ALTER TABLE `wp_bazacomments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabele `wp_bazagroups_rs`
--
ALTER TABLE `wp_bazagroups_rs`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT tabele `wp_bazalinks`
--
ALTER TABLE `wp_bazalinks`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `wp_bazaoptions`
--
ALTER TABLE `wp_bazaoptions`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=373;
--
-- AUTO_INCREMENT tabele `wp_bazapostmeta`
--
ALTER TABLE `wp_bazapostmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT tabele `wp_bazaposts`
--
ALTER TABLE `wp_bazaposts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT tabele `wp_bazarole_scope_rs`
--
ALTER TABLE `wp_bazarole_scope_rs`
MODIFY `requirement_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabele `wp_bazaterms`
--
ALTER TABLE `wp_bazaterms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT tabele `wp_bazaterm_taxonomy`
--
ALTER TABLE `wp_bazaterm_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT tabele `wp_bazauser2role2object_rs`
--
ALTER TABLE `wp_bazauser2role2object_rs`
MODIFY `assignment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT tabele `wp_bazausermeta`
--
ALTER TABLE `wp_bazausermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT tabele `wp_bazausers`
--
ALTER TABLE `wp_bazausers`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT tabele `wp_bazawpfront_ure_options`
--
ALTER TABLE `wp_bazawpfront_ure_options`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `vpis`
--
ALTER TABLE `vpis`
ADD CONSTRAINT `vpis_ibfk_1` FOREIGN KEY (`ID_dejavnosti`) REFERENCES `dejavnost` (`ID_dejavnosti`),
ADD CONSTRAINT `vpis_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `wp_bazausers` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
