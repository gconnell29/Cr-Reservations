-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2016 at 01:20 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nystone_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_st`
--

CREATE TABLE `wp_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_cf7dbplugin_st`
--

INSERT INTO `wp_cf7dbplugin_st` (`submit_time`) VALUES
('1451939312.5491'),
('1452027744.2229');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_submits`
--

CREATE TABLE `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_cf7dbplugin_submits`
--

INSERT INTO `wp_cf7dbplugin_submits` (`submit_time`, `form_name`, `field_name`, `field_value`, `field_order`, `file`) VALUES
('1451939312.5491', 'Contact', 'your-name', 'qefrqef', 0, NULL),
('1451939312.5491', 'Contact', 'your-email', 'fqefq@test.com', 1, NULL),
('1451939312.5491', 'Contact', 'your-subject', 'fqf', 2, NULL),
('1451939312.5491', 'Contact', 'your-message', 'qfqwefq', 3, NULL),
('1451939312.5491', 'Contact', 'Submitted Login', 'admin', 9999, NULL),
('1451939312.5491', 'Contact', 'Submitted From', '127.0.0.1', 10000, NULL),
('1452027744.2229', 'Sample Request', 'your-name', 'test', 0, NULL),
('1452027744.2229', 'Sample Request', 'your-email', 'test@test.com', 1, NULL),
('1452027744.2229', 'Sample Request', 'your-subject', 'test position', 2, NULL),
('1452027744.2229', 'Sample Request', 'Submitted Login', 'admin', 9999, NULL),
('1452027744.2229', 'Sample Request', 'Submitted From', '127.0.0.1', 10000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-01-04 16:03:41', '2016-01-04 16:03:41', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=791 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localdev.nystone.com', 'yes'),
(2, 'home', 'http://localdev.nystone.com', 'yes'),
(3, 'blogname', 'NY Stone', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'sean@emagid.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:12:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:53:"custom-post-type-parents/custom-post-type-parents.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:33:"duplicate-post/duplicate-post.php";i:6;s:23:"ppress/profilepress.php";i:7;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:8;s:14:"types/wpcf.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:51:"wp-custom-post-template/wp-custom-post-template.php";i:12;s:28:"wysija-newsletters/index.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'nystone', 'yes'),
(40, 'stylesheet', 'nystone', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:53:"simple-custom-post-order/simple-custom-post-order.php";s:18:"scporder_uninstall";}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '5', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:150:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;s:18:"wysija_newsletters";b:1;s:18:"wysija_subscribers";b:1;s:13:"wysija_config";b:1;s:16:"wysija_theme_tab";b:1;s:16:"wysija_style_tab";b:1;s:22:"wysija_stats_dashboard";b:1;s:26:"wpcf_custom_post_type_view";b:1;s:26:"wpcf_custom_post_type_edit";b:1;s:33:"wpcf_custom_post_type_edit_others";b:1;s:25:"wpcf_custom_taxonomy_view";b:1;s:25:"wpcf_custom_taxonomy_edit";b:1;s:32:"wpcf_custom_taxonomy_edit_others";b:1;s:22:"wpcf_custom_field_view";b:1;s:22:"wpcf_custom_field_edit";b:1;s:29:"wpcf_custom_field_edit_others";b:1;s:25:"wpcf_user_meta_field_view";b:1;s:25:"wpcf_user_meta_field_edit";b:1;s:32:"wpcf_user_meta_field_edit_others";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:13:"widget-area-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"widget-area-2";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:10:{i:1452039856;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1452053021;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1452057677;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1452065040;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1452096229;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1452098003;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1452100877;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1452124800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454371200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(108, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.4.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.4-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.4";s:7:"version";s:3:"4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1452029537;s:15:"version_checked";s:3:"4.4";s:12:"translations";a:0:{}}', 'yes'),
(113, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1452029538;s:7:"checked";a:1:{s:7:"nystone";s:5:"1.4.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(115, '_site_transient_timeout_browser_cc68390591d59bd53f95d5d9fa636458', '1452528229', 'yes'),
(116, '_site_transient_browser_cc68390591d59bd53f95d5d9fa636458', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"45.0.2454.85";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(122, 'can_compress_scripts', '1', 'yes'),
(131, '_transient_timeout_plugin_slugs', '1452115967', 'no'),
(132, '_transient_plugin_slugs', 'a:14:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:4;s:53:"custom-post-type-parents/custom-post-type-parents.php";i:5;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:6;s:33:"duplicate-post/duplicate-post.php";i:7;s:9:"hello.php";i:8;s:28:"wysija-newsletters/index.php";i:9;s:23:"ppress/profilepress.php";i:10;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:11;s:14:"types/wpcf.php";i:12;s:27:"woocommerce/woocommerce.php";i:13;s:51:"wp-custom-post-template/wp-custom-post-template.php";}', 'no'),
(136, '_transient_twentysixteen_categories', '1', 'yes'),
(137, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1451924242;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(138, 'current_theme', 'NY Stone', 'yes'),
(139, 'theme_mods_nystone', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:11:"footer-menu";i:3;}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(153, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.3.1";}', 'yes'),
(154, 'recently_activated', 'a:2:{s:70:"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php";i:1452029553;s:19:"catalog/catalog.php";i:1452009688;}', 'yes'),
(157, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(158, 'CF7DBPlugin__version', '2.9.13', 'yes'),
(159, 'CF7DBPlugin__installed', '1', 'yes'),
(166, 'acf_version', '4.4.4', 'yes'),
(167, 'cptui_post_types', 'a:4:{s:7:"sliders";a:23:{s:4:"name";s:7:"sliders";s:5:"label";s:7:"Sliders";s:14:"singular_label";s:0:"";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:0:{}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:8:"showroom";a:23:{s:4:"name";s:8:"showroom";s:5:"label";s:8:"Showroom";s:14:"singular_label";s:0:"";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:0:{}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:10:"warehouses";a:23:{s:4:"name";s:10:"warehouses";s:5:"label";s:10:"Warehouses";s:14:"singular_label";s:0:"";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:0:{}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:8:"products";a:23:{s:4:"name";s:8:"products";s:5:"label";s:8:"Products";s:14:"singular_label";s:7:"Product";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:4:"true";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:0:{}s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:8:"post_tag";}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(171, 'duplicate_post_copyexcerpt', '1', 'yes'),
(172, 'duplicate_post_copyattachments', '0', 'yes'),
(173, 'duplicate_post_copychildren', '0', 'yes'),
(174, 'duplicate_post_copystatus', '0', 'yes'),
(175, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(176, 'duplicate_post_show_row', '1', 'yes'),
(177, 'duplicate_post_show_adminbar', '1', 'yes'),
(178, 'duplicate_post_show_submitbox', '1', 'yes'),
(179, 'duplicate_post_version', '2.6', 'yes'),
(182, 'scporder_install', '1', 'yes'),
(183, 'scporder_options', 'a:2:{s:7:"objects";a:6:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:7:"sliders";i:3;s:8:"showroom";i:4;s:10:"warehouses";i:5;s:11:"html5-blank";}s:4:"tags";s:0:"";}', 'yes'),
(185, 'widget_wysija', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(186, 'wysija_post_type_updated', '1451942516', 'yes'),
(187, 'wysija_post_type_created', '1451942516', 'yes'),
(189, 'installation_step', '16', 'yes'),
(190, 'wysija', 'YToxNzp7czo5OiJmcm9tX25hbWUiO3M6NToiYWRtaW4iO3M6MTI6InJlcGx5dG9fbmFtZSI7czo1OiJhZG1pbiI7czoxNToiZW1haWxzX25vdGlmaWVkIjtzOjE1OiJzZWFuQGVtYWdpZC5jb20iO3M6MTA6ImZyb21fZW1haWwiO3M6MjU6ImluZm9AbG9jYWxkZXYubnlzdG9uZS5jb20iO3M6MTM6InJlcGx5dG9fZW1haWwiO3M6MjU6ImluZm9AbG9jYWxkZXYubnlzdG9uZS5jb20iO3M6MTU6ImRlZmF1bHRfbGlzdF9pZCI7aToxO3M6MTc6InRvdGFsX3N1YnNjcmliZXJzIjtzOjE6IjEiO3M6MTY6ImltcG9ydHdwX2xpc3RfaWQiO2k6MjtzOjE4OiJjb25maXJtX2VtYWlsX2xpbmsiO2k6MTQzO3M6MTI6InVwbG9hZGZvbGRlciI7czo2MDoiL0FwcGxpY2F0aW9ucy9NQU1QL2h0ZG9jcy9ueXN0b25lL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvIjtzOjk6InVwbG9hZHVybCI7czo1NDoiaHR0cDovL2xvY2FsZGV2Lm55c3RvbmUuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvIjtzOjE2OiJjb25maXJtX2VtYWlsX2lkIjtpOjI7czo5OiJpbnN0YWxsZWQiO2I6MTtzOjIwOiJtYW5hZ2Vfc3Vic2NyaXB0aW9ucyI7YjoxO3M6MTQ6Imluc3RhbGxlZF90aW1lIjtpOjE0NTE5NDI1MjA7czoxNzoid3lzaWphX2RiX3ZlcnNpb24iO3M6NjoiMi42LjE5IjtzOjExOiJka2ltX2RvbWFpbiI7czoyMDoibG9jYWxkZXYubnlzdG9uZS5jb20iO30=', 'yes'),
(192, 'wysija_reinstall', '0', 'no'),
(194, 'wysija_schedules', 'a:5:{s:5:"queue";a:3:{s:13:"next_schedule";i:1452041434;s:13:"prev_schedule";b:0;s:7:"running";b:0;}s:6:"bounce";a:3:{s:13:"next_schedule";i:1452028974;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:5:"daily";a:3:{s:13:"next_schedule";i:1452115412;s:13:"prev_schedule";b:0;s:7:"running";b:0;}s:6:"weekly";a:3:{s:13:"next_schedule";i:1452547374;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:7:"monthly";a:3:{s:13:"next_schedule";i:1454361774;s:13:"prev_schedule";i:0;s:7:"running";b:0;}}', 'yes'),
(200, 'wysija_check_pn', '1452037834.75', 'yes'),
(201, 'wysija_last_scheduled_check', '1452037834', 'yes'),
(202, 'wysija_last_php_cron_call', '1452039294', 'yes'),
(204, 'category_children', 'a:0:{}', 'yes'),
(217, 'wp_custom_post_template', 'post', 'yes'),
(271, 'cptui_taxonomies', 'a:1:{s:9:"inventory";a:14:{s:4:"name";s:9:"inventory";s:5:"label";s:9:"Inventory";s:14:"singular_label";s:0:"";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:6:"labels";a:15:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";}s:12:"object_types";a:1:{i:0;s:8:"products";}}}', 'yes'),
(278, 'widget_simple-section-nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'WPCF_VERSION', '1.8.11', 'no'),
(283, 'wpcf-version', '1.8.11', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(284, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(285, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(286, 'wpcf_users_options', '1', 'yes'),
(287, 'wpcf-custom-types', 'a:1:{s:7:"catalog";a:25:{s:6:"labels";a:12:{s:4:"name";s:8:"Catalogs";s:13:"singular_name";s:7:"Catalog";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:7:"catalog";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:16:"has_archive_slug";s:0:"";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";s:17:"post_relationship";a:1:{s:7:"belongs";a:1:{s:8:"products";s:1:"1";}}s:14:"wpcf-post-type";N;s:8:"_builtin";b:0;s:18:"_toolset_edit_last";i:1452012802;s:15:"_wpcf_author_id";i:1;}}', 'yes'),
(289, 'wpcf_post_relationship', 'a:1:{s:8:"products";a:1:{s:7:"catalog";a:0:{}}}', 'yes'),
(291, 'wpcf-custom-taxonomies', 'a:0:{}', 'yes'),
(292, '_wpcf_relationship_items_per_page_products_catalog', '9999999999999999', 'yes'),
(300, 'installer_repositories_with_theme', 'a:1:{i:0;s:7:"toolset";}', 'yes'),
(302, 'woocommerce_default_country', 'US:NY', 'yes'),
(303, 'woocommerce_allowed_countries', 'all', 'yes'),
(304, 'woocommerce_specific_allowed_countries', '', 'yes'),
(305, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(306, 'woocommerce_demo_store', 'no', 'yes'),
(307, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(308, 'woocommerce_currency', 'USD', 'yes'),
(309, 'woocommerce_currency_pos', 'left', 'yes'),
(310, 'woocommerce_price_thousand_sep', ',', 'yes'),
(311, 'woocommerce_price_decimal_sep', '.', 'yes'),
(312, 'woocommerce_price_num_decimals', '2', 'yes'),
(313, 'woocommerce_weight_unit', 'lbs', 'yes'),
(314, 'woocommerce_dimension_unit', 'in', 'yes'),
(315, 'woocommerce_enable_review_rating', 'yes', 'no'),
(316, 'woocommerce_review_rating_required', 'yes', 'no'),
(317, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(318, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(319, 'woocommerce_shop_page_id', '9', 'yes'),
(320, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(321, 'woocommerce_category_archive_display', 'subcategories', 'yes'),
(322, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(323, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(324, 'woocommerce_enable_ajax_add_to_cart', 'no', 'yes'),
(325, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(326, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(327, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(328, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(329, 'woocommerce_manage_stock', 'yes', 'yes'),
(330, 'woocommerce_hold_stock_minutes', '60', 'no'),
(331, 'woocommerce_notify_low_stock', 'yes', 'no'),
(332, 'woocommerce_notify_no_stock', 'yes', 'no'),
(333, 'woocommerce_stock_email_recipient', 'sean@emagid.com', 'no'),
(334, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(335, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(336, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(337, 'woocommerce_stock_format', '', 'yes'),
(338, 'woocommerce_file_download_method', 'force', 'no'),
(339, 'woocommerce_downloads_require_login', 'no', 'no'),
(340, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(341, 'woocommerce_calc_taxes', 'no', 'yes'),
(342, 'woocommerce_prices_include_tax', 'no', 'yes'),
(343, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(344, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(345, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(346, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(347, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(348, 'woocommerce_tax_display_cart', 'excl', 'no'),
(349, 'woocommerce_price_display_suffix', '', 'yes'),
(350, 'woocommerce_tax_total_display', 'itemized', 'no'),
(351, 'woocommerce_enable_coupons', 'yes', 'no'),
(352, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(353, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(354, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(355, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(356, 'woocommerce_cart_page_id', '196', 'yes'),
(357, 'woocommerce_checkout_page_id', '197', 'yes'),
(358, 'woocommerce_terms_page_id', '', 'no'),
(359, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(360, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(361, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(362, 'woocommerce_calc_shipping', 'no', 'yes'),
(363, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(364, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(365, 'woocommerce_shipping_method_format', '', 'no'),
(366, 'woocommerce_ship_to_destination', 'billing', 'no'),
(367, 'woocommerce_ship_to_countries', '', 'yes'),
(368, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(369, 'woocommerce_myaccount_page_id', '198', 'yes'),
(370, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(371, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(372, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(373, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(374, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(375, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(376, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(377, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(378, 'woocommerce_registration_generate_username', 'yes', 'no'),
(379, 'woocommerce_registration_generate_password', 'no', 'no'),
(380, 'woocommerce_email_from_name', 'NY Stone', 'no'),
(381, 'woocommerce_email_from_address', 'sean@emagid.com', 'no'),
(382, 'woocommerce_email_header_image', '', 'no'),
(383, 'woocommerce_email_footer_text', 'NY Stone - Powered by WooCommerce', 'no'),
(384, 'woocommerce_email_base_color', '#557da1', 'no'),
(385, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(386, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(387, 'woocommerce_email_text_color', '#505050', 'no'),
(388, 'woocommerce_api_enabled', 'yes', 'yes'),
(390, 'woocommerce_admin_notices', 'a:1:{i:1;s:13:"theme_support";}', 'yes'),
(393, 'woocommerce_db_version', '2.4.12', 'yes'),
(394, 'woocommerce_version', '2.4.12', 'yes'),
(396, 'woocommerce_language_pack_version', 'a:2:{i:0;s:6:"2.4.12";i:1;s:0:"";}', 'yes'),
(398, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(399, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(400, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(401, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(402, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(403, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(404, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(405, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(406, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(407, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(408, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(409, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(410, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(412, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(413, '_transient_timeout_geoip_127.0.0.1', '1452619295', 'no'),
(414, '_transient_geoip_127.0.0.1', '', 'no'),
(415, '_transient_timeout_external_ip_address_127.0.0.1', '1452619295', 'no'),
(416, '_transient_external_ip_address_127.0.0.1', '72.89.243.126', 'no'),
(417, '_transient_timeout_geoip_72.89.243.126', '1452619296', 'no'),
(418, '_transient_geoip_72.89.243.126', 'US', 'no'),
(419, 'woocommerce_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(420, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(421, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(422, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(423, '_transient_product_query-transient-version', '1452026796', 'yes'),
(424, '_transient_product-transient-version', '1452026796', 'yes'),
(427, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(449, 'product_cat_children', 'a:0:{}', 'yes'),
(466, 'catalog_options', '', 'yes'),
(467, 'image_options', '', 'yes'),
(625, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1452034695', 'yes'),
(626, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5624";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3532";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3468";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2988";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2714";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2197";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2159";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1991";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1944";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1928";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1919";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1875";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1767";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1576";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1503";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1481";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1388";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1287";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1254";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1241";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1132";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1057";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1027";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"977";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"934";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"893";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"872";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"868";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"863";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"858";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"841";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"802";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"762";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"731";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"730";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"727";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"722";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"720";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"719";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"712";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"703";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"689";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"677";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"672";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"650";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"649";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"636";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"632";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"628";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"619";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"601";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"595";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"584";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"584";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"581";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"573";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"571";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"567";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"565";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"556";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"544";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"534";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"526";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"516";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"513";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"506";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"500";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"497";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"493";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"492";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"470";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"470";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"459";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"453";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"452";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"450";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"430";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"424";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"420";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"415";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"411";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"409";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"409";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"400";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"399";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"397";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"397";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"394";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"392";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"385";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"384";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"383";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"379";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"378";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"374";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"373";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"373";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"371";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"368";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"368";}}', 'yes'),
(687, '_transient_timeout_wc_rating_count_2081452026796', '1454618805', 'no'),
(688, '_transient_wc_rating_count_2081452026796', 'a:0:{}', 'no'),
(689, '_transient_timeout_wc_review_count_2081452026796', '1454618805', 'no'),
(690, '_transient_wc_review_count_2081452026796', '0', 'no'),
(691, '_transient_timeout_wc_average_rating_2081452026796', '1454618805', 'no'),
(692, '_transient_wc_average_rating_2081452026796', '0', 'no'),
(693, '_transient_timeout_wc_related_4_2081452026796', '1454618805', 'no'),
(694, '_transient_wc_related_4_2081452026796', 'a:4:{i:0;s:3:"199";i:1;s:3:"200";i:2;s:3:"201";i:3;s:3:"202";}', 'no'),
(695, '_transient_timeout_wc_rating_count_2001452026796', '1454618806', 'no'),
(696, '_transient_wc_rating_count_2001452026796', 'a:0:{}', 'no'),
(697, '_transient_timeout_wc_average_rating_2001452026796', '1454618806', 'no'),
(698, '_transient_wc_average_rating_2001452026796', '0', 'no'),
(699, '_transient_timeout_wc_rating_count_2021452026796', '1454618806', 'no'),
(700, '_transient_wc_rating_count_2021452026796', 'a:0:{}', 'no'),
(701, '_transient_timeout_wc_average_rating_2021452026796', '1454618806', 'no'),
(702, '_transient_wc_average_rating_2021452026796', '0', 'no'),
(703, '_transient_timeout_wc_rating_count_2011452026796', '1454618806', 'no'),
(704, '_transient_wc_rating_count_2011452026796', 'a:0:{}', 'no'),
(705, '_transient_timeout_wc_average_rating_2011452026796', '1454618806', 'no'),
(706, '_transient_wc_average_rating_2011452026796', '0', 'no'),
(707, '_transient_timeout_wc_rating_count_1991452026796', '1454618806', 'no'),
(708, '_transient_wc_rating_count_1991452026796', 'a:0:{}', 'no'),
(709, '_transient_timeout_wc_average_rating_1991452026796', '1454618806', 'no'),
(710, '_transient_wc_average_rating_1991452026796', '0', 'no'),
(711, '_transient_timeout_wc_review_count_2021452026796', '1454619869', 'no'),
(712, '_transient_wc_review_count_2021452026796', '0', 'no'),
(713, '_transient_timeout_wc_related_4_2021452026796', '1454619869', 'no'),
(714, '_transient_wc_related_4_2021452026796', 'a:4:{i:0;s:3:"199";i:1;s:3:"200";i:2;s:3:"201";i:3;s:3:"203";}', 'no'),
(715, '_transient_timeout_wc_rating_count_2031452026796', '1454619869', 'no'),
(716, '_transient_wc_rating_count_2031452026796', 'a:0:{}', 'no'),
(717, '_transient_timeout_wc_average_rating_2031452026796', '1454619869', 'no'),
(718, '_transient_wc_average_rating_2031452026796', '0', 'no'),
(719, '_transient_timeout_wc_review_count_1991452026796', '1454619873', 'no'),
(720, '_transient_wc_review_count_1991452026796', '0', 'no'),
(721, '_transient_timeout_wc_related_4_1991452026796', '1454619874', 'no'),
(722, '_transient_wc_related_4_1991452026796', 'a:4:{i:0;s:3:"200";i:1;s:3:"201";i:2;s:3:"202";i:3;s:3:"203";}', 'no'),
(723, '_transient_timeout_wc_review_count_2001452026796', '1454619879', 'no'),
(724, '_transient_wc_review_count_2001452026796', '0', 'no'),
(725, '_transient_timeout_wc_related_4_2001452026796', '1454619879', 'no'),
(726, '_transient_wc_related_4_2001452026796', 'a:4:{i:0;s:3:"199";i:1;s:3:"201";i:2;s:3:"202";i:3;s:3:"203";}', 'no'),
(727, '_site_transient_timeout_theme_roots', '1452030357', 'yes'),
(728, '_site_transient_theme_roots', 'a:1:{s:7:"nystone";s:7:"/themes";}', 'yes'),
(731, '_transient_timeout_wc_uf_pid_5ad0a34e160d8998e4097161de3fe879', '1454620583', 'no'),
(732, '_transient_wc_uf_pid_5ad0a34e160d8998e4097161de3fe879', 'a:10:{i:0;i:208;i:1;i:207;i:2;i:206;i:3;i:205;i:4;i:204;i:5;i:203;i:6;i:202;i:7;i:201;i:8;i:200;i:9;i:199;}', 'no'),
(733, '_transient_timeout_wc_term_counts', '1454620584', 'no'),
(734, '_transient_wc_term_counts', 'a:10:{i:17;s:2:"10";i:19;s:1:"9";i:16;s:1:"8";i:22;s:1:"7";i:14;s:1:"6";i:20;s:1:"5";i:23;s:1:"4";i:18;s:1:"3";i:15;s:1:"2";i:21;s:1:"1";}', 'no'),
(735, '_transient_timeout_wc_uf_pid_ba9bbe96f084f065bf92313118c8ea49', '1454620586', 'no'),
(736, '_transient_wc_uf_pid_ba9bbe96f084f065bf92313118c8ea49', 'a:10:{i:0;i:208;i:1;i:207;i:2;i:206;i:3;i:205;i:4;i:204;i:5;i:203;i:6;i:202;i:7;i:201;i:8;i:200;i:9;i:199;}', 'no'),
(737, '_transient_timeout_wc_products_will_display_171452026796', '1454620586', 'no'),
(738, '_transient_wc_products_will_display_171452026796', '1', 'no'),
(739, '_transient_timeout_wc_rating_count_2041452026796', '1454620587', 'no'),
(740, '_transient_wc_rating_count_2041452026796', 'a:0:{}', 'no'),
(741, '_transient_timeout_wc_average_rating_2041452026796', '1454620587', 'no'),
(742, '_transient_wc_average_rating_2041452026796', '0', 'no'),
(743, '_transient_timeout_wc_rating_count_2061452026796', '1454620587', 'no'),
(744, '_transient_wc_rating_count_2061452026796', 'a:0:{}', 'no'),
(745, '_transient_timeout_wc_average_rating_2061452026796', '1454620587', 'no'),
(746, '_transient_wc_average_rating_2061452026796', '0', 'no'),
(747, '_transient_timeout_wc_rating_count_2071452026796', '1454620587', 'no'),
(748, '_transient_wc_rating_count_2071452026796', 'a:0:{}', 'no'),
(749, '_transient_timeout_wc_average_rating_2071452026796', '1454620587', 'no'),
(750, '_transient_wc_average_rating_2071452026796', '0', 'no'),
(751, '_transient_timeout_wc_rating_count_2051452026796', '1454620587', 'no'),
(752, '_transient_wc_rating_count_2051452026796', 'a:0:{}', 'no'),
(753, '_transient_timeout_wc_average_rating_2051452026796', '1454620587', 'no'),
(754, '_transient_wc_average_rating_2051452026796', '0', 'no'),
(755, '_transient_timeout_wc_uf_pid_73a0849329f22eea62dcd1407d1154bc', '1454620608', 'no'),
(756, '_transient_wc_uf_pid_73a0849329f22eea62dcd1407d1154bc', 'a:9:{i:0;i:207;i:1;i:206;i:2;i:205;i:3;i:204;i:4;i:203;i:5;i:202;i:6;i:201;i:7;i:200;i:8;i:199;}', 'no'),
(757, '_transient_timeout_wc_products_will_display_191452026796', '1454631544', 'no'),
(758, '_transient_wc_products_will_display_191452026796', '1', 'no'),
(759, '_transient_timeout_wc_review_count_2031452026796', '1454620610', 'no'),
(760, '_transient_wc_review_count_2031452026796', '0', 'no'),
(761, '_transient_timeout_wc_related_4_2031452026796', '1454620610', 'no'),
(762, '_transient_wc_related_4_2031452026796', 'a:4:{i:0;s:3:"199";i:1;s:3:"200";i:2;s:3:"201";i:3;s:3:"202";}', 'no'),
(765, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1452029544;s:7:"checked";a:15:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.4";s:19:"akismet/akismet.php";s:5:"3.1.5";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.3.1";s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";s:6:"2.9.13";s:53:"custom-post-type-parents/custom-post-type-parents.php";s:5:"1.1.2";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.1.3";s:33:"duplicate-post/duplicate-post.php";s:3:"2.6";s:9:"hello.php";s:3:"1.6";s:28:"wysija-newsletters/index.php";s:6:"2.6.19";s:23:"ppress/profilepress.php";s:5:"1.2.4";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:3:"2.3";s:14:"types/wpcf.php";s:6:"1.8.11";s:27:"woocommerce/woocommerce.php";s:6:"2.4.12";s:70:"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php";s:5:"1.3.5";s:51:"wp-custom-post-template/wp-custom-post-template.php";s:3:"1.0";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.7.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:14:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.4";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.4.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.3.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.3.1.zip";}s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";O:8:"stdClass":6:{s:2:"id";s:5:"16507";s:4:"slug";s:36:"contact-form-7-to-database-extension";s:6:"plugin";s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";s:11:"new_version";s:6:"2.9.13";s:3:"url";s:67:"https://wordpress.org/plugins/contact-form-7-to-database-extension/";s:7:"package";s:86:"https://downloads.wordpress.org/plugin/contact-form-7-to-database-extension.2.9.13.zip";}s:53:"custom-post-type-parents/custom-post-type-parents.php";O:8:"stdClass":7:{s:2:"id";s:5:"57324";s:4:"slug";s:24:"custom-post-type-parents";s:6:"plugin";s:53:"custom-post-type-parents/custom-post-type-parents.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:55:"https://wordpress.org/plugins/custom-post-type-parents/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/custom-post-type-parents.1.1.2.zip";s:14:"upgrade_notice";s:49:"Fix: memory issue infinitely calling constructor.";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":7:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.1.3";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.1.3.zip";s:14:"upgrade_notice";s:72:"Bumping WordPress compatibility version only. No other changes involved.";}s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":7:{s:2:"id";s:4:"1295";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:3:"2.6";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/duplicate-post.2.6.zip";s:14:"upgrade_notice";s:90:"PHP 5.4 (Strict Standards) compatible + Fixed possible XSS and SQL injections + other bugs";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:28:"wysija-newsletters/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"27505";s:4:"slug";s:18:"wysija-newsletters";s:6:"plugin";s:28:"wysija-newsletters/index.php";s:11:"new_version";s:6:"2.6.19";s:3:"url";s:49:"https://wordpress.org/plugins/wysija-newsletters/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/wysija-newsletters.2.6.19.zip";}s:23:"ppress/profilepress.php";O:8:"stdClass":6:{s:2:"id";s:5:"60598";s:4:"slug";s:6:"ppress";s:6:"plugin";s:23:"ppress/profilepress.php";s:11:"new_version";s:5:"1.2.4";s:3:"url";s:37:"https://wordpress.org/plugins/ppress/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/ppress.1.2.4.zip";}s:53:"simple-custom-post-order/simple-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"42644";s:4:"slug";s:24:"simple-custom-post-order";s:6:"plugin";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:11:"new_version";s:3:"2.3";s:3:"url";s:55:"https://wordpress.org/plugins/simple-custom-post-order/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/simple-custom-post-order.zip";}s:14:"types/wpcf.php";O:8:"stdClass":6:{s:2:"id";s:5:"24557";s:4:"slug";s:5:"types";s:6:"plugin";s:14:"types/wpcf.php";s:11:"new_version";s:6:"1.8.11";s:3:"url";s:36:"https://wordpress.org/plugins/types/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/types.1.8.11.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.4.12";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/woocommerce.2.4.12.zip";}s:70:"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"61796";s:4:"slug";s:34:"woocommerce-login-and-registration";s:6:"plugin";s:70:"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php";s:11:"new_version";s:5:"1.3.5";s:3:"url";s:65:"https://wordpress.org/plugins/woocommerce-login-and-registration/";s:7:"package";s:83:"https://downloads.wordpress.org/plugin/woocommerce-login-and-registration.1.3.5.zip";}s:51:"wp-custom-post-template/wp-custom-post-template.php";O:8:"stdClass":6:{s:2:"id";s:5:"49280";s:4:"slug";s:23:"wp-custom-post-template";s:6:"plugin";s:51:"wp-custom-post-template/wp-custom-post-template.php";s:11:"new_version";s:3:"1.0";s:3:"url";s:54:"https://wordpress.org/plugins/wp-custom-post-template/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/wp-custom-post-template.zip";}}}', 'yes'),
(766, 'pp_settings_data', 'a:5:{s:15:"set_log_out_url";s:17:"current_view_page";s:18:"set_login_redirect";s:9:"dashboard";s:13:"set_login_url";i:212;s:20:"set_registration_url";i:213;s:21:"set_lost_password_url";i:214;}', 'yes'),
(767, 'pp_plugin_lite_activated', 'true', 'yes'),
(769, 'pp_db_lite_ver', '3', 'yes'),
(772, 'account_page_options', '', 'yes'),
(773, 'account_endpoint_options', '', 'yes'),
(774, 'account_registration_options', '', 'yes'),
(777, '_site_transient_timeout_available_translations', '1452040711', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(778, '_site_transient_available_translations', 'a:72:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-30 08:58:25";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-12 10:15:45";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.4/ary.zip";s:3:"iso";a:2:{i:1;s:5:"ar_MA";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 20:53:51";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 08:50:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-16 05:09:40";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 16:27:03";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 16:20:56";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 22:48:20";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 14:19:21";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2016-01-03 15:02:45";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2016-01-04 21:25:27";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.4/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-30 01:21:40";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 13:34:17";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-15 11:52:35";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 04:39:48";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-06 23:10:59";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 10:23:11";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 12:35:15";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-09 13:19:37";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.2.5";s:7:"updated";s:19:"2015-10-29 16:32:18";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.5/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-29 19:19:47";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-23 00:46:01";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 17:35:10";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 05:14:35";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 21:19:15";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-23 06:49:15";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-09 02:16:19";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-22 14:45:38";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 13:47:35";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-12 11:44:09";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.8/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-09 18:10:01";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 05:11:43";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 22:05:31";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-12 18:07:25";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-21 16:17:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 00:20:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-21 08:04:30";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-25 07:46:19";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-09 07:35:25";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 20:07:24";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-15 05:49:00";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 10:01:09";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2016-01-01 12:07:02";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-14 12:19:44";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-19 13:20:56";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.8/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-10 18:05:56";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-30 22:40:18";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-09 18:41:28";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2016-01-02 00:04:31";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-30 10:37:54";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-07 09:13:24";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-09 09:09:51";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 23:28:56";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-08 03:22:55";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-17 23:12:27";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.8/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2016-01-03 22:04:41";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.4/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-27 09:19:03";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-11 18:51:41";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.4";s:7:"updated";s:19:"2015-12-12 22:55:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(779, 'WPLANG', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(786, 'rewrite_rules', 'a:348:{s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:11:"products/?$";s:27:"index.php?post_type=product";s:41:"products/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:36:"products/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:28:"products/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"html5-blank/?$";s:31:"index.php?post_type=html5-blank";s:44:"html5-blank/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=html5-blank&feed=$matches[1]";s:39:"html5-blank/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=html5-blank&feed=$matches[1]";s:31:"html5-blank/page/([0-9]{1,})/?$";s:49:"index.php?post_type=html5-blank&paged=$matches[1]";s:10:"catalog/?$";s:27:"index.php?post_type=catalog";s:40:"catalog/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=catalog&feed=$matches[1]";s:35:"catalog/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=catalog&feed=$matches[1]";s:27:"catalog/page/([0-9]{1,})/?$";s:45:"index.php?post_type=catalog&paged=$matches[1]";s:42:"wp-types-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"wp-types-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"wp-types-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"wp-types-group/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"wp-types-group/([^/]+)/embed/?$";s:47:"index.php?wp-types-group=$matches[1]&embed=true";s:35:"wp-types-group/([^/]+)/trackback/?$";s:41:"index.php?wp-types-group=$matches[1]&tb=1";s:43:"wp-types-group/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&paged=$matches[2]";s:50:"wp-types-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&cpage=$matches[2]";s:40:"wp-types-group/([^/]+)/wc-api(/(.*))?/?$";s:55:"index.php?wp-types-group=$matches[1]&wc-api=$matches[3]";s:46:"wp-types-group/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:57:"wp-types-group/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:39:"wp-types-group/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?wp-types-group=$matches[1]&page=$matches[2]";s:31:"wp-types-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"wp-types-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"wp-types-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"wp-types-group/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"wp-types-user-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"wp-types-user-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"wp-types-user-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"wp-types-user-group/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"wp-types-user-group/([^/]+)/embed/?$";s:52:"index.php?wp-types-user-group=$matches[1]&embed=true";s:40:"wp-types-user-group/([^/]+)/trackback/?$";s:46:"index.php?wp-types-user-group=$matches[1]&tb=1";s:48:"wp-types-user-group/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&paged=$matches[2]";s:55:"wp-types-user-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&cpage=$matches[2]";s:45:"wp-types-user-group/([^/]+)/wc-api(/(.*))?/?$";s:60:"index.php?wp-types-user-group=$matches[1]&wc-api=$matches[3]";s:51:"wp-types-user-group/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:62:"wp-types-user-group/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:44:"wp-types-user-group/([^/]+)(?:/([0-9]+))?/?$";s:58:"index.php?wp-types-user-group=$matches[1]&page=$matches[2]";s:36:"wp-types-user-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"wp-types-user-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"wp-types-user-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"wp-types-user-group/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:50:"inventory/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?inventory=$matches[1]&feed=$matches[2]";s:45:"inventory/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?inventory=$matches[1]&feed=$matches[2]";s:38:"inventory/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?inventory=$matches[1]&paged=$matches[2]";s:20:"inventory/([^/]+)/?$";s:31:"index.php?inventory=$matches[1]";s:35:"sliders/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"sliders/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"sliders/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"sliders/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"sliders/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"sliders/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"sliders/([^/]+)/embed/?$";s:40:"index.php?sliders=$matches[1]&embed=true";s:28:"sliders/([^/]+)/trackback/?$";s:34:"index.php?sliders=$matches[1]&tb=1";s:36:"sliders/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?sliders=$matches[1]&paged=$matches[2]";s:43:"sliders/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?sliders=$matches[1]&cpage=$matches[2]";s:33:"sliders/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?sliders=$matches[1]&wc-api=$matches[3]";s:39:"sliders/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"sliders/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"sliders/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?sliders=$matches[1]&page=$matches[2]";s:24:"sliders/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"sliders/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"sliders/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"sliders/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"sliders/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"sliders/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"showroom/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"showroom/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"showroom/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"showroom/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"showroom/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"showroom/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"showroom/([^/]+)/embed/?$";s:41:"index.php?showroom=$matches[1]&embed=true";s:29:"showroom/([^/]+)/trackback/?$";s:35:"index.php?showroom=$matches[1]&tb=1";s:37:"showroom/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?showroom=$matches[1]&paged=$matches[2]";s:44:"showroom/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?showroom=$matches[1]&cpage=$matches[2]";s:34:"showroom/([^/]+)/wc-api(/(.*))?/?$";s:49:"index.php?showroom=$matches[1]&wc-api=$matches[3]";s:40:"showroom/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"showroom/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"showroom/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?showroom=$matches[1]&page=$matches[2]";s:25:"showroom/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"showroom/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"showroom/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"showroom/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"showroom/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"showroom/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"warehouses/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"warehouses/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"warehouses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"warehouses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"warehouses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"warehouses/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"warehouses/([^/]+)/embed/?$";s:43:"index.php?warehouses=$matches[1]&embed=true";s:31:"warehouses/([^/]+)/trackback/?$";s:37:"index.php?warehouses=$matches[1]&tb=1";s:39:"warehouses/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?warehouses=$matches[1]&paged=$matches[2]";s:46:"warehouses/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?warehouses=$matches[1]&cpage=$matches[2]";s:36:"warehouses/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?warehouses=$matches[1]&wc-api=$matches[3]";s:42:"warehouses/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:53:"warehouses/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:35:"warehouses/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?warehouses=$matches[1]&page=$matches[2]";s:27:"warehouses/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"warehouses/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"warehouses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"warehouses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"warehouses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"warehouses/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"products/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"products/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"products/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"products/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"products/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"products/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"products/(.+?)/embed/?$";s:41:"index.php?products=$matches[1]&embed=true";s:27:"products/(.+?)/trackback/?$";s:35:"index.php?products=$matches[1]&tb=1";s:35:"products/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?products=$matches[1]&paged=$matches[2]";s:42:"products/(.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?products=$matches[1]&cpage=$matches[2]";s:32:"products/(.+?)/wc-api(/(.*))?/?$";s:49:"index.php?products=$matches[1]&wc-api=$matches[3]";s:38:"products/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"products/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:31:"products/(.+?)(?:/([0-9]+))?/?$";s:47:"index.php?products=$matches[1]&page=$matches[2]";s:37:"html5-blank/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"html5-blank/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"html5-blank/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"html5-blank/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"html5-blank/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"html5-blank/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"html5-blank/(.+?)/embed/?$";s:44:"index.php?html5-blank=$matches[1]&embed=true";s:30:"html5-blank/(.+?)/trackback/?$";s:38:"index.php?html5-blank=$matches[1]&tb=1";s:50:"html5-blank/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?html5-blank=$matches[1]&feed=$matches[2]";s:45:"html5-blank/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?html5-blank=$matches[1]&feed=$matches[2]";s:38:"html5-blank/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?html5-blank=$matches[1]&paged=$matches[2]";s:45:"html5-blank/(.+?)/comment-page-([0-9]{1,})/?$";s:51:"index.php?html5-blank=$matches[1]&cpage=$matches[2]";s:35:"html5-blank/(.+?)/wc-api(/(.*))?/?$";s:52:"index.php?html5-blank=$matches[1]&wc-api=$matches[3]";s:41:"html5-blank/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"html5-blank/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"html5-blank/(.+?)(?:/([0-9]+))?/?$";s:50:"index.php?html5-blank=$matches[1]&page=$matches[2]";s:35:"catalog/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"catalog/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"catalog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"catalog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"catalog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"catalog/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"catalog/([^/]+)/embed/?$";s:40:"index.php?catalog=$matches[1]&embed=true";s:28:"catalog/([^/]+)/trackback/?$";s:34:"index.php?catalog=$matches[1]&tb=1";s:48:"catalog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?catalog=$matches[1]&feed=$matches[2]";s:43:"catalog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?catalog=$matches[1]&feed=$matches[2]";s:36:"catalog/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?catalog=$matches[1]&paged=$matches[2]";s:43:"catalog/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?catalog=$matches[1]&cpage=$matches[2]";s:33:"catalog/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?catalog=$matches[1]&wc-api=$matches[3]";s:39:"catalog/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"catalog/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"catalog/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?catalog=$matches[1]&page=$matches[2]";s:24:"catalog/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"catalog/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"catalog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"catalog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"catalog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"catalog/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(787, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:5:"p=196";i:1;s:6:"/cart/";i:2;s:5:"p=197";i:3;s:10:"/checkout/";i:4;s:5:"p=198";i:5;s:12:"/my-account/";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=993 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 5, '_edit_last', '1'),
(5, 5, '_wp_page_template', 'default'),
(6, 5, '_edit_lock', '1451928275:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_wp_page_template', 'default'),
(9, 7, '_edit_lock', '1451943105:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_wp_page_template', 'default'),
(12, 9, '_edit_lock', '1451951177:1'),
(13, 11, '_edit_last', '1'),
(14, 11, '_edit_lock', '1451929241:1'),
(15, 11, '_wp_page_template', 'default'),
(16, 14, '_edit_last', '1'),
(17, 14, '_wp_page_template', 'default'),
(18, 14, '_edit_lock', '1451930414:1'),
(19, 16, '_edit_last', '1'),
(20, 16, '_wp_page_template', 'default'),
(21, 16, '_edit_lock', '1451930707:1'),
(25, 20, '_edit_last', '1'),
(26, 20, '_edit_lock', '1451931005:1'),
(27, 20, '_wp_page_template', 'default'),
(30, 22, '_edit_last', '1'),
(31, 22, '_wp_page_template', 'default'),
(32, 22, '_edit_lock', '1451931754:1'),
(33, 24, '_edit_last', '1'),
(34, 24, '_wp_page_template', 'default'),
(35, 24, '_edit_lock', '1452008532:1'),
(36, 26, '_edit_last', '1'),
(37, 26, '_edit_lock', '1452008031:1'),
(38, 26, '_wp_page_template', 'default'),
(39, 28, '_edit_last', '1'),
(40, 28, '_edit_lock', '1452008372:1'),
(41, 28, '_wp_page_template', 'default'),
(42, 30, '_edit_last', '1'),
(43, 30, '_edit_lock', '1451932897:1'),
(44, 30, '_wp_page_template', 'default'),
(45, 32, '_edit_last', '1'),
(46, 32, '_edit_lock', '1451933379:1'),
(47, 32, '_wp_page_template', 'default'),
(48, 34, '_menu_item_type', 'post_type'),
(49, 34, '_menu_item_menu_item_parent', '0'),
(50, 34, '_menu_item_object_id', '22'),
(51, 34, '_menu_item_object', 'page'),
(52, 34, '_menu_item_target', ''),
(53, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 34, '_menu_item_xfn', ''),
(55, 34, '_menu_item_url', ''),
(57, 35, '_menu_item_type', 'post_type'),
(58, 35, '_menu_item_menu_item_parent', '0'),
(59, 35, '_menu_item_object_id', '20'),
(60, 35, '_menu_item_object', 'page'),
(61, 35, '_menu_item_target', ''),
(62, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 35, '_menu_item_xfn', ''),
(64, 35, '_menu_item_url', ''),
(66, 36, '_menu_item_type', 'post_type'),
(67, 36, '_menu_item_menu_item_parent', '0'),
(68, 36, '_menu_item_object_id', '16'),
(69, 36, '_menu_item_object', 'page'),
(70, 36, '_menu_item_target', ''),
(71, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 36, '_menu_item_xfn', ''),
(73, 36, '_menu_item_url', ''),
(75, 37, '_menu_item_type', 'post_type'),
(76, 37, '_menu_item_menu_item_parent', '0'),
(77, 37, '_menu_item_object_id', '14'),
(78, 37, '_menu_item_object', 'page'),
(79, 37, '_menu_item_target', ''),
(80, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 37, '_menu_item_xfn', ''),
(82, 37, '_menu_item_url', ''),
(84, 38, '_menu_item_type', 'post_type'),
(85, 38, '_menu_item_menu_item_parent', '37'),
(86, 38, '_menu_item_object_id', '32'),
(87, 38, '_menu_item_object', 'page'),
(88, 38, '_menu_item_target', ''),
(89, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 38, '_menu_item_xfn', ''),
(91, 38, '_menu_item_url', ''),
(93, 39, '_menu_item_type', 'post_type'),
(94, 39, '_menu_item_menu_item_parent', '37'),
(95, 39, '_menu_item_object_id', '30'),
(96, 39, '_menu_item_object', 'page'),
(97, 39, '_menu_item_target', ''),
(98, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 39, '_menu_item_xfn', ''),
(100, 39, '_menu_item_url', ''),
(102, 40, '_menu_item_type', 'post_type'),
(103, 40, '_menu_item_menu_item_parent', '0'),
(104, 40, '_menu_item_object_id', '11'),
(105, 40, '_menu_item_object', 'page'),
(106, 40, '_menu_item_target', ''),
(107, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 40, '_menu_item_xfn', ''),
(109, 40, '_menu_item_url', ''),
(111, 41, '_menu_item_type', 'post_type'),
(112, 41, '_menu_item_menu_item_parent', '0'),
(113, 41, '_menu_item_object_id', '9'),
(114, 41, '_menu_item_object', 'page'),
(115, 41, '_menu_item_target', ''),
(116, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 41, '_menu_item_xfn', ''),
(118, 41, '_menu_item_url', ''),
(120, 42, '_menu_item_type', 'post_type'),
(121, 42, '_menu_item_menu_item_parent', '41'),
(122, 42, '_menu_item_object_id', '28'),
(123, 42, '_menu_item_object', 'page'),
(124, 42, '_menu_item_target', ''),
(125, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 42, '_menu_item_xfn', ''),
(127, 42, '_menu_item_url', ''),
(129, 43, '_menu_item_type', 'post_type'),
(130, 43, '_menu_item_menu_item_parent', '41'),
(131, 43, '_menu_item_object_id', '26'),
(132, 43, '_menu_item_object', 'page'),
(133, 43, '_menu_item_target', ''),
(134, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(135, 43, '_menu_item_xfn', ''),
(136, 43, '_menu_item_url', ''),
(138, 44, '_menu_item_type', 'post_type'),
(139, 44, '_menu_item_menu_item_parent', '41'),
(140, 44, '_menu_item_object_id', '24'),
(141, 44, '_menu_item_object', 'page'),
(142, 44, '_menu_item_target', ''),
(143, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(144, 44, '_menu_item_xfn', ''),
(145, 44, '_menu_item_url', ''),
(147, 45, '_menu_item_type', 'post_type'),
(148, 45, '_menu_item_menu_item_parent', '0'),
(149, 45, '_menu_item_object_id', '7'),
(150, 45, '_menu_item_object', 'page'),
(151, 45, '_menu_item_target', ''),
(152, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(153, 45, '_menu_item_xfn', ''),
(154, 45, '_menu_item_url', ''),
(156, 46, '_menu_item_type', 'custom'),
(157, 46, '_menu_item_menu_item_parent', '45'),
(158, 46, '_menu_item_object_id', '46'),
(159, 46, '_menu_item_object', 'custom'),
(160, 46, '_menu_item_target', ''),
(161, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 46, '_menu_item_xfn', ''),
(163, 46, '_menu_item_url', '/about#showroom'),
(165, 47, '_menu_item_type', 'custom'),
(166, 47, '_menu_item_menu_item_parent', '45'),
(167, 47, '_menu_item_object_id', '47'),
(168, 47, '_menu_item_object', 'custom'),
(169, 47, '_menu_item_target', ''),
(170, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(171, 47, '_menu_item_xfn', ''),
(172, 47, '_menu_item_url', '/about#warehouse'),
(174, 48, '_menu_item_type', 'custom'),
(175, 48, '_menu_item_menu_item_parent', '45'),
(176, 48, '_menu_item_object_id', '48'),
(177, 48, '_menu_item_object', 'custom'),
(178, 48, '_menu_item_target', ''),
(179, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(180, 48, '_menu_item_xfn', ''),
(181, 48, '_menu_item_url', '/about#whyus'),
(183, 49, '_menu_item_type', 'custom'),
(184, 49, '_menu_item_menu_item_parent', '45'),
(185, 49, '_menu_item_object_id', '49'),
(186, 49, '_menu_item_object', 'custom'),
(187, 49, '_menu_item_target', ''),
(188, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 49, '_menu_item_xfn', ''),
(190, 49, '_menu_item_url', '/about#press'),
(192, 50, '_menu_item_type', 'post_type'),
(193, 50, '_menu_item_menu_item_parent', '0'),
(194, 50, '_menu_item_object_id', '22'),
(195, 50, '_menu_item_object', 'page'),
(196, 50, '_menu_item_target', ''),
(197, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(198, 50, '_menu_item_xfn', ''),
(199, 50, '_menu_item_url', ''),
(201, 51, '_menu_item_type', 'post_type'),
(202, 51, '_menu_item_menu_item_parent', '0'),
(203, 51, '_menu_item_object_id', '32'),
(204, 51, '_menu_item_object', 'page'),
(205, 51, '_menu_item_target', ''),
(206, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(207, 51, '_menu_item_xfn', ''),
(208, 51, '_menu_item_url', ''),
(210, 52, '_menu_item_type', 'post_type'),
(211, 52, '_menu_item_menu_item_parent', '0'),
(212, 52, '_menu_item_object_id', '7'),
(213, 52, '_menu_item_object', 'page'),
(214, 52, '_menu_item_target', ''),
(215, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(216, 52, '_menu_item_xfn', ''),
(217, 52, '_menu_item_url', ''),
(219, 53, '_menu_item_type', 'post_type'),
(220, 53, '_menu_item_menu_item_parent', '0'),
(221, 53, '_menu_item_object_id', '20'),
(222, 53, '_menu_item_object', 'page'),
(223, 53, '_menu_item_target', ''),
(224, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(225, 53, '_menu_item_xfn', ''),
(226, 53, '_menu_item_url', ''),
(228, 54, '_menu_item_type', 'post_type'),
(229, 54, '_menu_item_menu_item_parent', '0'),
(230, 54, '_menu_item_object_id', '16'),
(231, 54, '_menu_item_object', 'page'),
(232, 54, '_menu_item_target', ''),
(233, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(234, 54, '_menu_item_xfn', ''),
(235, 54, '_menu_item_url', ''),
(237, 55, '_menu_item_type', 'post_type'),
(238, 55, '_menu_item_menu_item_parent', '0'),
(239, 55, '_menu_item_object_id', '5'),
(240, 55, '_menu_item_object', 'page'),
(241, 55, '_menu_item_target', ''),
(242, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(243, 55, '_menu_item_xfn', ''),
(244, 55, '_menu_item_url', ''),
(246, 56, '_menu_item_type', 'custom'),
(247, 56, '_menu_item_menu_item_parent', '37'),
(248, 56, '_menu_item_object_id', '56'),
(249, 56, '_menu_item_object', 'custom'),
(250, 56, '_menu_item_target', ''),
(251, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(252, 56, '_menu_item_xfn', ''),
(253, 56, '_menu_item_url', '/resources'),
(273, 59, '_edit_last', '1'),
(274, 59, '_edit_lock', '1451935530:1'),
(275, 59, '_wp_page_template', 'default'),
(276, 61, '_menu_item_type', 'post_type'),
(277, 61, '_menu_item_menu_item_parent', '37'),
(278, 61, '_menu_item_object_id', '59'),
(279, 61, '_menu_item_object', 'page'),
(280, 61, '_menu_item_target', ''),
(281, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(282, 61, '_menu_item_xfn', ''),
(283, 61, '_menu_item_url', ''),
(285, 62, '_edit_last', '1'),
(286, 62, '_edit_lock', '1451940595:1'),
(287, 62, '_wp_page_template', 'default'),
(288, 64, '_menu_item_type', 'post_type'),
(289, 64, '_menu_item_menu_item_parent', '37'),
(290, 64, '_menu_item_object_id', '62'),
(291, 64, '_menu_item_object', 'page'),
(292, 64, '_menu_item_target', ''),
(293, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(294, 64, '_menu_item_xfn', ''),
(295, 64, '_menu_item_url', ''),
(297, 65, '_form', '[text* your-name placeholder "Name"]\n\n[email* your-email placeholder "Email"]\n\n[text your-subject placeholder "Company"]\n\n[textarea your-message placeholder "Comment..."]\n\n[submit "Submit"]'),
(298, 65, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:44:"[your-name] <wordpress@localdev.nystone.com>";s:4:"body";s:173:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on NY Stone (http://localdev.nystone.com)";s:9:"recipient";s:15:"sean@emagid.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(299, 65, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:41:"NY Stone <wordpress@localdev.nystone.com>";s:4:"body";s:115:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on NY Stone (http://localdev.nystone.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:25:"Reply-To: sean@emagid.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(300, 65, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";}'),
(301, 65, '_additional_settings', ''),
(302, 65, '_locale', 'en_US'),
(303, 66, '_edit_last', '1'),
(304, 66, 'field_568addf91a363', 'a:11:{s:3:"key";s:19:"field_568addf91a363";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(305, 66, 'field_568ade2e1a364', 'a:14:{s:3:"key";s:19:"field_568ade2e1a364";s:5:"label";s:4:"Text";s:4:"name";s:4:"text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(306, 66, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"sliders";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(307, 66, 'position', 'normal'),
(308, 66, 'layout', 'no_box'),
(309, 66, 'hide_on_screen', ''),
(310, 66, '_edit_lock', '1451941311:1'),
(311, 67, '_edit_last', '1'),
(312, 67, '_edit_lock', '1451945972:1'),
(313, 68, '_wp_attached_file', '2016/01/about_hero.jpg'),
(314, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:22:"2016/01/about_hero.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"about_hero-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"about_hero-250x141.jpg";s:5:"width";i:250;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"about_hero-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"about_hero-700x394.jpg";s:5:"width";i:700;s:6:"height";i:394;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:21:"about_hero-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:22:"about_hero-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(315, 69, '_wp_attached_file', '2016/01/about_hero2.jpg'),
(316, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1030;s:4:"file";s:23:"2016/01/about_hero2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"about_hero2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"about_hero2-250x134.jpg";s:5:"width";i:250;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"about_hero2-768x412.jpg";s:5:"width";i:768;s:6:"height";i:412;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"about_hero2-700x376.jpg";s:5:"width";i:700;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:22:"about_hero2-120x64.jpg";s:5:"width";i:120;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:23:"about_hero2-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(317, 70, '_wp_attached_file', '2016/01/application_image_1.jpg'),
(318, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1930;s:6:"height";i:1080;s:4:"file";s:31:"2016/01/application_image_1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_1-250x140.jpg";s:5:"width";i:250;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"application_image_1-768x430.jpg";s:5:"width";i:768;s:6:"height";i:430;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"application_image_1-700x392.jpg";s:5:"width";i:700;s:6:"height";i:392;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:30:"application_image_1-120x67.jpg";s:5:"width";i:120;s:6:"height";i:67;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_1-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(319, 71, '_wp_attached_file', '2016/01/application_image_2.jpg'),
(320, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1924;s:6:"height";i:1094;s:4:"file";s:31:"2016/01/application_image_2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_2-250x142.jpg";s:5:"width";i:250;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"application_image_2-768x437.jpg";s:5:"width";i:768;s:6:"height";i:437;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"application_image_2-700x398.jpg";s:5:"width";i:700;s:6:"height";i:398;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:30:"application_image_2-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_2-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(321, 72, '_wp_attached_file', '2016/01/application_image_3.jpg'),
(322, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1928;s:6:"height";i:1088;s:4:"file";s:31:"2016/01/application_image_3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_3-250x141.jpg";s:5:"width";i:250;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"application_image_3-768x433.jpg";s:5:"width";i:768;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"application_image_3-700x395.jpg";s:5:"width";i:700;s:6:"height";i:395;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:30:"application_image_3-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_3-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(323, 73, '_wp_attached_file', '2016/01/application_image_4.jpg'),
(324, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:2400;s:4:"file";s:31:"2016/01/application_image_4.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_4-250x375.jpg";s:5:"width";i:250;s:6:"height";i:375;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"application_image_4-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"application_image_4-700x1050.jpg";s:5:"width";i:700;s:6:"height";i:1050;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"application_image_4-120x180.jpg";s:5:"width";i:120;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_4-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(325, 74, '_wp_attached_file', '2016/01/application_image_5.jpg'),
(326, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:1440;s:4:"file";s:31:"2016/01/application_image_5.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_5-250x375.jpg";s:5:"width";i:250;s:6:"height";i:375;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"application_image_5-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"application_image_5-700x1050.jpg";s:5:"width";i:700;s:6:"height";i:1050;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"application_image_5-120x180.jpg";s:5:"width";i:120;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_5-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(327, 75, '_wp_attached_file', '2016/01/application_image_6.jpg'),
(328, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:31:"2016/01/application_image_6.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_6-250x167.jpg";s:5:"width";i:250;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"application_image_6-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"application_image_6-700x467.jpg";s:5:"width";i:700;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:30:"application_image_6-120x80.jpg";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_6-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(329, 76, '_wp_attached_file', '2016/01/application_image_7.jpg'),
(330, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1200;s:4:"file";s:31:"2016/01/application_image_7.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_7-250x167.jpg";s:5:"width";i:250;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"application_image_7-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"application_image_7-700x467.jpg";s:5:"width";i:700;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:30:"application_image_7-120x80.jpg";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_7-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(331, 77, '_wp_attached_file', '2016/01/application_image_8.jpg'),
(332, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:668;s:6:"height";i:1080;s:4:"file";s:31:"2016/01/application_image_8.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_8-250x404.jpg";s:5:"width";i:250;s:6:"height";i:404;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"application_image_8-120x194.jpg";s:5:"width";i:120;s:6:"height";i:194;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_8-668x200.jpg";s:5:"width";i:668;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(333, 78, '_wp_attached_file', '2016/01/application_image_9.jpg'),
(334, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:761;s:6:"height";i:1082;s:4:"file";s:31:"2016/01/application_image_9.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"application_image_9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"application_image_9-250x355.jpg";s:5:"width";i:250;s:6:"height";i:355;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"application_image_9-700x995.jpg";s:5:"width";i:700;s:6:"height";i:995;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"application_image_9-120x171.jpg";s:5:"width";i:120;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"application_image_9-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(335, 79, '_wp_attached_file', '2016/01/fabrication_image.jpg'),
(336, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:907;s:6:"height";i:783;s:4:"file";s:29:"2016/01/fabrication_image.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"fabrication_image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"fabrication_image-250x216.jpg";s:5:"width";i:250;s:6:"height";i:216;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"fabrication_image-768x663.jpg";s:5:"width";i:768;s:6:"height";i:663;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"fabrication_image-700x604.jpg";s:5:"width";i:700;s:6:"height";i:604;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:29:"fabrication_image-120x104.jpg";s:5:"width";i:120;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:29:"fabrication_image-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(337, 80, '_wp_attached_file', '2016/01/favorite_material_1.png'),
(338, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:201;s:4:"file";s:31:"2016/01/favorite_material_1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"favorite_material_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:31:"favorite_material_1-120x119.png";s:5:"width";i:120;s:6:"height";i:119;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:31:"favorite_material_1-202x200.png";s:5:"width";i:202;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(339, 81, '_wp_attached_file', '2016/01/glass.png'),
(340, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:74;s:6:"height";i:54;s:4:"file";s:17:"2016/01/glass.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(341, 82, '_wp_attached_file', '2016/01/landing_background_2.jpg'),
(342, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1216;s:4:"file";s:32:"2016/01/landing_background_2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"landing_background_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"landing_background_2-250x158.jpg";s:5:"width";i:250;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"landing_background_2-768x486.jpg";s:5:"width";i:768;s:6:"height";i:486;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"landing_background_2-700x443.jpg";s:5:"width";i:700;s:6:"height";i:443;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"landing_background_2-120x76.jpg";s:5:"width";i:120;s:6:"height";i:76;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:32:"landing_background_2-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(343, 83, '_wp_attached_file', '2016/01/landing_background_3.jpg'),
(344, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1922;s:6:"height";i:1065;s:4:"file";s:32:"2016/01/landing_background_3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"landing_background_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"landing_background_3-250x139.jpg";s:5:"width";i:250;s:6:"height";i:139;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"landing_background_3-768x426.jpg";s:5:"width";i:768;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"landing_background_3-700x388.jpg";s:5:"width";i:700;s:6:"height";i:388;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"landing_background_3-120x66.jpg";s:5:"width";i:120;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:32:"landing_background_3-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(345, 84, '_wp_attached_file', '2016/01/landing_background_4.jpg'),
(346, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1033;s:4:"file";s:32:"2016/01/landing_background_4.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"landing_background_4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"landing_background_4-250x135.jpg";s:5:"width";i:250;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"landing_background_4-768x413.jpg";s:5:"width";i:768;s:6:"height";i:413;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"landing_background_4-700x377.jpg";s:5:"width";i:700;s:6:"height";i:377;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"landing_background_4-120x65.jpg";s:5:"width";i:120;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:32:"landing_background_4-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(347, 85, '_wp_attached_file', '2016/01/landing_background_5.jpg'),
(348, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1922;s:6:"height";i:1096;s:4:"file";s:32:"2016/01/landing_background_5.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"landing_background_5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"landing_background_5-250x143.jpg";s:5:"width";i:250;s:6:"height";i:143;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"landing_background_5-768x438.jpg";s:5:"width";i:768;s:6:"height";i:438;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"landing_background_5-700x399.jpg";s:5:"width";i:700;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"landing_background_5-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:32:"landing_background_5-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(349, 86, '_wp_attached_file', '2016/01/landing_background.jpg'),
(350, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1033;s:4:"file";s:30:"2016/01/landing_background.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"landing_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"landing_background-250x135.jpg";s:5:"width";i:250;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"landing_background-768x413.jpg";s:5:"width";i:768;s:6:"height";i:413;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"landing_background-700x377.jpg";s:5:"width";i:700;s:6:"height";i:377;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:29:"landing_background-120x65.jpg";s:5:"width";i:120;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:30:"landing_background-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(351, 87, '_wp_attached_file', '2016/01/landing_second_background.jpg'),
(352, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:37:"2016/01/landing_second_background.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"landing_second_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"landing_second_background-250x141.jpg";s:5:"width";i:250;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"landing_second_background-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"landing_second_background-700x394.jpg";s:5:"width";i:700;s:6:"height";i:394;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:36:"landing_second_background-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:37:"landing_second_background-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(353, 88, '_wp_attached_file', '2016/01/landing_third_background.jpg'),
(354, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1031;s:4:"file";s:36:"2016/01/landing_third_background.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"landing_third_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"landing_third_background-250x134.jpg";s:5:"width";i:250;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"landing_third_background-768x412.jpg";s:5:"width";i:768;s:6:"height";i:412;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"landing_third_background-700x376.jpg";s:5:"width";i:700;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:35:"landing_third_background-120x64.jpg";s:5:"width";i:120;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:36:"landing_third_background-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(355, 89, '_wp_attached_file', '2016/01/learn_banner_2.jpg'),
(356, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1926;s:6:"height";i:1084;s:4:"file";s:26:"2016/01/learn_banner_2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"learn_banner_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"learn_banner_2-250x141.jpg";s:5:"width";i:250;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"learn_banner_2-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"learn_banner_2-700x394.jpg";s:5:"width";i:700;s:6:"height";i:394;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"learn_banner_2-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"learn_banner_2-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(357, 90, '_wp_attached_file', '2016/01/learn_banner_3.jpg'),
(358, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1926;s:6:"height";i:1182;s:4:"file";s:26:"2016/01/learn_banner_3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"learn_banner_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"learn_banner_3-250x153.jpg";s:5:"width";i:250;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"learn_banner_3-768x471.jpg";s:5:"width";i:768;s:6:"height";i:471;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"learn_banner_3-700x430.jpg";s:5:"width";i:700;s:6:"height";i:430;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"learn_banner_3-120x74.jpg";s:5:"width";i:120;s:6:"height";i:74;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"learn_banner_3-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(359, 91, '_wp_attached_file', '2016/01/learn_banner_4.jpg'),
(360, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1922;s:6:"height";i:1086;s:4:"file";s:26:"2016/01/learn_banner_4.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"learn_banner_4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"learn_banner_4-250x141.jpg";s:5:"width";i:250;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"learn_banner_4-768x434.jpg";s:5:"width";i:768;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"learn_banner_4-700x396.jpg";s:5:"width";i:700;s:6:"height";i:396;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"learn_banner_4-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"learn_banner_4-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(361, 92, '_wp_attached_file', '2016/01/learn_banner_6.jpg'),
(362, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1090;s:4:"file";s:26:"2016/01/learn_banner_6.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"learn_banner_6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"learn_banner_6-250x142.jpg";s:5:"width";i:250;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"learn_banner_6-768x436.jpg";s:5:"width";i:768;s:6:"height";i:436;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"learn_banner_6-700x397.jpg";s:5:"width";i:700;s:6:"height";i:397;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"learn_banner_6-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"learn_banner_6-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(363, 93, '_wp_attached_file', '2016/01/learn_banner_7.jpg'),
(364, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1926;s:6:"height";i:1095;s:4:"file";s:26:"2016/01/learn_banner_7.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"learn_banner_7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"learn_banner_7-250x142.jpg";s:5:"width";i:250;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"learn_banner_7-768x437.jpg";s:5:"width";i:768;s:6:"height";i:437;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"learn_banner_7-700x398.jpg";s:5:"width";i:700;s:6:"height";i:398;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"learn_banner_7-120x68.jpg";s:5:"width";i:120;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"learn_banner_7-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(365, 94, '_wp_attached_file', '2016/01/learn_banner_8.jpg'),
(366, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1924;s:6:"height";i:1134;s:4:"file";s:26:"2016/01/learn_banner_8.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"learn_banner_8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"learn_banner_8-250x147.jpg";s:5:"width";i:250;s:6:"height";i:147;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"learn_banner_8-768x453.jpg";s:5:"width";i:768;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"learn_banner_8-700x413.jpg";s:5:"width";i:700;s:6:"height";i:413;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"learn_banner_8-120x71.jpg";s:5:"width";i:120;s:6:"height";i:71;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"learn_banner_8-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(367, 95, '_wp_attached_file', '2016/01/left_slider_arrow.png'),
(368, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:90;s:4:"file";s:29:"2016/01/left_slider_arrow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(369, 96, '_wp_attached_file', '2016/01/location_picture_1.png'),
(370, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1550;s:6:"height";i:1032;s:4:"file";s:30:"2016/01/location_picture_1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"location_picture_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"location_picture_1-250x166.png";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:30:"location_picture_1-768x511.png";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:30:"location_picture_1-700x466.png";s:5:"width";i:700;s:6:"height";i:466;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:29:"location_picture_1-120x80.png";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"location_picture_1-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(371, 97, '_wp_attached_file', '2016/01/location_picture_2.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(372, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1550;s:6:"height";i:1032;s:4:"file";s:30:"2016/01/location_picture_2.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"location_picture_2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"location_picture_2-250x166.png";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:30:"location_picture_2-768x511.png";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:30:"location_picture_2-700x466.png";s:5:"width";i:700;s:6:"height";i:466;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:29:"location_picture_2-120x80.png";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"location_picture_2-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(373, 98, '_wp_attached_file', '2016/01/location_picture_3.png'),
(374, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1550;s:6:"height";i:1032;s:4:"file";s:30:"2016/01/location_picture_3.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"location_picture_3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"location_picture_3-250x166.png";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:30:"location_picture_3-768x511.png";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:30:"location_picture_3-700x466.png";s:5:"width";i:700;s:6:"height";i:466;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:29:"location_picture_3-120x80.png";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"location_picture_3-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(375, 99, '_wp_attached_file', '2016/01/location_showroom.jpg'),
(376, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:929;s:6:"height";i:619;s:4:"file";s:29:"2016/01/location_showroom.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"location_showroom-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"location_showroom-250x167.jpg";s:5:"width";i:250;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"location_showroom-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"location_showroom-700x466.jpg";s:5:"width";i:700;s:6:"height";i:466;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:28:"location_showroom-120x80.jpg";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:29:"location_showroom-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(377, 100, '_wp_attached_file', '2016/01/location_warehouse.jpg'),
(378, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:933;s:4:"file";s:30:"2016/01/location_warehouse.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"location_warehouse-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"location_warehouse-250x167.jpg";s:5:"width";i:250;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"location_warehouse-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"location_warehouse-700x467.jpg";s:5:"width";i:700;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:29:"location_warehouse-120x80.jpg";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:30:"location_warehouse-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(379, 101, '_wp_attached_file', '2016/01/logo_black.png'),
(380, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:864;s:6:"height";i:560;s:4:"file";s:22:"2016/01/logo_black.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"logo_black-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"logo_black-250x162.png";s:5:"width";i:250;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"logo_black-768x498.png";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:22:"logo_black-700x454.png";s:5:"width";i:700;s:6:"height";i:454;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:21:"logo_black-120x78.png";s:5:"width";i:120;s:6:"height";i:78;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:22:"logo_black-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(381, 102, '_wp_attached_file', '2016/01/logo_bluegray.png'),
(382, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:864;s:6:"height";i:560;s:4:"file";s:25:"2016/01/logo_bluegray.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"logo_bluegray-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"logo_bluegray-250x162.png";s:5:"width";i:250;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"logo_bluegray-768x498.png";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"logo_bluegray-700x454.png";s:5:"width";i:700;s:6:"height";i:454;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:24:"logo_bluegray-120x78.png";s:5:"width";i:120;s:6:"height";i:78;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:25:"logo_bluegray-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(383, 103, '_wp_attached_file', '2016/01/logo_white.png'),
(384, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:864;s:6:"height";i:560;s:4:"file";s:22:"2016/01/logo_white.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"logo_white-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"logo_white-250x162.png";s:5:"width";i:250;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"logo_white-768x498.png";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:22:"logo_white-700x454.png";s:5:"width";i:700;s:6:"height";i:454;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:21:"logo_white-120x78.png";s:5:"width";i:120;s:6:"height";i:78;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:22:"logo_white-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(385, 104, '_wp_attached_file', '2016/01/material_granite.jpg'),
(386, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:537;s:6:"height";i:537;s:4:"file";s:28:"2016/01/material_granite.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"material_granite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"material_granite-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:28:"material_granite-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:28:"material_granite-537x200.jpg";s:5:"width";i:537;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(387, 105, '_wp_attached_file', '2016/01/material_limestone.jpg'),
(388, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:536;s:6:"height";i:536;s:4:"file";s:30:"2016/01/material_limestone.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"material_limestone-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"material_limestone-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:30:"material_limestone-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:30:"material_limestone-536x200.jpg";s:5:"width";i:536;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(389, 106, '_wp_attached_file', '2016/01/material_marble.jpg'),
(390, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:537;s:6:"height";i:537;s:4:"file";s:27:"2016/01/material_marble.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"material_marble-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"material_marble-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:27:"material_marble-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:27:"material_marble-537x200.jpg";s:5:"width";i:537;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(391, 107, '_wp_attached_file', '2016/01/material_onyx.jpg'),
(392, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:537;s:6:"height";i:537;s:4:"file";s:25:"2016/01/material_onyx.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"material_onyx-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"material_onyx-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"material_onyx-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:25:"material_onyx-537x200.jpg";s:5:"width";i:537;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(393, 108, '_wp_attached_file', '2016/01/material_quartzite.jpg'),
(394, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:537;s:6:"height";i:537;s:4:"file";s:30:"2016/01/material_quartzite.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"material_quartzite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"material_quartzite-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:30:"material_quartzite-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:30:"material_quartzite-537x200.jpg";s:5:"width";i:537;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(395, 109, '_wp_attached_file', '2016/01/material_specs_table.jpg'),
(396, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1568;s:6:"height";i:715;s:4:"file";s:32:"2016/01/material_specs_table.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"material_specs_table-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"material_specs_table-250x114.jpg";s:5:"width";i:250;s:6:"height";i:114;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"material_specs_table-768x350.jpg";s:5:"width";i:768;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"material_specs_table-700x319.jpg";s:5:"width";i:700;s:6:"height";i:319;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"material_specs_table-120x55.jpg";s:5:"width";i:120;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:32:"material_specs_table-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(397, 110, '_wp_attached_file', '2016/01/material_travertine.jpg'),
(398, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:536;s:6:"height";i:536;s:4:"file";s:31:"2016/01/material_travertine.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"material_travertine-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"material_travertine-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"material_travertine-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"material_travertine-536x200.jpg";s:5:"width";i:536;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(399, 111, '_wp_attached_file', '2016/01/pantone_logo_vertical.png'),
(400, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:96;s:6:"height";i:636;s:4:"file";s:33:"2016/01/pantone_logo_vertical.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"pantone_logo_vertical-96x150.png";s:5:"width";i:96;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:32:"pantone_logo_vertical-96x200.png";s:5:"width";i:96;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(401, 112, '_wp_attached_file', '2016/01/pantone_logo.png'),
(402, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:636;s:6:"height";i:96;s:4:"file";s:24:"2016/01/pantone_logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"pantone_logo-150x96.png";s:5:"width";i:150;s:6:"height";i:96;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"pantone_logo-250x38.png";s:5:"width";i:250;s:6:"height";i:38;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:23:"pantone_logo-120x18.png";s:5:"width";i:120;s:6:"height";i:18;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(403, 113, '_wp_attached_file', '2016/01/pdf_download_icon.png'),
(404, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:45;s:6:"height";i:45;s:4:"file";s:29:"2016/01/pdf_download_icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(405, 114, '_wp_attached_file', '2016/01/product_category_1.png'),
(406, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:202;s:4:"file";s:30:"2016/01/product_category_1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_1-120x121.png";s:5:"width";i:120;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_1-201x200.png";s:5:"width";i:201;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(407, 115, '_wp_attached_file', '2016/01/product_category_2.png'),
(408, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:30:"2016/01/product_category_2.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_2-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_2-202x200.png";s:5:"width";i:202;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(409, 116, '_wp_attached_file', '2016/01/product_category_3.png'),
(410, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:30:"2016/01/product_category_3.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_3-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_3-202x200.png";s:5:"width";i:202;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(411, 117, '_wp_attached_file', '2016/01/product_category_4.png'),
(412, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:202;s:4:"file";s:30:"2016/01/product_category_4.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_4-120x121.png";s:5:"width";i:120;s:6:"height";i:121;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_4-201x200.png";s:5:"width";i:201;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(413, 118, '_wp_attached_file', '2016/01/product_category_5.png'),
(414, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:202;s:4:"file";s:30:"2016/01/product_category_5.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_5-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_5-202x200.png";s:5:"width";i:202;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(415, 119, '_wp_attached_file', '2016/01/product_category_6.png'),
(416, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:201;s:4:"file";s:30:"2016/01/product_category_6.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_6-120x119.png";s:5:"width";i:120;s:6:"height";i:119;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_6-202x200.png";s:5:"width";i:202;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(417, 120, '_wp_attached_file', '2016/01/product_category_7.png'),
(418, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:201;s:4:"file";s:30:"2016/01/product_category_7.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_7-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_7-201x200.png";s:5:"width";i:201;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(419, 121, '_wp_attached_file', '2016/01/product_category_8.png'),
(420, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:201;s:4:"file";s:30:"2016/01/product_category_8.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_8-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_8-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_8-201x200.png";s:5:"width";i:201;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(421, 122, '_wp_attached_file', '2016/01/product_category_9.png'),
(422, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:201;s:4:"file";s:30:"2016/01/product_category_9.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"product_category_9-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:30:"product_category_9-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:30:"product_category_9-201x200.png";s:5:"width";i:201;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(423, 123, '_wp_attached_file', '2016/01/product_category_10.png'),
(424, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:201;s:4:"file";s:31:"2016/01/product_category_10.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"product_category_10-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:31:"product_category_10-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:31:"product_category_10-201x200.png";s:5:"width";i:201;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(425, 124, '_wp_attached_file', '2016/01/product_detail_extraphoto.jpg'),
(426, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:938;s:6:"height";i:586;s:4:"file";s:37:"2016/01/product_detail_extraphoto.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"product_detail_extraphoto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"product_detail_extraphoto-250x156.jpg";s:5:"width";i:250;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"product_detail_extraphoto-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"product_detail_extraphoto-700x437.jpg";s:5:"width";i:700;s:6:"height";i:437;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:36:"product_detail_extraphoto-120x75.jpg";s:5:"width";i:120;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:37:"product_detail_extraphoto-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(427, 125, '_wp_attached_file', '2016/01/product_detail_swatch.jpg'),
(428, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:607;s:6:"height";i:404;s:4:"file";s:33:"2016/01/product_detail_swatch.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"product_detail_swatch-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"product_detail_swatch-250x166.jpg";s:5:"width";i:250;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:32:"product_detail_swatch-120x80.jpg";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:33:"product_detail_swatch-607x200.jpg";s:5:"width";i:607;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(429, 126, '_wp_attached_file', '2016/01/project_astor.jpg'),
(430, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:411;s:6:"height";i:411;s:4:"file";s:25:"2016/01/project_astor.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"project_astor-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"project_astor-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"project_astor-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:25:"project_astor-411x200.jpg";s:5:"width";i:411;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(431, 127, '_wp_attached_file', '2016/01/project_beach.jpg'),
(432, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:411;s:6:"height";i:411;s:4:"file";s:25:"2016/01/project_beach.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"project_beach-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"project_beach-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"project_beach-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:25:"project_beach-411x200.jpg";s:5:"width";i:411;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(433, 128, '_wp_attached_file', '2016/01/project_centralpark.jpg'),
(434, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:409;s:6:"height";i:409;s:4:"file";s:31:"2016/01/project_centralpark.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"project_centralpark-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"project_centralpark-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:31:"project_centralpark-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"project_centralpark-409x200.jpg";s:5:"width";i:409;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(435, 129, '_wp_attached_file', '2016/01/project_chanel.jpg'),
(436, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:412;s:6:"height";i:400;s:4:"file";s:26:"2016/01/project_chanel.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"project_chanel-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"project_chanel-250x243.jpg";s:5:"width";i:250;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:26:"project_chanel-120x117.jpg";s:5:"width";i:120;s:6:"height";i:117;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"project_chanel-412x200.jpg";s:5:"width";i:412;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(437, 130, '_wp_attached_file', '2016/01/project_fendi.jpg'),
(438, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:411;s:6:"height";i:411;s:4:"file";s:25:"2016/01/project_fendi.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"project_fendi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"project_fendi-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"project_fendi-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:25:"project_fendi-411x200.jpg";s:5:"width";i:411;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(439, 131, '_wp_attached_file', '2016/01/project_marriott.jpg'),
(440, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:411;s:6:"height";i:411;s:4:"file";s:28:"2016/01/project_marriott.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"project_marriott-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"project_marriott-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:28:"project_marriott-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:28:"project_marriott-411x200.jpg";s:5:"width";i:411;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(441, 132, '_wp_attached_file', '2016/01/project_whotel.jpg'),
(442, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:411;s:6:"height";i:410;s:4:"file";s:26:"2016/01/project_whotel.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"project_whotel-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"project_whotel-250x249.jpg";s:5:"width";i:250;s:6:"height";i:249;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:26:"project_whotel-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:26:"project_whotel-411x200.jpg";s:5:"width";i:411;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(443, 133, '_wp_attached_file', '2016/01/project_yoo.jpg'),
(444, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:410;s:6:"height";i:410;s:4:"file";s:23:"2016/01/project_yoo.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"project_yoo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"project_yoo-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:23:"project_yoo-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:23:"project_yoo-410x200.jpg";s:5:"width";i:410;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(445, 134, '_wp_attached_file', '2016/01/right_slider_arrow.png'),
(446, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:49;s:6:"height";i:90;s:4:"file";s:30:"2016/01/right_slider_arrow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(447, 135, '_wp_attached_file', '2016/01/sample_request_hero_2.jpg'),
(448, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1894;s:6:"height";i:1092;s:4:"file";s:33:"2016/01/sample_request_hero_2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"sample_request_hero_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"sample_request_hero_2-250x144.jpg";s:5:"width";i:250;s:6:"height";i:144;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"sample_request_hero_2-768x443.jpg";s:5:"width";i:768;s:6:"height";i:443;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"sample_request_hero_2-700x404.jpg";s:5:"width";i:700;s:6:"height";i:404;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:32:"sample_request_hero_2-120x69.jpg";s:5:"width";i:120;s:6:"height";i:69;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:33:"sample_request_hero_2-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(449, 136, '_wp_attached_file', '2016/01/sample_request_hero.jpg'),
(450, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1760;s:6:"height";i:1174;s:4:"file";s:31:"2016/01/sample_request_hero.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"sample_request_hero-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"sample_request_hero-250x167.jpg";s:5:"width";i:250;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"sample_request_hero-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"sample_request_hero-700x467.jpg";s:5:"width";i:700;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:30:"sample_request_hero-120x80.jpg";s:5:"width";i:120;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:31:"sample_request_hero-700x200.jpg";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(451, 137, '_wp_attached_file', '2016/01/stone_favicon.png'),
(452, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:92;s:6:"height";i:92;s:4:"file";s:25:"2016/01/stone_favicon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(453, 138, '_wp_attached_file', '2016/01/transparent_dropdown_arrow.png'),
(454, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:32;s:6:"height";i:35;s:4:"file";s:38:"2016/01/transparent_dropdown_arrow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(455, 67, 'image', '86'),
(456, 67, '_image', 'field_568addf91a363'),
(457, 67, 'text', 'Fiori Di Bosco'),
(458, 67, '_text', 'field_568ade2e1a364'),
(459, 139, '_edit_last', '1'),
(460, 139, '_edit_lock', '1451942119:1'),
(461, 139, 'image', '82'),
(462, 139, '_image', 'field_568addf91a363'),
(463, 139, 'text', 'Calacatta Cielo'),
(464, 139, '_text', 'field_568ade2e1a364'),
(465, 139, '_dp_original', '67'),
(466, 140, '_edit_last', '1'),
(467, 140, '_edit_lock', '1451942124:1'),
(468, 140, 'image', '83'),
(469, 140, '_image', 'field_568addf91a363'),
(470, 140, 'text', 'Light Macauba'),
(471, 140, '_text', 'field_568ade2e1a364'),
(472, 141, '_edit_last', '1'),
(473, 141, '_edit_lock', '1451941985:1'),
(474, 141, 'image', '84'),
(475, 141, '_image', 'field_568addf91a363'),
(476, 141, 'text', 'Pink Teak Wood'),
(477, 141, '_text', 'field_568ade2e1a364'),
(478, 142, '_edit_last', '1'),
(479, 142, '_edit_lock', '1451945040:1'),
(480, 142, 'image', '85'),
(481, 142, '_image', 'field_568addf91a363'),
(482, 142, 'text', 'Thai Quartzite'),
(483, 142, '_text', 'field_568ade2e1a364'),
(484, 139, '_wp_old_slug', 'slider-2'),
(485, 145, '_edit_last', '1'),
(486, 145, 'field_568ae3e66a900', 'a:13:{s:3:"key";s:19:"field_568ae3e66a900";s:5:"label";s:10:"About Text";s:4:"name";s:10:"about_text";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(487, 145, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"7";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(488, 145, 'position', 'normal'),
(489, 145, 'layout', 'no_box'),
(490, 145, 'hide_on_screen', ''),
(491, 145, '_edit_lock', '1451942766:1'),
(492, 146, 'about_text', ''),
(493, 146, '_about_text', 'field_568ae3e66a900'),
(494, 7, 'about_text', 'New York Stone LLC is one of the largest natural stone wholesalers on the East Coast. Established in 1988, we have over 28 years of experience in suppling stone for our clients. We are proud to offer over 3 million square feet of imported natural stone slabs and tiles from all over the world. Our Inventory features marble, limestone, quartzite, travertine, granite, porcelain, and mosaics. New York Stone delivers a committed and unique consultation for any scale stone application. As part of our process, we connect clients to renown fabricators and installers. Due to a commitment to quality, our company has become one of the most trusted names in the American stone industry.'),
(495, 7, '_about_text', 'field_568ae3e66a900'),
(496, 147, 'about_text', 'New York Stone LLC is one of the largest natural stone wholesalers on the East Coast. Established in 1988, we have over 28 years of experience in suppling stone for our clients. We are proud to offer over 3 million square feet of imported natural stone slabs and tiles from all over the world. Our Inventory features marble, limestone, quartzite, travertine, granite, porcelain, and mosaics. New York Stone delivers a committed and unique consultation for any scale stone application. As part of our process, we connect clients to renown fabricators and installers. Due to a commitment to quality, our company has become one of the most trusted names in the American stone industry.'),
(497, 147, '_about_text', 'field_568ae3e66a900'),
(498, 148, '_edit_last', '1'),
(499, 148, 'field_568ae49324d8c', 'a:11:{s:3:"key";s:19:"field_568ae49324d8c";s:5:"label";s:14:"Showroom Image";s:4:"name";s:14:"showroom_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(500, 148, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"showroom";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(501, 148, 'position', 'normal'),
(502, 148, 'layout', 'no_box'),
(503, 148, 'hide_on_screen', ''),
(504, 148, '_edit_lock', '1451942991:1'),
(505, 149, '_edit_last', '1'),
(506, 149, '_edit_lock', '1451943168:1'),
(507, 149, 'showroom_image', '96'),
(508, 149, '_showroom_image', 'field_568ae49324d8c'),
(509, 150, '_edit_last', '1'),
(510, 150, '_edit_lock', '1451943239:1'),
(511, 150, 'showroom_image', '97'),
(512, 150, '_showroom_image', 'field_568ae49324d8c'),
(513, 151, '_edit_last', '1'),
(514, 151, '_edit_lock', '1451943348:1'),
(515, 151, 'showroom_image', '98'),
(516, 151, '_showroom_image', 'field_568ae49324d8c'),
(517, 152, '_edit_last', '1'),
(518, 152, 'field_568ae71a9a57c', 'a:11:{s:3:"key";s:19:"field_568ae71a9a57c";s:5:"label";s:15:"Warehouse Image";s:4:"name";s:15:"warehouse_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(519, 152, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"warehouses";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(520, 152, 'position', 'normal'),
(521, 152, 'layout', 'no_box'),
(522, 152, 'hide_on_screen', ''),
(523, 152, '_edit_lock', '1451943582:1'),
(524, 153, '_edit_last', '1'),
(525, 153, '_edit_lock', '1451946035:1'),
(526, 153, 'warehouse_image', '96'),
(527, 153, '_warehouse_image', 'field_568ae71a9a57c'),
(528, 154, '_edit_last', '1'),
(529, 154, '_edit_lock', '1451943660:1'),
(530, 154, 'warehouse_image', '97'),
(531, 154, '_warehouse_image', 'field_568ae71a9a57c'),
(532, 155, '_edit_last', '1'),
(533, 155, '_edit_lock', '1451943691:1'),
(534, 155, 'warehouse_image', '98'),
(535, 155, '_warehouse_image', 'field_568ae71a9a57c'),
(536, 156, '_edit_last', '1'),
(537, 156, 'field_568aeadef85cc', 'a:11:{s:3:"key";s:19:"field_568aeadef85cc";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(538, 156, 'field_568aeae8f85cd', 'a:14:{s:3:"key";s:19:"field_568aeae8f85cd";s:5:"label";s:4:"Name";s:4:"name";s:4:"name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(540, 156, 'position', 'normal'),
(541, 156, 'layout', 'no_box'),
(542, 156, 'hide_on_screen', ''),
(543, 156, '_edit_lock', '1451952377:1'),
(544, 157, '_edit_last', '1'),
(545, 157, '_edit_lock', '1452013754:1'),
(546, 157, 'image', '106'),
(547, 157, '_image', 'field_568aeadef85cc'),
(548, 157, 'name', 'Marble'),
(549, 157, '_name', 'field_568aeae8f85cd'),
(550, 158, '_edit_last', '1'),
(551, 158, '_edit_lock', '1451946822:1'),
(552, 158, 'image', '108'),
(553, 158, '_image', 'field_568aeadef85cc'),
(554, 158, 'name', 'Quartzite'),
(555, 158, '_name', 'field_568aeae8f85cd'),
(556, 159, '_edit_last', '1'),
(557, 159, '_edit_lock', '1451946847:1'),
(558, 159, 'image', '107'),
(559, 159, '_image', 'field_568aeadef85cc'),
(560, 159, 'name', 'Granite'),
(561, 159, '_name', 'field_568aeae8f85cd'),
(562, 160, '_edit_last', '1'),
(563, 160, '_edit_lock', '1451947485:1'),
(564, 160, 'image', '107'),
(565, 160, '_image', 'field_568aeadef85cc'),
(566, 160, 'name', 'Finishes'),
(567, 160, '_name', 'field_568aeae8f85cd'),
(568, 161, '_edit_last', '1'),
(569, 161, 'image', '107'),
(570, 161, '_image', 'field_568aeadef85cc'),
(571, 161, 'name', 'Mosaics'),
(572, 161, '_name', 'field_568aeae8f85cd'),
(573, 161, '_edit_lock', '1451947661:1'),
(574, 162, '_edit_last', '1'),
(575, 162, 'image', '110'),
(576, 162, '_image', 'field_568aeadef85cc'),
(577, 162, 'name', 'Travertine'),
(578, 162, '_name', 'field_568aeae8f85cd'),
(579, 162, '_edit_lock', '1451946848:1'),
(580, 163, '_edit_last', '1'),
(581, 163, '_edit_lock', '1451946845:1'),
(582, 163, 'image', '105'),
(583, 163, '_image', 'field_568aeadef85cc'),
(584, 163, 'name', 'Limestone'),
(585, 163, '_name', 'field_568aeae8f85cd'),
(586, 164, '_edit_last', '1'),
(587, 164, 'image', '107'),
(588, 164, '_image', 'field_568aeadef85cc'),
(589, 164, 'name', 'Onyx'),
(590, 164, '_name', 'field_568aeae8f85cd'),
(591, 164, '_edit_lock', '1451952051:1'),
(592, 165, '_edit_last', '1'),
(593, 165, 'image', '104'),
(594, 165, '_image', 'field_568aeadef85cc'),
(595, 165, 'name', 'Colorquartz'),
(596, 165, '_name', 'field_568aeae8f85cd'),
(597, 165, '_edit_lock', '1452012557:1'),
(598, 166, '_edit_last', '1'),
(599, 166, '_edit_lock', '1452008634:1'),
(600, 166, 'image', '104'),
(601, 166, '_image', 'field_568aeadef85cc'),
(602, 166, 'name', 'Porcelain'),
(603, 166, '_name', 'field_568aeae8f85cd'),
(604, 1, '_wp_trash_meta_status', 'publish'),
(605, 1, '_wp_trash_meta_time', '1451948754'),
(606, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(607, 174, '_edit_last', '1'),
(608, 174, '_edit_lock', '1452014492:1'),
(610, 174, 'image', '104'),
(611, 174, '_image', 'field_568aeadef85cc'),
(612, 174, 'name', 'Porcelain'),
(613, 174, '_name', 'field_568aeae8f85cd'),
(614, 175, '_edit_last', '1'),
(615, 175, '_edit_lock', '1451950587:1'),
(616, 175, 'image', '106'),
(617, 175, '_image', 'field_568aeadef85cc'),
(618, 175, 'name', 'Marble'),
(619, 175, '_name', 'field_568aeae8f85cd'),
(620, 176, '_edit_last', '1'),
(621, 176, '_edit_lock', '1451950575:1'),
(622, 176, 'image', '108'),
(623, 176, '_image', 'field_568aeadef85cc'),
(624, 176, 'name', 'Quartzite'),
(625, 176, '_name', 'field_568aeae8f85cd'),
(626, 178, '_edit_last', '1'),
(627, 178, '_edit_lock', '1451951635:1'),
(630, 156, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"products";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(631, 182, '_edit_last', '1'),
(632, 182, 'field_568bea5624e80', 'a:14:{s:3:"key";s:19:"field_568bea5624e80";s:5:"label";s:4:"Name";s:4:"name";s:4:"name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(633, 182, 'field_568bea6924e81', 'a:11:{s:3:"key";s:19:"field_568bea6924e81";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(635, 182, 'position', 'normal'),
(636, 182, 'layout', 'no_box'),
(637, 182, 'hide_on_screen', ''),
(638, 182, '_edit_lock', '1452013174:1'),
(639, 182, 'field_568bea895283a', 'a:14:{s:3:"key";s:19:"field_568bea895283a";s:5:"label";s:6:"Origin";s:4:"name";s:6:"origin";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(640, 182, 'field_568beaa45283b', 'a:13:{s:3:"key";s:19:"field_568beaa45283b";s:5:"label";s:20:"Material Description";s:4:"name";s:20:"material_description";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(642, 183, '_edit_last', '1'),
(643, 183, 'name', 'Calcatta Grey'),
(644, 183, '_name', 'field_568bea5624e80'),
(645, 183, 'image', '114'),
(646, 183, '_image', 'field_568bea6924e81'),
(647, 183, 'origin', 'Italy'),
(648, 183, '_origin', 'field_568bea895283a'),
(649, 183, 'material_description', 'Marble, in its pure form can be harder than granite, but because the quartz is compressed with sandstone and other minerals, there is often variation in the stone''s hardness.'),
(650, 183, '_material_description', 'field_568beaa45283b'),
(651, 183, '_edit_lock', '1452011136:1'),
(652, 183, '_wp_old_slug', '183'),
(653, 191, '_edit_last', '1'),
(654, 191, '_edit_lock', '1452012708:1'),
(655, 191, '_wpcf_belongs_products_id', '166'),
(657, 192, '_wpcf_belongs_products_id', '157'),
(658, 192, '_edit_lock', '1452014307:1'),
(659, 193, '_edit_last', '1'),
(660, 193, '_wp_page_template', 'default'),
(661, 193, '_edit_lock', '1452012948:1'),
(662, 191, '_wp_trash_meta_status', 'publish'),
(663, 191, '_wp_trash_meta_time', '1452013052'),
(664, 192, '_edit_last', '1'),
(665, 182, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"catalog";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(666, 192, 'name', 'test product'),
(667, 192, '_name', 'field_568bea5624e80'),
(668, 192, 'image', '137'),
(669, 192, '_image', 'field_568bea6924e81'),
(670, 192, 'origin', ''),
(671, 192, '_origin', 'field_568bea895283a'),
(672, 192, 'material_description', ''),
(673, 192, '_material_description', 'field_568beaa45283b'),
(674, 199, '_edit_last', '1'),
(675, 199, '_visibility', 'visible'),
(676, 199, '_stock_status', 'instock'),
(677, 199, 'total_sales', '0'),
(678, 199, '_downloadable', 'no'),
(679, 199, '_virtual', 'no'),
(680, 199, '_regular_price', ''),
(681, 199, '_sale_price', ''),
(682, 199, '_purchase_note', ''),
(683, 199, '_featured', 'no'),
(684, 199, '_weight', ''),
(685, 199, '_length', ''),
(686, 199, '_width', ''),
(687, 199, '_height', ''),
(688, 199, '_sku', ''),
(689, 199, '_product_attributes', 'a:0:{}'),
(690, 199, '_sale_price_dates_from', ''),
(691, 199, '_sale_price_dates_to', ''),
(692, 199, '_price', ''),
(693, 199, '_sold_individually', ''),
(694, 199, '_manage_stock', 'no'),
(695, 199, '_backorders', 'no'),
(696, 199, '_stock', ''),
(697, 199, '_upsell_ids', 'a:0:{}'),
(698, 199, '_crosssell_ids', 'a:0:{}'),
(699, 199, '_product_version', '2.4.12'),
(700, 199, '_product_image_gallery', ''),
(701, 199, '_edit_lock', '1452019899:1'),
(702, 199, '_thumbnail_id', '114'),
(703, 176, '_wp_trash_meta_status', 'publish'),
(704, 176, '_wp_trash_meta_time', '1452020051'),
(705, 175, '_wp_trash_meta_status', 'publish'),
(706, 175, '_wp_trash_meta_time', '1452020052'),
(707, 174, '_wp_trash_meta_status', 'publish'),
(708, 174, '_wp_trash_meta_time', '1452020052'),
(709, 200, '_edit_last', '1'),
(710, 200, '_edit_lock', '1452020201:1'),
(711, 200, '_thumbnail_id', '115'),
(712, 200, '_visibility', 'visible'),
(713, 200, '_stock_status', 'instock'),
(714, 200, 'total_sales', '0'),
(715, 200, '_downloadable', 'no'),
(716, 200, '_virtual', 'no'),
(717, 200, '_regular_price', ''),
(718, 200, '_sale_price', ''),
(719, 200, '_purchase_note', ''),
(720, 200, '_featured', 'no'),
(721, 200, '_weight', ''),
(722, 200, '_length', ''),
(723, 200, '_width', ''),
(724, 200, '_height', ''),
(725, 200, '_sku', ''),
(726, 200, '_product_attributes', 'a:0:{}'),
(727, 200, '_sale_price_dates_from', ''),
(728, 200, '_sale_price_dates_to', ''),
(729, 200, '_price', ''),
(730, 200, '_sold_individually', ''),
(731, 200, '_manage_stock', 'no'),
(732, 200, '_backorders', 'no'),
(733, 200, '_stock', ''),
(734, 200, '_upsell_ids', 'a:0:{}'),
(735, 200, '_crosssell_ids', 'a:0:{}'),
(736, 200, '_product_version', '2.4.12'),
(737, 200, '_product_image_gallery', ''),
(738, 201, '_edit_last', '1'),
(739, 201, '_edit_lock', '1452020259:1'),
(740, 201, '_thumbnail_id', '116'),
(741, 201, '_visibility', 'visible'),
(742, 201, '_stock_status', 'instock'),
(743, 201, 'total_sales', '0'),
(744, 201, '_downloadable', 'no'),
(745, 201, '_virtual', 'no'),
(746, 201, '_regular_price', ''),
(747, 201, '_sale_price', ''),
(748, 201, '_purchase_note', ''),
(749, 201, '_featured', 'no'),
(750, 201, '_weight', ''),
(751, 201, '_length', ''),
(752, 201, '_width', ''),
(753, 201, '_height', ''),
(754, 201, '_sku', ''),
(755, 201, '_product_attributes', 'a:0:{}'),
(756, 201, '_sale_price_dates_from', ''),
(757, 201, '_sale_price_dates_to', ''),
(758, 201, '_price', ''),
(759, 201, '_sold_individually', ''),
(760, 201, '_manage_stock', 'no'),
(761, 201, '_backorders', 'no'),
(762, 201, '_stock', ''),
(763, 201, '_upsell_ids', 'a:0:{}'),
(764, 201, '_crosssell_ids', 'a:0:{}'),
(765, 201, '_product_version', '2.4.12'),
(766, 201, '_product_image_gallery', ''),
(767, 202, '_edit_last', '1'),
(768, 202, '_edit_lock', '1452020307:1'),
(769, 202, '_thumbnail_id', '117'),
(770, 202, '_visibility', 'visible'),
(771, 202, '_stock_status', 'instock'),
(772, 202, 'total_sales', '0'),
(773, 202, '_downloadable', 'no'),
(774, 202, '_virtual', 'no'),
(775, 202, '_regular_price', ''),
(776, 202, '_sale_price', ''),
(777, 202, '_purchase_note', ''),
(778, 202, '_featured', 'no'),
(779, 202, '_weight', ''),
(780, 202, '_length', ''),
(781, 202, '_width', ''),
(782, 202, '_height', ''),
(783, 202, '_sku', ''),
(784, 202, '_product_attributes', 'a:0:{}'),
(785, 202, '_sale_price_dates_from', ''),
(786, 202, '_sale_price_dates_to', ''),
(787, 202, '_price', ''),
(788, 202, '_sold_individually', ''),
(789, 202, '_manage_stock', 'no'),
(790, 202, '_backorders', 'no'),
(791, 202, '_stock', ''),
(792, 202, '_upsell_ids', 'a:0:{}'),
(793, 202, '_crosssell_ids', 'a:0:{}'),
(794, 202, '_product_version', '2.4.12'),
(795, 202, '_product_image_gallery', ''),
(796, 203, '_edit_last', '1'),
(797, 203, '_edit_lock', '1452020480:1'),
(798, 203, '_thumbnail_id', '118'),
(799, 203, '_visibility', 'visible'),
(800, 203, '_stock_status', 'instock'),
(801, 203, 'total_sales', '0'),
(802, 203, '_downloadable', 'no'),
(803, 203, '_virtual', 'no'),
(804, 203, '_regular_price', ''),
(805, 203, '_sale_price', ''),
(806, 203, '_purchase_note', ''),
(807, 203, '_featured', 'no'),
(808, 203, '_weight', ''),
(809, 203, '_length', ''),
(810, 203, '_width', ''),
(811, 203, '_height', ''),
(812, 203, '_sku', ''),
(813, 203, '_product_attributes', 'a:0:{}'),
(814, 203, '_sale_price_dates_from', ''),
(815, 203, '_sale_price_dates_to', ''),
(816, 203, '_price', ''),
(817, 203, '_sold_individually', ''),
(818, 203, '_manage_stock', 'no'),
(819, 203, '_backorders', 'no'),
(820, 203, '_stock', ''),
(821, 203, '_upsell_ids', 'a:0:{}'),
(822, 203, '_crosssell_ids', 'a:0:{}'),
(823, 203, '_product_version', '2.4.12'),
(824, 203, '_product_image_gallery', ''),
(825, 204, '_edit_last', '1'),
(826, 204, '_edit_lock', '1452020545:1'),
(827, 204, '_thumbnail_id', '123'),
(828, 204, '_visibility', 'visible'),
(829, 204, '_stock_status', 'instock'),
(830, 204, 'total_sales', '0'),
(831, 204, '_downloadable', 'no'),
(832, 204, '_virtual', 'no'),
(833, 204, '_regular_price', ''),
(834, 204, '_sale_price', ''),
(835, 204, '_purchase_note', ''),
(836, 204, '_featured', 'no'),
(837, 204, '_weight', ''),
(838, 204, '_length', ''),
(839, 204, '_width', ''),
(840, 204, '_height', ''),
(841, 204, '_sku', ''),
(842, 204, '_product_attributes', 'a:0:{}'),
(843, 204, '_sale_price_dates_from', ''),
(844, 204, '_sale_price_dates_to', ''),
(845, 204, '_price', ''),
(846, 204, '_sold_individually', ''),
(847, 204, '_manage_stock', 'no'),
(848, 204, '_backorders', 'no'),
(849, 204, '_stock', ''),
(850, 204, '_upsell_ids', 'a:0:{}'),
(851, 204, '_crosssell_ids', 'a:0:{}'),
(852, 204, '_product_version', '2.4.12'),
(853, 204, '_product_image_gallery', ''),
(854, 205, '_edit_last', '1'),
(855, 205, '_edit_lock', '1452020601:1'),
(856, 205, '_thumbnail_id', '119'),
(857, 205, '_visibility', 'visible'),
(858, 205, '_stock_status', 'instock'),
(859, 205, 'total_sales', '0'),
(860, 205, '_downloadable', 'no'),
(861, 205, '_virtual', 'no'),
(862, 205, '_regular_price', ''),
(863, 205, '_sale_price', ''),
(864, 205, '_purchase_note', ''),
(865, 205, '_featured', 'no'),
(866, 205, '_weight', ''),
(867, 205, '_length', ''),
(868, 205, '_width', ''),
(869, 205, '_height', ''),
(870, 205, '_sku', ''),
(871, 205, '_product_attributes', 'a:0:{}'),
(872, 205, '_sale_price_dates_from', ''),
(873, 205, '_sale_price_dates_to', ''),
(874, 205, '_price', ''),
(875, 205, '_sold_individually', ''),
(876, 205, '_manage_stock', 'no'),
(877, 205, '_backorders', 'no'),
(878, 205, '_stock', ''),
(879, 205, '_upsell_ids', 'a:0:{}'),
(880, 205, '_crosssell_ids', 'a:0:{}'),
(881, 205, '_product_version', '2.4.12'),
(882, 205, '_product_image_gallery', ''),
(883, 206, '_edit_last', '1'),
(884, 206, '_edit_lock', '1452020695:1'),
(885, 206, '_thumbnail_id', '120'),
(886, 206, '_visibility', 'visible'),
(887, 206, '_stock_status', 'instock'),
(888, 206, 'total_sales', '0'),
(889, 206, '_downloadable', 'no'),
(890, 206, '_virtual', 'no'),
(891, 206, '_regular_price', ''),
(892, 206, '_sale_price', ''),
(893, 206, '_purchase_note', ''),
(894, 206, '_featured', 'no'),
(895, 206, '_weight', ''),
(896, 206, '_length', ''),
(897, 206, '_width', ''),
(898, 206, '_height', ''),
(899, 206, '_sku', ''),
(900, 206, '_product_attributes', 'a:0:{}'),
(901, 206, '_sale_price_dates_from', ''),
(902, 206, '_sale_price_dates_to', ''),
(903, 206, '_price', ''),
(904, 206, '_sold_individually', ''),
(905, 206, '_manage_stock', 'no'),
(906, 206, '_backorders', 'no'),
(907, 206, '_stock', ''),
(908, 206, '_upsell_ids', 'a:0:{}'),
(909, 206, '_crosssell_ids', 'a:0:{}'),
(910, 206, '_product_version', '2.4.12'),
(911, 206, '_product_image_gallery', ''),
(912, 207, '_edit_last', '1'),
(913, 207, '_edit_lock', '1452020749:1'),
(914, 207, '_thumbnail_id', '121'),
(915, 207, '_visibility', 'visible'),
(916, 207, '_stock_status', 'instock'),
(917, 207, 'total_sales', '0'),
(918, 207, '_downloadable', 'no'),
(919, 207, '_virtual', 'no'),
(920, 207, '_regular_price', ''),
(921, 207, '_sale_price', ''),
(922, 207, '_purchase_note', ''),
(923, 207, '_featured', 'no'),
(924, 207, '_weight', ''),
(925, 207, '_length', ''),
(926, 207, '_width', ''),
(927, 207, '_height', ''),
(928, 207, '_sku', ''),
(929, 207, '_product_attributes', 'a:0:{}'),
(930, 207, '_sale_price_dates_from', ''),
(931, 207, '_sale_price_dates_to', ''),
(932, 207, '_price', ''),
(933, 207, '_sold_individually', ''),
(934, 207, '_manage_stock', 'no'),
(935, 207, '_backorders', 'no'),
(936, 207, '_stock', ''),
(937, 207, '_upsell_ids', 'a:0:{}'),
(938, 207, '_crosssell_ids', 'a:0:{}'),
(939, 207, '_product_version', '2.4.12'),
(940, 207, '_product_image_gallery', ''),
(941, 208, '_edit_last', '1'),
(942, 208, '_edit_lock', '1452026689:1'),
(943, 208, '_thumbnail_id', '122'),
(944, 208, '_visibility', 'visible'),
(945, 208, '_stock_status', 'instock'),
(946, 208, 'total_sales', '0'),
(947, 208, '_downloadable', 'no'),
(948, 208, '_virtual', 'no'),
(949, 208, '_regular_price', ''),
(950, 208, '_sale_price', ''),
(951, 208, '_purchase_note', ''),
(952, 208, '_featured', 'no'),
(953, 208, '_weight', ''),
(954, 208, '_length', ''),
(955, 208, '_width', ''),
(956, 208, '_height', ''),
(957, 208, '_sku', ''),
(958, 208, '_product_attributes', 'a:0:{}'),
(959, 208, '_sale_price_dates_from', ''),
(960, 208, '_sale_price_dates_to', ''),
(961, 208, '_price', ''),
(962, 208, '_sold_individually', ''),
(963, 208, '_manage_stock', 'no'),
(964, 208, '_backorders', 'no'),
(965, 208, '_stock', ''),
(966, 208, '_upsell_ids', 'a:0:{}'),
(967, 208, '_crosssell_ids', 'a:0:{}'),
(968, 208, '_product_version', '2.4.12'),
(969, 208, '_product_image_gallery', ''),
(972, 210, '_edit_last', '1'),
(973, 210, 'field_568c29b231c78', 'a:14:{s:3:"key";s:19:"field_568c29b231c78";s:5:"label";s:4:"Type";s:4:"name";s:4:"type";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(974, 210, 'field_568c29bb31c79', 'a:14:{s:3:"key";s:19:"field_568c29bb31c79";s:5:"label";s:6:"Origin";s:4:"name";s:6:"origin";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(975, 210, 'field_568c29c531c7a', 'a:13:{s:3:"key";s:19:"field_568c29c531c7a";s:5:"label";s:11:"Description";s:4:"name";s:11:"description";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(976, 210, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"product";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(977, 210, 'position', 'normal'),
(978, 210, 'layout', 'no_box'),
(979, 210, 'hide_on_screen', ''),
(980, 210, '_edit_lock', '1452026190:1'),
(981, 208, 'type', 'Marble'),
(982, 208, '_type', 'field_568c29b231c78'),
(983, 208, 'origin', 'United States'),
(984, 208, '_origin', 'field_568c29bb31c79'),
(985, 208, 'description', 'Soft gray and gold veins. Light to medium veining. A premier solution for kitchen countertops or use in bath installations.'),
(986, 208, '_description', 'field_568c29c531c7a'),
(987, 211, '_form', '[text* your-name placeholder "Name"]\n\n[email* your-email placeholder "Email"]\n\n[text your-subject placeholder "Company"]\n\n[text your-subject placeholder "Position"]\n\n[submit "Submit"]'),
(988, 211, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:44:"[your-name] <wordpress@localdev.nystone.com>";s:4:"body";s:173:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on NY Stone (http://localdev.nystone.com)";s:9:"recipient";s:15:"sean@emagid.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(989, 211, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:41:"NY Stone <wordpress@localdev.nystone.com>";s:4:"body";s:115:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on NY Stone (http://localdev.nystone.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:25:"Reply-To: sean@emagid.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(990, 211, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";}'),
(991, 211, '_additional_settings', ''),
(992, 211, '_locale', 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-01-04 16:03:41', '2016-01-04 16:03:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2016-01-04 23:05:54', '2016-01-04 23:05:54', '', 0, 'http://localdev.nystone.com/?p=1', 1, 'post', '', 1),
(3, 1, '2016-01-04 16:03:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-01-04 16:03:49', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?p=3', 0, 'post', '', 0),
(5, 1, '2016-01-04 16:33:28', '2016-01-04 16:33:28', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-01-04 16:51:38', '2016-01-04 16:51:38', '', 0, 'http://localdev.nystone.com/?page_id=5', 14, 'page', '', 0),
(6, 1, '2016-01-04 16:33:28', '2016-01-04 16:33:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-01-04 16:33:28', '2016-01-04 16:33:28', '', 5, 'http://localdev.nystone.com/2016/01/04/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-01-04 17:27:05', '2016-01-04 17:27:05', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-01-04 21:28:51', '2016-01-04 21:28:51', '', 0, 'http://localdev.nystone.com/?page_id=7', 9, 'page', '', 0),
(8, 1, '2016-01-04 17:27:05', '2016-01-04 17:27:05', '', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-01-04 17:27:05', '2016-01-04 17:27:05', '', 7, 'http://localdev.nystone.com/2016/01/04/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-01-04 17:35:10', '2016-01-04 17:35:10', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2016-01-04 23:58:02', '2016-01-04 23:58:02', '', 0, 'http://localdev.nystone.com/?page_id=9', 19, 'page', '', 0),
(10, 1, '2016-01-04 17:35:10', '2016-01-04 17:35:10', '', 'Products', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-01-04 17:35:10', '2016-01-04 17:35:10', '', 9, 'http://localdev.nystone.com/2016/01/04/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-01-04 17:37:03', '2016-01-04 17:37:03', '', 'Inspiration', '', 'publish', 'closed', 'closed', '', 'inspiration', '', '', '2016-01-04 17:39:45', '2016-01-04 17:39:45', '', 0, 'http://localdev.nystone.com/?page_id=11', 15, 'page', '', 0),
(12, 1, '2016-01-04 17:37:03', '2016-01-04 17:37:03', '', 'Inspirations', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-01-04 17:37:03', '2016-01-04 17:37:03', '', 11, 'http://localdev.nystone.com/2016/01/04/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-01-04 17:39:45', '2016-01-04 17:39:45', '', 'Inspiration', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-01-04 17:39:45', '2016-01-04 17:39:45', '', 11, 'http://localdev.nystone.com/2016/01/04/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-01-04 17:43:11', '2016-01-04 17:43:11', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2016-01-04 17:43:11', '2016-01-04 17:43:11', '', 0, 'http://localdev.nystone.com/?page_id=14', 20, 'page', '', 0),
(15, 1, '2016-01-04 17:43:11', '2016-01-04 17:43:11', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-01-04 17:43:11', '2016-01-04 17:43:11', '', 14, 'http://localdev.nystone.com/2016/01/04/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-01-04 18:02:54', '2016-01-04 18:02:54', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2016-01-04 18:02:54', '2016-01-04 18:02:54', '', 0, 'http://localdev.nystone.com/?page_id=16', 18, 'page', '', 0),
(17, 1, '2016-01-04 18:02:54', '2016-01-04 18:02:54', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-01-04 18:02:54', '2016-01-04 18:02:54', '', 16, 'http://localdev.nystone.com/2016/01/04/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-01-04 18:11:54', '2016-01-04 18:11:54', '', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2016-01-04 18:11:54', '2016-01-04 18:11:54', '', 0, 'http://localdev.nystone.com/?page_id=20', 10, 'page', '', 0),
(21, 1, '2016-01-04 18:11:54', '2016-01-04 18:11:54', '', 'Account', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-01-04 18:11:54', '2016-01-04 18:11:54', '', 20, 'http://localdev.nystone.com/2016/01/04/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-01-04 18:13:23', '2016-01-04 18:13:23', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-01-04 18:13:23', '2016-01-04 18:13:23', '', 0, 'http://localdev.nystone.com/?page_id=22', 11, 'page', '', 0),
(23, 1, '2016-01-04 18:13:23', '2016-01-04 18:13:23', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-01-04 18:13:23', '2016-01-04 18:13:23', '', 22, 'http://localdev.nystone.com/2016/01/04/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-01-04 18:25:13', '2016-01-04 18:25:13', '', 'Slabs', '', 'publish', 'closed', 'closed', '', 'slabs', '', '', '2016-01-05 15:42:59', '2016-01-05 15:42:59', '', 0, 'http://localdev.nystone.com/?page_id=24', 22, 'page', '', 0),
(25, 1, '2016-01-04 18:25:13', '2016-01-04 18:25:13', '', 'Slabs', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-01-04 18:25:13', '2016-01-04 18:25:13', '', 24, 'http://localdev.nystone.com/2016/01/04/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-01-04 18:25:28', '2016-01-04 18:25:28', '', 'Tiles', '', 'publish', 'closed', 'closed', '', 'tiles', '', '', '2016-01-05 15:36:12', '2016-01-05 15:36:12', '', 0, 'http://localdev.nystone.com/?page_id=26', 23, 'page', '', 0),
(27, 1, '2016-01-04 18:25:28', '2016-01-04 18:25:28', '', 'Tiles', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-01-04 18:25:28', '2016-01-04 18:25:28', '', 26, 'http://localdev.nystone.com/2016/01/04/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-01-04 18:25:45', '2016-01-04 18:25:45', '', 'New Arrivals', '', 'publish', 'closed', 'closed', '', 'new-arrivals', '', '', '2016-01-05 15:41:35', '2016-01-05 15:41:35', '', 0, 'http://localdev.nystone.com/?page_id=28', 17, 'page', '', 0),
(29, 1, '2016-01-04 18:25:45', '2016-01-04 18:25:45', '', 'New Arrivals', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-01-04 18:25:45', '2016-01-04 18:25:45', '', 28, 'http://localdev.nystone.com/2016/01/04/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-01-04 18:38:47', '2016-01-04 18:38:47', '', 'Material Specifications', '', 'publish', 'closed', 'closed', '', 'material-specifications', '', '', '2016-01-04 18:38:47', '2016-01-04 18:38:47', '', 14, 'http://localdev.nystone.com/?page_id=30', 16, 'page', '', 0),
(31, 1, '2016-01-04 18:38:47', '2016-01-04 18:38:47', '', 'Material Specifications', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-01-04 18:38:47', '2016-01-04 18:38:47', '', 30, 'http://localdev.nystone.com/2016/01/04/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-01-04 18:44:31', '2016-01-04 18:44:31', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2016-01-04 18:44:31', '2016-01-04 18:44:31', '', 14, 'http://localdev.nystone.com/?page_id=32', 13, 'page', '', 0),
(33, 1, '2016-01-04 18:44:31', '2016-01-04 18:44:31', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-01-04 18:44:31', '2016-01-04 18:44:31', '', 32, 'http://localdev.nystone.com/2016/01/04/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=34', 19, 'nav_menu_item', '', 0),
(35, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=35', 18, 'nav_menu_item', '', 0),
(36, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=36', 17, 'nav_menu_item', '', 0),
(37, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=37', 11, 'nav_menu_item', '', 0),
(38, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 14, 'http://localdev.nystone.com/?p=38', 14, 'nav_menu_item', '', 0),
(39, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 14, 'http://localdev.nystone.com/?p=39', 13, 'nav_menu_item', '', 0),
(40, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=40', 10, 'nav_menu_item', '', 0),
(41, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', '', 'Products', '', 'publish', 'closed', 'closed', '', '41', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=41', 6, 'nav_menu_item', '', 0),
(42, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 9, 'http://localdev.nystone.com/?p=42', 9, 'nav_menu_item', '', 0),
(43, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 9, 'http://localdev.nystone.com/?p=43', 8, 'nav_menu_item', '', 0),
(44, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 9, 'http://localdev.nystone.com/?p=44', 7, 'nav_menu_item', '', 0),
(45, 1, '2016-01-04 18:54:19', '2016-01-04 18:54:19', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2016-01-04 19:09:27', '2016-01-04 19:09:27', '', 'Showroom', '', 'publish', 'closed', 'closed', '', 'showroom', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2016-01-04 19:13:28', '2016-01-04 19:13:28', '', 'Warehouse', '', 'publish', 'closed', 'closed', '', 'warehouse', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=47', 3, 'nav_menu_item', '', 0),
(48, 1, '2016-01-04 19:13:28', '2016-01-04 19:13:28', '', 'Why Us?', '', 'publish', 'closed', 'closed', '', 'why-us', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2016-01-04 19:15:28', '2016-01-04 19:15:28', '', 'Press', '', 'publish', 'closed', 'closed', '', 'press', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=49', 5, 'nav_menu_item', '', 0),
(50, 1, '2016-01-04 19:16:39', '2016-01-04 19:16:39', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2016-01-04 19:19:12', '2016-01-04 19:19:12', '', 0, 'http://localdev.nystone.com/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2016-01-04 19:16:39', '2016-01-04 19:16:39', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2016-01-04 19:19:12', '2016-01-04 19:19:12', '', 14, 'http://localdev.nystone.com/?p=51', 4, 'nav_menu_item', '', 0),
(52, 1, '2016-01-04 19:16:39', '2016-01-04 19:16:39', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2016-01-04 19:19:12', '2016-01-04 19:19:12', '', 0, 'http://localdev.nystone.com/?p=52', 2, 'nav_menu_item', '', 0),
(53, 1, '2016-01-04 19:19:12', '2016-01-04 19:19:12', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2016-01-04 19:19:12', '2016-01-04 19:19:12', '', 0, 'http://localdev.nystone.com/?p=53', 5, 'nav_menu_item', '', 0),
(54, 1, '2016-01-04 19:19:12', '2016-01-04 19:19:12', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2016-01-04 19:19:12', '2016-01-04 19:19:12', '', 0, 'http://localdev.nystone.com/?p=54', 3, 'nav_menu_item', '', 0),
(55, 1, '2016-01-04 19:19:12', '2016-01-04 19:19:12', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2016-01-04 19:19:12', '2016-01-04 19:19:12', '', 0, 'http://localdev.nystone.com/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2016-01-04 19:21:04', '2016-01-04 19:21:04', '', 'Our Process', '', 'publish', 'closed', 'closed', '', 'our-process', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 0, 'http://localdev.nystone.com/?p=56', 12, 'nav_menu_item', '', 0),
(59, 1, '2016-01-04 19:21:51', '2016-01-04 19:21:51', '', 'Fabricators', '', 'publish', 'closed', 'closed', '', 'fabricators', '', '', '2016-01-04 19:21:51', '2016-01-04 19:21:51', '', 14, 'http://localdev.nystone.com/?page_id=59', 12, 'page', '', 0),
(60, 1, '2016-01-04 19:21:51', '2016-01-04 19:21:51', '', 'Fabricators', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2016-01-04 19:21:51', '2016-01-04 19:21:51', '', 59, 'http://localdev.nystone.com/2016/01/04/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2016-01-04 19:25:23', '2016-01-04 19:25:23', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 14, 'http://localdev.nystone.com/?p=61', 15, 'nav_menu_item', '', 0),
(62, 1, '2016-01-04 19:28:05', '2016-01-04 19:28:05', '', 'Sample Request', '', 'publish', 'closed', 'closed', '', 'sample-request', '', '', '2016-01-04 19:28:05', '2016-01-04 19:28:05', '', 14, 'http://localdev.nystone.com/?page_id=62', 21, 'page', '', 0),
(63, 1, '2016-01-04 19:28:05', '2016-01-04 19:28:05', '', 'Sample Request', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2016-01-04 19:28:05', '2016-01-04 19:28:05', '', 62, 'http://localdev.nystone.com/2016/01/04/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2016-01-04 19:28:30', '2016-01-04 19:28:30', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2016-01-04 23:27:04', '2016-01-04 23:27:04', '', 14, 'http://localdev.nystone.com/?p=64', 16, 'nav_menu_item', '', 0),
(65, 1, '2016-01-04 19:35:12', '2016-01-04 19:35:12', '[text* your-name placeholder "Name"]\r\n\r\n[email* your-email placeholder "Email"]\r\n\r\n[text your-subject placeholder "Company"]\r\n\r\n[textarea your-message placeholder "Comment..."]\r\n\r\n[submit "Submit"]\n[your-subject]\n[your-name] <wordpress@localdev.nystone.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on NY Stone (http://localdev.nystone.com)\nsean@emagid.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nNY Stone <wordpress@localdev.nystone.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on NY Stone (http://localdev.nystone.com)\n[your-email]\nReply-To: sean@emagid.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nYour answer is not correct.\nYour entered code is incorrect.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-01-04 20:14:40', '2016-01-04 20:14:40', '', 0, 'http://localdev.nystone.com/?post_type=wpcf7_contact_form&#038;p=65', 0, 'wpcf7_contact_form', '', 0),
(66, 1, '2016-01-04 21:04:08', '2016-01-04 21:04:08', '', 'Sliders', '', 'publish', 'closed', 'closed', '', 'acf_sliders', '', '', '2016-01-04 21:04:08', '2016-01-04 21:04:08', '', 0, 'http://localdev.nystone.com/?post_type=acf&#038;p=66', 0, 'acf', '', 0),
(67, 1, '2016-01-04 21:08:41', '2016-01-04 21:08:41', '', 'Fiori Di Bosco', '', 'publish', 'closed', 'closed', '', 'slider-1', '', '', '2016-01-04 21:13:56', '2016-01-04 21:13:56', '', 0, 'http://localdev.nystone.com/?post_type=sliders&#038;p=67', 1, 'sliders', '', 0),
(68, 1, '2016-01-04 21:06:08', '2016-01-04 21:06:08', '', 'about_hero', '', 'inherit', 'open', 'closed', '', 'about_hero', '', '', '2016-01-04 21:06:08', '2016-01-04 21:06:08', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/about_hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2016-01-04 21:06:10', '2016-01-04 21:06:10', '', 'about_hero2', '', 'inherit', 'open', 'closed', '', 'about_hero2', '', '', '2016-01-04 21:06:10', '2016-01-04 21:06:10', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/about_hero2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2016-01-04 21:06:12', '2016-01-04 21:06:12', '', 'application_image_1', '', 'inherit', 'open', 'closed', '', 'application_image_1', '', '', '2016-01-04 21:06:12', '2016-01-04 21:06:12', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2016-01-04 21:06:15', '2016-01-04 21:06:15', '', 'application_image_2', '', 'inherit', 'open', 'closed', '', 'application_image_2', '', '', '2016-01-04 21:06:15', '2016-01-04 21:06:15', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2016-01-04 21:06:17', '2016-01-04 21:06:17', '', 'application_image_3', '', 'inherit', 'open', 'closed', '', 'application_image_3', '', '', '2016-01-04 21:06:17', '2016-01-04 21:06:17', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2016-01-04 21:06:20', '2016-01-04 21:06:20', '', 'application_image_4', '', 'inherit', 'open', 'closed', '', 'application_image_4', '', '', '2016-01-04 21:06:20', '2016-01-04 21:06:20', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2016-01-04 21:06:23', '2016-01-04 21:06:23', '', 'application_image_5', '', 'inherit', 'open', 'closed', '', 'application_image_5', '', '', '2016-01-04 21:06:23', '2016-01-04 21:06:23', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2016-01-04 21:06:25', '2016-01-04 21:06:25', '', 'application_image_6', '', 'inherit', 'open', 'closed', '', 'application_image_6', '', '', '2016-01-04 21:06:25', '2016-01-04 21:06:25', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2016-01-04 21:06:27', '2016-01-04 21:06:27', '', 'application_image_7', '', 'inherit', 'open', 'closed', '', 'application_image_7', '', '', '2016-01-04 21:06:27', '2016-01-04 21:06:27', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_7.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2016-01-04 21:06:30', '2016-01-04 21:06:30', '', 'application_image_8', '', 'inherit', 'open', 'closed', '', 'application_image_8', '', '', '2016-01-04 21:06:30', '2016-01-04 21:06:30', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_8.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2016-01-04 21:06:31', '2016-01-04 21:06:31', '', 'application_image_9', '', 'inherit', 'open', 'closed', '', 'application_image_9', '', '', '2016-01-04 21:06:31', '2016-01-04 21:06:31', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/application_image_9.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2016-01-04 21:06:32', '2016-01-04 21:06:32', '', 'fabrication_image', '', 'inherit', 'open', 'closed', '', 'fabrication_image', '', '', '2016-01-04 21:06:32', '2016-01-04 21:06:32', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/fabrication_image.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2016-01-04 21:06:34', '2016-01-04 21:06:34', '', 'favorite_material_1', '', 'inherit', 'open', 'closed', '', 'favorite_material_1', '', '', '2016-01-04 21:06:34', '2016-01-04 21:06:34', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/favorite_material_1.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2016-01-04 21:06:35', '2016-01-04 21:06:35', '', 'glass', '', 'inherit', 'open', 'closed', '', 'glass', '', '', '2016-01-04 21:06:35', '2016-01-04 21:06:35', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/glass.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2016-01-04 21:06:36', '2016-01-04 21:06:36', '', 'landing_background_2', '', 'inherit', 'open', 'closed', '', 'landing_background_2', '', '', '2016-01-04 21:06:36', '2016-01-04 21:06:36', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/landing_background_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2016-01-04 21:06:39', '2016-01-04 21:06:39', '', 'landing_background_3', '', 'inherit', 'open', 'closed', '', 'landing_background_3', '', '', '2016-01-04 21:06:39', '2016-01-04 21:06:39', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/landing_background_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2016-01-04 21:06:41', '2016-01-04 21:06:41', '', 'landing_background_4', '', 'inherit', 'open', 'closed', '', 'landing_background_4', '', '', '2016-01-04 21:06:41', '2016-01-04 21:06:41', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/landing_background_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2016-01-04 21:06:43', '2016-01-04 21:06:43', '', 'landing_background_5', '', 'inherit', 'open', 'closed', '', 'landing_background_5', '', '', '2016-01-04 21:06:43', '2016-01-04 21:06:43', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/landing_background_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2016-01-04 21:06:45', '2016-01-04 21:06:45', '', 'landing_background', '', 'inherit', 'open', 'closed', '', 'landing_background', '', '', '2016-01-04 21:06:45', '2016-01-04 21:06:45', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/landing_background.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2016-01-04 21:06:48', '2016-01-04 21:06:48', '', 'landing_second_background', '', 'inherit', 'open', 'closed', '', 'landing_second_background', '', '', '2016-01-04 21:06:48', '2016-01-04 21:06:48', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/landing_second_background.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2016-01-04 21:06:50', '2016-01-04 21:06:50', '', 'landing_third_background', '', 'inherit', 'open', 'closed', '', 'landing_third_background', '', '', '2016-01-04 21:06:50', '2016-01-04 21:06:50', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/landing_third_background.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2016-01-04 21:06:52', '2016-01-04 21:06:52', '', 'learn_banner_2', '', 'inherit', 'open', 'closed', '', 'learn_banner_2', '', '', '2016-01-04 21:06:52', '2016-01-04 21:06:52', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/learn_banner_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2016-01-04 21:06:55', '2016-01-04 21:06:55', '', 'learn_banner_3', '', 'inherit', 'open', 'closed', '', 'learn_banner_3', '', '', '2016-01-04 21:06:55', '2016-01-04 21:06:55', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/learn_banner_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2016-01-04 21:06:58', '2016-01-04 21:06:58', '', 'learn_banner_4', '', 'inherit', 'open', 'closed', '', 'learn_banner_4', '', '', '2016-01-04 21:06:58', '2016-01-04 21:06:58', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/learn_banner_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2016-01-04 21:07:01', '2016-01-04 21:07:01', '', 'learn_banner_6', '', 'inherit', 'open', 'closed', '', 'learn_banner_6', '', '', '2016-01-04 21:07:01', '2016-01-04 21:07:01', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/learn_banner_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2016-01-04 21:07:04', '2016-01-04 21:07:04', '', 'learn_banner_7', '', 'inherit', 'open', 'closed', '', 'learn_banner_7', '', '', '2016-01-04 21:07:04', '2016-01-04 21:07:04', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/learn_banner_7.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2016-01-04 21:07:07', '2016-01-04 21:07:07', '', 'learn_banner_8', '', 'inherit', 'open', 'closed', '', 'learn_banner_8', '', '', '2016-01-04 21:07:07', '2016-01-04 21:07:07', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/learn_banner_8.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2016-01-04 21:07:10', '2016-01-04 21:07:10', '', 'left_slider_arrow', '', 'inherit', 'open', 'closed', '', 'left_slider_arrow', '', '', '2016-01-04 21:07:10', '2016-01-04 21:07:10', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/left_slider_arrow.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2016-01-04 21:07:12', '2016-01-04 21:07:12', '', 'location_picture_1', '', 'inherit', 'open', 'closed', '', 'location_picture_1', '', '', '2016-01-04 21:07:12', '2016-01-04 21:07:12', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/location_picture_1.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2016-01-04 21:07:17', '2016-01-04 21:07:17', '', 'location_picture_2', '', 'inherit', 'open', 'closed', '', 'location_picture_2', '', '', '2016-01-04 21:07:17', '2016-01-04 21:07:17', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/location_picture_2.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2016-01-04 21:07:22', '2016-01-04 21:07:22', '', 'location_picture_3', '', 'inherit', 'open', 'closed', '', 'location_picture_3', '', '', '2016-01-04 21:07:22', '2016-01-04 21:07:22', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/location_picture_3.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2016-01-04 21:07:26', '2016-01-04 21:07:26', '', 'location_showroom', '', 'inherit', 'open', 'closed', '', 'location_showroom', '', '', '2016-01-04 21:07:26', '2016-01-04 21:07:26', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/location_showroom.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2016-01-04 21:07:29', '2016-01-04 21:07:29', '', 'location_warehouse', '', 'inherit', 'open', 'closed', '', 'location_warehouse', '', '', '2016-01-04 21:07:29', '2016-01-04 21:07:29', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/location_warehouse.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2016-01-04 21:07:32', '2016-01-04 21:07:32', '', 'logo_black', '', 'inherit', 'open', 'closed', '', 'logo_black', '', '', '2016-01-04 21:07:32', '2016-01-04 21:07:32', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/logo_black.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2016-01-04 21:07:34', '2016-01-04 21:07:34', '', 'logo_bluegray', '', 'inherit', 'open', 'closed', '', 'logo_bluegray', '', '', '2016-01-04 21:07:34', '2016-01-04 21:07:34', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/logo_bluegray.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2016-01-04 21:07:36', '2016-01-04 21:07:36', '', 'logo_white', '', 'inherit', 'open', 'closed', '', 'logo_white', '', '', '2016-01-04 21:07:36', '2016-01-04 21:07:36', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/logo_white.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2016-01-04 21:07:38', '2016-01-04 21:07:38', '', 'material_granite', '', 'inherit', 'open', 'closed', '', 'material_granite', '', '', '2016-01-04 21:07:38', '2016-01-04 21:07:38', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/material_granite.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2016-01-04 21:07:40', '2016-01-04 21:07:40', '', 'material_limestone', '', 'inherit', 'open', 'closed', '', 'material_limestone', '', '', '2016-01-04 21:07:40', '2016-01-04 21:07:40', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/material_limestone.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2016-01-04 21:07:42', '2016-01-04 21:07:42', '', 'material_marble', '', 'inherit', 'open', 'closed', '', 'material_marble', '', '', '2016-01-04 21:07:42', '2016-01-04 21:07:42', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/material_marble.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2016-01-04 21:07:44', '2016-01-04 21:07:44', '', 'material_onyx', '', 'inherit', 'open', 'closed', '', 'material_onyx', '', '', '2016-01-04 21:07:44', '2016-01-04 21:07:44', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/material_onyx.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2016-01-04 21:07:46', '2016-01-04 21:07:46', '', 'material_quartzite', '', 'inherit', 'open', 'closed', '', 'material_quartzite', '', '', '2016-01-04 21:07:46', '2016-01-04 21:07:46', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/material_quartzite.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2016-01-04 21:07:48', '2016-01-04 21:07:48', '', 'material_specs_table', '', 'inherit', 'open', 'closed', '', 'material_specs_table', '', '', '2016-01-04 21:07:48', '2016-01-04 21:07:48', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/material_specs_table.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2016-01-04 21:07:50', '2016-01-04 21:07:50', '', 'material_travertine', '', 'inherit', 'open', 'closed', '', 'material_travertine', '', '', '2016-01-04 21:07:50', '2016-01-04 21:07:50', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/material_travertine.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2016-01-04 21:07:51', '2016-01-04 21:07:51', '', 'pantone_logo_vertical', '', 'inherit', 'open', 'closed', '', 'pantone_logo_vertical', '', '', '2016-01-04 21:07:51', '2016-01-04 21:07:51', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/pantone_logo_vertical.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2016-01-04 21:07:52', '2016-01-04 21:07:52', '', 'pantone_logo', '', 'inherit', 'open', 'closed', '', 'pantone_logo', '', '', '2016-01-04 21:07:52', '2016-01-04 21:07:52', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/pantone_logo.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2016-01-04 21:07:53', '2016-01-04 21:07:53', '', 'pdf_download_icon', '', 'inherit', 'open', 'closed', '', 'pdf_download_icon', '', '', '2016-01-04 21:07:53', '2016-01-04 21:07:53', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/pdf_download_icon.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2016-01-04 21:07:54', '2016-01-04 21:07:54', '', 'product_category_1', '', 'inherit', 'open', 'closed', '', 'product_category_1', '', '', '2016-01-04 21:07:54', '2016-01-04 21:07:54', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_1.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2016-01-04 21:07:55', '2016-01-04 21:07:55', '', 'product_category_2', '', 'inherit', 'open', 'closed', '', 'product_category_2', '', '', '2016-01-04 21:07:55', '2016-01-04 21:07:55', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_2.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2016-01-04 21:07:56', '2016-01-04 21:07:56', '', 'product_category_3', '', 'inherit', 'open', 'closed', '', 'product_category_3', '', '', '2016-01-04 21:07:56', '2016-01-04 21:07:56', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_3.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2016-01-04 21:07:57', '2016-01-04 21:07:57', '', 'product_category_4', '', 'inherit', 'open', 'closed', '', 'product_category_4', '', '', '2016-01-04 21:07:57', '2016-01-04 21:07:57', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_4.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2016-01-04 21:07:58', '2016-01-04 21:07:58', '', 'product_category_5', '', 'inherit', 'open', 'closed', '', 'product_category_5', '', '', '2016-01-04 21:07:58', '2016-01-04 21:07:58', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_5.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2016-01-04 21:07:59', '2016-01-04 21:07:59', '', 'product_category_6', '', 'inherit', 'open', 'closed', '', 'product_category_6', '', '', '2016-01-04 21:07:59', '2016-01-04 21:07:59', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_6.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2016-01-04 21:08:00', '2016-01-04 21:08:00', '', 'product_category_7', '', 'inherit', 'open', 'closed', '', 'product_category_7', '', '', '2016-01-04 21:08:00', '2016-01-04 21:08:00', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_7.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2016-01-04 21:08:01', '2016-01-04 21:08:01', '', 'product_category_8', '', 'inherit', 'open', 'closed', '', 'product_category_8', '', '', '2016-01-04 21:08:01', '2016-01-04 21:08:01', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_8.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2016-01-04 21:08:02', '2016-01-04 21:08:02', '', 'product_category_9', '', 'inherit', 'open', 'closed', '', 'product_category_9', '', '', '2016-01-04 21:08:02', '2016-01-04 21:08:02', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_9.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2016-01-04 21:08:03', '2016-01-04 21:08:03', '', 'product_category_10', '', 'inherit', 'open', 'closed', '', 'product_category_10', '', '', '2016-01-04 21:08:03', '2016-01-04 21:08:03', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_category_10.png', 0, 'attachment', 'image/png', 0),
(124, 1, '2016-01-04 21:08:04', '2016-01-04 21:08:04', '', 'product_detail_extraphoto', '', 'inherit', 'open', 'closed', '', 'product_detail_extraphoto', '', '', '2016-01-04 21:08:04', '2016-01-04 21:08:04', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_detail_extraphoto.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2016-01-04 21:08:06', '2016-01-04 21:08:06', '', 'product_detail_swatch', '', 'inherit', 'open', 'closed', '', 'product_detail_swatch', '', '', '2016-01-04 21:08:06', '2016-01-04 21:08:06', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/product_detail_swatch.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2016-01-04 21:08:07', '2016-01-04 21:08:07', '', 'project_astor', '', 'inherit', 'open', 'closed', '', 'project_astor', '', '', '2016-01-04 21:08:07', '2016-01-04 21:08:07', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/project_astor.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2016-01-04 21:08:08', '2016-01-04 21:08:08', '', 'project_beach', '', 'inherit', 'open', 'closed', '', 'project_beach', '', '', '2016-01-04 21:08:08', '2016-01-04 21:08:08', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/project_beach.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2016-01-04 21:08:09', '2016-01-04 21:08:09', '', 'project_centralpark', '', 'inherit', 'open', 'closed', '', 'project_centralpark', '', '', '2016-01-04 21:08:09', '2016-01-04 21:08:09', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/project_centralpark.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2016-01-04 21:08:10', '2016-01-04 21:08:10', '', 'project_chanel', '', 'inherit', 'open', 'closed', '', 'project_chanel', '', '', '2016-01-04 21:08:10', '2016-01-04 21:08:10', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/project_chanel.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2016-01-04 21:08:11', '2016-01-04 21:08:11', '', 'project_fendi', '', 'inherit', 'open', 'closed', '', 'project_fendi', '', '', '2016-01-04 21:08:11', '2016-01-04 21:08:11', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/project_fendi.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2016-01-04 21:08:12', '2016-01-04 21:08:12', '', 'project_marriott', '', 'inherit', 'open', 'closed', '', 'project_marriott', '', '', '2016-01-04 21:08:12', '2016-01-04 21:08:12', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/project_marriott.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2016-01-04 21:08:13', '2016-01-04 21:08:13', '', 'project_whotel', '', 'inherit', 'open', 'closed', '', 'project_whotel', '', '', '2016-01-04 21:08:13', '2016-01-04 21:08:13', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/project_whotel.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2016-01-04 21:08:14', '2016-01-04 21:08:14', '', 'project_yoo', '', 'inherit', 'open', 'closed', '', 'project_yoo', '', '', '2016-01-04 21:08:14', '2016-01-04 21:08:14', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/project_yoo.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2016-01-04 21:08:15', '2016-01-04 21:08:15', '', 'right_slider_arrow', '', 'inherit', 'open', 'closed', '', 'right_slider_arrow', '', '', '2016-01-04 21:08:15', '2016-01-04 21:08:15', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/right_slider_arrow.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2016-01-04 21:08:16', '2016-01-04 21:08:16', '', 'sample_request_hero_2', '', 'inherit', 'open', 'closed', '', 'sample_request_hero_2', '', '', '2016-01-04 21:08:16', '2016-01-04 21:08:16', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/sample_request_hero_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2016-01-04 21:08:18', '2016-01-04 21:08:18', '', 'sample_request_hero', '', 'inherit', 'open', 'closed', '', 'sample_request_hero', '', '', '2016-01-04 21:08:18', '2016-01-04 21:08:18', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/sample_request_hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2016-01-04 21:08:22', '2016-01-04 21:08:22', '', 'stone_favicon', '', 'inherit', 'open', 'closed', '', 'stone_favicon', '', '', '2016-01-04 21:08:22', '2016-01-04 21:08:22', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/stone_favicon.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2016-01-04 21:08:23', '2016-01-04 21:08:23', '', 'transparent_dropdown_arrow', '', 'inherit', 'open', 'closed', '', 'transparent_dropdown_arrow', '', '', '2016-01-04 21:08:23', '2016-01-04 21:08:23', '', 67, 'http://localdev.nystone.com/wp-content/uploads/2016/01/transparent_dropdown_arrow.png', 0, 'attachment', 'image/png', 0),
(139, 1, '2016-01-04 21:12:58', '2016-01-04 21:12:58', '', 'Calacatta Cielo', '', 'publish', 'closed', 'closed', '', 'calacatta-cielo', '', '', '2016-01-04 21:17:11', '2016-01-04 21:17:11', '', 0, 'http://localdev.nystone.com/?post_type=sliders&#038;p=139', 2, 'sliders', '', 0),
(140, 1, '2016-01-04 21:14:50', '2016-01-04 21:14:50', '', 'Light Macauba', '', 'publish', 'closed', 'closed', '', 'light-macauba', '', '', '2016-01-04 21:14:50', '2016-01-04 21:14:50', '', 0, 'http://localdev.nystone.com/?post_type=sliders&#038;p=140', 3, 'sliders', '', 0),
(141, 1, '2016-01-04 21:15:22', '2016-01-04 21:15:22', '', 'Pink Teak Wood', '', 'publish', 'closed', 'closed', '', 'pink-teak-wood', '', '', '2016-01-04 21:15:22', '2016-01-04 21:15:22', '', 0, 'http://localdev.nystone.com/?post_type=sliders&#038;p=141', 4, 'sliders', '', 0),
(142, 1, '2016-01-04 21:15:53', '2016-01-04 21:15:53', '', 'Thai Quartzite', '', 'publish', 'closed', 'closed', '', 'thai-quartzite', '', '', '2016-01-04 21:15:53', '2016-01-04 21:15:53', '', 0, 'http://localdev.nystone.com/?post_type=sliders&#038;p=142', 5, 'sliders', '', 0),
(143, 1, '2016-01-04 21:22:00', '2016-01-04 21:22:00', '[wysija_page]', 'Subscription confirmation', '', 'publish', 'closed', 'closed', '', 'subscriptions', '', '', '2016-01-04 21:22:00', '2016-01-04 21:22:00', '', 0, 'http://localdev.nystone.com/?wysijap=subscriptions', 0, 'wysijap', '', 0),
(144, 1, '2016-01-04 21:24:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-04 21:24:30', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=acf&p=144', 0, 'acf', '', 0),
(145, 1, '2016-01-04 21:28:25', '2016-01-04 21:28:25', '', 'About', '', 'publish', 'closed', 'closed', '', 'acf_about', '', '', '2016-01-04 21:28:25', '2016-01-04 21:28:25', '', 0, 'http://localdev.nystone.com/?post_type=acf&#038;p=145', 0, 'acf', '', 0),
(146, 1, '2016-01-04 21:28:40', '2016-01-04 21:28:40', 'New York Stone LLC is one of the largest natural stone wholesalers on the East Coast. Established in 1988, we have over 28 years of experience in suppling stone for our clients. We are proud to offer over 3 million square feet of imported natural stone slabs and tiles from all over the world. Our Inventory features marble, limestone, quartzite, travertine, granite, porcelain, and mosaics. New York Stone delivers a committed and unique consultation for any scale stone application. As part of our process, we connect clients to renown fabricators and installers. Due to a commitment to quality, our company has become one of the most trusted names in the American stone industry.', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-01-04 21:28:40', '2016-01-04 21:28:40', '', 7, 'http://localdev.nystone.com/2016/01/04/7-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2016-01-04 21:28:51', '2016-01-04 21:28:51', '', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-01-04 21:28:51', '2016-01-04 21:28:51', '', 7, 'http://localdev.nystone.com/2016/01/04/7-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2016-01-04 21:32:12', '2016-01-04 21:32:12', '', 'Showroom', '', 'publish', 'closed', 'closed', '', 'acf_showroom', '', '', '2016-01-04 21:32:12', '2016-01-04 21:32:12', '', 0, 'http://localdev.nystone.com/?post_type=acf&#038;p=148', 0, 'acf', '', 0),
(149, 1, '2016-01-04 21:34:23', '2016-01-04 21:34:23', '', 'Showroom 1', '', 'publish', 'closed', 'closed', '', 'showroom-1', '', '', '2016-01-04 21:34:23', '2016-01-04 21:34:23', '', 0, 'http://localdev.nystone.com/?post_type=showroom&#038;p=149', 1, 'showroom', '', 0),
(150, 1, '2016-01-04 21:36:09', '2016-01-04 21:36:09', '', 'Showroom 2', '', 'publish', 'closed', 'closed', '', 'showroom-2', '', '', '2016-01-04 21:36:09', '2016-01-04 21:36:09', '', 0, 'http://localdev.nystone.com/?post_type=showroom&#038;p=150', 2, 'showroom', '', 0),
(151, 1, '2016-01-04 21:38:04', '2016-01-04 21:38:04', '', 'Showroom 3', '', 'publish', 'closed', 'closed', '', 'showroom-3', '', '', '2016-01-04 21:38:04', '2016-01-04 21:38:04', '', 0, 'http://localdev.nystone.com/?post_type=showroom&#038;p=151', 3, 'showroom', '', 0),
(152, 1, '2016-01-04 21:42:01', '2016-01-04 21:42:01', '', 'Warehouse', '', 'publish', 'closed', 'closed', '', 'acf_warehouse', '', '', '2016-01-04 21:42:01', '2016-01-04 21:42:01', '', 0, 'http://localdev.nystone.com/?post_type=acf&#038;p=152', 0, 'acf', '', 0),
(153, 1, '2016-01-04 21:42:40', '2016-01-04 21:42:40', '', 'Warehouse 1', '', 'publish', 'closed', 'closed', '', 'warehouse-1', '', '', '2016-01-04 21:42:40', '2016-01-04 21:42:40', '', 0, 'http://localdev.nystone.com/?post_type=warehouses&#038;p=153', 1, 'warehouses', '', 0),
(154, 1, '2016-01-04 21:43:12', '2016-01-04 21:43:12', '', 'Warehouse 2', '', 'publish', 'closed', 'closed', '', 'warehouse-2', '', '', '2016-01-04 21:43:12', '2016-01-04 21:43:12', '', 0, 'http://localdev.nystone.com/?post_type=warehouses&#038;p=154', 2, 'warehouses', '', 0),
(155, 1, '2016-01-04 21:43:45', '2016-01-04 21:43:45', '', 'Warehouse 3', '', 'publish', 'closed', 'closed', '', 'warehouse-3', '', '', '2016-01-04 21:43:45', '2016-01-04 21:43:45', '', 0, 'http://localdev.nystone.com/?post_type=warehouses&#038;p=155', 3, 'warehouses', '', 0),
(156, 1, '2016-01-04 21:58:07', '2016-01-04 21:58:07', '', 'Products', '', 'publish', 'closed', 'closed', '', 'acf_products', '', '', '2016-01-05 00:08:38', '2016-01-05 00:08:38', '', 0, 'http://localdev.nystone.com/?post_type=acf&#038;p=156', 0, 'acf', '', 0),
(157, 1, '2016-01-04 22:01:29', '2016-01-04 22:01:29', '', 'Marble', '', 'publish', 'closed', 'closed', '', 'marble', '', '', '2016-01-04 22:50:15', '2016-01-04 22:50:15', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=157', 0, 'products', '', 0),
(158, 1, '2016-01-04 22:07:54', '2016-01-04 22:07:54', '', 'Quartzite', '', 'publish', 'closed', 'closed', '', 'quartzite', '', '', '2016-01-04 22:50:40', '2016-01-04 22:50:40', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=158', 0, 'products', '', 0),
(159, 1, '2016-01-04 22:09:08', '2016-01-04 22:09:08', '', 'Granite', '', 'publish', 'closed', 'closed', '', 'granite', '', '', '2016-01-04 22:50:40', '2016-01-04 22:50:40', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=159', 0, 'products', '', 0),
(160, 1, '2016-01-04 22:10:19', '2016-01-04 22:10:19', '', 'Finishes', '', 'publish', 'closed', 'closed', '', 'finishes', '', '', '2016-01-04 22:46:59', '2016-01-04 22:46:59', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=160', 0, 'products', '', 0),
(161, 1, '2016-01-04 22:10:42', '2016-01-04 22:10:42', '', 'Mosaics', '', 'publish', 'closed', 'closed', '', 'mosaics', '', '', '2016-01-04 22:46:57', '2016-01-04 22:46:57', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=161', 0, 'products', '', 0),
(162, 1, '2016-01-04 22:11:31', '2016-01-04 22:11:31', '', 'Travertine', '', 'publish', 'closed', 'closed', '', 'travertine', '', '', '2016-01-04 22:50:40', '2016-01-04 22:50:40', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=162', 0, 'products', '', 0),
(163, 1, '2016-01-04 22:12:17', '2016-01-04 22:12:17', '', 'Limestone', '', 'publish', 'closed', 'closed', '', 'limestone', '', '', '2016-01-04 22:50:40', '2016-01-04 22:50:40', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=163', 0, 'products', '', 0),
(164, 1, '2016-01-04 22:12:34', '2016-01-04 22:12:34', '', 'Onyx', '', 'publish', 'closed', 'closed', '', 'onyx', '', '', '2016-01-04 22:50:40', '2016-01-04 22:50:40', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=164', 0, 'products', '', 0),
(165, 1, '2016-01-04 22:13:22', '2016-01-04 22:13:22', '', 'Colorquartz', '', 'publish', 'closed', 'closed', '', 'colorquartz', '', '', '2016-01-04 22:46:52', '2016-01-04 22:46:52', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=165', 0, 'products', '', 0),
(166, 1, '2016-01-04 22:13:55', '2016-01-04 22:13:55', '', 'Porcelain', '', 'publish', 'closed', 'closed', '', 'porcelain', '', '', '2016-01-04 22:46:20', '2016-01-04 22:46:20', '', 0, 'http://localdev.nystone.com/?post_type=products&#038;p=166', 0, 'products', '', 0),
(167, 1, '2016-01-04 22:20:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-04 22:20:55', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=slabs&p=167', 0, 'slabs', '', 0),
(168, 1, '2016-01-04 22:21:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-04 22:21:22', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=slabs&p=168', 0, 'slabs', '', 0),
(169, 1, '2016-01-04 22:36:12', '2016-01-04 22:36:12', '', 'Granite', '', 'inherit', 'closed', 'closed', '', '159-autosave-v1', '', '', '2016-01-04 22:36:12', '2016-01-04 22:36:12', '', 159, 'http://localdev.nystone.com/2016/01/04/159-autosave-v1/', 0, 'revision', '', 0),
(170, 1, '2016-01-04 23:05:54', '2016-01-04 23:05:54', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-01-04 23:05:54', '2016-01-04 23:05:54', '', 1, 'http://localdev.nystone.com/1-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2016-01-04 23:06:44', '2016-01-04 23:06:44', '', 'Product', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-01-04 23:06:44', '2016-01-04 23:06:44', '', 9, 'http://localdev.nystone.com/9-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2016-01-04 23:07:31', '2016-01-04 23:07:31', '', 'Products', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-01-04 23:07:31', '2016-01-04 23:07:31', '', 9, 'http://localdev.nystone.com/9-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2016-01-04 23:23:29', '2016-01-04 23:23:29', '', 'Product', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-01-04 23:23:29', '2016-01-04 23:23:29', '', 9, 'http://localdev.nystone.com/9-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2016-01-04 23:26:21', '2016-01-04 23:26:21', '', 'Porcelain', '', 'trash', 'closed', 'closed', '', 'porcelain', '', '', '2016-01-05 18:54:12', '2016-01-05 18:54:12', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=174', 0, 'product', '', 0),
(175, 1, '2016-01-04 23:31:49', '2016-01-04 23:31:49', '', 'Marble', '', 'trash', 'closed', 'closed', '', 'marble', '', '', '2016-01-05 18:54:12', '2016-01-05 18:54:12', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=175', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(176, 1, '2016-01-04 23:38:34', '2016-01-04 23:38:34', '', 'Quartzite', '', 'trash', 'closed', 'closed', '', 'quartzite', '', '', '2016-01-05 18:54:11', '2016-01-05 18:54:11', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=176', 0, 'product', '', 0),
(177, 1, '2016-01-04 23:43:06', '2016-01-04 23:43:06', '', 'Products', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-01-04 23:43:06', '2016-01-04 23:43:06', '', 9, 'http://localdev.nystone.com/9-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2016-01-04 23:55:50', '2016-01-04 23:55:50', '', 'Marble', '', 'publish', 'closed', 'closed', '', 'marble', '', '', '2016-01-04 23:55:50', '2016-01-04 23:55:50', '', 0, 'http://localdev.nystone.com/?post_type=inventory&#038;p=178', 0, 'inventory', '', 0),
(179, 1, '2016-01-05 00:08:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-05 00:08:59', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=products&p=179', 0, 'products', '', 0),
(180, 1, '2016-01-05 00:11:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-01-05 00:11:20', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?p=180', 0, 'post', '', 0),
(181, 1, '2016-01-05 16:06:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-05 16:06:04', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=marble&p=181', 0, 'marble', '', 0),
(182, 1, '2016-01-05 16:08:14', '2016-01-05 16:08:14', '', 'Catalogs', '', 'publish', 'closed', 'closed', '', 'acf_catalogs', '', '', '2016-01-05 17:01:55', '2016-01-05 17:01:55', '', 0, 'http://localdev.nystone.com/?post_type=acf&#038;p=182', 0, 'acf', '', 0),
(183, 1, '2016-01-05 16:11:03', '2016-01-05 16:11:03', '', 'Calcatta Grey', '', 'publish', 'closed', 'closed', '', 'calcatta-grey', '', '', '2016-01-05 16:27:32', '2016-01-05 16:27:32', '', 0, 'http://localdev.nystone.com/?post_type=marble&#038;p=183', 0, 'marble', '', 0),
(184, 1, '2016-01-05 16:12:06', '2016-01-05 16:12:06', '', 'Calcatta Grey', '', 'inherit', 'closed', 'closed', '', '183-autosave-v1', '', '', '2016-01-05 16:12:06', '2016-01-05 16:12:06', '', 183, 'http://localdev.nystone.com/183-autosave-v1/', 0, 'revision', '', 0),
(185, 1, '2016-01-05 16:28:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-05 16:28:57', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=products&p=185', 0, 'products', '', 0),
(186, 1, '2016-01-05 16:35:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-05 16:35:36', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=products&p=186', 0, 'products', '', 0),
(187, 1, '2016-01-05 16:42:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-05 16:42:23', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=test&p=187', 0, 'test', '', 0),
(188, 1, '2016-01-05 16:43:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-05 16:43:19', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=products&p=188', 0, 'products', '', 0),
(189, 1, '2016-01-05 16:43:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-05 16:43:56', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?post_type=products&p=189', 0, 'products', '', 0),
(190, 1, '2016-01-05 16:47:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-01-05 16:47:03', '0000-00-00 00:00:00', '', 0, 'http://localdev.nystone.com/?p=190', 0, 'post', '', 0),
(191, 1, '2016-01-05 16:53:53', '2016-01-05 16:53:53', '', 'item 1', '', 'trash', 'closed', 'closed', '', 'item-1', '', '', '2016-01-05 16:57:32', '2016-01-05 16:57:32', '', 0, 'http://localdev.nystone.com/?post_type=catalog&#038;p=191', 0, 'catalog', '', 0),
(192, 1, '2016-01-05 16:54:51', '2016-01-05 16:54:51', '', 'Marble Products', '', 'publish', 'closed', 'closed', '', 'marble-products', '', '', '2016-01-05 17:19:57', '2016-01-05 17:19:57', '', 0, 'http://localdev.nystone.com/?post_type=catalog&#038;p=192', 0, 'catalog', '', 0),
(193, 1, '2016-01-05 16:57:15', '2016-01-05 16:57:15', '', 'Catalog', '', 'publish', 'closed', 'closed', '', 'catalog', '', '', '2016-01-05 16:57:15', '2016-01-05 16:57:15', '', 0, 'http://localdev.nystone.com/?page_id=193', 8, 'page', '', 0),
(194, 1, '2016-01-05 16:57:15', '2016-01-05 16:57:15', '', 'Catalog', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2016-01-05 16:57:15', '2016-01-05 16:57:15', '', 193, 'http://localdev.nystone.com/193-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2016-01-05 17:21:39', '2016-01-05 17:21:39', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-01-05 17:21:39', '2016-01-05 17:21:39', '', 0, 'http://localdev.nystone.com/shop/', 7, 'page', '', 0),
(196, 1, '2016-01-05 17:21:39', '2016-01-05 17:21:39', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-01-05 17:21:39', '2016-01-05 17:21:39', '', 0, 'http://localdev.nystone.com/cart/', 6, 'page', '', 0),
(197, 1, '2016-01-05 17:21:39', '2016-01-05 17:21:39', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-01-05 17:21:39', '2016-01-05 17:21:39', '', 0, 'http://localdev.nystone.com/checkout/', 5, 'page', '', 0),
(198, 1, '2016-01-05 17:21:39', '2016-01-05 17:21:39', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-01-05 17:21:39', '2016-01-05 17:21:39', '', 0, 'http://localdev.nystone.com/my-account/', 4, 'page', '', 0),
(199, 1, '2016-01-05 17:22:50', '2016-01-05 17:22:50', '', 'Calcatta Grey', '', 'publish', 'open', 'closed', '', 'calcatta-grey', '', '', '2016-01-05 17:57:36', '2016-01-05 17:57:36', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=199', 0, 'product', '', 0),
(200, 1, '2016-01-05 18:57:19', '2016-01-05 18:57:19', '', 'Capraia Blue', '', 'publish', 'open', 'closed', '', 'capraia-blue', '', '', '2016-01-05 18:57:19', '2016-01-05 18:57:19', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=200', 0, 'product', '', 0),
(201, 1, '2016-01-05 18:59:47', '2016-01-05 18:59:47', '', 'Palisandro Blue', '', 'publish', 'open', 'closed', '', 'palisandro-blue', '', '', '2016-01-05 18:59:47', '2016-01-05 18:59:47', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=201', 0, 'product', '', 0),
(202, 1, '2016-01-05 19:00:39', '2016-01-05 19:00:39', '', 'African Saint Laurent', '', 'publish', 'open', 'closed', '', 'african-saint-laurent', '', '', '2016-01-05 19:00:39', '2016-01-05 19:00:39', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=202', 0, 'product', '', 0),
(203, 1, '2016-01-05 19:03:19', '2016-01-05 19:03:19', '', 'Breccia Gold Vagli', '', 'publish', 'open', 'closed', '', 'breccia-gold-vagli', '', '', '2016-01-05 19:03:19', '2016-01-05 19:03:19', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=203', 0, 'product', '', 0),
(204, 1, '2016-01-05 19:04:42', '2016-01-05 19:04:42', '', 'Calacatta Bonotti', '', 'publish', 'open', 'closed', '', 'calacatta-bonotti', '', '', '2016-01-05 19:04:42', '2016-01-05 19:04:42', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=204', 0, 'product', '', 0),
(205, 1, '2016-01-05 19:05:38', '2016-01-05 19:05:38', '', 'Fiori Di Bosco', '', 'publish', 'open', 'closed', '', 'fiori-di-bosco', '', '', '2016-01-05 19:05:38', '2016-01-05 19:05:38', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=205', 0, 'product', '', 0),
(206, 1, '2016-01-05 19:07:12', '2016-01-05 19:07:12', '', 'Calacatta Caldia', '', 'publish', 'open', 'closed', '', 'calacatta-caldia', '', '', '2016-01-05 19:07:12', '2016-01-05 19:07:12', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=206', 0, 'product', '', 0),
(207, 1, '2016-01-05 19:08:05', '2016-01-05 19:08:05', '', 'Calacatta Vision', '', 'publish', 'open', 'closed', '', 'calacatta-vision', '', '', '2016-01-05 19:08:05', '2016-01-05 19:08:05', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=207', 0, 'product', '', 0),
(208, 1, '2016-01-05 19:08:35', '2016-01-05 19:08:35', '', 'Imperial Danby', '', 'publish', 'open', 'closed', '', 'imperial-danby', '', '', '2016-01-05 20:46:36', '2016-01-05 20:46:36', '', 0, 'http://localdev.nystone.com/?post_type=product&#038;p=208', 0, 'product', '', 0),
(210, 1, '2016-01-05 20:38:45', '2016-01-05 20:38:45', '', 'Stone Info', '', 'publish', 'closed', 'closed', '', 'acf_stone-info', '', '', '2016-01-05 20:38:45', '2016-01-05 20:38:45', '', 0, 'http://localdev.nystone.com/?post_type=acf&#038;p=210', 0, 'acf', '', 0),
(211, 1, '2016-01-05 20:49:24', '2016-01-05 20:49:24', '[text* your-name placeholder "Name"]\r\n\r\n[email* your-email placeholder "Email"]\r\n\r\n[text your-subject placeholder "Company"]\r\n\r\n[text your-subject placeholder "Position"]\r\n\r\n[submit "Submit"]\n[your-subject]\n[your-name] <wordpress@localdev.nystone.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on NY Stone (http://localdev.nystone.com)\nsean@emagid.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nNY Stone <wordpress@localdev.nystone.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on NY Stone (http://localdev.nystone.com)\n[your-email]\nReply-To: sean@emagid.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nYour answer is not correct.\nYour entered code is incorrect.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.', 'Sample Request', '', 'publish', 'closed', 'closed', '', 'sample-request', '', '', '2016-01-05 20:49:38', '2016-01-05 20:49:38', '', 0, 'http://localdev.nystone.com/?post_type=wpcf7_contact_form&#038;p=211', 0, 'wpcf7_contact_form', '', 0),
(212, 1, '2016-01-05 21:32:25', '2016-01-05 21:32:25', '[profilepress-login id="1"]', 'Log In', '', 'publish', 'closed', 'closed', '', 'log-in', '', '', '2016-01-05 21:32:25', '2016-01-05 21:32:25', '', 0, 'http://localdev.nystone.com/log-in/', 3, 'page', '', 0),
(213, 1, '2016-01-05 21:32:25', '2016-01-05 21:32:25', '[profilepress-registration id="1"]', 'Sign Up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2016-01-05 21:32:25', '2016-01-05 21:32:25', '', 0, 'http://localdev.nystone.com/sign-up/', 2, 'page', '', 0),
(214, 1, '2016-01-05 21:32:25', '2016-01-05 21:32:25', '[profilepress-password-reset id="1"]', 'Reset Password', '', 'publish', 'closed', 'closed', '', 'reset-password', '', '', '2016-01-05 21:32:25', '2016-01-05 21:32:25', '', 0, 'http://localdev.nystone.com/reset-password/', 1, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pp_login_builder`
--

CREATE TABLE `wp_pp_login_builder` (
  `id` mediumint(9) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pp_login_builder`
--

INSERT INTO `wp_pp_login_builder` (`id`, `title`, `structure`, `css`, `date`) VALUES
(1, 'FlatUI Login Theme', '<div class="login-form">\r\n\r\n<div class="form-group">\r\n[login-username placeholder="username" class="form-control login-field" id="login-name"]\r\n<label class="login-field-icon fui-user" for="login-name"></label>\r\n</div>\r\n\r\n<div class="form-group">\r\n[login-password placeholder="password" class="form-control login-field" id="login-pass"]\r\n<label class="login-field-icon fui-lock" for="login-pass"></label>\r\n</div>\r\n\r\n<div class="form-group">\r\n[login-remember class="flat-checkbox" id="remember-me"]\r\n<label for="remember-me" class="css-label lite-cyan-check">Remember me</label>\r\n</div>\r\n\r\n[login-submit value="Sign In" class="btn btn-primary btn-lg btn-block"]\r\n\r\n\r\n<div class="form-group"><br/>\r\n[link-registration class="reg" label="Register"] | [link-lost-password class="lostp" label="Forgot Password?"]\r\n</div>\r\n</div>\r\n', '/* css class for the login generated errors */\r\n\r\n.profilepress-login-status {\r\n\r\n    background-color: #34495e;\r\n    color: #ffffff;\r\n    border: medium none;\r\n    border-radius: 4px;\r\n    font-size: 15px;\r\n    font-weight: normal;\r\n    line-height: 1.4;\r\n    padding: 8px 5px;\r\n    margin:4px 0;\r\n    transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n}\r\n\r\n.profilepress-login-status a {\r\n  color: #ea9629 !important;\r\n}\r\n\r\n/*\r\nThis login form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt''s actually very pretty when implemented.\r\n*/', '2016-01-05'),
(2, 'Fzbuk Login Theme', '<div class="fzbuk-login-form-wrap">\r\n\r\n	<h1>Sign In</h1>\r\n\r\n	<div class="fzbuk-login-form">\r\n\r\n		<label>\r\n			[login-username placeholder="Username" id="fzbuk-username"]\r\n		</label>\r\n\r\n		<label>\r\n			[login-password placeholder="Password" id="fzbuk-password"]\r\n		</label>\r\n\r\n		[login-submit value="Login"]\r\n\r\n	</div>\r\n	<h5>[link-lost-password class="lostp" label="Forgot Password?"]</h5>\r\n</div>\r\n', '@import url(http://fonts.googleapis.com/css?family=Lato:400,700);\r\n\r\n/* css class for the login generated errors */\r\n.profilepress-login-status {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#5170ad'', endColorstr=''#355493'',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  text-align: center;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n.profilepress-login-status a {\r\ncolor: #ea9629 !important;\r\nfont-weight:bold;\r\n}\r\n\r\n\r\n\r\n.fzbuk-login-form label {\r\ndisplay: block !important;\r\n}\r\n\r\n.fzbuk-login-form-wrap {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#5170ad'', endColorstr=''#355493'',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: '''';\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 40px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 14px;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type="text"], .fzbuk-login-form input[type="password"] {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  width: 100% !important;\r\n  border: 1px solid #314d89;\r\n  outline: none !important;\r\n  padding: 12px 20px !important;\r\n  color: #afafaf !important;\r\n  font-weight: 400 !important;\r\n  font-family: "Lato", sans-serif !important;\r\n  cursor: text !important;\r\n}\r\n.fzbuk-login-form input[type="text"] {\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n.fzbuk-login-form input[type="password"] {\r\n  border-top: none;\r\n  border-radius: 0 0 4px 4px;\r\n  box-shadow: 0 -1px 2px rgba(0, 0, 0, 0.23) inset, 0 1px 2px rgba(255, 255, 255, 0.1);\r\n}\r\n.fzbuk-login-form input[type="submit"] {\r\n  font-family: "Lato", sans-serif;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#e0e0e0'', endColorstr=''#cecece'',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type="submit"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type="submit"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}\r\n\r\n::-webkit-input-placeholder {\r\n    color:    #999;\r\n}\r\n:-moz-placeholder {\r\n    color:    #999;\r\n}\r\n::-moz-placeholder {\r\n    color:    #999;\r\n}\r\n:-ms-input-placeholder {\r\n    color:    #999;\r\n}\r\n', '2016-01-05'),
(3, 'Jakhu Login Theme', '<div class="jakhu-login-form">\r\n\r\n	<div class="jakhu-header">\r\n		<h1>Sign In</h1>\r\n		<span>Fill out the form below to login.</span>\r\n	</div>\r\n\r\n\r\n	<div class="jakhu-content">\r\n		[login-username placeholder="Username" class="jakhu-input jakhu-username"]\r\n\r\n		[login-password placeholder="Password" class="jakhu-input jakhu-password"]\r\n	</div>\r\n\r\n	<div class="jakhu-footer">\r\n		[login-submit value="Sign In" class="jakhu-button"]\r\n\r\n		[link-registration class="jakhu-login" label="Sign Up"]\r\n\r\n		<br/>\r\n\r\n		<div style="float: right; text-decoration: underline;">\r\n			[link-lost-password class="jakhu-password-reset" label="Forgot Password?"]\r\n		</div>\r\n	</div>\r\n</div>', '@import url(http://fonts.googleapis.com/css?family=Bree+Serif);\r\n\r\n/* css class for the login generated errors */\r\n.profilepress-login-status {\r\n    width: 300px;\r\n	position: static;\r\n	margin: 10px auto;\r\n	padding: 6px;\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.profilepress-login-status a {\r\n  color: #ea9629 !important;\r\n}\r\n\r\n\r\n.jakhu-login-form .jakhu-header span::selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Safari */\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span::-moz-selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Firefox */\r\n}\r\n\r\n.jakhu-login-form {\r\n	width: 300px;\r\n	position: static;\r\n	margin: auto;\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-header {\r\n	padding: 40px 30px 30px 30px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header h1 {\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 28px;\r\n	line-height:34px;\r\n	color: #414848;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	margin-bottom: 10px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span {\r\n	font-size: 13px;\r\n	line-height: 16px;\r\n	color: #678889;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;\r\n	font-weight:300;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content {\r\n	padding: 0 30px 25px 30px;\r\n}\r\n\r\n/* Input field */\r\n.jakhu-login-form .jakhu-content .jakhu-input {\r\n	width: 240px;\r\n	padding: 15px 25px;\r\n	font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;\r\n	font-weight: 400;\r\n	font-size: 14px;\r\n	color: #9d9e9e;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	background: #fff;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-password{\r\n	margin-top: 25px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:hover {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:focus {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n\r\n	box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer {\r\n	padding: 25px 30px 40px 30px;\r\n	overflow: auto;\r\n\r\n	background: #d4dedf;\r\n	border-top: 1px solid #fff;\r\n\r\n	box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n}\r\n\r\n/* Login button */\r\n.jakhu-login-form .jakhu-footer .jakhu-button {\r\n	float:right;\r\n	padding: 11px 25px;\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #fff;\r\n	text-shadow: 0 1px 0 rgba(0,0,0,0.25);\r\n	background: #56c2e1;\r\n	border: 1px solid #46b3d3;\r\n	border-radius: 5px;\r\n	cursor: pointer;\r\n\r\n	box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:hover {\r\n	background: #3f9db8;\r\n	border: 1px solid rgba(256,256,256,0.75);\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:focus {\r\n	bottom: -1px;\r\n	background: #56c2e1;\r\n	box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n}\r\n\r\n/* Registration link */\r\n.jakhu-login-form .jakhu-footer .jakhu-login {\r\n	display: block;\r\n	float: right;\r\n	padding: 10px;\r\n	margin-right: 20px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 20px;\r\n	color: #414848;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n/* password reset link */\r\n.jakhu-login-form .jakhu-footer .jakhu-password-reset {\r\n	display: block;\r\n	text-align:center\r\n	padding: 10px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #414848;\r\n	margin-top: 40px;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n\r\n.jakhu-login a {\r\n text-decoration: none;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:hover {\r\n	color: #3f9db8;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:focus {\r\n	position: relative;\r\n	bottom: -1px;\r\n}\r\n\r\n.jakhu-content input {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n}', '2016-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pp_password_reset_builder`
--

CREATE TABLE `wp_pp_password_reset_builder` (
  `id` mediumint(9) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `handler_structure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_password_reset` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pp_password_reset_builder`
--

INSERT INTO `wp_pp_password_reset_builder` (`id`, `title`, `structure`, `handler_structure`, `css`, `success_password_reset`, `date`) VALUES
(1, 'FlatUI Password Reset', '<div class="login-form">\r\n\r\n<p>\r\nPlease enter your username or email address.\r\nYou will receive a link to create a new password via email.</p>\r\n\r\n<div class="form-group">\r\n[user-login id="login" placeholder="Username or E-mail:" class="form-control login-field"]\r\n<label class="login-field-icon fui-user" for="login"></label>\r\n</div>\r\n\r\n\r\n<p>\r\n[reset-submit value="Reset Password" class="btn btn-primary btn-lg btn-block" id="submit-button"]\r\n</p>\r\n\r\n</div>', '<div class="pp-reset-password-form">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for="password1">New password<span class="req">*</span></label>\r\n	[enter-password id="password1" required autocomplete="off"]\r\n\r\n	<label for="password2">Re-enter new password<span class="req">*</span></label>\r\n	[re-enter-password id="password2" required autocomplete="off"]\r\n\r\n	[password-reset-submit class="pp-reset-button pp-reset-button-block" value="Save"]\r\n</div>', '/* css class for the password reset form generated errors */\r\n\r\n.profilepress-reset-status {\r\n\r\n    background-color: #34495e;\r\n    color: #ffffff;\r\n    border: medium none;\r\n    border-radius: 4px;\r\n    font-size: 15px;\r\n    font-weight: normal;\r\n    line-height: 1.4;\r\n    padding: 8px 5px;\r\n    margin: 4px 0;\r\n    transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n}\r\n\r\n/*\r\nThis form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt''s actually very pretty when implemented.\r\n*/', '<div class="profilepress-reset-status">Check your email for further instructions.</div>', '2016-01-05'),
(2, 'Fzbuk Password Reset', '<div class="fzbuk-login-form-wrap">\r\n	<h1>Forgot Password?</h1>\r\n\r\n	<div class="fzbuk-login-form">\r\n\r\n		<label>\r\n			[user-login id="login" placeholder="Username or E-mail:"]\r\n		</label>\r\n\r\n		[reset-submit value="Reset Password"]\r\n\r\n	</div>\r\n	<h5>Back to [link-login label="Login"]</h5>\r\n</div>\r\n', '<div class="pp-reset-password-form">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for="password1">New password<span class="req">*</span></label>\r\n	[enter-password id="password1" required autocomplete="off"]\r\n\r\n	<label for="password2">Re-enter new password<span class="req">*</span></label>\r\n	[re-enter-password id="password2" required autocomplete="off"]\r\n\r\n	[password-reset-submit class="pp-reset-button pp-reset-button-block" value="Save"]\r\n</div>', '/* css class for the password reset form generated errors */\r\n\r\n.profilepress-reset-status {\r\n-webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#5170ad'', endColorstr=''#355493'',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  text-align: center;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n\r\n.fzbuk-login-form-wrap {\r\n\r\n-webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#5170ad'', endColorstr=''#355493'',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  height: 300px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: '''';\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  font-size: 15px;\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 20px;\r\n  font-size: 15px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 15px;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type="text"], .fzbuk-login-form input[type="password"], .fzbuk-login-form input[type="email"] {\r\n  width: 100%;\r\n  border: 1px solid #314d89;\r\n  outline: none;\r\n  padding: 12px 20px;\r\n  color: #afafaf;\r\n  font-weight: 400;\r\n  font-family: "Lato", sans-serif;\r\n  cursor: text;\r\n}\r\n\r\n.fzbuk-login-form label {\r\ndisplay: block;\r\n}\r\n\r\n.fzbuk-login-form input[type="text"]  {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n\r\n.fzbuk-login-form input[type="submit"] {\r\n  font-family: "Lato", sans-serif;\r\n  font-weight: 400;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#e0e0e0'', endColorstr=''#cecece'',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type="submit"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type="submit"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}', '<div class="profilepress-reset-status">Check your e-mail for further instruction.</div>', '2016-01-05'),
(3, 'Jakhu Password Reset', '<div class="jakhu-login-form">\r\n\r\n	<div class="jakhu-header">\r\n		<h1>Forgot Password?</h1>\r\n		<span>Please enter your username or email address.\r\nYou will receive a link to create a new password via email.</span>\r\n	</div>\r\n\r\n	<div class="jakhu-content">\r\n\r\n		[user-login id="login" placeholder="Username or E-mail" class="jakhu-input jakhu-username"]\r\n	</div>\r\n\r\n	<div class="jakhu-footer">\r\n		[reset-submit value="Reset Password" class="jakhu-button"]\r\n\r\n		<br/><br/>\r\n\r\n		<div style="float: right; text-decoration: underline;">\r\n			[link-login class="jakhu-login" label="Back to Login?"]\r\n		</div>\r\n	</div>\r\n\r\n</div>\r\n', '<div class="pp-reset-password-form">\r\n	<h3>Enter your new password below.</h3>\r\n	<label for="password1">New password<span class="req">*</span></label>\r\n	[enter-password id="password1" required autocomplete="off"]\r\n\r\n	<label for="password2">Re-enter new password<span class="req">*</span></label>\r\n	[re-enter-password id="password2" required autocomplete="off"]\r\n\r\n	[password-reset-submit class="pp-reset-button pp-reset-button-block" value="Save"]\r\n</div>', '@import url(http://fonts.googleapis.com/css?family=Bree+Serif);\r\n\r\n/* css class for the password reset form generated errors */\r\n.profilepress-reset-status {\r\n    width: 300px;\r\n	position: static;\r\n	z-index:5;\r\n	margin: 10px 0;\r\n	padding: 6px;\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n\r\n.jakhu-login-form .jakhu-header span::selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Safari */\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span::-moz-selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Firefox */\r\n}\r\n\r\n.jakhu-login-form {\r\n	width: 300px;\r\n	position: static;\r\n	z-index:5;\r\n\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-header {\r\n	padding: 40px 30px 30px 30px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header h1 {\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 28px;\r\n	line-height:34px;\r\n	color: #414848;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	margin-bottom: 10px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span {\r\n	font-size: 13px;\r\n	line-height: 16px;\r\n	color: #678889;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;\r\n	font-weight:300;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content {\r\n	padding: 0 30px 25px 30px;\r\n}\r\n\r\n/* Input field */\r\n.jakhu-login-form .jakhu-content .jakhu-input {\r\n	width: 240px;\r\n	padding: 15px 25px;\r\n	font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;\r\n	font-weight: 400;\r\n	font-size: 14px;\r\n	color: #9d9e9e;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n\r\n	background: #fff;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n}\r\n\r\n/* Second and Third input fourth fifth field */\r\n.jakhu-login-form .jakhu-content .jakhu-password{\r\n	margin-top: 25px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:hover {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:focus {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n\r\n	box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n}\r\n\r\n/* Animation */\r\n.jakhu-input, .jakhu-user-icon, .jakhu-email-icon, .jakhu-pass-icon, .jakhu-button, .jakhu-login {\r\n	transition: all 0.5s;\r\n	-moz-transition: all 0.5s;\r\n	-webkit-transition: all 0.5s;\r\n	-o-transition: all 0.5s;\r\n	-ms-transition: all 0.5s;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer {\r\n	padding: 25px 30px 40px 30px;\r\n	overflow: auto;\r\n	background: #d4dedf;\r\n	border-top: 1px solid #fff;\r\n	box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n}\r\n\r\n/* Login button */\r\n.jakhu-login-form .jakhu-footer .jakhu-button {\r\n	float:right;\r\n	padding: 11px 25px;\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #fff;\r\n	text-shadow: 0 1px 0 rgba(0,0,0,0.25);\r\n	background: #56c2e1;\r\n	border: 1px solid #46b3d3;\r\n	border-radius: 5px;\r\n	cursor: pointer;\r\n	box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:hover {\r\n	background: #3f9db8;\r\n	border: 1px solid rgba(256,256,256,0.75);\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:focus {\r\n	bottom: -1px;\r\n	background: #56c2e1;\r\n	box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n}\r\n\r\n/* Registration link */\r\n.jakhu-login-form .jakhu-footer .jakhu-login {\r\n	display: block;\r\n	float: right;\r\n	padding: 10px;\r\n	margin-right: 20px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 20px;\r\n	color: #414848;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n/* Back to login link */\r\n.jakhu-login-form .jakhu-footer .jakhu-back-login {\r\n	display: block;\r\n	text-align:center\r\n	padding: 10px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #414848;\r\n	margin-top: 20px;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n\r\n.jakhu-login a {\r\n text-decoration: none;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:hover {\r\n	color: #3f9db8;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:focus {\r\n	position: relative;\r\n	bottom: -1px;\r\n}\r\n\r\n.jakhu-content input {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n}', '<div class="profilepress-reset-status">Check your email for further instructions.</div>', '2016-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pp_registration_builder`
--

CREATE TABLE `wp_pp_registration_builder` (
  `id` mediumint(9) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_registration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_pp_registration_builder`
--

INSERT INTO `wp_pp_registration_builder` (`id`, `title`, `structure`, `css`, `success_registration`, `date`) VALUES
(1, 'FlatUI Registration Theme', '<div class="login-form">\r\n    <div class="form-group">[reg-first-name class="form-control login-field" id="reg-firstname" placeholder="First Name"]\r\n        <label class="login-field-icon fui-user" for="reg-firstname"></label>\r\n</div>\r\n    <div class="form-group">[reg-last-name class="form-control login-field" id="reg-lastname" placeholder="Last Name" required]\r\n        <label class="login-field-icon fui-user" for="reg-lastname"></label></div>\r\n\r\n    <div class="form-group">[reg-password id="reg-password" placeholder="Password" class="form-control login-field"]\r\n        <label class="login-field-icon fui-lock" for="reg-password"></label></div>\r\n    <div class="form-group">[reg-email id="reg-email" placeholder="Email" class="form-control login-field"]\r\n        <label class="login-field-icon fui-mail" for="reg-email"></label></div>\r\n    <div class="form-group">[reg-submit value="Register" class="btn btn-primary btn-lg btn-block" id="submit-button"]</div>\r\n</div>', '/* css class for the registration form generated errors */\r\n\r\n.profilepress-reg-status {\r\n  border-radius: 6px;\r\n  font-size: 17px;\r\n  line-height: 1.471;\r\n  padding: 10px 19px;\r\n  background-color: #e74c3c;\r\n  color: #ffffff;\r\n  font-weight: normal;\r\n  transition: border 0.25s linear 0s, color 0.25s linear 0s, background-color 0.25s linear 0s;\r\n  display: block;\r\n  text-align: center;\r\n  vertical-align: middle;\r\n  margin: 5px 0;\r\n}\r\n\r\n.profilepress-reg-status a {\r\n  color: #fff;\r\n  font-weight: bold;\r\n}\r\n\r\n.profilepress-reg-label {\r\n  padding: 1px 8px 2px 3px;\r\n}\r\n\r\n/*\r\nThis form uses the FlatUI css stylesheet that ships with the plugin hence this look.\r\nIt''s actually very pretty when implemented.\r\n*/', '<div class="profilepress-reg-status">Registration Successful</div>', '2016-01-05'),
(2, 'Fzbuk Registration Theme', '<div class="fzbuk-login-form-wrap">\r\n	<h1>Sign Up</h1>\r\n\r\n	<div class="fzbuk-login-form">\r\n		<label>\r\n			[reg-username placeholder="Username"]\r\n		</label>\r\n\r\n		<label>\r\n			[reg-email placeholder="Email Address" class="fzbuk-input-middle"]\r\n		</label>\r\n\r\n		<label>\r\n			[reg-password placeholder="Password"]\r\n		</label>\r\n\r\n		[reg-submit value="Register"]\r\n\r\n	</div>\r\n	<h5>Have an Account? [link-login label="Login"]</h5>\r\n</div>\r\n', '/* css class for the registration form generated errors */\r\n\r\n.profilepress-reg-status {\r\n -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  color: #fff;\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#5170ad'', endColorstr=''#355493'',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  text-align: center;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 10px;\r\n}\r\n\r\n.fzbuk-login-form-wrap {\r\n  background: #5170ad;\r\n  background: -moz-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #5170ad), color-stop(100%, #355493));\r\n  background: -webkit-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -o-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: -ms-radial-gradient(center, ellipse cover, #5170ad 0%, #355493 100%);\r\n  background: radial-gradient(ellipse at center, #5170ad 0%, #355493 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#5170ad'', endColorstr=''#355493'',GradientType=1 );\r\n  border: 1px solid #2d416d;\r\n  box-shadow: 0 1px #5670A4 inset, 0 0 10px 5px rgba(0, 0, 0, 0.1);\r\n  border-radius: 5px;\r\n  position: relative;\r\n  width: 360px;\r\n  margin: 10px auto;\r\n  padding: 50px 30px 0 30px;\r\n  text-align: center;\r\n}\r\n\r\n.fzbuk-login-form-wrap:before {\r\n  display: block;\r\n  content: "";\r\n  width: 58px;\r\n  height: 19px;\r\n  top: 10px;\r\n  left: 10px;\r\n  position: absolute;\r\n}\r\n.fzbuk-login-form-wrap > h1 {\r\n  margin: 0 0 50px 0;\r\n  padding: 0;\r\n  font-size: 26px;\r\n  color: #fff;\r\n}\r\n.fzbuk-login-form-wrap > h5 {\r\n  color: #303030;\r\n  margin-top: 20px;\r\n  font-size: 15px;\r\n}\r\n.fzbuk-login-form-wrap > h5 > a {\r\n  font-size: 15px;\r\n  color: #fff !important;\r\n  text-decoration: none;\r\n  font-weight: 400;\r\n}\r\n\r\n.fzbuk-login-form input[type="text"], .fzbuk-login-form input[type="password"], .fzbuk-login-form input[type="email"] {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n  width: 100%;\r\n  border: 1px solid #314d89;\r\n  outline: none;\r\n  padding: 12px 20px;\r\n  color: #afafaf;\r\n  font-weight: 400;\r\n  font-family: "Lato", sans-serif;\r\n  cursor: text;\r\n}\r\n\r\n.fzbuk-login-form label {\r\ndisplay: block;\r\n}\r\n\r\ninput.fzbuk-input-middle {\r\n  border-bottom: medium none !important;\r\n  border-radius: unset !important;\r\n  box-shadow: unset !important;\r\n  border-top: medium none !important;\r\n  width: 100% !important;\r\n  padding: 12px 20px !important;\r\n  color: #afafaf !important;\r\n  font-weight: 400 !important;\r\n  font-family: "Lato", sans-serif;\r\n  cursor: text !important;\r\n}\r\n\r\n\r\n.fzbuk-login-form input[type="email"], .fzbuk-login-form input[type="text"]  {\r\n  border-bottom: none;\r\n  border-radius: 4px 4px 0 0;\r\n  padding-bottom: 13px;\r\n  box-shadow: 0 -1px 0 #E0E0E0 inset, 0 1px 2px rgba(0, 0, 0, 0.23) inset;\r\n}\r\n.fzbuk-login-form input[type="password"] {\r\n  border-top: none;\r\n  border-radius: 0 0 4px 4px;\r\n  box-shadow: 0 -1px 2px rgba(0, 0, 0, 0.23) inset, 0 1px 2px rgba(255, 255, 255, 0.1);\r\n}\r\n.fzbuk-login-form input[type="submit"] {\r\n  font-family: "Lato", sans-serif;\r\n  background: #e0e0e0;\r\n  background: -moz-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e0e0e0), color-stop(100%, #cecece));\r\n  background: -webkit-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -o-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: -ms-linear-gradient(top, #e0e0e0 0%, #cecece 100%);\r\n  background: linear-gradient(to bottom, #e0e0e0 0%, #cecece 100%);\r\n  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#e0e0e0'', endColorstr=''#cecece'',GradientType=0 );\r\n  display: block;\r\n  margin: 20px auto 0 auto;\r\n  width: 100%;\r\n  border: none;\r\n  border-radius: 3px;\r\n  padding: 8px;\r\n  font-size: 17px;\r\n  color: #636363;\r\n  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.45);\r\n  font-weight: 700;\r\n  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.17), 0 1px 0 rgba(255, 255, 255, 0.36) inset;\r\n}\r\n.fzbuk-login-form input[type="submit"]:hover {\r\n  background: #DDD;\r\n}\r\n.fzbuk-login-form input[type="submit"]:active {\r\n  padding-top: 9px;\r\n  padding-bottom: 7px;\r\n  background: #C9C9C9;\r\n}\r\n', '<div class="profilepress-reg-status">Registration Successful.</div>', '2016-01-05'),
(3, 'Jakhu Registration Theme', '<div class="jakhu-login-form">\r\n\r\n	<div class="jakhu-header">\r\n		<h1>Sign Up</h1><span>Fill out the form to create an account.</span>\r\n	</div>\r\n\r\n	<div class="jakhu-content">\r\n		[reg-username placeholder="Username" class="jakhu-input jakhu-username"]\r\n\r\n		[reg-email placeholder="Email" class="jakhu-input jakhu-email"]\r\n\r\n		[reg-password placeholder="Password" class="jakhu-input jakhu-password"]\r\n\r\n		[reg-first-name class="jakhu-input jakhu-first-name" placeholder="First Name" required]\r\n\r\n		[reg-last-name class="jakhu-input jakhu-last-name" placeholder="Last Name" required]\r\n\r\n	</div>\r\n	<div class="jakhu-footer">\r\n		[reg-submit value="Register" class="jakhu-button"]\r\n\r\n		[link-login class="jakhu-login" label="Login"]\r\n	</div>\r\n\r\n</div>\r\n', '@import url(http://fonts.googleapis.com/css?family=Bree+Serif);\r\n\r\n/* css class for the registration form generated errors */\r\n.profilepress-reg-status {\r\n    width: 350px;\r\n	position: static;\r\n	z-index:5;\r\n	margin: 10px 0;\r\n	padding: 6px;\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span::selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Safari */\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span::-moz-selection {\r\n	color: #fff;\r\n	background: #f676b2; /* Firefox */\r\n}\r\n\r\n.jakhu-login-form {\r\n	width: 350px;\r\n	position: static;\r\n	z-index:5;\r\n\r\n	background: #f3f3f3;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-header {\r\n	padding: 40px 30px 30px 30px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header h1 {\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 28px;\r\n	line-height:34px;\r\n	color: #414848;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	margin-bottom: 10px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-header span {\r\n	font-size: 13px;\r\n	line-height: 16px;\r\n	color: #678889;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n	font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;\r\n	font-weight:300;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content {\r\n	padding: 0 30px 25px 30px;\r\n}\r\n\r\n/* Input field */\r\n.jakhu-login-form .jakhu-content .jakhu-input {\r\n	width: 240px;\r\n	padding: 15px 25px;\r\n	font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;\r\n	font-weight: 400;\r\n	font-size: 14px;\r\n	color: #9d9e9e;\r\n	text-shadow: 1px 1px 0 rgba(256,256,256,1.0);\r\n\r\n	background: #fff;\r\n	border: 1px solid #fff;\r\n	border-radius: 5px;\r\n\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);\r\n}\r\n\r\n/* Second and Third input fourth fifth field */\r\n.jakhu-login-form .jakhu-content .jakhu-password, .jakhu-login-form .jakhu-content .jakhu-email, .jakhu-login-form .jakhu-content .jakhu-pass-icon, .jakhu-login-form .jakhu-content .jakhu-first-name, .jakhu-login-form .jakhu-content .jakhu-last-name {\r\n	margin-top: 25px;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:hover {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n}\r\n\r\n.jakhu-login-form .jakhu-content .jakhu-input:focus {\r\n	background: #dfe9ec;\r\n	color: #414848;\r\n\r\n	box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);\r\n}\r\n\r\n\r\n/* Animation */\r\n.jakhu-input, .jakhu-user-icon, .jakhu-email-icon, .jakhu-pass-icon, .jakhu-button, .jakhu-login {\r\n	transition: all 0.5s;\r\n	-moz-transition: all 0.5s;\r\n	-webkit-transition: all 0.5s;\r\n	-o-transition: all 0.5s;\r\n	-ms-transition: all 0.5s;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer {\r\n	padding: 25px 30px 40px 30px;\r\n	overflow: auto;\r\n\r\n	background: #d4dedf;\r\n	border-top: 1px solid #fff;\r\n\r\n	box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(0,0,0,0.15);\r\n}\r\n\r\n/* Register button */\r\n.jakhu-login-form .jakhu-footer .jakhu-button {\r\n	float:right;\r\n	padding: 11px 25px;\r\n\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 18px;\r\n	color: #fff;\r\n	text-shadow: 0 1px 0 rgba(0,0,0,0.25);\r\n\r\n	background: #56c2e1;\r\n	border: 1px solid #46b3d3;\r\n	border-radius: 5px;\r\n	cursor: pointer;\r\n\r\n	box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:hover {\r\n	background: #3f9db8;\r\n	border: 1px solid rgba(256,256,256,0.75);\r\n\r\n	box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n	-webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-button:focus {\r\n	bottom: -1px;\r\n	background: #56c2e1;\r\n	box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-moz-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n	-webkit-box-shadow: inset 0 1px 6px rgba(256,256,256,0.75);\r\n}\r\n\r\n/* Login link */\r\n.jakhu-login-form .jakhu-footer .jakhu-login {\r\n	display: block;\r\n	float: right;\r\n	padding: 10px;\r\n	margin-right: 20px;\r\n	text-decoration: none;\r\n	background: none;\r\n	border: none;\r\n	cursor: pointer;\r\n	font-family: ''Bree Serif'', serif;\r\n	font-weight: 300;\r\n	font-size: 20px;\r\n	color: #414848;\r\n	text-shadow: 0 1px 0 rgba(256,256,256,0.5);\r\n}\r\n\r\n.jakhu-login a {\r\n text-decoration: none;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:hover {\r\n	color: #3f9db8;\r\n}\r\n\r\n.jakhu-login-form .jakhu-footer .jakhu-login:focus {\r\n	position: relative;\r\n	bottom: -1px;\r\n}\r\n\r\n.jakhu-content input {\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  box-sizing: border-box;\r\n}\r\n', '<div class="profilepress-reg-status">Registration Successful</div>', '2016-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Header Menu', 'header-menu', 0, 0),
(3, 'Footer Menu', 'footer-menu', 0, 0),
(4, 'Slabs', 'slabs', 0, 0),
(5, 'Tiles', 'tiles', 0, 0),
(6, 'New Arrivals', 'new-arrivals', 0, 0),
(7, 'simple', 'simple', 0, 0),
(8, 'grouped', 'grouped', 0, 0),
(9, 'variable', 'variable', 0, 0),
(10, 'external', 'external', 0, 0),
(12, 'Slabs', 'slabs', 0, 0),
(13, 'Tiles', 'tiles', 0, 0),
(14, 'Marble', 'marble', 0, 0),
(15, 'Quartzite', 'quartzite', 0, 0),
(16, 'Granite', 'granite', 0, 0),
(17, 'Colorquartz', 'colorquartz', 0, 0),
(18, 'Porcelain', 'porcelain', 0, 0),
(19, 'Finishes', 'finishes', 0, 0),
(20, 'Mosaics', 'mosaics', 0, 0),
(21, 'Travertine', 'travertine', 0, 0),
(22, 'Limestone', 'limestone', 0, 0),
(23, 'Onyx', 'onyx', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(47, 2, 0),
(48, 2, 0),
(49, 2, 0),
(50, 3, 0),
(51, 3, 0),
(52, 3, 0),
(53, 3, 0),
(54, 3, 0),
(55, 3, 0),
(56, 2, 0),
(61, 2, 0),
(64, 2, 0),
(157, 4, 0),
(157, 5, 0),
(157, 6, 0),
(158, 4, 0),
(158, 5, 0),
(158, 6, 0),
(159, 4, 0),
(159, 5, 0),
(159, 6, 0),
(162, 4, 0),
(162, 5, 0),
(162, 6, 0),
(163, 4, 0),
(163, 5, 0),
(163, 6, 0),
(164, 4, 0),
(164, 5, 0),
(164, 6, 0),
(175, 4, 0),
(175, 5, 0),
(175, 6, 0),
(176, 4, 0),
(176, 5, 0),
(176, 6, 0),
(178, 4, 0),
(178, 5, 0),
(178, 6, 0),
(199, 7, 0),
(199, 14, 0),
(199, 15, 0),
(199, 16, 0),
(199, 17, 0),
(199, 18, 0),
(199, 19, 0),
(199, 20, 0),
(199, 21, 0),
(199, 22, 0),
(199, 23, 0),
(200, 7, 0),
(200, 14, 0),
(200, 15, 0),
(200, 16, 0),
(200, 17, 0),
(200, 18, 0),
(200, 19, 0),
(200, 20, 0),
(200, 22, 0),
(200, 23, 0),
(201, 7, 0),
(201, 14, 0),
(201, 16, 0),
(201, 17, 0),
(201, 18, 0),
(201, 19, 0),
(201, 20, 0),
(201, 22, 0),
(201, 23, 0),
(202, 7, 0),
(202, 14, 0),
(202, 16, 0),
(202, 17, 0),
(202, 19, 0),
(202, 20, 0),
(202, 22, 0),
(202, 23, 0),
(203, 7, 0),
(203, 14, 0),
(203, 16, 0),
(203, 17, 0),
(203, 19, 0),
(203, 20, 0),
(203, 22, 0),
(204, 7, 0),
(204, 14, 0),
(204, 16, 0),
(204, 17, 0),
(204, 19, 0),
(204, 22, 0),
(205, 7, 0),
(205, 16, 0),
(205, 17, 0),
(205, 19, 0),
(205, 22, 0),
(206, 7, 0),
(206, 16, 0),
(206, 17, 0),
(206, 19, 0),
(207, 7, 0),
(207, 17, 0),
(207, 19, 0),
(208, 7, 0),
(208, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 19),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'product_type', '', 0, 10),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_type', '', 0, 0),
(12, 12, 'product_tag', '', 0, 0),
(13, 13, 'product_tag', '', 0, 0),
(14, 14, 'product_cat', '', 0, 6),
(15, 15, 'product_cat', '', 0, 2),
(16, 16, 'product_cat', '', 0, 8),
(17, 17, 'product_cat', '', 0, 10),
(18, 18, 'product_cat', '', 0, 3),
(19, 19, 'product_cat', '', 0, 9),
(20, 20, 'product_cat', '', 0, 5),
(21, 21, 'product_cat', '', 0, 1),
(22, 22, 'product_cat', '', 0, 7),
(23, 23, 'product_cat', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, 1, 'wp_capabilities', 'a:13:{s:13:"administrator";b:1;s:26:"wpcf_custom_post_type_view";b:1;s:26:"wpcf_custom_post_type_edit";b:1;s:33:"wpcf_custom_post_type_edit_others";b:1;s:25:"wpcf_custom_taxonomy_view";b:1;s:25:"wpcf_custom_taxonomy_edit";b:1;s:32:"wpcf_custom_taxonomy_edit_others";b:1;s:22:"wpcf_custom_field_view";b:1;s:22:"wpcf_custom_field_edit";b:1;s:29:"wpcf_custom_field_edit_others";b:1;s:25:"wpcf_user_meta_field_view";b:1;s:25:"wpcf_user_meta_field_edit";b:1;s:32:"wpcf_user_meta_field_edit_others";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"bbd87e55560a68cdc90b5fd3af493c11039473f539bf85002928d971560b1f0e";a:4:{s:10:"expiration";i:1452096228;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36";s:5:"login";i:1451923428;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:25:"add-post-type-html5-blank";i:1;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1451941717'),
(21, 1, 'closedpostboxes_products', 'a:1:{i:0;s:7:"acf_156";}'),
(22, 1, 'metaboxhidden_products', 'a:5:{i:0;s:7:"acf_145";i:1;s:7:"acf_148";i:2;s:6:"acf_66";i:3;s:7:"acf_152";i:4;s:7:"slugdiv";}'),
(23, 1, 'closedpostboxes_post', 'a:1:{i:0;s:13:"postparentdiv";}'),
(24, 1, 'metaboxhidden_post', 'a:12:{i:0;s:7:"acf_145";i:1;s:7:"acf_182";i:2;s:7:"acf_156";i:3;s:7:"acf_148";i:4;s:6:"acf_66";i:5;s:7:"acf_152";i:6;s:11:"postexcerpt";i:7;s:13:"trackbacksdiv";i:8;s:10:"postcustom";i:9;s:16:"commentstatusdiv";i:10;s:7:"slugdiv";i:11;s:9:"authordiv";}'),
(25, 1, 'wp_types-modal', '0'),
(26, 1, 'meta-box-order_catalog', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:24:"wpcf-marketing,submitdiv";s:6:"normal";s:77:"acf_145,acf_156,acf_148,acf_66,acf_152,slugdiv,acf_182,wpcf-post-relationship";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_catalog', '2'),
(28, 1, 'meta-box-order_product', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:84:"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images";s:6:"normal";s:122:"acf_145,acf_182,acf_156,acf_148,acf_66,acf_152,slugdiv,acf_210,woocommerce-product-data,postcustom,postexcerpt,commentsdiv";s:8:"advanced";s:0:"";}'),
(29, 1, 'screen_layout_product', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJBusB6UoTx4GH9xbz4rKfKg5DqDrZ/', 'admin', 'sean@emagid.com', '', '2016-01-04 16:03:41', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_termmeta`
--

CREATE TABLE `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_termmeta`
--

INSERT INTO `wp_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(4, 14, 'order', '0'),
(5, 14, 'display_type', ''),
(6, 14, 'thumbnail_id', '106'),
(7, 15, 'order', '0'),
(8, 15, 'display_type', ''),
(9, 15, 'thumbnail_id', '108'),
(10, 16, 'order', '0'),
(11, 16, 'display_type', ''),
(12, 16, 'thumbnail_id', '104'),
(13, 17, 'order', '0'),
(14, 17, 'display_type', ''),
(15, 17, 'thumbnail_id', '80'),
(16, 18, 'order', '0'),
(17, 18, 'display_type', ''),
(18, 18, 'thumbnail_id', '80'),
(19, 19, 'order', '0'),
(20, 19, 'display_type', ''),
(21, 19, 'thumbnail_id', '80'),
(22, 20, 'order', '0'),
(23, 20, 'display_type', ''),
(24, 20, 'thumbnail_id', '80'),
(25, 21, 'order', '0'),
(26, 21, 'display_type', ''),
(27, 21, 'thumbnail_id', '110'),
(28, 22, 'order', '0'),
(29, 22, 'display_type', ''),
(30, 22, 'thumbnail_id', '105'),
(31, 23, 'order', '0'),
(32, 23, 'display_type', ''),
(33, 23, 'thumbnail_id', '107'),
(34, 17, 'product_count_product_cat', '10'),
(35, 16, 'product_count_product_cat', '8'),
(36, 14, 'product_count_product_cat', '6'),
(37, 19, 'product_count_product_cat', '9'),
(38, 22, 'product_count_product_cat', '7'),
(39, 20, 'product_count_product_cat', '5'),
(40, 23, 'product_count_product_cat', '4'),
(41, 18, 'product_count_product_cat', '3'),
(42, 15, 'product_count_product_cat', '2'),
(43, 21, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_campaign`
--

CREATE TABLE `wp_wysija_campaign` (
  `campaign_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_campaign`
--

INSERT INTO `wp_wysija_campaign` (`campaign_id`, `name`, `description`) VALUES
(1, '5 Minute User Guide', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_campaign_list`
--

CREATE TABLE `wp_wysija_campaign_list` (
  `list_id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL,
  `filter` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_custom_field`
--

CREATE TABLE `wp_wysija_custom_field` (
  `id` mediumint(9) NOT NULL,
  `name` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email`
--

CREATE TABLE `wp_wysija_email` (
  `email_id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `body` longtext,
  `created_at` int(10) unsigned DEFAULT NULL,
  `modified_at` int(10) unsigned DEFAULT NULL,
  `sent_at` int(10) unsigned DEFAULT NULL,
  `from_email` varchar(250) DEFAULT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `replyto_email` varchar(250) DEFAULT NULL,
  `replyto_name` varchar(250) DEFAULT NULL,
  `attachments` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `number_sent` int(10) unsigned NOT NULL DEFAULT '0',
  `number_opened` int(10) unsigned NOT NULL DEFAULT '0',
  `number_clicked` int(10) unsigned NOT NULL DEFAULT '0',
  `number_unsub` int(10) unsigned NOT NULL DEFAULT '0',
  `number_bounce` int(10) unsigned NOT NULL DEFAULT '0',
  `number_forward` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text,
  `wj_data` longtext,
  `wj_styles` longtext
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_email`
--

INSERT INTO `wp_wysija_email` (`email_id`, `campaign_id`, `subject`, `body`, `created_at`, `modified_at`, `sent_at`, `from_email`, `from_name`, `replyto_email`, `replyto_name`, `attachments`, `status`, `type`, `number_sent`, `number_opened`, `number_clicked`, `number_unsub`, `number_bounce`, `number_forward`, `params`, `wj_data`, `wj_styles`) VALUES
(1, 1, '5 Minute User Guide', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml"  >\n<head>\n    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />\n    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>\n    <title>5 Minute User Guide</title>\n    <style type="text/css">body {\n        width:100% !important;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        margin:0;\n        padding:0;\n    }\n\n    body,table,td,p,a,li,blockquote{\n        -ms-text-size-adjust:100%;\n        -webkit-text-size-adjust:100%;\n    }\n\n    .ReadMsgBody{\n        width:100%;\n    }.ExternalClass {width:100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}#backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important; background:#e8e8e8;}img {\n        outline:none;\n        text-decoration:none;\n        -ms-interpolation-mode: bicubic;\n    }\n    a img {border:none;}\n    .image_fix {display:block;}p {\n        font-family: "Arial";\n        font-size: 16px;\n        line-height: 150%;\n        margin: 1em 0;\n        padding: 0;\n    }h1,h2,h3,h4,h5,h6{\n        margin:0;\n        padding:0;\n    }h1 {\n        color:#000000 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:40px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h2 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:30px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h3 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:24px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }table td {border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;}table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }a {\n        color:#4a91b0;\n        word-wrap:break-word;\n    }\n    #outlook a {padding:0;}\n    .yshortcuts { color:#4a91b0; }\n\n    #wysija_wrapper {\n        background:#e8e8e8;\n        color:#000000;\n        font-family:"Arial";\n        font-size:16px;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        \n    }\n\n    .wysija_header_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_block {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        background:#ffffff;\n    }\n\n    .wysija_footer_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_viewbrowser_container, .wysija_viewbrowser_container a {\n        font-family: "Arial" !important;\n        font-size: 12px !important;\n        color: #000000 !important;\n    }\n    .wysija_unsubscribe_container, .wysija_unsubscribe_container a {\n        text-align:center;\n        color: #000000 !important;\n        font-size:12px;\n    }\n    .wysija_viewbrowser_container a, .wysija_unsubscribe_container a {\n        text-decoration:underline;\n    }\n    .wysija_list_item {\n        margin:0;\n    }@media only screen and (max-device-width: 480px), screen and (max-width: 480px) {a[href^="tel"], a[href^="sms"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }body, table, td, p, a, li, blockquote { -webkit-text-size-adjust:none !important; }body{ width:100% !important; min-width:100% !important; }\n    }@media only screen and (min-device-width: 768px) and (max-device-width: 1024px), screen and (min-width: 768px) and (max-width: 1024px) {a[href^="tel"],\n        a[href^="sms"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }\n    }\n\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\n    }@media only screen and (-webkit-device-pixel-ratio:.75){}\n    @media only screen and (-webkit-device-pixel-ratio:1){}\n    @media only screen and (-webkit-device-pixel-ratio:1.5){}</style><!--[if IEMobile 7]>\n<style type="text/css">\n\n</style>\n<![endif]--><!--[if gte mso 9]>\n<style type="text/css">.wysija_image_container {\n        padding-top:0 !important;\n    }\n    .wysija_image_placeholder {\n        mso-text-raise:0;\n        mso-table-lspace:0;\n        mso-table-rspace:0;\n        margin-bottom: 0 !important;\n    }\n    .wysija_block .wysija_image_placeholder {\n        margin:2px 1px 0 1px !important;\n    }\n    p {\n        line-height: 110% !important;\n    }\n    h1, h2, h3 {\n        line-height: 110% !important;\n        margin:0 !important;\n        padding: 0 !important;\n    }\n</style>\n<![endif]-->\n\n<!--[if gte mso 15]>\n<style type="text/css">table { font-size:1px; mso-line-height-alt:0; line-height:0; mso-margin-top-alt:0; }\n    tr { font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px; }\n</style>\n<![endif]-->\n\n</head>\n<body bgcolor="#e8e8e8" yahoo="fix">\n    <span style="margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;display:block;background:#e8e8e8;">\n    <table width="100%" cellpadding="0" cellspacing="0" border="0" id="wysija_wrapper">\n        <tr>\n            <td valign="top" align="center">\n                <table width="600" cellpadding="0" cellspacing="0" border="0" align="center">\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"   >\n                            <p class="wysija_viewbrowser_container" style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;" >Display problems? <a style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[view_in_browser_link]" target="_blank">View this newsletter in your browser.</a></p>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center">\n                            \n<table class="wysija_header" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n <td height="1" align="center" class="wysija_header_container" style="font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;" >\n \n <img width="600" height="72" src="http://localdev.nystone.com/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/header.png" border="0" alt="" class="image_fix" style="width:600px; height:72px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="left">\n                            \n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 1:</strong> hey, click on this text!</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">To edit, simply click on this block of text.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localdev.nystone.com/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 2:</strong> play with this image</h2></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n \n \n <table style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;" width="1%" height="190" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td class="wysija_image_container left" style="border: 0;border-collapse: collapse;border: 1px solid #ffffff;display: block;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 10px;padding-bottom: 0;padding-left: 0;" width="1%" height="190" valign="top">\n <div align="left" class="wysija_image_placeholder left" style="height:190px;width:281px;border: 0;display: block;margin-top: 0;margin-right: 10px;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;" >\n \n <img width="281" height="190" src="http://localdev.nystone.com/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/pigeon.png" border="0" alt="" class="image_fix" style="width:281px; height:190px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n </table>\n\n <div class="wysija_text_container"><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Position your mouse over the image to the left.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localdev.nystone.com/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 3:</strong> drop content here</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Drag and drop <strong>text, posts, dividers.</strong> Look on the right!</p><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">You can even <strong>social bookmarks</strong> like these:</p></div>\n </td>\n \n </tr>\n</table>\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n <td class="wysija_gallery_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" >\n <table class="wysija_gallery_table center" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;text-align: center;margin-top: 0;margin-right: auto;margin-bottom: 0;margin-left: auto;" width="184" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="http://www.facebook.com/mailpoetplugin"><img src="http://localdev.nystone.com/wp-content/uploads/wysija/bookmarks/medium/02/facebook.png" border="0" alt="Facebook" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="http://www.twitter.com/mail_poet"><img src="http://localdev.nystone.com/wp-content/uploads/wysija/bookmarks/medium/02/twitter.png" border="0" alt="Twitter" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n \n <td class="wysija_cell_container" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;" width="61" height="32" valign="top">\n <div align="center">\n <a style="color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;" href="https://plus.google.com/+Mailpoet"><img src="http://localdev.nystone.com/wp-content/uploads/wysija/bookmarks/medium/02/google.png" border="0" alt="Google" style="width:32px; height:32px;" /></a>\n </div>\n </td>\n \n \n </tr>\n </table>\n </td>\n </tr>\n</table>\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr style="font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;">\n <td width="100%" valign="middle" class="wysija_divider_container" style="height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;" align="left">\n <div align="center">\n <img src="http://localdev.nystone.com/wp-content/uploads/wysija/dividers/solid.jpg" border="0" width="564" height="1" alt="---" class="image_fix" style="width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class="wysija_block" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="left">\n <tr>\n \n \n <td class="wysija_content_container left" style="border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;" align="left" >\n \n <div class="wysija_text_container"><h2 style="font-family: ''Trebuchet MS'', ''Lucida Grande'', ''Lucida Sans Unicode'', ''Lucida Sans'', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;"><strong>Step 4:</strong> and the footer?</h2><p style="font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;">Change the footer''s content in MailPoet''s <strong>Settings</strong> page.</p></div>\n </td>\n \n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"   >\n                            \n<table class="wysija_footer" style="border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;" width="100%" cellspacing="0" cellpadding="0" border="0" align="center">\n <tr>\n <td height="1" align="center" class="wysija_footer_container" style="font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;" >\n \n <img width="600" height="46" src="http://localdev.nystone.com/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/footer.png" border="0" alt="" class="image_fix" style="width:600px; height:46px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width="600" style="min-width:600px;" valign="top" align="center"  >\n                            <p class="wysija_unsubscribe_container" style="font-family: Verdana, Geneva, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;" ><a style="color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;" href="[unsubscribe_link]" target="_blank">Unsubscribe</a><br /><br /></p>\n                        </td>\n                    </tr>\n                    \n                </table>\n            </td>\n        </tr>\n    </table>\n    </span>\n</body>\n</html>', 1451942519, 1451942519, NULL, 'info@localdev.nystone.com', 'admin', 'info@localdev.nystone.com', 'admin', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 'YToxOntzOjE0OiJxdWlja3NlbGVjdGlvbiI7YToxOntzOjY6IndwLTMwMSI7YTo1OntzOjEwOiJpZGVudGlmaWVyIjtzOjY6IndwLTMwMSI7czo1OiJ3aWR0aCI7aToyODE7czo2OiJoZWlnaHQiO2k6MTkwO3M6MzoidXJsIjtzOjExMDoiaHR0cDovL2xvY2FsZGV2Lm55c3RvbmUuY29tL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL3BpZ2Vvbi5wbmciO3M6OToidGh1bWJfdXJsIjtzOjExODoiaHR0cDovL2xvY2FsZGV2Lm55c3RvbmUuY29tL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL3BpZ2Vvbi0xNTB4MTUwLnBuZyI7fX19', 'YTo0OntzOjc6InZlcnNpb24iO3M6NjoiMi42LjE5IjtzOjY6ImhlYWRlciI7YTo1OntzOjQ6InRleHQiO047czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMTA6Imh0dHA6Ly9sb2NhbGRldi5ueXN0b25lLmNvbS93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9oZWFkZXIucG5nIjtzOjU6IndpZHRoIjtpOjYwMDtzOjY6ImhlaWdodCI7aTo3MjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7fXM6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDtzOjQ6InR5cGUiO3M6NjoiaGVhZGVyIjt9czo0OiJib2R5IjthOjk6e3M6NzoiYmxvY2stMSI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czoxNDg6IlBHZ3lQanh6ZEhKdmJtYytVM1JsY0NBeE9qd3ZjM1J5YjI1blBpQm9aWGtzSUdOc2FXTnJJRzl1SUhSb2FYTWdkR1Y0ZENFOEwyZ3lQanh3UGxSdklHVmthWFFzSUhOcGJYQnNlU0JqYkdsamF5QnZiaUIwYUdseklHSnNiMk5ySUc5bUlIUmxlSFF1UEM5d1BnPT0iO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7czo4OiJwb3NpdGlvbiI7aToxO3M6NDoidHlwZSI7czo3OiJjb250ZW50Ijt9czo3OiJibG9jay0yIjthOjU6e3M6ODoicG9zaXRpb24iO2k6MjtzOjQ6InR5cGUiO3M6NzoiZGl2aWRlciI7czozOiJzcmMiO3M6NzI6Imh0dHA6Ly9sb2NhbGRldi5ueXN0b25lLmNvbS93cC1jb250ZW50L3VwbG9hZHMvd3lzaWphL2RpdmlkZXJzL3NvbGlkLmpwZyI7czo1OiJ3aWR0aCI7aTo1NjQ7czo2OiJoZWlnaHQiO2k6MTt9czo3OiJibG9jay0zIjthOjY6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjcyOiJQR2d5UGp4emRISnZibWMrVTNSbGNDQXlPand2YzNSeWIyNW5QaUJ3YkdGNUlIZHBkR2dnZEdocGN5QnBiV0ZuWlR3dmFESSsiO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7czo4OiJwb3NpdGlvbiI7aTozO3M6NDoidHlwZSI7czo3OiJjb250ZW50Ijt9czo3OiJibG9jay00IjthOjY6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjcyOiJQSEErVUc5emFYUnBiMjRnZVc5MWNpQnRiM1Z6WlNCdmRtVnlJSFJvWlNCcGJXRm5aU0IwYnlCMGFHVWdiR1ZtZEM0OEwzQSsiO31zOjU6ImltYWdlIjthOjU6e3M6Mzoic3JjIjtzOjExMDoiaHR0cDovL2xvY2FsZGV2Lm55c3RvbmUuY29tL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL3BpZ2Vvbi5wbmciO3M6NToid2lkdGgiO2k6MjgxO3M6NjoiaGVpZ2h0IjtpOjE5MDtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO31zOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6NDtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stNSI7YTo1OntzOjg6InBvc2l0aW9uIjtpOjU7czo0OiJ0eXBlIjtzOjc6ImRpdmlkZXIiO3M6Mzoic3JjIjtzOjcyOiJodHRwOi8vbG9jYWxkZXYubnlzdG9uZS5jb20vd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9kaXZpZGVycy9zb2xpZC5qcGciO3M6NToid2lkdGgiO2k6NTY0O3M6NjoiaGVpZ2h0IjtpOjE7fXM6NzoiYmxvY2stNiI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czoyNjA6IlBHZ3lQanh6ZEhKdmJtYytVM1JsY0NBek9qd3ZjM1J5YjI1blBpQmtjbTl3SUdOdmJuUmxiblFnYUdWeVpUd3ZhREkrUEhBK1JISmhaeUJoYm1RZ1pISnZjQ0E4YzNSeWIyNW5QblJsZUhRc0lIQnZjM1J6TENCa2FYWnBaR1Z5Y3k0OEwzTjBjbTl1Wno0Z1RHOXZheUJ2YmlCMGFHVWdjbWxuYUhRaFBDOXdQanh3UGxsdmRTQmpZVzRnWlhabGJpQThjM1J5YjI1blBuTnZZMmxoYkNCaWIyOXJiV0Z5YTNNOEwzTjBjbTl1Wno0Z2JHbHJaU0IwYUdWelpUbzhMM0ErIjt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6NjtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stNyI7YTo1OntzOjU6IndpZHRoIjtpOjE4NDtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NToiaXRlbXMiO2E6Mzp7aTowO2E6Nzp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly93d3cuZmFjZWJvb2suY29tL21haWxwb2V0cGx1Z2luIjtzOjM6ImFsdCI7czo4OiJGYWNlYm9vayI7czo5OiJjZWxsV2lkdGgiO2k6NjE7czoxMDoiY2VsbEhlaWdodCI7aTozMjtzOjM6InNyYyI7czo4NjoiaHR0cDovL2xvY2FsZGV2Lm55c3RvbmUuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvYm9va21hcmtzL21lZGl1bS8wMi9mYWNlYm9vay5wbmciO3M6NToid2lkdGgiO2k6MzI7czo2OiJoZWlnaHQiO2k6MzI7fWk6MTthOjc6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vd3d3LnR3aXR0ZXIuY29tL21haWxfcG9ldCI7czozOiJhbHQiO3M6NzoiVHdpdHRlciI7czo5OiJjZWxsV2lkdGgiO2k6NjE7czoxMDoiY2VsbEhlaWdodCI7aTozMjtzOjM6InNyYyI7czo4NToiaHR0cDovL2xvY2FsZGV2Lm55c3RvbmUuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvYm9va21hcmtzL21lZGl1bS8wMi90d2l0dGVyLnBuZyI7czo1OiJ3aWR0aCI7aTozMjtzOjY6ImhlaWdodCI7aTozMjt9aToyO2E6Nzp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vcGx1cy5nb29nbGUuY29tLytNYWlscG9ldCI7czozOiJhbHQiO3M6NjoiR29vZ2xlIjtzOjk6ImNlbGxXaWR0aCI7aTo2MTtzOjEwOiJjZWxsSGVpZ2h0IjtpOjMyO3M6Mzoic3JjIjtzOjg0OiJodHRwOi8vbG9jYWxkZXYubnlzdG9uZS5jb20vd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9ib29rbWFya3MvbWVkaXVtLzAyL2dvb2dsZS5wbmciO3M6NToid2lkdGgiO2k6MzI7czo2OiJoZWlnaHQiO2k6MzI7fX1zOjg6InBvc2l0aW9uIjtpOjc7czo0OiJ0eXBlIjtzOjc6ImdhbGxlcnkiO31zOjc6ImJsb2NrLTgiO2E6NTp7czo4OiJwb3NpdGlvbiI7aTo4O3M6NDoidHlwZSI7czo3OiJkaXZpZGVyIjtzOjM6InNyYyI7czo3MjoiaHR0cDovL2xvY2FsZGV2Lm55c3RvbmUuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvZGl2aWRlcnMvc29saWQuanBnIjtzOjU6IndpZHRoIjtpOjU2NDtzOjY6ImhlaWdodCI7aToxO31zOjc6ImJsb2NrLTkiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6MTcyOiJQR2d5UGp4emRISnZibWMrVTNSbGNDQTBPand2YzNSeWIyNW5QaUJoYm1RZ2RHaGxJR1p2YjNSbGNqODhMMmd5UGp4d1BrTm9ZVzVuWlNCMGFHVWdabTl2ZEdWeUozTWdZMjl1ZEdWdWRDQnBiaUJOWVdsc1VHOWxkQ2R6SUR4emRISnZibWMrVTJWMGRHbHVaM004TDNOMGNtOXVaejRnY0dGblpTNDhMM0ErIjt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6OTtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fX1zOjY6ImZvb3RlciI7YTo1OntzOjQ6InRleHQiO047czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMTA6Imh0dHA6Ly9sb2NhbGRldi5ueXN0b25lLmNvbS93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9mb290ZXIucG5nIjtzOjU6IndpZHRoIjtpOjYwMDtzOjY6ImhlaWdodCI7aTo0NjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7fXM6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDtzOjQ6InR5cGUiO3M6NjoiZm9vdGVyIjt9fQ==', 'YToxMDp7czo0OiJodG1sIjthOjE6e3M6MTA6ImJhY2tncm91bmQiO3M6NjoiZThlOGU4Ijt9czo2OiJoZWFkZXIiO2E6MTp7czoxMDoiYmFja2dyb3VuZCI7czo2OiJlOGU4ZTgiO31zOjQ6ImJvZHkiO2E6NDp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjU6IkFyaWFsIjtzOjQ6InNpemUiO2k6MTY7czoxMDoiYmFja2dyb3VuZCI7czo2OiJmZmZmZmYiO31zOjY6ImZvb3RlciI7YToxOntzOjEwOiJiYWNrZ3JvdW5kIjtzOjY6ImU4ZThlOCI7fXM6MjoiaDEiO2E6Mzp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjEyOiJUcmVidWNoZXQgTVMiO3M6NDoic2l6ZSI7aTo0MDt9czoyOiJoMiI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjQyNDI0MiI7czo2OiJmYW1pbHkiO3M6MTI6IlRyZWJ1Y2hldCBNUyI7czo0OiJzaXplIjtpOjMwO31zOjI6ImgzIjthOjM6e3M6NToiY29sb3IiO3M6NjoiNDI0MjQyIjtzOjY6ImZhbWlseSI7czoxMjoiVHJlYnVjaGV0IE1TIjtzOjQ6InNpemUiO2k6MjQ7fXM6MToiYSI7YToyOntzOjU6ImNvbG9yIjtzOjY6IjRhOTFiMCI7czo5OiJ1bmRlcmxpbmUiO2I6MDt9czoxMToidW5zdWJzY3JpYmUiO2E6MTp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO31zOjExOiJ2aWV3YnJvd3NlciI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjAwMDAwMCI7czo2OiJmYW1pbHkiO3M6NToiQXJpYWwiO3M6NDoic2l6ZSI7aToxMjt9fQ=='),
(2, 0, 'Confirm your subscription to NY Stone', 'Hello!\n\nHurray! You''ve subscribed to our site.\nWe need you to activate your subscription to the list(s): [lists_to_confirm] by clicking the link below: \n\n[activation_link]Click here to confirm your subscription.[/activation_link]\n\nThank you,\n\n The team!\n', 1451942520, 1451942520, NULL, 'info@localdev.nystone.com', 'admin', 'info@localdev.nystone.com', 'admin', NULL, 99, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email_user_stat`
--

CREATE TABLE `wp_wysija_email_user_stat` (
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `sent_at` int(10) unsigned NOT NULL,
  `opened_at` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email_user_url`
--

CREATE TABLE `wp_wysija_email_user_url` (
  `email_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `url_id` int(10) unsigned NOT NULL,
  `clicked_at` int(10) unsigned DEFAULT NULL,
  `number_clicked` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_form`
--

CREATE TABLE `wp_wysija_form` (
  `form_id` int(10) unsigned NOT NULL,
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `styles` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `subscribed` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_form`
--

INSERT INTO `wp_wysija_form` (`form_id`, `name`, `data`, `styles`, `subscribed`) VALUES
(1, 'Subscribe to our Newsletter', 'YTo0OntzOjc6InZlcnNpb24iO3M6MzoiMC40IjtzOjg6InNldHRpbmdzIjthOjQ6e3M6MTA6Im9uX3N1Y2Nlc3MiO3M6NzoibWVzc2FnZSI7czoxNToic3VjY2Vzc19tZXNzYWdlIjtzOjY1OiJDaGVjayB5b3VyIGluYm94IG9yIHNwYW0gZm9sZGVyIG5vdyB0byBjb25maXJtIHlvdXIgc3Vic2NyaXB0aW9uLiI7czo1OiJsaXN0cyI7YToxOntpOjA7czoxOiIxIjt9czoxNzoibGlzdHNfc2VsZWN0ZWRfYnkiO3M6NToiYWRtaW4iO31zOjQ6ImJvZHkiO2E6Mjp7aTowO2E6NDp7czo0OiJuYW1lIjtzOjU6IkVtYWlsIjtzOjQ6InR5cGUiO3M6NToiaW5wdXQiO3M6NToiZmllbGQiO3M6NToiZW1haWwiO3M6NjoicGFyYW1zIjthOjI6e3M6NToibGFiZWwiO3M6NToiRW1haWwiO3M6ODoicmVxdWlyZWQiO2I6MTt9fWk6MTthOjQ6e3M6NDoibmFtZSI7czo2OiJTdWJtaXQiO3M6NDoidHlwZSI7czo2OiJzdWJtaXQiO3M6NToiZmllbGQiO3M6Njoic3VibWl0IjtzOjY6InBhcmFtcyI7YToxOntzOjU6ImxhYmVsIjtzOjEwOiJTdWJzY3JpYmUhIjt9fX1zOjc6ImZvcm1faWQiO2k6MTt9', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_list`
--

CREATE TABLE `wp_wysija_list` (
  `list_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `namekey` varchar(255) DEFAULT NULL,
  `description` text,
  `unsub_mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `welcome_mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_enabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_public` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_list`
--

INSERT INTO `wp_wysija_list` (`list_id`, `name`, `namekey`, `description`, `unsub_mail_id`, `welcome_mail_id`, `is_enabled`, `is_public`, `created_at`, `ordering`) VALUES
(1, 'My first list', 'my-first-list', 'The list created automatically on install of the MailPoet.', 0, 0, 1, 1, 1451942519, 0),
(2, 'WordPress Users', 'users', 'The list created automatically on import of the plugin''s subscribers : "WordPress', 0, 0, 0, 0, 1451942520, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_queue`
--

CREATE TABLE `wp_wysija_queue` (
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `send_at` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `number_try` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_url`
--

CREATE TABLE `wp_wysija_url` (
  `url_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_url_mail`
--

CREATE TABLE `wp_wysija_url_mail` (
  `email_id` int(11) NOT NULL,
  `url_id` int(10) unsigned NOT NULL,
  `unique_clicked` int(10) unsigned NOT NULL DEFAULT '0',
  `total_clicked` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user`
--

CREATE TABLE `wp_wysija_user` (
  `user_id` int(10) unsigned NOT NULL,
  `wpuser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL,
  `confirmed_ip` varchar(100) NOT NULL DEFAULT '0',
  `confirmed_at` int(10) unsigned DEFAULT NULL,
  `last_opened` int(10) unsigned DEFAULT NULL,
  `last_clicked` int(10) unsigned DEFAULT NULL,
  `keyuser` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `domain` varchar(255) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user`
--

INSERT INTO `wp_wysija_user` (`user_id`, `wpuser_id`, `email`, `firstname`, `lastname`, `ip`, `confirmed_ip`, `confirmed_at`, `last_opened`, `last_clicked`, `keyuser`, `created_at`, `status`, `domain`) VALUES
(1, 1, 'sean@emagid.com', '', '', '', '0', NULL, NULL, NULL, '', 1451942521, 1, 'emagid.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_field`
--

CREATE TABLE `wp_wysija_user_field` (
  `field_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `column_name` varchar(250) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned DEFAULT '0',
  `values` text,
  `default` varchar(250) NOT NULL DEFAULT '',
  `is_required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `error_message` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user_field`
--

INSERT INTO `wp_wysija_user_field` (`field_id`, `name`, `column_name`, `type`, `values`, `default`, `is_required`, `error_message`) VALUES
(1, 'First name', 'firstname', 0, NULL, '', 0, 'Please enter first name'),
(2, 'Last name', 'lastname', 0, NULL, '', 0, 'Please enter last name');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_history`
--

CREATE TABLE `wp_wysija_user_history` (
  `history_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT '',
  `details` text,
  `executed_at` int(10) unsigned DEFAULT NULL,
  `executed_by` int(10) unsigned DEFAULT NULL,
  `source` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_list`
--

CREATE TABLE `wp_wysija_user_list` (
  `list_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `sub_date` int(10) unsigned DEFAULT '0',
  `unsub_date` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user_list`
--

INSERT INTO `wp_wysija_user_list` (`list_id`, `user_id`, `sub_date`, `unsub_date`) VALUES
(1, 1, 1451942519, 0),
(2, 1, 1451942520, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cf7dbplugin_st`
--
ALTER TABLE `wp_cf7dbplugin_st`
  ADD PRIMARY KEY (`submit_time`);

--
-- Indexes for table `wp_cf7dbplugin_submits`
--
ALTER TABLE `wp_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

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
-- Indexes for table `wp_pp_login_builder`
--
ALTER TABLE `wp_pp_login_builder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pp_password_reset_builder`
--
ALTER TABLE `wp_pp_password_reset_builder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pp_registration_builder`
--
ALTER TABLE `wp_pp_registration_builder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

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
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `woocommerce_term_id` (`woocommerce_term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `wp_wysija_campaign_list`
--
ALTER TABLE `wp_wysija_campaign_list`
  ADD PRIMARY KEY (`list_id`,`campaign_id`);

--
-- Indexes for table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `wp_wysija_email_user_stat`
--
ALTER TABLE `wp_wysija_email_user_stat`
  ADD PRIMARY KEY (`user_id`,`email_id`);

--
-- Indexes for table `wp_wysija_email_user_url`
--
ALTER TABLE `wp_wysija_email_user_url`
  ADD PRIMARY KEY (`user_id`,`email_id`,`url_id`);

--
-- Indexes for table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `wp_wysija_queue`
--
ALTER TABLE `wp_wysija_queue`
  ADD PRIMARY KEY (`user_id`,`email_id`),
  ADD KEY `SENT_AT_INDEX` (`send_at`);

--
-- Indexes for table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
  ADD PRIMARY KEY (`url_id`);

--
-- Indexes for table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
  ADD PRIMARY KEY (`email_id`,`url_id`);

--
-- Indexes for table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`email`);

--
-- Indexes for table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `wp_wysija_user_list`
--
ALTER TABLE `wp_wysija_user_list`
  ADD PRIMARY KEY (`list_id`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=791;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=993;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `wp_pp_login_builder`
--
ALTER TABLE `wp_pp_login_builder`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_pp_password_reset_builder`
--
ALTER TABLE `wp_pp_password_reset_builder`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_pp_registration_builder`
--
ALTER TABLE `wp_pp_registration_builder`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
  MODIFY `campaign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
  MODIFY `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
  MODIFY `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
  MODIFY `list_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
  MODIFY `url_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
  MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
  MODIFY `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
  MODIFY `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
