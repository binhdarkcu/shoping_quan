-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2015 at 06:33 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_quan`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_acfsrf`
--

CREATE TABLE IF NOT EXISTS `wp_acfsrf` (
  `acfsrf_id` bigint(20) NOT NULL,
  `field_key` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_id` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(4) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_cookie` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM AUTO_INCREMENT=762 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/shop_quan/source', 'yes'),
(2, 'home', 'http://localhost/shop_quan/source', 'yes'),
(3, 'blogname', 'Shopping Quan', 'yes'),
(4, 'blogdescription', 'Bán đồ bảo hộ', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'binhdarkcu@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '20', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:37:"acf-options-page/acf-options-page.php";i:1;s:29:"acf-range-field/acf-range.php";i:2;s:29:"acf-repeater/acf-repeater.php";i:3;s:33:"acf-starrating/acf-starrating.php";i:4;s:30:"advanced-custom-fields/acf.php";i:5;s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";i:6;s:36:"contact-form-7/wp-contact-form-7.php";i:7;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:8;s:27:"wp-pagenavi/wp-pagenavi.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '20', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:85:"C:\\xampp\\htdocs\\shop_quan\\source/wp-content/plugins/acf-starrating/acf-starrating.php";i:1;s:86:"C:\\xampp\\htdocs\\shop_quan\\source/wp-content/plugins/contact-form-7-style/cf7-style.php";i:2;s:0:"";}', 'no'),
(41, 'template', 'quan', 'yes'),
(42, 'stylesheet', 'quan', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31535', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '0', 'yes'),
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
(82, 'uninstall_plugins', 'a:1:{s:27:"wp-pagenavi/wp-pagenavi.php";s:14:"__return_false";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(401, '_options_copyright', 'field_55db34e3b359d', 'no'),
(97, 'cron', 'a:6:{i:1443205850;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1443208560;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1443237629;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1443249206;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1443280273;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, 'can_compress_scripts', '1', 'yes'),
(99, '_transient_random_seed', '9f9b0509f7a9dec743c471ee90f55619', 'yes'),
(100, 'nonce_key', '){Y2v_G2_2*VY3hamAW8-+]`{sqH1(k2:}gUwfqPj|.wn:4 #.M5W(G_(h[20TjR', 'yes'),
(101, 'nonce_salt', 'g{=}UQU)znmcMU/_<o_@:aW|H0ShS|(i!t9/:lMgo/=JW#cd~%y1=IZZ~Ce=yZb4', 'yes'),
(526, '_site_transient_timeout_browser_49b343d156d7c510a4af2e0cb26f1288', '1442852601', 'yes'),
(527, '_site_transient_browser_49b343d156d7c510a4af2e0cb26f1288', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"45.0.2454.85";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(107, 'auth_key', '/Jk<mOm=h7_n@l<@5Dn9>EWLQ4&0LFR]>pAi$X#UfG.WohJG/mnXYQQA^[c#+/Qa', 'yes'),
(108, 'auth_salt', 'lefR~Eh;I*AAC=4Cku/(%d)5&)y:mo%~RTkW(?~XUF~:e<]SC[)>PhDg&|!:L#^E', 'yes'),
(109, 'logged_in_key', 'F#L(fTj<cEZ 2qX#/%35RcMZxy>;*S5z^l_hXx=eE7E2e2zOK:wdkBf,PV&3$j.0', 'yes'),
(110, 'logged_in_salt', 'sItKGF2VIBi4*]2/4ezUFn4Wc/*DAwMqGSU]$Km<vU+w_d<EYQ$6F4mP;V8AW!|J', 'yes'),
(758, '_site_transient_timeout_theme_roots', '1443196263', 'yes'),
(759, '_site_transient_theme_roots', 'a:4:{s:4:"quan";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(318, '_site_transient_timeout_browser_6b009318863ea304e35202878ce73d1f', '1442067772', 'yes'),
(319, '_site_transient_browser_6b009318863ea304e35202878ce73d1f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.157";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(115, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1437547082;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(116, 'current_theme', 'Shop quan', 'yes'),
(117, 'theme_mods_quan', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"menu_top";i:2;}}', 'yes'),
(118, 'theme_switched', '', 'yes'),
(119, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(418, 'options_youtube', 'http://youtube.com/#', 'no'),
(743, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.2.5-partial-2.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.5-rollback-2.zip";}s:7:"current";s:5:"4.2.5";s:7:"version";s:5:"4.2.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:5:"4.2.2";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1443194437;s:15:"version_checked";s:5:"4.2.2";s:12:"translations";a:0:{}}', 'yes'),
(748, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1443230918', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(749, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Sep 2015 12:58:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 13 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Protect your WordPress site by hiding vital areas of your site, protecting access to important files, preventing brute-force login attempts, detecting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Google Analytics";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/googleanalytics/#post-11199";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 09 Jun 2009 22:09:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"11199@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:38:"Enables google analytics on all pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Kevin Sylvestre";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 25 Sep 2015 13:28:38 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Fri, 25 Sep 2015 13:33:37 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Fri, 25 Sep 2015 12:58:37 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130910210210";}', 'no'),
(706, '_transient_timeout_plugin_slugs', '1443284671', 'no'),
(707, '_transient_plugin_slugs', 'a:14:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:37:"acf-options-page/acf-options-page.php";i:2;s:29:"acf-range-field/acf-range.php";i:3;s:29:"acf-repeater/acf-repeater.php";i:4;s:33:"acf-starrating/acf-starrating.php";i:5;s:19:"akismet/akismet.php";i:6;s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";i:7;s:36:"contact-form-7/wp-contact-form-7.php";i:8;s:34:"contact-form-7-style/cf7-style.php";i:9;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:10;s:9:"hello.php";i:11;s:37:"tinymce-advanced/tinymce-advanced.php";i:12;s:31:"what-the-file/what-the-file.php";i:13;s:27:"wp-pagenavi/wp-pagenavi.php";}', 'no'),
(155, 'recently_activated', 'a:3:{s:37:"tinymce-advanced/tinymce-advanced.php";i:1443110761;s:31:"what-the-file/what-the-file.php";i:1442851260;s:34:"contact-form-7-style/cf7-style.php";i:1442680903;}', 'yes'),
(668, 'pagenavi_options', 'a:15:{s:10:"pages_text";s:0:"";s:12:"current_text";s:13:"%PAGE_NUMBER%";s:9:"page_text";s:13:"%PAGE_NUMBER%";s:10:"first_text";s:13:"« Về đâu";s:9:"last_text";s:14:"Về cuối »";s:9:"prev_text";s:2:"«";s:9:"next_text";s:2:"»";s:12:"dotleft_text";s:3:"...";s:13:"dotright_text";s:3:"...";s:9:"num_pages";i:5;s:23:"num_larger_page_numbers";i:3;s:28:"larger_page_numbers_multiple";i:10;s:11:"always_show";i:0;s:16:"use_pagenavi_css";i:1;s:5:"style";i:1;}', 'yes'),
(737, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1443230907', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(738, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Sep 2015 10:36:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:39:"http://wordpress.org/?v=4.4-alpha-34531";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.3.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2015/09/wordpress-4-3-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/news/2015/09/wordpress-4-3-1/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Sep 2015 15:22:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3914";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:439:"WordPress 4.3.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. This release addresses three issues, including two cross-site scripting vulnerabilities and a potential privilege escalation. WordPress versions 4.3 and earlier are vulnerable to a cross-site scripting vulnerability when processing shortcode tags (CVE-2015-5714). Reported by [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Samuel Sidler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4022:"<div class="storycontent">\n<p>WordPress 4.3.1 is now available. This is a<strong> security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>This release addresses three issues, including two cross-site scripting vulnerabilities and a potential privilege escalation.</p>\n<ul>\n<li>WordPress versions 4.3 and earlier are vulnerable to a cross-site scripting vulnerability when processing shortcode tags (CVE-2015-5714). Reported by Shahar Tal and Netanel Rubin of <a href="http://checkpoint.com/">Check Point</a>.</li>\n<li>A separate cross-site scripting vulnerability was found in the user list table. Reported by Ben Bidner of the WordPress security team.</li>\n<li>Finally, in certain cases, users without proper permissions could publish private posts and make them sticky (CVE-2015-5715). Reported by Shahar Tal and Netanel Rubin of <a href="http://checkpoint.com/">Check Point</a>.</li>\n</ul>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.3.1 also fixes twenty-six bugs. For more information, see the <a href="https://codex.wordpress.org/Version_4.3.1">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.3/?rev=34199&amp;stop_rev=33647">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.3.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.3.1.</p>\n</div>\n<p>Thanks to everyone who contributed to 4.3.1:</p>\n<p><a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/extendwings">Daisuke Takahashi</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/DrewAPicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/dustinbolton">dustinbolton</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/hauvong">hauvong</a>, <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jobst">jobst</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nikeo">nikeo</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/figureone">Paul Ryan</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/otto42">Samuel Wood</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/tmatsuur">tmatsuur</a>, <a href="https://profiles.wordpress.org/liljimmi">Tracy Levesque</a>, <a href="https://profiles.wordpress.org/umeshnevase">Umesh Nevase</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/welcher">welcher</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/09/wordpress-4-3-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 4.3 “Billie”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2015/08/billie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wordpress.org/news/2015/08/billie/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 18 Aug 2015 19:12:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3845";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:352:"Version 4.3 of WordPress, named &#8220;Billie&#8221; in honor of jazz singer Billie Holiday, is available for download or update in your WordPress dashboard. New features in 4.3 make it even easier to format your content and customize your site. Menus in the Customizer Create your menu, update it, and assign it, all while live-previewing in [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:22315:"<p style="margin: 0;height: 0"><img src="https://wordpress.org/news/files/2015/08/WordPress-4-3-billie-1024x574.png" alt="WordPress 4.3 - &quot;Billie&quot;" width="692" height="388" class="alignnone size-large wp-image-3896" style="height:0px;width: 0px;margin: 0" /></p>\n<p>Version 4.3 of WordPress, named &#8220;Billie&#8221; in honor of jazz singer <a href="https://en.wikipedia.org/wiki/Billie_Holiday">Billie Holiday</a>, is available for <a href="https://wordpress.org/download/">download</a> or update in your WordPress dashboard. New features in 4.3 make it even easier to format your content and customize your site.</p>\n<p><iframe width=''692'' height=''389'' src=''https://videopress.com/embed/T54Iy7Tw?hd=1'' frameborder=''0'' allowfullscreen></iframe><script src=''https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243''></script></p>\n<hr />\n<h2>Menus in the Customizer</h2>\n<div><img src="//s.w.org/images/core/4.3/menu-customizer.png" alt="" /></div>\n<p>Create your menu, update it, and assign it, all while live-previewing in the customizer. The streamlined customizer design provides a mobile-friendly and accessible interface. With every release, it becomes easier and faster to make your site just the way you want it.</p>\n<hr />\n<h2>Formatting Shortcuts</h2>\n<div style="margin-bottom: 0"><div style="width: 640px; " class="wp-video"><!--[if lt IE 9]><script>document.createElement(''video'');</script><![endif]-->\n<video class="wp-video-shortcode" id="video-3845-1" width="640" height="360" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="//s.w.org/images/core/4.3/formatting.mp4?_=1" /><source type="video/webm" src="//s.w.org/images/core/4.3/formatting.webm?_=1" /><source type="video/ogg" src="//s.w.org/images/core/4.3/formatting.ogv?_=1" /><a href="//s.w.org/images/core/4.3/formatting.mp4">//s.w.org/images/core/4.3/formatting.mp4</a></video></div></div>\n<p>Your writing flow just got faster with new formatting shortcuts in WordPress 4.3. Use asterisks to create lists and number signs to make a heading. No more breaking your flow; your text looks great with a <code>*</code> and a <code>#</code>.</p>\n<hr />\n<h2>Site Icons</h2>\n<p><img src="//s.w.org/images/core/4.3/site-icon-customizer.png" alt="" /><br />\n&nbsp;<br />\nSite icons represent your site in browser tabs, bookmark menus, and on the home screen of mobile devices. Add your unique site icon in the customizer; it will even stay in place when you switch themes. Make your whole site reflect your brand.</p>\n<hr />\n<h2>Better Passwords</h2>\n<p><img src="//s.w.org/images/core/4.3/better-passwords.png" alt="" /><br />\n&nbsp;<br />\nKeep your site more secure with WordPress’ improved approach to passwords. Instead of receiving passwords via email, you’ll get a password reset link. When you add new users to your site or edit a user profile, WordPress will automatically generate a secure password.</p>\n<hr />\n<h2>Other improvements</h2>\n<ul>\n<li><strong>A smoother admin experience</strong> &#8211; Refinements to the list view across the admin make your WordPress more accessible and easier to work with on any device.</li>\n<li><strong>Comments turned off on pages</strong> &#8211; All new pages that you create will have comments turned off. Keep discussions to your blog, right where they’re supposed to happen.</li>\n<li><strong>Customize your site quickly</strong> &#8211; Wherever you are on the front-end, you can click the customize link in the toolbar to swiftly make changes to your site.</li>\n</ul>\n<hr />\n<h2>The Team</h2>\n<p><a class="alignleft" href="https://profiles.wordpress.org/obenland"><img src="https://www.gravatar.com/avatar/2370ea5912750f4cb0f3c51ae1cbca55?d=mm&amp;s=180&amp;r=G" alt="Konstantin Obenland" width="80" height="80" /></a>This release was led by <a href="http://konstantin.obenland.it/">Konstantin Obenland</a>, with the help of these fine individuals. There are 246 contributors with props in this release. Pull up some Billie Holiday on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/mercime">@mercime</a>, <a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/adamkheckler">Adam Heckler</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bjorklund</a>, <a href="https://profiles.wordpress.org/akirk">Alex Kirk</a>, <a href="https://profiles.wordpress.org/viper007bond">Alex Mills (Viper007Bond)</a>, <a href="https://profiles.wordpress.org/tellyworth">Alex Shiels</a>, <a href="https://profiles.wordpress.org/deconf">Alin Marcu</a>, <a href="https://profiles.wordpress.org/andfinally">andfinally</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andg">Andrea Gandino</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/antpb">Anthony Burchell</a>, <a href="https://profiles.wordpress.org/anubisthejackle">anubisthejackle</a>, <a href="https://profiles.wordpress.org/aramzs">Aram Zucker-Scharff</a>, <a href="https://profiles.wordpress.org/arjunskumar">Arjun S Kumar</a>, <a href="https://profiles.wordpress.org/avnarun">avnarun</a>, <a href="https://profiles.wordpress.org/brad2dabone">Bad Feather</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="https://profiles.wordpress.org/binarykitten">BinaryKitten</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornjohansen">Bjorn Johansen</a>, <a href="https://profiles.wordpress.org/bolo1988">bolo1988</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/bramd">Bram Duvigneau</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/krogsgard">Brian Krogsgard</a>, <a href="https://profiles.wordpress.org/brianlayman">Brian Layman</a>, <a href="https://profiles.wordpress.org/icaleb">Caleb Burks</a>, <a href="https://profiles.wordpress.org/calevans">CalEvans</a>, <a href="https://profiles.wordpress.org/chasewiseman">Chase Wiseman</a>, <a href="https://profiles.wordpress.org/chipbennett">Chip Bennett</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/craig-ralston">Craig Ralston</a>, <a href="https://profiles.wordpress.org/extendwings">Daisuke Takahashi</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/redsweater">Daniel Jalkut (Red Sweater)</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Mte90 Scasciafratte</a>, <a href="https://profiles.wordpress.org/daniluk4000">daniluk4000</a>, <a href="https://profiles.wordpress.org/dmchale">Dave McHale</a>, <a href="https://profiles.wordpress.org/daveal">DaveAl</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/daxelrod">daxelrod</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/realloc">Dennis Ploetner</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">dipesh.kakadiya</a>, <a href="https://profiles.wordpress.org/dmsnell">dmsnell</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/dustinbolton">dustinbolton</a>, <a href="https://profiles.wordpress.org/kucrut">Dzikri Aziz</a>, <a href="https://profiles.wordpress.org/eclev91">eclev91</a>, <a href="https://profiles.wordpress.org/eligijus">eligijus</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/ebinnion">Eric Binnion</a>, <a href="https://profiles.wordpress.org/ericmann">Eric Mann</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/francoeurdavid">francoeurdavid</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/gabrielperezs">gabrielperezs</a>, <a href="https://profiles.wordpress.org/voldemortensen">Garth Mortensen</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/glennm">glennm</a>, <a href="https://profiles.wordpress.org/gtuk">gtuk</a>, <a href="https://profiles.wordpress.org/hailin">hailin</a>, <a href="https://profiles.wordpress.org/hauvong">hauvong</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrikakselsen">henrikakselsen</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/hrishiv90">Hrishikesh Vaipurkar</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/isaacchapman">isaacchapman</a>, <a href="https://profiles.wordpress.org/izem">izem</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jacklenox">Jack Lenox</a>, <a href="https://profiles.wordpress.org/jadpm">jadpm</a>, <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, <a href="https://profiles.wordpress.org/jamesgol">jamesgol</a>, <a href="https://profiles.wordpress.org/jancbeck">jancbeck</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jmichaelward">Jeremy Ward</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jipmoors">jipmoors</a>, <a href="https://profiles.wordpress.org/eltobiano">jjberry</a>, <a href="https://profiles.wordpress.org/jobst">Jobst Schmalenbach</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/jkudish">Joey Kudish</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/picard102">John Leschinski</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/maxxsnake">Josh Davis</a>, <a href="https://profiles.wordpress.org/jpyper">Jpyper</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/juliobox">Julio Potier</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/ungestaltbar">Kai</a>, <a href="https://profiles.wordpress.org/karinchristen">karinchristen</a>, <a href="https://profiles.wordpress.org/karpstrucking">karpstrucking</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/kevkoeh">Kevin Koehler</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/leogopal">Leo Gopal</a>, <a href="https://profiles.wordpress.org/loushou">loushou</a>, <a href="https://profiles.wordpress.org/lumaraf">Lumaraf</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/nofearinc">Mario Peshev</a>, <a href="https://profiles.wordpress.org/clorith">Marius (Clorith)</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/marsjaninzmarsa">marsjaninzmarsa</a>, <a href="https://profiles.wordpress.org/martinsachse">martinsachse</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/veraxus">Matt van Andel</a>, <a href="https://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/nikonratm">Michael</a>, <a href="https://profiles.wordpress.org/mdawaffe">Michael Adams (mdawaffe)</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michaelryanmcneill">michaelryanmcneill</a>, <a href="https://profiles.wordpress.org/mcguive7">Mickey Kay</a>, <a href="https://profiles.wordpress.org/mihai">mihai</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mnelson4">Mike Nelson</a>, <a href="https://profiles.wordpress.org/dh-shredder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinic</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mrutz">mrutz</a>, <a href="https://profiles.wordpress.org/nabil_kadimi">nabil_kadimi</a>, <a href="https://profiles.wordpress.org/Nao">Naoko Takano</a>, <a href="https://profiles.wordpress.org/nazmulhossainnihal">Nazmul Hossain Nihal</a>, <a href="https://profiles.wordpress.org/nicholas_io">nicholas_io</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nickmomrik">Nick Momrik</a>, <a href="https://profiles.wordpress.org/nikeo">nikeo</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/onnimonni">Onni Hakala</a>, <a href="https://profiles.wordpress.org/ozh">Ozh</a>, <a href="https://profiles.wordpress.org/pareshradadiya-1">Paresh Radadiya</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/djpaul">Paul Gibbs</a>, <a href="https://profiles.wordpress.org/figureone">Paul Ryan</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/gungeekatx">Pete Nelson</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/peterrknight">PeterRKnight</a>, <a href="https://profiles.wordpress.org/philiparthurmoore">Philip Arthur Moore</a>, <a href="https://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="https://profiles.wordpress.org/posykrat">posykrat</a>, <a href="https://profiles.wordpress.org/pragunbhutani">pragunbhutani</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/rarylson">rarylson</a>, <a href="https://profiles.wordpress.org/lamosty">Rastislav Lamos</a>, <a href="https://profiles.wordpress.org/rauchg">rauchg</a>, <a href="https://profiles.wordpress.org/ravinderk">Ravinder Kumar</a>, <a href="https://profiles.wordpress.org/rclations">RC Lations</a>, <a href="https://profiles.wordpress.org/greuben">Reuben Gunday</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/ritteshpatel">Ritesh Patel</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/rdall">Robert Dall</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/rommelxcastro">Rommel Castro</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, <a href="https://profiles.wordpress.org/rhurling">Rouven Hurling</a>, <a href="https://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="https://profiles.wordpress.org/rmarks">Ryan Marks</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ohryan">Ryan Neudorf</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/sagarjadhav">Sagar Jadhav</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/santagada">santagada</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/scruffian">scruffian</a>, <a href="https://profiles.wordpress.org/seanchayes">Sean Hayes</a>, <a href="https://profiles.wordpress.org/sebastiantiede">Sebastian</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shooper">Shawn Hooper</a>, <a href="https://profiles.wordpress.org/designsimply">Sheri Bigelow</a>, <a href="https://profiles.wordpress.org/simonwheatley">Simon Wheatley</a>, <a href="https://profiles.wordpress.org/siobhan">Siobhan</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stevegrunwell">Steve Grunwell</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stuartshields">stuartshields</a>, <a href="https://profiles.wordpress.org/sudar">Sudar</a>, <a href="https://profiles.wordpress.org/sunnyratilal">Sunny Ratilal</a>, <a href="https://profiles.wordpress.org/taka2">taka2</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/thorbrink">Thor Brink</a>, <a href="https://profiles.wordpress.org/creativeinfusion">Tim Smith</a>, <a href="https://profiles.wordpress.org/tlexcellent">tlexcellent</a>, <a href="https://profiles.wordpress.org/tmatsuur">tmatsuur</a>, <a href="https://profiles.wordpress.org/tobiasbg">TobiasBg</a>, <a href="https://profiles.wordpress.org/tomasm">Tomas Mackevicius</a>, <a href="https://profiles.wordpress.org/tomharrigan">TomHarrigan</a>, <a href="https://profiles.wordpress.org/toro_unit">Toro_Unit (Hiroshi Urabe)</a>, <a href="https://profiles.wordpress.org/toru">Toru Miki</a>, <a href="https://profiles.wordpress.org/liljimmi">Tracy (LilJimmi) Levesque</a>, <a href="https://profiles.wordpress.org/tryon">Tryon Eggleston</a>, <a href="https://profiles.wordpress.org/tywayne">Ty Carlson</a>, <a href="https://profiles.wordpress.org/desaiuditd">Udit Desai</a>, <a href="https://profiles.wordpress.org/umeshnevase">Umesh Nevase</a>, <a href="https://profiles.wordpress.org/vivekbhusal">vivekbhusal</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/willnorris">Will Norris</a>, <a href="https://profiles.wordpress.org/willgladstone">willgladstone</a>, <a href="https://profiles.wordpress.org/earnjam">William Earnhardt</a>, <a href="https://profiles.wordpress.org/willstedt">willstedt</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/ysalame">Yuri Salame</a>, <a href="https://profiles.wordpress.org/oxymoron">Zach Wills</a>, <a href="https://profiles.wordpress.org/katzwebdesign">Zack Katz</a>, and <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>.\n<p>&nbsp;</p>\n<p>Special thanks go to <a href="http://siobhanmckeown.com/">Siobhan McKeown</a> for producing the release video, <a href="http://hugobaeta.com/">Hugo Baeta</a> for the design, and <a href="http://jacklenox.com/">Jack Lenox</a> for the voice-over.</p>\n<p>Finally, thanks to all of the contributors who provided subtitles for the release video, which at last count had been translated into 30 languages!</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.4!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wordpress.org/news/2015/08/billie/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.2.4 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:92:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 04 Aug 2015 12:10:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3827";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:397:"WordPress 4.2.4 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. This release addresses six issues, including three cross-site scripting vulnerabilities and a potential SQL injection that could be used to compromise a site, which were discovered by Marc-Alexandre Montpas of Sucuri, Helen Hou-Sandí [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Samuel Sidler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2011:"<p>WordPress 4.2.4 is now available. This is a<strong> security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>This release addresses six issues, including three cross-site scripting vulnerabilities and a potential SQL injection that could be used to compromise a site, which were discovered by <a href="https://sucuri.net/">Marc-Alexandre Montpas</a> of Sucuri, <a href="http://helenhousandi.com/">Helen Hou-Sandí</a> of the WordPress security team, <a href="http://www.checkpoint.com/">Netanel Rubin</a> of Check Point, and <a href="https://hackerone.com/reactors08">Ivan Grigorov</a>. It also includes a fix for a potential timing side-channel attack, discovered by <a href="http://www.scrutinizer-ci.com/">Johannes Schmitt</a> of Scrutinizer, and prevents an attacker from locking a post from being edited, discovered by <a href="https://www.linkedin.com/in/symbiansymoh">Mohamed A. Baset</a>.</p>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.2.4 also fixes four bugs. For more information, see the <a href="https://codex.wordpress.org/Version_4.2.4">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.2?rev=33573&amp;stop_rev=33396">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.2.4</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.2.4.</p>\n<p><em>Already testing WordPress 4.3? The second release candidate is now available (<a href="https://wordpress.org/wordpress-4.3-RC2.zip">zip</a>) and it contains these fixes. For more on 4.3, see <a href="https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/">the RC 1 announcement post</a>.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wordpress.org/news/2015/08/wordpress-4-2-4-security-and-maintenance-release/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.3 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2015 23:50:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3817";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:340:"The release candidate for WordPress 4.3 is now available. We&#8217;ve made more than 100 changes since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.3 on Tuesday, August 18, but we [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2256:"<p>The release candidate for WordPress 4.3 is now available.</p>\n<p>We&#8217;ve made more than <a href="https://core.trac.wordpress.org/log/trunk?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33512&amp;stop_rev=33372&amp;limit=120">100 changes</a> since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.3 on <strong>Tuesday, August 18</strong>, but we need your help to get there.</p>\n<p>If you haven’t tested 4.3 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.3 RC1, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.3-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.3 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.3 before next week. If you find compatibility problems, we never want to break things, so please be sure to post to the support forums so we can figure those out before the final release.</p>\n<p>Be sure to <a href="https://make.wordpress.org/core/">follow along the core development blog</a>, where we&#8217;ll continue to post <a href="https://make.wordpress.org/core/tag/dev-notes+4-3/">notes for developers</a> for 4.3.</p>\n<p><em>Drei Monate Arbeit</em><br />\n<em>Endlich das Ziel vor Augen</em><br />\n<em>Bald hab ich Urlaub!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2015/07/wordpress-4-3-release-candidate/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.2.3 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2015/07/wordpress-4-2-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/news/2015/07/wordpress-4-2-3/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Jul 2015 11:21:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3807";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:380:"WordPress 4.2.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.2.2 and earlier are affected by a cross-site scripting vulnerability, which could allow users with the Contributor or Author role to compromise a site. This was initially reported by Jon Cave and [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gary Pendergast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2708:"<p>WordPress 4.2.3 is now available. This is a<strong> security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.2.2 and earlier are affected by a cross-site scripting vulnerability, which could allow users with the Contributor or Author role to compromise a site. This was initially reported by <a href="https://profiles.wordpress.org/duck_">Jon Cave</a> and fixed by <a href="http://www.miqrogroove.com/">Robert Chapin</a>, both of the WordPress security team, and later reported by <a href="http://klikki.fi/">Jouko Pynnönen</a>.</p>\n<p>We also fixed an issue where it was possible for a user with Subscriber permissions to create a draft through Quick Draft. Reported by Netanel Rubin from <a href="https://www.checkpoint.com/">Check Point Software Technologies</a>.</p>\n<p>Our thanks to those who have practiced <a href="https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/">responsible disclosure</a> of security issues.</p>\n<p>WordPress 4.2.3 also contains fixes for 20 bugs from 4.2. For more information, see the <a href="https://codex.wordpress.org/Version_4.2.3">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/4.2?rev=33382&amp;stop_rev=32430">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.2.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.2.3.</p>\n<p>Thanks to everyone who contributed to 4.2.3:</p>\n<p><a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chriscct7">Chris Christoff</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/gabrielperezs">Gabriel Pérez</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/mdawaffe">Mike Adams</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, and <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-2-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Jul 2015 21:55:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3796";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2212:"<p>WordPress 4.3 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta4.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/">Beta 3</a> blog posts. Some of the changes in Beta 4 include:</p>\n<ul>\n<li><span class="s1">Fixed several bugs and broken flows in the </span><span class="s1"><strong>publish box </strong></span><span class="s1">in the edit screen.</span></li>\n<li>Addressed a number of edge cases for word count in the <strong>editor</strong>.</li>\n<li><span class="s1"><strong>Site icons</strong> </span><span class="s1">can now be previewed within the customizer. The feature has been removed from general settings.</span></li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33369&amp;stop_rev=33289">more than 60 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a>.</p>\n<p><em>Few Tickets Remain</em><br />\n<em>Edge Cases Disappearing</em><br />\n<em>You Must Test Today</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-4/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Jul 2015 21:49:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3787";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2529:"<p>WordPress 4.3 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, check out the <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/">Beta 2</a> blog posts. Some of the changes in Beta 3 include:</p>\n<ul>\n<li>Performance improvements for <strong>Menus in the Customizer</strong>, as well as bug fixes and visual enhancements.</li>\n<li>Added <strong>Site Icon</strong> to the Customizer. The feature is now complete and requires lots of testing. Please help us ensure the site icon feature works well in both Settings and the Customizer.</li>\n<li>The improvements to <strong>Passwords</strong> have been added to the installation flow. When installing and setting up WordPress, a strong password will be suggested to site administrators. Please test and let us know if you encounter issues.</li>\n<li>Improved <strong>accessibility of comments and media list tables</strong>. If you use a screen reader, please let us know if you encounter any issues.</li>\n<li>Lots and lots of code documentation improvements.</li>\n<li><strong>Various other bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33286&amp;stop_rev=33141&amp;limit=150">more than 140 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a>.</p>\n<p><em>Want to test new things?</em><br />\n<em>Wonder how four three shapes up?</em><br />\n<em>Answer: beta three</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Jul 2015 22:04:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3769";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"WordPress 4.3 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2876:"<p>WordPress 4.3 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want &#8220;bleeding edge nightlies&#8221;). Or you can <a href="https://wordpress.org/wordpress-4.3-beta2.zip">download the beta here</a> (zip).</p>\n<p>For more information about what’s new in version 4.3, <a href="https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/">check out the Beta 1 blog post</a>. Some of the changes in Beta 2 include:</p>\n<ul>\n<li>Fixed an issue in beta 1 where an alert appeared when saving or publishing a new post/page for the first time.</li>\n<li><strong><strong>Customizer</strong></strong> improvements including enhanced accessibility, smoother menu creation and location assignment, and the ability to handle nameless menus. Please help us test menus in the Customizer to fix any remaining edge cases!</li>\n<li>More robust<strong> list tables</strong> with full content support on small screens and a fallback for the primary column for custom list tables. We&#8217;d love to know how these list tables, such as All Posts and Comments, work for you now on small screen devices.</li>\n<li>The <strong>Site Icon</strong> feature has been improved so that cropping is skipped if the image is the exact size (512px square) and the media modal now suggests a minimum icon size. Please let us know how the flow feels and if you encounter any glitches!</li>\n<li>The <strong>toolbar</strong> now has a direct link to the customizer, along with quick access to themes, widgets, and menus in the dashboard.</li>\n<li>We enabled <strong>utf8mb4 for MySQL</strong> extension users, which was previously unintentionally limited to MySQLi users. Please let us know if you run into any issues.</li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=33138&amp;stop_rev=33046">almost 100 changes</a> in the last week.</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.3&amp;group=component&amp;order=priority">everything we’ve fixed</a>.</p>\n<p><em>Edges polished up</em><br />\n<em>Features meliorated</em><br />\n<em>Beta Two: go test!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordCamps Update";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/news/2015/07/wordcamps-update/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/news/2015/07/wordcamps-update/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Jul 2015 16:13:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:6:"Events";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3758";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:311:"Last week saw the halfway point for 2015, yay! This seems like a good time to update you on WordCamp happenings in the first half of this year. There have been 39 WordCamps in 2015 so far, with events organized in 17 different countries and on 5 continents. More than 14,000 people have registered for [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Andrea Middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:9419:"<p>Last week saw the halfway point for 2015, yay! This seems like a good time to update you on WordCamp happenings in the first half of this year.</p>\n<p>There have been <a href="https://central.wordcamp.org/schedule/past-wordcamps/">39 WordCamps in 2015</a> so far, with events organized in 17 different countries and on 5 continents. More than 14,000 people have registered for WordCamp tickets so far this year, isn&#8217;t that amazing?</p>\n<p><a href="https://europe.wordcamp.org/2015/">WordCamp Europe</a> was held in Seville, Spain just a few weeks ago, with close to 1,000 registered participants and over 500 live stream participants. You can watch  <a href="http://wordpress.tv/2015/07/04/matt-mullenweg-keynote-qanda-wordcamp-europe-2015/">Matt Mullenweg’s keynote Q&amp;A</a> session from WordCamp Europe right now on WordPress.tv.</p>\n<p>WordPress.tv has published 537 videos so far in 2015 from WordCamps around the world. Some of the more popular 2015 WordCamp talks on WordPress.tv include <a href="http://wordpress.tv/2015/03/13/tammie-lister-theme-dont-be-my-everything/">Tammie Lister: Theme, Don’t Be My Everything </a>from WordCamp Maui, <a href="http://wordpress.tv/2015/04/17/jenny-munn-seo-for-2015-whats-in-whats-out-and-how-to-be-in-it-to-win-it-for-good/">Jenny Munn: SEO for 2015 – What’s In, What’s Out and How to Be In It to Win It (For Good)</a> from WordCamp Atlanta, <a href="http://wordpress.tv/2015/02/27/fabrice-ducarme-les-constructeurs-de-page-pour-wordpress/">Fabrice Ducarme: Les Constructeurs de Page pour WordPress</a> from WordCamp Paris, <a href="http://wordpress.tv/2015/06/02/ben-furfie-how-to-value-price-websites/">Ben Furfie: How to Value Price Websites</a> from WordCamp London, and <a href="http://wordpress.tv/2015/06/09/morten-rand-hendriksen-building-themes-from-scratch-using-underscores-_s/">Morten Rand-Hendriksen: Building Themes From Scratch Using Underscores (_S)</a> from WordCamp Seattle. Check them out!</p>\n<h3>Lots of great WordCamps are still to come</h3>\n<p><a href="http://ma.tt/2015/06/wordcamp-us-survey/">WordCamp US</a> is currently in pre-planning, in the process of deciding on a host city. The following cities have proposed themselves as a great place to host the first WordCamp US: Chattanooga, Chicago, Detroit, Orlando, Philadelphia, and Phoenix. It&#8217;s possible the first WordCamp US will be held in 2016 so we can organize the best first WordCamp US imaginable.</p>\n<p>At this time, there are 28 <a href="https://central.wordcamp.org/schedule/">WordCamps</a>, in 9 different countries, that have announced their dates for the rest of 2015. Twelve of these have tickets on sale:</p>\n<ul>\n<li><a href="https://columbus.wordcamp.org/2015/">WordCamp Columbus</a>, Columbus, Ohio: July 17-18</li>\n<li><a href="https://scranton.wordcamp.org/2015/">WordCamp Scranton</a>, Scranton, Pennsylvania: July 18</li>\n<li><a href="https://boston.wordcamp.org/2015/">WordCamp Boston</a>, Boston, Massachussetts: July 18-19</li>\n<li><a href="https://milwaukee.wordcamp.org/2015/">WordCamp Milwaukee</a>, Milwaukee, Wisconsin: July 24-26</li>\n<li><a href="https://asheville.wordcamp.org/2015/">WordCamp Asheville</a>, Asheville, North Carolina: July 24-26</li>\n<li><a href="https://kansai.wordcamp.org/2015/">WordCamp Kansai</a>, Kansai, Japan: July 25-26</li>\n<li><a href="https://fayetteville.wordcamp.org/2015/">WordCamp Fayetteville</a>, Fayetteville, Arkansas: July 31-August 2</li>\n<li><a href="https://brighton.buddycamp.org/2015/">BuddyCamp Brighton</a>,  Brighton, UK: August 8</li>\n<li><a href="https://vancouver.wordcamp.org/2015/">WordCamp Vancouver, BC,</a> Vancouver, BC, Canada: August 15-16</li>\n<li><a href="https://russia.wordcamp.org/2015/">WordCamp Russia</a>, Moscow, Russia: August 15</li>\n<li><a href="https://norrkoping.wordcamp.org/2015/">WordCamp Norrköping</a>, Norrköping, Sweden: August 28-29</li>\n<li><a href="https://croatia.wordcamp.org/2015/">WordCamp Croatia</a>, Rijeka, Croatia: September 5-6</li>\n<li><a href="https://krakow.wordcamp.org/2015/">WordCamp Krakow,</a>  Krakow, Poland: September 12-13</li>\n<li><a href="https://nyc.wordcamp.org/2015/">WordCamp NYC</a>, New York City, New York: October 30-November 1</li>\n</ul>\n<p>The other 16 events don’t have tickets on sale yet, but they’ve set their dates! Subscribe to the sites to find out when registration opens:</p>\n<ul>\n<li><a href="https://pune.wordcamp.org/2015/">WordCamp Pune</a>, Pune, India: September 6</li>\n<li><a href="https://capetown.wordcamp.org/2015/">WordCamp Cape Town</a>, Cape Town, South Africa: September 10-11</li>\n<li><a href="https://baltimore.wordcamp.org/2015/">WordCamp Baltimore</a>, Baltimore, Maryland: September 12</li>\n<li><a href="https://slc.wordcamp.org/2015/">WordCamp Salt Lake City</a>, Salt Lake City, Utah: September 12</li>\n<li><a href="https://lithuania.wordcamp.org/2015/">WordCamp Lithuania</a>, Vilnius, Lithuania: September 19</li>\n<li><a href="https://vegas.wordcamp.org/2015">WordCamp Vegas</a>, Las Vegas, Nevada: September 19-20</li>\n<li><a href="https://switzerland.wordcamp.org/2015/">WordCamp Switzerland</a>, Zurich, Switzerland: September 19-20</li>\n<li><a href="https://tampa.wordcamp.org/2015/">WordCamp Tampa</a>, Tampa, Florida: September 25-27</li>\n<li><a href="https://rhodeisland.wordcamp.org/2015/">WordCamp Rhode Island</a>,  Providence, Rhode Island: September 25-26</li>\n<li><a href="https://la.wordcamp.org/2015/">WordCamp Los Angeles</a>, Los Angeles, California: September 26-27</li>\n<li><a href="https://denmark.wordcamp.org/2015/">WordCamp Denmark,</a>  Copenhagen, Denmark: October 3-4</li>\n<li><a href="https://toronto.wordcamp.org/2015">WordCamp Toronto</a>, Toronto, Ontario, Canada: October 3-4</li>\n<li><a href="https://hamptonroads.wordcamp.org/2015/">WordCamp Hampton Roads, </a>  Virginia Beach, VA, USA: October 17</li>\n<li><a href="https://annarbor.wordcamp.org/2015">WordCamp Ann Arbor</a>, Ann Arbor, Michigan: October 24</li>\n<li><a href="https://portland.wordcamp.org/2015/">WordCamp Portland</a>,  Portland, OR: October 24-25</li>\n</ul>\n<p>On top of all those exciting community events, there are 26 WordCamps in pre-planning as they look for the right event space.  If you have a great idea for a free or cheap WordCamp venue in any of the below locations, get in touch with the organizers through the WordCamp sites:</p>\n<ul>\n<li><a href="https://dfw.wordcamp.org/2015/">WordCamp DFW</a>:  Dallas/Fort Worth, Texas</li>\n<li><a href="https://riodejaneiro.wordcamp.org/2015/">WordCamp Rio</a>: Rio de Janeiro, Brazil</li>\n<li><a href="https://saratoga.wordcamp.org/2015/">WordCamp Saratoga</a>:  Saratoga Springs, New York</li>\n<li><a href="https://sofia.wordcamp.org/2015">WordCamp Sofia</a>:  Sofia, Bulgaria</li>\n<li><a href="https://austin.wordcamp.org/2015/">WordCamp Austin</a>:  Austin, TX</li>\n<li><a href="https://ottawa.wordcamp.org/2015/">WordCamp Ottawa</a>:  Ottawa, Canada</li>\n<li><a href="https://charleston.wordcamp.org/2015/">WordCamp Charleston</a>:  Charleston, South Carolina</li>\n<li><a href="https://chicago.wordcamp.org/2015/">WordCamp Chicago</a>:  Chicago, Illinois</li>\n<li><a href="https://albuquerque.wordcamp.org/2015/">WordCamp Albuquerque</a>:  Albuquerque, New Mexico</li>\n<li><a href="https://prague.wordcamp.org/2015/">WordCamp Prague</a>:  Prague, Czech Republic</li>\n<li><a href="https://seoul.wordcamp.org/2014/">WordCamp Seoul: </a>Seoul, South Korea</li>\n<li><a href="https://louisville.wordcamp.org/2014/">WordCamp Louisville</a>: Louisville, Kentucky</li>\n<li><a href="https://omaha.wordcamp.org/2015/">WordCamp Omaha</a>:  Omaha, Nebraska</li>\n<li><a href="https://grandrapids.wordcamp.org/2015/">WordCamp Grand Rapids</a>:  Grand Rapids, Michigan</li>\n<li><a href="https://easttroy.wordcamp.org/2015/">WordCamp East Troy</a>:  East Troy, Wisconsin</li>\n<li><a href="https://palmademallorca.wordcamp.org/2015">WordCamp Mallorca</a>: Palma de Mallorca, Spain</li>\n<li><a href="https://edinburgh.wordcamp.org/2015/">WordCamp Edinburgh</a>:  Edinburgh, United Kingdom</li>\n<li><a href="https://orlando.wordcamp.org/2015/">WordCamp Orlando</a>:  Orlando, Florida</li>\n<li><a href="https://mexico.wordcamp.org/2015/">WordCamp Mexico City</a>:  Mexico City, Mexico</li>\n<li><a href="https://netherlands.wordcamp.org/2015/">WordCamp Netherlands</a>:  Utrecht, Netherlands</li>\n<li><a href="https://phoenix.wordcamp.org/2016/">WordCamp Phoenix</a>:  Phoenix, Arizona</li>\n<li><a href="https://saopaulo.wordcamp.org/2015/">WordCamp São Paulo</a>:  São Paulo, Brazil</li>\n<li><a href="https://manchester.wordcamp.org/2015/">WordCamp Manchester</a>:  Manchester, United Kingdom</li>\n<li><a href="https://tokyo.wordcamp.org/2015/">WordCamp Tokyo</a>:  Tokyo, Japan</li>\n<li><a href="https://lima.wordcamp.org/2015/">WordCamp Lima</a>:  Lima, Peru</li>\n<li><a href="https://seattle.wordcamp.org/2015-beginner/">WordCamp Seattle: Beginner</a>: Seattle, WA</li>\n</ul>\n<p>Don’t see your city on the list, but yearning for a local WordCamp? WordCamps are organized by local volunteers from the WordPress community, and we have a whole team of people to support new organizers setting up a first-time WordCamp. If you want to bring WordCamp to town, check out how you can <a href="https://central.wordcamp.org/become-an-organizer/">become a WordCamp organizer</a>!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/news/2015/07/wordcamps-update/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.3 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Jul 2015 01:30:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3738";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.3 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Konstantin Obenland";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4352:"<p>WordPress 4.3 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.3, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.3-beta1.zip">download the beta here</a> (zip).</p>\n<p>4.3 is due out next month, but to get there, we need your help testing what we&#8217;ve been working on:</p>\n<ul>\n<li><strong>Menus</strong> can now be managed with the <strong>Customizer</strong>, which allows you to live preview changes you’re making without changing your site for visitors until you’re ready. We&#8217;re especially interested to know if this helps streamline the process of setting up your site (<a href="https://core.trac.wordpress.org/ticket/32576">#32576</a>).</li>\n<li>Take control of another piece of your site with the <strong>Site Icon</strong> feature. You can now manage your site’s favicon and app icon from the admin area (<a href="https://core.trac.wordpress.org/ticket/16434">#16434</a>).</li>\n<li>We put a lot of work into <strong>Better Passwords</strong> throughout WordPress. Now, WordPress will limit the life time of password resets, no longer send passwords via email, and generate and suggest secure passwords for you. Try it out and let us know what you think! (<a href="https://core.trac.wordpress.org/ticket/32589">#32589</a>)</li>\n<li>We’ve also added <strong>Editor Improvements</strong>. Certain text patterns are automatically transformed as you type, including <code>*</code> and <code>-</code> transforming into unordered lists, <code>1.</code> and <code>1)</code> for ordered lists, <code>&gt;</code> for blockquotes and two to six number signs (<code>#</code>) for headings (<a href="https://core.trac.wordpress.org/ticket/31441">#31441</a>).</li>\n<li>We’ve improved the <strong>list view</strong> across the admin dashboard. Now, when you view your posts and pages <strong>on small screen devices</strong>, columns are not truncated and can be toggled into view (<a href="https://core.trac.wordpress.org/ticket/32395">#32395</a>).</li>\n</ul>\n<p><strong>Developers</strong>: There have been a few of changes for you to test as well, including:</p>\n<ul>\n<li><strong>Taxonomy Roadmap:</strong> Terms shared across multiple taxonomies will <a href="https://make.wordpress.org/core/2015/06/09/eliminating-shared-taxonomy-terms-in-wordpress-4-3/">now be split</a> into separate terms on update to 4.3. Please let us know if you hit any snags (<a href="https://core.trac.wordpress.org/ticket/30261">#30261</a>).</li>\n<li>Added <code>singular.php</code> to the template hierarchy as a fallback for <code>single.php</code> and <code>page.php</code>. (<a href="https://core.trac.wordpress.org/ticket/22314">#22314</a>).</li>\n<li>The old Distraction Free Writing code was removed (<a href="https://core.trac.wordpress.org/ticket/30949">#30949</a>).</li>\n<li>List tables now can (and often should) have a primary column defined. We’re working on a fallback for existing custom list tables but right now they likely have some breakage in the aforementioned responsive view (<a href="https://core.trac.wordpress.org/ticket/25408">#25408</a>).</li>\n</ul>\n<p>If you want a more in-depth view of what changes have made it into 4.3, <a href="https://make.wordpress.org/core/tag/4-3/">check out all 4.3-tagged posts</a> on the main development blog.</p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.3">everything we’ve fixed</a> so far.</p>\n<p>Happy testing!</p>\n<p><em>Site icons for all</em><br />\n<em>Live preview menu changes</em><br />\n<em>Four three beta now</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2015/07/wordpress-4-3-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 25 Sep 2015 13:28:27 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:10:"connection";s:5:"close";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Thu, 17 Sep 2015 10:36:36 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130910210210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(744, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1443194463;s:7:"checked";a:4:{s:4:"quan";s:3:"1.1";s:13:"twentyfifteen";s:3:"1.2";s:14:"twentyfourteen";s:3:"1.4";s:14:"twentythirteen";s:3:"1.5";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.3.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.5.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.6.zip";}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentyfifteen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.2";s:7:"updated";s:19:"2015-07-27 22:21:26";s:7:"package";s:74:"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.2/vi.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentyfourteen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.4";s:7:"updated";s:19:"2015-07-27 22:21:25";s:7:"package";s:75:"https://downloads.wordpress.org/translation/theme/twentyfourteen/1.4/vi.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentythirteen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.5";s:7:"updated";s:19:"2015-07-27 22:21:23";s:7:"package";s:75:"https://downloads.wordpress.org/translation/theme/twentythirteen/1.5/vi.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(745, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1443230916', 'no'),
(746, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1443230916', 'no'),
(747, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1443187716', 'no'),
(760, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1443198264;s:7:"checked";a:14:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.2";s:37:"acf-options-page/acf-options-page.php";s:5:"1.2.0";s:29:"acf-range-field/acf-range.php";s:5:"1.1.4";s:29:"acf-repeater/acf-repeater.php";s:5:"1.1.1";s:33:"acf-starrating/acf-starrating.php";s:5:"1.0.2";s:19:"akismet/akismet.php";s:5:"3.1.1";s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";s:7:"2.2.7.2";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.1.2";s:34:"contact-form-7-style/cf7-style.php";s:5:"2.2.8";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.1.2";s:9:"hello.php";s:3:"1.6";s:37:"tinymce-advanced/tinymce-advanced.php";s:5:"4.1.9";s:31:"what-the-file/what-the-file.php";s:5:"1.4.1";s:27:"wp-pagenavi/wp-pagenavi.php";s:4:"2.85";}s:8:"response";a:5:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.3";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:70:"http://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.3.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.4.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.3";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/contact-form-7.4.3.zip";}s:31:"what-the-file/what-the-file.php";O:8:"stdClass":6:{s:2:"id";s:5:"34186";s:4:"slug";s:13:"what-the-file";s:6:"plugin";s:31:"what-the-file/what-the-file.php";s:11:"new_version";s:5:"1.5.2";s:3:"url";s:44:"https://wordpress.org/plugins/what-the-file/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/what-the-file.1.5.2.zip";}s:27:"wp-pagenavi/wp-pagenavi.php";O:8:"stdClass":6:{s:2:"id";s:3:"363";s:4:"slug";s:11:"wp-pagenavi";s:6:"plugin";s:27:"wp-pagenavi/wp-pagenavi.php";s:11:"new_version";s:4:"2.88";s:3:"url";s:42:"https://wordpress.org/plugins/wp-pagenavi/";s:7:"package";s:58:"http://downloads.wordpress.org/plugin/wp-pagenavi.2.88.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:29:"acf-range-field/acf-range.php";O:8:"stdClass":6:{s:2:"id";s:5:"46552";s:4:"slug";s:15:"acf-range-field";s:6:"plugin";s:29:"acf-range-field/acf-range.php";s:11:"new_version";s:5:"1.1.4";s:3:"url";s:46:"https://wordpress.org/plugins/acf-range-field/";s:7:"package";s:63:"http://downloads.wordpress.org/plugin/acf-range-field.1.1.4.zip";}s:33:"acf-starrating/acf-starrating.php";O:8:"stdClass":6:{s:2:"id";s:5:"55702";s:4:"slug";s:14:"acf-starrating";s:6:"plugin";s:33:"acf-starrating/acf-starrating.php";s:11:"new_version";s:5:"1.0.2";s:3:"url";s:45:"https://wordpress.org/plugins/acf-starrating/";s:7:"package";s:56:"http://downloads.wordpress.org/plugin/acf-starrating.zip";}s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";O:8:"stdClass":6:{s:2:"id";s:3:"520";s:4:"slug";s:19:"all-in-one-seo-pack";s:6:"plugin";s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";s:11:"new_version";s:7:"2.2.7.2";s:3:"url";s:50:"https://wordpress.org/plugins/all-in-one-seo-pack/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/all-in-one-seo-pack.zip";}s:34:"contact-form-7-style/cf7-style.php";O:8:"stdClass":6:{s:2:"id";s:5:"45889";s:4:"slug";s:20:"contact-form-7-style";s:6:"plugin";s:34:"contact-form-7-style/cf7-style.php";s:11:"new_version";s:5:"2.2.8";s:3:"url";s:51:"https://wordpress.org/plugins/contact-form-7-style/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/contact-form-7-style.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":7:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:67:"http://downloads.wordpress.org/plugin/custom-post-type-ui.1.1.2.zip";s:14:"upgrade_notice";s:284:"Change export value to plural label for taxonomies.\nProperly select a post type or taxonomy after deleting an existing value.\nUpdated screenshots\nAdded target=&quot;_blank&quot; attribute to one of the inline help links for Menu position. Thanks @JulieKuehl\nFixed potential XSS issue.";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.2.5";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:64:"http://downloads.wordpress.org/plugin/tinymce-advanced.4.2.5.zip";}}}', 'yes'),
(693, '_site_transient_timeout_browser_ccc8a85d6f737c9e9b5525517abba1e2', '1443713388', 'yes'),
(694, '_site_transient_browser_ccc8a85d6f737c9e9b5525517abba1e2', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"45.0.2454.99";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(725, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(726, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(727, 'tadv_version', '4000', 'yes'),
(408, 'options_company_address', 'Số 29/6A Đường Trần Thái Tông, Phường 15, Quận Tân Bình, TP.HCM', 'no'),
(406, 'options_sale_email', '<a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a> | <a href="mailto:sales.vietanco@gmail.com">sales.vietanco@gmail.com</a>', 'no'),
(407, '_options_sale_email', 'field_55db352db35a0', 'no'),
(404, 'options_company_email', '<a href="mailto:info@vietansafety.com">info@vietansafety.com</a> | <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a>', 'no'),
(405, '_options_company_email', 'field_55db3504b359f', 'no'),
(402, 'options_hotline', '0934.424.525 | 0912.280.989 | 0917.280.989', 'no'),
(403, '_options_hotline', 'field_55db34edb359e', 'no'),
(396, 'options_header_logo', '91', 'no'),
(397, '_options_header_logo', 'field_55db34ab73511', 'no'),
(398, 'options_header_title', 'Công ty TNHH Trang Thiết Bị Bảo Hộ Lao Động Việt An', 'no'),
(399, '_options_header_title', 'field_55db34c4837c5', 'no'),
(400, 'options_copyright', 'Công ty TNHH Trang Thiết Bị Bảo Hộ Lao Động Việt An', 'no'),
(420, 'options_google_plus', 'https://plus.google.com/', 'no'),
(421, '_options_google_plus', 'field_55ec3a8667aa5', 'no'),
(419, '_options_youtube', 'field_55ec3a8167aa4', 'no'),
(528, 'cptui_post_types', 'a:3:{s:18:"three_product_home";a:23:{s:4:"name";s:18:"three_product_home";s:5:"label";s:19:"Bộ 3 sản phẩm";s:14:"singular_label";s:19:"Bộ 3 sản phẩm";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:19:"Bộ 3 sản phẩm";s:9:"all_items";s:10:"Tất cả";s:7:"add_new";s:11:"Thêm mới";s:12:"add_new_item";s:11:"Thêm mới";s:4:"edit";s:5:"Sửa";s:9:"edit_item";s:5:"Sửa";s:8:"new_item";s:11:"Thêm mới";s:4:"view";s:10:"Chi tiết";s:9:"view_item";s:10:"Chi tiết";s:12:"search_items";s:11:"Tìm kiếm";s:9:"not_found";s:18:"Không tìm thấy";s:18:"not_found_in_trash";s:18:"Không tìm thấy";s:6:"parent";s:3:"Cha";}s:15:"custom_supports";s:0:"";}s:14:"support_online";a:23:{s:4:"name";s:14:"support_online";s:5:"label";s:25:"Hỗ trợ trực tuyến";s:14:"singular_label";s:25:"Hỗ trợ trực tuyến";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:6:"editor";}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:25:"Hỗ trợ trực tuyến";s:9:"all_items";s:14:"Xem tất cả";s:7:"add_new";s:11:"Thêm mới";s:12:"add_new_item";s:11:"Thêm mới";s:4:"edit";s:5:"Sửa";s:9:"edit_item";s:5:"Sửa";s:8:"new_item";s:11:"Thêm mới";s:4:"view";s:10:"Chi tiết";s:9:"view_item";s:10:"Chi tiết";s:12:"search_items";s:11:"Tìm kiếm";s:9:"not_found";s:18:"Không tìm thấy";s:18:"not_found_in_trash";s:18:"Không tìm thấy";s:6:"parent";s:3:"Cha";}s:15:"custom_supports";s:0:"";}s:8:"hot_news";a:23:{s:4:"name";s:8:"hot_news";s:5:"label";s:9:"Tin tức";s:14:"singular_label";s:9:"Tin tức";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:9:"Tin tức";s:9:"all_items";s:10:"Tất cả";s:7:"add_new";s:11:"Thêm mới";s:12:"add_new_item";s:11:"Thêm mới";s:4:"edit";s:5:"Sửa";s:9:"edit_item";s:5:"Sửa";s:8:"new_item";s:11:"Thêm mới";s:4:"view";s:10:"Chi tiết";s:9:"view_item";s:10:"Chi tiết";s:12:"search_items";s:11:"Tìm kiếm";s:9:"not_found";s:18:"Không tìm thấy";s:18:"not_found_in_trash";s:18:"Không tìm thấy";s:6:"parent";s:3:"Cha";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(724, 'category_children', 'a:1:{i:8;a:2:{i:0;i:21;i:1;i:22;}}', 'yes'),
(739, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1443230907', 'no'),
(740, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1443187707', 'no'),
(414, 'options_facebook', 'http://facebook.com/#', 'no'),
(415, '_options_facebook', 'field_55ec3a6467aa2', 'no'),
(416, 'options_twitter', 'http://twiiter.com/#', 'no'),
(417, '_options_twitter', 'field_55ec3a7467aa3', 'no'),
(750, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1443230918', 'no'),
(751, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1443187718', 'no'),
(752, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1443230918', 'no'),
(753, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/09/wordpress-4-3-1/''>WordPress 4.3.1 Security and Maintenance Release</a> <span class="rss-date">Tháng Chín 15, 2015</span><div class="rssSummary">WordPress 4.3.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. This release addresses three issues, including two cross-site scripting vulnerabilities and a potential privilege escalation. WordPress versions 4.3 and earlier are vulnerable to a cross-site scripting vulnerability when processing shortcode tags (CVE-2015-5714). Reported by [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://poststatus.com/the-wordpress-rest-api-draft-podcast/''>Post Status: All about the WordPress REST API and its current state — Draft podcast</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/wpweekly-episode-207-going-postmatic''>WPTavern: WPWeekly Episode 207 – Going Postmatic</a></li><li><a class=''rsswidget'' href=''http://blog.akismet.com/2015/09/24/akismet-3-1-4-wordpress/''>Akismet: Akismet WordPress Plugin 3.1.4</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Gói Bổ Xung Tính Năng Phổ Biến:</span> <a href=''https://wordpress.org/plugins/siteorigin-panels/'' class=''dashboard-news-plugin-link''>Page Builder by SiteOrigin</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=101b07633a&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Page Builder by SiteOrigin''>Cài đặt</a>)</span></li></ul></div>', 'no'),
(409, '_options_company_address', 'field_55db3541b35a1', 'no'),
(410, 'options_phone_number', '(08) 38.151.501 | (08) 62.731.124 | (08) 62.970.118', 'no'),
(411, '_options_phone_number', 'field_55ec3491806c7', 'no'),
(676, 'rewrite_rules', 'a:149:{s:9:"slider/?$";s:26:"index.php?post_type=slider";s:39:"slider/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=slider&feed=$matches[1]";s:34:"slider/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=slider&feed=$matches[1]";s:26:"slider/page/([0-9]{1,})/?$";s:44:"index.php?post_type=slider&paged=$matches[1]";s:13:"advertises/?$";s:30:"index.php?post_type=advertises";s:43:"advertises/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=advertises&feed=$matches[1]";s:38:"advertises/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=advertises&feed=$matches[1]";s:30:"advertises/page/([0-9]{1,})/?$";s:48:"index.php?post_type=advertises&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:46:"three_product_home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"three_product_home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"three_product_home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"three_product_home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"three_product_home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"three_product_home/([^/]+)/trackback/?$";s:45:"index.php?three_product_home=$matches[1]&tb=1";s:47:"three_product_home/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?three_product_home=$matches[1]&paged=$matches[2]";s:54:"three_product_home/([^/]+)/comment-page-([0-9]{1,})/?$";s:58:"index.php?three_product_home=$matches[1]&cpage=$matches[2]";s:39:"three_product_home/([^/]+)(/[0-9]+)?/?$";s:57:"index.php?three_product_home=$matches[1]&page=$matches[2]";s:35:"three_product_home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"three_product_home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"three_product_home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"three_product_home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"three_product_home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"support_online/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"support_online/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"support_online/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"support_online/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"support_online/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"support_online/([^/]+)/trackback/?$";s:41:"index.php?support_online=$matches[1]&tb=1";s:43:"support_online/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?support_online=$matches[1]&paged=$matches[2]";s:50:"support_online/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?support_online=$matches[1]&cpage=$matches[2]";s:35:"support_online/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?support_online=$matches[1]&page=$matches[2]";s:31:"support_online/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"support_online/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"support_online/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"support_online/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"support_online/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"hot_news/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"hot_news/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"hot_news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"hot_news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"hot_news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"hot_news/([^/]+)/trackback/?$";s:35:"index.php?hot_news=$matches[1]&tb=1";s:37:"hot_news/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?hot_news=$matches[1]&paged=$matches[2]";s:44:"hot_news/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?hot_news=$matches[1]&cpage=$matches[2]";s:29:"hot_news/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?hot_news=$matches[1]&page=$matches[2]";s:25:"hot_news/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"hot_news/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"hot_news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"hot_news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"hot_news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"slider/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"slider/([^/]+)/trackback/?$";s:33:"index.php?slider=$matches[1]&tb=1";s:47:"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?slider=$matches[1]&feed=$matches[2]";s:42:"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?slider=$matches[1]&feed=$matches[2]";s:35:"slider/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&paged=$matches[2]";s:42:"slider/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&cpage=$matches[2]";s:27:"slider/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?slider=$matches[1]&page=$matches[2]";s:23:"slider/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"slider/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"advertises/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"advertises/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"advertises/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"advertises/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"advertises/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"advertises/([^/]+)/trackback/?$";s:37:"index.php?advertises=$matches[1]&tb=1";s:51:"advertises/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?advertises=$matches[1]&feed=$matches[2]";s:46:"advertises/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?advertises=$matches[1]&feed=$matches[2]";s:39:"advertises/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?advertises=$matches[1]&paged=$matches[2]";s:46:"advertises/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?advertises=$matches[1]&cpage=$matches[2]";s:31:"advertises/([^/]+)(/[0-9]+)?/?$";s:49:"index.php?advertises=$matches[1]&page=$matches[2]";s:27:"advertises/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"advertises/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"advertises/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"advertises/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"advertises/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(530, 'options_link_skype', 'Sales.vietan    - vietan.co', 'no'),
(531, '_options_link_skype', 'field_55f7012e70982', 'no'),
(544, '_site_transient_timeout_browser_41b1f5d96194b9595a33be3803159f08', '1443282583', 'yes'),
(545, '_site_transient_browser_41b1f5d96194b9595a33be3803159f08', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"45.0.2454.93";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(412, 'options_company_address_2', 'DB/10X4 Tổ 7 Ấp 4, Xã Vĩnh Lộc A, Huyện Bình Chánh, TP.HCM', 'no'),
(413, '_options_company_address_2', 'field_55ec34a5fb4be', 'no'),
(170, 'acf_version', '4.4.2', 'yes'),
(501, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.1.2";}', 'yes'),
(171, 'whatthefile-install-date', '2015-08-24', 'yes'),
(719, '_site_transient_timeout_available_translations', '1443120178', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(720, '_site_transient_available_translations', 'a:59:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:37";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 06:36:25";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-08 17:43:43";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-08 11:08:34";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-03 00:26:43";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-13 14:52:11";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 14:36:24";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.1.8/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-22 11:37:31";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-05 20:09:08";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-15 10:49:37";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-10 14:16:27";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.8/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-12 08:05:04";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-07 17:26:35";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:43:50";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-07 10:32:20";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-16 14:25:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-08 07:10:14";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-10 17:07:58";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-09 10:15:05";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.8/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-22 10:25:51";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-08 14:53:48";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-31 11:58:44";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 09:29:23";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 08:27:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-12 00:55:52";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-06 10:10:09";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-22 10:57:52";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-05 10:51:50";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-29 06:37:03";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(338, 'WPLANG', 'vi', 'yes'),
(504, 'style_category_children', 'a:0:{}', 'yes'),
(505, 'cf7_style_add_categories', '0', 'yes'),
(506, 'cf7_style_cookie', '', 'yes'),
(563, 'options_google_map', 'a:3:{s:7:"address";s:67:"29/26 Đường Trần Thái Tông, Phường 15, Quận Tân Bình";s:3:"lat";s:10:"10.8180239";s:3:"lng";s:18:"106.63403760000006";}', 'no'),
(564, '_options_google_map', 'field_55fd8e9f4a7ee', 'no'),
(756, '_transient_doing_cron', '1443194433.6355009078979492187500', 'yes'),
(757, 'auto_updater.lock', '1443194437', 'no'),
(761, 'aioseop_options', 'a:97:{s:12:"aiosp_donate";s:0:"";s:16:"aiosp_home_title";s:9:"Shop quan";s:22:"aiosp_home_description";s:30:"Chuyen ban quan ao va cac loai";s:20:"aiosp_togglekeywords";s:1:"0";s:19:"aiosp_home_keywords";s:0:"";s:26:"aiosp_use_static_home_info";s:1:"0";s:9:"aiosp_can";s:2:"on";s:30:"aiosp_no_paged_canonical_links";s:0:"";s:31:"aiosp_customize_canonical_links";s:0:"";s:22:"aiosp_can_set_protocol";s:4:"auto";s:20:"aiosp_rewrite_titles";s:1:"1";s:20:"aiosp_force_rewrites";s:1:"1";s:24:"aiosp_use_original_title";s:1:"0";s:16:"aiosp_cap_titles";s:2:"on";s:14:"aiosp_cap_cats";s:2:"on";s:28:"aiosp_home_page_title_format";s:12:"%page_title%";s:23:"aiosp_page_title_format";s:27:"%page_title% | %blog_title%";s:23:"aiosp_post_title_format";s:27:"%post_title% | %blog_title%";s:27:"aiosp_category_title_format";s:31:"%category_title% | %blog_title%";s:26:"aiosp_archive_title_format";s:30:"%archive_title% | %blog_title%";s:23:"aiosp_date_title_format";s:21:"%date% | %blog_title%";s:25:"aiosp_author_title_format";s:23:"%author% | %blog_title%";s:22:"aiosp_tag_title_format";s:20:"%tag% | %blog_title%";s:25:"aiosp_search_title_format";s:23:"%search% | %blog_title%";s:24:"aiosp_description_format";s:13:"%description%";s:22:"aiosp_404_title_format";s:33:"Nothing found for %request_words%";s:18:"aiosp_paged_format";s:14:" - Part %page%";s:17:"aiosp_enablecpost";s:2:"on";s:17:"aiosp_cpostactive";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:19:"aiosp_cpostadvanced";s:1:"0";s:18:"aiosp_cpostnoindex";s:0:"";s:19:"aiosp_cpostnofollow";s:0:"";s:16:"aiosp_cpostnoodp";s:0:"";s:17:"aiosp_cpostnoydir";s:0:"";s:17:"aiosp_cposttitles";s:0:"";s:21:"aiosp_posttypecolumns";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:15:"aiosp_admin_bar";s:2:"on";s:23:"aiosp_custom_menu_order";s:2:"on";s:19:"aiosp_google_verify";s:0:"";s:17:"aiosp_bing_verify";s:0:"";s:22:"aiosp_pinterest_verify";s:0:"";s:22:"aiosp_google_publisher";s:0:"";s:28:"aiosp_google_disable_profile";s:0:"";s:29:"aiosp_google_sitelinks_search";s:0:"";s:26:"aiosp_google_set_site_name";s:0:"";s:30:"aiosp_google_specify_site_name";s:0:"";s:28:"aiosp_google_author_advanced";s:1:"0";s:28:"aiosp_google_author_location";a:1:{i:0;s:3:"all";}s:29:"aiosp_google_enable_publisher";s:2:"on";s:30:"aiosp_google_specify_publisher";s:0:"";s:25:"aiosp_google_analytics_id";s:0:"";s:32:"aiosp_ga_use_universal_analytics";s:0:"";s:25:"aiosp_ga_advanced_options";s:2:"on";s:15:"aiosp_ga_domain";s:0:"";s:21:"aiosp_ga_multi_domain";s:0:"";s:21:"aiosp_ga_addl_domains";s:0:"";s:21:"aiosp_ga_anonymize_ip";s:0:"";s:28:"aiosp_ga_display_advertising";s:0:"";s:22:"aiosp_ga_exclude_users";s:0:"";s:29:"aiosp_ga_track_outbound_links";s:0:"";s:25:"aiosp_ga_link_attribution";s:0:"";s:27:"aiosp_ga_enhanced_ecommerce";s:0:"";s:20:"aiosp_use_categories";s:0:"";s:26:"aiosp_use_tags_as_keywords";s:2:"on";s:32:"aiosp_dynamic_postspage_keywords";s:2:"on";s:22:"aiosp_category_noindex";s:2:"on";s:26:"aiosp_archive_date_noindex";s:2:"on";s:28:"aiosp_archive_author_noindex";s:2:"on";s:18:"aiosp_tags_noindex";s:0:"";s:20:"aiosp_search_noindex";s:0:"";s:17:"aiosp_404_noindex";s:0:"";s:17:"aiosp_tax_noindex";s:0:"";s:23:"aiosp_paginated_noindex";s:0:"";s:24:"aiosp_paginated_nofollow";s:0:"";s:11:"aiosp_noodp";s:0:"";s:12:"aiosp_noydir";s:0:"";s:18:"aiosp_skip_excerpt";s:0:"";s:27:"aiosp_generate_descriptions";s:2:"on";s:20:"aiosp_run_shortcodes";s:0:"";s:33:"aiosp_hide_paginated_descriptions";s:0:"";s:32:"aiosp_dont_truncate_descriptions";s:0:"";s:19:"aiosp_schema_markup";s:2:"on";s:20:"aiosp_unprotect_meta";s:0:"";s:14:"aiosp_ex_pages";s:0:"";s:20:"aiosp_post_meta_tags";s:0:"";s:20:"aiosp_page_meta_tags";s:0:"";s:21:"aiosp_front_meta_tags";s:0:"";s:20:"aiosp_home_meta_tags";s:0:"";s:12:"aiosp_do_log";s:0:"";s:29:"aiosp_attachment_title_format";s:27:"%post_title% | %blog_title%";s:22:"aiosp_acf_title_format";s:27:"%post_title% | %blog_title%";s:37:"aiosp_wpcf7_contact_form_title_format";s:27:"%post_title% | %blog_title%";s:37:"aiosp_three_product_home_title_format";s:27:"%post_title% | %blog_title%";s:33:"aiosp_support_online_title_format";s:27:"%post_title% | %blog_title%";s:27:"aiosp_hot_news_title_format";s:27:"%post_title% | %blog_title%";s:25:"aiosp_slider_title_format";s:27:"%post_title% | %blog_title%";s:29:"aiosp_advertises_title_format";s:27:"%post_title% | %blog_title%";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_orders`
--

CREATE TABLE IF NOT EXISTS `wp_orders` (
  `id` int(4) NOT NULL,
  `id_product` int(4) NOT NULL,
  `amount` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` int(20) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_comment` varchar(255) NOT NULL,
  `price_total` int(255) NOT NULL,
  `buy_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `order_status` varchar(155) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_orders`
--

INSERT INTO `wp_orders` (`id`, `id_product`, `amount`, `price`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_comment`, `price_total`, `buy_date`, `delivery_date`, `order_status`) VALUES
(4, 66, 1, 200000, 'binh', 968891323, 'binhdarkcu@gmail.com', 'bbbbbbb', '                                                                                                                                                                                                                                                            ', 200000, '2015-09-06', '2015-09-06', '0'),
(5, 157, 0, 1310000, 'Lam Thanh Binh', 967891344, 'binhdarkcu@gmail.com', 'so 18, duong cau xeo, quan tan phu', 'Can giao trong vai ngay nua', 1310000, '2015-09-25', '2015-09-26', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=1214 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/shop_quan/source/'),
(70, 19, '_menu_item_menu_item_parent', '0'),
(69, 19, '_menu_item_type', 'post_type'),
(68, 17, '_edit_lock', '1441812745:1'),
(67, 17, '_edit_last', '1'),
(66, 15, '_edit_lock', '1441644192:1'),
(65, 15, '_edit_last', '1'),
(295, 48, '_edit_lock', '1443110610:1'),
(294, 48, 'hide_on_screen', ''),
(293, 48, 'layout', 'no_box'),
(292, 48, 'position', 'normal'),
(51, 13, 'field_55db34ab73511', 'a:10:{s:3:"key";s:19:"field_55db34ab73511";s:5:"label";s:4:"Logo";s:4:"name";s:11:"header_logo";s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(809, 48, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(297, 48, 'field_55e135deaec2c', 'a:18:{s:3:"key";s:19:"field_55e135deaec2c";s:5:"label";s:4:"Giá";s:4:"name";s:13:"product_price";s:4:"type";s:5:"range";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"slider_type";s:7:"default";s:5:"title";s:4:"VNĐ";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:8:"separate";s:1:"-";s:15:"default_value_1";s:1:"0";s:15:"default_value_2";s:3:"100";s:3:"min";s:1:"0";s:3:"max";s:8:"10000000";s:4:"step";s:5:"10000";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(50, 13, '_edit_last', '1'),
(695, 13, 'rule', 'a:5:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:11:"acf-options";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(53, 13, 'position', 'normal'),
(54, 13, 'layout', 'no_box'),
(55, 13, 'hide_on_screen', ''),
(56, 13, '_edit_lock', '1442250953:1'),
(57, 13, 'field_55db34c4837c5', 'a:14:{s:3:"key";s:19:"field_55db34c4837c5";s:5:"label";s:16:"Tiêu đề site";s:4:"name";s:12:"header_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(59, 13, 'field_55db34e3b359d', 'a:14:{s:3:"key";s:19:"field_55db34e3b359d";s:5:"label";s:9:"Copyright";s:4:"name";s:9:"copyright";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(60, 13, 'field_55db34edb359e', 'a:11:{s:3:"key";s:19:"field_55db34edb359e";s:5:"label";s:7:"Hotline";s:4:"name";s:7:"hotline";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(61, 13, 'field_55db3504b359f', 'a:11:{s:3:"key";s:19:"field_55db3504b359f";s:5:"label";s:5:"Email";s:4:"name";s:13:"company_email";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(650, 13, 'field_55ec3491806c7', 'a:11:{s:3:"key";s:19:"field_55ec3491806c7";s:5:"label";s:15:"Điện thoại";s:4:"name";s:12:"phone_number";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(62, 13, 'field_55db352db35a0', 'a:11:{s:3:"key";s:19:"field_55db352db35a0";s:5:"label";s:10:"Sale Email";s:4:"name";s:10:"sale_email";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(63, 13, 'field_55db3541b35a1', 'a:11:{s:3:"key";s:19:"field_55db3541b35a1";s:5:"label";s:12:"Địa chỉ";s:4:"name";s:15:"company_address";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(71, 19, '_menu_item_object_id', '17'),
(72, 19, '_menu_item_object', 'page'),
(73, 19, '_menu_item_target', ''),
(74, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 19, '_menu_item_xfn', ''),
(76, 19, '_menu_item_url', ''),
(78, 20, '_menu_item_type', 'post_type'),
(79, 20, '_menu_item_menu_item_parent', '0'),
(80, 20, '_menu_item_object_id', '15'),
(81, 20, '_menu_item_object', 'page'),
(82, 20, '_menu_item_target', ''),
(83, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 20, '_menu_item_xfn', ''),
(85, 20, '_menu_item_url', ''),
(290, 48, 'field_55e135837d524', 'a:13:{s:3:"key";s:19:"field_55e135837d524";s:5:"label";s:14:"Hình mô tả";s:4:"name";s:17:"description_image";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:1:{i:0;a:12:{s:3:"key";s:19:"field_55e1374649059";s:5:"label";s:14:"Hình mô tả";s:4:"name";s:18:"product_images_sub";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(289, 48, '_edit_last', '1'),
(96, 22, '_edit_last', '1'),
(97, 22, '_edit_lock', '1440431417:1'),
(98, 24, '_edit_last', '1'),
(99, 24, '_edit_lock', '1440431428:1'),
(100, 26, '_menu_item_type', 'post_type'),
(101, 26, '_menu_item_menu_item_parent', '0'),
(102, 26, '_menu_item_object_id', '24'),
(103, 26, '_menu_item_object', 'page'),
(104, 26, '_menu_item_target', ''),
(105, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 26, '_menu_item_xfn', ''),
(107, 26, '_menu_item_url', ''),
(118, 29, '_menu_item_type', 'taxonomy'),
(109, 27, '_menu_item_type', 'post_type'),
(110, 27, '_menu_item_menu_item_parent', '0'),
(111, 27, '_menu_item_object_id', '22'),
(112, 27, '_menu_item_object', 'page'),
(113, 27, '_menu_item_target', ''),
(114, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 27, '_menu_item_xfn', ''),
(116, 27, '_menu_item_url', ''),
(119, 29, '_menu_item_menu_item_parent', '19'),
(120, 29, '_menu_item_object_id', '13'),
(121, 29, '_menu_item_object', 'category'),
(122, 29, '_menu_item_target', ''),
(123, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 29, '_menu_item_xfn', ''),
(125, 29, '_menu_item_url', ''),
(127, 30, '_menu_item_type', 'taxonomy'),
(128, 30, '_menu_item_menu_item_parent', '19'),
(129, 30, '_menu_item_object_id', '16'),
(130, 30, '_menu_item_object', 'category'),
(131, 30, '_menu_item_target', ''),
(132, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 30, '_menu_item_xfn', ''),
(134, 30, '_menu_item_url', ''),
(136, 31, '_menu_item_type', 'taxonomy'),
(137, 31, '_menu_item_menu_item_parent', '19'),
(138, 31, '_menu_item_object_id', '8'),
(139, 31, '_menu_item_object', 'category'),
(140, 31, '_menu_item_target', ''),
(141, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 31, '_menu_item_xfn', ''),
(143, 31, '_menu_item_url', ''),
(145, 32, '_menu_item_type', 'taxonomy'),
(146, 32, '_menu_item_menu_item_parent', '19'),
(147, 32, '_menu_item_object_id', '5'),
(148, 32, '_menu_item_object', 'category'),
(149, 32, '_menu_item_target', ''),
(150, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 32, '_menu_item_xfn', ''),
(152, 32, '_menu_item_url', ''),
(154, 33, '_menu_item_type', 'taxonomy'),
(155, 33, '_menu_item_menu_item_parent', '19'),
(156, 33, '_menu_item_object_id', '4'),
(157, 33, '_menu_item_object', 'category'),
(158, 33, '_menu_item_target', ''),
(159, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(160, 33, '_menu_item_xfn', ''),
(161, 33, '_menu_item_url', ''),
(163, 34, '_menu_item_type', 'taxonomy'),
(164, 34, '_menu_item_menu_item_parent', '19'),
(165, 34, '_menu_item_object_id', '7'),
(166, 34, '_menu_item_object', 'category'),
(167, 34, '_menu_item_target', ''),
(168, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(169, 34, '_menu_item_xfn', ''),
(170, 34, '_menu_item_url', ''),
(172, 35, '_menu_item_type', 'taxonomy'),
(173, 35, '_menu_item_menu_item_parent', '19'),
(174, 35, '_menu_item_object_id', '6'),
(175, 35, '_menu_item_object', 'category'),
(176, 35, '_menu_item_target', ''),
(177, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(178, 35, '_menu_item_xfn', ''),
(179, 35, '_menu_item_url', ''),
(181, 36, '_menu_item_type', 'taxonomy'),
(182, 36, '_menu_item_menu_item_parent', '19'),
(183, 36, '_menu_item_object_id', '9'),
(184, 36, '_menu_item_object', 'category'),
(185, 36, '_menu_item_target', ''),
(186, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(187, 36, '_menu_item_xfn', ''),
(188, 36, '_menu_item_url', ''),
(190, 37, '_menu_item_type', 'taxonomy'),
(191, 37, '_menu_item_menu_item_parent', '19'),
(192, 37, '_menu_item_object_id', '10'),
(193, 37, '_menu_item_object', 'category'),
(194, 37, '_menu_item_target', ''),
(195, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(196, 37, '_menu_item_xfn', ''),
(197, 37, '_menu_item_url', ''),
(199, 38, '_menu_item_type', 'taxonomy'),
(200, 38, '_menu_item_menu_item_parent', '19'),
(201, 38, '_menu_item_object_id', '3'),
(202, 38, '_menu_item_object', 'category'),
(203, 38, '_menu_item_target', ''),
(204, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(205, 38, '_menu_item_xfn', ''),
(206, 38, '_menu_item_url', ''),
(208, 39, '_menu_item_type', 'taxonomy'),
(209, 39, '_menu_item_menu_item_parent', '19'),
(210, 39, '_menu_item_object_id', '20'),
(211, 39, '_menu_item_object', 'category'),
(212, 39, '_menu_item_target', ''),
(213, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(214, 39, '_menu_item_xfn', ''),
(215, 39, '_menu_item_url', ''),
(217, 40, '_menu_item_type', 'taxonomy'),
(218, 40, '_menu_item_menu_item_parent', '19'),
(219, 40, '_menu_item_object_id', '19'),
(220, 40, '_menu_item_object', 'category'),
(221, 40, '_menu_item_target', ''),
(222, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(223, 40, '_menu_item_xfn', ''),
(224, 40, '_menu_item_url', ''),
(301, 48, 'field_55e137142e2dc', 'a:12:{s:3:"key";s:19:"field_55e137142e2dc";s:5:"label";s:11:"Đánh giá";s:4:"name";s:12:"star_product";s:4:"type";s:10:"starrating";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"number_stars";s:1:"5";s:12:"voting_rules";s:10:"everyoneip";s:6:"revote";s:5:"never";s:6:"status";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(226, 41, '_menu_item_type', 'taxonomy'),
(227, 41, '_menu_item_menu_item_parent', '19'),
(228, 41, '_menu_item_object_id', '14'),
(229, 41, '_menu_item_object', 'category'),
(230, 41, '_menu_item_target', ''),
(231, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(232, 41, '_menu_item_xfn', ''),
(233, 41, '_menu_item_url', ''),
(235, 42, '_menu_item_type', 'taxonomy'),
(236, 42, '_menu_item_menu_item_parent', '19'),
(237, 42, '_menu_item_object_id', '18'),
(238, 42, '_menu_item_object', 'category'),
(239, 42, '_menu_item_target', ''),
(240, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(241, 42, '_menu_item_xfn', ''),
(242, 42, '_menu_item_url', ''),
(244, 43, '_menu_item_type', 'taxonomy'),
(245, 43, '_menu_item_menu_item_parent', '19'),
(246, 43, '_menu_item_object_id', '15'),
(247, 43, '_menu_item_object', 'category'),
(248, 43, '_menu_item_target', ''),
(249, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(250, 43, '_menu_item_xfn', ''),
(251, 43, '_menu_item_url', ''),
(253, 44, '_menu_item_type', 'taxonomy'),
(254, 44, '_menu_item_menu_item_parent', '19'),
(255, 44, '_menu_item_object_id', '11'),
(256, 44, '_menu_item_object', 'category'),
(257, 44, '_menu_item_target', ''),
(258, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(259, 44, '_menu_item_xfn', ''),
(260, 44, '_menu_item_url', ''),
(262, 45, '_menu_item_type', 'taxonomy'),
(263, 45, '_menu_item_menu_item_parent', '19'),
(264, 45, '_menu_item_object_id', '12'),
(265, 45, '_menu_item_object', 'category'),
(266, 45, '_menu_item_target', ''),
(267, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(268, 45, '_menu_item_xfn', ''),
(269, 45, '_menu_item_url', ''),
(1121, 160, '_new_product_home', 'field_55e1c3014f6be'),
(1120, 160, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1119, 160, '_sale_product', 'field_55ec0a67e8f59'),
(1118, 160, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(280, 47, '_menu_item_type', 'taxonomy'),
(281, 47, '_menu_item_menu_item_parent', '19'),
(282, 47, '_menu_item_object_id', '17'),
(283, 47, '_menu_item_object', 'category'),
(284, 47, '_menu_item_target', ''),
(285, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(286, 47, '_menu_item_xfn', ''),
(287, 47, '_menu_item_url', ''),
(304, 51, '_edit_last', '1'),
(305, 51, '_edit_lock', '1440823995:1'),
(306, 52, '_wp_attached_file', '2015/08/slide01-w250.png'),
(307, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:624;s:6:"height";i:250;s:4:"file";s:24:"2015/08/slide01-w250.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"slide01-w250-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"slide01-w250-300x120.png";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(321, 51, 'image_for_slider', '52'),
(309, 53, '_edit_last', '1'),
(310, 53, '_edit_lock', '1440857249:1'),
(311, 54, '_wp_attached_file', '2015/08/slide02-w250.png'),
(312, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:624;s:6:"height";i:250;s:4:"file";s:24:"2015/08/slide02-w250.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"slide02-w250-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"slide02-w250-300x120.png";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(324, 53, 'image_for_slider', '54'),
(314, 55, '_edit_last', '1'),
(315, 55, 'field_55e13b1914d4d', 'a:11:{s:3:"key";s:19:"field_55e13b1914d4d";s:5:"label";s:6:"Images";s:4:"name";s:16:"image_for_slider";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(323, 55, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"slider";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(317, 55, 'position', 'normal'),
(318, 55, 'layout', 'no_box'),
(319, 55, 'hide_on_screen', ''),
(320, 55, '_edit_lock', '1440861656:1'),
(322, 51, '_image_for_slider', 'field_55e13b1914d4d'),
(325, 53, '_image_for_slider', 'field_55e13b1914d4d'),
(326, 57, '_edit_last', '1'),
(327, 57, '_edit_lock', '1442251339:1'),
(328, 58, '_wp_attached_file', '2015/08/o_s___mi_ki____534cbc7e5df6c.jpg'),
(329, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:385;s:6:"height";i:500;s:4:"file";s:40:"2015/08/o_s___mi_ki____534cbc7e5df6c.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"o_s___mi_ki____534cbc7e5df6c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"o_s___mi_ki____534cbc7e5df6c-231x300.jpg";s:5:"width";i:231;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(330, 57, '_thumbnail_id', '58'),
(354, 60, '_edit_lock', '1442251105:1'),
(353, 60, '_edit_last', '1'),
(333, 59, 'product_price', '2014650'),
(334, 59, '_product_price', 'field_55e135deaec2c'),
(335, 59, 'description_image_0_product_images_sub', '58'),
(336, 59, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(337, 59, 'description_image_1_product_images_sub', '58'),
(338, 59, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(339, 59, 'description_image', '2'),
(340, 59, '_description_image', 'field_55e135837d524'),
(341, 59, 'product_description', ''),
(342, 59, '_product_description', 'field_55e137142e2dc'),
(343, 57, 'product_price', '170000'),
(344, 57, '_product_price', 'field_55e135deaec2c'),
(345, 57, 'description_image_0_product_images_sub', '58'),
(346, 57, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(347, 57, 'description_image_1_product_images_sub', '58'),
(348, 57, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(349, 57, 'description_image', '2'),
(350, 57, '_description_image', 'field_55e135837d524'),
(351, 57, 'product_description', ''),
(352, 57, '_product_description', 'field_55e137142e2dc'),
(357, 61, 'product_price', '1523020'),
(358, 61, '_product_price', 'field_55e135deaec2c'),
(359, 61, 'description_image', '0'),
(360, 61, '_description_image', 'field_55e135837d524'),
(361, 61, 'product_description', ''),
(362, 61, '_product_description', 'field_55e137142e2dc'),
(363, 60, 'product_price', '190000'),
(364, 60, '_product_price', 'field_55e135deaec2c'),
(365, 60, 'description_image', '2'),
(366, 60, '_description_image', 'field_55e135837d524'),
(367, 60, 'product_description', ''),
(368, 60, '_product_description', 'field_55e137142e2dc'),
(373, 63, 'field_55e1c3014f6be', 'a:11:{s:3:"key";s:19:"field_55e1c3014f6be";s:5:"label";s:18:"Sản phẩm mới";s:4:"name";s:16:"new_product_home";s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:1:{s:16:"new_display_home";s:24:"Hiển thị trang chủ";}s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55e1c45a92736";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(372, 63, '_edit_last', '1'),
(467, 63, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(375, 63, 'position', 'normal'),
(376, 63, 'layout', 'no_box'),
(377, 63, 'hide_on_screen', ''),
(378, 63, '_edit_lock', '1442250898:1'),
(381, 63, 'field_55e1c45a92736', 'a:11:{s:3:"key";s:19:"field_55e1c45a92736";s:5:"label";s:25:"Sản phẩm nổi trội";s:4:"name";s:17:"spot_product_home";s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:1:{s:17:"spot_product_home";s:24:"Hiển thị trang chủ";}s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55e1c3014f6be";s:8:"operator";s:2:"==";s:5:"value";s:16:"new_display_home";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(420, 66, '_edit_lock', '1442851140:1'),
(385, 64, 'new_product_home', 'a:1:{i:0;s:26:"1:Hiển thị trang chủ";}'),
(386, 64, '_new_product_home', 'field_55e1c3014f6be'),
(387, 64, 'spot_product_home', 'a:1:{i:0;s:27:"2: Hiển thị trang chủ";}'),
(388, 64, '_spot_product_home', 'field_55e1c45a92736'),
(389, 64, 'product_price', '1300000'),
(390, 64, '_product_price', 'field_55e135deaec2c'),
(391, 64, 'description_image', '0'),
(392, 64, '_description_image', 'field_55e135837d524'),
(393, 64, 'product_description', ''),
(394, 64, '_product_description', 'field_55e137142e2dc'),
(395, 60, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(396, 60, '_new_product_home', 'field_55e1c3014f6be'),
(397, 60, 'spot_product_home', ''),
(398, 60, '_spot_product_home', 'field_55e1c45a92736'),
(419, 66, '_edit_last', '1'),
(401, 65, 'new_product_home', 'a:1:{i:0;s:26:"1:Hiển thị trang chủ";}'),
(402, 65, '_new_product_home', 'field_55e1c3014f6be'),
(403, 65, 'spot_product_home', ''),
(404, 65, '_spot_product_home', 'field_55e1c45a92736'),
(405, 65, 'product_price', '2014650'),
(406, 65, '_product_price', 'field_55e135deaec2c'),
(407, 65, 'description_image_0_product_images_sub', '58'),
(408, 65, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(409, 65, 'description_image_1_product_images_sub', '58'),
(410, 65, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(411, 65, 'description_image', '2'),
(412, 65, '_description_image', 'field_55e135837d524'),
(413, 65, 'product_description', ''),
(414, 65, '_product_description', 'field_55e137142e2dc'),
(415, 57, 'new_product_home', ''),
(416, 57, '_new_product_home', 'field_55e1c3014f6be'),
(417, 57, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(418, 57, '_spot_product_home', 'field_55e1c45a92736'),
(421, 67, '_wp_attached_file', '2015/08/o_s___mi_ki____534cba9416d49.jpg'),
(422, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:357;s:6:"height";i:500;s:4:"file";s:40:"2015/08/o_s___mi_ki____534cba9416d49.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"o_s___mi_ki____534cba9416d49-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"o_s___mi_ki____534cba9416d49-214x300.jpg";s:5:"width";i:214;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(423, 66, '_thumbnail_id', '67'),
(811, 131, '_wp_attached_file', '2015/09/c121d197da6300dc2a736a3f4314da88.jpeg'),
(426, 68, 'new_product_home', 'a:1:{i:0;s:26:"1:Hiển thị trang chủ";}'),
(427, 68, '_new_product_home', 'field_55e1c3014f6be'),
(428, 68, 'spot_product_home', 'a:1:{i:0;s:27:"2: Hiển thị trang chủ";}'),
(429, 68, '_spot_product_home', 'field_55e1c45a92736'),
(430, 68, 'product_price', '1350000'),
(431, 68, '_product_price', 'field_55e135deaec2c'),
(432, 68, 'description_image_0_product_images_sub', '67'),
(433, 68, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(434, 68, 'description_image', '1'),
(435, 68, '_description_image', 'field_55e135837d524'),
(436, 68, 'product_description', ''),
(437, 68, '_product_description', 'field_55e137142e2dc'),
(438, 66, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(439, 66, '_new_product_home', 'field_55e1c3014f6be'),
(440, 66, 'spot_product_home', ''),
(521, 66, 'description_image_1_product_images_sub', '72'),
(441, 66, '_spot_product_home', 'field_55e1c45a92736'),
(442, 66, 'product_price', '200000'),
(443, 66, '_product_price', 'field_55e135deaec2c'),
(444, 66, 'description_image_0_product_images_sub', '67'),
(445, 66, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(446, 66, 'description_image', '2'),
(447, 66, '_description_image', 'field_55e135837d524'),
(448, 66, 'product_description', ''),
(449, 66, '_product_description', 'field_55e137142e2dc'),
(455, 70, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(456, 70, '_new_product_home', 'field_55e1c3014f6be'),
(457, 70, 'spot_product_home', 'a:1:{i:0;s:27:"2: Hiển thị trang chủ";}'),
(458, 70, '_spot_product_home', 'field_55e1c45a92736'),
(459, 70, 'product_price', '1350000'),
(460, 70, '_product_price', 'field_55e135deaec2c'),
(461, 70, 'description_image_0_product_images_sub', '67'),
(462, 70, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(463, 70, 'description_image', '1'),
(464, 70, '_description_image', 'field_55e135837d524'),
(465, 70, 'product_description', ''),
(466, 70, '_product_description', 'field_55e137142e2dc'),
(480, 72, '_wp_attached_file', '2015/08/o_s___mi_ki____534cbc7e5df6c1.jpg'),
(470, 71, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(471, 71, '_new_product_home', 'field_55e1c3014f6be'),
(472, 71, 'spot_product_home', ''),
(473, 71, '_spot_product_home', 'field_55e1c45a92736'),
(474, 71, 'product_price', '1300000'),
(475, 71, '_product_price', 'field_55e135deaec2c'),
(476, 71, 'description_image', '0'),
(477, 71, '_description_image', 'field_55e135837d524'),
(478, 71, 'product_description', ''),
(479, 71, '_product_description', 'field_55e137142e2dc'),
(481, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:385;s:6:"height";i:500;s:4:"file";s:41:"2015/08/o_s___mi_ki____534cbc7e5df6c1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"o_s___mi_ki____534cbc7e5df6c1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"o_s___mi_ki____534cbc7e5df6c1-231x300.jpg";s:5:"width";i:231;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(482, 73, '_wp_attached_file', '2015/08/ng_ph___c_p_5338d30677f33.jpg'),
(483, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:375;s:6:"height";i:500;s:4:"file";s:37:"2015/08/ng_ph___c_p_5338d30677f33.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"ng_ph___c_p_5338d30677f33-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"ng_ph___c_p_5338d30677f33-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(484, 60, '_thumbnail_id', '73'),
(545, 77, '_edit_last', '1'),
(487, 74, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(488, 74, '_new_product_home', 'field_55e1c3014f6be'),
(489, 74, 'spot_product_home', ''),
(490, 74, '_spot_product_home', 'field_55e1c45a92736'),
(491, 74, 'product_price', '1300000'),
(492, 74, '_product_price', 'field_55e135deaec2c'),
(493, 74, 'description_image_0_product_images_sub', '72'),
(494, 74, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(495, 74, 'description_image_1_product_images_sub', '67'),
(496, 74, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(497, 74, 'description_image', '2'),
(498, 74, '_description_image', 'field_55e135837d524'),
(499, 74, 'product_description', ''),
(500, 74, '_product_description', 'field_55e137142e2dc'),
(501, 60, 'description_image_0_product_images_sub', '72'),
(502, 60, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(503, 60, 'description_image_1_product_images_sub', '67'),
(504, 60, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(507, 75, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(508, 75, '_new_product_home', 'field_55e1c3014f6be'),
(509, 75, 'spot_product_home', ''),
(510, 75, '_spot_product_home', 'field_55e1c45a92736'),
(511, 75, 'product_price', '1350000'),
(512, 75, '_product_price', 'field_55e135deaec2c'),
(513, 75, 'description_image_0_product_images_sub', '67'),
(514, 75, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(515, 75, 'description_image_1_product_images_sub', '72'),
(516, 75, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(517, 75, 'description_image', '2'),
(518, 75, '_description_image', 'field_55e135837d524'),
(519, 75, 'product_description', ''),
(520, 75, '_product_description', 'field_55e137142e2dc'),
(522, 66, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(546, 77, '_edit_lock', '1441812749:1'),
(529, 76, 'new_product_home', ''),
(530, 76, '_new_product_home', 'field_55e1c3014f6be'),
(531, 76, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(532, 76, '_spot_product_home', 'field_55e1c45a92736'),
(533, 76, 'product_price', '2014650'),
(534, 76, '_product_price', 'field_55e135deaec2c'),
(535, 76, 'description_image_0_product_images_sub', '58'),
(536, 76, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(537, 76, 'description_image_1_product_images_sub', '58'),
(538, 76, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(539, 76, 'description_image', '2'),
(540, 76, '_description_image', 'field_55e135837d524'),
(541, 76, 'product_description', ''),
(542, 76, '_product_description', 'field_55e137142e2dc'),
(567, 83, 'field_55ec0a67e8f59', 'a:11:{s:3:"key";s:19:"field_55ec0a67e8f59";s:5:"label";s:4:"Sale";s:4:"name";s:12:"sale_product";s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:1:{s:9:"Sale icon";s:9:"Sale icon";}s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(566, 83, '_edit_last', '1'),
(550, 82, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(551, 82, '_new_product_home', 'field_55e1c3014f6be'),
(552, 82, 'spot_product_home', ''),
(553, 82, '_spot_product_home', 'field_55e1c45a92736'),
(554, 82, 'product_price', '200000'),
(555, 82, '_product_price', 'field_55e135deaec2c'),
(556, 82, 'description_image_0_product_images_sub', '67'),
(557, 82, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(558, 82, 'description_image_1_product_images_sub', '72'),
(559, 82, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(560, 82, 'description_image', '2'),
(561, 82, '_description_image', 'field_55e135837d524'),
(562, 82, 'amount_product', '5'),
(563, 82, '_amount_product', 'field_55e137142e2dc'),
(564, 66, 'amount_product', '5'),
(565, 66, '_amount_product', 'field_55e137142e2dc'),
(577, 83, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(569, 83, 'position', 'side'),
(570, 83, 'layout', 'default'),
(571, 83, 'hide_on_screen', ''),
(572, 83, '_edit_lock', '1442250892:1'),
(599, 85, '_edit_lock', '1441533880:1'),
(598, 85, '_edit_last', '1'),
(580, 84, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(581, 84, '_sale_product', 'field_55ec0a67e8f59'),
(582, 84, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(583, 84, '_new_product_home', 'field_55e1c3014f6be'),
(584, 84, 'spot_product_home', ''),
(585, 84, '_spot_product_home', 'field_55e1c45a92736'),
(586, 84, 'product_price', '200000'),
(587, 84, '_product_price', 'field_55e135deaec2c'),
(588, 84, 'description_image_0_product_images_sub', '67'),
(589, 84, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(590, 84, 'description_image_1_product_images_sub', '72'),
(591, 84, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(592, 84, 'description_image', '2'),
(593, 84, '_description_image', 'field_55e135837d524'),
(594, 84, 'amount_product', '5'),
(595, 84, '_amount_product', 'field_55e137142e2dc'),
(596, 66, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(597, 66, '_sale_product', 'field_55ec0a67e8f59'),
(600, 87, '_edit_last', '1'),
(601, 87, '_edit_lock', '1441812726:1'),
(604, 89, 'sale_product', ''),
(605, 89, '_sale_product', 'field_55ec0a67e8f59'),
(606, 89, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(607, 89, '_new_product_home', 'field_55e1c3014f6be'),
(608, 89, 'spot_product_home', ''),
(609, 89, '_spot_product_home', 'field_55e1c45a92736'),
(610, 89, 'product_price', '190000'),
(611, 89, '_product_price', 'field_55e135deaec2c'),
(612, 89, 'description_image_0_product_images_sub', '72'),
(613, 89, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(614, 89, 'description_image_1_product_images_sub', '67'),
(615, 89, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(616, 89, 'description_image', '2'),
(617, 89, '_description_image', 'field_55e135837d524'),
(618, 89, 'amount_product', '8'),
(619, 89, '_amount_product', 'field_55e137142e2dc'),
(620, 60, 'sale_product', ''),
(621, 60, '_sale_product', 'field_55ec0a67e8f59'),
(622, 60, 'amount_product', '8'),
(623, 60, '_amount_product', 'field_55e137142e2dc'),
(646, 91, '_wp_attached_file', '2015/09/vietanlogo.png'),
(626, 90, 'sale_product', ''),
(627, 90, '_sale_product', 'field_55ec0a67e8f59'),
(628, 90, 'new_product_home', ''),
(629, 90, '_new_product_home', 'field_55e1c3014f6be'),
(630, 90, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(631, 90, '_spot_product_home', 'field_55e1c45a92736'),
(632, 90, 'product_price', '170000'),
(633, 90, '_product_price', 'field_55e135deaec2c'),
(634, 90, 'description_image_0_product_images_sub', '58'),
(635, 90, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(636, 90, 'description_image_1_product_images_sub', '58'),
(637, 90, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(638, 90, 'description_image', '2'),
(639, 90, '_description_image', 'field_55e135837d524'),
(640, 90, 'amount_product', '7'),
(641, 90, '_amount_product', 'field_55e137142e2dc'),
(642, 57, 'sale_product', ''),
(643, 57, '_sale_product', 'field_55ec0a67e8f59'),
(644, 57, 'amount_product', '7'),
(645, 57, '_amount_product', 'field_55e137142e2dc'),
(647, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:60;s:4:"file";s:22:"2015/09/vietanlogo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"vietanlogo-150x60.png";s:5:"width";i:150;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(652, 13, 'field_55ec34a5fb4be', 'a:11:{s:3:"key";s:19:"field_55ec34a5fb4be";s:5:"label";s:14:"Địa chỉ 2";s:4:"name";s:17:"company_address_2";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(655, 13, 'field_55ec3a6467aa2', 'a:14:{s:3:"key";s:19:"field_55ec3a6467aa2";s:5:"label";s:8:"Facebook";s:4:"name";s:8:"facebook";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(656, 13, 'field_55ec3a7467aa3', 'a:14:{s:3:"key";s:19:"field_55ec3a7467aa3";s:5:"label";s:7:"Twitter";s:4:"name";s:7:"twitter";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(657, 13, 'field_55ec3a8167aa4', 'a:14:{s:3:"key";s:19:"field_55ec3a8167aa4";s:5:"label";s:7:"Youtube";s:4:"name";s:7:"youtube";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
(658, 13, 'field_55ec3a8667aa5', 'a:14:{s:3:"key";s:19:"field_55ec3a8667aa5";s:5:"label";s:8:"Google +";s:4:"name";s:11:"google_plus";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;}'),
(660, 92, '_edit_last', '1'),
(661, 92, '_edit_lock', '1441554532:1'),
(662, 98, '_edit_last', '1'),
(663, 98, '_edit_lock', '1442850243:1'),
(664, 99, '_wp_attached_file', '2015/09/banner-1-1.png'),
(665, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:152;s:6:"height";i:176;s:4:"file";s:22:"2015/09/banner-1-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"banner-1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(666, 98, '_thumbnail_id', '99'),
(674, 101, '_edit_lock', '1441643974:1'),
(673, 101, '_edit_last', '1'),
(675, 105, '_form', '<p>Tên của bạn (*)<br />\n    [text* your-name] </p>\n\n<p>Địa chỉ Email (*)<br />\n    [email* your-email] </p>\n\n<p>Tiêu đề:<br />\n    [text your-subject] </p>\n\n<p>Thông điệp<br />\n    [textarea your-message] </p>\n\n<p>[submit "Gửi đi"]</p>'),
(676, 105, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:34:"[your-name] <binhdarkcu@gmail.com>";s:4:"body";s:214:"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Shopping Quan (http://localhost/shop_quan/source)";s:9:"recipient";s:20:"binhdarkcu@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(677, 105, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:36:"Shopping Quan <binhdarkcu@gmail.com>";s:4:"body";s:139:"Nội dung thông điệp:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Shopping Quan (http://localhost/shop_quan/source)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:30:"Reply-To: binhdarkcu@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(678, 105, '_messages', 'a:23:{s:12:"mail_sent_ok";s:82:"Thông điệp của bạn đã được chuyển đi thành công. Xin cảm ơn.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:91:"Thông tin không hợp lệ. Xin hãy kiểm tra lại các ô thông tin và gửi lại.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:63:"Xin hãy chấp nhận các điều khoản để tiếp tục.";s:16:"invalid_required";s:40:"Làm ơn điền đầy đủ thông tin";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:34:"Bạn đã nhập sai mã CAPTCHA.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:37:"Địa chỉ Email không hợp lệ.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:39:"Đáp án cho câu hỏi không đúng.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:32:"Không tải được file lên.";s:24:"upload_file_type_invalid";s:44:"Loại file này không được hỗ trợ.";s:21:"upload_file_too_large";s:36:"File bạn định tải quá lớn.";s:23:"upload_failed_php_error";s:32:"Không tải được file lên.";}'),
(679, 105, '_additional_settings', ''),
(680, 105, '_locale', 'vi'),
(681, 106, 'cf7_style_image_preview', '/admin/images/cf7_simple_twentyfifteen_pattern.jpg'),
(682, 107, 'cf7_style_image_preview', '/admin/images/cf7_xmas_classic.jpg'),
(683, 108, 'cf7_style_image_preview', '/admin/images/cf7_xmas_red.jpg'),
(684, 109, 'cf7_style_image_preview', '/admin/images/cf7_xmas_simple.jpg'),
(685, 110, 'cf7_style_image_preview', '/admin/images/cf7_vday_classic.jpg'),
(686, 111, 'cf7_style_image_preview', '/admin/images/cf7_vday_roses.jpg'),
(687, 112, 'cf7_style_image_preview', '/admin/images/cf7_vday_birds.jpg'),
(688, 113, 'cf7_style_image_preview', '/admin/images/cf7_vday_blue_birds.jpg'),
(689, 87, '_wp_trash_meta_status', 'publish'),
(690, 87, '_wp_trash_meta_time', '1441812874'),
(691, 77, '_wp_trash_meta_status', 'publish'),
(692, 77, '_wp_trash_meta_time', '1441812897'),
(693, 13, 'field_55f7012e70982', 'a:14:{s:3:"key";s:19:"field_55f7012e70982";s:5:"label";s:5:"Skype";s:4:"name";s:10:"link_skype";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(751, 119, '_edit_lock', '1442679230:1'),
(698, 116, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(699, 116, '_sale_product', 'field_55ec0a67e8f59'),
(700, 116, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(701, 116, '_new_product_home', 'field_55e1c3014f6be'),
(702, 116, 'spot_product_home', ''),
(703, 116, '_spot_product_home', 'field_55e1c45a92736'),
(704, 116, 'product_price', '200000'),
(705, 116, '_product_price', 'field_55e135deaec2c'),
(706, 116, 'description_image_0_product_images_sub', '67'),
(707, 116, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(708, 116, 'description_image_1_product_images_sub', '72'),
(709, 116, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(710, 116, 'description_image', '2'),
(711, 116, '_description_image', 'field_55e135837d524'),
(712, 116, 'amount_product', '5'),
(713, 116, '_amount_product', 'field_55e137142e2dc'),
(716, 117, 'sale_product', ''),
(717, 117, '_sale_product', 'field_55ec0a67e8f59'),
(718, 117, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(719, 117, '_new_product_home', 'field_55e1c3014f6be'),
(720, 117, 'spot_product_home', ''),
(721, 117, '_spot_product_home', 'field_55e1c45a92736'),
(722, 117, 'product_price', '190000'),
(723, 117, '_product_price', 'field_55e135deaec2c'),
(724, 117, 'description_image_0_product_images_sub', '72'),
(725, 117, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(726, 117, 'description_image_1_product_images_sub', '67'),
(727, 117, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(728, 117, 'description_image', '2'),
(729, 117, '_description_image', 'field_55e135837d524'),
(730, 117, 'amount_product', '8'),
(731, 117, '_amount_product', 'field_55e137142e2dc'),
(750, 119, '_edit_last', '1'),
(734, 118, 'sale_product', ''),
(735, 118, '_sale_product', 'field_55ec0a67e8f59'),
(736, 118, 'new_product_home', ''),
(737, 118, '_new_product_home', 'field_55e1c3014f6be'),
(738, 118, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(739, 118, '_spot_product_home', 'field_55e1c45a92736'),
(740, 118, 'product_price', '170000'),
(741, 118, '_product_price', 'field_55e135deaec2c'),
(742, 118, 'description_image_0_product_images_sub', '58'),
(743, 118, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(744, 118, 'description_image_1_product_images_sub', '58'),
(745, 118, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(746, 118, 'description_image', '2'),
(747, 118, '_description_image', 'field_55e135837d524'),
(748, 118, 'amount_product', '7'),
(749, 118, '_amount_product', 'field_55e137142e2dc'),
(752, 120, '_wp_attached_file', '2015/09/show_image_in_imgtag.jpg'),
(753, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:32:"2015/09/show_image_in_imgtag.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"show_image_in_imgtag-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(754, 119, '_thumbnail_id', '120'),
(810, 48, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:18:"three_product_home";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(757, 121, '_edit_last', '1'),
(758, 121, '_edit_lock', '1442680065:1'),
(759, 122, '_wp_attached_file', '2015/09/show_image_in_imgtag-1.jpg'),
(760, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:133;s:6:"height";i:200;s:4:"file";s:34:"2015/09/show_image_in_imgtag-1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"show_image_in_imgtag-1-133x150.jpg";s:5:"width";i:133;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(761, 121, '_thumbnail_id', '122'),
(762, 121, 'product_price', '0'),
(763, 121, '_product_price', 'field_55e135deaec2c'),
(764, 121, 'description_image', '0'),
(765, 121, '_description_image', 'field_55e135837d524'),
(766, 121, 'amount_product', ''),
(767, 121, '_amount_product', 'field_55e137142e2dc'),
(768, 123, '_edit_last', '1'),
(769, 123, '_edit_lock', '1442679209:1'),
(770, 124, '_wp_attached_file', '2015/09/NG_PH___C_Y_529ca308ae831.jpg'),
(771, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:170;s:6:"height";i:230;s:4:"file";s:37:"2015/09/NG_PH___C_Y_529ca308ae831.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"NG_PH___C_Y_529ca308ae831-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(772, 123, '_thumbnail_id', '124'),
(773, 123, 'product_price', '0'),
(774, 123, '_product_price', 'field_55e135deaec2c'),
(775, 123, 'description_image', '0'),
(776, 123, '_description_image', 'field_55e135837d524'),
(777, 123, 'amount_product', ''),
(778, 123, '_amount_product', 'field_55e137142e2dc'),
(779, 119, 'product_price', '0'),
(780, 119, '_product_price', 'field_55e135deaec2c'),
(781, 119, 'description_image', '0'),
(782, 119, '_description_image', 'field_55e135837d524'),
(783, 119, 'amount_product', ''),
(784, 119, '_amount_product', 'field_55e137142e2dc'),
(785, 125, '_edit_last', '1'),
(786, 125, '_edit_lock', '1442680282:1'),
(787, 126, '_edit_last', '1'),
(788, 126, '_edit_lock', '1442849442:1'),
(789, 127, '_edit_last', '1'),
(790, 127, 'field_55fd8e9f4a7ee', 'a:12:{s:3:"key";s:19:"field_55fd8e9f4a7ee";s:5:"label";s:10:"Google map";s:4:"name";s:10:"google_map";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(796, 127, 'rule', 'a:5:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:11:"acf-options";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(792, 127, 'position', 'normal'),
(793, 127, 'layout', 'no_box'),
(794, 127, 'hide_on_screen', ''),
(795, 127, '_edit_lock', '1442680714:1'),
(797, 128, '_edit_last', '1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(798, 128, '_edit_lock', '1442854738:1'),
(807, 66, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(808, 66, '_star_product', 'field_55e137142e2dc'),
(812, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:292;s:4:"file";s:45:"2015/09/c121d197da6300dc2a736a3f4314da88.jpeg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"c121d197da6300dc2a736a3f4314da88-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"c121d197da6300dc2a736a3f4314da88-300x219.jpeg";s:5:"width";i:300;s:6:"height";i:219;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(813, 128, '_thumbnail_id', '131'),
(814, 132, '_edit_last', '1'),
(815, 132, '_edit_lock', '1442938320:1'),
(816, 134, '_edit_last', '1'),
(817, 134, '_edit_lock', '1443108653:1'),
(844, 136, '_wp_attached_file', '2015/09/show_image_in_imgtag1.jpg'),
(820, 135, 'sale_product', ''),
(821, 135, '_sale_product', 'field_55ec0a67e8f59'),
(822, 135, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(823, 135, '_new_product_home', 'field_55e1c3014f6be'),
(824, 135, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(825, 135, '_spot_product_home', 'field_55e1c45a92736'),
(826, 135, 'product_price', '1100000'),
(827, 135, '_product_price', 'field_55e135deaec2c'),
(828, 135, 'description_image', '0'),
(829, 135, '_description_image', 'field_55e135837d524'),
(830, 135, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(831, 135, '_star_product', 'field_55e137142e2dc'),
(832, 134, 'sale_product', ''),
(833, 134, '_sale_product', 'field_55ec0a67e8f59'),
(834, 134, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(835, 134, '_new_product_home', 'field_55e1c3014f6be'),
(836, 134, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(837, 134, '_spot_product_home', 'field_55e1c45a92736'),
(838, 134, 'product_price', '1100000'),
(839, 134, '_product_price', 'field_55e135deaec2c'),
(840, 134, 'description_image', '1'),
(841, 134, '_description_image', 'field_55e135837d524'),
(842, 134, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(843, 134, '_star_product', 'field_55e137142e2dc'),
(845, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:169;s:6:"height";i:200;s:4:"file";s:33:"2015/09/show_image_in_imgtag1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"show_image_in_imgtag1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(846, 134, '_thumbnail_id', '136'),
(847, 137, '_wp_attached_file', '2015/09/show_image_in_imgtag-11.jpg'),
(848, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:133;s:6:"height";i:200;s:4:"file";s:35:"2015/09/show_image_in_imgtag-11.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"show_image_in_imgtag-11-133x150.jpg";s:5:"width";i:133;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(868, 139, '_edit_lock', '1443115699:1'),
(867, 139, '_edit_last', '1'),
(851, 138, 'sale_product', ''),
(852, 138, '_sale_product', 'field_55ec0a67e8f59'),
(853, 138, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(854, 138, '_new_product_home', 'field_55e1c3014f6be'),
(855, 138, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(856, 138, '_spot_product_home', 'field_55e1c45a92736'),
(857, 138, 'product_price', '1100000'),
(858, 138, '_product_price', 'field_55e135deaec2c'),
(859, 138, 'description_image_0_product_images_sub', '137'),
(860, 138, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(861, 138, 'description_image', '1'),
(862, 138, '_description_image', 'field_55e135837d524'),
(863, 138, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(864, 138, '_star_product', 'field_55e137142e2dc'),
(865, 134, 'description_image_0_product_images_sub', '137'),
(866, 134, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(869, 140, '_wp_attached_file', '2015/09/show_image_in_imgtag-2.jpg'),
(870, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:199;s:4:"file";s:34:"2015/09/show_image_in_imgtag-2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"show_image_in_imgtag-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(871, 139, '_thumbnail_id', '58'),
(903, 142, '_edit_lock', '1443108744:1'),
(902, 142, '_edit_last', '1'),
(874, 141, 'sale_product', ''),
(875, 141, '_sale_product', 'field_55ec0a67e8f59'),
(876, 141, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(877, 141, '_new_product_home', 'field_55e1c3014f6be'),
(878, 141, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(879, 141, '_spot_product_home', 'field_55e1c45a92736'),
(880, 141, 'product_price', '2100000'),
(881, 141, '_product_price', 'field_55e135deaec2c'),
(882, 141, 'description_image_0_product_images_sub', '140'),
(883, 141, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(884, 141, 'description_image', '1'),
(885, 141, '_description_image', 'field_55e135837d524'),
(886, 141, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(887, 141, '_star_product', 'field_55e137142e2dc'),
(888, 139, 'sale_product', ''),
(889, 139, '_sale_product', 'field_55ec0a67e8f59'),
(890, 139, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(891, 139, '_new_product_home', 'field_55e1c3014f6be'),
(892, 139, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(893, 139, '_spot_product_home', 'field_55e1c45a92736'),
(894, 139, 'product_price', '2100000'),
(895, 139, '_product_price', 'field_55e135deaec2c'),
(896, 139, 'description_image_0_product_images_sub', '140'),
(897, 139, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(898, 139, 'description_image', '1'),
(899, 139, '_description_image', 'field_55e135837d524'),
(900, 139, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(901, 139, '_star_product', 'field_55e137142e2dc'),
(904, 143, '_wp_attached_file', '2015/09/show_image_in_imgtag-3.jpg'),
(905, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:160;s:6:"height";i:200;s:4:"file";s:34:"2015/09/show_image_in_imgtag-3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"show_image_in_imgtag-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(906, 142, '_thumbnail_id', '143'),
(938, 145, '_edit_lock', '1443112326:1'),
(937, 145, '_edit_last', '1'),
(909, 144, 'sale_product', ''),
(910, 144, '_sale_product', 'field_55ec0a67e8f59'),
(911, 144, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(912, 144, '_new_product_home', 'field_55e1c3014f6be'),
(913, 144, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(914, 144, '_spot_product_home', 'field_55e1c45a92736'),
(915, 144, 'product_price', '1520000'),
(916, 144, '_product_price', 'field_55e135deaec2c'),
(917, 144, 'description_image_0_product_images_sub', '143'),
(918, 144, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(919, 144, 'description_image', '1'),
(920, 144, '_description_image', 'field_55e135837d524'),
(921, 144, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(922, 144, '_star_product', 'field_55e137142e2dc'),
(923, 142, 'sale_product', ''),
(924, 142, '_sale_product', 'field_55ec0a67e8f59'),
(925, 142, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(926, 142, '_new_product_home', 'field_55e1c3014f6be'),
(927, 142, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(928, 142, '_spot_product_home', 'field_55e1c45a92736'),
(929, 142, 'product_price', '1520000'),
(930, 142, '_product_price', 'field_55e135deaec2c'),
(931, 142, 'description_image_0_product_images_sub', '143'),
(932, 142, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(933, 142, 'description_image', '1'),
(934, 142, '_description_image', 'field_55e135837d524'),
(935, 142, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(936, 142, '_star_product', 'field_55e137142e2dc'),
(939, 146, '_wp_attached_file', '2015/09/show_image_in_imgtag-4.jpg'),
(940, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:199;s:4:"file";s:34:"2015/09/show_image_in_imgtag-4.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"show_image_in_imgtag-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(941, 145, '_thumbnail_id', '143'),
(973, 148, '_edit_lock', '1443112315:1'),
(972, 148, '_edit_last', '1'),
(944, 147, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(945, 147, '_sale_product', 'field_55ec0a67e8f59'),
(946, 147, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(947, 147, '_new_product_home', 'field_55e1c3014f6be'),
(948, 147, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(949, 147, '_spot_product_home', 'field_55e1c45a92736'),
(950, 147, 'product_price', '2680000'),
(951, 147, '_product_price', 'field_55e135deaec2c'),
(952, 147, 'description_image_0_product_images_sub', '146'),
(953, 147, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(954, 147, 'description_image', '1'),
(955, 147, '_description_image', 'field_55e135837d524'),
(956, 147, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(957, 147, '_star_product', 'field_55e137142e2dc'),
(958, 145, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(959, 145, '_sale_product', 'field_55ec0a67e8f59'),
(960, 145, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(961, 145, '_new_product_home', 'field_55e1c3014f6be'),
(962, 145, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(963, 145, '_spot_product_home', 'field_55e1c45a92736'),
(964, 145, 'product_price', '2680000'),
(965, 145, '_product_price', 'field_55e135deaec2c'),
(966, 145, 'description_image_0_product_images_sub', '146'),
(967, 145, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(968, 145, 'description_image', '1'),
(969, 145, '_description_image', 'field_55e135837d524'),
(970, 145, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(971, 145, '_star_product', 'field_55e137142e2dc'),
(974, 149, '_wp_attached_file', '2015/09/show_image_in_imgtag-5.jpg'),
(975, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:166;s:6:"height";i:200;s:4:"file";s:34:"2015/09/show_image_in_imgtag-5.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"show_image_in_imgtag-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(976, 148, '_thumbnail_id', '149'),
(1008, 151, '_edit_lock', '1443112454:1'),
(1007, 151, '_edit_last', '1'),
(979, 150, 'sale_product', ''),
(980, 150, '_sale_product', 'field_55ec0a67e8f59'),
(981, 150, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(982, 150, '_new_product_home', 'field_55e1c3014f6be'),
(983, 150, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(984, 150, '_spot_product_home', 'field_55e1c45a92736'),
(985, 150, 'product_price', '3350000'),
(986, 150, '_product_price', 'field_55e135deaec2c'),
(987, 150, 'description_image_0_product_images_sub', '149'),
(988, 150, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(989, 150, 'description_image', '1'),
(990, 150, '_description_image', 'field_55e135837d524'),
(991, 150, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(992, 150, '_star_product', 'field_55e137142e2dc'),
(993, 148, 'sale_product', ''),
(994, 148, '_sale_product', 'field_55ec0a67e8f59'),
(995, 148, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(996, 148, '_new_product_home', 'field_55e1c3014f6be'),
(997, 148, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(998, 148, '_spot_product_home', 'field_55e1c45a92736'),
(999, 148, 'product_price', '3350000'),
(1000, 148, '_product_price', 'field_55e135deaec2c'),
(1001, 148, 'description_image_0_product_images_sub', '149'),
(1002, 148, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1003, 148, 'description_image', '1'),
(1004, 148, '_description_image', 'field_55e135837d524'),
(1005, 148, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1006, 148, '_star_product', 'field_55e137142e2dc'),
(1009, 152, '_wp_attached_file', '2015/09/show_image_in_imgtag-6.jpg'),
(1010, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:199;s:4:"file";s:34:"2015/09/show_image_in_imgtag-6.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"show_image_in_imgtag-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1011, 151, '_thumbnail_id', '149'),
(1047, 154, '_edit_lock', '1443112304:1'),
(1046, 154, '_edit_last', '1'),
(1014, 153, 'sale_product', ''),
(1015, 153, '_sale_product', 'field_55ec0a67e8f59'),
(1016, 153, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1017, 153, '_new_product_home', 'field_55e1c3014f6be'),
(1018, 153, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1019, 153, '_spot_product_home', 'field_55e1c45a92736'),
(1020, 153, 'product_price', '1440000'),
(1021, 153, '_product_price', 'field_55e135deaec2c'),
(1022, 153, 'description_image_0_product_images_sub', '152'),
(1023, 153, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1024, 153, 'description_image_1_product_images_sub', '143'),
(1025, 153, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(1026, 153, 'description_image', '2'),
(1027, 153, '_description_image', 'field_55e135837d524'),
(1028, 153, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1029, 153, '_star_product', 'field_55e137142e2dc'),
(1030, 151, 'sale_product', ''),
(1031, 151, '_sale_product', 'field_55ec0a67e8f59'),
(1032, 151, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1033, 151, '_new_product_home', 'field_55e1c3014f6be'),
(1034, 151, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1035, 151, '_spot_product_home', 'field_55e1c45a92736'),
(1036, 151, 'product_price', '1440000'),
(1037, 151, '_product_price', 'field_55e135deaec2c'),
(1038, 151, 'description_image_0_product_images_sub', '152'),
(1039, 151, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1040, 151, 'description_image_1_product_images_sub', '143'),
(1041, 151, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(1042, 151, 'description_image', '2'),
(1043, 151, '_description_image', 'field_55e135837d524'),
(1044, 151, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1045, 151, '_star_product', 'field_55e137142e2dc'),
(1048, 155, '_wp_attached_file', '2015/09/show_image_in_imgtag-7.jpg'),
(1049, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:118;s:6:"height";i:200;s:4:"file";s:34:"2015/09/show_image_in_imgtag-7.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"show_image_in_imgtag-7-118x150.jpg";s:5:"width";i:118;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1050, 154, '_thumbnail_id', '155'),
(1082, 157, '_edit_lock', '1443198173:1'),
(1081, 157, '_edit_last', '1'),
(1053, 156, 'sale_product', ''),
(1054, 156, '_sale_product', 'field_55ec0a67e8f59'),
(1055, 156, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1056, 156, '_new_product_home', 'field_55e1c3014f6be'),
(1057, 156, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1058, 156, '_spot_product_home', 'field_55e1c45a92736'),
(1059, 156, 'product_price', '1970000'),
(1060, 156, '_product_price', 'field_55e135deaec2c'),
(1061, 156, 'description_image_0_product_images_sub', '155'),
(1062, 156, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1063, 156, 'description_image', '1'),
(1064, 156, '_description_image', 'field_55e135837d524'),
(1065, 156, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1066, 156, '_star_product', 'field_55e137142e2dc'),
(1067, 154, 'sale_product', ''),
(1068, 154, '_sale_product', 'field_55ec0a67e8f59'),
(1069, 154, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1070, 154, '_new_product_home', 'field_55e1c3014f6be'),
(1071, 154, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1072, 154, '_spot_product_home', 'field_55e1c45a92736'),
(1073, 154, 'product_price', '1970000'),
(1074, 154, '_product_price', 'field_55e135deaec2c'),
(1075, 154, 'description_image_0_product_images_sub', '155'),
(1076, 154, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1077, 154, 'description_image', '1'),
(1078, 154, '_description_image', 'field_55e135837d524'),
(1079, 154, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1080, 154, '_star_product', 'field_55e137142e2dc'),
(1083, 158, '_wp_attached_file', '2015/09/show_image_in_imgtag-8.jpg'),
(1084, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:199;s:4:"file";s:34:"2015/09/show_image_in_imgtag-8.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"show_image_in_imgtag-8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1085, 157, '_thumbnail_id', '158'),
(1122, 160, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1088, 159, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(1089, 159, '_sale_product', 'field_55ec0a67e8f59'),
(1090, 159, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1091, 159, '_new_product_home', 'field_55e1c3014f6be'),
(1092, 159, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1093, 159, '_spot_product_home', 'field_55e1c45a92736'),
(1094, 159, 'product_price', '1310000'),
(1095, 159, '_product_price', 'field_55e135deaec2c'),
(1096, 159, 'description_image_0_product_images_sub', '158'),
(1097, 159, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1098, 159, 'description_image', '1'),
(1099, 159, '_description_image', 'field_55e135837d524'),
(1100, 159, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1101, 159, '_star_product', 'field_55e137142e2dc'),
(1102, 157, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(1103, 157, '_sale_product', 'field_55ec0a67e8f59'),
(1104, 157, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1105, 157, '_new_product_home', 'field_55e1c3014f6be'),
(1106, 157, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1107, 157, '_spot_product_home', 'field_55e1c45a92736'),
(1108, 157, 'product_price', '1310000'),
(1109, 157, '_product_price', 'field_55e135deaec2c'),
(1110, 157, 'description_image_0_product_images_sub', '158'),
(1111, 157, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1112, 157, 'description_image', '1'),
(1113, 157, '_description_image', 'field_55e135837d524'),
(1114, 157, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1115, 157, '_star_product', 'field_55e137142e2dc'),
(1123, 160, '_spot_product_home', 'field_55e1c45a92736'),
(1124, 160, 'product_price', '1310000'),
(1125, 160, '_product_price', 'field_55e135deaec2c'),
(1126, 160, 'description_image_0_product_images_sub', '158'),
(1127, 160, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1128, 160, 'description_image', '1'),
(1129, 160, '_description_image', 'field_55e135837d524'),
(1130, 160, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1131, 160, '_star_product', 'field_55e137142e2dc'),
(1134, 161, 'sale_product', ''),
(1135, 161, '_sale_product', 'field_55ec0a67e8f59'),
(1136, 161, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1137, 161, '_new_product_home', 'field_55e1c3014f6be'),
(1138, 161, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1139, 161, '_spot_product_home', 'field_55e1c45a92736'),
(1140, 161, 'product_price', '1970000'),
(1141, 161, '_product_price', 'field_55e135deaec2c'),
(1142, 161, 'description_image_0_product_images_sub', '155'),
(1143, 161, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1144, 161, 'description_image', '1'),
(1145, 161, '_description_image', 'field_55e135837d524'),
(1146, 161, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1147, 161, '_star_product', 'field_55e137142e2dc'),
(1150, 162, 'sale_product', ''),
(1151, 162, '_sale_product', 'field_55ec0a67e8f59'),
(1152, 162, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1153, 162, '_new_product_home', 'field_55e1c3014f6be'),
(1154, 162, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1155, 162, '_spot_product_home', 'field_55e1c45a92736'),
(1156, 162, 'product_price', '1440000'),
(1157, 162, '_product_price', 'field_55e135deaec2c'),
(1158, 162, 'description_image_0_product_images_sub', '152'),
(1159, 162, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1160, 162, 'description_image_1_product_images_sub', '143'),
(1161, 162, '_description_image_1_product_images_sub', 'field_55e1374649059'),
(1162, 162, 'description_image', '2'),
(1163, 162, '_description_image', 'field_55e135837d524'),
(1164, 162, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1165, 162, '_star_product', 'field_55e137142e2dc'),
(1168, 163, 'sale_product', ''),
(1169, 163, '_sale_product', 'field_55ec0a67e8f59'),
(1170, 163, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1171, 163, '_new_product_home', 'field_55e1c3014f6be'),
(1172, 163, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1173, 163, '_spot_product_home', 'field_55e1c45a92736'),
(1174, 163, 'product_price', '3350000'),
(1175, 163, '_product_price', 'field_55e135deaec2c'),
(1176, 163, 'description_image_0_product_images_sub', '149'),
(1177, 163, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1178, 163, 'description_image', '1'),
(1179, 163, '_description_image', 'field_55e135837d524'),
(1180, 163, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1181, 163, '_star_product', 'field_55e137142e2dc'),
(1184, 164, 'sale_product', 'a:1:{i:0;s:9:"Sale icon";}'),
(1185, 164, '_sale_product', 'field_55ec0a67e8f59'),
(1186, 164, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1187, 164, '_new_product_home', 'field_55e1c3014f6be'),
(1188, 164, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1189, 164, '_spot_product_home', 'field_55e1c45a92736'),
(1190, 164, 'product_price', '2680000'),
(1191, 164, '_product_price', 'field_55e135deaec2c'),
(1192, 164, 'description_image_0_product_images_sub', '146'),
(1193, 164, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1194, 164, 'description_image', '1'),
(1195, 164, '_description_image', 'field_55e135837d524'),
(1196, 164, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1197, 164, '_star_product', 'field_55e137142e2dc'),
(1200, 165, 'sale_product', ''),
(1201, 165, '_sale_product', 'field_55ec0a67e8f59'),
(1202, 165, 'new_product_home', 'a:1:{i:0;s:16:"new_display_home";}'),
(1203, 165, '_new_product_home', 'field_55e1c3014f6be'),
(1204, 165, 'spot_product_home', 'a:1:{i:0;s:17:"spot_product_home";}'),
(1205, 165, '_spot_product_home', 'field_55e1c45a92736'),
(1206, 165, 'product_price', '2100000'),
(1207, 165, '_product_price', 'field_55e135deaec2c'),
(1208, 165, 'description_image_0_product_images_sub', '140'),
(1209, 165, '_description_image_0_product_images_sub', 'field_55e1374649059'),
(1210, 165, 'description_image', '1'),
(1211, 165, '_description_image', 'field_55e135837d524'),
(1212, 165, 'star_product', 'a:2:{s:4:"avrg";s:1:"0";s:5:"votes";s:1:"0";}'),
(1213, 165, '_star_product', 'field_55e137142e2dc');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
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
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2015-07-22 06:30:49', '2015-07-22 06:30:49', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/shop_quan/source/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-07-22 06:30:49', '2015-07-22 06:30:49', '', 0, 'http://localhost/shop_quan/source/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-07-22 07:10:23', '2015-07-22 07:10:23', '', 'Trang chủ', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=4', 1, 'nav_menu_item', '', 0),
(15, 1, '2015-08-24 15:19:12', '2015-08-24 15:19:12', '<header>\r\n<h1 class="title"><a title="Đôi nét về chúng tôi" href="http://baohovietan.com/doi-net-ve-chung-toi.html">ĐÔI NÉT VỀ CHÚNG TÔI</a></h1>\r\n</header>\r\n<div class="content clearfix">\r\n<div>\r\n\r\nWebsite: www.baohovietan.com ( là website nằm trong hệ thống của CTy. TNHH Bảo Hộ Lao Động Việt An)\r\n\r\nCÔNG TY TNHH TRANG THIẾT BỊ BHLĐ VIỆT AN: là một trong những nhà cung cấp trang thiết bị BHLĐ hàng đầu về bảo vệ cá nhân và các thiết bị an toàn tại Việt Nam.\r\n\r\nVới sứ mệnh: xây dựng một môi trường làm việc an toàn và lành mạnh để tạo năng suất lao động tối đa thông qua các sản phẩm và dịch vụ chất lượng của chúng tôi.\r\n\r\nCông ty cung cấp một lượng lớn các dịch vụ bao gồm cả tư vấn, giới thiệu giải pháp, liên hệ, cung ứng và sản xuất. Những nổ lực cuả chúng tôi nhằm mục đích mang đến cho khách hàng sự thoải mái, thỏa mãn về chăm sóc, cung cách phục vụ, chất lượng sản phẩm trong thời gian cực ngắn với giá cả ổn định mà khó nhà cung cấp nào khác có thể mang đến được. Sản phẩm chủ lực của công ty là quần áo bảo hộ, đồng phục và các sản phẩm may mặc khác. Với kho xưởng hiện đại, đội ngũ công nhân lành nghề cùng với phòng thiết kế chuyên nghiệp sẽ mang đến cho khách hàng những sự chọn lựa thoải mái nhất về mẫu mã, kiểu dáng, và chất liệu sản phẩm.\r\n\r\nSong đồng thời<a href="http://baohotanthekim.com/upload/886/fck/2014_4_12_8_13_412.png" target="_blank"><img src="http://baohotanthekim.com/upload/886/fck/2014_4_12_8_13_412.png" alt="" width="200" height="101" border="0" /></a> cũng cung cấp các mặt hàng bảo hộ lao động khác như: nón, giày dép, khẩu trang, mặt nạ, kính … với mức giá hợp lý và sản phẩm chất lượng để phục vụ cho nhu cầu của khách hàng. Sản phẩm của chúng tôi được sử dụng trong nhiều nghành công nghiệp nặng, các công ty xây dựng, công trình giao thông vận tải, bưu điện, điện lực, các công ty sản xuất, chế biến thực phẩm, công ty bảo vệ…\r\n\r\nChính vì sự linh động, sáng suốt trong cung cách quản lý của ban giám đốc cùng sự sáng tạo, nhiệt tình hăng hái của nhân viên trong công ty đã góp phần không nhỏ để đưa công ty ngày một đi lên.\r\n\r\nĐến với <a href="http://baohotanthekim.com/upload/886/fck/2014_4_12_8_13_413.png" target="_blank"><img src="http://baohotanthekim.com/upload/886/fck/2014_4_12_8_13_413.png" alt="" width="200" height="101" border="0" /></a>quý khách sẽ hoàn toàn tin tưởng bởi dòng sản phẩm đạt tiêu chuẩn với chất lượng và dịch vụ tốt nhất!\r\n\r\nCÔNG TY TNHH TRANG THIẾT BỊ BẢO HỘ LAO ĐỘNG VIỆT AN - nhà sản xuất, phân phối, nhập khẩu các sản phẩm bảo hộ lao động, phòng cháy chữa cháy, thiết bị an toàn điện, thiết bị phòng sạch.Ngoài ra Cty Việt An là một trong những nhà xuất khẩu sản phẩm do chính Cty Việt An sản xuất sang thị trường các nước Lào, Campuchia, Myanma, Châu Phi.Những sản phẩm Việt An sản xuất đạt chất lượng cao phải kể đến là áo thun đồng phục, quần áo đồng phục, ủng cao su, dép nhựa.Chúng tôi tự hào với những thành quả chúng tôi có, và chúng tôi tin tưởng với dòng sản phẩm đạt chất lượng của chúng tôi sẽ mang đến sự hài lòng tuyệt đối cho khách hàng.Với tiêu chí, an toàn trong lao động chúng tôi luôn hy vọng những dòng sản phẩm của Việt An sẽ góp phần vào hiệu quả và năng suất lao động của quý Doanh Nghiệp.Chúng tôi tin tưởng vào năng lực của đội ngũ nhân viên trẻ,năng động đầy nhiệt huyệt cùng ban lãnh đạo giàu kinh nghiệm của Việt An sẽ cùng đồng hành và phát triển với quý Doanh Nghiệp.\r\n\r\nHiện nay, Cty Việt An đang phát triển mạnh kênh bán lẻ với hệ thống Webiste gồm :\r\n\r\n<a href="http://baohovietan.com/">baohovietan.com</a> ; <a href="http://baohotanthekim.com/">baohotanthekim.com</a> ; <a href="http://aothunttk.com/">aothunttk.com </a>; <a href="http://ungcaosu.com/">ungcaosu.com</a> ;\r\n\r\n<a href="http://quanaophongsach.com/">quanaophongsach.com</a> ;<a href="http://quanaochiunhiet.net/">quanaochiunhiet.net </a>; <a href="http://thamcachdien.net/">thamcachdien.net</a> ; <a href="http://gangtaybaoho.net/">gangtaybaoho.net</a>\r\n\r\n<strong>CÔNG TY TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN</strong><strong>\r\nTrụ sở chính : 29/6A Đường TRẦN THÁI TÔNG, Phường 15, Quận TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-0838.15.15.01-  Fax:0838.15.15.01\r\n\r\n0934.424.525 Ms Vân – Ms Nguyệt : 0912.280.989-0917.280.989 Ms Quỳnh Anh\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nWeb: vietansafety.com – baohovietan.com\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; <a href="mailto:sales.vietanco@gmail.com">sales.vietanco@gmail.com</a>\r\n\r\nKính chúc quý khách nhiều sức khỏe - bình an và hạnh phúc!\r\n\r\n</div>\r\n</div>', 'Giới thiệu', '', 'publish', 'open', 'open', '', 'gioi-thieu', '', '', '2015-09-07 16:43:21', '2015-09-07 16:43:21', '', 0, 'http://localhost/shop_quan/source/?page_id=15', 0, 'page', '', 0),
(82, 1, '2015-09-06 06:55:00', '2015-09-06 06:55:00', 'Tên sản phẩm : Đồng phục phục vụ\r\n\r\nChất liệu vải : vải Kate For, Vest  Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu đồng phục   thích hợp cho nhà hàng , khách sạn kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất :\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ĐỒNG PHỤC PHỤC VỤ 021', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2015-09-06 06:55:00', '2015-09-06 06:55:00', '', 66, 'http://localhost/shop_quan/source/66-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-08-29 04:32:00', '2015-08-29 04:32:00', '', 'Product', '', 'publish', 'closed', 'closed', '', 'acf_product', '', '', '2015-09-21 15:58:13', '2015-09-21 15:58:13', '', 0, 'http://localhost/shop_quan/source/?post_type=acf&#038;p=48', 0, 'acf', '', 0),
(78, 1, '2015-08-31 16:34:58', '2015-08-31 16:34:58', '', 'Sản phẩm', '', 'inherit', 'open', 'open', '', '77-revision-v1', '', '', '2015-08-31 16:34:58', '2015-08-31 16:34:58', '', 77, 'http://localhost/shop_quan/source/77-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2015-08-24 15:13:57', '2015-08-24 15:13:57', '', 'Header', '', 'publish', 'closed', 'closed', '', 'acf_header', '', '', '2015-09-14 17:18:16', '2015-09-14 17:18:16', '', 0, 'http://localhost/shop_quan/source/?post_type=acf&#038;p=13', 0, 'acf', '', 0),
(77, 1, '2015-08-31 16:34:58', '2015-08-31 16:34:58', '', 'Sản phẩm', '', 'trash', 'open', 'open', '', 'san-pham-2', '', '', '2015-09-09 15:34:57', '2015-09-09 15:34:57', '', 0, 'http://localhost/shop_quan/source/?page_id=77', 0, 'page', '', 0),
(16, 1, '2015-08-24 15:19:12', '2015-08-24 15:19:12', '', 'Giới thiệu', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-08-24 15:19:12', '2015-08-24 15:19:12', '', 15, 'http://localhost/shop_quan/source/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2015-08-24 15:19:31', '2015-08-24 15:19:31', '', 'Sản phẩm', '', 'publish', 'open', 'open', '', 'san-pham', '', '', '2015-08-24 15:19:31', '2015-08-24 15:19:31', '', 0, 'http://localhost/shop_quan/source/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-08-24 15:19:31', '2015-08-24 15:19:31', '', 'Sản phẩm', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-08-24 15:19:31', '2015-08-24 15:19:31', '', 17, 'http://localhost/shop_quan/source/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2015-08-24 15:20:27', '2015-08-24 15:20:27', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2015-08-24 15:20:27', '2015-08-24 15:20:27', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=20', 2, 'nav_menu_item', '', 0),
(22, 1, '2015-08-24 15:52:34', '2015-08-24 15:52:34', '', 'Tin Tức', '', 'publish', 'open', 'open', '', 'tin-tuc', '', '', '2015-08-24 15:52:34', '2015-08-24 15:52:34', '', 0, 'http://localhost/shop_quan/source/?page_id=22', 0, 'page', '', 0),
(23, 1, '2015-08-24 15:52:34', '2015-08-24 15:52:34', '', 'Tin Tức', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2015-08-24 15:52:34', '2015-08-24 15:52:34', '', 22, 'http://localhost/shop_quan/source/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-08-24 15:52:44', '2015-08-24 15:52:44', '', 'Liên hệ', '', 'publish', 'open', 'open', '', 'lien-he', '', '', '2015-08-24 15:52:44', '2015-08-24 15:52:44', '', 0, 'http://localhost/shop_quan/source/?page_id=24', 0, 'page', '', 0),
(25, 1, '2015-08-24 15:52:44', '2015-08-24 15:52:44', '', 'Liên hệ', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2015-08-24 15:52:44', '2015-08-24 15:52:44', '', 24, 'http://localhost/shop_quan/source/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2015-08-24 15:53:15', '2015-08-24 15:53:15', ' ', '', '', 'publish', 'open', 'open', '', '26', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=26', 23, 'nav_menu_item', '', 0),
(27, 1, '2015-08-24 15:53:15', '2015-08-24 15:53:15', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=27', 22, 'nav_menu_item', '', 0),
(29, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '29', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=29', 4, 'nav_menu_item', '', 0),
(30, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '30', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=30', 5, 'nav_menu_item', '', 0),
(31, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '31', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=31', 6, 'nav_menu_item', '', 0),
(32, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '32', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=32', 7, 'nav_menu_item', '', 0),
(33, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '33', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=33', 8, 'nav_menu_item', '', 0),
(34, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '34', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=34', 9, 'nav_menu_item', '', 0),
(35, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '35', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=35', 10, 'nav_menu_item', '', 0),
(36, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '36', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=36', 11, 'nav_menu_item', '', 0),
(37, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '37', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=37', 12, 'nav_menu_item', '', 0),
(38, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '38', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=38', 13, 'nav_menu_item', '', 0),
(39, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '39', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=39', 21, 'nav_menu_item', '', 0),
(40, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '40', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=40', 14, 'nav_menu_item', '', 0),
(41, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '41', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=41', 15, 'nav_menu_item', '', 0),
(42, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '42', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=42', 16, 'nav_menu_item', '', 0),
(43, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '43', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=43', 17, 'nav_menu_item', '', 0),
(44, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '44', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=44', 18, 'nav_menu_item', '', 0),
(45, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '45', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=45', 19, 'nav_menu_item', '', 0),
(47, 1, '2015-08-28 15:59:31', '2015-08-28 15:59:31', ' ', '', '', 'publish', 'open', 'open', '', '47', '', '', '2015-08-28 15:59:31', '2015-08-28 15:59:31', '', 0, 'http://localhost/shop_quan/source/?p=47', 20, 'nav_menu_item', '', 0),
(51, 1, '2015-08-29 04:45:04', '2015-08-29 04:45:04', '', 'Slide 1', '', 'publish', 'closed', 'closed', '', 'slide-1', '', '', '2015-08-29 04:55:18', '2015-08-29 04:55:18', '', 0, 'http://localhost/shop_quan/source/?post_type=slider&#038;p=51', 0, 'slider', '', 0),
(52, 1, '2015-08-29 04:46:44', '2015-08-29 04:46:44', '', 'slide01-w250', '', 'inherit', 'open', 'open', '', 'slide01-w250', '', '', '2015-08-29 04:46:44', '2015-08-29 04:46:44', '', 51, 'http://localhost/shop_quan/source/wp-content/uploads/2015/08/slide01-w250.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2015-08-29 04:47:00', '2015-08-29 04:47:00', '', 'Slide 2', '', 'publish', 'closed', 'closed', '', 'slide-2', '', '', '2015-08-29 04:55:50', '2015-08-29 04:55:50', '', 0, 'http://localhost/shop_quan/source/?post_type=slider&#038;p=53', 0, 'slider', '', 0),
(54, 1, '2015-08-29 04:46:59', '2015-08-29 04:46:59', '', 'slide02-w250', '', 'inherit', 'open', 'open', '', 'slide02-w250', '', '', '2015-08-29 04:46:59', '2015-08-29 04:46:59', '', 53, 'http://localhost/shop_quan/source/wp-content/uploads/2015/08/slide02-w250.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2015-08-29 04:55:03', '2015-08-29 04:55:03', '', 'Images for slider', '', 'publish', 'closed', 'closed', '', 'acf_images-for-slider', '', '', '2015-08-29 04:55:32', '2015-08-29 04:55:32', '', 0, 'http://localhost/shop_quan/source/?post_type=acf&#038;p=55', 0, 'acf', '', 0),
(129, 1, '2015-09-21 15:28:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-21 15:28:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop_quan/source/?p=129', 0, 'post', '', 0),
(57, 1, '2015-08-29 14:29:58', '2015-08-29 14:29:58', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .', 'Áo sơ mi kiểu', '', 'publish', 'open', 'open', '', 'ao-so-mi-kieu', '', '', '2015-09-14 17:20:59', '2015-09-14 17:20:59', '', 0, 'http://localhost/shop_quan/source/?p=57', 0, 'post', '', 0),
(58, 1, '2015-08-29 14:29:33', '2015-08-29 14:29:33', '', '__o_s___mi_ki____534cbc7e5df6c', '', 'inherit', 'open', 'open', '', '__o_s___mi_ki____534cbc7e5df6c', '', '', '2015-08-29 14:29:33', '2015-08-29 14:29:33', '', 57, 'http://localhost/shop_quan/source/wp-content/uploads/2015/08/o_s___mi_ki____534cbc7e5df6c.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2015-09-14 17:20:59', '2015-09-14 17:20:59', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .', 'Áo sơ mi kiểu', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-09-14 17:20:59', '2015-09-14 17:20:59', '', 57, 'http://localhost/shop_quan/source/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-08-29 14:29:58', '2015-08-29 14:29:58', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất : <strong>Công Ty TNHH TRANG THIẾT BỊ BHLĐ VIỆT AN/VN</strong>', 'Áo sơ mi kiểu', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-08-29 14:29:58', '2015-08-29 14:29:58', '', 57, 'http://localhost/shop_quan/source/57-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-08-29 14:31:23', '2015-08-29 14:31:23', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\n&nbsp;', 'ÁO SƠ MI KIỂU 006', '', 'publish', 'open', 'open', '', 'ao-so-mi-kieu-006', '', '', '2015-09-14 17:20:46', '2015-09-14 17:20:46', '', 0, 'http://localhost/shop_quan/source/?p=60', 0, 'post', '', 0),
(117, 1, '2015-09-14 17:20:46', '2015-09-14 17:20:46', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\n&nbsp;', 'ÁO SƠ MI KIỂU 006', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-09-14 17:20:46', '2015-09-14 17:20:46', '', 60, 'http://localhost/shop_quan/source/60-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-08-29 14:31:23', '2015-08-29 14:31:23', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ÁO SƠ MI KIỂU 006', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-08-29 14:31:23', '2015-08-29 14:31:23', '', 60, 'http://localhost/shop_quan/source/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-08-29 14:35:11', '2015-08-29 14:35:11', '', 'Display homepage', '', 'publish', 'closed', 'closed', '', 'acf_display-homepage', '', '', '2015-08-29 14:56:02', '2015-08-29 14:56:02', '', 0, 'http://localhost/shop_quan/source/?post_type=acf&#038;p=63', 0, 'acf', '', 0),
(64, 1, '2015-08-29 14:41:23', '2015-08-29 14:41:23', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ÁO SƠ MI KIỂU 006', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-08-29 14:41:23', '2015-08-29 14:41:23', '', 60, 'http://localhost/shop_quan/source/60-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-08-29 14:41:38', '2015-08-29 14:41:38', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất : <strong>Công Ty TNHH TRANG THIẾT BỊ BHLĐ VIỆT AN/VN</strong>', 'Áo sơ mi kiểu', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-08-29 14:41:38', '2015-08-29 14:41:38', '', 57, 'http://localhost/shop_quan/source/57-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-08-29 14:45:03', '2015-08-29 14:45:03', 'Tên sản phẩm : Đồng phục phục vụ\r\n\r\nChất liệu vải : vải Kate For, Vest  Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu đồng phục   thích hợp cho nhà hàng , khách sạn kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .', 'ĐỒNG PHỤC PHỤC VỤ 021', '', 'publish', 'open', 'open', '', 'dong-phuc-phuc-vu-021', '', '', '2015-09-21 15:56:42', '2015-09-21 15:56:42', '', 0, 'http://localhost/shop_quan/source/?p=66', 0, 'post', '', 0),
(67, 1, '2015-08-29 14:44:48', '2015-08-29 14:44:48', '', '__o_s___mi_ki____534cba9416d49', '', 'inherit', 'open', 'open', '', '__o_s___mi_ki____534cba9416d49', '', '', '2015-08-29 14:44:48', '2015-08-29 14:44:48', '', 66, 'http://localhost/shop_quan/source/wp-content/uploads/2015/08/o_s___mi_ki____534cba9416d49.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2015-09-14 17:20:33', '2015-09-14 17:20:33', 'Tên sản phẩm : Đồng phục phục vụ\r\n\r\nChất liệu vải : vải Kate For, Vest  Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu đồng phục   thích hợp cho nhà hàng , khách sạn kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .', 'ĐỒNG PHỤC PHỤC VỤ 021', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2015-09-14 17:20:33', '2015-09-14 17:20:33', '', 66, 'http://localhost/shop_quan/source/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2015-08-29 14:45:03', '2015-08-29 14:45:03', 'Tên sản phẩm : Đồng phục phục vụ\r\n\r\nChất liệu vải : vải Kate For, Vest  Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu đồng phục   thích hợp cho nhà hàng , khách sạn kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất :\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ĐỒNG PHỤC PHỤC VỤ 021', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2015-08-29 14:45:03', '2015-08-29 14:45:03', '', 66, 'http://localhost/shop_quan/source/66-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2015-08-29 14:54:11', '2015-08-29 14:54:11', 'Tên sản phẩm : Đồng phục phục vụ\r\n\r\nChất liệu vải : vải Kate For, Vest  Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu đồng phục   thích hợp cho nhà hàng , khách sạn kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất :\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ĐỒNG PHỤC PHỤC VỤ 021', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2015-08-29 14:54:11', '2015-08-29 14:54:11', '', 66, 'http://localhost/shop_quan/source/66-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2015-08-29 14:57:41', '2015-08-29 14:57:41', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ÁO SƠ MI KIỂU 006', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-08-29 14:57:41', '2015-08-29 14:57:41', '', 60, 'http://localhost/shop_quan/source/60-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2015-08-29 14:58:02', '2015-08-29 14:58:02', '', '__o_s___mi_ki____534cbc7e5df6c', '', 'inherit', 'open', 'open', '', '__o_s___mi_ki____534cbc7e5df6c-2', '', '', '2015-08-29 14:58:02', '2015-08-29 14:58:02', '', 60, 'http://localhost/shop_quan/source/wp-content/uploads/2015/08/o_s___mi_ki____534cbc7e5df6c1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2015-08-29 14:58:11', '2015-08-29 14:58:11', '', '_____ng_ph___c_p_5338d30677f33', '', 'inherit', 'open', 'open', '', '_____ng_ph___c_p_5338d30677f33', '', '', '2015-08-29 14:58:11', '2015-08-29 14:58:11', '', 60, 'http://localhost/shop_quan/source/wp-content/uploads/2015/08/ng_ph___c_p_5338d30677f33.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2015-08-29 14:58:24', '2015-08-29 14:58:24', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ÁO SƠ MI KIỂU 006', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-08-29 14:58:24', '2015-08-29 14:58:24', '', 60, 'http://localhost/shop_quan/source/60-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2015-08-29 15:31:02', '2015-08-29 15:31:02', 'Tên sản phẩm : Đồng phục phục vụ\r\n\r\nChất liệu vải : vải Kate For, Vest  Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu đồng phục   thích hợp cho nhà hàng , khách sạn kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất :\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ĐỒNG PHỤC PHỤC VỤ 021', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2015-08-29 15:31:02', '2015-08-29 15:31:02', '', 66, 'http://localhost/shop_quan/source/66-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-08-29 15:52:49', '2015-08-29 15:52:49', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất : <strong>Công Ty TNHH TRANG THIẾT BỊ BHLĐ VIỆT AN/VN</strong>', 'Áo sơ mi kiểu', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-08-29 15:52:49', '2015-08-29 15:52:49', '', 57, 'http://localhost/shop_quan/source/57-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2015-09-06 09:42:55', '2015-09-06 09:42:55', '', 'Sale', '', 'publish', 'closed', 'closed', '', 'acf_sale', '', '', '2015-09-06 09:56:39', '2015-09-06 09:56:39', '', 0, 'http://localhost/shop_quan/source/?post_type=acf&#038;p=83', 0, 'acf', '', 0),
(84, 1, '2015-09-06 09:57:07', '2015-09-06 09:57:07', 'Tên sản phẩm : Đồng phục phục vụ\r\n\r\nChất liệu vải : vải Kate For, Vest  Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu đồng phục   thích hợp cho nhà hàng , khách sạn kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất :\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ĐỒNG PHỤC PHỤC VỤ 021', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2015-09-06 09:57:07', '2015-09-06 09:57:07', '', 66, 'http://localhost/shop_quan/source/66-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-09-06 10:05:19', '2015-09-06 10:05:19', '', 'cart', '', 'publish', 'open', 'open', '', 'cart', '', '', '2015-09-06 10:05:19', '2015-09-06 10:05:19', '', 0, 'http://localhost/shop_quan/source/?page_id=85', 0, 'page', '', 0),
(86, 1, '2015-09-06 10:05:19', '2015-09-06 10:05:19', '', 'cart', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2015-09-06 10:05:19', '2015-09-06 10:05:19', '', 85, 'http://localhost/shop_quan/source/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-09-06 10:27:59', '2015-09-06 10:27:59', '', 'Giới thiệu', '', 'trash', 'open', 'open', '', 'gioi-thieu-2', '', '', '2015-09-09 15:34:34', '2015-09-09 15:34:34', '', 0, 'http://localhost/shop_quan/source/?page_id=87', 0, 'page', '', 0),
(88, 1, '2015-09-06 10:27:59', '2015-09-06 10:27:59', '', 'Giới thiệu', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2015-09-06 10:27:59', '2015-09-06 10:27:59', '', 87, 'http://localhost/shop_quan/source/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-09-06 10:29:05', '2015-09-06 10:29:05', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\n<strong>Công ty TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN\r\nĐịa chỉ: 29/6A Đường TRẦN THÁI TÔNG, PHƯỜNG 15 , QUẬN TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-083.8112036   Fax:083.8112036\r\n\r\nHotline : <a href="http://baohovietan.com/">0917.280.989</a> Ms Quỳnh Anh\r\n\r\n<a href="http://baohovietan.com/">0934.424.525</a> Ms Vân – <a href="http://baohovietan.com/">0912.280.989</a> Ms Nguyệt\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; sales.vietanco@gmail.com', 'ÁO SƠ MI KIỂU 006', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-09-06 10:29:05', '2015-09-06 10:29:05', '', 60, 'http://localhost/shop_quan/source/60-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2015-09-06 10:29:30', '2015-09-06 10:29:30', 'Tên sản phẩm : Áo sơ mi kiểu\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật,vải Voan, sọc, Jean....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.\r\n\r\nDáng rộng vừa, có nhiều Size lựa chọn.\r\n\r\nHình thức cắt may : May theo Size hoặc may đo theo yêu cầu.\r\n\r\nKiểu áo thích hợp cho văn phòng,công sở ,kiểu dáng tinh tế,lịch lãm...\r\n\r\nSizes S - 5XL\r\n\r\nSố lượng đặt hàng : không hạn chế\r\n\r\nThời gian giao hàng : 10-15 ngày .\r\n\r\nNhà sản xuất : <strong>Công Ty TNHH TRANG THIẾT BỊ BHLĐ VIỆT AN/VN</strong>', 'Áo sơ mi kiểu', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-09-06 10:29:30', '2015-09-06 10:29:30', '', 57, 'http://localhost/shop_quan/source/57-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2015-09-06 12:16:53', '2015-09-06 12:16:53', '', 'vietanlogo', '', 'inherit', 'open', 'open', '', 'vietanlogo', '', '', '2015-09-06 12:16:53', '2015-09-06 12:16:53', '', 0, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/vietanlogo.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2015-09-06 14:07:40', '2015-09-06 14:07:40', '', 'success', '', 'publish', 'open', 'open', '', 'success', '', '', '2015-09-06 14:07:40', '2015-09-06 14:07:40', '', 0, 'http://localhost/shop_quan/source/?page_id=92', 0, 'page', '', 0),
(93, 1, '2015-09-06 14:07:40', '2015-09-06 14:07:40', '', 'success', '', 'inherit', 'open', 'open', '', '92-revision-v1', '', '', '2015-09-06 14:07:40', '2015-09-06 14:07:40', '', 92, 'http://localhost/shop_quan/source/92-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2015-09-19 15:57:38', '2015-09-19 15:57:38', '', 'show_image_in_imgtag', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag', '', '', '2015-09-19 15:57:38', '2015-09-19 15:57:38', '', 119, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2015-09-06 16:22:01', '2015-09-06 16:22:01', '', 'Máy ảnh mới giá tốt', '', 'publish', 'closed', 'closed', '', 'may-anh-moi-gia-tot', '', '', '2015-09-06 16:25:12', '2015-09-06 16:25:12', '', 0, 'http://localhost/shop_quan/source/?post_type=advertises&#038;p=98', 0, 'advertises', '', 0),
(99, 1, '2015-09-06 16:23:40', '2015-09-06 16:23:40', '', 'banner-1-1', '', 'inherit', 'open', 'open', '', 'banner-1-1', '', '', '2015-09-06 16:23:40', '2015-09-06 16:23:40', '', 98, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/banner-1-1.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2015-09-07 16:16:30', '2015-09-07 16:16:30', '', 'search', '', 'publish', 'open', 'open', '', 'search', '', '', '2015-09-07 16:16:30', '2015-09-07 16:16:30', '', 0, 'http://localhost/shop_quan/source/?page_id=101', 0, 'page', '', 0),
(102, 1, '2015-09-07 16:16:30', '2015-09-07 16:16:30', '', 'search', '', 'inherit', 'open', 'open', '', '101-revision-v1', '', '', '2015-09-07 16:16:30', '2015-09-07 16:16:30', '', 101, 'http://localhost/shop_quan/source/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-09-07 16:43:02', '2015-09-07 16:43:02', '<header>\n<h1 class="title"><a title="Đôi nét về chúng tôi" href="http://baohovietan.com/doi-net-ve-chung-toi.html">ĐÔI NÉT VỀ CHÚNG TÔI</a></h1>\n</header>\n<div class="content clearfix">\n<div>\n\nWebsite: www.baohovietan.com ( là website nằm trong hệ thống của CTy. TNHH Bảo Hộ Lao Động Việt An)\n\nCÔNG TY TNHH TRANG THIẾT BỊ BHLĐ VIỆT AN: là một trong những nhà cung cấp trang thiết bị BHLĐ hàng đầu về bảo vệ cá nhân và các thiết bị an toàn tại Việt Nam.\n\nvới sứ mệnh: xây dựng một môi trường làm việc an toàn và lành mạnh để tạo năng suất lao động tối đa thông qua các sản phẩm và dịch vụ chất lượng của chúng tôi.\n\nCông ty cung cấp một lượng lớn các dịch vụ bao gồm cả tư vấn, giới thiệu giải pháp, liên hệ, cung ứng và sản xuất. Những nổ lực cuả chúng tôi nhằm mục đích mang đến cho khách hàng sự thoải mái, thỏa mãn về chăm sóc, cung cách phục vụ, chất lượng sản phẩm trong thời gian cực ngắn với giá cả ổn định mà khó nhà cung cấp nào khác có thể mang đến được. Sản phẩm chủ lực của công ty là quần áo bảo hộ, đồng phục và các sản phẩm may mặc khác. Với kho xưởng hiện đại, đội ngũ công nhân lành nghề cùng với phòng thiết kế chuyên nghiệp sẽ mang đến cho khách hàng những sự chọn lựa thoải mái nhất về mẫu mã, kiểu dáng, và chất liệu sản phẩm.\n\n</div>\n</div>', 'Giới thiệu', '', 'inherit', 'open', 'open', '', '15-autosave-v1', '', '', '2015-09-07 16:43:02', '2015-09-07 16:43:02', '', 15, 'http://localhost/shop_quan/source/15-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(104, 1, '2015-09-07 16:43:21', '2015-09-07 16:43:21', '<header>\r\n<h1 class="title"><a title="Đôi nét về chúng tôi" href="http://baohovietan.com/doi-net-ve-chung-toi.html">ĐÔI NÉT VỀ CHÚNG TÔI</a></h1>\r\n</header>\r\n<div class="content clearfix">\r\n<div>\r\n\r\nWebsite: www.baohovietan.com ( là website nằm trong hệ thống của CTy. TNHH Bảo Hộ Lao Động Việt An)\r\n\r\nCÔNG TY TNHH TRANG THIẾT BỊ BHLĐ VIỆT AN: là một trong những nhà cung cấp trang thiết bị BHLĐ hàng đầu về bảo vệ cá nhân và các thiết bị an toàn tại Việt Nam.\r\n\r\nVới sứ mệnh: xây dựng một môi trường làm việc an toàn và lành mạnh để tạo năng suất lao động tối đa thông qua các sản phẩm và dịch vụ chất lượng của chúng tôi.\r\n\r\nCông ty cung cấp một lượng lớn các dịch vụ bao gồm cả tư vấn, giới thiệu giải pháp, liên hệ, cung ứng và sản xuất. Những nổ lực cuả chúng tôi nhằm mục đích mang đến cho khách hàng sự thoải mái, thỏa mãn về chăm sóc, cung cách phục vụ, chất lượng sản phẩm trong thời gian cực ngắn với giá cả ổn định mà khó nhà cung cấp nào khác có thể mang đến được. Sản phẩm chủ lực của công ty là quần áo bảo hộ, đồng phục và các sản phẩm may mặc khác. Với kho xưởng hiện đại, đội ngũ công nhân lành nghề cùng với phòng thiết kế chuyên nghiệp sẽ mang đến cho khách hàng những sự chọn lựa thoải mái nhất về mẫu mã, kiểu dáng, và chất liệu sản phẩm.\r\n\r\nSong đồng thời<a href="http://baohotanthekim.com/upload/886/fck/2014_4_12_8_13_412.png" target="_blank"><img src="http://baohotanthekim.com/upload/886/fck/2014_4_12_8_13_412.png" alt="" width="200" height="101" border="0" /></a> cũng cung cấp các mặt hàng bảo hộ lao động khác như: nón, giày dép, khẩu trang, mặt nạ, kính … với mức giá hợp lý và sản phẩm chất lượng để phục vụ cho nhu cầu của khách hàng. Sản phẩm của chúng tôi được sử dụng trong nhiều nghành công nghiệp nặng, các công ty xây dựng, công trình giao thông vận tải, bưu điện, điện lực, các công ty sản xuất, chế biến thực phẩm, công ty bảo vệ…\r\n\r\nChính vì sự linh động, sáng suốt trong cung cách quản lý của ban giám đốc cùng sự sáng tạo, nhiệt tình hăng hái của nhân viên trong công ty đã góp phần không nhỏ để đưa công ty ngày một đi lên.\r\n\r\nĐến với <a href="http://baohotanthekim.com/upload/886/fck/2014_4_12_8_13_413.png" target="_blank"><img src="http://baohotanthekim.com/upload/886/fck/2014_4_12_8_13_413.png" alt="" width="200" height="101" border="0" /></a>quý khách sẽ hoàn toàn tin tưởng bởi dòng sản phẩm đạt tiêu chuẩn với chất lượng và dịch vụ tốt nhất!\r\n\r\nCÔNG TY TNHH TRANG THIẾT BỊ BẢO HỘ LAO ĐỘNG VIỆT AN - nhà sản xuất, phân phối, nhập khẩu các sản phẩm bảo hộ lao động, phòng cháy chữa cháy, thiết bị an toàn điện, thiết bị phòng sạch.Ngoài ra Cty Việt An là một trong những nhà xuất khẩu sản phẩm do chính Cty Việt An sản xuất sang thị trường các nước Lào, Campuchia, Myanma, Châu Phi.Những sản phẩm Việt An sản xuất đạt chất lượng cao phải kể đến là áo thun đồng phục, quần áo đồng phục, ủng cao su, dép nhựa.Chúng tôi tự hào với những thành quả chúng tôi có, và chúng tôi tin tưởng với dòng sản phẩm đạt chất lượng của chúng tôi sẽ mang đến sự hài lòng tuyệt đối cho khách hàng.Với tiêu chí, an toàn trong lao động chúng tôi luôn hy vọng những dòng sản phẩm của Việt An sẽ góp phần vào hiệu quả và năng suất lao động của quý Doanh Nghiệp.Chúng tôi tin tưởng vào năng lực của đội ngũ nhân viên trẻ,năng động đầy nhiệt huyệt cùng ban lãnh đạo giàu kinh nghiệm của Việt An sẽ cùng đồng hành và phát triển với quý Doanh Nghiệp.\r\n\r\nHiện nay, Cty Việt An đang phát triển mạnh kênh bán lẻ với hệ thống Webiste gồm :\r\n\r\n<a href="http://baohovietan.com/">baohovietan.com</a> ; <a href="http://baohotanthekim.com/">baohotanthekim.com</a> ; <a href="http://aothunttk.com/">aothunttk.com </a>; <a href="http://ungcaosu.com/">ungcaosu.com</a> ;\r\n\r\n<a href="http://quanaophongsach.com/">quanaophongsach.com</a> ;<a href="http://quanaochiunhiet.net/">quanaochiunhiet.net </a>; <a href="http://thamcachdien.net/">thamcachdien.net</a> ; <a href="http://gangtaybaoho.net/">gangtaybaoho.net</a>\r\n\r\n<strong>CÔNG TY TNHH </strong><strong>TRANG THIẾT BỊ BHLĐ </strong><strong>VIỆT AN</strong><strong>\r\nTrụ sở chính : 29/6A Đường TRẦN THÁI TÔNG, Phường 15, Quận TÂN BÌNH, TP.HCM</strong>\r\n\r\n<strong>ĐT: </strong><strong>: </strong>086.2731124-086.2970.118-0838.15.15.01-  Fax:0838.15.15.01\r\n\r\n0934.424.525 Ms Vân – Ms Nguyệt : 0912.280.989-0917.280.989 Ms Quỳnh Anh\r\n\r\nChat : yahoo : vietanco  - baohovietan\r\n\r\nSkype : Sales.vietan    - vietan.co\r\n\r\nWeb: vietansafety.com – baohovietan.com\r\n\r\nEmail : <a href="mailto:baohovietan@gmail.com">baohovietan@gmail.com</a> – <a href="mailto:vietanco82@gmail.com">vietanco82@gmail.com</a>; <a href="mailto:sales.vietanco@gmail.com">sales.vietanco@gmail.com</a>\r\n\r\nKính chúc quý khách nhiều sức khỏe - bình an và hạnh phúc!\r\n\r\n</div>\r\n</div>', 'Giới thiệu', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-09-07 16:43:21', '2015-09-07 16:43:21', '', 15, 'http://localhost/shop_quan/source/15-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2015-09-09 15:26:30', '2015-09-09 15:26:30', '<p>Tên của bạn (*)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Địa chỉ Email (*)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Tiêu đề:<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Thông điệp<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit "Gửi đi"]</p>\n[your-subject]\n[your-name] <binhdarkcu@gmail.com>\nGửi đến từ: [your-name] <[your-email]>\r\nTiêu đề: [your-subject]\r\n\r\nNội dung thông điệp:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Shopping Quan (http://localhost/shop_quan/source)\nbinhdarkcu@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nShopping Quan <binhdarkcu@gmail.com>\nNội dung thông điệp:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Shopping Quan (http://localhost/shop_quan/source)\n[your-email]\nReply-To: binhdarkcu@gmail.com\n\n\n\nThông điệp của bạn đã được chuyển đi thành công. Xin cảm ơn.\nFailed to send your message. Please try later or contact the administrator by another method.\nThông tin không hợp lệ. Xin hãy kiểm tra lại các ô thông tin và gửi lại.\nFailed to send your message. Please try later or contact the administrator by another method.\nXin hãy chấp nhận các điều khoản để tiếp tục.\nLàm ơn điền đầy đủ thông tin\nThis input is too long.\nThis input is too short.\nBạn đã nhập sai mã CAPTCHA.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nĐịa chỉ Email không hợp lệ.\nURL seems invalid.\nTelephone number seems invalid.\nĐáp án cho câu hỏi không đúng.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nKhông tải được file lên.\nLoại file này không được hỗ trợ.\nFile bạn định tải quá lớn.\nKhông tải được file lên.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2015-09-09 15:46:45', '2015-09-09 15:46:45', '', 0, 'http://localhost/shop_quan/source/?post_type=wpcf7_contact_form&#038;p=105', 0, 'wpcf7_contact_form', '', 0),
(106, 1, '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 'Twenty Fifteen Pattern', '', 'publish', 'closed', 'closed', '', 'twenty-fifteen-pattern', '', '', '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 0, 'http://localhost/shop_quan/source/twenty-fifteen-pattern/', 0, 'cf7_style', '', 0),
(107, 1, '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 'Christmas Classic', '', 'publish', 'closed', 'closed', '', 'christmas-classic', '', '', '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 0, 'http://localhost/shop_quan/source/christmas-classic/', 0, 'cf7_style', '', 0),
(108, 1, '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 'Christmas Red', '', 'publish', 'closed', 'closed', '', 'christmas-red', '', '', '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 0, 'http://localhost/shop_quan/source/christmas-red/', 0, 'cf7_style', '', 0),
(109, 1, '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 'Christmas Simple', '', 'publish', 'closed', 'closed', '', 'christmas-simple', '', '', '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 0, 'http://localhost/shop_quan/source/christmas-simple/', 0, 'cf7_style', '', 0),
(110, 1, '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 'Valentine''s Day Classic', '', 'publish', 'closed', 'closed', '', 'valentines-day-classic', '', '', '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 0, 'http://localhost/shop_quan/source/valentines-day-classic/', 0, 'cf7_style', '', 0),
(111, 1, '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 'Valentine''s Day Roses', '', 'publish', 'closed', 'closed', '', 'valentines-day-roses', '', '', '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 0, 'http://localhost/shop_quan/source/valentines-day-roses/', 0, 'cf7_style', '', 0),
(112, 1, '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 'Valentine''s Day Birds', '', 'publish', 'closed', 'closed', '', 'valentines-day-birds', '', '', '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 0, 'http://localhost/shop_quan/source/valentines-day-birds/', 0, 'cf7_style', '', 0),
(113, 1, '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 'Valentine''s Day Blue Birds', '', 'publish', 'closed', 'closed', '', 'valentines-day-blue-birds', '', '', '2015-09-09 15:28:20', '2015-09-09 15:28:20', '', 0, 'http://localhost/shop_quan/source/valentines-day-blue-birds/', 0, 'cf7_style', '', 0),
(119, 1, '2015-09-19 15:54:43', '2015-09-19 15:54:43', 'Giảm giá 5%', 'Cuộn rào công trình 001', '', 'publish', 'closed', 'closed', '', 'cuon-rao-cong-trinh-001', '', '', '2015-09-19 16:16:12', '2015-09-19 16:16:12', '', 0, 'http://localhost/shop_quan/source/?post_type=three_product_home&#038;p=119', 0, 'three_product_home', '', 0),
(121, 1, '2015-09-19 15:59:36', '2015-09-19 15:59:36', 'Giảm giá 20%', 'Đồng phục phục vụ 006', '', 'publish', 'closed', 'closed', '', 'dong-phuc-phuc-vu-006', '', '', '2015-09-19 15:59:36', '2015-09-19 15:59:36', '', 0, 'http://localhost/shop_quan/source/?post_type=three_product_home&#038;p=121', 0, 'three_product_home', '', 0),
(122, 1, '2015-09-19 15:59:09', '2015-09-19 15:59:09', '', 'show_image_in_imgtag (1)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-1', '', '', '2015-09-19 15:59:09', '2015-09-19 15:59:09', '', 121, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2015-09-19 16:00:33', '2015-09-19 16:00:33', 'Giảm giá 10%', 'QUẦN ÁO ĐỒNG PHỤC', '', 'publish', 'closed', 'closed', '', 'quan-ao-dong-phuc', '', '', '2015-09-19 16:00:33', '2015-09-19 16:00:33', '', 0, 'http://localhost/shop_quan/source/?post_type=three_product_home&#038;p=123', 0, 'three_product_home', '', 0),
(124, 1, '2015-09-19 16:00:21', '2015-09-19 16:00:21', '', '_____NG_PH___C_Y_529ca308ae831', '', 'inherit', 'open', 'open', '', '_____ng_ph___c_y_529ca308ae831', '', '', '2015-09-19 16:00:21', '2015-09-19 16:00:21', '', 123, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/NG_PH___C_Y_529ca308ae831.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2015-09-19 16:33:44', '2015-09-19 16:33:44', 'baohotanthekim', 'Ms.Châu:0838.1120.36', '', 'publish', 'closed', 'closed', '', 'ms-chau0838-1120-36', '', '', '2015-09-19 16:33:44', '2015-09-19 16:33:44', '', 0, 'http://localhost/shop_quan/source/?post_type=support_online&#038;p=125', 0, 'support_online', '', 0),
(126, 1, '2015-09-19 16:34:04', '2015-09-19 16:34:04', 'baohovietan', 'Ms.Vân:086.273.1124', '', 'publish', 'closed', 'closed', '', 'ms-van086-273-1124', '', '', '2015-09-19 16:34:04', '2015-09-19 16:34:04', '', 0, 'http://localhost/shop_quan/source/?post_type=support_online&#038;p=126', 0, 'support_online', '', 0),
(127, 1, '2015-09-19 16:36:02', '2015-09-19 16:36:02', '', 'Bản đồ', '', 'publish', 'closed', 'closed', '', 'acf_ban-do', '', '', '2015-09-19 16:36:31', '2015-09-19 16:36:31', '', 0, 'http://localhost/shop_quan/source/?post_type=acf&#038;p=127', 10, 'acf', '', 0),
(128, 1, '2015-09-20 16:51:08', '2015-09-20 16:51:08', 'CẦN TÌM ĐẠI LÝ PHÂN PHỐI QUẦN ÁO CHỐNG CHÁY CHỊU NHIỆT CAO CẤP NHẬP KHẨU TỪ PHÁP.\r\n\r\nCẦN TÌM ĐẠI LÝ PHÂN PHỐI QUẦN ÁO CHỐNG CHÁY CHỊU NHIỆT CAO CẤP NHẬP KHẢU TỪ PHÁP.\r\nCông Ty TNHH TRANG THIẾT BỊ BẢO HỘ LAO ĐỘNG VIỆT AN – Nhà phân phối độc quyền các sản phảm vải chống cháy chịu nhiệt\r\nvải Dickson chất lượng cao được nhập khẩu trực tiếp từ Pháp với đầy đủ Chứng Chỉ Châu Âu.\r\n\r\nSản phẩm vải chống cháy cĐọc thêm', 'CẦN TÌM ĐẠI LÝ PHÂN PHỐI QUẦN ÁO CHỐNG CHÁY CHỊU NHIỆT CAO CẤP NHẬP KHẨU TỪ PHÁP.', '', 'publish', 'closed', 'closed', '', 'tin-tuc-01', '', '', '2015-09-21 16:04:14', '2015-09-21 16:04:14', '', 0, 'http://localhost/shop_quan/source/?post_type=hot_news&#038;p=128', 0, 'hot_news', '', 0),
(130, 1, '2015-09-21 16:01:43', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-09-21 16:01:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop_quan/source/?p=130', 0, 'post', '', 0),
(131, 1, '2015-09-21 16:04:10', '2015-09-21 16:04:10', '', 'c121d197da6300dc2a736a3f4314da88', '', 'inherit', 'open', 'open', '', 'c121d197da6300dc2a736a3f4314da88', '', '', '2015-09-21 16:04:10', '2015-09-21 16:04:10', '', 128, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/c121d197da6300dc2a736a3f4314da88.jpeg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2015-09-22 16:11:17', '2015-09-22 16:11:17', '', 'Tin tức', '', 'publish', 'open', 'open', '', 'tin-tuc-2', '', '', '2015-09-22 16:11:17', '2015-09-22 16:11:17', '', 0, 'http://localhost/shop_quan/source/?page_id=132', 0, 'page', '', 0),
(133, 1, '2015-09-22 16:11:17', '2015-09-22 16:11:17', '', 'Tin tức', '', 'inherit', 'open', 'open', '', '132-revision-v1', '', '', '2015-09-22 16:11:17', '2015-09-22 16:11:17', '', 132, 'http://localhost/shop_quan/source/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2015-09-24 15:32:40', '2015-09-24 15:32:40', '', 'ÁO SƠ MI NỮ 030', '', 'publish', 'open', 'open', '', 'ao-so-mi-nu-030', '', '', '2015-09-24 15:33:14', '2015-09-24 15:33:14', '', 0, 'http://localhost/shop_quan/source/?p=134', 0, 'post', '', 0),
(135, 1, '2015-09-24 15:32:40', '2015-09-24 15:32:40', '', 'ÁO SƠ MI NỮ 030', '', 'inherit', 'open', 'open', '', '134-revision-v1', '', '', '2015-09-24 15:32:40', '2015-09-24 15:32:40', '', 134, 'http://localhost/shop_quan/source/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2015-09-24 15:32:55', '2015-09-24 15:32:55', '', 'show_image_in_imgtag', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-2', '', '', '2015-09-24 15:32:55', '2015-09-24 15:32:55', '', 134, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag1.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2015-09-24 15:33:09', '2015-09-24 15:33:09', '', 'show_image_in_imgtag (1)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-1-2', '', '', '2015-09-24 15:33:09', '2015-09-24 15:33:09', '', 134, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2015-09-24 15:33:14', '2015-09-24 15:33:14', '', 'ÁO SƠ MI NỮ 030', '', 'inherit', 'open', 'open', '', '134-revision-v1', '', '', '2015-09-24 15:33:14', '2015-09-24 15:33:14', '', 134, 'http://localhost/shop_quan/source/134-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2015-09-24 15:33:53', '2015-09-24 15:33:53', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 022', '', 'publish', 'open', 'open', '', 'ao-so-mi-nu-022', '', '', '2015-09-24 16:34:35', '2015-09-24 16:34:35', '', 0, 'http://localhost/shop_quan/source/?p=139', 0, 'post', '', 0),
(140, 1, '2015-09-24 15:33:44', '2015-09-24 15:33:44', '', 'show_image_in_imgtag (2)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-2-2', '', '', '2015-09-24 15:33:44', '2015-09-24 15:33:44', '', 139, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2015-09-24 15:33:53', '2015-09-24 15:33:53', '', 'ÁO SƠ MI NỮ 022', '', 'inherit', 'open', 'open', '', '139-revision-v1', '', '', '2015-09-24 15:33:53', '2015-09-24 15:33:53', '', 139, 'http://localhost/shop_quan/source/139-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2015-09-24 15:34:47', '2015-09-24 15:34:47', '', 'ÁO SƠ MI NỮ 023', '', 'publish', 'open', 'open', '', 'ao-so-mi-nu-023', '', '', '2015-09-24 15:34:47', '2015-09-24 15:34:47', '', 0, 'http://localhost/shop_quan/source/?p=142', 0, 'post', '', 0),
(143, 1, '2015-09-24 15:34:35', '2015-09-24 15:34:35', '', 'show_image_in_imgtag (3)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-3', '', '', '2015-09-24 15:34:35', '2015-09-24 15:34:35', '', 142, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2015-09-24 15:34:47', '2015-09-24 15:34:47', '', 'ÁO SƠ MI NỮ 023', '', 'inherit', 'open', 'open', '', '142-revision-v1', '', '', '2015-09-24 15:34:47', '2015-09-24 15:34:47', '', 142, 'http://localhost/shop_quan/source/142-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2015-09-24 15:35:23', '2015-09-24 15:35:23', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 007', '', 'publish', 'open', 'open', '', 'ao-so-mi-nu-007', '', '', '2015-09-24 16:34:28', '2015-09-24 16:34:28', '', 0, 'http://localhost/shop_quan/source/?p=145', 0, 'post', '', 0),
(146, 1, '2015-09-24 15:35:14', '2015-09-24 15:35:14', '', 'show_image_in_imgtag (4)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-4', '', '', '2015-09-24 15:35:14', '2015-09-24 15:35:14', '', 145, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2015-09-24 15:35:23', '2015-09-24 15:35:23', '', 'ÁO SƠ MI NỮ 007', '', 'inherit', 'open', 'open', '', '145-revision-v1', '', '', '2015-09-24 15:35:23', '2015-09-24 15:35:23', '', 145, 'http://localhost/shop_quan/source/145-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2015-09-24 15:36:18', '2015-09-24 15:36:18', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 008', '', 'publish', 'open', 'open', '', 'ao-so-mi-nu-008', '', '', '2015-09-24 16:34:17', '2015-09-24 16:34:17', '', 0, 'http://localhost/shop_quan/source/?p=148', 0, 'post', '', 0),
(149, 1, '2015-09-24 15:36:11', '2015-09-24 15:36:11', '', 'show_image_in_imgtag (5)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-5', '', '', '2015-09-24 15:36:11', '2015-09-24 15:36:11', '', 148, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2015-09-24 15:36:18', '2015-09-24 15:36:18', '', 'ÁO SƠ MI NỮ 008', '', 'inherit', 'open', 'open', '', '148-revision-v1', '', '', '2015-09-24 15:36:18', '2015-09-24 15:36:18', '', 148, 'http://localhost/shop_quan/source/148-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2015-09-24 15:37:00', '2015-09-24 15:37:00', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 010', '', 'publish', 'open', 'open', '', 'ao-so-mi-nu-010', '', '', '2015-09-24 16:34:12', '2015-09-24 16:34:12', '', 0, 'http://localhost/shop_quan/source/?p=151', 0, 'post', '', 0),
(152, 1, '2015-09-24 15:36:38', '2015-09-24 15:36:38', '', 'show_image_in_imgtag (6)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-6', '', '', '2015-09-24 15:36:38', '2015-09-24 15:36:38', '', 151, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2015-09-24 15:37:00', '2015-09-24 15:37:00', '', 'ÁO SƠ MI NỮ 010', '', 'inherit', 'open', 'open', '', '151-revision-v1', '', '', '2015-09-24 15:37:00', '2015-09-24 15:37:00', '', 151, 'http://localhost/shop_quan/source/151-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2015-09-24 15:37:32', '2015-09-24 15:37:32', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 011', '', 'publish', 'open', 'open', '', 'ao-so-mi-nu-011', '', '', '2015-09-24 16:34:06', '2015-09-24 16:34:06', '', 0, 'http://localhost/shop_quan/source/?p=154', 0, 'post', '', 0),
(155, 1, '2015-09-24 15:37:26', '2015-09-24 15:37:26', '', 'show_image_in_imgtag (7)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-7', '', '', '2015-09-24 15:37:26', '2015-09-24 15:37:26', '', 154, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2015-09-24 15:37:32', '2015-09-24 15:37:32', '', 'ÁO SƠ MI NỮ 011', '', 'inherit', 'open', 'open', '', '154-revision-v1', '', '', '2015-09-24 15:37:32', '2015-09-24 15:37:32', '', 154, 'http://localhost/shop_quan/source/154-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2015-09-24 15:38:15', '2015-09-24 15:38:15', '<blockquote>Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.</blockquote>', 'ÁO SƠ MI NỮ 035', '', 'publish', 'open', 'open', '', 'ao-so-mi-nu-035', '', '', '2015-09-24 16:33:59', '2015-09-24 16:33:59', '', 0, 'http://localhost/shop_quan/source/?p=157', 0, 'post', '', 0),
(158, 1, '2015-09-24 15:38:07', '2015-09-24 15:38:07', '', 'show_image_in_imgtag (8)', '', 'inherit', 'open', 'open', '', 'show_image_in_imgtag-8', '', '', '2015-09-24 15:38:07', '2015-09-24 15:38:07', '', 157, 'http://localhost/shop_quan/source/wp-content/uploads/2015/09/show_image_in_imgtag-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2015-09-24 15:38:15', '2015-09-24 15:38:15', '', 'ÁO SƠ MI NỮ 035', '', 'inherit', 'open', 'open', '', '157-revision-v1', '', '', '2015-09-24 15:38:15', '2015-09-24 15:38:15', '', 157, 'http://localhost/shop_quan/source/157-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2015-09-24 16:33:59', '2015-09-24 16:33:59', '<blockquote>Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.</blockquote>', 'ÁO SƠ MI NỮ 035', '', 'inherit', 'open', 'open', '', '157-revision-v1', '', '', '2015-09-24 16:33:59', '2015-09-24 16:33:59', '', 157, 'http://localhost/shop_quan/source/157-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2015-09-24 16:34:06', '2015-09-24 16:34:06', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 011', '', 'inherit', 'open', 'open', '', '154-revision-v1', '', '', '2015-09-24 16:34:06', '2015-09-24 16:34:06', '', 154, 'http://localhost/shop_quan/source/154-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2015-09-24 16:34:12', '2015-09-24 16:34:12', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 010', '', 'inherit', 'open', 'open', '', '151-revision-v1', '', '', '2015-09-24 16:34:12', '2015-09-24 16:34:12', '', 151, 'http://localhost/shop_quan/source/151-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2015-09-24 16:34:17', '2015-09-24 16:34:17', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 008', '', 'inherit', 'open', 'open', '', '148-revision-v1', '', '', '2015-09-24 16:34:17', '2015-09-24 16:34:17', '', 148, 'http://localhost/shop_quan/source/148-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2015-09-24 16:34:28', '2015-09-24 16:34:28', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 007', '', 'inherit', 'open', 'open', '', '145-revision-v1', '', '', '2015-09-24 16:34:28', '2015-09-24 16:34:28', '', 145, 'http://localhost/shop_quan/source/145-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2015-09-24 16:34:35', '2015-09-24 16:34:35', 'Tên sản phẩm : Áo sơ mi nữ\r\n\r\nChất liệu vải : vải Kate For,Kate Ý,Mỹ,Nhật.....\r\n\r\nMàu sắc : có 24 màu theo Pantone màu.\r\n\r\nIn, thêu logo sắc nét, không phai màu.\r\n\r\nCắt hàng kỹ, may đẹp, bền chắc.', 'ÁO SƠ MI NỮ 022', '', 'inherit', 'open', 'open', '', '139-revision-v1', '', '', '2015-09-24 16:34:35', '2015-09-24 16:34:35', '', 139, 'http://localhost/shop_quan/source/139-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(2, 'menu_top', 'menu_top', 0),
(3, 'Bảo vệ đầu', 'bao-ve-dau', 0),
(4, 'Bảo vệ mắt – mặt', 'bao-ve-mat-mat', 0),
(5, 'Bảo vệ hô hấp', 'bao-ve-ho-hap', 0),
(6, 'Bảo vệ thính giác', 'bao-ve-thinh-giac', 0),
(7, 'Bảo vệ tay', 'bao-ve-tay', 0),
(8, 'Bảo vệ chân', 'bao-ve-chan', 0),
(9, 'Bảo vệ toàn thân', 'bao-ve-toan-than', 0),
(10, 'Bảo vệ trên cao', 'bao-ve-tren-cao', 0),
(11, 'Thiết bị cách điện', 'thiet-bi-cach-dien', 0),
(12, 'Thiết bị phòng sạch', 'thiet-bi-phong-sach', 0),
(13, 'An toàn sông nước', 'an-toan-song-nuoc', 0),
(14, 'P. cháy – chữa cháy', 'p-chay-chua-chay', 0),
(15, 'Quần áo đồng phục', 'quan-ao-dong-phuc', 0),
(16, 'Áo thun', 'ao-thun', 0),
(17, 'Vải sợi', 'vai-soi', 0),
(18, 'Phụ kiện may mặc', 'phu-kien-may-mac', 0),
(19, 'Dụng cụ thi công', 'dung-cu-thi-cong', 0),
(20, 'Các loại khác', 'cac-loai-khac', 0),
(21, 'Áo sơ mi kiểu', 'ao-so-mi-kieu', 0),
(22, 'Áo sơ mi nữ', 'ao-so-mi-nu', 0),
(23, 'dong phuc', 'dong-phuc', 0),
(24, 'do nam', 'do-nam', 0),
(25, 'do nu', 'do-nu', 0),
(26, 'cong so', 'cong-so', 0),
(27, 'the thao', 'the-thao', 0),
(28, 'viet an', 'viet-an', 0),
(29, 'ao so mi', 'ao-so-mi', 0),
(30, 'ao so mi trang', 'ao-so-mi-trang', 0),
(31, 'simple pattern style', 'simple-pattern-style', 0),
(32, 'christmas style', 'christmas-style', 0),
(33, 'valentine''s day style', 'valentines-day-style', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(20, 2, 0),
(4, 2, 0),
(98, 8, 0),
(60, 16, 0),
(57, 18, 0),
(19, 2, 0),
(27, 2, 0),
(26, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(47, 2, 0),
(39, 2, 0),
(60, 7, 0),
(66, 18, 0),
(66, 15, 0),
(66, 28, 0),
(66, 24, 0),
(60, 29, 0),
(60, 30, 0),
(60, 23, 0),
(57, 27, 0),
(57, 29, 0),
(57, 30, 0),
(106, 31, 0),
(107, 32, 0),
(108, 32, 0),
(109, 32, 0),
(110, 33, 0),
(111, 33, 0),
(112, 33, 0),
(113, 33, 0),
(139, 21, 0),
(134, 21, 0),
(134, 22, 0),
(139, 16, 0),
(154, 21, 0),
(142, 16, 0),
(142, 4, 0),
(145, 16, 0),
(145, 19, 0),
(148, 14, 0),
(148, 18, 0),
(148, 15, 0),
(151, 13, 0),
(151, 8, 0),
(151, 19, 0),
(154, 22, 0),
(154, 5, 0),
(154, 4, 0),
(157, 16, 0),
(157, 21, 0),
(157, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(2, 2, 'nav_menu', '', 0, 23),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 0),
(10, 10, 'category', '', 0, 0),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 0),
(13, 13, 'category', '', 0, 1),
(14, 14, 'category', '', 0, 1),
(15, 15, 'category', '', 0, 2),
(16, 16, 'category', '', 0, 5),
(17, 17, 'category', '', 0, 0),
(18, 18, 'category', '', 0, 3),
(19, 19, 'category', '', 0, 2),
(20, 20, 'category', '', 0, 0),
(21, 21, 'category', '', 8, 4),
(22, 22, 'category', '', 8, 3),
(23, 23, 'post_tag', '', 0, 1),
(24, 24, 'post_tag', '', 0, 1),
(25, 25, 'post_tag', '', 0, 0),
(26, 26, 'post_tag', '', 0, 0),
(27, 27, 'post_tag', '', 0, 1),
(28, 28, 'post_tag', '', 0, 1),
(29, 29, 'post_tag', '', 0, 2),
(30, 30, 'post_tag', '', 0, 2),
(31, 31, 'style_category', '', 0, 1),
(32, 32, 'style_category', '', 0, 3),
(33, 33, 'style_category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,aioseop_menu_220,aioseop_welcome_220'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"7ea4c50262a7055e0996ba7352d43a7e6e53f07e8c26c69efe1741272e2ce5e5";a:4:{s:10:"expiration";i:1443192795;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36";s:5:"login";i:1443019995;}s:64:"05dd7c0a194da4e14b9431d8818fac81b8ce2bb266069ac12434f8879e2527c7";a:4:{s:10:"expiration";i:1443281381;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36";s:5:"login";i:1443108581;}s:64:"1c59cdf3d787628e157ad8cc8b5b88c48d18af581d3c11ff2632f67470a5562a";a:4:{s:10:"expiration";i:1443360499;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36";s:5:"login";i:1443187699;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '129'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1441522456');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2MUmxUtbSEKbdQSLN.B.TyKvy1ECx/', 'admin', 'binhdarkcu@gmail.com', '', '2015-07-22 06:30:48', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_acfsrf`
--
ALTER TABLE `wp_acfsrf`
  ADD UNIQUE KEY `acfsrf_id` (`acfsrf_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_orders`
--
ALTER TABLE `wp_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_acfsrf`
--
ALTER TABLE `wp_acfsrf`
  MODIFY `acfsrf_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=762;
--
-- AUTO_INCREMENT for table `wp_orders`
--
ALTER TABLE `wp_orders`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1214;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
