/*
 Navicat MySQL Data Transfer

 Source Server         : laradock
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : pictureframesolutions

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 12/03/2022 23:13:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activations
-- ----------------------------
BEGIN;
INSERT INTO `activations` VALUES (1, 1, 'VpuQMR4Db2uOl3ID9RbiXwQkraDM7tJw', 1, '2021-09-14 22:29:10', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
COMMIT;

-- ----------------------------
-- Table structure for ads
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for audit_histories
-- ----------------------------
DROP TABLE IF EXISTS `audit_histories`;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=2237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of audit_histories
-- ----------------------------
BEGIN;
INSERT INTO `audit_histories` VALUES (4, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '192.168.176.1', 0, 1, 'System Admin', 'info', '2021-11-20 12:54:10', '2021-11-20 12:54:10');
INSERT INTO `audit_histories` VALUES (5, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '192.168.176.1', 0, 1, 'System Admin', 'info', '2021-11-20 15:50:46', '2021-11-20 15:50:46');
INSERT INTO `audit_histories` VALUES (6, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '192.168.176.1', 0, 1, 'System Admin', 'info', '2021-11-20 18:38:52', '2021-11-20 18:38:52');
INSERT INTO `audit_histories` VALUES (7, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '192.168.176.1', 0, 1, 'System Admin', 'info', '2021-11-20 22:08:50', '2021-11-20 22:08:50');
INSERT INTO `audit_histories` VALUES (8, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '75.80.225.150', 0, 1, 'System Admin', 'info', '2021-11-25 02:52:38', '2021-11-25 02:52:38');
INSERT INTO `audit_histories` VALUES (9, 1, 'simple-slider-item', '{\"_token\":\"rWDNhthmVnoJxbrqB0NUdjISFKtNUt2NsGDDrN0n\",\"simple_slider_id\":\"1\",\"title\":\"Woman Fashion\",\"link\":null,\"button_text\":\"Shop now\",\"description\":\"Get up to 50% off Today Only!\",\"order\":\"1\",\"image\":\"hero\\/slide-willow-1.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '75.80.225.150', 1, 1, 'Woman Fashion', 'primary', '2021-11-25 03:26:51', '2021-11-25 03:26:51');
INSERT INTO `audit_histories` VALUES (10, 1, 'simple-slider-item', '{\"_token\":\"rWDNhthmVnoJxbrqB0NUdjISFKtNUt2NsGDDrN0n\",\"simple_slider_id\":\"1\",\"title\":\"Man Fashion\",\"link\":null,\"button_text\":\"Discover now\",\"description\":\"50% off in all products\",\"order\":\"2\",\"image\":\"hero\\/slide-armour-1.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '75.80.225.150', 1, 2, 'Man Fashion', 'primary', '2021-11-25 03:27:07', '2021-11-25 03:27:07');
INSERT INTO `audit_histories` VALUES (11, 1, 'simple-slider-item', '{\"_token\":\"rWDNhthmVnoJxbrqB0NUdjISFKtNUt2NsGDDrN0n\",\"simple_slider_id\":\"1\",\"title\":\"Summer Sale\",\"link\":null,\"button_text\":\"Shop now\",\"description\":\"Taking your Viewing Experience to Next Level\",\"order\":\"3\",\"image\":\"hero\\/slide-opus-1.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '75.80.225.150', 1, 3, 'Summer Sale', 'primary', '2021-11-25 03:27:24', '2021-11-25 03:27:24');
INSERT INTO `audit_histories` VALUES (12, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '75.80.225.150', 0, 1, 'System Admin', 'info', '2021-11-25 10:14:29', '2021-11-25 10:14:29');
INSERT INTO `audit_histories` VALUES (13, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '75.80.225.150', 0, 1, 'System Admin', 'info', '2021-11-26 11:25:06', '2021-11-26 11:25:06');
INSERT INTO `audit_histories` VALUES (14, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '75.80.225.150', 0, 1, 'System Admin', 'info', '2021-11-26 16:48:26', '2021-11-26 16:48:26');
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'Ecommerce', 0, 'Consequuntur maiores nisi et dolores at quia. Est laudantium eius non. Aut debitis officia aut et ea ut alias.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `categories` VALUES (2, 'Fashion', 0, 'Sed dolores ex veritatis vel sunt atque sit maxime. Ex nam dolorum placeat distinctio doloribus aut. Delectus amet asperiores sed.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `categories` VALUES (3, 'Electronic', 0, 'Dolorem fuga numquam quia et ut dolorem quia. Suscipit harum sapiente quos dolores magnam. Veniam rem eos molestiae quidem qui est nesciunt.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `categories` VALUES (4, 'Commercial', 0, 'Corrupti a possimus officiis ipsum fuga. Eos deleniti aut sed consectetur et. Ea molestiae sint sed consequatur eaque deserunt. Magni libero et molestias qui natus quasi.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `categories` VALUES (5, 'Thương mại điện tử', 0, 'Mollitia ut nostrum dolores eos deserunt consectetur nemo. Id et error itaque deleniti similique officiis sit non. Occaecati omnis ea quo.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `categories` VALUES (6, 'Fashion', 0, 'Aut odit incidunt qui voluptas totam omnis. Quo tenetur sint molestiae voluptate nam debitis. Dolore vel vel recusandae magni id odio.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `categories` VALUES (7, 'Electronic', 0, 'Ut rerum aliquam provident laudantium. Quidem et et reprehenderit sunt facilis. Consequatur est labore eum dolorum. Saepe iste et voluptatem qui error optio.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `categories` VALUES (8, 'Thương mại', 0, 'Aut tenetur quaerat officiis maiores illum. Ut hic qui asperiores. Velit voluptates alias voluptatem quis doloremque. Quos ad labore vel consequatur voluptates consectetur recusandae et.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-09-14 22:29:08', '2021-09-14 22:29:08');
COMMIT;

-- ----------------------------
-- Table structure for contact_replies
-- ----------------------------
DROP TABLE IF EXISTS `contact_replies`;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for dashboard_widget_settings
-- ----------------------------
DROP TABLE IF EXISTS `dashboard_widget_settings`;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for dashboard_widgets
-- ----------------------------
DROP TABLE IF EXISTS `dashboard_widgets`;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of dashboard_widgets
-- ----------------------------
BEGIN;
INSERT INTO `dashboard_widgets` VALUES (1, 'widget_total_1', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (2, 'widget_total_2', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (3, 'widget_total_themes', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (4, 'widget_total_3', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (5, 'widget_total_4', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (6, 'widget_total_users', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (7, 'widget_total_pages', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (8, 'widget_total_plugins', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (9, 'widget_analytics_general', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (10, 'widget_analytics_page', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (11, 'widget_analytics_browser', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (12, 'widget_posts_recent', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (13, 'widget_analytics_referrer', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (14, 'widget_audit_logs', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
INSERT INTO `dashboard_widgets` VALUES (15, 'widget_ecommerce_report_general', '2021-11-10 05:03:54', '2021-11-10 05:03:54');
COMMIT;

-- ----------------------------
-- Table structure for ec_brands
-- ----------------------------
DROP TABLE IF EXISTS `ec_brands`;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_brands
-- ----------------------------
BEGIN;
INSERT INTO `ec_brands` VALUES (1, 'Studio Moulding', NULL, 'https://studiomoulding.com', NULL, 'published', 0, 0, '2021-09-10 21:10:31', '2021-09-10 21:10:31');
COMMIT;

-- ----------------------------
-- Table structure for ec_brands_translations
-- ----------------------------
DROP TABLE IF EXISTS `ec_brands_translations`;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_cart
-- ----------------------------
DROP TABLE IF EXISTS `ec_cart`;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_currencies
-- ----------------------------
DROP TABLE IF EXISTS `ec_currencies`;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_currencies
-- ----------------------------
BEGIN;
INSERT INTO `ec_currencies` VALUES (1, 'USD', '$', 1, 2, 0, 1, 1, '2021-05-03 02:00:58', '2021-05-03 02:00:58');
COMMIT;

-- ----------------------------
-- Table structure for ec_customer_addresses
-- ----------------------------
DROP TABLE IF EXISTS `ec_customer_addresses`;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_customer_addresses
-- ----------------------------
BEGIN;
INSERT INTO `ec_customer_addresses` VALUES (1, 'John Smith', 'john.smith@botble.com', '+15088208419', 'BO', 'Nevada', 'Lake Miracle', '171 Conner Heights Suite 151', 1, 1, '2021-05-03 02:01:02', '2021-05-03 02:01:02', '45089-7855');
INSERT INTO `ec_customer_addresses` VALUES (2, 'John Smith', 'john.smith@botble.com', '+13413166421', 'LC', 'Virginia', 'West Deangelo', '7861 Naomi Key', 1, 0, '2021-05-03 02:01:02', '2021-05-03 02:01:02', '28184-9644');
INSERT INTO `ec_customer_addresses` VALUES (3, 'Edward Brown', 'cyril96@example.com', '+13196939521', 'BI', 'Oregon', 'Monaborough', '9444 Casper Drives', 2, 1, '2021-05-03 02:01:02', '2021-05-03 02:01:02', '28457');
INSERT INTO `ec_customer_addresses` VALUES (4, 'Mrs. Meghan Boyer', 'aniya.hill@example.com', '+12138188597', 'GP', 'Alabama', 'Andresview', '423 Graham Fort', 3, 1, '2021-05-03 02:01:02', '2021-05-03 02:01:02', '31067-1837');
INSERT INTO `ec_customer_addresses` VALUES (5, 'Winona Quitzon III', 'kasandra.wyman@example.org', '+15590741536', 'GM', 'Connecticut', 'Schillerberg', '5199 Hyatt Drives', 4, 1, '2021-05-03 02:01:03', '2021-05-03 02:01:03', '35918-2896');
INSERT INTO `ec_customer_addresses` VALUES (6, 'Naomi Mosciski', 'hermiston.larissa@example.net', '+16291551715', 'HN', 'North Dakota', 'Port Alejandrinborough', '349 Winifred Path', 5, 1, '2021-05-03 02:01:03', '2021-05-03 02:01:03', '24838');
INSERT INTO `ec_customer_addresses` VALUES (7, 'Leonardo Swaniawski', 'justice79@example.org', '+12699605176', 'MW', 'Wisconsin', 'Hauckport', '1537 Adrianna Ford', 6, 1, '2021-05-03 02:01:03', '2021-05-03 02:01:03', '90077');
INSERT INTO `ec_customer_addresses` VALUES (8, 'Pink Hills PhD', 'amely.schimmel@example.net', '+19718729073', 'RE', 'Arkansas', 'South Tressieberg', '2205 Vivian Brooks', 7, 1, '2021-05-03 02:01:04', '2021-05-03 02:01:04', '74981-6881');
INSERT INTO `ec_customer_addresses` VALUES (9, 'Barton Haag', 'mittie95@example.org', '+19075367867', 'IO', 'New York', 'Port Sofiaport', '77997 Birdie Fields Suite 383', 8, 1, '2021-05-03 02:01:04', '2021-05-03 02:01:04', '11434');
INSERT INTO `ec_customer_addresses` VALUES (10, 'Yvonne Raynor I', 'danika.schuppe@example.org', '+18305219700', 'KZ', 'Alabama', 'Bertramview', '51045 Enola Shoals', 9, 1, '2021-05-03 02:01:04', '2021-05-03 02:01:04', '50734-4016');
INSERT INTO `ec_customer_addresses` VALUES (11, 'Tommie Douglas Jr.', 'jaeden58@example.org', '+16516578730', 'HT', 'Wisconsin', 'Marjolainefurt', '315 Baumbach Station Apt. 510', 10, 1, '2021-05-03 02:01:05', '2021-05-03 02:01:05', '87529-4147');
INSERT INTO `ec_customer_addresses` VALUES (12, 'Prof. Tyson Gleason', 'davon.huels@example.org', '+19493947236', 'VE', 'Mississippi', 'New Hertha', '498 Logan Expressway Suite 131', 11, 1, '2021-05-03 02:01:05', '2021-05-03 02:01:05', '43902-0149');
COMMIT;

-- ----------------------------
-- Table structure for ec_customer_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `ec_customer_password_resets`;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_customers
-- ----------------------------
DROP TABLE IF EXISTS `ec_customers`;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_customers
-- ----------------------------
BEGIN;
INSERT INTO `ec_customers` VALUES (1, 'John Smith', 'john.smith@botble.com', '$2y$10$BeT.xcqx3PTiJmPdZr2bO.HxZn/0pRAHe9BNGdGL4865RXiB/9f7u', 'customers/1.jpg', NULL, '+12401531811', 'NWE7wMR4dkz10OpIMea9gR2sK1WId4M93FeGkh5C4huNbffWYo9Zq2WLNigo', '2021-05-03 02:01:02', '2021-05-03 02:01:02', '2021-05-03 09:01:02', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (2, 'Edward Brown', 'cyril96@example.com', '$2y$10$L5BvlyIfTIX9lqMqd57pROmW64a02yYI1oIGGbdpw6YWR1XGy0Z66', 'customers/1.jpg', NULL, '+16469744061', NULL, '2021-05-03 02:01:02', '2021-05-03 02:01:02', '2021-05-03 09:01:02', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (3, 'Mrs. Meghan Boyer', 'aniya.hill@example.com', '$2y$10$18b6FpmrMZ1wNM.3IxnpIec03Jz3RmRyos3NbSzplthWSSj52bkRO', 'customers/2.jpg', NULL, '+14805360249', NULL, '2021-05-03 02:01:02', '2021-05-03 02:01:02', '2021-05-03 09:01:02', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (4, 'Winona Quitzon III', 'kasandra.wyman@example.org', '$2y$10$gJ.HqTdeKConhRIeVmRIWex2QRQ5bpIMpOll1v8HmLDut.rR4IXgC', 'customers/3.jpg', NULL, '+17696268023', NULL, '2021-05-03 02:01:03', '2021-05-03 02:01:03', '2021-05-03 09:01:03', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (5, 'Naomi Mosciski', 'hermiston.larissa@example.net', '$2y$10$p8eChbQflCp8JvZP9HbyU.Sf/1U9jQM7NKbQptowJU5ppfHYgqcrG', 'customers/4.jpg', NULL, '+19721760146', NULL, '2021-05-03 02:01:03', '2021-05-03 02:01:03', '2021-05-03 09:01:03', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (6, 'Leonardo Swaniawski', 'justice79@example.org', '$2y$10$FYEDsgf2a0uJaa9QlIUG0.HYpuoB.RUq/BVC7.Fjz1FJuaKy8nyau', 'customers/5.jpg', NULL, '+15305805903', NULL, '2021-05-03 02:01:03', '2021-05-03 02:01:03', '2021-05-03 09:01:03', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (7, 'Pink Hills PhD', 'amely.schimmel@example.net', '$2y$10$ViOXqwWjaEML6sgu7K.fbuXAMHdVqGqOUqEQASfaduwQtShAPdxA6', 'customers/6.jpg', NULL, '+16280114161', NULL, '2021-05-03 02:01:04', '2021-05-03 02:01:04', '2021-05-03 09:01:04', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (8, 'Barton Haag', 'mittie95@example.org', '$2y$10$KoZMw9UPBY7Qew/uQQHBO.uesk5wnTYnLkYgiQ..6NhpdsMMVD05C', 'customers/7.jpg', NULL, '+16829732074', NULL, '2021-05-03 02:01:04', '2021-05-03 02:01:04', '2021-05-03 09:01:04', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (9, 'Yvonne Raynor I', 'danika.schuppe@example.org', '$2y$10$7uRkRGc1NQO6JG295f4zEOgGK6lbRaYvsQpbaRn.YKzCctilwYNN.', 'customers/8.jpg', NULL, '+13601382667', NULL, '2021-05-03 02:01:04', '2021-05-03 02:01:04', '2021-05-03 09:01:04', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (10, 'Tommie Douglas Jr.', 'jaeden58@example.org', '$2y$10$7C9CS3OIeRSaV6PW60l9/uN/.o82Z9S83u8Yj56zbkE7Jbu8iUyeS', 'customers/9.jpg', NULL, '+18457067815', NULL, '2021-05-03 02:01:05', '2021-05-03 02:01:05', '2021-05-03 09:01:05', NULL, 'activated');
INSERT INTO `ec_customers` VALUES (11, 'Prof. Tyson Gleason', 'davon.huels@example.org', '$2y$10$MxzP5uHxfaG/vCELWsRTce6Gazg1LmwE2Ssqb3r028WbvTa77tq0W', 'customers/10.jpg', NULL, '+19808829875', NULL, '2021-05-03 02:01:05', '2021-05-03 02:01:05', '2021-05-03 09:01:05', NULL, 'activated');
COMMIT;

-- ----------------------------
-- Table structure for ec_discount_customers
-- ----------------------------
DROP TABLE IF EXISTS `ec_discount_customers`;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_discount_product_collections
-- ----------------------------
DROP TABLE IF EXISTS `ec_discount_product_collections`;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_discount_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_discount_products`;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_discounts
-- ----------------------------
DROP TABLE IF EXISTS `ec_discounts`;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_flash_sale_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_flash_sale_products`;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_flash_sale_products
-- ----------------------------
BEGIN;
INSERT INTO `ec_flash_sale_products` VALUES (1, 22, 90.48, 18, 3);
INSERT INTO `ec_flash_sale_products` VALUES (2, 22, 90.48, 10, 1);
COMMIT;

-- ----------------------------
-- Table structure for ec_flash_sales
-- ----------------------------
DROP TABLE IF EXISTS `ec_flash_sales`;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_flash_sales
-- ----------------------------
BEGIN;
INSERT INTO `ec_flash_sales` VALUES (1, 'Winter Sale 1', '2021-05-27 00:00:00', 'published', '2021-05-03 02:01:10', '2021-05-03 02:01:10');
INSERT INTO `ec_flash_sales` VALUES (2, 'Winter Sale 2', '2021-06-17 00:00:00', 'published', '2021-05-03 02:01:10', '2021-05-03 02:01:10');
INSERT INTO `ec_flash_sales` VALUES (3, 'Winter Sale 3', '2021-06-09 00:00:00', 'published', '2021-05-03 02:01:10', '2021-05-03 02:01:10');
COMMIT;

-- ----------------------------
-- Table structure for ec_flash_sales_translations
-- ----------------------------
DROP TABLE IF EXISTS `ec_flash_sales_translations`;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_grouped_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_grouped_products`;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_order_addresses
-- ----------------------------
DROP TABLE IF EXISTS `ec_order_addresses`;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_order_histories
-- ----------------------------
DROP TABLE IF EXISTS `ec_order_histories`;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_order_product
-- ----------------------------
DROP TABLE IF EXISTS `ec_order_product`;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_orders
-- ----------------------------
DROP TABLE IF EXISTS `ec_orders`;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_attribute_sets
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_attribute_sets`;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('regular','framebuilder') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_attribute_sets
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_attribute_sets` VALUES (1, 'framebuilder', 'Series', 'series', 'dropdown', 0, 0, 0, 'published', 0, '2021-09-10 21:11:42', '2021-09-10 21:12:10');
INSERT INTO `ec_product_attribute_sets` VALUES (2, 'framebuilder', 'Frame Color', 'frame-color', 'dropdown', 0, 0, 0, 'published', 0, '2021-09-10 21:15:03', '2022-03-10 11:51:57');
INSERT INTO `ec_product_attribute_sets` VALUES (3, 'framebuilder', 'Width', 'width', 'NULL', 0, 0, 0, 'published', 0, '2021-09-10 21:50:15', '2021-09-10 21:50:15');
INSERT INTO `ec_product_attribute_sets` VALUES (4, 'framebuilder', 'Height', 'height', 'NULL', 0, 0, 0, 'published', 0, '2021-09-10 21:52:15', '2021-09-10 21:52:15');
INSERT INTO `ec_product_attribute_sets` VALUES (5, 'framebuilder', 'Matting Color', 'matting-color', 'dropdown', 0, 0, 0, 'published', 0, '2022-03-10 10:25:41', '2022-03-10 10:25:41');
COMMIT;

-- ----------------------------
-- Table structure for ec_product_attribute_sets_translations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_attributes
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_attributes`;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_attributes
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_attributes` VALUES (1, 1, 'Miore', 'miore', '', '', '', 1, 0, 'published', '2021-09-10 21:12:10', '2021-09-10 21:12:10');
INSERT INTO `ec_product_attributes` VALUES (2, 2, 'WHITE', 'matte-white', '#eaecec', 'rgb(234, 236, 236)', 'products/colors/pfs3360.jpg', 0, 36, 'published', '2021-09-10 21:15:03', '2022-03-11 01:56:28');
INSERT INTO `ec_product_attributes` VALUES (3, 2, 'BLACK', 'matte-black-333333', '#3d4244', 'rgb(61, 66, 68)', 'products/colors/pfs3201.jpg', 0, 5, 'published', '2021-09-10 21:15:03', '2022-03-11 01:32:48');
INSERT INTO `ec_product_attributes` VALUES (4, 2, 'CHAMPAGNE SILVER', 'brio-champagne-silver-c0c0c0', '#d2ba9a', 'rgb(210, 186, 154)', 'products/colors/pfs1210.jpg', 0, 26, 'published', '2021-09-10 21:15:03', '2022-03-11 01:56:27');
INSERT INTO `ec_product_attributes` VALUES (5, 2, 'GUNMETAL', 'brio-gunmetal-8f9291', '#65605c', 'rgb(101, 96, 92)', 'products/colors/pfs1330.jpg', 0, 19, 'published', '2021-09-10 21:15:03', '2022-03-11 01:54:18');
INSERT INTO `ec_product_attributes` VALUES (6, 2, 'GOLD', 'brio-gold-ffd700', '#c49b31', 'rgb(196, 155, 49)', 'products/colors/pfs1540.jpg', 0, 14, 'published', '2021-09-10 21:15:03', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (8, 2, 'PECAN', 'koda-pecan-c1b094', '#8f3403', 'rgb(143, 52, 3)', 'products/colors/pfs2104.jpg', 0, 25, 'published', '2021-09-10 21:15:03', '2022-03-11 01:45:59');
INSERT INTO `ec_product_attributes` VALUES (9, 2, 'CHERRY', 'koda-cherry-d2042d', '#782e08', 'rgb(120, 46, 8)', 'products/colors/pfs2250.jpg', 0, 8, 'published', '2021-09-10 21:15:03', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (10, 2, 'WALNUT', 'koda-walnut-773f1a', '#461c01', '#773f1a', 'products/colors/pfs2380.jpg', 0, 31, 'published', '2021-09-10 21:15:03', '2022-03-11 01:56:27');
INSERT INTO `ec_product_attributes` VALUES (11, 2, 'NATURAL', 'koda-natural-1a2c40', '#7b5026', 'rgb(123, 80, 38)', 'products/colors/pfs2490.jpg', 0, 24, 'published', '2021-09-10 21:15:03', '2022-03-11 01:45:59');
INSERT INTO `ec_product_attributes` VALUES (12, 2, 'MAHOGANY/ GOLD', 'diploma-mahogany-gold-c04000', '#792e22', 'rgb(121, 46, 34)', 'products/colors/pfs2606.jpg', 0, 22, 'published', '2021-09-10 21:15:03', '2022-03-11 01:45:59');
INSERT INTO `ec_product_attributes` VALUES (13, 2, 'MATT MAHOGANY', 'diploma-mahogany-c04000', '#c67469', 'rgb(198, 116, 105)', 'products/colors/pfs2705.jpg', 0, 20, 'published', '2021-09-10 21:15:03', '2022-03-11 01:49:48');
INSERT INTO `ec_product_attributes` VALUES (14, 2, 'MAPLE', 'natural-maple-bb9351', '#bb9351', 'rgb(174, 71, 2)', 'products/colors/pfs3720.jpg', 0, 23, 'published', '2021-09-10 21:15:03', '2022-03-11 01:45:59');
INSERT INTO `ec_product_attributes` VALUES (18, 2, 'CREAM', 'cream-fffad4', '#fffad4', '#fffad4', 'products/matboards/c85704.jpg', 0, 13, 'published', '2021-09-10 21:15:03', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (19, 2, 'TAN', 'tan-dfcca8', '#e0ceaa', '#dfcca8', 'products/matboards/c85706.jpg', 0, 30, 'published', '2021-09-10 21:15:03', '2022-03-11 01:56:27');
INSERT INTO `ec_product_attributes` VALUES (24, 3, '1\"', '', '', '', '', 1, 0, 'published', '2021-09-10 21:50:15', '2021-09-10 21:50:15');
INSERT INTO `ec_product_attributes` VALUES (25, 3, '3/4\"', '', '', '', '', 0, 1, 'published', '2021-09-10 21:50:15', '2021-09-10 21:50:15');
INSERT INTO `ec_product_attributes` VALUES (26, 3, '13/16\"', '', '', '', '', 0, 2, 'published', '2021-09-10 21:50:15', '2021-09-10 21:50:15');
INSERT INTO `ec_product_attributes` VALUES (27, 3, '1-3/4\"', '', '', '', '', 0, 3, 'published', '2021-09-10 21:50:15', '2021-09-10 21:50:15');
INSERT INTO `ec_product_attributes` VALUES (28, 3, '1-9/16\"', '', '', '', '', 0, 4, 'published', '2021-09-10 21:50:15', '2021-09-10 21:50:15');
INSERT INTO `ec_product_attributes` VALUES (29, 3, '1-3/16\"', '', '', '', '', 0, 5, 'published', '2021-09-10 21:50:15', '2021-09-10 21:50:15');
INSERT INTO `ec_product_attributes` VALUES (30, 3, '5\"', '', '', '', '', 0, 6, 'published', '2021-09-10 21:50:15', '2021-09-10 21:50:15');
INSERT INTO `ec_product_attributes` VALUES (31, 4, '7/8\"', '', '', '', '', 1, 0, 'published', '2021-09-10 21:52:15', '2021-09-10 21:52:15');
INSERT INTO `ec_product_attributes` VALUES (32, 4, '13/16\"', '', '', '', '', 0, 1, 'published', '2021-09-10 21:52:15', '2021-09-10 21:52:15');
INSERT INTO `ec_product_attributes` VALUES (33, 4, '1\"', '', '', '', '', 0, 2, 'published', '2021-09-10 21:52:15', '2021-09-10 21:52:15');
INSERT INTO `ec_product_attributes` VALUES (34, 4, '1-1/8\"', '', '', '', '', 0, 3, 'published', '2021-09-10 21:52:15', '2021-09-10 21:52:15');
INSERT INTO `ec_product_attributes` VALUES (35, 4, '1-1/4\"', '', '', '', '', 0, 4, 'published', '2021-09-10 21:52:15', '2021-09-10 21:52:15');
INSERT INTO `ec_product_attributes` VALUES (36, 4, '1-3/8\"', '', '', '', '', 0, 5, 'published', '2021-09-10 21:52:15', '2021-09-10 21:52:15');
INSERT INTO `ec_product_attributes` VALUES (37, 4, '7\"', '', '', '', '', 0, 6, 'published', '2021-09-10 21:52:15', '2021-09-10 21:52:15');
INSERT INTO `ec_product_attributes` VALUES (38, 1, 'ST Lacquer', '', '', '', '', 0, 1, 'published', '2021-09-10 22:15:35', '2021-09-10 22:15:35');
INSERT INTO `ec_product_attributes` VALUES (39, 1, 'Prima', '', '', '', '', 0, 2, 'published', '2021-09-10 22:34:39', '2021-09-10 22:34:39');
INSERT INTO `ec_product_attributes` VALUES (40, 2, 'WHITE', 'matte-white-fdfdfb', '#f8f8f8', 'rgb(248, 248, 248)', 'products/colors/pfs1760.jpg', 0, 35, 'published', '2022-02-26 19:33:16', '2022-03-11 01:56:28');
INSERT INTO `ec_product_attributes` VALUES (41, 2, 'WHITE', 'matte-white-fefae7', '#fef7e6', '#fefae7', 'products/matboards/c85703.jpg', 0, 34, 'published', '2022-02-26 21:25:44', '2022-03-11 01:56:28');
INSERT INTO `ec_product_attributes` VALUES (44, 2, 'GREY', 'brio-grey-7a7f80', '#8f8a83', 'rgb(143, 138, 131)', 'products/colors/pfs1410.jpg', 0, 18, 'published', '2022-02-26 21:43:43', '2022-03-11 01:45:58');
INSERT INTO `ec_product_attributes` VALUES (47, 2, 'BLACK', 'matte-black-131711', '#202826', 'rgb(32, 40, 38)', 'products/colors/pfs1101.jpg', 0, 4, 'published', '2022-02-26 21:43:44', '2022-03-11 01:32:48');
INSERT INTO `ec_product_attributes` VALUES (48, 2, 'ARCTIC SILVER', 'brio-arctic-silver-c6ced9', '#babcc1', 'rgb(186, 188, 193)', 'products/colors/pfs1910.jpg', 0, 0, 'published', '2022-03-09 11:33:57', '2022-03-10 23:21:10');
INSERT INTO `ec_product_attributes` VALUES (50, 5, 'ARCTIC SILVER', 'arctic-silver-c6ced9', '#c6ced9 ', 'rgb(198, 206, 217)', '', 0, 15, 'published', NULL, '2022-03-10 11:17:43');
INSERT INTO `ec_product_attributes` VALUES (51, 5, 'WHITE', 'white-ffffff', '#ffffff', 'rgb(255, 255, 255)', 'products/matboards/c85700.jpg', 0, 0, 'published', NULL, NULL);
INSERT INTO `ec_product_attributes` VALUES (52, 5, 'CREAM', 'matting-cream-fffad4', '#fffad4', '#fffad4', 'products/matboards/c85704.jpg', 0, 1, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (53, 5, 'TAN', 'matting-tan-dfcca8', '#dfcca8', '#dfcca8', 'products/matboards/c85706.jpg', 0, 2, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (54, 5, 'RED', 'matting-red-e43a41', '#e43a41', 'rgb(228, 58, 65)', 'products/matboards/c89899.jpg', 0, 3, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (55, 5, 'BLUE', 'matting-blue-9bc7e6', '#9bc7e6', 'rgb(155, 199, 230)', 'products/matboards/c89882.jpg', 0, 4, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (56, 5, 'ORANGE', 'matting-orange-f16028', '#f16028', '#f16028', 'products/matboards/c89892.jpg', 0, 5, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (57, 5, 'WHITE', 'matting-white-fdfdfb', '#fdfdfb', 'rgb(253, 253, 251)', 'products/matboards/c85702.jpg', 0, 6, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (58, 5, 'WHITE', 'matting-white-fefae7', '#fefae7', '#fefae7', 'products/matboards/c85703.jpg', 0, 7, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (59, 5, 'BLUE', 'matting-blue-2e5a8c', '#2e5a8c', '#2e5a8c', 'products/matboards/c89827.jpg', 0, 8, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (60, 5, 'GRAY', 'matting-gray-d2d5cf', '#d2d5cf', '#d2d5cf', 'products/matboards/c85712.jpg', 0, 9, 'published', NULL, '2022-03-10 11:17:42');
INSERT INTO `ec_product_attributes` VALUES (61, 5, 'GREY', 'matting-grey-7a7f80', '#7a7f80', '#7a7f80', 'products/matboards/c85714.jpg', 0, 10, 'published', NULL, '2022-03-10 11:17:43');
INSERT INTO `ec_product_attributes` VALUES (62, 5, 'ORANGE', 'matting-orange-f47c46', '#f47c46', 'rgb(244, 124, 70)', 'products/matboards/c89876.jpg', 0, 11, 'published', NULL, '2022-03-10 11:17:43');
INSERT INTO `ec_product_attributes` VALUES (63, 5, 'RED', 'matting-red-c5333e', '#c5333e', '#c5333e', 'products/matboards/c89869.jpg', 0, 12, 'published', NULL, '2022-03-10 11:17:43');
INSERT INTO `ec_product_attributes` VALUES (64, 5, 'ORANGE', 'orange-f16028', '#f16028', '#f16028', 'products/matboards/c89892.jpg', 0, 14, 'published', NULL, '2022-03-10 11:17:43');
INSERT INTO `ec_product_attributes` VALUES (65, 5, 'BLACK', 'black-131711', '#131711', '#131711', '', 0, 13, 'published', NULL, '2022-03-10 11:17:43');
INSERT INTO `ec_product_attributes` VALUES (67, 2, 'BRASS', 'brio-brass', '#867359', 'rgb(134, 115, 89)', 'products/colors/pfs1640.jpg', 0, 6, 'published', '2022-03-10 23:01:37', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (68, 2, 'GOLD', 'brio-gold', '#dfc46c', 'rgb(223, 196, 108)', 'products/colors/pfs1840.jpg', 0, 16, 'published', '2022-03-10 23:03:18', '2022-03-11 01:45:58');
INSERT INTO `ec_product_attributes` VALUES (69, 2, 'COFFEE BROWN', 'koda-coffee-brown', '#3e2a27', 'rgb(62, 42, 39)', 'products/colors/pfs2002.jpg', 0, 12, 'published', '2022-03-10 23:05:00', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (70, 2, 'BLACK', 'koda-black', '#181916', 'rgb(24, 25, 22)', 'products/colors/pfs2501.jpg', 0, 3, 'published', '2022-03-10 23:08:53', '2022-03-11 01:32:48');
INSERT INTO `ec_product_attributes` VALUES (71, 2, 'GOLD', 'classic-gold-2', '#fbb700', 'rgb(251, 183, 0)', 'products/colors/pfs3040.jpg', 0, 17, 'published', '2022-03-10 23:24:15', '2022-03-11 01:45:58');
INSERT INTO `ec_product_attributes` VALUES (72, 2, 'SILVER', 'classic-silver', '#bea8a4', 'rgb(190, 168, 164)', 'products/colors/pfs2910.jpg', 0, 28, 'published', '2022-03-10 23:24:15', '2022-03-11 01:56:27');
INSERT INTO `ec_product_attributes` VALUES (73, 2, 'SILVER', 'classic-silver-2', '#dacdba', 'rgb(218, 205, 186)', 'products/colors/pfs3110.jpg', 0, 29, 'published', '2022-03-10 23:25:18', '2022-03-11 01:56:27');
INSERT INTO `ec_product_attributes` VALUES (74, 2, 'BLACK', 'lacquer-black', '#020402', '', 'products/colors/pfs3401.jpg', 0, 1, 'published', '2022-03-11 01:15:00', '2022-03-11 01:56:27');
INSERT INTO `ec_product_attributes` VALUES (75, 2, 'WHITE', 'lacquer-white', '#7f6a50', 'rgb(132, 112, 87)', 'products/colors/pfs3560.jpg', 0, 33, 'published', '2022-03-11 01:15:00', '2022-03-11 01:56:27');
INSERT INTO `ec_product_attributes` VALUES (76, 2, 'COFFEE BROWN', 'natural-coffee-brown', '#360e16', 'rgb(54, 14, 22)', 'products/colors/pfs3602.jpg', 0, 11, 'published', '2022-03-11 01:16:48', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (77, 2, 'CHERRY', 'natural-cherry', '#a02a12', 'rgb(160, 42, 18)', 'products/colors/pfs3850.jpg', 0, 9, 'published', '2022-03-11 01:23:27', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (78, 2, 'WALNUT', 'natural-walnut', '#8a4b27', 'rgb(138, 75, 39)', 'products/colors/pfs3980.jpg', 0, 32, 'published', '2022-03-11 01:23:28', '2022-03-11 01:56:27');
INSERT INTO `ec_product_attributes` VALUES (79, 2, 'CLEAR', 'natural-clear', '#d59d3e', 'rgb(213, 157, 62)', 'products/colors/pfs4090.jpg', 0, 10, 'published', '2022-03-11 01:25:16', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (80, 2, 'MAHOGANY', 'natural-mahogany', '#711e1a', 'rgb(113, 30, 26)', 'products/colors/pfs4105.jpg', 0, 21, 'published', '2022-03-11 01:27:12', '2022-03-11 01:45:58');
INSERT INTO `ec_product_attributes` VALUES (81, 2, 'CHARCOAL', 'natural-charcoal', '#3d4439', 'rgb(61, 68, 57)', 'products/colors/pfs4203.jpg', 0, 7, 'published', '2022-03-11 01:31:18', '2022-03-11 01:59:40');
INSERT INTO `ec_product_attributes` VALUES (82, 2, 'WHITEWASH', 'natural-whitewash', '#f1d4c7', 'rgb(241, 212, 199)', 'products/colors/pfs4360.jpg', 0, 37, 'published', '2022-03-11 01:31:19', '2022-03-11 01:56:28');
INSERT INTO `ec_product_attributes` VALUES (83, 2, 'BLACK', 'natural-black', '#161b17', 'rgb(22, 27, 23)', 'products/colors/pfs4401.jpg', 0, 2, 'published', '2022-03-11 01:32:48', '2022-03-11 01:38:33');
INSERT INTO `ec_product_attributes` VALUES (84, 2, 'GOLD', 'classic-gold', '#af5e0a', 'rgb(175, 94, 10)', 'products/colors/pfs2840.jpg', 0, 15, 'published', '2022-03-11 01:45:58', '2022-03-11 01:46:14');
INSERT INTO `ec_product_attributes` VALUES (85, 2, 'SILVER', 'brio-silver', '#98918b', 'rgb(152, 145, 139)', 'products/colors/pfs1410.jpg', 1, 27, 'published', '2022-03-11 01:56:27', '2022-03-11 01:56:27');
COMMIT;

-- ----------------------------
-- Table structure for ec_product_attributes_translations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_attributes_translations`;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_categories
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_categories`;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('regular','framebuilder') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_categories
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_categories` VALUES (1, 'framebuilder', 'MOULDING', 0, NULL, 'published', 1, NULL, 0, '2021-09-10 21:08:15', '2021-09-10 21:08:15');
INSERT INTO `ec_product_categories` VALUES (2, 'framebuilder', 'MATBOARD', 0, NULL, 'published', 2, NULL, 0, '2021-09-10 21:08:30', '2021-09-10 21:08:30');
INSERT INTO `ec_product_categories` VALUES (3, 'framebuilder', 'PLEXI GLASS', 0, NULL, 'published', 0, NULL, 0, '2021-09-10 21:08:42', '2021-09-10 21:08:42');
INSERT INTO `ec_product_categories` VALUES (35, 'regular', 'Accessories', 0, NULL, 'published', 0, NULL, 0, '2021-12-25 18:59:37', '2021-12-25 18:59:37');
COMMIT;

-- ----------------------------
-- Table structure for ec_product_categories_translations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_categories_translations`;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_category_product
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_category_product`;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_category_product
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_category_product` VALUES (26, 1, 1);
INSERT INTO `ec_product_category_product` VALUES (27, 1, 4);
INSERT INTO `ec_product_category_product` VALUES (28, 1, 11);
INSERT INTO `ec_product_category_product` VALUES (32, 1, 112);
INSERT INTO `ec_product_category_product` VALUES (33, 1, 119);
INSERT INTO `ec_product_category_product` VALUES (34, 1, 122);
INSERT INTO `ec_product_category_product` VALUES (36, 35, 134);
INSERT INTO `ec_product_category_product` VALUES (37, 35, 135);
INSERT INTO `ec_product_category_product` VALUES (38, 1, 20);
INSERT INTO `ec_product_category_product` VALUES (39, 2, 136);
INSERT INTO `ec_product_category_product` VALUES (40, 2, 152);
COMMIT;

-- ----------------------------
-- Table structure for ec_product_collection_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_collection_products`;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_collection_products
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_collection_products` VALUES (32, 1, 134);
INSERT INTO `ec_product_collection_products` VALUES (33, 2, 135);
COMMIT;

-- ----------------------------
-- Table structure for ec_product_collections
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_collections`;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_collections
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_collections` VALUES (1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2021-05-03 02:01:00', '2021-05-03 02:01:00', 0);
INSERT INTO `ec_product_collections` VALUES (2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2021-05-03 02:01:00', '2021-05-03 02:01:00', 0);
INSERT INTO `ec_product_collections` VALUES (3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2021-05-03 02:01:00', '2021-05-03 02:01:00', 0);
COMMIT;

-- ----------------------------
-- Table structure for ec_product_collections_translations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_collections_translations`;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_cross_sale_relations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_label_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_label_products`;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_label_products
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_label_products` VALUES (1, 134);
INSERT INTO `ec_product_label_products` VALUES (2, 135);
COMMIT;

-- ----------------------------
-- Table structure for ec_product_labels
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_labels`;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_labels
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_labels` VALUES (1, 'Hot', '#ec2434', 'published', '2021-05-03 02:01:00', '2021-05-03 02:01:00');
INSERT INTO `ec_product_labels` VALUES (2, 'New', '#00c9a7', 'published', '2021-05-03 02:01:00', '2021-05-03 02:01:00');
INSERT INTO `ec_product_labels` VALUES (3, 'Sale', '#fe9931', 'published', '2021-05-03 02:01:00', '2021-05-03 02:01:00');
COMMIT;

-- ----------------------------
-- Table structure for ec_product_labels_translations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_labels_translations`;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_related_relations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_related_relations`;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_sizes
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_sizes`;
CREATE TABLE `ec_product_sizes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_sizes
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_sizes` VALUES (1, '0', '0', '2021-09-10 18:54:10', '2021-09-10 18:54:10');
INSERT INTO `ec_product_sizes` VALUES (2, '1/16', '0.0625', '2021-09-10 18:54:33', '2021-09-10 18:54:33');
INSERT INTO `ec_product_sizes` VALUES (3, '1/8', '0.125', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (4, '3/16', '0.1875', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (5, '1/4', '0.25', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (6, '5/16', '0.3125', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (7, '3/8', '0.375', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (8, '7/16', '0.4375', '2021-09-10 18:59:32', '2021-09-10 18:59:32');
INSERT INTO `ec_product_sizes` VALUES (9, '1/2', '0.5', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (10, '9/16', '0.5625', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (11, '5/8', '0.625', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (12, '11/16', '0.6875', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (13, '3/4', '0.75', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (14, '13/16', '0.8125', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (15, '7/8', '0.875', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
INSERT INTO `ec_product_sizes` VALUES (16, '15/16', '0.9375', '2021-09-10 18:58:23', '2021-09-10 18:58:23');
COMMIT;

-- ----------------------------
-- Table structure for ec_product_tag_product
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_tag_product`;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_tags
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_tags`;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_up_sale_relations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_product_variation_items
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_variation_items`;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=628 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_variation_items
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_variation_items` VALUES (1, 1, 1);
INSERT INTO `ec_product_variation_items` VALUES (2, 2, 1);
INSERT INTO `ec_product_variation_items` VALUES (3, 1, 2);
INSERT INTO `ec_product_variation_items` VALUES (4, 3, 2);
INSERT INTO `ec_product_variation_items` VALUES (5, 1, 3);
INSERT INTO `ec_product_variation_items` VALUES (7, 1, 4);
INSERT INTO `ec_product_variation_items` VALUES (8, 5, 4);
INSERT INTO `ec_product_variation_items` VALUES (11, 4, 3);
INSERT INTO `ec_product_variation_items` VALUES (16, 24, 1);
INSERT INTO `ec_product_variation_items` VALUES (28, 25, 3);
INSERT INTO `ec_product_variation_items` VALUES (29, 34, 3);
INSERT INTO `ec_product_variation_items` VALUES (40, 1, 11);
INSERT INTO `ec_product_variation_items` VALUES (41, 6, 11);
INSERT INTO `ec_product_variation_items` VALUES (44, 38, 12);
INSERT INTO `ec_product_variation_items` VALUES (46, 25, 12);
INSERT INTO `ec_product_variation_items` VALUES (47, 34, 12);
INSERT INTO `ec_product_variation_items` VALUES (48, 1, 13);
INSERT INTO `ec_product_variation_items` VALUES (52, 1, 14);
INSERT INTO `ec_product_variation_items` VALUES (61, 26, 14);
INSERT INTO `ec_product_variation_items` VALUES (62, 32, 14);
INSERT INTO `ec_product_variation_items` VALUES (63, 1, 16);
INSERT INTO `ec_product_variation_items` VALUES (64, 2, 16);
INSERT INTO `ec_product_variation_items` VALUES (65, 25, 16);
INSERT INTO `ec_product_variation_items` VALUES (66, 34, 16);
INSERT INTO `ec_product_variation_items` VALUES (76, 1, 19);
INSERT INTO `ec_product_variation_items` VALUES (77, 8, 19);
INSERT INTO `ec_product_variation_items` VALUES (78, 26, 19);
INSERT INTO `ec_product_variation_items` VALUES (79, 32, 19);
INSERT INTO `ec_product_variation_items` VALUES (80, 1, 20);
INSERT INTO `ec_product_variation_items` VALUES (81, 9, 20);
INSERT INTO `ec_product_variation_items` VALUES (82, 26, 20);
INSERT INTO `ec_product_variation_items` VALUES (83, 32, 20);
INSERT INTO `ec_product_variation_items` VALUES (84, 1, 21);
INSERT INTO `ec_product_variation_items` VALUES (85, 10, 21);
INSERT INTO `ec_product_variation_items` VALUES (86, 26, 21);
INSERT INTO `ec_product_variation_items` VALUES (87, 32, 21);
INSERT INTO `ec_product_variation_items` VALUES (88, 1, 22);
INSERT INTO `ec_product_variation_items` VALUES (89, 11, 22);
INSERT INTO `ec_product_variation_items` VALUES (90, 26, 22);
INSERT INTO `ec_product_variation_items` VALUES (91, 32, 22);
INSERT INTO `ec_product_variation_items` VALUES (92, 1, 23);
INSERT INTO `ec_product_variation_items` VALUES (94, 26, 23);
INSERT INTO `ec_product_variation_items` VALUES (95, 32, 23);
INSERT INTO `ec_product_variation_items` VALUES (96, 1, 24);
INSERT INTO `ec_product_variation_items` VALUES (100, 1, 25);
INSERT INTO `ec_product_variation_items` VALUES (101, 13, 25);
INSERT INTO `ec_product_variation_items` VALUES (102, 27, 25);
INSERT INTO `ec_product_variation_items` VALUES (103, 31, 25);
INSERT INTO `ec_product_variation_items` VALUES (172, 12, 24);
INSERT INTO `ec_product_variation_items` VALUES (173, 27, 24);
INSERT INTO `ec_product_variation_items` VALUES (174, 31, 24);
INSERT INTO `ec_product_variation_items` VALUES (175, 1, 83);
INSERT INTO `ec_product_variation_items` VALUES (177, 24, 83);
INSERT INTO `ec_product_variation_items` VALUES (181, 24, 84);
INSERT INTO `ec_product_variation_items` VALUES (183, 38, 85);
INSERT INTO `ec_product_variation_items` VALUES (185, 28, 85);
INSERT INTO `ec_product_variation_items` VALUES (186, 33, 85);
INSERT INTO `ec_product_variation_items` VALUES (187, 38, 86);
INSERT INTO `ec_product_variation_items` VALUES (189, 28, 86);
INSERT INTO `ec_product_variation_items` VALUES (190, 33, 86);
INSERT INTO `ec_product_variation_items` VALUES (191, 1, 87);
INSERT INTO `ec_product_variation_items` VALUES (192, 3, 87);
INSERT INTO `ec_product_variation_items` VALUES (193, 29, 87);
INSERT INTO `ec_product_variation_items` VALUES (194, 31, 87);
INSERT INTO `ec_product_variation_items` VALUES (195, 1, 88);
INSERT INTO `ec_product_variation_items` VALUES (196, 2, 88);
INSERT INTO `ec_product_variation_items` VALUES (197, 29, 88);
INSERT INTO `ec_product_variation_items` VALUES (198, 31, 88);
INSERT INTO `ec_product_variation_items` VALUES (199, 1, 89);
INSERT INTO `ec_product_variation_items` VALUES (203, 1, 90);
INSERT INTO `ec_product_variation_items` VALUES (207, 1, 91);
INSERT INTO `ec_product_variation_items` VALUES (211, 1, 92);
INSERT INTO `ec_product_variation_items` VALUES (212, 14, 92);
INSERT INTO `ec_product_variation_items` VALUES (215, 1, 93);
INSERT INTO `ec_product_variation_items` VALUES (219, 1, 94);
INSERT INTO `ec_product_variation_items` VALUES (223, 1, 95);
INSERT INTO `ec_product_variation_items` VALUES (224, 11, 95);
INSERT INTO `ec_product_variation_items` VALUES (227, 1, 96);
INSERT INTO `ec_product_variation_items` VALUES (231, 1, 97);
INSERT INTO `ec_product_variation_items` VALUES (235, 1, 98);
INSERT INTO `ec_product_variation_items` VALUES (271, 1, 99);
INSERT INTO `ec_product_variation_items` VALUES (281, 24, 2);
INSERT INTO `ec_product_variation_items` VALUES (282, 31, 2);
INSERT INTO `ec_product_variation_items` VALUES (341, 24, 89);
INSERT INTO `ec_product_variation_items` VALUES (342, 31, 89);
INSERT INTO `ec_product_variation_items` VALUES (347, 24, 90);
INSERT INTO `ec_product_variation_items` VALUES (348, 31, 90);
INSERT INTO `ec_product_variation_items` VALUES (359, 1, 10);
INSERT INTO `ec_product_variation_items` VALUES (378, 31, 83);
INSERT INTO `ec_product_variation_items` VALUES (383, 1, 84);
INSERT INTO `ec_product_variation_items` VALUES (384, 31, 84);
INSERT INTO `ec_product_variation_items` VALUES (387, 51, 101);
INSERT INTO `ec_product_variation_items` VALUES (390, 57, 102);
INSERT INTO `ec_product_variation_items` VALUES (393, 58, 103);
INSERT INTO `ec_product_variation_items` VALUES (396, 52, 104);
INSERT INTO `ec_product_variation_items` VALUES (399, 53, 105);
INSERT INTO `ec_product_variation_items` VALUES (402, 60, 106);
INSERT INTO `ec_product_variation_items` VALUES (405, 50, 107);
INSERT INTO `ec_product_variation_items` VALUES (408, 61, 108);
INSERT INTO `ec_product_variation_items` VALUES (411, 62, 115);
INSERT INTO `ec_product_variation_items` VALUES (414, 59, 113);
INSERT INTO `ec_product_variation_items` VALUES (417, 55, 112);
INSERT INTO `ec_product_variation_items` VALUES (420, 63, 111);
INSERT INTO `ec_product_variation_items` VALUES (423, 54, 110);
INSERT INTO `ec_product_variation_items` VALUES (426, 65, 109);
INSERT INTO `ec_product_variation_items` VALUES (429, 56, 114);
INSERT INTO `ec_product_variation_items` VALUES (430, 51, 152);
INSERT INTO `ec_product_variation_items` VALUES (431, 57, 153);
INSERT INTO `ec_product_variation_items` VALUES (432, 58, 154);
INSERT INTO `ec_product_variation_items` VALUES (433, 52, 155);
INSERT INTO `ec_product_variation_items` VALUES (434, 53, 156);
INSERT INTO `ec_product_variation_items` VALUES (435, 60, 157);
INSERT INTO `ec_product_variation_items` VALUES (436, 50, 158);
INSERT INTO `ec_product_variation_items` VALUES (437, 61, 159);
INSERT INTO `ec_product_variation_items` VALUES (438, 65, 160);
INSERT INTO `ec_product_variation_items` VALUES (439, 54, 161);
INSERT INTO `ec_product_variation_items` VALUES (440, 63, 162);
INSERT INTO `ec_product_variation_items` VALUES (441, 55, 163);
INSERT INTO `ec_product_variation_items` VALUES (442, 59, 164);
INSERT INTO `ec_product_variation_items` VALUES (443, 64, 165);
INSERT INTO `ec_product_variation_items` VALUES (444, 62, 166);
INSERT INTO `ec_product_variation_items` VALUES (449, 76, 91);
INSERT INTO `ec_product_variation_items` VALUES (454, 77, 93);
INSERT INTO `ec_product_variation_items` VALUES (459, 78, 94);
INSERT INTO `ec_product_variation_items` VALUES (464, 80, 96);
INSERT INTO `ec_product_variation_items` VALUES (469, 81, 97);
INSERT INTO `ec_product_variation_items` VALUES (474, 82, 98);
INSERT INTO `ec_product_variation_items` VALUES (479, 83, 99);
INSERT INTO `ec_product_variation_items` VALUES (484, 74, 89);
INSERT INTO `ec_product_variation_items` VALUES (489, 75, 90);
INSERT INTO `ec_product_variation_items` VALUES (499, 72, 84);
INSERT INTO `ec_product_variation_items` VALUES (504, 71, 85);
INSERT INTO `ec_product_variation_items` VALUES (509, 84, 83);
INSERT INTO `ec_product_variation_items` VALUES (514, 73, 86);
INSERT INTO `ec_product_variation_items` VALUES (519, 69, 14);
INSERT INTO `ec_product_variation_items` VALUES (524, 83, 23);
INSERT INTO `ec_product_variation_items` VALUES (529, 85, 10);
INSERT INTO `ec_product_variation_items` VALUES (530, 1, 184);
INSERT INTO `ec_product_variation_items` VALUES (531, 67, 184);
INSERT INTO `ec_product_variation_items` VALUES (532, 25, 184);
INSERT INTO `ec_product_variation_items` VALUES (533, 34, 184);
INSERT INTO `ec_product_variation_items` VALUES (538, 68, 12);
INSERT INTO `ec_product_variation_items` VALUES (543, 48, 13);
INSERT INTO `ec_product_variation_items` VALUES (544, 25, 13);
INSERT INTO `ec_product_variation_items` VALUES (545, 34, 13);
INSERT INTO `ec_product_variation_items` VALUES (550, 25, 4);
INSERT INTO `ec_product_variation_items` VALUES (551, 34, 4);
INSERT INTO `ec_product_variation_items` VALUES (556, 25, 10);
INSERT INTO `ec_product_variation_items` VALUES (557, 34, 10);
INSERT INTO `ec_product_variation_items` VALUES (562, 25, 11);
INSERT INTO `ec_product_variation_items` VALUES (563, 34, 11);
INSERT INTO `ec_product_variation_items` VALUES (568, 25, 91);
INSERT INTO `ec_product_variation_items` VALUES (569, 35, 91);
INSERT INTO `ec_product_variation_items` VALUES (574, 25, 92);
INSERT INTO `ec_product_variation_items` VALUES (580, 35, 92);
INSERT INTO `ec_product_variation_items` VALUES (585, 25, 93);
INSERT INTO `ec_product_variation_items` VALUES (586, 35, 93);
INSERT INTO `ec_product_variation_items` VALUES (591, 25, 94);
INSERT INTO `ec_product_variation_items` VALUES (592, 35, 94);
INSERT INTO `ec_product_variation_items` VALUES (597, 25, 95);
INSERT INTO `ec_product_variation_items` VALUES (598, 35, 95);
INSERT INTO `ec_product_variation_items` VALUES (603, 25, 96);
INSERT INTO `ec_product_variation_items` VALUES (604, 35, 96);
INSERT INTO `ec_product_variation_items` VALUES (609, 25, 97);
INSERT INTO `ec_product_variation_items` VALUES (610, 35, 97);
INSERT INTO `ec_product_variation_items` VALUES (615, 25, 98);
INSERT INTO `ec_product_variation_items` VALUES (616, 35, 98);
INSERT INTO `ec_product_variation_items` VALUES (621, 25, 99);
INSERT INTO `ec_product_variation_items` VALUES (622, 35, 99);
INSERT INTO `ec_product_variation_items` VALUES (627, 36, 1);
COMMIT;

-- ----------------------------
-- Table structure for ec_product_variations
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_variations`;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_variations
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_variations` VALUES (1, 2, 1, 1);
INSERT INTO `ec_product_variations` VALUES (2, 3, 1, 0);
INSERT INTO `ec_product_variations` VALUES (3, 5, 4, 1);
INSERT INTO `ec_product_variations` VALUES (4, 6, 4, 0);
INSERT INTO `ec_product_variations` VALUES (10, 7, 4, 0);
INSERT INTO `ec_product_variations` VALUES (11, 8, 4, 0);
INSERT INTO `ec_product_variations` VALUES (12, 9, 4, 0);
INSERT INTO `ec_product_variations` VALUES (13, 10, 4, 0);
INSERT INTO `ec_product_variations` VALUES (14, 12, 11, 1);
INSERT INTO `ec_product_variations` VALUES (16, 13, 1, 0);
INSERT INTO `ec_product_variations` VALUES (19, 15, 11, 0);
INSERT INTO `ec_product_variations` VALUES (20, 16, 11, 0);
INSERT INTO `ec_product_variations` VALUES (21, 17, 11, 0);
INSERT INTO `ec_product_variations` VALUES (22, 18, 11, 0);
INSERT INTO `ec_product_variations` VALUES (23, 19, 11, 0);
INSERT INTO `ec_product_variations` VALUES (24, 21, 20, 1);
INSERT INTO `ec_product_variations` VALUES (25, 22, 20, 0);
INSERT INTO `ec_product_variations` VALUES (83, 113, 112, 1);
INSERT INTO `ec_product_variations` VALUES (84, 114, 112, 0);
INSERT INTO `ec_product_variations` VALUES (85, 115, 112, 0);
INSERT INTO `ec_product_variations` VALUES (86, 116, 112, 0);
INSERT INTO `ec_product_variations` VALUES (87, 117, 1, 0);
INSERT INTO `ec_product_variations` VALUES (88, 118, 1, 0);
INSERT INTO `ec_product_variations` VALUES (89, 120, 119, 1);
INSERT INTO `ec_product_variations` VALUES (90, 121, 119, 0);
INSERT INTO `ec_product_variations` VALUES (91, 123, 122, 1);
INSERT INTO `ec_product_variations` VALUES (92, 124, 122, 0);
INSERT INTO `ec_product_variations` VALUES (93, 125, 122, 0);
INSERT INTO `ec_product_variations` VALUES (94, 126, 122, 0);
INSERT INTO `ec_product_variations` VALUES (95, 127, 122, 0);
INSERT INTO `ec_product_variations` VALUES (96, 128, 122, 0);
INSERT INTO `ec_product_variations` VALUES (97, 129, 122, 0);
INSERT INTO `ec_product_variations` VALUES (98, 130, 122, 0);
INSERT INTO `ec_product_variations` VALUES (99, 131, 122, 0);
INSERT INTO `ec_product_variations` VALUES (101, 137, 136, 1);
INSERT INTO `ec_product_variations` VALUES (102, 138, 136, 0);
INSERT INTO `ec_product_variations` VALUES (103, 139, 136, 0);
INSERT INTO `ec_product_variations` VALUES (104, 140, 136, 0);
INSERT INTO `ec_product_variations` VALUES (105, 141, 136, 0);
INSERT INTO `ec_product_variations` VALUES (106, 142, 136, 0);
INSERT INTO `ec_product_variations` VALUES (107, 143, 136, 0);
INSERT INTO `ec_product_variations` VALUES (108, 144, 136, 0);
INSERT INTO `ec_product_variations` VALUES (109, 145, 136, 0);
INSERT INTO `ec_product_variations` VALUES (110, 146, 136, 0);
INSERT INTO `ec_product_variations` VALUES (111, 147, 136, 0);
INSERT INTO `ec_product_variations` VALUES (112, 148, 136, 0);
INSERT INTO `ec_product_variations` VALUES (113, 149, 136, 0);
INSERT INTO `ec_product_variations` VALUES (114, 150, 136, 0);
INSERT INTO `ec_product_variations` VALUES (115, 151, 136, 0);
INSERT INTO `ec_product_variations` VALUES (152, 153, 152, 1);
INSERT INTO `ec_product_variations` VALUES (153, 154, 152, 0);
INSERT INTO `ec_product_variations` VALUES (154, 155, 152, 0);
INSERT INTO `ec_product_variations` VALUES (155, 156, 152, 0);
INSERT INTO `ec_product_variations` VALUES (156, 157, 152, 0);
INSERT INTO `ec_product_variations` VALUES (157, 158, 152, 0);
INSERT INTO `ec_product_variations` VALUES (158, 159, 152, 0);
INSERT INTO `ec_product_variations` VALUES (159, 160, 152, 0);
INSERT INTO `ec_product_variations` VALUES (160, 161, 152, 0);
INSERT INTO `ec_product_variations` VALUES (161, 162, 152, 0);
INSERT INTO `ec_product_variations` VALUES (162, 163, 152, 0);
INSERT INTO `ec_product_variations` VALUES (163, 164, 152, 0);
INSERT INTO `ec_product_variations` VALUES (164, 165, 152, 0);
INSERT INTO `ec_product_variations` VALUES (165, 166, 152, 0);
INSERT INTO `ec_product_variations` VALUES (166, 167, 152, 0);
INSERT INTO `ec_product_variations` VALUES (184, 168, 4, 0);
COMMIT;

-- ----------------------------
-- Table structure for ec_product_with_attribute
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_with_attribute`;
CREATE TABLE `ec_product_with_attribute` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_with_attribute
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_with_attribute` VALUES (1, 1, 1);
INSERT INTO `ec_product_with_attribute` VALUES (2, 2, 1);
INSERT INTO `ec_product_with_attribute` VALUES (3, 3, 1);
INSERT INTO `ec_product_with_attribute` VALUES (4, 4, 1);
INSERT INTO `ec_product_with_attribute` VALUES (5, 5, 1);
INSERT INTO `ec_product_with_attribute` VALUES (6, 6, 1);
INSERT INTO `ec_product_with_attribute` VALUES (7, 7, 1);
INSERT INTO `ec_product_with_attribute` VALUES (8, 8, 1);
INSERT INTO `ec_product_with_attribute` VALUES (9, 9, 1);
INSERT INTO `ec_product_with_attribute` VALUES (10, 10, 1);
INSERT INTO `ec_product_with_attribute` VALUES (11, 11, 1);
INSERT INTO `ec_product_with_attribute` VALUES (12, 12, 1);
INSERT INTO `ec_product_with_attribute` VALUES (13, 13, 1);
INSERT INTO `ec_product_with_attribute` VALUES (14, 14, 1);
INSERT INTO `ec_product_with_attribute` VALUES (15, 15, 1);
INSERT INTO `ec_product_with_attribute` VALUES (16, 16, 1);
INSERT INTO `ec_product_with_attribute` VALUES (17, 17, 1);
INSERT INTO `ec_product_with_attribute` VALUES (18, 18, 1);
INSERT INTO `ec_product_with_attribute` VALUES (19, 19, 1);
INSERT INTO `ec_product_with_attribute` VALUES (20, 20, 1);
INSERT INTO `ec_product_with_attribute` VALUES (21, 21, 1);
INSERT INTO `ec_product_with_attribute` VALUES (22, 22, 1);
INSERT INTO `ec_product_with_attribute` VALUES (23, 23, 1);
INSERT INTO `ec_product_with_attribute` VALUES (24, 1, 4);
INSERT INTO `ec_product_with_attribute` VALUES (25, 2, 4);
INSERT INTO `ec_product_with_attribute` VALUES (26, 3, 4);
INSERT INTO `ec_product_with_attribute` VALUES (27, 4, 4);
INSERT INTO `ec_product_with_attribute` VALUES (28, 5, 4);
INSERT INTO `ec_product_with_attribute` VALUES (29, 6, 4);
INSERT INTO `ec_product_with_attribute` VALUES (30, 7, 4);
INSERT INTO `ec_product_with_attribute` VALUES (31, 8, 4);
INSERT INTO `ec_product_with_attribute` VALUES (32, 9, 4);
INSERT INTO `ec_product_with_attribute` VALUES (33, 10, 4);
INSERT INTO `ec_product_with_attribute` VALUES (34, 11, 4);
INSERT INTO `ec_product_with_attribute` VALUES (35, 12, 4);
INSERT INTO `ec_product_with_attribute` VALUES (36, 13, 4);
INSERT INTO `ec_product_with_attribute` VALUES (37, 14, 4);
INSERT INTO `ec_product_with_attribute` VALUES (38, 15, 4);
INSERT INTO `ec_product_with_attribute` VALUES (39, 16, 4);
INSERT INTO `ec_product_with_attribute` VALUES (40, 17, 4);
INSERT INTO `ec_product_with_attribute` VALUES (41, 18, 4);
INSERT INTO `ec_product_with_attribute` VALUES (42, 19, 4);
INSERT INTO `ec_product_with_attribute` VALUES (43, 20, 4);
INSERT INTO `ec_product_with_attribute` VALUES (44, 21, 4);
INSERT INTO `ec_product_with_attribute` VALUES (45, 22, 4);
INSERT INTO `ec_product_with_attribute` VALUES (46, 23, 4);
INSERT INTO `ec_product_with_attribute` VALUES (47, 24, 1);
INSERT INTO `ec_product_with_attribute` VALUES (48, 25, 1);
INSERT INTO `ec_product_with_attribute` VALUES (49, 26, 1);
INSERT INTO `ec_product_with_attribute` VALUES (50, 27, 1);
INSERT INTO `ec_product_with_attribute` VALUES (51, 28, 1);
INSERT INTO `ec_product_with_attribute` VALUES (52, 29, 1);
INSERT INTO `ec_product_with_attribute` VALUES (53, 30, 1);
INSERT INTO `ec_product_with_attribute` VALUES (54, 31, 1);
INSERT INTO `ec_product_with_attribute` VALUES (55, 32, 1);
INSERT INTO `ec_product_with_attribute` VALUES (56, 33, 1);
INSERT INTO `ec_product_with_attribute` VALUES (57, 34, 1);
INSERT INTO `ec_product_with_attribute` VALUES (58, 35, 1);
INSERT INTO `ec_product_with_attribute` VALUES (59, 36, 1);
INSERT INTO `ec_product_with_attribute` VALUES (60, 37, 1);
INSERT INTO `ec_product_with_attribute` VALUES (61, 24, 4);
INSERT INTO `ec_product_with_attribute` VALUES (62, 25, 4);
INSERT INTO `ec_product_with_attribute` VALUES (63, 26, 4);
INSERT INTO `ec_product_with_attribute` VALUES (64, 27, 4);
INSERT INTO `ec_product_with_attribute` VALUES (65, 28, 4);
INSERT INTO `ec_product_with_attribute` VALUES (66, 29, 4);
INSERT INTO `ec_product_with_attribute` VALUES (67, 30, 4);
INSERT INTO `ec_product_with_attribute` VALUES (68, 31, 4);
INSERT INTO `ec_product_with_attribute` VALUES (69, 32, 4);
INSERT INTO `ec_product_with_attribute` VALUES (70, 33, 4);
INSERT INTO `ec_product_with_attribute` VALUES (71, 34, 4);
INSERT INTO `ec_product_with_attribute` VALUES (72, 35, 4);
INSERT INTO `ec_product_with_attribute` VALUES (73, 36, 4);
INSERT INTO `ec_product_with_attribute` VALUES (74, 37, 4);
INSERT INTO `ec_product_with_attribute` VALUES (75, 1, 11);
INSERT INTO `ec_product_with_attribute` VALUES (76, 2, 11);
INSERT INTO `ec_product_with_attribute` VALUES (77, 3, 11);
INSERT INTO `ec_product_with_attribute` VALUES (78, 4, 11);
INSERT INTO `ec_product_with_attribute` VALUES (79, 5, 11);
INSERT INTO `ec_product_with_attribute` VALUES (80, 6, 11);
INSERT INTO `ec_product_with_attribute` VALUES (81, 7, 11);
INSERT INTO `ec_product_with_attribute` VALUES (82, 8, 11);
INSERT INTO `ec_product_with_attribute` VALUES (83, 9, 11);
INSERT INTO `ec_product_with_attribute` VALUES (84, 10, 11);
INSERT INTO `ec_product_with_attribute` VALUES (85, 11, 11);
INSERT INTO `ec_product_with_attribute` VALUES (86, 12, 11);
INSERT INTO `ec_product_with_attribute` VALUES (87, 13, 11);
INSERT INTO `ec_product_with_attribute` VALUES (88, 14, 11);
INSERT INTO `ec_product_with_attribute` VALUES (89, 15, 11);
INSERT INTO `ec_product_with_attribute` VALUES (90, 16, 11);
INSERT INTO `ec_product_with_attribute` VALUES (91, 17, 11);
INSERT INTO `ec_product_with_attribute` VALUES (92, 18, 11);
INSERT INTO `ec_product_with_attribute` VALUES (93, 19, 11);
INSERT INTO `ec_product_with_attribute` VALUES (94, 20, 11);
INSERT INTO `ec_product_with_attribute` VALUES (95, 21, 11);
INSERT INTO `ec_product_with_attribute` VALUES (96, 22, 11);
INSERT INTO `ec_product_with_attribute` VALUES (97, 23, 11);
INSERT INTO `ec_product_with_attribute` VALUES (98, 24, 11);
INSERT INTO `ec_product_with_attribute` VALUES (99, 25, 11);
INSERT INTO `ec_product_with_attribute` VALUES (100, 26, 11);
INSERT INTO `ec_product_with_attribute` VALUES (101, 27, 11);
INSERT INTO `ec_product_with_attribute` VALUES (102, 28, 11);
INSERT INTO `ec_product_with_attribute` VALUES (103, 29, 11);
INSERT INTO `ec_product_with_attribute` VALUES (104, 30, 11);
INSERT INTO `ec_product_with_attribute` VALUES (105, 31, 11);
INSERT INTO `ec_product_with_attribute` VALUES (106, 32, 11);
INSERT INTO `ec_product_with_attribute` VALUES (107, 33, 11);
INSERT INTO `ec_product_with_attribute` VALUES (108, 34, 11);
INSERT INTO `ec_product_with_attribute` VALUES (109, 35, 11);
INSERT INTO `ec_product_with_attribute` VALUES (110, 36, 11);
INSERT INTO `ec_product_with_attribute` VALUES (111, 37, 11);
INSERT INTO `ec_product_with_attribute` VALUES (112, 38, 11);
INSERT INTO `ec_product_with_attribute` VALUES (113, 1, 20);
INSERT INTO `ec_product_with_attribute` VALUES (114, 2, 20);
INSERT INTO `ec_product_with_attribute` VALUES (115, 3, 20);
INSERT INTO `ec_product_with_attribute` VALUES (116, 4, 20);
INSERT INTO `ec_product_with_attribute` VALUES (117, 5, 20);
INSERT INTO `ec_product_with_attribute` VALUES (118, 6, 20);
INSERT INTO `ec_product_with_attribute` VALUES (119, 7, 20);
INSERT INTO `ec_product_with_attribute` VALUES (120, 8, 20);
INSERT INTO `ec_product_with_attribute` VALUES (121, 9, 20);
INSERT INTO `ec_product_with_attribute` VALUES (122, 10, 20);
INSERT INTO `ec_product_with_attribute` VALUES (123, 11, 20);
INSERT INTO `ec_product_with_attribute` VALUES (124, 12, 20);
INSERT INTO `ec_product_with_attribute` VALUES (125, 13, 20);
INSERT INTO `ec_product_with_attribute` VALUES (126, 14, 20);
INSERT INTO `ec_product_with_attribute` VALUES (127, 15, 20);
INSERT INTO `ec_product_with_attribute` VALUES (128, 16, 20);
INSERT INTO `ec_product_with_attribute` VALUES (129, 17, 20);
INSERT INTO `ec_product_with_attribute` VALUES (130, 18, 20);
INSERT INTO `ec_product_with_attribute` VALUES (131, 19, 20);
INSERT INTO `ec_product_with_attribute` VALUES (132, 20, 20);
INSERT INTO `ec_product_with_attribute` VALUES (133, 21, 20);
INSERT INTO `ec_product_with_attribute` VALUES (134, 22, 20);
INSERT INTO `ec_product_with_attribute` VALUES (135, 23, 20);
INSERT INTO `ec_product_with_attribute` VALUES (136, 24, 20);
INSERT INTO `ec_product_with_attribute` VALUES (137, 25, 20);
INSERT INTO `ec_product_with_attribute` VALUES (138, 26, 20);
INSERT INTO `ec_product_with_attribute` VALUES (139, 27, 20);
INSERT INTO `ec_product_with_attribute` VALUES (140, 28, 20);
INSERT INTO `ec_product_with_attribute` VALUES (141, 29, 20);
INSERT INTO `ec_product_with_attribute` VALUES (142, 30, 20);
INSERT INTO `ec_product_with_attribute` VALUES (143, 31, 20);
INSERT INTO `ec_product_with_attribute` VALUES (144, 32, 20);
INSERT INTO `ec_product_with_attribute` VALUES (145, 33, 20);
INSERT INTO `ec_product_with_attribute` VALUES (146, 34, 20);
INSERT INTO `ec_product_with_attribute` VALUES (147, 35, 20);
INSERT INTO `ec_product_with_attribute` VALUES (148, 36, 20);
INSERT INTO `ec_product_with_attribute` VALUES (149, 37, 20);
INSERT INTO `ec_product_with_attribute` VALUES (150, 38, 20);
INSERT INTO `ec_product_with_attribute` VALUES (151, 39, 20);
INSERT INTO `ec_product_with_attribute` VALUES (152, 1, 112);
INSERT INTO `ec_product_with_attribute` VALUES (153, 2, 112);
INSERT INTO `ec_product_with_attribute` VALUES (154, 3, 112);
INSERT INTO `ec_product_with_attribute` VALUES (155, 4, 112);
INSERT INTO `ec_product_with_attribute` VALUES (156, 5, 112);
INSERT INTO `ec_product_with_attribute` VALUES (157, 6, 112);
INSERT INTO `ec_product_with_attribute` VALUES (158, 7, 112);
INSERT INTO `ec_product_with_attribute` VALUES (159, 8, 112);
INSERT INTO `ec_product_with_attribute` VALUES (160, 9, 112);
INSERT INTO `ec_product_with_attribute` VALUES (161, 10, 112);
INSERT INTO `ec_product_with_attribute` VALUES (162, 11, 112);
INSERT INTO `ec_product_with_attribute` VALUES (163, 12, 112);
INSERT INTO `ec_product_with_attribute` VALUES (164, 13, 112);
INSERT INTO `ec_product_with_attribute` VALUES (165, 14, 112);
INSERT INTO `ec_product_with_attribute` VALUES (166, 15, 112);
INSERT INTO `ec_product_with_attribute` VALUES (167, 16, 112);
INSERT INTO `ec_product_with_attribute` VALUES (168, 17, 112);
INSERT INTO `ec_product_with_attribute` VALUES (169, 18, 112);
INSERT INTO `ec_product_with_attribute` VALUES (170, 19, 112);
INSERT INTO `ec_product_with_attribute` VALUES (171, 20, 112);
INSERT INTO `ec_product_with_attribute` VALUES (172, 21, 112);
INSERT INTO `ec_product_with_attribute` VALUES (173, 22, 112);
INSERT INTO `ec_product_with_attribute` VALUES (174, 23, 112);
INSERT INTO `ec_product_with_attribute` VALUES (175, 24, 112);
INSERT INTO `ec_product_with_attribute` VALUES (176, 25, 112);
INSERT INTO `ec_product_with_attribute` VALUES (177, 26, 112);
INSERT INTO `ec_product_with_attribute` VALUES (178, 27, 112);
INSERT INTO `ec_product_with_attribute` VALUES (179, 28, 112);
INSERT INTO `ec_product_with_attribute` VALUES (180, 29, 112);
INSERT INTO `ec_product_with_attribute` VALUES (181, 30, 112);
INSERT INTO `ec_product_with_attribute` VALUES (182, 31, 112);
INSERT INTO `ec_product_with_attribute` VALUES (183, 32, 112);
INSERT INTO `ec_product_with_attribute` VALUES (184, 33, 112);
INSERT INTO `ec_product_with_attribute` VALUES (185, 34, 112);
INSERT INTO `ec_product_with_attribute` VALUES (186, 35, 112);
INSERT INTO `ec_product_with_attribute` VALUES (187, 36, 112);
INSERT INTO `ec_product_with_attribute` VALUES (188, 37, 112);
INSERT INTO `ec_product_with_attribute` VALUES (189, 38, 112);
INSERT INTO `ec_product_with_attribute` VALUES (190, 39, 112);
INSERT INTO `ec_product_with_attribute` VALUES (191, 1, 119);
INSERT INTO `ec_product_with_attribute` VALUES (192, 2, 119);
INSERT INTO `ec_product_with_attribute` VALUES (193, 3, 119);
INSERT INTO `ec_product_with_attribute` VALUES (194, 4, 119);
INSERT INTO `ec_product_with_attribute` VALUES (195, 5, 119);
INSERT INTO `ec_product_with_attribute` VALUES (196, 6, 119);
INSERT INTO `ec_product_with_attribute` VALUES (197, 7, 119);
INSERT INTO `ec_product_with_attribute` VALUES (198, 8, 119);
INSERT INTO `ec_product_with_attribute` VALUES (199, 9, 119);
INSERT INTO `ec_product_with_attribute` VALUES (200, 10, 119);
INSERT INTO `ec_product_with_attribute` VALUES (201, 11, 119);
INSERT INTO `ec_product_with_attribute` VALUES (202, 12, 119);
INSERT INTO `ec_product_with_attribute` VALUES (203, 13, 119);
INSERT INTO `ec_product_with_attribute` VALUES (204, 14, 119);
INSERT INTO `ec_product_with_attribute` VALUES (205, 15, 119);
INSERT INTO `ec_product_with_attribute` VALUES (206, 16, 119);
INSERT INTO `ec_product_with_attribute` VALUES (207, 17, 119);
INSERT INTO `ec_product_with_attribute` VALUES (208, 18, 119);
INSERT INTO `ec_product_with_attribute` VALUES (209, 19, 119);
INSERT INTO `ec_product_with_attribute` VALUES (210, 20, 119);
INSERT INTO `ec_product_with_attribute` VALUES (211, 21, 119);
INSERT INTO `ec_product_with_attribute` VALUES (212, 22, 119);
INSERT INTO `ec_product_with_attribute` VALUES (213, 23, 119);
INSERT INTO `ec_product_with_attribute` VALUES (214, 24, 119);
INSERT INTO `ec_product_with_attribute` VALUES (215, 25, 119);
INSERT INTO `ec_product_with_attribute` VALUES (216, 26, 119);
INSERT INTO `ec_product_with_attribute` VALUES (217, 27, 119);
INSERT INTO `ec_product_with_attribute` VALUES (218, 28, 119);
INSERT INTO `ec_product_with_attribute` VALUES (219, 29, 119);
INSERT INTO `ec_product_with_attribute` VALUES (220, 30, 119);
INSERT INTO `ec_product_with_attribute` VALUES (221, 31, 119);
INSERT INTO `ec_product_with_attribute` VALUES (222, 32, 119);
INSERT INTO `ec_product_with_attribute` VALUES (223, 33, 119);
INSERT INTO `ec_product_with_attribute` VALUES (224, 34, 119);
INSERT INTO `ec_product_with_attribute` VALUES (225, 35, 119);
INSERT INTO `ec_product_with_attribute` VALUES (226, 36, 119);
INSERT INTO `ec_product_with_attribute` VALUES (227, 37, 119);
INSERT INTO `ec_product_with_attribute` VALUES (228, 38, 119);
INSERT INTO `ec_product_with_attribute` VALUES (229, 39, 119);
INSERT INTO `ec_product_with_attribute` VALUES (230, 1, 122);
INSERT INTO `ec_product_with_attribute` VALUES (231, 2, 122);
INSERT INTO `ec_product_with_attribute` VALUES (232, 3, 122);
INSERT INTO `ec_product_with_attribute` VALUES (233, 4, 122);
INSERT INTO `ec_product_with_attribute` VALUES (234, 5, 122);
INSERT INTO `ec_product_with_attribute` VALUES (235, 6, 122);
INSERT INTO `ec_product_with_attribute` VALUES (236, 7, 122);
INSERT INTO `ec_product_with_attribute` VALUES (237, 8, 122);
INSERT INTO `ec_product_with_attribute` VALUES (238, 9, 122);
INSERT INTO `ec_product_with_attribute` VALUES (239, 10, 122);
INSERT INTO `ec_product_with_attribute` VALUES (240, 11, 122);
INSERT INTO `ec_product_with_attribute` VALUES (241, 12, 122);
INSERT INTO `ec_product_with_attribute` VALUES (242, 13, 122);
INSERT INTO `ec_product_with_attribute` VALUES (243, 14, 122);
INSERT INTO `ec_product_with_attribute` VALUES (244, 15, 122);
INSERT INTO `ec_product_with_attribute` VALUES (245, 16, 122);
INSERT INTO `ec_product_with_attribute` VALUES (246, 17, 122);
INSERT INTO `ec_product_with_attribute` VALUES (247, 18, 122);
INSERT INTO `ec_product_with_attribute` VALUES (248, 19, 122);
INSERT INTO `ec_product_with_attribute` VALUES (249, 20, 122);
INSERT INTO `ec_product_with_attribute` VALUES (250, 21, 122);
INSERT INTO `ec_product_with_attribute` VALUES (251, 22, 122);
INSERT INTO `ec_product_with_attribute` VALUES (252, 23, 122);
INSERT INTO `ec_product_with_attribute` VALUES (253, 24, 122);
INSERT INTO `ec_product_with_attribute` VALUES (254, 25, 122);
INSERT INTO `ec_product_with_attribute` VALUES (255, 26, 122);
INSERT INTO `ec_product_with_attribute` VALUES (256, 27, 122);
INSERT INTO `ec_product_with_attribute` VALUES (257, 28, 122);
INSERT INTO `ec_product_with_attribute` VALUES (258, 29, 122);
INSERT INTO `ec_product_with_attribute` VALUES (259, 30, 122);
INSERT INTO `ec_product_with_attribute` VALUES (260, 31, 122);
INSERT INTO `ec_product_with_attribute` VALUES (261, 32, 122);
INSERT INTO `ec_product_with_attribute` VALUES (262, 33, 122);
INSERT INTO `ec_product_with_attribute` VALUES (263, 34, 122);
INSERT INTO `ec_product_with_attribute` VALUES (264, 35, 122);
INSERT INTO `ec_product_with_attribute` VALUES (265, 36, 122);
INSERT INTO `ec_product_with_attribute` VALUES (266, 37, 122);
INSERT INTO `ec_product_with_attribute` VALUES (267, 38, 122);
INSERT INTO `ec_product_with_attribute` VALUES (268, 39, 122);
INSERT INTO `ec_product_with_attribute` VALUES (339, 50, 136);
INSERT INTO `ec_product_with_attribute` VALUES (340, 51, 136);
INSERT INTO `ec_product_with_attribute` VALUES (341, 52, 136);
INSERT INTO `ec_product_with_attribute` VALUES (342, 53, 136);
INSERT INTO `ec_product_with_attribute` VALUES (343, 54, 136);
INSERT INTO `ec_product_with_attribute` VALUES (344, 55, 136);
INSERT INTO `ec_product_with_attribute` VALUES (345, 56, 136);
INSERT INTO `ec_product_with_attribute` VALUES (346, 57, 136);
INSERT INTO `ec_product_with_attribute` VALUES (347, 58, 136);
INSERT INTO `ec_product_with_attribute` VALUES (348, 59, 136);
INSERT INTO `ec_product_with_attribute` VALUES (349, 60, 136);
INSERT INTO `ec_product_with_attribute` VALUES (350, 61, 136);
INSERT INTO `ec_product_with_attribute` VALUES (351, 62, 136);
INSERT INTO `ec_product_with_attribute` VALUES (352, 63, 136);
INSERT INTO `ec_product_with_attribute` VALUES (353, 64, 136);
INSERT INTO `ec_product_with_attribute` VALUES (354, 65, 136);
INSERT INTO `ec_product_with_attribute` VALUES (384, 50, 152);
INSERT INTO `ec_product_with_attribute` VALUES (385, 51, 152);
INSERT INTO `ec_product_with_attribute` VALUES (386, 52, 152);
INSERT INTO `ec_product_with_attribute` VALUES (387, 53, 152);
INSERT INTO `ec_product_with_attribute` VALUES (388, 54, 152);
INSERT INTO `ec_product_with_attribute` VALUES (389, 55, 152);
INSERT INTO `ec_product_with_attribute` VALUES (390, 56, 152);
INSERT INTO `ec_product_with_attribute` VALUES (391, 57, 152);
INSERT INTO `ec_product_with_attribute` VALUES (392, 58, 152);
INSERT INTO `ec_product_with_attribute` VALUES (393, 59, 152);
INSERT INTO `ec_product_with_attribute` VALUES (394, 60, 152);
INSERT INTO `ec_product_with_attribute` VALUES (395, 61, 152);
INSERT INTO `ec_product_with_attribute` VALUES (396, 62, 152);
INSERT INTO `ec_product_with_attribute` VALUES (397, 63, 152);
INSERT INTO `ec_product_with_attribute` VALUES (398, 64, 152);
INSERT INTO `ec_product_with_attribute` VALUES (399, 65, 152);
COMMIT;

-- ----------------------------
-- Table structure for ec_product_with_attribute_set
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_product_with_attribute_set
-- ----------------------------
BEGIN;
INSERT INTO `ec_product_with_attribute_set` VALUES (1, 1, 1, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (2, 2, 1, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (3, 1, 4, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (4, 2, 4, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (5, 3, 1, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (6, 4, 1, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (7, 3, 4, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (8, 4, 4, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (9, 1, 11, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (10, 2, 11, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (11, 3, 11, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (12, 4, 11, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (13, 1, 20, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (14, 2, 20, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (15, 3, 20, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (16, 4, 20, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (63, 1, 112, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (64, 2, 112, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (65, 3, 112, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (66, 4, 112, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (67, 1, 119, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (68, 2, 119, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (69, 3, 119, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (70, 4, 119, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (71, 1, 122, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (72, 2, 122, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (73, 3, 122, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (74, 4, 122, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (80, 5, 136, 0);
INSERT INTO `ec_product_with_attribute_set` VALUES (82, 5, 152, 0);
COMMIT;

-- ----------------------------
-- Table structure for ec_products
-- ----------------------------
DROP TABLE IF EXISTS `ec_products`;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('regular','framebuilder') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_products
-- ----------------------------
BEGIN;
INSERT INTO `ec_products` VALUES (1, 'framebuilder', 'MATTE', NULL, NULL, 'published', '[\"products\\/matte\\/pfs1060.jpg\"]', 'PFS1060', 0, 0, 0, 0, 0, 0, 0, 0, 16.18, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 21:23:00', '2022-03-11 02:07:25', 0, 2, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (2, 'regular', 'MATTE', NULL, NULL, 'published', '[null,\"products\\/matte\\/pfs1060.jpg\"]', 'PFS1060', 0, 0, 0, 0, 0, 0, 1, 0, 16.18, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 21:23:01', '2022-03-11 02:07:25', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (3, 'regular', 'MATTE', NULL, NULL, 'published', '[null,\"products\\/matte\\/pfs1101.jpg\"]', 'PFS1101', 0, 0, 0, 0, 0, 0, 1, 0, 12.38, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 21:24:03', '2022-03-10 19:13:27', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (4, 'framebuilder', 'BRIO', NULL, NULL, 'published', '[\"products\\/brio\\/pfs1201.jpg\"]', 'PFS1210', 0, 0, 0, 0, 0, 0, 0, 0, 15.88, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 21:46:22', '2022-03-11 02:03:27', 0, 1, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (5, 'regular', 'BRIO', NULL, NULL, 'published', '[null,\"products\\/brio\\/pfs1201.jpg\"]', 'PFS1210', 0, 0, 0, 0, 0, 0, 1, 0, 15.88, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 21:46:22', '2022-03-11 02:03:27', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (6, 'regular', 'BRIO', NULL, NULL, 'published', '[null,\"products\\/brio\\/pfs1330.jpg\"]', 'PFS1330', 0, 0, 0, 0, 0, 0, 1, 0, 15.88, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 21:47:07', '2022-03-11 02:03:27', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (7, 'regular', 'BRIO', NULL, NULL, 'published', '[null,\"products\\/brio\\/pfs1410.jpg\"]', 'PFS1410', 0, 0, 0, 0, 0, 0, 1, 0, 15.88, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:16:27', '2022-03-11 02:03:27', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (8, 'regular', 'BRIO', NULL, NULL, 'published', '[null,\"products\\/brio\\/pfs1540.jpg\"]', 'PFS1540', 0, 0, 0, 0, 0, 0, 1, 0, 15.88, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:17:11', '2022-03-11 02:03:27', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (9, 'regular', 'BRIO', NULL, NULL, 'published', '[null,\"products\\/brio\\/pfs1640.jpg\"]', 'PFS1640', 0, 0, 0, 0, 0, 0, 1, 0, 15.88, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:17:46', '2022-03-11 02:03:27', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (10, 'regular', 'BRIO', NULL, NULL, 'published', '[null,\"products\\/brio\\/pfs1840.jpg\"]', 'PFS1840', 0, 0, 0, 0, 0, 0, 1, 0, 15.88, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:19:07', '2022-03-11 02:03:27', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (11, 'framebuilder', 'KODA', NULL, NULL, 'published', '[\"products\\/koda\\/pfs2002.jpg\"]', 'PFS2002', 0, 0, 0, 0, 0, 0, 0, 0, 15.85, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:21:26', '2022-03-11 01:52:18', 0, 1, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (12, 'regular', 'KODA', NULL, NULL, 'published', '[null,\"products\\/koda\\/pfs2002.jpg\"]', 'PFS2002', 0, 0, 0, 0, 0, 0, 1, 0, 15.85, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:21:26', '2022-03-11 01:52:18', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (13, 'regular', 'MATTE', NULL, NULL, 'published', '[null,\"products\\/matte\\/pfs1760.jpg\"]', 'PFS1760', 0, 0, 0, 0, 0, 0, 1, 0, 12.38, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:31:58', '2022-03-10 19:13:27', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (15, 'regular', 'KODA', NULL, NULL, 'published', '[null,\"products\\/koda\\/pfs2104.jpg\"]', 'PFS2104', 0, 0, 0, 0, 0, 0, 1, 0, 14.85, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:43:27', '2022-03-11 01:52:18', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (16, 'regular', 'KODA', NULL, NULL, 'published', '[null,\"products\\/koda\\/pfs2250.jpg\"]', 'PFS2250', 0, 0, 0, 0, 0, 0, 1, 0, 14.85, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:44:16', '2022-03-11 01:52:18', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (17, 'regular', 'KODA', NULL, NULL, 'published', '[null,\"products\\/koda\\/pfs2380.jpg\"]', 'PFS2380', 0, 0, 0, 0, 0, 0, 1, 0, 14.85, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:45:05', '2022-03-11 01:52:18', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (18, 'regular', 'KODA', NULL, NULL, 'published', '[null,\"products\\/koda\\/pfs2490.jpg\"]', 'PFS2490', 0, 0, 0, 0, 0, 0, 1, 0, 14.85, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:47:02', '2022-03-11 01:52:18', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (19, 'regular', 'KODA', NULL, NULL, 'published', '[null,\"products\\/koda\\/pfs2501.jpg\"]', 'PFS2501', 0, 0, 0, 0, 0, 0, 1, 0, 14.85, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:47:45', '2022-03-11 01:52:18', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (20, 'framebuilder', 'DIPOLMA', NULL, NULL, 'published', '[\"products\\/dipolma\\/pfs2606.jpg\"]', 'PFS2606', 0, 0, 0, 0, 0, 0, 0, 0, 21.3, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:49:39', '2022-03-10 13:05:23', 0, 2, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (21, 'regular', 'DIPOLMA', NULL, NULL, 'published', '[null,\"products\\/dipolma\\/pfs2606.jpg\"]', 'PFS2606', 0, 0, 0, 0, 0, 0, 1, 0, 21.3, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:49:39', '2022-03-10 13:05:23', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (22, 'regular', 'DIPOLMA', NULL, NULL, 'published', '[null,\"products\\/dipolma\\/pfs2705.jpg\"]', 'PFS2705', 0, 0, 0, 0, 0, 0, 1, 0, 19.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-09-10 22:51:35', '2022-03-10 13:05:23', NULL, 0, 'in_stock', 0, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (112, 'framebuilder', 'CLASSIC', NULL, NULL, 'published', '[\"products\\/classic\\/pfs2840.jpg\"]', 'PFS2840', 0, 0, 0, 0, 0, 0, 0, 0, 19.68, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:46:12', '2022-03-11 01:47:49', 0, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (113, 'regular', 'CLASSIC', NULL, NULL, 'published', '[null,\"products\\/classic\\/pfs2840.jpg\"]', 'PFS2840', 0, 0, 0, 0, 0, 0, 1, 0, 19.68, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:46:12', '2022-03-11 01:47:49', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (114, 'regular', 'CLASSIC', NULL, NULL, 'published', '[null,\"products\\/classic\\/pfs2910.jpg\"]', 'PFS2910', 0, 0, 0, 0, 0, 0, 1, 0, 19.68, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:47:31', '2022-03-11 01:47:49', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (115, 'regular', 'CLASSIC', NULL, NULL, 'published', '[null,\"products\\/classic\\/pfs3040.jpg\"]', 'PFS3040', 0, 0, 0, 0, 0, 0, 1, 0, 22.4, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:48:56', '2022-03-11 01:47:49', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (116, 'regular', 'CLASSIC', NULL, NULL, 'published', '[null,\"products\\/classic\\/pfs3110.jpg\"]', 'PFS3110', 0, 0, 0, 0, 0, 0, 1, 0, 22.4, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:49:42', '2022-03-11 01:47:49', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (117, 'regular', 'MATTE', NULL, NULL, 'published', '[null,\"products\\/matte\\/pfs3201.jpg\"]', 'PFS3201', 0, 0, 0, 0, 0, 0, 1, 0, 12.78, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:51:35', '2022-03-10 19:13:27', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (118, 'regular', 'MATTE', NULL, NULL, 'published', '[null,\"products\\/matte\\/pfs3360.jpg\"]', 'PFS3360', 0, 0, 0, 0, 0, 0, 1, 0, 12.78, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:52:35', '2022-03-10 19:13:27', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (119, 'framebuilder', 'LAQUER', NULL, NULL, 'published', '[\"products\\/laquer\\/pfs3401.jpg\"]', 'PFS3401', 0, 0, 0, 0, 0, 0, 0, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:54:24', '2022-03-11 01:39:34', 0, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (120, 'regular', 'LAQUER', NULL, NULL, 'published', '[null,\"products\\/laquer\\/pfs3401.jpg\"]', 'PFS3401', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:54:25', '2022-03-11 01:39:34', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (121, 'regular', 'LAQUER', NULL, NULL, 'published', '[null,\"products\\/laquer\\/pfs3560.jpg\"]', 'PFS3560', 0, 0, 0, 0, 0, 0, 1, 0, 17.48, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:55:39', '2022-03-11 01:39:34', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (122, 'framebuilder', 'NATURAL', NULL, NULL, 'published', '[\"products\\/natural\\/pfs3602.jpg\"]', 'PFS3602', 0, 0, 0, 0, 0, 0, 0, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:58:00', '2022-03-11 02:06:30', 0, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (123, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs3602.jpg\"]', 'PFS3602', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:58:01', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (124, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs3720.jpg\"]', 'PFS3720', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:58:56', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (125, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs3850.jpg\"]', 'PFS3850', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 16:59:48', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (126, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs3980.jpg\"]', 'PFS3980', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 17:00:55', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (127, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs4090.jpg\"]', 'PFS4090', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 17:02:13', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (128, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs4105.jpg\"]', 'PFS4105', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 18:04:05', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (129, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs4203.jpg\"]', 'PFS4203', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 18:05:30', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (130, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs4360.jpg\"]', 'PFS4360', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 18:05:53', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (131, 'regular', 'NATURAL', NULL, NULL, 'published', '[null,\"products\\/natural\\/pfs4401.jpg\"]', 'PFS4401', 0, 0, 0, 0, 0, 0, 1, 0, 18.5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 18:06:35', '2022-03-11 02:06:30', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (134, 'regular', 'Framer\'s Tape', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);font-size:16px;\"><span>Stronger and thinner than linen or paper tapes and won’t harm your mats or artwork. The archival-grade, moisture-proof, non-porous film backing is long-lasting and can be easily and cleanly removed from most surfaces with minimal heat. Size: 3/4-inch wide x 180 feet (60 yards).&nbsp;</span></span></p>', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);font-size:16px;\"><span>Stronger and thinner than linen or paper tapes and won’t harm your mats or artwork. The archival-grade, moisture-proof, non-porous film backing is long-lasting and can be easily and cleanly removed from most surfaces with minimal heat. Size: 3/4-inch wide x 180 feet (60 yards).&nbsp;</span></span></p>', 'published', '[\"products\\/95.jpg\"]', NULL, 0, 0, 0, 0, 0, 1, 0, 0, 9.99, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 18:14:13', '2021-12-29 22:44:31', 0, 1, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (135, 'regular', 'Hardware Kit (Metal Frames)', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);font-size:16px;\"><span>Our Hardware Kit comes complete with angle hardware for connecting your frame rails at the four corners of the frame, hanging wire, mounting brackets for stringing your hanging wire, spring clips to hold the frame contents in place, and bumpers to protect your wall.</span></span></p>', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);font-size:16px;\"><span>Our Hardware Kit comes complete with angle hardware for connecting your frame rails at the four corners of the frame, hanging wire, mounting brackets for stringing your hanging wire, spring clips to hold the frame contents in place, and bumpers to protect your wall.</span></span></p>', 'published', '[\"products\\/86.jpg\"]', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 2.49, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2021-12-27 18:15:32', '2021-12-29 21:27:29', 0, 2, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (136, 'framebuilder', 'SINGLE MATBOARD', 'CRESCENT SELECT VIVID WHITE 85700', NULL, 'published', '[]', 'PFS4560', 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-26 18:21:10', '2022-03-10 12:21:14', 0, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (137, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85700.jpg\"]', 'PFS4560', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-26 18:21:10', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (138, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85702.jpg\"]', 'PFS4660', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-26 23:59:14', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (139, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85703.jpg\"]', 'PFS4760', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-26 23:59:51', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (140, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85704.jpg\"]', 'PFS4807', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:00:18', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (141, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85706.jpg\"]', 'PFS4900', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:00:41', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (142, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85712.jpg\"]', 'PFS5030', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:01:00', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (143, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85713.jpg\"]', 'PFS5130', 0, 0, 0, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:01:30', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (144, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85714.jpg\"]', 'PFS5230', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:01:48', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (145, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85711.jpg\"]', 'PFS5301', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:02:15', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (146, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89899.jpg\"]', 'PFS5470', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:02:40', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (147, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89869.jpg\"]', 'PFS5570', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:03:19', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (148, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89882.jpg\"]', 'PFS5609', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:03:53', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (149, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89827.jpg\"]', 'PFS5709', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:04:24', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (150, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89892.jpg\"]', 'PFS5808', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:05:04', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (151, 'regular', 'MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89876.jpg\"]', 'PFS5908', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-02-27 00:05:52', '2022-03-10 12:21:14', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (152, 'framebuilder', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[]', 'PFS4560', 0, 0, 0, 0, 0, NULL, 0, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:38:39', '2022-03-10 12:50:40', 0, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (153, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85700.jpg\"]', 'PFS4560', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:38:39', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (154, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85702.jpg\"]', 'PFS4660', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:39:55', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (155, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85703.jpg\"]', 'PFS4760', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:40:33', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (156, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85704.jpg\"]', 'PFS4807', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:40:56', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (157, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85706.jpg\"]', 'PFS4900', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:41:41', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (158, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85712.jpg\"]', 'PFS5030', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:42:04', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (159, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85713.jpg\"]', 'PFS5130', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:42:28', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (160, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85714.jpg\"]', 'PFS5230', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:42:53', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (161, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c85711.jpg\"]', 'PFS5301', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:43:30', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (162, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89899.jpg\"]', 'PFS5470', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:43:50', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (163, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89869.jpg\"]', 'PFS5570', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:44:14', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (164, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89882.jpg\"]', 'PFS5609', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:44:35', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (165, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89827.jpg\"]', 'PFS5709', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:44:57', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (166, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89892.jpg\"]', 'PFS5808', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:45:18', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (167, 'regular', 'DOUBLE MATBOARD', NULL, NULL, 'published', '[null,\"products\\/matboards\\/c89876.jpg\"]', 'PFS5908', 0, 0, 0, 0, 0, NULL, 1, 0, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-10 12:45:40', '2022-03-10 12:50:40', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
INSERT INTO `ec_products` VALUES (168, 'regular', 'BRIO', NULL, NULL, 'published', '[]', 'PFS1640', 0, 0, 0, 0, 0, 0, 1, 0, 15.88, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '2022-03-11 02:00:58', '2022-03-11 02:03:27', NULL, 0, 'in_stock', 1, 'Botble\\ACL\\Models\\User');
COMMIT;

-- ----------------------------
-- Table structure for ec_products_translations
-- ----------------------------
DROP TABLE IF EXISTS `ec_products_translations`;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_reviews
-- ----------------------------
DROP TABLE IF EXISTS `ec_reviews`;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_shipment_histories
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipment_histories`;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_shipments
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipments`;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_shipping
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipping`;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_shipping
-- ----------------------------
BEGIN;
INSERT INTO `ec_shipping` VALUES (1, 'All', NULL, '2021-05-03 02:01:10', '2021-05-03 02:01:10');
COMMIT;

-- ----------------------------
-- Table structure for ec_shipping_rule_items
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipping_rule_items`;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ec_shipping_rules
-- ----------------------------
DROP TABLE IF EXISTS `ec_shipping_rules`;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_shipping_rules
-- ----------------------------
BEGIN;
INSERT INTO `ec_shipping_rules` VALUES (1, 'Delivery', 1, 'base_on_price', 0.00, NULL, 0.00, '2021-05-03 02:01:10', '2021-05-03 02:01:10');
COMMIT;

-- ----------------------------
-- Table structure for ec_store_locators
-- ----------------------------
DROP TABLE IF EXISTS `ec_store_locators`;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_store_locators
-- ----------------------------
BEGIN;
INSERT INTO `ec_store_locators` VALUES (1, 'Studio Moulding Inc.', 'sales@botble.com', '8002624174', '1315 E. Watson Center Road', 'US', 'CA', 'Carson', 1, 1, '2021-05-03 02:01:13', '2021-06-26 23:51:52');
COMMIT;

-- ----------------------------
-- Table structure for ec_taxes
-- ----------------------------
DROP TABLE IF EXISTS `ec_taxes`;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ec_taxes
-- ----------------------------
BEGIN;
INSERT INTO `ec_taxes` VALUES (1, 'VAT', 10.000000, 1, 'published', '2021-05-03 02:01:10', '2021-05-03 02:01:10');
INSERT INTO `ec_taxes` VALUES (2, 'None', 0.000000, 2, 'published', '2021-05-03 02:01:10', '2021-05-03 02:01:10');
COMMIT;

-- ----------------------------
-- Table structure for ec_wish_lists
-- ----------------------------
DROP TABLE IF EXISTS `ec_wish_lists`;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for language_meta
-- ----------------------------
DROP TABLE IF EXISTS `language_meta`;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of language_meta
-- ----------------------------
BEGIN;
INSERT INTO `language_meta` VALUES (1, 'en_US', 'fa0d6018ddc9fcb4d66633a51eaade8d', 1, 'Botble\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (2, 'en_US', 'dda63d170e2999b927fe54ecc8a564ac', 2, 'Botble\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (3, 'en_US', 'de516217f46918ee3214efca266416fd', 3, 'Botble\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (4, 'en_US', 'ce275982fcf2e051f10ca296b6b0f19d', 4, 'Botble\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (9, 'en_US', '19cc25223bf0bb6c6ef7eb6a4977b9a1', 1, 'Botble\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (10, 'en_US', '90be5c8f16fde63b486babf7dd342956', 2, 'Botble\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (11, 'en_US', '23b427b79596be34193a9b64a28d29a6', 3, 'Botble\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (12, 'en_US', '625817ca0e672d725532b1fe6c9f386b', 4, 'Botble\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (13, 'en_US', 'e413e048a2826d671bdcdacb3a6f7fa8', 5, 'Botble\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (19, 'en_US', '0035e9d4f068dead7f3e78b681f94398', 1, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (20, 'en_US', 'ac661db5ba9de6a85f66fa33312344df', 2, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (21, 'en_US', '30bf23d9ec017b0cfe77a2e8ee4260f5', 3, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (22, 'en_US', '68dab16ed560f01412c8dddf65857aa1', 4, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (23, 'en_US', '051e5b96e7905f6ed34f772e6b730bee', 5, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (24, 'en_US', '51ed99a3e701ff37c6a8f585a3a0de21', 6, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (25, 'en_US', '64f4890bf5a47b82f7e96b85f4fbf0b2', 7, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (26, 'en_US', 'c3acc0189d613144f4375818e3d1bd01', 8, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (27, 'en_US', '5d427c9665162bf4d37208b9853bdf3d', 9, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (28, 'en_US', '86f611718d8137a1ae7c3a4a73d44710', 10, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (29, 'en_US', '57b644b36bdcb8a28e15935d0f543719', 11, 'Botble\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (41, 'en_US', '8662cc3fae8165219ed3640b6995e3ed', 1, 'Botble\\Testimonial\\Models\\Testimonial');
INSERT INTO `language_meta` VALUES (42, 'en_US', '839b49f8ff27e6cee19456eed433e6a7', 2, 'Botble\\Testimonial\\Models\\Testimonial');
INSERT INTO `language_meta` VALUES (43, 'en_US', '837677976ae575341bc06cfcb6f22ddc', 3, 'Botble\\Testimonial\\Models\\Testimonial');
INSERT INTO `language_meta` VALUES (44, 'en_US', '25db4f05175391254201dd86e1596c2b', 4, 'Botble\\Testimonial\\Models\\Testimonial');
INSERT INTO `language_meta` VALUES (49, 'en_US', '8e2805f81190dfc3334cc9fbc617a6fe', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider');
INSERT INTO `language_meta` VALUES (51, 'en_US', '418c6e4e2f8e659dbe1d99fca053f6bc', 1, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (52, 'en_US', '381bab04af2aec6627ac05d0a739ec21', 2, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (53, 'en_US', '96f865b0b6ef66941ac0653b98f8b504', 3, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (54, 'en_US', 'c72612bb1e21491c988f2fa8cf5a3fd4', 4, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (55, 'en_US', '01bf0c41fdc128f08781ef0f80108ca5', 5, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (56, 'en_US', '5928cee68b0d09308880baad362fe982', 6, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (57, 'en_US', 'd1f90d803c6b9befb1acbdee7e12e81a', 7, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (58, 'en_US', '6951e0a1fd493be9a7082d0329017036', 8, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (59, 'en_US', 'b277dca8fe0ebb50ce9039637173e6fd', 9, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (69, 'en_US', '377224df716294093e9f7246681c3542', 1, 'Botble\\Menu\\Models\\MenuLocation');
INSERT INTO `language_meta` VALUES (70, 'en_US', '05eaec32e9ad775d950498c6b056075e', 1, 'Botble\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (71, 'en_US', '737d65ba352e1378415507fceb63d67f', 2, 'Botble\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (73, 'en_US', 'd5a955e73c49081cb39ec53f01467d41', 4, 'Botble\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (79, 'en_US', 'f21dc6b61526564bb4ea09836235ce56', 19, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (80, 'en_US', 'cd5023eeb4fdcd3b09859a22322db447', 20, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (81, 'en_US', '6b651750f683ab9a0746f0305e86c280', 21, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (82, 'en_US', '061e97f4489740c0f716a38262836645', 22, 'Botble\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (83, 'en_US', '031e1397445af02f57a2e24ee8b4ca56', 3, 'Botble\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (84, 'en_US', 'cd24702a441160742cffccd65d0f5e53', 10, 'Botble\\Page\\Models\\Page');
COMMIT;

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of languages
-- ----------------------------
BEGIN;
INSERT INTO `languages` VALUES (1, 'English', 'en', 'en_US', 'us', 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for media_files
-- ----------------------------
DROP TABLE IF EXISTS `media_files`;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of media_files
-- ----------------------------
BEGIN;
INSERT INTO `media_files` VALUES (1, 0, '1', 1, 'image/png', 3509, 'brands/1.png', '[]', '2021-09-14 22:28:06', '2021-09-14 22:28:06', NULL);
INSERT INTO `media_files` VALUES (2, 0, '2', 1, 'image/png', 3505, 'brands/2.png', '[]', '2021-09-14 22:28:06', '2021-09-14 22:28:06', NULL);
INSERT INTO `media_files` VALUES (3, 0, '3', 1, 'image/png', 2585, 'brands/3.png', '[]', '2021-09-14 22:28:07', '2021-09-14 22:28:07', NULL);
INSERT INTO `media_files` VALUES (4, 0, '4', 1, 'image/png', 6427, 'brands/4.png', '[]', '2021-09-14 22:28:07', '2021-09-14 22:28:07', NULL);
INSERT INTO `media_files` VALUES (5, 0, '5', 1, 'image/png', 3246, 'brands/5.png', '[]', '2021-09-14 22:28:07', '2021-09-14 22:28:07', NULL);
INSERT INTO `media_files` VALUES (6, 0, '6', 1, 'image/png', 3276, 'brands/6.png', '[]', '2021-09-14 22:28:08', '2021-09-14 22:28:08', NULL);
INSERT INTO `media_files` VALUES (7, 0, '7', 1, 'image/png', 3120, 'brands/7.png', '[]', '2021-09-14 22:28:08', '2021-09-14 22:28:08', NULL);
INSERT INTO `media_files` VALUES (8, 0, 'p-1', 2, 'image/png', 9577, 'product-categories/p-1.png', '[]', '2021-09-14 22:28:08', '2021-09-14 22:28:08', NULL);
INSERT INTO `media_files` VALUES (9, 0, 'p-2', 2, 'image/png', 5510, 'product-categories/p-2.png', '[]', '2021-09-14 22:28:09', '2021-09-14 22:28:09', NULL);
INSERT INTO `media_files` VALUES (10, 0, 'p-3', 2, 'image/png', 16215, 'product-categories/p-3.png', '[]', '2021-09-14 22:28:09', '2021-09-14 22:28:09', NULL);
INSERT INTO `media_files` VALUES (11, 0, 'p-4', 2, 'image/png', 7394, 'product-categories/p-4.png', '[]', '2021-09-14 22:28:09', '2021-09-14 22:28:09', NULL);
INSERT INTO `media_files` VALUES (12, 0, 'p-5', 2, 'image/png', 6714, 'product-categories/p-5.png', '[]', '2021-09-14 22:28:10', '2021-09-14 22:28:10', NULL);
INSERT INTO `media_files` VALUES (13, 0, 'p-6', 2, 'image/png', 9541, 'product-categories/p-6.png', '[]', '2021-09-14 22:28:10', '2021-09-14 22:28:10', NULL);
INSERT INTO `media_files` VALUES (14, 0, 'p-7', 2, 'image/png', 13677, 'product-categories/p-7.png', '[]', '2021-09-14 22:28:10', '2021-09-14 22:28:10', NULL);
INSERT INTO `media_files` VALUES (15, 0, '1', 3, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2021-09-14 22:28:11', '2021-09-14 22:28:11', NULL);
INSERT INTO `media_files` VALUES (16, 0, '10', 3, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2021-09-14 22:28:11', '2021-09-14 22:28:11', NULL);
INSERT INTO `media_files` VALUES (17, 0, '2', 3, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2021-09-14 22:28:11', '2021-09-14 22:28:11', NULL);
INSERT INTO `media_files` VALUES (18, 0, '3', 3, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2021-09-14 22:28:11', '2021-09-14 22:28:11', NULL);
INSERT INTO `media_files` VALUES (19, 0, '4', 3, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2021-09-14 22:28:12', '2021-09-14 22:28:12', NULL);
INSERT INTO `media_files` VALUES (20, 0, '5', 3, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2021-09-14 22:28:12', '2021-09-14 22:28:12', NULL);
INSERT INTO `media_files` VALUES (21, 0, '6', 3, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2021-09-14 22:28:12', '2021-09-14 22:28:12', NULL);
INSERT INTO `media_files` VALUES (22, 0, '7', 3, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2021-09-14 22:28:12', '2021-09-14 22:28:12', NULL);
INSERT INTO `media_files` VALUES (23, 0, '8', 3, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2021-09-14 22:28:12', '2021-09-14 22:28:12', NULL);
INSERT INTO `media_files` VALUES (24, 0, '9', 3, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2021-09-14 22:28:12', '2021-09-14 22:28:12', NULL);
INSERT INTO `media_files` VALUES (25, 0, '1-1', 4, 'image/jpeg', 88437, 'products/1-1.jpg', '[]', '2021-09-14 22:28:16', '2021-09-14 22:28:16', NULL);
INSERT INTO `media_files` VALUES (26, 0, '1-2', 4, 'image/jpeg', 122690, 'products/1-2.jpg', '[]', '2021-09-14 22:28:16', '2021-09-14 22:28:16', NULL);
INSERT INTO `media_files` VALUES (27, 0, '1-3', 4, 'image/jpeg', 117296, 'products/1-3.jpg', '[]', '2021-09-14 22:28:17', '2021-09-14 22:28:17', NULL);
INSERT INTO `media_files` VALUES (28, 0, '1', 4, 'image/jpeg', 139025, 'products/1.jpg', '[]', '2021-09-14 22:28:17', '2021-09-14 22:28:17', NULL);
INSERT INTO `media_files` VALUES (29, 0, '10-1', 4, 'image/jpeg', 183491, 'products/10-1.jpg', '[]', '2021-09-14 22:28:18', '2021-09-14 22:28:18', NULL);
INSERT INTO `media_files` VALUES (30, 0, '10', 4, 'image/jpeg', 150956, 'products/10.jpg', '[]', '2021-09-14 22:28:18', '2021-09-14 22:28:18', NULL);
INSERT INTO `media_files` VALUES (31, 0, '11-1', 4, 'image/jpeg', 246200, 'products/11-1.jpg', '[]', '2021-09-14 22:28:19', '2021-09-14 22:28:19', NULL);
INSERT INTO `media_files` VALUES (32, 0, '11', 4, 'image/jpeg', 279390, 'products/11.jpg', '[]', '2021-09-14 22:28:19', '2021-09-14 22:28:19', NULL);
INSERT INTO `media_files` VALUES (33, 0, '12-1', 4, 'image/jpeg', 249712, 'products/12-1.jpg', '[]', '2021-09-14 22:28:20', '2021-09-14 22:28:20', NULL);
INSERT INTO `media_files` VALUES (34, 0, '12', 4, 'image/jpeg', 172221, 'products/12.jpg', '[]', '2021-09-14 22:28:20', '2021-09-14 22:28:20', NULL);
INSERT INTO `media_files` VALUES (35, 0, '13-1', 4, 'image/jpeg', 257021, 'products/13-1.jpg', '[]', '2021-09-14 22:28:21', '2021-09-14 22:28:21', NULL);
INSERT INTO `media_files` VALUES (36, 0, '13', 4, 'image/jpeg', 232917, 'products/13.jpg', '[]', '2021-09-14 22:28:22', '2021-09-14 22:28:22', NULL);
INSERT INTO `media_files` VALUES (37, 0, '14-1', 4, 'image/jpeg', 201773, 'products/14-1.jpg', '[]', '2021-09-14 22:28:22', '2021-09-14 22:28:22', NULL);
INSERT INTO `media_files` VALUES (38, 0, '14', 4, 'image/jpeg', 287194, 'products/14.jpg', '[]', '2021-09-14 22:28:23', '2021-09-14 22:28:23', NULL);
INSERT INTO `media_files` VALUES (39, 0, '15-1', 4, 'image/jpeg', 273720, 'products/15-1.jpg', '[]', '2021-09-14 22:28:23', '2021-09-14 22:28:23', NULL);
INSERT INTO `media_files` VALUES (40, 0, '15', 4, 'image/jpeg', 114265, 'products/15.jpg', '[]', '2021-09-14 22:28:24', '2021-09-14 22:28:24', NULL);
INSERT INTO `media_files` VALUES (41, 0, '16', 4, 'image/jpeg', 97174, 'products/16.jpg', '[]', '2021-09-14 22:28:24', '2021-09-14 22:28:24', NULL);
INSERT INTO `media_files` VALUES (42, 0, '17', 4, 'image/jpeg', 70179, 'products/17.jpg', '[]', '2021-09-14 22:28:26', '2021-09-14 22:28:26', NULL);
INSERT INTO `media_files` VALUES (43, 0, '18-1', 4, 'image/jpeg', 287835, 'products/18-1.jpg', '[]', '2021-09-14 22:28:27', '2021-09-14 22:28:27', NULL);
INSERT INTO `media_files` VALUES (44, 0, '18-2', 4, 'image/jpeg', 454869, 'products/18-2.jpg', '[]', '2021-09-14 22:28:28', '2021-09-14 22:28:28', NULL);
INSERT INTO `media_files` VALUES (45, 0, '18', 4, 'image/jpeg', 257331, 'products/18.jpg', '[]', '2021-09-14 22:28:30', '2021-09-14 22:28:30', NULL);
INSERT INTO `media_files` VALUES (46, 0, '19-1', 4, 'image/jpeg', 144008, 'products/19-1.jpg', '[]', '2021-09-14 22:28:32', '2021-09-14 22:28:32', NULL);
INSERT INTO `media_files` VALUES (47, 0, '19', 4, 'image/jpeg', 188821, 'products/19.jpg', '[]', '2021-09-14 22:28:33', '2021-09-14 22:28:33', NULL);
INSERT INTO `media_files` VALUES (48, 0, '2-1', 4, 'image/jpeg', 138167, 'products/2-1.jpg', '[]', '2021-09-14 22:28:33', '2021-09-14 22:28:33', NULL);
INSERT INTO `media_files` VALUES (49, 0, '2-2', 4, 'image/jpeg', 230552, 'products/2-2.jpg', '[]', '2021-09-14 22:28:34', '2021-09-14 22:28:34', NULL);
INSERT INTO `media_files` VALUES (50, 0, '2-3', 4, 'image/jpeg', 179301, 'products/2-3.jpg', '[]', '2021-09-14 22:28:34', '2021-09-14 22:28:34', NULL);
INSERT INTO `media_files` VALUES (51, 0, '2', 4, 'image/jpeg', 130048, 'products/2.jpg', '[]', '2021-09-14 22:28:35', '2021-09-14 22:28:35', NULL);
INSERT INTO `media_files` VALUES (52, 0, '20-1', 4, 'image/jpeg', 249712, 'products/20-1.jpg', '[]', '2021-09-14 22:28:36', '2021-09-14 22:28:36', NULL);
INSERT INTO `media_files` VALUES (53, 0, '20', 4, 'image/jpeg', 172221, 'products/20.jpg', '[]', '2021-09-14 22:28:36', '2021-09-14 22:28:36', NULL);
INSERT INTO `media_files` VALUES (54, 0, '21-1', 4, 'image/jpeg', 260746, 'products/21-1.jpg', '[]', '2021-09-14 22:28:37', '2021-09-14 22:28:37', NULL);
INSERT INTO `media_files` VALUES (55, 0, '21', 4, 'image/jpeg', 124244, 'products/21.jpg', '[]', '2021-09-14 22:28:39', '2021-09-14 22:28:39', NULL);
INSERT INTO `media_files` VALUES (56, 0, '22-1', 4, 'image/jpeg', 268620, 'products/22-1.jpg', '[]', '2021-09-14 22:28:40', '2021-09-14 22:28:40', NULL);
INSERT INTO `media_files` VALUES (57, 0, '22', 4, 'image/jpeg', 128692, 'products/22.jpg', '[]', '2021-09-14 22:28:42', '2021-09-14 22:28:42', NULL);
INSERT INTO `media_files` VALUES (58, 0, '23-1', 4, 'image/jpeg', 105560, 'products/23-1.jpg', '[]', '2021-09-14 22:28:43', '2021-09-14 22:28:43', NULL);
INSERT INTO `media_files` VALUES (59, 0, '23', 4, 'image/jpeg', 177362, 'products/23.jpg', '[]', '2021-09-14 22:28:44', '2021-09-14 22:28:44', NULL);
INSERT INTO `media_files` VALUES (60, 0, '24-1', 4, 'image/jpeg', 239311, 'products/24-1.jpg', '[]', '2021-09-14 22:28:45', '2021-09-14 22:28:45', NULL);
INSERT INTO `media_files` VALUES (61, 0, '24', 4, 'image/jpeg', 363853, 'products/24.jpg', '[]', '2021-09-14 22:28:46', '2021-09-14 22:28:46', NULL);
INSERT INTO `media_files` VALUES (62, 0, '25-1', 4, 'image/jpeg', 17089, 'products/25-1.jpg', '[]', '2021-09-14 22:28:48', '2021-09-14 22:28:48', NULL);
INSERT INTO `media_files` VALUES (63, 0, '25', 4, 'image/jpeg', 18069, 'products/25.jpg', '[]', '2021-09-14 22:28:48', '2021-09-14 22:28:48', NULL);
INSERT INTO `media_files` VALUES (64, 0, '26-1', 4, 'image/jpeg', 13085, 'products/26-1.jpg', '[]', '2021-09-14 22:28:48', '2021-09-14 22:28:48', NULL);
INSERT INTO `media_files` VALUES (65, 0, '26-2', 4, 'image/jpeg', 22667, 'products/26-2.jpg', '[]', '2021-09-14 22:28:48', '2021-09-14 22:28:48', NULL);
INSERT INTO `media_files` VALUES (66, 0, '26', 4, 'image/jpeg', 13611, 'products/26.jpg', '[]', '2021-09-14 22:28:48', '2021-09-14 22:28:48', NULL);
INSERT INTO `media_files` VALUES (67, 0, '27-1', 4, 'image/jpeg', 10286, 'products/27-1.jpg', '[]', '2021-09-14 22:28:48', '2021-09-14 22:28:48', NULL);
INSERT INTO `media_files` VALUES (68, 0, '27', 4, 'image/jpeg', 12569, 'products/27.jpg', '[]', '2021-09-14 22:28:49', '2021-09-14 22:28:49', NULL);
INSERT INTO `media_files` VALUES (69, 0, '28-1', 4, 'image/jpeg', 15654, 'products/28-1.jpg', '[]', '2021-09-14 22:28:49', '2021-09-14 22:28:49', NULL);
INSERT INTO `media_files` VALUES (70, 0, '28', 4, 'image/jpeg', 18243, 'products/28.jpg', '[]', '2021-09-14 22:28:49', '2021-09-14 22:28:49', NULL);
INSERT INTO `media_files` VALUES (71, 0, '29-1', 4, 'image/jpeg', 27890, 'products/29-1.jpg', '[]', '2021-09-14 22:28:49', '2021-09-14 22:28:49', NULL);
INSERT INTO `media_files` VALUES (72, 0, '29', 4, 'image/jpeg', 27961, 'products/29.jpg', '[]', '2021-09-14 22:28:49', '2021-09-14 22:28:49', NULL);
INSERT INTO `media_files` VALUES (73, 0, '3-1', 4, 'image/jpeg', 135741, 'products/3-1.jpg', '[]', '2021-09-14 22:28:49', '2021-09-14 22:28:49', NULL);
INSERT INTO `media_files` VALUES (74, 0, '3-2', 4, 'image/jpeg', 123069, 'products/3-2.jpg', '[]', '2021-09-14 22:28:50', '2021-09-14 22:28:50', NULL);
INSERT INTO `media_files` VALUES (75, 0, '3-3', 4, 'image/jpeg', 98645, 'products/3-3.jpg', '[]', '2021-09-14 22:28:50', '2021-09-14 22:28:50', NULL);
INSERT INTO `media_files` VALUES (76, 0, '3', 4, 'image/jpeg', 201722, 'products/3.jpg', '[]', '2021-09-14 22:28:51', '2021-09-14 22:28:51', NULL);
INSERT INTO `media_files` VALUES (77, 0, '30-1', 4, 'image/jpeg', 26283, 'products/30-1.jpg', '[]', '2021-09-14 22:28:51', '2021-09-14 22:28:51', NULL);
INSERT INTO `media_files` VALUES (78, 0, '30', 4, 'image/jpeg', 27107, 'products/30.jpg', '[]', '2021-09-14 22:28:52', '2021-09-14 22:28:52', NULL);
INSERT INTO `media_files` VALUES (79, 0, '31-1', 4, 'image/jpeg', 25924, 'products/31-1.jpg', '[]', '2021-09-14 22:28:52', '2021-09-14 22:28:52', NULL);
INSERT INTO `media_files` VALUES (80, 0, '31', 4, 'image/jpeg', 18634, 'products/31.jpg', '[]', '2021-09-14 22:28:52', '2021-09-14 22:28:52', NULL);
INSERT INTO `media_files` VALUES (81, 0, '4-1', 4, 'image/jpeg', 205312, 'products/4-1.jpg', '[]', '2021-09-14 22:28:52', '2021-09-14 22:28:52', NULL);
INSERT INTO `media_files` VALUES (82, 0, '4-2', 4, 'image/jpeg', 223903, 'products/4-2.jpg', '[]', '2021-09-14 22:28:53', '2021-09-14 22:28:53', NULL);
INSERT INTO `media_files` VALUES (83, 0, '4-3', 4, 'image/jpeg', 106593, 'products/4-3.jpg', '[]', '2021-09-14 22:28:53', '2021-09-14 22:28:53', NULL);
INSERT INTO `media_files` VALUES (84, 0, '4', 4, 'image/jpeg', 456134, 'products/4.jpg', '[]', '2021-09-14 22:28:54', '2021-09-14 22:28:54', NULL);
INSERT INTO `media_files` VALUES (85, 0, '5-1', 4, 'image/jpeg', 110014, 'products/5-1.jpg', '[]', '2021-09-14 22:28:54', '2021-09-14 22:28:54', NULL);
INSERT INTO `media_files` VALUES (86, 0, '5-2', 4, 'image/jpeg', 104934, 'products/5-2.jpg', '[]', '2021-09-14 22:28:55', '2021-09-14 22:28:55', NULL);
INSERT INTO `media_files` VALUES (87, 0, '5-3', 4, 'image/jpeg', 131628, 'products/5-3.jpg', '[]', '2021-09-14 22:28:55', '2021-09-14 22:28:55', NULL);
INSERT INTO `media_files` VALUES (88, 0, '5', 4, 'image/jpeg', 214767, 'products/5.jpg', '[]', '2021-09-14 22:28:56', '2021-09-14 22:28:56', NULL);
INSERT INTO `media_files` VALUES (89, 0, '6-1', 4, 'image/jpeg', 128041, 'products/6-1.jpg', '[]', '2021-09-14 22:28:56', '2021-09-14 22:28:56', NULL);
INSERT INTO `media_files` VALUES (90, 0, '6', 4, 'image/jpeg', 148485, 'products/6.jpg', '[]', '2021-09-14 22:28:57', '2021-09-14 22:28:57', NULL);
INSERT INTO `media_files` VALUES (91, 0, '7-1', 4, 'image/jpeg', 144008, 'products/7-1.jpg', '[]', '2021-09-14 22:28:57', '2021-09-14 22:28:57', NULL);
INSERT INTO `media_files` VALUES (92, 0, '7', 4, 'image/jpeg', 188821, 'products/7.jpg', '[]', '2021-09-14 22:28:58', '2021-09-14 22:28:58', NULL);
INSERT INTO `media_files` VALUES (93, 0, '8-1', 4, 'image/jpeg', 274272, 'products/8-1.jpg', '[]', '2021-09-14 22:28:59', '2021-09-14 22:28:59', NULL);
INSERT INTO `media_files` VALUES (94, 0, '8', 4, 'image/jpeg', 217862, 'products/8.jpg', '[]', '2021-09-14 22:28:59', '2021-09-14 22:28:59', NULL);
INSERT INTO `media_files` VALUES (95, 0, '9-1', 4, 'image/jpeg', 65624, 'products/9-1.jpg', '[]', '2021-09-14 22:29:00', '2021-09-14 22:29:00', NULL);
INSERT INTO `media_files` VALUES (96, 0, '9', 4, 'image/jpeg', 159636, 'products/9.jpg', '[]', '2021-09-14 22:29:00', '2021-09-14 22:29:00', NULL);
INSERT INTO `media_files` VALUES (97, 0, '1', 5, 'image/jpeg', 82629, 'news/1.jpg', '[]', '2021-09-14 22:29:03', '2021-09-14 22:29:03', NULL);
INSERT INTO `media_files` VALUES (98, 0, '10', 5, 'image/jpeg', 342651, 'news/10.jpg', '[]', '2021-09-14 22:29:03', '2021-09-14 22:29:03', NULL);
INSERT INTO `media_files` VALUES (99, 0, '11', 5, 'image/jpeg', 296740, 'news/11.jpg', '[]', '2021-09-14 22:29:04', '2021-09-14 22:29:04', NULL);
INSERT INTO `media_files` VALUES (100, 0, '2', 5, 'image/jpeg', 119904, 'news/2.jpg', '[]', '2021-09-14 22:29:05', '2021-09-14 22:29:05', NULL);
INSERT INTO `media_files` VALUES (101, 0, '3', 5, 'image/jpeg', 89543, 'news/3.jpg', '[]', '2021-09-14 22:29:05', '2021-09-14 22:29:05', NULL);
INSERT INTO `media_files` VALUES (102, 0, '4', 5, 'image/jpeg', 51573, 'news/4.jpg', '[]', '2021-09-14 22:29:05', '2021-09-14 22:29:05', NULL);
INSERT INTO `media_files` VALUES (103, 0, '5', 5, 'image/jpeg', 41164, 'news/5.jpg', '[]', '2021-09-14 22:29:06', '2021-09-14 22:29:06', NULL);
INSERT INTO `media_files` VALUES (104, 0, '6', 5, 'image/jpeg', 80696, 'news/6.jpg', '[]', '2021-09-14 22:29:06', '2021-09-14 22:29:06', NULL);
INSERT INTO `media_files` VALUES (105, 0, '7', 5, 'image/jpeg', 904027, 'news/7.jpg', '[]', '2021-09-14 22:29:06', '2021-09-14 22:29:06', NULL);
INSERT INTO `media_files` VALUES (106, 0, '8', 5, 'image/jpeg', 351088, 'news/8.jpg', '[]', '2021-09-14 22:29:07', '2021-09-14 22:29:07', NULL);
INSERT INTO `media_files` VALUES (107, 0, '9', 5, 'image/jpeg', 353751, 'news/9.jpg', '[]', '2021-09-14 22:29:07', '2021-09-14 22:29:07', NULL);
INSERT INTO `media_files` VALUES (108, 0, '1', 6, 'image/jpeg', 2733, 'testimonials/1.jpg', '[]', '2021-09-14 22:29:08', '2021-09-14 22:29:08', NULL);
INSERT INTO `media_files` VALUES (109, 0, '2', 6, 'image/jpeg', 2840, 'testimonials/2.jpg', '[]', '2021-09-14 22:29:08', '2021-09-14 22:29:08', NULL);
INSERT INTO `media_files` VALUES (110, 0, '3', 6, 'image/jpeg', 3065, 'testimonials/3.jpg', '[]', '2021-09-14 22:29:08', '2021-09-14 22:29:08', NULL);
INSERT INTO `media_files` VALUES (111, 0, '4', 6, 'image/jpeg', 2559, 'testimonials/4.jpg', '[]', '2021-09-14 22:29:09', '2021-09-14 22:29:09', NULL);
INSERT INTO `media_files` VALUES (112, 0, '1', 7, 'image/jpeg', 98636, 'sliders/1.jpg', '[]', '2021-09-14 22:29:09', '2021-09-14 22:29:09', NULL);
INSERT INTO `media_files` VALUES (113, 0, '2', 7, 'image/jpeg', 22560, 'sliders/2.jpg', '[]', '2021-09-14 22:29:09', '2021-09-14 22:29:09', NULL);
INSERT INTO `media_files` VALUES (114, 0, '3', 7, 'image/jpeg', 21630, 'sliders/3.jpg', '[]', '2021-09-14 22:29:09', '2021-09-14 22:29:09', NULL);
INSERT INTO `media_files` VALUES (115, 0, 'american-express', 8, 'image/png', 3209, 'general/american-express.png', '[]', '2021-09-14 22:29:10', '2021-09-14 22:29:10', NULL);
INSERT INTO `media_files` VALUES (116, 0, 'b-1', 8, 'image/jpeg', 20539, 'general/b-1.jpg', '[]', '2021-09-14 22:29:11', '2021-09-14 22:29:11', NULL);
INSERT INTO `media_files` VALUES (117, 0, 'b-2', 8, 'image/jpeg', 18320, 'general/b-2.jpg', '[]', '2021-09-14 22:29:11', '2021-09-14 22:29:11', NULL);
INSERT INTO `media_files` VALUES (118, 0, 'b-3', 8, 'image/jpeg', 42872, 'general/b-3.jpg', '[]', '2021-09-14 22:29:11', '2021-09-14 22:29:11', NULL);
INSERT INTO `media_files` VALUES (119, 0, 'discover', 8, 'image/png', 2494, 'general/discover.png', '[]', '2021-09-14 22:29:11', '2021-09-14 22:29:11', NULL);
INSERT INTO `media_files` VALUES (120, 0, 'favicon', 8, 'image/png', 1803, 'general/favicon.png', '[]', '2021-09-14 22:29:11', '2021-09-14 22:29:11', NULL);
INSERT INTO `media_files` VALUES (121, 0, 'logo-light', 8, 'image/png', 3736, 'general/logo-light.png', '[]', '2021-09-14 22:29:11', '2021-09-14 22:29:11', NULL);
INSERT INTO `media_files` VALUES (122, 0, 'logo', 8, 'image/png', 3927, 'general/logo.png', '[]', '2021-09-14 22:29:12', '2021-09-14 22:29:12', NULL);
INSERT INTO `media_files` VALUES (123, 0, 'master-card', 8, 'image/png', 3407, 'general/master-card.png', '[]', '2021-09-14 22:29:12', '2021-09-14 22:29:12', NULL);
INSERT INTO `media_files` VALUES (124, 0, 'newsletter', 8, 'image/jpeg', 48929, 'general/newsletter.jpg', '[]', '2021-09-14 22:29:12', '2021-09-14 22:29:12', NULL);
INSERT INTO `media_files` VALUES (125, 0, 'paypal', 8, 'image/png', 2670, 'general/paypal.png', '[]', '2021-09-14 22:29:12', '2021-09-14 22:29:12', NULL);
INSERT INTO `media_files` VALUES (126, 0, 'visa', 8, 'image/png', 2841, 'general/visa.png', '[]', '2021-09-14 22:29:12', '2021-09-14 22:29:12', NULL);
INSERT INTO `media_files` VALUES (127, 1, 'slide-willow', 9, 'image/jpeg', 130824, 'hero/slide-willow.jpg', '[]', '2021-11-24 18:40:22', '2021-11-24 23:46:58', '2021-11-24 23:46:58');
INSERT INTO `media_files` VALUES (128, 1, 'slide-opus', 9, 'image/jpeg', 107214, 'hero/slide-opus.jpg', '[]', '2021-11-24 18:40:22', '2021-11-24 23:47:03', '2021-11-24 23:47:03');
INSERT INTO `media_files` VALUES (129, 1, 'slide-armour', 9, 'image/jpeg', 132466, 'hero/slide-armour.jpg', '[]', '2021-11-24 18:40:23', '2021-11-24 23:46:52', '2021-11-24 23:46:52');
INSERT INTO `media_files` VALUES (130, 1, 'logo-1', 8, 'image/jpeg', 6876, 'general/logo-1.jpg', '[]', '2021-11-24 22:16:30', '2021-11-24 22:16:30', NULL);
INSERT INTO `media_files` VALUES (135, 1, 'slide-armour-1', 9, 'image/jpeg', 132466, 'hero/slide-armour-1.jpg', '[]', '2021-11-25 03:26:41', '2021-11-25 03:26:41', NULL);
INSERT INTO `media_files` VALUES (136, 1, 'slide-opus-1', 9, 'image/jpeg', 107214, 'hero/slide-opus-1.jpg', '[]', '2021-11-25 03:26:41', '2021-11-25 03:26:41', NULL);
INSERT INTO `media_files` VALUES (137, 1, 'slide-willow-1', 9, 'image/jpeg', 130824, 'hero/slide-willow-1.jpg', '[]', '2021-11-25 03:26:42', '2021-11-25 03:26:42', NULL);
INSERT INTO `media_files` VALUES (138, 1, 'museum-gff1c7b007_1920', 10, 'image/jpeg', 493297, 'blog/museum-gff1c7b007-1920.jpg', '[]', '2021-12-26 01:53:39', '2021-12-26 01:53:39', NULL);
INSERT INTO `media_files` VALUES (139, 1, 'art-gallery-ge8c9359ce_1920', 10, 'image/jpeg', 345172, 'blog/art-gallery-ge8c9359ce-1920.jpg', '[]', '2021-12-26 01:53:41', '2021-12-26 01:53:41', NULL);
INSERT INTO `media_files` VALUES (140, 1, 'people-g66e2ebd7a_1920', 10, 'image/jpeg', 772551, 'blog/people-g66e2ebd7a-1920.jpg', '[]', '2021-12-26 01:53:47', '2021-12-26 01:53:47', NULL);
INSERT INTO `media_files` VALUES (141, 1, 'people-ge36024794_1920', 10, 'image/jpeg', 236165, 'blog/people-ge36024794-1920.jpg', '[]', '2021-12-26 01:53:49', '2021-12-26 01:53:49', NULL);
INSERT INTO `media_files` VALUES (142, 1, '95', 4, 'image/jpeg', 9404, 'products/95.jpg', '[]', '2021-12-27 18:13:31', '2021-12-27 18:13:31', NULL);
INSERT INTO `media_files` VALUES (143, 1, '86', 4, 'image/jpeg', 20289, 'products/86.jpg', '[]', '2021-12-27 18:15:10', '2021-12-27 18:15:10', NULL);
INSERT INTO `media_files` VALUES (144, 1, 'PFS3602', 18, 'image/jpeg', 130286, 'products/natural/pfs3602.jpg', '[]', '2022-03-09 11:13:16', '2022-03-09 11:13:16', NULL);
INSERT INTO `media_files` VALUES (145, 1, 'PFS3720', 18, 'image/jpeg', 164658, 'products/natural/pfs3720.jpg', '[]', '2022-03-09 11:13:38', '2022-03-09 11:13:38', NULL);
INSERT INTO `media_files` VALUES (146, 1, 'PFS3850', 18, 'image/jpeg', 142578, 'products/natural/pfs3850.jpg', '[]', '2022-03-09 11:14:09', '2022-03-09 11:14:09', NULL);
INSERT INTO `media_files` VALUES (147, 1, 'PFS3980', 18, 'image/jpeg', 143548, 'products/natural/pfs3980.jpg', '[]', '2022-03-09 11:14:29', '2022-03-09 11:14:29', NULL);
INSERT INTO `media_files` VALUES (148, 1, 'PFS4090', 18, 'image/jpeg', 148213, 'products/natural/pfs4090.jpg', '[]', '2022-03-09 11:14:47', '2022-03-09 11:14:47', NULL);
INSERT INTO `media_files` VALUES (149, 1, 'PFS4105', 18, 'image/jpeg', 137845, 'products/natural/pfs4105.jpg', '[]', '2022-03-09 11:15:05', '2022-03-09 11:15:05', NULL);
INSERT INTO `media_files` VALUES (150, 1, 'PFS4203', 18, 'image/jpeg', 131827, 'products/natural/pfs4203.jpg', '[]', '2022-03-09 11:15:24', '2022-03-09 11:15:24', NULL);
INSERT INTO `media_files` VALUES (151, 1, 'PFS4360', 18, 'image/jpeg', 128097, 'products/natural/pfs4360.jpg', '[]', '2022-03-09 11:15:50', '2022-03-09 11:15:50', NULL);
INSERT INTO `media_files` VALUES (152, 1, 'PFS4401', 18, 'image/jpeg', 115128, 'products/natural/pfs4401.jpg', '[]', '2022-03-09 11:16:11', '2022-03-09 11:16:11', NULL);
INSERT INTO `media_files` VALUES (153, 1, 'PFS3401', 17, 'image/jpeg', 111975, 'products/laquer/pfs3401.jpg', '[]', '2022-03-09 11:17:09', '2022-03-09 11:17:09', NULL);
INSERT INTO `media_files` VALUES (154, 1, 'PFS3560', 17, 'image/jpeg', 95378, 'products/laquer/pfs3560.jpg', '[]', '2022-03-09 11:17:29', '2022-03-09 11:17:29', NULL);
INSERT INTO `media_files` VALUES (155, 1, 'PFS2840', 16, 'image/jpeg', 181472, 'products/classic/pfs2840.jpg', '[]', '2022-03-09 11:18:11', '2022-03-09 11:18:11', NULL);
INSERT INTO `media_files` VALUES (156, 1, 'PFS2910', 16, 'image/jpeg', 152654, 'products/classic/pfs2910.jpg', '[]', '2022-03-09 11:18:30', '2022-03-09 11:18:30', NULL);
INSERT INTO `media_files` VALUES (157, 1, 'PFS3040', 16, 'image/jpeg', 175676, 'products/classic/pfs3040.jpg', '[]', '2022-03-09 11:18:54', '2022-03-09 11:18:54', NULL);
INSERT INTO `media_files` VALUES (158, 1, 'PFS3110', 16, 'image/jpeg', 179013, 'products/classic/pfs3110.jpg', '[]', '2022-03-09 11:19:14', '2022-03-09 11:19:14', NULL);
INSERT INTO `media_files` VALUES (159, 1, 'PFS2606', 15, 'image/jpeg', 198991, 'products/dipolma/pfs2606.jpg', '[]', '2022-03-09 11:20:02', '2022-03-09 11:20:02', NULL);
INSERT INTO `media_files` VALUES (160, 1, 'PFS2705', 15, 'image/jpeg', 200855, 'products/dipolma/pfs2705.jpg', '[]', '2022-03-09 11:20:27', '2022-03-09 11:20:27', NULL);
INSERT INTO `media_files` VALUES (161, 1, 'PFS2002', 14, 'image/jpeg', 131967, 'products/koda/pfs2002.jpg', '[]', '2022-03-09 11:26:15', '2022-03-09 11:26:15', NULL);
INSERT INTO `media_files` VALUES (162, 1, 'PFS2104', 14, 'image/jpeg', 154294, 'products/koda/pfs2104.jpg', '[]', '2022-03-09 11:26:38', '2022-03-09 11:26:38', NULL);
INSERT INTO `media_files` VALUES (163, 1, 'PFS2250', 14, 'image/jpeg', 146749, 'products/koda/pfs2250.jpg', '[]', '2022-03-09 11:26:58', '2022-03-09 11:26:58', NULL);
INSERT INTO `media_files` VALUES (164, 1, 'PFS2380', 14, 'image/jpeg', 138510, 'products/koda/pfs2380.jpg', '[]', '2022-03-09 11:27:17', '2022-03-09 11:27:17', NULL);
INSERT INTO `media_files` VALUES (165, 1, 'PFS2490', 14, 'image/jpeg', 151951, 'products/koda/pfs2490.jpg', '[]', '2022-03-09 11:27:35', '2022-03-09 11:27:35', NULL);
INSERT INTO `media_files` VALUES (166, 1, 'PFS2501', 14, 'image/jpeg', 125695, 'products/koda/pfs2501.jpg', '[]', '2022-03-09 11:27:54', '2022-03-09 11:27:54', NULL);
INSERT INTO `media_files` VALUES (167, 1, 'PFS1201', 13, 'image/jpeg', 154463, 'products/brio/pfs1201.jpg', '[]', '2022-03-09 11:28:48', '2022-03-09 11:28:48', NULL);
INSERT INTO `media_files` VALUES (168, 1, 'PFS1330', 13, 'image/jpeg', 127083, 'products/brio/pfs1330.jpg', '[]', '2022-03-09 11:29:05', '2022-03-09 11:29:05', NULL);
INSERT INTO `media_files` VALUES (169, 1, 'PFS1410', 13, 'image/jpeg', 135435, 'products/brio/pfs1410.jpg', '[]', '2022-03-09 11:29:22', '2022-03-09 11:29:22', NULL);
INSERT INTO `media_files` VALUES (170, 1, 'PFS1540', 13, 'image/jpeg', 156525, 'products/brio/pfs1540.jpg', '[]', '2022-03-09 11:29:40', '2022-03-09 11:29:40', NULL);
INSERT INTO `media_files` VALUES (171, 1, 'PFS1640', 13, 'image/jpeg', 132150, 'products/brio/pfs1640.jpg', '[]', '2022-03-09 11:30:01', '2022-03-09 11:30:01', NULL);
INSERT INTO `media_files` VALUES (172, 1, 'PFS1840', 13, 'image/jpeg', 137644, 'products/brio/pfs1840.jpg', '[]', '2022-03-09 11:30:18', '2022-03-09 11:30:18', NULL);
INSERT INTO `media_files` VALUES (173, 1, 'PFS1910', 18, 'image/jpeg', 126628, 'products/natural/pfs1910.jpg', '[]', '2022-03-09 11:35:26', '2022-03-09 11:35:26', NULL);
INSERT INTO `media_files` VALUES (174, 1, 'PFS1060', 12, 'image/jpeg', 101242, 'products/matte/pfs1060.jpg', '[]', '2022-03-09 11:36:30', '2022-03-09 11:36:30', NULL);
INSERT INTO `media_files` VALUES (175, 1, 'PFS1101', 12, 'image/jpeg', 113416, 'products/matte/pfs1101.jpg', '[]', '2022-03-09 11:36:51', '2022-03-09 11:36:51', NULL);
INSERT INTO `media_files` VALUES (176, 1, 'PFS1760', 12, 'image/jpeg', 100962, 'products/matte/pfs1760.jpg', '[]', '2022-03-09 11:37:10', '2022-03-09 11:37:10', NULL);
INSERT INTO `media_files` VALUES (177, 1, 'PFS3201', 12, 'image/jpeg', 112191, 'products/matte/pfs3201.jpg', '[]', '2022-03-09 11:37:29', '2022-03-09 11:37:29', NULL);
INSERT INTO `media_files` VALUES (178, 1, 'PFS3360', 12, 'image/jpeg', 103449, 'products/matte/pfs3360.jpg', '[]', '2022-03-09 11:37:56', '2022-03-09 11:37:56', NULL);
INSERT INTO `media_files` VALUES (179, 1, 'C85700', 11, 'image/jpeg', 26066, 'products/matboards/c85700.jpg', '[]', '2022-03-10 01:12:12', '2022-03-10 01:12:12', NULL);
INSERT INTO `media_files` VALUES (180, 1, 'C85702', 11, 'image/jpeg', 392009, 'products/matboards/c85702.jpg', '[]', '2022-03-10 01:12:13', '2022-03-10 01:12:13', NULL);
INSERT INTO `media_files` VALUES (181, 1, 'C85703', 11, 'image/jpeg', 1071706, 'products/matboards/c85703.jpg', '[]', '2022-03-10 01:12:13', '2022-03-10 01:12:13', NULL);
INSERT INTO `media_files` VALUES (182, 1, 'C85704', 11, 'image/jpeg', 825686, 'products/matboards/c85704.jpg', '[]', '2022-03-10 01:12:14', '2022-03-10 01:12:14', NULL);
INSERT INTO `media_files` VALUES (183, 1, 'C85706', 11, 'image/jpeg', 691216, 'products/matboards/c85706.jpg', '[]', '2022-03-10 01:12:15', '2022-03-10 01:12:15', NULL);
INSERT INTO `media_files` VALUES (184, 1, 'C85711', 11, 'image/jpeg', 540093, 'products/matboards/c85711.jpg', '[]', '2022-03-10 01:12:15', '2022-03-10 01:12:15', NULL);
INSERT INTO `media_files` VALUES (185, 1, 'C85712', 11, 'image/jpeg', 643447, 'products/matboards/c85712.jpg', '[]', '2022-03-10 01:12:15', '2022-03-10 01:12:15', NULL);
INSERT INTO `media_files` VALUES (186, 1, 'C85713', 11, 'image/jpeg', 853084, 'products/matboards/c85713.jpg', '[]', '2022-03-10 01:12:16', '2022-03-10 01:12:16', NULL);
INSERT INTO `media_files` VALUES (187, 1, 'C85714', 11, 'image/jpeg', 810013, 'products/matboards/c85714.jpg', '[]', '2022-03-10 01:12:17', '2022-03-10 01:12:17', NULL);
INSERT INTO `media_files` VALUES (188, 1, 'C89827', 11, 'image/jpeg', 1024965, 'products/matboards/c89827.jpg', '[]', '2022-03-10 01:12:17', '2022-03-10 01:12:17', NULL);
INSERT INTO `media_files` VALUES (189, 1, 'C89869', 11, 'image/jpeg', 1082690, 'products/matboards/c89869.jpg', '[]', '2022-03-10 01:12:18', '2022-03-10 01:12:18', NULL);
INSERT INTO `media_files` VALUES (190, 1, 'C89876', 11, 'image/jpeg', 991790, 'products/matboards/c89876.jpg', '[]', '2022-03-10 01:12:18', '2022-03-10 01:12:18', NULL);
INSERT INTO `media_files` VALUES (191, 1, 'C89882', 11, 'image/jpeg', 903949, 'products/matboards/c89882.jpg', '[]', '2022-03-10 01:12:19', '2022-03-10 01:12:19', NULL);
INSERT INTO `media_files` VALUES (192, 1, 'C89892', 11, 'image/jpeg', 912145, 'products/matboards/c89892.jpg', '[]', '2022-03-10 01:12:19', '2022-03-10 01:12:19', NULL);
INSERT INTO `media_files` VALUES (193, 1, 'C89899', 11, 'image/jpeg', 1059083, 'products/matboards/c89899.jpg', '[]', '2022-03-10 01:12:20', '2022-03-10 01:12:20', NULL);
INSERT INTO `media_files` VALUES (194, 1, 'C85700-1', 11, 'image/jpeg', 26066, 'products/matboards/c85700-1.jpg', '[]', '2022-03-10 12:46:51', '2022-03-10 12:46:51', NULL);
INSERT INTO `media_files` VALUES (195, 1, 'PFS1060', 19, 'image/jpeg', 2653, 'products/colors/pfs1060.jpg', '[]', '2022-03-10 21:23:08', '2022-03-10 21:23:08', NULL);
INSERT INTO `media_files` VALUES (196, 1, 'PFS1101', 19, 'image/jpeg', 6858, 'products/colors/pfs1101.jpg', '[]', '2022-03-10 21:23:08', '2022-03-10 21:23:08', NULL);
INSERT INTO `media_files` VALUES (197, 1, 'PFS1210', 19, 'image/jpeg', 6059, 'products/colors/pfs1210.jpg', '[]', '2022-03-10 21:23:09', '2022-03-10 21:23:09', NULL);
INSERT INTO `media_files` VALUES (198, 1, 'PFS1330', 19, 'image/jpeg', 7314, 'products/colors/pfs1330.jpg', '[]', '2022-03-10 21:23:09', '2022-03-10 21:23:09', NULL);
INSERT INTO `media_files` VALUES (199, 1, 'PFS1410', 19, 'image/jpeg', 7308, 'products/colors/pfs1410.jpg', '[]', '2022-03-10 21:23:09', '2022-03-10 21:23:09', NULL);
INSERT INTO `media_files` VALUES (200, 1, 'PFS1540', 19, 'image/jpeg', 7655, 'products/colors/pfs1540.jpg', '[]', '2022-03-10 21:23:10', '2022-03-10 21:23:10', NULL);
INSERT INTO `media_files` VALUES (201, 1, 'PFS1640', 19, 'image/jpeg', 6867, 'products/colors/pfs1640.jpg', '[]', '2022-03-10 21:23:10', '2022-03-10 21:23:10', NULL);
INSERT INTO `media_files` VALUES (202, 1, 'PFS1760', 19, 'image/jpeg', 2134, 'products/colors/pfs1760.jpg', '[]', '2022-03-10 21:23:10', '2022-03-10 21:23:10', NULL);
INSERT INTO `media_files` VALUES (203, 1, 'PFS1840', 19, 'image/jpeg', 6917, 'products/colors/pfs1840.jpg', '[]', '2022-03-10 21:23:10', '2022-03-10 21:23:10', NULL);
INSERT INTO `media_files` VALUES (204, 1, 'PFS1910', 19, 'image/jpeg', 5738, 'products/colors/pfs1910.jpg', '[]', '2022-03-10 21:23:11', '2022-03-10 21:23:11', NULL);
INSERT INTO `media_files` VALUES (205, 1, 'PFS2002', 19, 'image/jpeg', 7263, 'products/colors/pfs2002.jpg', '[]', '2022-03-10 21:23:11', '2022-03-10 21:23:11', NULL);
INSERT INTO `media_files` VALUES (206, 1, 'PFS2104', 19, 'image/jpeg', 8034, 'products/colors/pfs2104.jpg', '[]', '2022-03-10 21:23:11', '2022-03-10 21:23:11', NULL);
INSERT INTO `media_files` VALUES (207, 1, 'PFS2250', 19, 'image/jpeg', 7606, 'products/colors/pfs2250.jpg', '[]', '2022-03-10 21:23:11', '2022-03-10 21:23:11', NULL);
INSERT INTO `media_files` VALUES (208, 1, 'PFS2380', 19, 'image/jpeg', 7547, 'products/colors/pfs2380.jpg', '[]', '2022-03-10 21:23:12', '2022-03-10 21:23:12', NULL);
INSERT INTO `media_files` VALUES (209, 1, 'PFS2490', 19, 'image/jpeg', 6559, 'products/colors/pfs2490.jpg', '[]', '2022-03-10 21:23:12', '2022-03-10 21:23:12', NULL);
INSERT INTO `media_files` VALUES (210, 1, 'PFS2501', 19, 'image/jpeg', 5323, 'products/colors/pfs2501.jpg', '[]', '2022-03-10 21:23:13', '2022-03-10 21:23:13', NULL);
INSERT INTO `media_files` VALUES (211, 1, 'PFS2606', 19, 'image/jpeg', 7012, 'products/colors/pfs2606.jpg', '[]', '2022-03-10 21:23:13', '2022-03-10 21:23:13', NULL);
INSERT INTO `media_files` VALUES (212, 1, 'PFS2705', 19, 'image/jpeg', 6770, 'products/colors/pfs2705.jpg', '[]', '2022-03-10 21:23:14', '2022-03-10 21:23:14', NULL);
INSERT INTO `media_files` VALUES (213, 1, 'PFS2840', 19, 'image/jpeg', 10430, 'products/colors/pfs2840.jpg', '[]', '2022-03-10 21:23:14', '2022-03-10 21:23:14', NULL);
INSERT INTO `media_files` VALUES (214, 1, 'PFS2910', 19, 'image/jpeg', 8791, 'products/colors/pfs2910.jpg', '[]', '2022-03-10 21:23:14', '2022-03-10 21:23:14', NULL);
INSERT INTO `media_files` VALUES (215, 1, 'PFS3040', 19, 'image/jpeg', 9514, 'products/colors/pfs3040.jpg', '[]', '2022-03-10 21:23:15', '2022-03-10 21:23:15', NULL);
INSERT INTO `media_files` VALUES (216, 1, 'PFS3110', 19, 'image/jpeg', 6610, 'products/colors/pfs3110.jpg', '[]', '2022-03-10 21:23:15', '2022-03-10 21:23:15', NULL);
INSERT INTO `media_files` VALUES (217, 1, 'PFS3201', 19, 'image/jpeg', 6118, 'products/colors/pfs3201.jpg', '[]', '2022-03-10 21:23:15', '2022-03-10 21:23:15', NULL);
INSERT INTO `media_files` VALUES (218, 1, 'PFS3360', 19, 'image/jpeg', 2560, 'products/colors/pfs3360.jpg', '[]', '2022-03-10 21:23:16', '2022-03-10 21:23:16', NULL);
INSERT INTO `media_files` VALUES (219, 1, 'PFS3380', 19, 'image/jpeg', 8345, 'products/colors/pfs3380.jpg', '[]', '2022-03-10 21:23:16', '2022-03-10 21:23:16', NULL);
INSERT INTO `media_files` VALUES (220, 1, 'PFS3401', 19, 'image/jpeg', 3869, 'products/colors/pfs3401.jpg', '[]', '2022-03-10 21:23:16', '2022-03-10 21:23:16', NULL);
INSERT INTO `media_files` VALUES (221, 1, 'PFS3560', 19, 'image/jpeg', 6919, 'products/colors/pfs3560.jpg', '[]', '2022-03-10 21:23:16', '2022-03-10 21:23:16', NULL);
INSERT INTO `media_files` VALUES (222, 1, 'PFS3602', 19, 'image/jpeg', 7010, 'products/colors/pfs3602.jpg', '[]', '2022-03-10 21:23:17', '2022-03-10 21:23:17', NULL);
INSERT INTO `media_files` VALUES (223, 1, 'PFS3720', 19, 'image/jpeg', 9234, 'products/colors/pfs3720.jpg', '[]', '2022-03-10 21:23:17', '2022-03-10 21:23:17', NULL);
INSERT INTO `media_files` VALUES (224, 1, 'PFS3850', 19, 'image/jpeg', 8506, 'products/colors/pfs3850.jpg', '[]', '2022-03-10 21:23:17', '2022-03-10 21:23:17', NULL);
INSERT INTO `media_files` VALUES (225, 1, 'PFS4090', 19, 'image/jpeg', 6664, 'products/colors/pfs4090.jpg', '[]', '2022-03-10 21:23:18', '2022-03-10 21:23:18', NULL);
INSERT INTO `media_files` VALUES (226, 1, 'PFS4105', 19, 'image/jpeg', 7046, 'products/colors/pfs4105.jpg', '[]', '2022-03-10 21:23:18', '2022-03-10 21:23:18', NULL);
INSERT INTO `media_files` VALUES (227, 1, 'PFS4203', 19, 'image/jpeg', 6782, 'products/colors/pfs4203.jpg', '[]', '2022-03-10 21:23:18', '2022-03-10 21:23:18', NULL);
INSERT INTO `media_files` VALUES (228, 1, 'PFS4360', 19, 'image/jpeg', 4678, 'products/colors/pfs4360.jpg', '[]', '2022-03-10 21:23:18', '2022-03-10 21:23:18', NULL);
INSERT INTO `media_files` VALUES (229, 1, 'PFS4401', 19, 'image/jpeg', 6107, 'products/colors/pfs4401.jpg', '[]', '2022-03-10 21:23:19', '2022-03-10 21:23:19', NULL);
INSERT INTO `media_files` VALUES (230, 1, 'PFS3980', 19, 'image/jpeg', 7640, 'products/colors/pfs3980.jpg', '[]', '2022-03-11 01:22:46', '2022-03-11 01:22:46', NULL);
COMMIT;

-- ----------------------------
-- Table structure for media_folders
-- ----------------------------
DROP TABLE IF EXISTS `media_folders`;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of media_folders
-- ----------------------------
BEGIN;
INSERT INTO `media_folders` VALUES (1, 0, 'brands', 'brands', 0, '2021-09-14 22:28:06', '2021-09-14 22:28:06', NULL);
INSERT INTO `media_folders` VALUES (2, 0, 'product-categories', 'product-categories', 0, '2021-09-14 22:28:08', '2021-09-14 22:28:08', NULL);
INSERT INTO `media_folders` VALUES (3, 0, 'customers', 'customers', 0, '2021-09-14 22:28:11', '2021-09-14 22:28:11', NULL);
INSERT INTO `media_folders` VALUES (4, 0, 'products', 'products', 0, '2021-09-14 22:28:16', '2021-09-14 22:28:16', NULL);
INSERT INTO `media_folders` VALUES (5, 0, 'news', 'news', 0, '2021-09-14 22:29:03', '2021-09-14 22:29:03', NULL);
INSERT INTO `media_folders` VALUES (6, 0, 'testimonials', 'testimonials', 0, '2021-09-14 22:29:08', '2021-09-14 22:29:08', NULL);
INSERT INTO `media_folders` VALUES (7, 0, 'sliders', 'sliders', 0, '2021-09-14 22:29:09', '2021-09-14 22:29:09', NULL);
INSERT INTO `media_folders` VALUES (8, 0, 'general', 'general', 0, '2021-09-14 22:29:10', '2021-09-14 22:29:10', NULL);
INSERT INTO `media_folders` VALUES (9, 1, 'hero', 'hero', 0, '2021-11-24 18:40:05', '2021-11-24 18:40:05', NULL);
INSERT INTO `media_folders` VALUES (10, 1, 'blog', 'blog', 0, '2021-12-26 01:53:28', '2021-12-26 01:53:28', NULL);
INSERT INTO `media_folders` VALUES (11, 1, 'matboards', 'matboards', 4, '2022-02-26 23:09:06', '2022-02-26 23:09:06', NULL);
INSERT INTO `media_folders` VALUES (12, 1, 'matte', 'matte', 4, '2022-03-04 20:16:04', '2022-03-04 20:16:04', NULL);
INSERT INTO `media_folders` VALUES (13, 1, 'brio', 'brio', 4, '2022-03-04 22:20:27', '2022-03-04 22:20:27', NULL);
INSERT INTO `media_folders` VALUES (14, 1, 'koda', 'koda', 4, '2022-03-04 22:29:18', '2022-03-04 22:29:18', NULL);
INSERT INTO `media_folders` VALUES (15, 1, 'dipolma', 'dipolma', 4, '2022-03-04 22:32:21', '2022-03-04 22:32:21', NULL);
INSERT INTO `media_folders` VALUES (16, 1, 'classic', 'classic', 4, '2022-03-04 22:33:32', '2022-03-04 22:33:32', NULL);
INSERT INTO `media_folders` VALUES (17, 1, 'laquer', 'laquer', 4, '2022-03-04 22:35:10', '2022-03-04 22:35:10', NULL);
INSERT INTO `media_folders` VALUES (18, 1, 'natural', 'natural', 4, '2022-03-04 22:36:17', '2022-03-04 22:36:17', NULL);
INSERT INTO `media_folders` VALUES (19, 1, 'colors', 'colors', 4, '2022-03-10 21:22:48', '2022-03-10 21:22:48', NULL);
COMMIT;

-- ----------------------------
-- Table structure for media_settings
-- ----------------------------
DROP TABLE IF EXISTS `media_settings`;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for menu_locations
-- ----------------------------
DROP TABLE IF EXISTS `menu_locations`;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_locations
-- ----------------------------
BEGIN;
INSERT INTO `menu_locations` VALUES (1, 1, 'main-menu', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `menu_locations` VALUES (2, 3, 'footer-links', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
COMMIT;

-- ----------------------------
-- Table structure for menu_nodes
-- ----------------------------
DROP TABLE IF EXISTS `menu_nodes`;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_nodes
-- ----------------------------
BEGIN;
INSERT INTO `menu_nodes` VALUES (1, 1, 0, 0, NULL, '/', '', 0, 'Home', '', '_self', 0, '2021-09-14 22:29:10', '2021-12-26 01:39:34');
INSERT INTO `menu_nodes` VALUES (2, 1, 0, 0, NULL, '/products', '', 1, 'Shop', '', '_self', 0, '2021-09-14 22:29:10', '2021-12-26 01:39:34');
INSERT INTO `menu_nodes` VALUES (13, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', '', 5, 'Contact us', '', '_self', 0, '2021-09-14 22:29:10', '2021-12-26 01:41:02');
INSERT INTO `menu_nodes` VALUES (14, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/about-company', '', 0, 'About Us', '', '_self', 0, '2021-09-14 22:29:10', '2021-12-26 01:44:16');
INSERT INTO `menu_nodes` VALUES (15, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', '', 1, 'FAQ', '', '_self', 0, '2021-09-14 22:29:10', '2021-12-26 01:44:16');
INSERT INTO `menu_nodes` VALUES (18, 2, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', '', 3, 'Contact', '', '_self', 0, '2021-09-14 22:29:10', '2021-12-26 01:44:50');
INSERT INTO `menu_nodes` VALUES (55, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', '', 3, 'FAQ', '', '_self', 0, '2021-12-26 01:41:02', '2021-12-26 01:46:23');
INSERT INTO `menu_nodes` VALUES (56, 1, 0, 7, 'Botble\\Page\\Models\\Page', '/help', '', 4, 'Help', '', '_self', 0, '2021-12-26 01:41:02', '2021-12-26 01:46:23');
INSERT INTO `menu_nodes` VALUES (57, 2, 0, 7, 'Botble\\Page\\Models\\Page', '/help', NULL, 2, 'Help', NULL, '_self', 0, '2021-12-26 01:44:50', '2021-12-26 01:44:50');
INSERT INTO `menu_nodes` VALUES (58, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 2, 'Blog', NULL, '_self', 0, '2021-12-26 01:46:23', '2021-12-26 01:46:23');
INSERT INTO `menu_nodes` VALUES (59, 3, 0, 9, 'Botble\\Page\\Models\\Page', '/privacy-policy', NULL, 0, 'Privacy Policy', NULL, '_self', 0, '2021-12-29 23:19:58', '2021-12-29 23:19:58');
INSERT INTO `menu_nodes` VALUES (60, 3, 0, 10, 'Botble\\Page\\Models\\Page', '/terms-of-use', NULL, 1, 'Terms of Use', NULL, '_self', 0, '2021-12-29 23:19:58', '2021-12-29 23:19:58');
INSERT INTO `menu_nodes` VALUES (61, 4, 0, 4, 'Botble\\Blog\\Models\\Category', '/news/commercial', NULL, 0, 'Commercial', NULL, '_self', 0, '2022-01-11 15:48:47', '2022-01-11 15:48:47');
INSERT INTO `menu_nodes` VALUES (62, 4, 0, 1, 'Botble\\Blog\\Models\\Category', '/news/ecommerce', NULL, 1, 'Ecommerce', NULL, '_self', 0, '2022-01-11 15:48:47', '2022-01-11 15:48:47');
INSERT INTO `menu_nodes` VALUES (63, 4, 0, 3, 'Botble\\Blog\\Models\\Category', '/news/electronic', NULL, 2, 'Electronic', NULL, '_self', 0, '2022-01-11 15:48:47', '2022-01-11 15:48:47');
INSERT INTO `menu_nodes` VALUES (64, 4, 0, 2, 'Botble\\Blog\\Models\\Category', '/news/fashion', NULL, 3, 'Fashion', NULL, '_self', 0, '2022-01-11 15:48:47', '2022-01-11 15:48:47');
COMMIT;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` VALUES (1, 'Main Top Navigation', 'main-menu', 'published', '2021-09-14 22:29:10', '2021-12-26 01:39:49');
INSERT INTO `menus` VALUES (2, 'Footer Links', 'footer-menu', 'published', '2021-09-14 22:29:10', '2021-12-26 01:44:16');
INSERT INTO `menus` VALUES (3, 'Footer Bottom Links', 'footer-links', 'published', '2021-09-14 22:29:10', '2021-12-26 01:44:16');
INSERT INTO `menus` VALUES (4, 'Blog Categories', 'blog_categories', 'published', '2022-01-12 08:47:40', NULL);
COMMIT;

-- ----------------------------
-- Table structure for meta_boxes
-- ----------------------------
DROP TABLE IF EXISTS `meta_boxes`;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of meta_boxes
-- ----------------------------
BEGIN;
INSERT INTO `meta_boxes` VALUES (1, 'icon', '[\"flaticon-tv\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (2, 'icon', '[\"flaticon-responsive\"]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (3, 'icon', '[\"flaticon-headphones\"]', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (4, 'icon', '[\"flaticon-watch\"]', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (5, 'icon', '[\"flaticon-console\"]', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (6, 'icon', '[\"flaticon-camera\"]', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (7, 'icon', '[\"flaticon-music-system\"]', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (8, 'icon', '[\"flaticon-responsive\"]', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (9, 'icon', '[\"flaticon-plugins\"]', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (10, 'icon', '[\"flaticon-music-system\"]', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (11, 'icon', '[\"flaticon-monitor\"]', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (12, 'icon', '[\"flaticon-printer\"]', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (13, 'icon', '[\"flaticon-tv\"]', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (14, 'icon', '[\"flaticon-fax\"]', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (15, 'icon', '[\"flaticon-mouse\"]', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `meta_boxes` VALUES (16, 'button_text', '[\"Shop now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `meta_boxes` VALUES (17, 'button_text', '[\"Discover now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `meta_boxes` VALUES (18, 'button_text', '[\"Shop now\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `meta_boxes` VALUES (19, 'button_text', '[\"Mua ngay\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `meta_boxes` VALUES (20, 'button_text', '[\"Kh\\u00e1m ph\\u00e1 ngay\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `meta_boxes` VALUES (21, 'button_text', '[\"Mua ngay\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `meta_boxes` VALUES (22, 'icon', '[null]', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-25 18:59:37', '2021-12-25 18:59:37');
INSERT INTO `meta_boxes` VALUES (23, 'icon_image', '[null]', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-12-25 18:59:37', '2021-12-25 18:59:37');
INSERT INTO `meta_boxes` VALUES (24, 'icon', '[null]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-03-03 15:47:05', '2022-03-03 15:47:05');
INSERT INTO `meta_boxes` VALUES (25, 'icon_image', '[null]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-03-03 15:47:05', '2022-03-03 15:47:05');
INSERT INTO `meta_boxes` VALUES (26, 'icon_image', '[null]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-03-03 15:47:24', '2022-03-03 15:47:24');
INSERT INTO `meta_boxes` VALUES (27, 'icon', '[null]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-03-03 15:47:54', '2022-03-03 15:47:54');
INSERT INTO `meta_boxes` VALUES (28, 'icon_image', '[null]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2022-03-03 15:47:54', '2022-03-03 15:47:54');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2013_04_09_032329_create_base_tables', 1);
INSERT INTO `migrations` VALUES (2, '2013_04_09_062329_create_revisions_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (4, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (5, '2015_06_18_033822_create_blog_table', 1);
INSERT INTO `migrations` VALUES (6, '2015_06_29_025744_create_audit_history', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_10_230148_create_acl_tables', 1);
INSERT INTO `migrations` VALUES (8, '2016_06_14_230857_create_menus_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_06_17_091537_create_contacts_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_06_28_221418_create_pages_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_10_03_032336_create_languages_table', 1);
INSERT INTO `migrations` VALUES (12, '2016_10_05_074239_create_setting_table', 1);
INSERT INTO `migrations` VALUES (13, '2016_10_07_193005_create_translations_table', 1);
INSERT INTO `migrations` VALUES (14, '2016_11_28_032840_create_dashboard_widget_tables', 1);
INSERT INTO `migrations` VALUES (15, '2016_12_16_084601_create_widgets_table', 1);
INSERT INTO `migrations` VALUES (16, '2017_05_09_070343_create_media_tables', 1);
INSERT INTO `migrations` VALUES (17, '2017_05_18_080441_create_payment_tables', 1);
INSERT INTO `migrations` VALUES (18, '2017_07_11_140018_create_simple_slider_table', 1);
INSERT INTO `migrations` VALUES (19, '2017_10_24_154832_create_newsletter_table', 1);
INSERT INTO `migrations` VALUES (20, '2017_11_03_070450_create_slug_table', 1);
INSERT INTO `migrations` VALUES (21, '2018_07_09_214610_create_testimonial_table', 1);
INSERT INTO `migrations` VALUES (22, '2019_01_05_053554_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (23, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (24, '2020_03_05_041139_create_ecommerce_tables', 1);
INSERT INTO `migrations` VALUES (25, '2020_09_22_135635_update_taxes_table', 1);
INSERT INTO `migrations` VALUES (26, '2020_09_29_101006_add_views_into_ec_products_table', 1);
INSERT INTO `migrations` VALUES (27, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 1);
INSERT INTO `migrations` VALUES (28, '2020_10_06_073439_improve_ecommerce_database', 1);
INSERT INTO `migrations` VALUES (29, '2020_11_01_040415_update_table_ec_order_addresses', 1);
INSERT INTO `migrations` VALUES (30, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 1);
INSERT INTO `migrations` VALUES (31, '2020_11_18_150916_ads_create_ads_table', 1);
INSERT INTO `migrations` VALUES (32, '2020_11_30_015801_update_table_ec_product_categories', 1);
INSERT INTO `migrations` VALUES (33, '2021_01_01_044147_ecommerce_create_flash_sale_table', 1);
INSERT INTO `migrations` VALUES (34, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 1);
INSERT INTO `migrations` VALUES (35, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 1);
INSERT INTO `migrations` VALUES (36, '2021_02_16_092633_remove_default_value_for_author_type', 1);
INSERT INTO `migrations` VALUES (37, '2021_02_18_073505_update_table_ec_reviews', 1);
INSERT INTO `migrations` VALUES (38, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 1);
INSERT INTO `migrations` VALUES (39, '2021_03_10_025153_change_column_tax_amount', 1);
INSERT INTO `migrations` VALUES (40, '2021_03_20_033103_add_column_availability_to_table_ec_products', 1);
INSERT INTO `migrations` VALUES (41, '2021_03_27_144913_add_customer_type_into_table_payments', 1);
INSERT INTO `migrations` VALUES (42, '2021_04_28_074008_ecommerce_create_product_label_table', 1);
INSERT INTO `migrations` VALUES (43, '2021_05_24_034720_make_column_currency_nullable', 1);
INSERT INTO `migrations` VALUES (44, '2021_05_31_173037_ecommerce_create_ec_products_translations', 1);
INSERT INTO `migrations` VALUES (45, '2021_06_28_153141_correct_slugs_data', 1);
INSERT INTO `migrations` VALUES (46, '2021_07_18_101839_fix_old_theme_options', 1);
INSERT INTO `migrations` VALUES (47, '2021_08_09_161302_add_metadata_column_to_payments_table', 1);
INSERT INTO `migrations` VALUES (48, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 1);
INSERT INTO `migrations` VALUES (49, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 1);
INSERT INTO `migrations` VALUES (50, '2021_09_01_115151_remove_unused_fields_in_ec_products', 1);
INSERT INTO `migrations` VALUES (51, '2021_10_04_030050_add_column_created_by_to_table_ec_products', 2);
INSERT INTO `migrations` VALUES (52, '2021_10_05_122616_add_status_column_to_ec_customers_table', 2);
INSERT INTO `migrations` VALUES (53, '2021_10_19_020859_update_metadata_field', 3);
INSERT INTO `migrations` VALUES (54, '2021_10_25_021023_fix-priority-load-for-language-advanced', 4);
INSERT INTO `migrations` VALUES (55, '2021_09_09_235108_ecommerce_create_sizes_table', 5);
INSERT INTO `migrations` VALUES (56, '2021_09_10_133716_add_product_type', 6);
INSERT INTO `migrations` VALUES (57, '2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses', 7);
INSERT INTO `migrations` VALUES (58, '2022_02_27_025806_add_description_to_product_attributes', 7);
COMMIT;

-- ----------------------------
-- Table structure for newsletters
-- ----------------------------
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
INSERT INTO `pages` VALUES (1, 'Homepage', '<shortcode class=\"bb-shortcode\">[simple-slider key=\"home-slider\"][/simple-slider]</shortcode><shortcode class=\"bb-shortcode\">[frame-builder title=\"Design Your Frame\"][/frame-builder]</shortcode><shortcode class=\"bb-shortcode\">[product-collections title=\"Exclusive Products\"][/product-collections]</shortcode><shortcode class=\"bb-shortcode\">[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</shortcode><shortcode class=\"bb-shortcode\">[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</shortcode><shortcode class=\"bb-shortcode\">[testimonials title=\"Our Client Say!\"][/testimonials]</shortcode><shortcode class=\"bb-shortcode\">[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</shortcode><shortcode class=\"bb-shortcode\">[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</shortcode>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-09-14 22:29:10', '2022-02-22 22:04:19');
INSERT INTO `pages` VALUES (2, 'Contact us', '<p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `pages` VALUES (3, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', 0, NULL, 'published', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `pages` VALUES (4, 'About company', '<p>ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'And be quick about it,\' said Alice to herself, \'it would be so kind,\' Alice replied, so eagerly that the reason of that?\' \'In my youth,\' Father William replied to his son, \'I feared it might injure the brain; But, now that I\'m perfectly sure I can\'t tell you how the game was in the direction it pointed to, without trying to invent something!\' \'I--I\'m a little recovered from the Gryphon, the squeaking of the hall: in fact she was talking. Alice could.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-14 22:29:10', '2021-12-25 19:01:16');
INSERT INTO `pages` VALUES (5, 'FAQ', '<p>King. \'Nothing whatever,\' said Alice. \'Off with his head!\' or \'Off with his head!\' she said, as politely as she picked her way into that beautiful garden--how IS that to be no use going back to my jaw, Has lasted the rest were quite dry again, the cook was busily stirring the soup, and seemed to think that very few little girls of her skirt, upsetting all the while, and fighting for the first question, you know.\' \'Not at first, perhaps,\' said the Mock Turtle. \'And how many miles I\'ve fallen by.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `pages` VALUES (6, 'Resources', '<p>Gryphon replied very gravely. \'What else have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said the King. On this the whole pack of cards, after all. I needn\'t be afraid of them!\' \'And who are THESE?\' said the Mock Turtle with a whiting. Now you know.\' Alice had never before seen a cat without a great many more than that, if you don\'t even know what \"it\" means well enough, when I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-14 22:29:10', '2021-12-25 19:02:15');
INSERT INTO `pages` VALUES (7, 'Help', '<p>The master was an immense length of neck, which seemed to be sure; but I shall be a lesson to you to get dry again: they had to double themselves up and down looking for it, you know.\' Alice had never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole she thought it must be off, and Alice looked all round the.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-14 22:29:10', '2021-12-25 19:03:34');
INSERT INTO `pages` VALUES (8, 'Accessibility', '<shortcode class=\"bb-shortcode\">[all-brands][/all-brands]</shortcode>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-14 22:29:10', '2021-12-25 19:04:10');
INSERT INTO `pages` VALUES (9, 'Privacy Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-14 22:29:10', '2021-12-25 19:01:49');
INSERT INTO `pages` VALUES (10, 'Terms of Use', '<p><strong style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;font-style:normal;text-align:justify;word-spacing:0px;\">Lorem Ipsum</strong><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\"><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;&nbsp;</span></span></p>', 1, NULL, 'default', 0, NULL, 'published', '2021-12-25 19:05:37', '2021-12-27 16:34:07');
INSERT INTO `pages` VALUES (11, 'Shipping Information', '<p><strong style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:&quot;Open Sans&quot;, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;margin:0px;orphans:2;padding:0px;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Lorem Ipsum</strong><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\"><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></span></p>', 1, NULL, 'default', 0, NULL, 'published', '2021-12-25 19:05:53', '2021-12-25 19:05:53');
INSERT INTO `pages` VALUES (12, 'Returns/Exchanges', '<p><strong style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;font-style:normal;text-align:justify;word-spacing:0px;\">Lorem Ipsum</strong><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\"><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;</span></span></p>', 1, NULL, 'default', 0, NULL, 'published', '2021-12-25 19:06:16', '2021-12-25 19:07:18');
INSERT INTO `pages` VALUES (13, 'Sitemap', '<p><strong style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:&quot;Open Sans&quot;, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;margin:0px;orphans:2;padding:0px;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Lorem Ipsum</strong><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\"><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></span></p>', 1, NULL, 'default', 0, NULL, 'published', '2021-12-25 19:07:47', '2021-12-25 19:07:47');
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payments
-- ----------------------------
BEGIN;
INSERT INTO `payments` VALUES (1, 'USD', 0, 'L9SVF0V8VL', 'razorpay', NULL, 895.40, 1, 'completed', 'confirm', 2, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (2, 'USD', 0, 'H3POOSDSFD', 'cod', NULL, 692.35, 2, 'pending', 'confirm', 4, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (3, 'USD', 0, 'CB0BKYRFHK', 'stripe', NULL, 977.90, 3, 'completed', 'confirm', 11, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (4, 'USD', 0, 'UGSSPTVSZB', 'razorpay', NULL, 2022.90, 4, 'completed', 'confirm', 3, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (5, 'USD', 0, '3UC51DMJEC', 'stripe', NULL, 1134.60, 5, 'completed', 'confirm', 10, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (6, 'USD', 0, 'HOMB4EZ85R', 'stripe', NULL, 1941.50, 6, 'completed', 'confirm', 5, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (7, 'USD', 0, 'NTW2USU7MS', 'mollie', NULL, 839.93, 7, 'completed', 'confirm', 3, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (8, 'USD', 0, 'SDPADJUJFE', 'stripe', NULL, 1066.95, 8, 'completed', 'confirm', 6, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (9, 'USD', 0, 'G8HDXHMAR8', 'stripe', NULL, 716.40, 9, 'completed', 'confirm', 9, NULL, NULL, '2021-09-14 22:29:02', '2021-09-14 22:29:02', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (10, 'USD', 0, 'MF2EI5EKPZ', 'razorpay', NULL, 935.83, 10, 'completed', 'confirm', 9, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (11, 'USD', 0, 'JBFXK1TB3P', 'bank_transfer', NULL, 669.00, 11, 'pending', 'confirm', 7, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (12, 'USD', 0, 'I7PFBUFZMQ', 'razorpay', NULL, 1041.80, 12, 'completed', 'confirm', 4, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (13, 'USD', 0, 'CVYFA0LPNF', 'sslcommerz', NULL, 2213.40, 13, 'completed', 'confirm', 2, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (14, 'USD', 0, 'MVMTYXLBQ0', 'bank_transfer', NULL, 685.40, 14, 'pending', 'confirm', 10, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (15, 'USD', 0, 'LSP9OCYRHC', 'cod', NULL, 369.60, 15, 'pending', 'confirm', 4, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (16, 'USD', 0, 'O5EHJHYPIY', 'bank_transfer', NULL, 728.15, 16, 'pending', 'confirm', 11, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (17, 'USD', 0, '4LTAQK2MPD', 'bank_transfer', NULL, 1083.60, 17, 'pending', 'confirm', 10, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (18, 'USD', 0, 'LDOBVKXUKU', 'paystack', NULL, 1062.20, 18, 'completed', 'confirm', 4, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (19, 'USD', 0, 'HDBPCN75X9', 'razorpay', NULL, 725.03, 19, 'completed', 'confirm', 7, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
INSERT INTO `payments` VALUES (20, 'USD', 0, 'NSJWHEB47H', 'mollie', NULL, 1215.20, 20, 'completed', 'confirm', 6, NULL, NULL, '2021-09-14 22:29:03', '2021-09-14 22:29:03', 'Botble\\Ecommerce\\Models\\Customer', NULL);
COMMIT;

-- ----------------------------
-- Table structure for post_categories
-- ----------------------------
DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_categories
-- ----------------------------
BEGIN;
INSERT INTO `post_categories` VALUES (1, 1, 1);
INSERT INTO `post_categories` VALUES (2, 3, 1);
INSERT INTO `post_categories` VALUES (3, 2, 2);
INSERT INTO `post_categories` VALUES (4, 4, 2);
INSERT INTO `post_categories` VALUES (5, 1, 3);
INSERT INTO `post_categories` VALUES (6, 4, 3);
INSERT INTO `post_categories` VALUES (7, 1, 4);
INSERT INTO `post_categories` VALUES (8, 3, 4);
INSERT INTO `post_categories` VALUES (9, 1, 5);
INSERT INTO `post_categories` VALUES (10, 4, 5);
INSERT INTO `post_categories` VALUES (11, 2, 6);
INSERT INTO `post_categories` VALUES (12, 3, 6);
INSERT INTO `post_categories` VALUES (13, 1, 7);
INSERT INTO `post_categories` VALUES (14, 3, 7);
INSERT INTO `post_categories` VALUES (15, 1, 8);
INSERT INTO `post_categories` VALUES (16, 4, 8);
INSERT INTO `post_categories` VALUES (17, 1, 9);
INSERT INTO `post_categories` VALUES (18, 3, 9);
INSERT INTO `post_categories` VALUES (19, 2, 10);
INSERT INTO `post_categories` VALUES (20, 3, 10);
INSERT INTO `post_categories` VALUES (21, 1, 11);
INSERT INTO `post_categories` VALUES (22, 4, 11);
INSERT INTO `post_categories` VALUES (23, 6, 12);
INSERT INTO `post_categories` VALUES (24, 8, 12);
INSERT INTO `post_categories` VALUES (25, 5, 13);
INSERT INTO `post_categories` VALUES (26, 7, 13);
INSERT INTO `post_categories` VALUES (27, 6, 14);
INSERT INTO `post_categories` VALUES (28, 8, 14);
INSERT INTO `post_categories` VALUES (29, 6, 15);
INSERT INTO `post_categories` VALUES (30, 8, 15);
INSERT INTO `post_categories` VALUES (31, 6, 16);
INSERT INTO `post_categories` VALUES (32, 7, 16);
INSERT INTO `post_categories` VALUES (33, 6, 17);
INSERT INTO `post_categories` VALUES (34, 7, 17);
INSERT INTO `post_categories` VALUES (35, 6, 18);
INSERT INTO `post_categories` VALUES (36, 8, 18);
INSERT INTO `post_categories` VALUES (37, 5, 19);
INSERT INTO `post_categories` VALUES (38, 8, 19);
INSERT INTO `post_categories` VALUES (39, 5, 20);
INSERT INTO `post_categories` VALUES (40, 7, 20);
INSERT INTO `post_categories` VALUES (41, 5, 21);
INSERT INTO `post_categories` VALUES (42, 8, 21);
INSERT INTO `post_categories` VALUES (43, 6, 22);
INSERT INTO `post_categories` VALUES (44, 8, 22);
COMMIT;

-- ----------------------------
-- Table structure for post_tags
-- ----------------------------
DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_tags
-- ----------------------------
BEGIN;
INSERT INTO `post_tags` VALUES (1, 1, 1);
INSERT INTO `post_tags` VALUES (2, 2, 1);
INSERT INTO `post_tags` VALUES (3, 3, 1);
INSERT INTO `post_tags` VALUES (4, 4, 1);
INSERT INTO `post_tags` VALUES (5, 5, 1);
INSERT INTO `post_tags` VALUES (6, 1, 2);
INSERT INTO `post_tags` VALUES (7, 2, 2);
INSERT INTO `post_tags` VALUES (8, 3, 2);
INSERT INTO `post_tags` VALUES (9, 4, 2);
INSERT INTO `post_tags` VALUES (10, 5, 2);
INSERT INTO `post_tags` VALUES (11, 1, 3);
INSERT INTO `post_tags` VALUES (12, 2, 3);
INSERT INTO `post_tags` VALUES (13, 3, 3);
INSERT INTO `post_tags` VALUES (14, 4, 3);
INSERT INTO `post_tags` VALUES (15, 5, 3);
INSERT INTO `post_tags` VALUES (16, 1, 4);
INSERT INTO `post_tags` VALUES (17, 2, 4);
INSERT INTO `post_tags` VALUES (18, 3, 4);
INSERT INTO `post_tags` VALUES (19, 4, 4);
INSERT INTO `post_tags` VALUES (20, 5, 4);
INSERT INTO `post_tags` VALUES (21, 1, 5);
INSERT INTO `post_tags` VALUES (22, 2, 5);
INSERT INTO `post_tags` VALUES (23, 3, 5);
INSERT INTO `post_tags` VALUES (24, 4, 5);
INSERT INTO `post_tags` VALUES (25, 5, 5);
INSERT INTO `post_tags` VALUES (26, 1, 6);
INSERT INTO `post_tags` VALUES (27, 2, 6);
INSERT INTO `post_tags` VALUES (28, 3, 6);
INSERT INTO `post_tags` VALUES (29, 4, 6);
INSERT INTO `post_tags` VALUES (30, 5, 6);
INSERT INTO `post_tags` VALUES (31, 1, 7);
INSERT INTO `post_tags` VALUES (32, 2, 7);
INSERT INTO `post_tags` VALUES (33, 3, 7);
INSERT INTO `post_tags` VALUES (34, 4, 7);
INSERT INTO `post_tags` VALUES (35, 5, 7);
INSERT INTO `post_tags` VALUES (36, 1, 8);
INSERT INTO `post_tags` VALUES (37, 2, 8);
INSERT INTO `post_tags` VALUES (38, 3, 8);
INSERT INTO `post_tags` VALUES (39, 4, 8);
INSERT INTO `post_tags` VALUES (40, 5, 8);
INSERT INTO `post_tags` VALUES (41, 1, 9);
INSERT INTO `post_tags` VALUES (42, 2, 9);
INSERT INTO `post_tags` VALUES (43, 3, 9);
INSERT INTO `post_tags` VALUES (44, 4, 9);
INSERT INTO `post_tags` VALUES (45, 5, 9);
INSERT INTO `post_tags` VALUES (46, 1, 10);
INSERT INTO `post_tags` VALUES (47, 2, 10);
INSERT INTO `post_tags` VALUES (48, 3, 10);
INSERT INTO `post_tags` VALUES (49, 4, 10);
INSERT INTO `post_tags` VALUES (50, 5, 10);
INSERT INTO `post_tags` VALUES (51, 1, 11);
INSERT INTO `post_tags` VALUES (52, 2, 11);
INSERT INTO `post_tags` VALUES (53, 3, 11);
INSERT INTO `post_tags` VALUES (54, 4, 11);
INSERT INTO `post_tags` VALUES (55, 5, 11);
COMMIT;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` VALUES (1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'blog/people-ge36024794-1920.jpg', 538, NULL, '2021-09-14 22:29:08', '2022-01-11 16:09:24');
INSERT INTO `posts` VALUES (2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'blog/people-g66e2ebd7a-1920.jpg', 1311, NULL, '2021-09-14 22:29:08', '2021-12-26 01:54:12');
INSERT INTO `posts` VALUES (3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'blog/art-gallery-ge8c9359ce-1920.jpg', 796, NULL, '2021-09-14 22:29:08', '2021-12-26 01:54:25');
INSERT INTO `posts` VALUES (4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'blog/museum-gff1c7b007-1920.jpg', 1964, NULL, '2021-09-14 22:29:08', '2021-12-26 01:54:38');
INSERT INTO `posts` VALUES (5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 2207, NULL, '2021-09-14 22:29:08', '2021-12-22 23:39:53');
INSERT INTO `posts` VALUES (6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1189, NULL, '2021-09-14 22:29:08', '2021-12-22 23:41:00');
INSERT INTO `posts` VALUES (7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'general/b-1.jpg', 2086, NULL, '2021-09-14 22:29:08', '2021-12-26 01:55:04');
INSERT INTO `posts` VALUES (8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'general/b-1.jpg', 596, NULL, '2021-09-14 22:29:08', '2021-12-26 01:55:19');
INSERT INTO `posts` VALUES (9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'general/b-1.jpg', 324, NULL, '2021-09-14 22:29:08', '2021-12-26 01:55:31');
INSERT INTO `posts` VALUES (10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'general/b-1.jpg', 2484, NULL, '2021-09-14 22:29:08', '2021-12-26 01:55:44');
INSERT INTO `posts` VALUES (11, 'The litigants on the screen are not actors', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.jpg\" alt=\"f4\"></p><p><br>&nbsp;</p><p><em><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></em></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.jpg\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.jpg\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.jpg\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.jpg\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'general/b-1.jpg', 942, NULL, '2021-09-14 22:29:08', '2021-12-26 01:55:58');
COMMIT;

-- ----------------------------
-- Table structure for revisions
-- ----------------------------
DROP TABLE IF EXISTS `revisions`;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of revisions
-- ----------------------------
BEGIN;
INSERT INTO `revisions` VALUES (1, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'About us', 'About company', '2021-12-25 19:01:16', '2021-12-25 19:01:16');
INSERT INTO `revisions` VALUES (2, 'Botble\\Page\\Models\\Page', 9, 1, 'name', 'Cookie Policy', 'Privacy Policy', '2021-12-25 19:01:49', '2021-12-25 19:01:49');
INSERT INTO `revisions` VALUES (3, 'Botble\\Page\\Models\\Page', 6, 1, 'name', 'Location', 'Resources', '2021-12-25 19:02:15', '2021-12-25 19:02:15');
INSERT INTO `revisions` VALUES (4, 'Botble\\Page\\Models\\Page', 7, 1, 'name', 'Affiliates', 'Help', '2021-12-25 19:03:34', '2021-12-25 19:03:34');
INSERT INTO `revisions` VALUES (5, 'Botble\\Page\\Models\\Page', 8, 1, 'name', 'Brands', 'Accessibility', '2021-12-25 19:04:10', '2021-12-25 19:04:10');
INSERT INTO `revisions` VALUES (6, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', 'news/1.jpg', 'blog/people-ge36024794-1920.jpg', '2021-12-26 01:53:59', '2021-12-26 01:53:59');
INSERT INTO `revisions` VALUES (7, 'Botble\\Blog\\Models\\Post', 2, 1, 'image', 'news/2.jpg', 'blog/people-g66e2ebd7a-1920.jpg', '2021-12-26 01:54:12', '2021-12-26 01:54:12');
INSERT INTO `revisions` VALUES (8, 'Botble\\Blog\\Models\\Post', 3, 1, 'image', 'news/3.jpg', 'blog/art-gallery-ge8c9359ce-1920.jpg', '2021-12-26 01:54:25', '2021-12-26 01:54:25');
INSERT INTO `revisions` VALUES (9, 'Botble\\Blog\\Models\\Post', 4, 1, 'image', 'news/4.jpg', 'blog/museum-gff1c7b007-1920.jpg', '2021-12-26 01:54:38', '2021-12-26 01:54:38');
INSERT INTO `revisions` VALUES (10, 'Botble\\Blog\\Models\\Post', 7, 1, 'image', 'news/7.jpg', 'general/b-1.jpg', '2021-12-26 01:55:04', '2021-12-26 01:55:04');
INSERT INTO `revisions` VALUES (11, 'Botble\\Blog\\Models\\Post', 8, 1, 'image', 'news/8.jpg', 'general/b-1.jpg', '2021-12-26 01:55:19', '2021-12-26 01:55:19');
INSERT INTO `revisions` VALUES (12, 'Botble\\Blog\\Models\\Post', 9, 1, 'image', 'news/9.jpg', 'general/b-1.jpg', '2021-12-26 01:55:31', '2021-12-26 01:55:31');
INSERT INTO `revisions` VALUES (13, 'Botble\\Blog\\Models\\Post', 10, 1, 'image', 'news/10.jpg', 'general/b-1.jpg', '2021-12-26 01:55:44', '2021-12-26 01:55:44');
INSERT INTO `revisions` VALUES (14, 'Botble\\Blog\\Models\\Post', 11, 1, 'image', 'news/11.jpg', 'general/b-1.jpg', '2021-12-26 01:55:58', '2021-12-26 01:55:58');
INSERT INTO `revisions` VALUES (15, 'Botble\\Page\\Models\\Page', 10, 1, 'name', 'Terms of Use', 'Terms of Use2', '2021-12-27 16:34:01', '2021-12-27 16:34:01');
INSERT INTO `revisions` VALUES (16, 'Botble\\Page\\Models\\Page', 10, 1, 'name', 'Terms of Use2', 'Terms of Use', '2021-12-27 16:34:07', '2021-12-27 16:34:07');
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES (1, 'theme', 'pfs', NULL, NULL);
INSERT INTO `settings` VALUES (2, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"testimonial\",\"translation\"]', NULL, NULL);
INSERT INTO `settings` VALUES (3, 'payment_cod_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (4, 'payment_bank_transfer_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (5, 'language_hide_default', '1', NULL, NULL);
INSERT INTO `settings` VALUES (6, 'language_switcher_display', 'dropdown', NULL, NULL);
INSERT INTO `settings` VALUES (7, 'language_display', 'all', NULL, NULL);
INSERT INTO `settings` VALUES (8, 'language_hide_languages', '[]', NULL, NULL);
INSERT INTO `settings` VALUES (9, 'media_random_hash', '9a16b4b20e17469d730f5e08f1c1898b', NULL, NULL);
INSERT INTO `settings` VALUES (10, 'permalink-botble-blog-models-post', 'news', NULL, NULL);
INSERT INTO `settings` VALUES (11, 'permalink-botble-blog-models-category', 'news', NULL, NULL);
INSERT INTO `settings` VALUES (12, 'permalink-botble-blog-models-tag', 'tags', NULL, NULL);
INSERT INTO `settings` VALUES (13, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL);
INSERT INTO `settings` VALUES (14, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL);
INSERT INTO `settings` VALUES (15, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL);
INSERT INTO `settings` VALUES (16, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL);
INSERT INTO `settings` VALUES (20, 'New York', 'Singapore', NULL, NULL);
INSERT INTO `settings` VALUES (25, 'ecommerce_store_name', 'Shopwise', NULL, NULL);
INSERT INTO `settings` VALUES (26, 'ecommerce_store_phone', '123-456-7890', NULL, NULL);
INSERT INTO `settings` VALUES (27, 'ecommerce_store_address', '123 Street, Old Trafford', NULL, NULL);
INSERT INTO `settings` VALUES (28, 'ecommerce_store_state', 'New York', NULL, NULL);
INSERT INTO `settings` VALUES (29, 'ecommerce_store_city', 'New York', NULL, NULL);
INSERT INTO `settings` VALUES (30, 'ecommerce_store_country', 'US', NULL, NULL);
INSERT INTO `settings` VALUES (31, 'admin_logo', 'general/logo-1.jpg', NULL, NULL);
INSERT INTO `settings` VALUES (32, 'admin_favicon', 'general/favicon.png', NULL, NULL);
INSERT INTO `settings` VALUES (33, 'theme-shopwise-site_title', 'Shopwise - Laravel Ecommerce system', NULL, NULL);
INSERT INTO `settings` VALUES (34, 'theme-shopwise-copyright', '© 2021 Botble Technologies. All Rights Reserved.', NULL, NULL);
INSERT INTO `settings` VALUES (35, 'theme-shopwise-favicon', 'general/favicon.png', NULL, NULL);
INSERT INTO `settings` VALUES (36, 'theme-shopwise-logo', 'general/logo.png', NULL, NULL);
INSERT INTO `settings` VALUES (37, 'theme-shopwise-logo_footer', 'general/logo-light.png', NULL, NULL);
INSERT INTO `settings` VALUES (38, 'theme-shopwise-address', '123 Street, Old Trafford, NewYork, USA', NULL, NULL);
INSERT INTO `settings` VALUES (39, 'theme-shopwise-hotline', '123-456-7890', NULL, NULL);
INSERT INTO `settings` VALUES (40, 'theme-shopwise-email', 'info@sitename.com', NULL, NULL);
INSERT INTO `settings` VALUES (41, 'theme-shopwise-facebook', 'https://facebook.com', NULL, NULL);
INSERT INTO `settings` VALUES (42, 'theme-shopwise-twitter', 'https://twitter.com', NULL, NULL);
INSERT INTO `settings` VALUES (43, 'theme-shopwise-youtube', 'https://youtube.com', NULL, NULL);
INSERT INTO `settings` VALUES (44, 'theme-shopwise-instagram', 'https://instagram.com', NULL, NULL);
INSERT INTO `settings` VALUES (45, 'theme-shopwise-payment_methods', '[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]', NULL, NULL);
INSERT INTO `settings` VALUES (46, 'theme-shopwise-newsletter_image', 'general/newsletter.jpg', NULL, NULL);
INSERT INTO `settings` VALUES (47, 'theme-shopwise-homepage_id', '1', NULL, NULL);
INSERT INTO `settings` VALUES (48, 'theme-shopwise-blog_page_id', '3', NULL, NULL);
INSERT INTO `settings` VALUES (49, 'theme-shopwise-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL);
INSERT INTO `settings` VALUES (50, 'theme-shopwise-cookie_consent_learn_more_url', 'http://shopwise.local/cookie-policy', NULL, NULL);
INSERT INTO `settings` VALUES (51, 'theme-shopwise-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL);
INSERT INTO `settings` VALUES (53, 'theme-shopwise-vi-primary_font', 'Roboto Condensed', NULL, NULL);
INSERT INTO `settings` VALUES (54, 'theme-shopwise-vi-copyright', '© 2021 Botble Technologies. Tất cả quyền đã được bảo hộ.', NULL, NULL);
INSERT INTO `settings` VALUES (55, 'theme-shopwise-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL);
INSERT INTO `settings` VALUES (56, 'theme-shopwise-vi-cookie_consent_learn_more_url', 'http://shopwise.local/cookie-policy', NULL, NULL);
INSERT INTO `settings` VALUES (57, 'theme-shopwise-vi-cookie_consent_learn_more_text', 'Chính sách cookie', NULL, NULL);
INSERT INTO `settings` VALUES (58, 'theme-shopwise-vi-homepage_id', '10', NULL, NULL);
INSERT INTO `settings` VALUES (59, 'theme-shopwise-vi-blog_page_id', '12', NULL, NULL);
INSERT INTO `settings` VALUES (60, 'membership_authorization_at', '2022-03-03 15:46:26', NULL, NULL);
INSERT INTO `settings` VALUES (61, 'theme-pfs-site_title', 'Picture Frame Solutions', NULL, NULL);
INSERT INTO `settings` VALUES (62, 'theme-pfs-show_site_name', '0', NULL, NULL);
INSERT INTO `settings` VALUES (63, 'theme-pfs-seo_title', '', NULL, NULL);
INSERT INTO `settings` VALUES (64, 'theme-pfs-seo_description', '', NULL, NULL);
INSERT INTO `settings` VALUES (65, 'theme-pfs-seo_og_image', 'general/logo-1.jpg', NULL, NULL);
INSERT INTO `settings` VALUES (66, 'theme-pfs-copyright', '© 2021 Picture Frame Solutions. All right reserved.', NULL, NULL);
INSERT INTO `settings` VALUES (67, 'theme-pfs-preloader_enabled', 'yes', NULL, NULL);
INSERT INTO `settings` VALUES (68, 'theme-pfs-hotline', '', NULL, NULL);
INSERT INTO `settings` VALUES (69, 'theme-pfs-address', '1315 E. Watson Center Road Carson, CA 90745', NULL, NULL);
INSERT INTO `settings` VALUES (70, 'theme-pfs-email', 'hiromiurano@gmail.com', NULL, NULL);
INSERT INTO `settings` VALUES (71, 'theme-pfs-about-us', '', NULL, NULL);
INSERT INTO `settings` VALUES (72, 'theme-pfs-primary_font', 'Poppins', NULL, NULL);
INSERT INTO `settings` VALUES (73, 'theme-pfs-primary_color', '#FF324D', NULL, NULL);
INSERT INTO `settings` VALUES (74, 'theme-pfs-secondary_color', '#1D2224', NULL, NULL);
INSERT INTO `settings` VALUES (75, 'theme-pfs-enable_newsletter_popup', 'yes', NULL, NULL);
INSERT INTO `settings` VALUES (76, 'theme-pfs-newsletter_image', '', NULL, NULL);
INSERT INTO `settings` VALUES (77, 'theme-pfs-newsletter_show_after_seconds', '10', NULL, NULL);
INSERT INTO `settings` VALUES (78, 'theme-pfs-facebook_comment_enabled_in_product', 'no', NULL, NULL);
INSERT INTO `settings` VALUES (79, 'theme-pfs-favicon', '', NULL, NULL);
INSERT INTO `settings` VALUES (80, 'theme-pfs-logo', 'general/logo-1.jpg', NULL, NULL);
INSERT INTO `settings` VALUES (81, 'theme-pfs-logo_footer', 'general/logo-1.jpg', NULL, NULL);
INSERT INTO `settings` VALUES (82, 'theme-pfs-facebook', 'https://facebook.com', NULL, NULL);
INSERT INTO `settings` VALUES (83, 'theme-pfs-twitter', 'https://twitter.com', NULL, NULL);
INSERT INTO `settings` VALUES (84, 'theme-pfs-youtube', 'https://youtube.com', NULL, NULL);
INSERT INTO `settings` VALUES (85, 'theme-pfs-instagram', 'https://instagram.com', NULL, NULL);
INSERT INTO `settings` VALUES (86, 'theme-pfs-enable_sticky_header', 'yes', NULL, NULL);
INSERT INTO `settings` VALUES (87, 'theme-pfs-collapsing_product_categories_on_homepage', 'no', NULL, NULL);
INSERT INTO `settings` VALUES (88, 'theme-pfs-facebook_chat_enabled', 'no', NULL, NULL);
INSERT INTO `settings` VALUES (89, 'theme-pfs-facebook_page_id', '', NULL, NULL);
INSERT INTO `settings` VALUES (90, 'theme-pfs-facebook_comment_enabled_in_post', 'no', NULL, NULL);
INSERT INTO `settings` VALUES (91, 'theme-pfs-facebook_app_id', '', NULL, NULL);
INSERT INTO `settings` VALUES (92, 'theme-pfs-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, NULL);
INSERT INTO `settings` VALUES (93, 'theme-pfs-blog_page_id', '3', NULL, NULL);
INSERT INTO `settings` VALUES (94, 'theme-pfs-number_of_posts_in_a_category', '12', NULL, NULL);
INSERT INTO `settings` VALUES (95, 'theme-pfs-number_of_posts_in_a_tag', '12', NULL, NULL);
INSERT INTO `settings` VALUES (96, 'theme-pfs-payment_methods', '[null]', NULL, NULL);
INSERT INTO `settings` VALUES (97, 'theme-pfs-number_of_products_per_page', '12', NULL, NULL);
INSERT INTO `settings` VALUES (98, 'theme-pfs-number_of_cross_sale_product', '4', NULL, NULL);
INSERT INTO `settings` VALUES (99, 'theme-pfs-max_filter_price', '100000', NULL, NULL);
INSERT INTO `settings` VALUES (100, 'theme-pfs-logo_in_the_checkout_page', NULL, NULL, NULL);
INSERT INTO `settings` VALUES (101, 'theme-pfs-logo_in_invoices', NULL, NULL, NULL);
INSERT INTO `settings` VALUES (102, 'theme-pfs-homepage_id', '1', NULL, NULL);
INSERT INTO `settings` VALUES (103, 'theme-pfs-cookie_consent_enable', 'yes', NULL, NULL);
INSERT INTO `settings` VALUES (104, 'theme-pfs-cookie_consent_style', 'full-width', NULL, NULL);
INSERT INTO `settings` VALUES (105, 'theme-pfs-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, NULL);
INSERT INTO `settings` VALUES (106, 'theme-pfs-cookie_consent_button_text', 'Allow cookies', NULL, NULL);
INSERT INTO `settings` VALUES (107, 'theme-pfs-cookie_consent_learn_more_url', '', NULL, NULL);
INSERT INTO `settings` VALUES (108, 'theme-pfs-cookie_consent_learn_more_text', '', NULL, NULL);
INSERT INTO `settings` VALUES (109, 'theme-pfs-cookie_consent_background_color', '#000000', NULL, NULL);
INSERT INTO `settings` VALUES (110, 'theme-pfs-cookie_consent_text_color', '#FFFFFF', NULL, NULL);
INSERT INTO `settings` VALUES (111, 'theme-pfs-cookie_consent_max_width', '1170', NULL, NULL);
INSERT INTO `settings` VALUES (112, 'admin_email', '[]', NULL, NULL);
INSERT INTO `settings` VALUES (113, 'time_zone', 'America/Los_Angeles', NULL, NULL);
INSERT INTO `settings` VALUES (114, 'locale_direction', 'ltr', NULL, NULL);
INSERT INTO `settings` VALUES (115, 'enable_send_error_reporting_via_email', '0', NULL, NULL);
INSERT INTO `settings` VALUES (116, 'login_screen_backgrounds', '[]', NULL, NULL);
INSERT INTO `settings` VALUES (117, 'admin_title', 'PictureFrameSolutions', NULL, NULL);
INSERT INTO `settings` VALUES (118, 'rich_editor', 'ckeditor', NULL, NULL);
INSERT INTO `settings` VALUES (119, 'enable_change_admin_theme', '0', NULL, NULL);
INSERT INTO `settings` VALUES (120, 'enable_cache', '0', NULL, NULL);
INSERT INTO `settings` VALUES (121, 'cache_time', '10', NULL, NULL);
INSERT INTO `settings` VALUES (122, 'cache_admin_menu_enable', '0', NULL, NULL);
INSERT INTO `settings` VALUES (123, 'google_site_verification', '', NULL, NULL);
INSERT INTO `settings` VALUES (124, 'cache_time_site_map', '3600', NULL, NULL);
INSERT INTO `settings` VALUES (125, 'show_admin_bar', '1', NULL, NULL);
INSERT INTO `settings` VALUES (126, 'google_analytics', 'UA-201062590-1', NULL, NULL);
INSERT INTO `settings` VALUES (127, 'analytics_view_id', '246101760', NULL, NULL);
INSERT INTO `settings` VALUES (128, 'analytics_service_account_credentials', '{\r\n  \"type\": \"service_account\",\r\n  \"project_id\": \"pictureframesolutions\",\r\n  \"private_key_id\": \"a9f045d1ad8530225b47c29ab77f7fd277317f7b\",\r\n  \"private_key\": \"-----BEGIN PRIVATE KEY-----\\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDHpKwRVeJGWjJz\\nK52gnLSvOvOtG32ThMxWUmJvb1dHJFyvkHxX2sLEz9heBexB3+WRVRQMHpS7ru8n\\nWABANS4NhlBUSdzT0beQPTmsFUcuKy2FNXkiSqz8vrYf3p1I+7rzsrsequvDzK9j\\n7T+6LcQTGUh4eC8ATJWmsLATg6KZ2lyq/NGzyyi1jEok2IOG33qYP9U08PMAEMNK\\njwJ98NTXRQv5YO8fMfZbjWr/l8zpfvXvb+HkIwb1ytwctjTILY5EEKeJ0G0MmMJC\\nhOkQTorUgSKvAGhNHKdMhI2PQa7HwzZLp2cCOwMwJLBRpKznRisbBZlnnNYf8J/t\\nstSbXcgRAgMBAAECggEAWgQEN17HgxwZIje4v1nY2CeXBmbeRJz8ezFzQ7Zqnl+l\\nUN2vSveOmSnz71TxVTRsMI6xVtOVEVjLaSxzFIBF7wAwCQkywekNwMHyVoZTjVwX\\njrfxEcak3+LngFAiD+28ujPMzgOYATUxobcv5DTNcyUTuYnK+3IMideh1HKmZoKz\\noMjqbyCIJNIlcATMU+k+tNsJ6ZySihL63uM2TMFRC6GXNeMwS2LWZMV2gKS0prow\\n+5N2gsHWa57Tv2d50Cjeyn056wSLJPVpIj6DEV7l02dwl9oO5zrVce3r27AURP0q\\nb+hDohWsBMfwVPXEUSX6Z/mob2uLiQu6Rw4Q48il/wKBgQDy3An5SNxgxBkmrhn0\\nddGCHpYmYcZ2nXBtD6ZolKoeO8d4vXlv+L/DlYP3r6KjdmKEy0fWY01o/kWEVajD\\nsvWk0Klq/vLrcuFI9q61feunJRO9fOymi4JQAFOjQaIhet++fw1XSrsvOBKN39tO\\nr/GLC0D1uj8pQkwNualbL9CG2wKBgQDScgY4IGbMKMEsELED0UhOBpa1Kko0qe41\\nY2EMGHOw9HeTu3p96SEof3Cbm/6pw6gHlokrfbZsP3FIqqFUM8FiNigxisdpwRz4\\nK7qSMd8klsyaIYdZzSCmDNzRHQSC9/dBgT/4VMf/cC05X4TWgRaka3GoUNhRyU/U\\n0F2Yv5YygwKBgQCvwNXm9femf8PD3lMiOvF3vTLka/X4eU+XXbAMFypV3uUoV9a+\\nVcJRhK6QXSbSLSZ2+7XtTMgEp58fee48UhK7R9aTfBXIlsa6yur8pTgZKhfzFakd\\njfCsfNAKYcE3gXjSn5fECG0WavniepJ3i5S+D1Lfgf2bmkL329jYCO5b6QKBgCYX\\n28ZXHyR/kBAA6XnubS8qhCdBA3Oq+uKRHaUJ3A9BAVAtlIusIoNpJiIUx7FFKGpP\\nNn8330iS51enA1Lxl2TGttnY7CXZffvyNnB2NJUz8s9HmG+J8Qn9tA7qOMHYTtp9\\noe26swUq8hS7lJkbftS+WjGEiNOtJBU6rmaS74YvAoGBAIgysE8B1d1J9yeoaNZn\\nJ2PdQDcWyYgokdgtvjQDhaEbMymVTex7mAurKL3A/LTcdrSliyCjPYCOEAiNin31\\nB4YVIvWF59DOBN+Hw6ZlNyPLS8UCnnvEm1YViGf+eW+pueKySd4CmeiCmzAop1qv\\n+Qr8cEgq6U/Hcci23RKvXlWN\\n-----END PRIVATE KEY-----\\n\",\r\n  \"client_email\": \"pictureframesolutions@pictureframesolutions.iam.gserviceaccount.com\",\r\n  \"client_id\": \"114568484327116208219\",\r\n  \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",\r\n  \"token_uri\": \"https://oauth2.googleapis.com/token\",\r\n  \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",\r\n  \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/pictureframesolutions%40pictureframesolutions.iam.gserviceaccount.com\"\r\n}', NULL, NULL);
INSERT INTO `settings` VALUES (129, 'newsletter_mailchimp_api_key', '', NULL, NULL);
INSERT INTO `settings` VALUES (130, 'newsletter_mailchimp_list_id', '', NULL, NULL);
INSERT INTO `settings` VALUES (131, 'newsletter_sendgrid_api_key', '', NULL, NULL);
INSERT INTO `settings` VALUES (132, 'newsletter_sendgrid_list_id', '', NULL, NULL);
INSERT INTO `settings` VALUES (133, 'enable_captcha', '0', NULL, NULL);
INSERT INTO `settings` VALUES (134, 'captcha_type', 'v2', NULL, NULL);
INSERT INTO `settings` VALUES (135, 'captcha_hide_badge', '0', NULL, NULL);
INSERT INTO `settings` VALUES (136, 'captcha_site_key', '', NULL, NULL);
INSERT INTO `settings` VALUES (137, 'captcha_secret', '', NULL, NULL);
INSERT INTO `settings` VALUES (138, 'simple_slider_using_assets', '1', NULL, NULL);
INSERT INTO `settings` VALUES (139, 'locale', 'en', NULL, NULL);
INSERT INTO `settings` VALUES (140, 'default_admin_theme', 'darkblue', NULL, NULL);
INSERT INTO `settings` VALUES (141, 'admin_locale_direction', 'ltr', NULL, NULL);
INSERT INTO `settings` VALUES (142, 'email_driver', 'postmark', NULL, NULL);
INSERT INTO `settings` VALUES (143, 'email_port', '587', NULL, NULL);
INSERT INTO `settings` VALUES (144, 'email_host', 'smtp.mailgun.org', NULL, NULL);
INSERT INTO `settings` VALUES (145, 'email_username', '', NULL, NULL);
INSERT INTO `settings` VALUES (146, 'email_password', '', NULL, NULL);
INSERT INTO `settings` VALUES (147, 'email_encryption', 'tls', NULL, NULL);
INSERT INTO `settings` VALUES (148, 'email_mail_gun_domain', '', NULL, NULL);
INSERT INTO `settings` VALUES (149, 'email_mail_gun_secret', '', NULL, NULL);
INSERT INTO `settings` VALUES (150, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, NULL);
INSERT INTO `settings` VALUES (151, 'email_ses_key', '', NULL, NULL);
INSERT INTO `settings` VALUES (152, 'email_ses_secret', '', NULL, NULL);
INSERT INTO `settings` VALUES (153, 'email_ses_region', 'us-east-1', NULL, NULL);
INSERT INTO `settings` VALUES (154, 'email_postmark_token', '658adbeb-b3ec-49c4-9f99-da9e1913b490', NULL, NULL);
INSERT INTO `settings` VALUES (155, 'email_sendmail_path', '/usr/sbin/sendmail -bs', NULL, NULL);
INSERT INTO `settings` VALUES (156, 'email_log_channel', '', NULL, NULL);
INSERT INTO `settings` VALUES (157, 'email_from_name', 'Hiromi Urano', NULL, NULL);
INSERT INTO `settings` VALUES (158, 'email_from_address', 'info@nextitinnovations.com', NULL, NULL);
INSERT INTO `settings` VALUES (159, 'using_queue_to_send_mail', '0', NULL, NULL);
INSERT INTO `settings` VALUES (160, 'plugins_ecommerce_welcome_status', '0', NULL, NULL);
INSERT INTO `settings` VALUES (161, 'plugins_ecommerce_customer_cancel_order_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (162, 'plugins_ecommerce_customer_delivery_order_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (163, 'plugins_ecommerce_order_confirm_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (164, 'plugins_ecommerce_order_confirm_payment_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (165, 'plugins_ecommerce_order_recover_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (166, 'plugins_contact_notice_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (167, 'plugins_newsletter_subscriber_email_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (168, 'plugins_newsletter_admin_email_status', '1', NULL, NULL);
INSERT INTO `settings` VALUES (169, 'media_driver', 'public', NULL, NULL);
INSERT INTO `settings` VALUES (170, 'media_aws_access_key_id', 'AKIAY26PW7PPIZVFNZWY', NULL, NULL);
INSERT INTO `settings` VALUES (171, 'media_aws_secret_key', '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', NULL, NULL);
INSERT INTO `settings` VALUES (172, 'media_aws_default_region', 'us-east-2b', NULL, NULL);
INSERT INTO `settings` VALUES (173, 'media_aws_bucket', 'pictureframe-stg', NULL, NULL);
INSERT INTO `settings` VALUES (174, 'media_aws_url', 'https://d1dkkhat2dm6zc.cloudfront.net', NULL, NULL);
INSERT INTO `settings` VALUES (175, 'media_do_spaces_access_key_id', '', NULL, NULL);
INSERT INTO `settings` VALUES (176, 'media_do_spaces_secret_key', '', NULL, NULL);
INSERT INTO `settings` VALUES (177, 'media_do_spaces_default_region', '', NULL, NULL);
INSERT INTO `settings` VALUES (178, 'media_do_spaces_bucket', '', NULL, NULL);
INSERT INTO `settings` VALUES (179, 'media_do_spaces_endpoint', '', NULL, NULL);
INSERT INTO `settings` VALUES (180, 'media_do_spaces_cdn_enabled', '0', NULL, NULL);
INSERT INTO `settings` VALUES (181, 'media_do_spaces_cdn_custom_domain', '', NULL, NULL);
INSERT INTO `settings` VALUES (182, 'media_wasabi_access_key_id', '', NULL, NULL);
INSERT INTO `settings` VALUES (183, 'media_wasabi_secret_key', '', NULL, NULL);
INSERT INTO `settings` VALUES (184, 'media_wasabi_default_region', '', NULL, NULL);
INSERT INTO `settings` VALUES (185, 'media_wasabi_bucket', '', NULL, NULL);
INSERT INTO `settings` VALUES (186, 'media_wasabi_root', '/', NULL, NULL);
INSERT INTO `settings` VALUES (187, 'media_bunnycdn_hostname', '', NULL, NULL);
INSERT INTO `settings` VALUES (188, 'media_bunnycdn_zone', '', NULL, NULL);
INSERT INTO `settings` VALUES (189, 'media_bunnycdn_key', '', NULL, NULL);
INSERT INTO `settings` VALUES (190, 'media_bunnycdn_region', '', NULL, NULL);
INSERT INTO `settings` VALUES (191, 'media_turn_off_automatic_url_translation_into_latin', '1', NULL, NULL);
INSERT INTO `settings` VALUES (192, 'media_default_placeholder_image', '', NULL, NULL);
INSERT INTO `settings` VALUES (193, 'media_chunk_enabled', '0', NULL, NULL);
INSERT INTO `settings` VALUES (194, 'media_chunk_size', '1048576', NULL, NULL);
INSERT INTO `settings` VALUES (195, 'media_max_file_size', '1048576', NULL, NULL);
INSERT INTO `settings` VALUES (196, 'media_watermark_enabled', '0', NULL, NULL);
INSERT INTO `settings` VALUES (197, 'media_watermark_source', '', NULL, NULL);
INSERT INTO `settings` VALUES (198, 'media_watermark_size', '10', NULL, NULL);
INSERT INTO `settings` VALUES (199, 'watermark_opacity', '70', NULL, NULL);
INSERT INTO `settings` VALUES (200, 'media_watermark_position', 'bottom-right', NULL, NULL);
INSERT INTO `settings` VALUES (201, 'watermark_position_x', '10', NULL, NULL);
INSERT INTO `settings` VALUES (202, 'watermark_position_y', '10', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for simple_slider_items
-- ----------------------------
DROP TABLE IF EXISTS `simple_slider_items`;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of simple_slider_items
-- ----------------------------
BEGIN;
INSERT INTO `simple_slider_items` VALUES (1, 1, 'Willow', 'hero/slide-willow-1.jpg', NULL, 'Get up to 50% off Today Only!', 1, '2021-09-14 22:29:09', '2021-12-25 18:57:02');
INSERT INTO `simple_slider_items` VALUES (2, 1, 'Armour', 'hero/slide-armour-1.jpg', NULL, '50% off in all products', 2, '2021-09-14 22:29:09', '2021-12-25 18:57:23');
INSERT INTO `simple_slider_items` VALUES (3, 1, 'Opus', 'hero/slide-opus-1.jpg', NULL, 'Taking your Viewing Experience to Next Level', 3, '2021-09-14 22:29:10', '2021-12-25 18:57:40');
INSERT INTO `simple_slider_items` VALUES (4, 2, 'Thời trang Nam', 'sliders/1.jpg', NULL, 'Được giảm giá tới 50% Chỉ hôm nay!', 1, '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `simple_slider_items` VALUES (5, 2, 'Thời trang Nữ', 'sliders/2.jpg', NULL, 'Khuyến mãi 50% tất cả sản phẩm', 2, '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `simple_slider_items` VALUES (6, 2, 'Khuyến mãi hè', 'sliders/3.jpg', NULL, 'Nâng trải nghiệm xem của bạn lên cấp độ tiếp theo', 3, '2021-09-14 22:29:10', '2021-09-14 22:29:10');
COMMIT;

-- ----------------------------
-- Table structure for simple_sliders
-- ----------------------------
DROP TABLE IF EXISTS `simple_sliders`;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of simple_sliders
-- ----------------------------
BEGIN;
INSERT INTO `simple_sliders` VALUES (1, 'Home slider', 'home-slider', NULL, 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `simple_sliders` VALUES (2, 'Slider trang chủ', 'slider-trang-chu', NULL, 'published', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
COMMIT;

-- ----------------------------
-- Table structure for slugs
-- ----------------------------
DROP TABLE IF EXISTS `slugs`;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of slugs
-- ----------------------------
BEGIN;
INSERT INTO `slugs` VALUES (1, 'fashion-live', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-14 22:28:08', '2021-09-14 22:28:08');
INSERT INTO `slugs` VALUES (2, 'hand-crafted', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-14 22:28:08', '2021-09-14 22:28:08');
INSERT INTO `slugs` VALUES (3, 'mestonix', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-14 22:28:08', '2021-09-14 22:28:08');
INSERT INTO `slugs` VALUES (4, 'sunshine', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-14 22:28:08', '2021-09-14 22:28:08');
INSERT INTO `slugs` VALUES (5, 'pure', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-14 22:28:08', '2021-09-14 22:28:08');
INSERT INTO `slugs` VALUES (6, 'anfold', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-14 22:28:08', '2021-09-14 22:28:08');
INSERT INTO `slugs` VALUES (7, 'automotive', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-14 22:28:08', '2021-09-14 22:28:08');
INSERT INTO `slugs` VALUES (8, 'moulding', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2022-03-03 15:47:24');
INSERT INTO `slugs` VALUES (9, 'matboard', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2022-03-03 15:47:05');
INSERT INTO `slugs` VALUES (10, 'plexi-glass', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2022-03-03 15:47:54');
INSERT INTO `slugs` VALUES (11, 'camera-photos-videos', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (12, 'cellphones-accessories', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (13, 'headphones', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (14, 'videos-games', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (15, 'wireless-speakers', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (16, 'office-electronic', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (17, 'mobile', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (18, 'digital-cables', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (19, 'audio-video-cables', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (20, 'batteries', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (21, 'headphone', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (22, 'computer-tablets', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (23, 'laptop', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (24, 'monitors', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (25, 'computer-components', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (26, 'watches', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (27, 'drive-storages', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (28, 'gaming-laptop', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (29, 'security-protection', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (30, 'accessories', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (31, 'game', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (32, 'camera', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (33, 'audio', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (34, 'mobile-tablet', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (35, 'accessories', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (36, 'home-audio-theater', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (37, 'tv-smart-box', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (38, 'printer', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (39, 'computer', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (40, 'fax-machine', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (41, 'mouse', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-14 22:28:11', '2021-09-14 22:28:11');
INSERT INTO `slugs` VALUES (42, 'matte', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2022-03-04 22:19:41');
INSERT INTO `slugs` VALUES (43, 'headphone-ultra-bass', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (44, 'boxed-bluetooth-headphone', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (45, 'brio', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2022-03-08 16:10:37');
INSERT INTO `slugs` VALUES (46, 'camera-hikvision-hk-35vs8', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (47, 'camera-samsung-ss-24', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (48, 'leather-watch-band', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (49, 'apple-iphone-13-plus', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (50, 'macbook-pro-2015', 9, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (51, 'macbook-air-12-inch', 10, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (52, 'koda', 11, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2022-03-04 22:28:47');
INSERT INTO `slugs` VALUES (53, 'macbook-pro-13-inch', 12, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (54, 'apple-keyboard', 13, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (56, 'hand-playstation', 15, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (57, 'apple-airpods-serial-3', 16, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (58, 'cool-smart-watches', 17, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (59, 'black-smart-watches', 18, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (60, 'leather-watch-band-serial-3', 19, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (61, 'dipolma', 20, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2022-03-04 22:32:10');
INSERT INTO `slugs` VALUES (62, 'historic-alarm-clock', 21, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (63, 'black-glasses', 22, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (64, 'phillips-mouse', 23, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (65, 'gaming-keyboard', 24, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (66, 'dual-camera-20mp', 25, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (67, 'smart-watches', 26, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (68, 'beat-headphone', 27, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (69, 'red-black-headphone', 28, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (70, 'audio-equipment', 29, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (71, 'smart-televisions', 30, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (72, 'samsung-smart-tv', 31, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-14 22:29:01', '2021-09-14 22:29:01');
INSERT INTO `slugs` VALUES (73, 'electronic', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-14 22:29:02', '2021-09-14 22:29:02');
INSERT INTO `slugs` VALUES (74, 'mobile', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-14 22:29:02', '2021-09-14 22:29:02');
INSERT INTO `slugs` VALUES (75, 'iphone', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-14 22:29:02', '2021-09-14 22:29:02');
INSERT INTO `slugs` VALUES (76, 'printer', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-14 22:29:02', '2021-09-14 22:29:02');
INSERT INTO `slugs` VALUES (77, 'office', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-14 22:29:02', '2021-09-14 22:29:02');
INSERT INTO `slugs` VALUES (78, 'it', 6, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-14 22:29:02', '2021-09-14 22:29:02');
INSERT INTO `slugs` VALUES (79, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (80, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (81, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (82, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (83, 'thuong-mai-dien-tu', 5, 'Botble\\Blog\\Models\\Category', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (84, 'fashion', 6, 'Botble\\Blog\\Models\\Category', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (85, 'electronic', 7, 'Botble\\Blog\\Models\\Category', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (86, 'thuong-mai', 8, 'Botble\\Blog\\Models\\Category', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (87, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (88, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (89, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (90, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (91, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (92, 'chung', 6, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (93, 'thiet-ke', 7, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (94, 'thoi-trang', 8, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (95, 'thuong-hieu', 9, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (96, 'hien-dai', 10, 'Botble\\Blog\\Models\\Tag', 'tags', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (97, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (98, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (99, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (100, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (101, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (102, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (103, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (104, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (105, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (106, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (107, 'the-litigants-on-the-screen-are-not-actors', 11, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (108, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 12, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (109, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 13, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (110, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 14, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (111, 'cach-phoi-mau-tui-xach-cua-ban-voi-trang-phuc', 15, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (112, 'cach-cham-soc-tui-da', 16, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (113, 'chung-toi-dang-nghien-ngam-10-xu-huong-tui-lon-nhat-cua-mua-he', 17, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (114, 'nhung-pham-chat-can-thiet-cua-am-nhac-thanh-cong-cao', 18, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (115, '9-dieu-toi-thich-khi-cao-dau', 19, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (116, 'tai-sao-lam-viec-theo-nhom-thuc-su-bien-giac-mo-thanh-cong', 20, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (117, 'the-gioi-phuc-vu-cho-nhung-nguoi-trung-binh', 21, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (118, 'cac-duong-su-tren-man-hinh-khong-phai-la-dien-vien', 22, 'Botble\\Blog\\Models\\Post', 'news', '2021-09-14 22:29:08', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (119, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (120, 'contact-us', 2, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (121, 'blog', 3, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (122, 'about-company', 4, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (123, 'faq', 5, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (124, 'resources', 6, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (125, 'help', 7, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (126, 'accessibility', 8, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-12-25 19:04:10');
INSERT INTO `slugs` VALUES (127, 'privacy-policy', 9, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (128, 'terms-of-use', 10, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (129, 'shipping-information', 11, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (130, 'returns-exchanges', 12, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (131, 'sitemap', 13, 'Botble\\Page\\Models\\Page', '', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `slugs` VALUES (132, 'classic', 112, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-27 16:46:12', '2021-12-27 16:46:12');
INSERT INTO `slugs` VALUES (133, 'laquer', 119, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-27 16:54:25', '2021-12-27 16:54:25');
INSERT INTO `slugs` VALUES (134, 'natural', 122, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-27 16:58:00', '2021-12-27 16:58:00');
INSERT INTO `slugs` VALUES (136, 'framers-tape', 134, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-27 18:14:13', '2021-12-27 18:14:13');
INSERT INTO `slugs` VALUES (137, 'hardware-kit-metal-frames', 135, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-12-27 18:15:32', '2021-12-27 18:15:32');
INSERT INTO `slugs` VALUES (138, 'accessories-1', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-12-28 20:16:48', '2021-12-28 20:16:48');
INSERT INTO `slugs` VALUES (139, 'single-matboard', 136, 'Botble\\Ecommerce\\Models\\Product', 'products', '2022-02-26 18:21:10', '2022-03-10 12:21:14');
INSERT INTO `slugs` VALUES (140, 'double-matboard', 152, 'Botble\\Ecommerce\\Models\\Product', 'products', '2022-03-10 12:38:39', '2022-03-10 12:38:39');
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
INSERT INTO `tags` VALUES (1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `tags` VALUES (2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `tags` VALUES (3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `tags` VALUES (4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-14 22:29:08', '2021-09-14 22:29:08');
INSERT INTO `tags` VALUES (5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-14 22:29:08', '2021-09-14 22:29:08');
COMMIT;

-- ----------------------------
-- Table structure for testimonials
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of testimonials
-- ----------------------------
BEGIN;
INSERT INTO `testimonials` VALUES (1, 'Adam Williams', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/1.jpg', 'CEO Of Microsoft', 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `testimonials` VALUES (2, 'Retha Deowalim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/2.jpg', 'CEO Of Apple', 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `testimonials` VALUES (3, 'Sam J. Wasim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/3.jpg', 'Pio Founder', 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `testimonials` VALUES (4, 'Usan Gulwarm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/4.jpg', 'CEO Of Facewarm', 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `testimonials` VALUES (5, 'Adam Williams', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/1.jpg', 'Giám đốc Microsoft', 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `testimonials` VALUES (6, 'Retha Deowalim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/2.jpg', 'Giám đốc Apple', 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `testimonials` VALUES (7, 'Sam J. Wasim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/3.jpg', 'Nhà sáng lập Pio', 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
INSERT INTO `testimonials` VALUES (8, 'Usan Gulwarm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'testimonials/4.jpg', 'Giám đốc Facewarm', 'published', '2021-09-14 22:29:09', '2021-09-14 22:29:09');
COMMIT;

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4083 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
BEGIN;
INSERT INTO `translations` VALUES (1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (12, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (13, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (14, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (15, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (16, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (17, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (18, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (19, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (20, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (21, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (22, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (23, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (24, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (25, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (26, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (27, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (28, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (29, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (30, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (31, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (32, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (33, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (34, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (35, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (36, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (37, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (38, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (39, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (40, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (41, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (42, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (43, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (44, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (45, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (46, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (47, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (48, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (49, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (50, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (51, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (52, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (53, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (54, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (55, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (56, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (57, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (58, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (59, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (60, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (61, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (62, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (63, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (64, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (65, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (66, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (67, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (68, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (69, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (70, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (71, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (72, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (73, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (74, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (75, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (76, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (77, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (78, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (79, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (80, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (81, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (82, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (83, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (84, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (85, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (86, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (87, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (88, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (89, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (90, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (91, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (92, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (93, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (94, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (95, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (96, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (97, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (98, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (99, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (100, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (101, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (102, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (103, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (104, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (105, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (106, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (107, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (108, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (109, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (110, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (111, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (112, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (113, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (114, 1, 'en', 'core/acl/api', 'name', 'Name', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (115, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (116, 1, 'en', 'core/acl/api', 'save', 'Save', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (117, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (118, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (119, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (120, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (121, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (122, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (123, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (124, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (125, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (126, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (127, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (128, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (129, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (130, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (131, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (132, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (133, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (134, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (135, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (136, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (137, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (138, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (139, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (140, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (141, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (142, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (143, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (144, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (145, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (146, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (147, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (148, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (149, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (150, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (151, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (152, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (153, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (154, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (155, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (156, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (157, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (158, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (159, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (160, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (161, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (162, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (163, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (164, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (165, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (166, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (167, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (168, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (169, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (170, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (171, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (172, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (173, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (174, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (175, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (176, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (177, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (178, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (179, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (180, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (181, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (182, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (183, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (184, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (185, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (186, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (187, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (188, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (189, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (190, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (191, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (192, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (193, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (194, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (195, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (196, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (197, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (198, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (199, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (200, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (201, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (202, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (203, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (204, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (205, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (206, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (207, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (208, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (209, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (210, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (211, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (212, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (213, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (214, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (215, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (216, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (217, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (218, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (219, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (220, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (221, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (222, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (223, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (224, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (225, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (226, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (227, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (228, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (229, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (230, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (231, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (232, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (233, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (234, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (235, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (236, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (237, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (238, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (239, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (240, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (241, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (242, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (243, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (244, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (245, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (246, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (247, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (248, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (249, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (250, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (251, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (252, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (253, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (254, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (255, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (256, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (257, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (258, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (259, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (260, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (261, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (262, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (263, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (264, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (265, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (266, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (267, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (268, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (269, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (270, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (271, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (272, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (273, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (274, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (275, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (276, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (277, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-06-11 08:04:57', '2021-06-11 08:04:57');
INSERT INTO `translations` VALUES (278, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (279, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (280, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (281, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (282, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (429, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (430, 1, 'en', 'core/base/base', 'no', 'No', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (431, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (432, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (433, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (434, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (435, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (436, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (437, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (438, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (439, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (440, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (441, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (442, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (443, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (444, 1, 'en', 'core/base/base', 'image', 'Image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (445, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (446, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (447, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (448, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (449, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (450, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (451, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (452, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (453, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (454, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (455, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (456, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (457, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (458, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (459, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (460, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (461, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (462, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (463, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (464, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (465, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (466, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (467, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (468, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (469, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (470, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (471, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (472, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (473, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (474, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (475, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (476, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://shopwise.local/admin\">clicking here</a>.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (477, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (478, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (479, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (480, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (481, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (482, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (483, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (484, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (485, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (486, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (487, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (488, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (489, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (490, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (491, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (492, 1, 'en', 'core/base/forms', 'file', 'File', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (493, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (494, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (495, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (496, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (497, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (498, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (499, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (500, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (501, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (502, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (503, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (504, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (505, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (506, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (507, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (508, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (509, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (510, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (511, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (512, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (513, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (514, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (515, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (516, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (517, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (518, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (519, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (520, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (521, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (522, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (523, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (524, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (525, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (526, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (527, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (528, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (529, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (530, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (531, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (532, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (533, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (534, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (535, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (536, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (537, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (538, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (539, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (540, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (541, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (542, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (543, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (544, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (545, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (546, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (547, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (548, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (549, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (550, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (551, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (552, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (553, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (554, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (555, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (556, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (557, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (558, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (559, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (560, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (561, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (562, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (563, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (564, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (565, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (566, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (567, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (568, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (569, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (570, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (571, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (572, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (573, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (574, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (575, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (576, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (577, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (578, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (579, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (580, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (581, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (582, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (583, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (584, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (585, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (586, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (587, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (588, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (589, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (590, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (591, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (592, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (593, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (594, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (595, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (596, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (597, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (598, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (599, 1, 'en', 'core/base/system', 'database', 'Database', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (600, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (601, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (602, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (603, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (604, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (605, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (606, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (607, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (608, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (609, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (610, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (611, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (612, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (613, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (614, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (615, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (616, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (617, 1, 'en', 'core/base/system', 'version', 'Version', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (618, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (619, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (620, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (621, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (622, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (623, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (624, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (625, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (626, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (627, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (628, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (629, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (630, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (631, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (632, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (633, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (634, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (635, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (636, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (637, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (638, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (639, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (640, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (641, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (642, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (643, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (644, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (645, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (646, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (647, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (648, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (649, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (650, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (651, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (652, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (653, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (654, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (655, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (656, 1, 'en', 'core/base/tables', 'all', 'All', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (657, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (658, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (659, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (660, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (661, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (662, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (663, 1, 'en', 'core/base/tables', 'to', 'to', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (664, 1, 'en', 'core/base/tables', 'in', 'in', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (665, 1, 'en', 'core/base/tables', 'records', 'records', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (666, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (667, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (668, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (669, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (670, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (671, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (672, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (673, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (674, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (675, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (676, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (677, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (678, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (679, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (680, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (681, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (682, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (683, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-06-11 08:04:58', '2021-06-11 08:04:58');
INSERT INTO `translations` VALUES (918, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (919, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (920, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (921, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (922, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (923, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (924, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (925, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (926, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (927, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (928, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (929, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (930, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (931, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (946, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (947, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (948, 1, 'en', 'core/media/media', 'image', 'Image', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (949, 1, 'en', 'core/media/media', 'video', 'Video', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (950, 1, 'en', 'core/media/media', 'document', 'Document', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (951, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (952, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (953, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (954, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (955, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (956, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (957, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (958, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (959, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (960, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (961, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (962, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (963, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (964, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (965, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (966, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (967, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (968, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (969, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (970, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (971, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (972, 1, 'en', 'core/media/media', 'create', 'Create', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (973, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (974, 1, 'en', 'core/media/media', 'close', 'Close', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (975, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (976, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (977, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (978, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (979, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (980, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (981, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (982, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (983, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (984, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (985, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (986, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (987, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (988, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (989, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (990, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (991, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (992, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (993, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (994, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (995, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (996, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (997, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (998, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (999, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1000, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1001, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1002, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1003, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1004, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1005, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1006, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1007, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1008, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1009, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1010, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1011, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1012, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1013, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1014, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1015, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1016, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1017, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1018, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1019, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1020, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1021, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1022, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1023, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1024, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1025, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1026, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1027, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1028, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1029, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1030, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1031, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1032, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1033, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1034, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1035, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1036, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1037, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1038, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1039, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1040, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1041, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1042, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1043, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1044, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1045, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1046, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1047, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1048, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1049, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1050, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-06-11 08:04:59', '2021-06-11 08:04:59');
INSERT INTO `translations` VALUES (1170, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1171, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1172, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1173, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1174, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1175, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1176, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1177, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1178, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1179, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1180, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1181, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1182, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1183, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1184, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1185, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1186, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1187, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1188, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1189, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1190, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1191, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1192, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1193, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1194, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1195, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1196, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1197, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1198, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1199, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1200, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1201, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1202, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1203, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1204, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1205, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1206, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1207, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1208, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1209, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1210, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1211, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1212, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1213, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1214, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1215, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1216, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Language direction', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1217, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1218, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1219, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1220, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1221, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1222, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1223, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1224, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1225, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1226, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1227, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1228, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1229, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1230, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1231, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1232, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1233, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1234, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1235, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1236, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1237, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1238, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1239, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1240, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1241, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1242, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1243, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1244, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1245, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1246, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1247, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1248, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1249, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1250, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1251, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1252, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1253, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1254, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1255, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1256, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1257, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1258, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1259, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1260, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1261, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1262, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1263, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1264, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1265, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1266, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1267, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1268, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1269, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1270, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1271, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1272, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1273, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1274, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1275, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1276, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1277, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1278, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1279, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1280, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1281, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1282, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1283, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1284, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1285, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1286, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1287, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1288, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1289, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1290, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1291, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1292, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1293, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1294, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1295, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1296, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1297, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1298, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1299, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1300, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1301, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1302, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1303, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1304, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1305, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1306, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1307, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1308, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1309, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1310, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1311, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1312, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1313, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1314, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1315, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-06-11 08:05:00', '2021-06-11 08:05:00');
INSERT INTO `translations` VALUES (1390, 1, 'en', 'core/table/general', 'operations', 'Operations', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1391, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1392, 1, 'en', 'core/table/general', 'display', 'Display', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1393, 1, 'en', 'core/table/general', 'all', 'All', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1394, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1395, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1396, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1397, 1, 'en', 'core/table/general', 'to', 'to', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1398, 1, 'en', 'core/table/general', 'in', 'in', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1399, 1, 'en', 'core/table/general', 'records', 'records', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1400, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1401, 1, 'en', 'core/table/general', 'no_record', 'No record', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1402, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1403, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1404, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1405, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1406, 1, 'en', 'core/table/general', 'delete', 'Delete', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1407, 1, 'en', 'core/table/general', 'close', 'Close', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1408, 1, 'en', 'core/table/general', 'contains', 'Contains', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1409, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1410, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1411, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1412, 1, 'en', 'core/table/general', 'value', 'Value', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1413, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1414, 1, 'en', 'core/table/general', 'reset', 'Reset', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1415, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1416, 1, 'en', 'core/table/general', 'apply', 'Apply', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1417, 1, 'en', 'core/table/general', 'filters', 'Filters', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1418, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1419, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1420, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1421, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1422, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1423, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1424, 1, 'en', 'core/table/general', 'search', 'Search...', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1425, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1426, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1427, 1, 'en', 'core/table/table', 'display', 'Display', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1428, 1, 'en', 'core/table/table', 'all', 'All', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1429, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1430, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1431, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1432, 1, 'en', 'core/table/table', 'to', 'to', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1433, 1, 'en', 'core/table/table', 'in', 'in', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1434, 1, 'en', 'core/table/table', 'records', 'records', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1435, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1436, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1437, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1438, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1439, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1440, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1441, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1442, 1, 'en', 'core/table/table', 'close', 'Close', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1443, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1444, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1445, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1446, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1447, 1, 'en', 'core/table/table', 'value', 'Value', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1448, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1449, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1450, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1451, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1452, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1453, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1454, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1455, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1456, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1457, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1458, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1459, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1492, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1493, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1494, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1495, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1496, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1497, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1498, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1499, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1500, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1501, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1502, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1503, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1504, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1505, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1506, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1507, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1508, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1509, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1510, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1511, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1530, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1531, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1532, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1533, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1534, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1535, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1536, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1537, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1538, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1539, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1540, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1541, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1542, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1543, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1544, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1545, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1546, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1547, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1548, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1549, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1550, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1568, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1569, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1570, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1571, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1572, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1573, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1574, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1575, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1576, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1577, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1578, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1579, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1580, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1581, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1582, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1583, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1584, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1585, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1586, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1587, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1588, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1589, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1590, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1591, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1592, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1593, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1594, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1595, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1596, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1609, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1610, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1611, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1612, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1613, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1619, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1620, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1621, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1622, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1623, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1624, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1625, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1626, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1627, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1628, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1629, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1630, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1631, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1632, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1633, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1634, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1635, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1636, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1637, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1638, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1639, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1640, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1641, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1642, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1643, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1644, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1645, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1646, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1647, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1648, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1649, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1650, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1651, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1652, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1653, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1654, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1655, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1656, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1657, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1658, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1659, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1660, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1661, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1662, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1663, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1664, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1665, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1666, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1667, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1668, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1669, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1670, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1671, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1672, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1684, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1685, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1686, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1687, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1688, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1689, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1690, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-06-11 08:05:01', '2021-06-11 08:05:01');
INSERT INTO `translations` VALUES (1691, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1692, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1693, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1694, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1695, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1696, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1697, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1698, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1699, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1700, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1701, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1702, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1703, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1704, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1705, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1706, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1707, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1708, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1709, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1710, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1711, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1712, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1713, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1714, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1715, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1716, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1717, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1718, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1719, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1720, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1721, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1722, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1723, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1743, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1744, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1745, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1746, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1747, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1748, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1749, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1750, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1751, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1752, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1753, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1754, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1755, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1756, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1757, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1758, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1759, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1760, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1761, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1762, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1763, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1764, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1765, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1766, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1767, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1768, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1795, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1796, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1797, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1798, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1799, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1800, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1801, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1802, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1803, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1804, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1805, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1806, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1807, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1808, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1809, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1810, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1811, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1812, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1813, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1814, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1815, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1816, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1817, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1818, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1819, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1820, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1843, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1844, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1845, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1846, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1847, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1848, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1849, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1850, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1851, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1852, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1853, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1854, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1855, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1856, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1857, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1858, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1859, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1860, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1877, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1878, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1879, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1880, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1881, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1882, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1883, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1884, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1885, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1886, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1887, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1888, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1889, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1890, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1891, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1892, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1893, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1894, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1895, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1896, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1897, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1898, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1899, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1900, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1901, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1902, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1903, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1904, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1905, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1906, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1907, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1908, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1909, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1910, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1911, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1912, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1913, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1914, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1915, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1916, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1917, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1918, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1919, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1920, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1921, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1922, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1923, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1924, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1925, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1926, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1927, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1928, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1929, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1930, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1931, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1932, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1933, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1934, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1935, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1936, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1937, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-06-11 08:05:02', '2021-06-11 08:05:02');
INSERT INTO `translations` VALUES (1987, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1988, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1989, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1990, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1991, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1992, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1993, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1994, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1995, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1996, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1997, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1998, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (1999, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2000, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2001, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2002, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2003, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2004, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2005, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2006, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2007, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2008, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2009, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2010, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2011, 1, 'en', 'plugins/contact/contact', 'email.success', 'Send message successfully!', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2012, 1, 'en', 'plugins/contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2013, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2014, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2015, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2016, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2017, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2018, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2019, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2020, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2021, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2022, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2023, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2024, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2025, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2026, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2027, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2028, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2029, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2030, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2031, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2032, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2033, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2034, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2035, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2036, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2037, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2038, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2039, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2040, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2041, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2042, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2043, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2044, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2045, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2046, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2047, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2048, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2049, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2107, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2108, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2109, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2110, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2111, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2112, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2113, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2114, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2115, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2116, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2117, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2118, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2119, 1, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2120, 1, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2121, 1, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2122, 1, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2123, 1, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2124, 1, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2125, 1, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2126, 1, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2127, 1, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2128, 1, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2129, 1, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2130, 1, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2131, 1, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2132, 1, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2133, 1, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2134, 1, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2135, 1, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2136, 1, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2137, 1, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2138, 1, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2139, 1, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2140, 1, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2141, 1, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2142, 1, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2143, 1, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2144, 1, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2145, 1, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2146, 1, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2147, 1, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2148, 1, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2149, 1, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2150, 1, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2151, 1, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2152, 1, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2153, 1, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2154, 1, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2155, 1, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2156, 1, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2157, 1, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2158, 1, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2159, 1, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2160, 1, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2161, 1, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2162, 1, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2163, 1, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2164, 1, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2165, 1, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2166, 1, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2167, 1, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2168, 1, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2169, 1, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2170, 1, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2171, 1, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2172, 1, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2173, 1, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2174, 1, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2175, 1, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2176, 1, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2177, 1, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2178, 1, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2179, 1, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2180, 1, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2181, 1, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2182, 1, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2183, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2184, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2185, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2186, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2187, 1, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2188, 1, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2189, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2190, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2191, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2192, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2193, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2194, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2195, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2196, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2197, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2198, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2199, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2200, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2201, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2202, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2203, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2204, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2205, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2206, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2207, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2208, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2209, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2210, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2211, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2212, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2213, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2214, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2215, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2216, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2217, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2218, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2219, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2220, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2221, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2222, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2223, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2224, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2225, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2226, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2227, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2228, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2229, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2230, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2231, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2232, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2233, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2234, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2235, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2236, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2237, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2238, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2239, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2240, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2241, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2242, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\' email?', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2243, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2244, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-06-11 08:05:03', '2021-06-11 08:05:03');
INSERT INTO `translations` VALUES (2245, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2246, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2247, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2248, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2249, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2250, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2251, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2252, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2253, 1, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2254, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2255, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2256, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2257, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2258, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2259, 1, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2260, 1, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2261, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2262, 1, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2263, 1, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2264, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2265, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2266, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2267, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2268, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2269, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2270, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2271, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2272, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2273, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2274, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2275, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2276, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2277, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2278, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2279, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2280, 1, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2281, 1, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2282, 1, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2283, 1, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2284, 1, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2285, 1, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2286, 1, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2287, 1, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2288, 1, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2289, 1, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2290, 1, 'en', 'plugins/ecommerce/messages', 'cart.add_product_success', 'Add product :product to cart successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2291, 1, 'en', 'plugins/ecommerce/messages', 'cart.update_cart_success', 'Update cart successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2292, 1, 'en', 'plugins/ecommerce/messages', 'cart.remove_cart_success', 'Remove item from cart successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2293, 1, 'en', 'plugins/ecommerce/messages', 'cart.empty_cart_success', 'Empty cart successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2294, 1, 'en', 'plugins/ecommerce/messages', 'cart.product_not_found', 'This product is out of stock or not exists!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2295, 1, 'en', 'plugins/ecommerce/messages', 'cart.product_is_out_of_stock', 'Product :product is out of stock!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2296, 1, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_error', 'The order is delivering or completed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2297, 1, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_success', 'You do cancel the order successful', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2298, 1, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2299, 1, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2300, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2301, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2302, 1, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2303, 1, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2304, 1, 'en', 'plugins/ecommerce/order', 'name', 'Orders', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2305, 1, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2306, 1, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_error', 'The order is delivering or completed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2307, 1, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_success', 'You do cancel the order successful', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2308, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2309, 1, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2310, 1, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2311, 1, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2312, 1, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2313, 1, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2314, 1, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2315, 1, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2316, 1, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2317, 1, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2318, 1, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2319, 1, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2320, 1, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2321, 1, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2322, 1, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2323, 1, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2324, 1, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2325, 1, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2326, 1, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2327, 1, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2328, 1, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2329, 1, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2330, 1, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2331, 1, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2332, 1, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2333, 1, 'en', 'plugins/ecommerce/order', 'create_new_product', 'Create a new product', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2334, 1, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2335, 1, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2336, 1, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2337, 1, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2338, 1, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2339, 1, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2340, 1, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2341, 1, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2342, 1, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2343, 1, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2344, 1, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2345, 1, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2346, 1, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2347, 1, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2348, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2349, 1, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2350, 1, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2351, 1, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2352, 1, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2353, 1, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2354, 1, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2355, 1, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2356, 1, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2357, 1, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2358, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2359, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2360, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2361, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2362, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2363, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2364, 1, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2365, 1, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2366, 1, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2367, 1, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2368, 1, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2369, 1, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2370, 1, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2371, 1, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2372, 1, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2373, 1, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2374, 1, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2375, 1, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2376, 1, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2377, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2378, 1, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2379, 1, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2380, 1, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2381, 1, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2382, 1, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2383, 1, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2384, 1, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2385, 1, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2386, 1, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2387, 1, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2388, 1, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2389, 1, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2390, 1, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2391, 1, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2392, 1, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2393, 1, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2394, 1, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2395, 1, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2396, 1, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2397, 1, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2398, 1, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2399, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2400, 1, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2401, 1, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2402, 1, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2403, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2404, 1, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2405, 1, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2406, 1, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2407, 1, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2408, 1, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2409, 1, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2410, 1, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2411, 1, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2412, 1, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2413, 1, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2414, 1, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2415, 1, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2416, 1, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2417, 1, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2418, 1, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2419, 1, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2420, 1, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2421, 1, 'en', 'plugins/ecommerce/order', 'orders', 'Orders', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2422, 1, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping address', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2423, 1, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2424, 1, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2425, 1, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2426, 1, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2427, 1, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2428, 1, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2429, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2430, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2431, 1, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2432, 1, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2433, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2434, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2435, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2436, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2437, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2438, 1, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2439, 1, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2440, 1, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2441, 1, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2442, 1, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2443, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2444, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2445, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2446, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2447, 1, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2448, 1, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2449, 1, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2450, 1, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2451, 1, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2452, 1, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2453, 1, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2454, 1, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2455, 1, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2456, 1, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2457, 1, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2458, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2459, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2460, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2461, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2462, 1, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2463, 1, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2464, 1, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2465, 1, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2466, 1, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2467, 1, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2468, 1, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2469, 1, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2470, 1, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2471, 1, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2472, 1, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-06-11 08:05:04', '2021-06-11 08:05:04');
INSERT INTO `translations` VALUES (2473, 1, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2474, 1, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2475, 1, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2476, 1, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2477, 1, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2478, 1, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2479, 1, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2480, 1, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2481, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2482, 1, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2483, 1, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2484, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2485, 1, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2486, 1, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2487, 1, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2488, 1, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2489, 1, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2490, 1, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2491, 1, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2492, 1, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2493, 1, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2494, 1, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2495, 1, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2496, 1, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2497, 1, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2498, 1, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2499, 1, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2500, 1, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2501, 1, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2502, 1, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2503, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2504, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2505, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2506, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2507, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2508, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2509, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2510, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2511, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2512, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2513, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2514, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2515, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2516, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2517, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2518, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2519, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2520, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2521, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2522, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2523, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2524, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2525, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2526, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2527, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2528, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2529, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2530, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2531, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2532, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2533, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2534, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2535, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2536, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2537, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2538, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2539, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2540, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2541, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2542, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2543, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2544, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2545, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2546, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2547, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2548, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2549, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2550, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2551, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2552, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2553, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2554, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2555, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2556, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2557, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2558, 1, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2559, 1, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2560, 1, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2561, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2562, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2563, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2564, 1, 'en', 'plugins/ecommerce/product-categories', 'name', 'Categories', '2021-06-11 08:05:05', '2021-12-25 23:53:58');
INSERT INTO `translations` VALUES (2565, 1, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2566, 1, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2567, 1, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2568, 1, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2569, 1, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Categories', '2021-06-11 08:05:05', '2021-12-25 23:53:34');
INSERT INTO `translations` VALUES (2570, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2571, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2572, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2573, 1, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2574, 1, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2575, 1, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2576, 1, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2577, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2578, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2579, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2580, 1, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2581, 1, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2582, 1, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2583, 1, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2584, 1, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2585, 1, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2586, 1, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2587, 1, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2588, 1, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2589, 1, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2590, 1, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2591, 1, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2592, 1, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2593, 1, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2594, 1, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2595, 1, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2596, 1, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2597, 1, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2598, 1, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2599, 1, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2600, 1, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2601, 1, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2602, 1, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2603, 1, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2604, 1, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2605, 1, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2606, 1, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2607, 1, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2608, 1, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2609, 1, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2610, 1, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2611, 1, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2612, 1, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2613, 1, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2614, 1, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2615, 1, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2616, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2617, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2618, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2619, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2620, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2621, 1, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2622, 1, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2623, 1, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2624, 1, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2625, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2626, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2627, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2628, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2629, 1, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2630, 1, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2631, 1, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2632, 1, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2633, 1, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2634, 1, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2635, 1, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2636, 1, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2637, 1, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2638, 1, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2639, 1, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2640, 1, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2641, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2642, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2643, 1, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2644, 1, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2645, 1, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2646, 1, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2647, 1, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2648, 1, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2649, 1, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2650, 1, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2651, 1, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2652, 1, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2653, 1, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2654, 1, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2655, 1, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2656, 1, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2657, 1, 'en', 'plugins/ecommerce/products', 'sku', 'Sku', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2658, 1, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2659, 1, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2660, 1, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2661, 1, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2662, 1, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2663, 1, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2664, 1, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2665, 1, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2666, 1, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2667, 1, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2668, 1, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2669, 1, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2670, 1, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2671, 1, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2672, 1, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2673, 1, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2674, 1, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2675, 1, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2676, 1, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2677, 1, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2678, 1, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2679, 1, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2680, 1, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2681, 1, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2682, 1, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2683, 1, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-06-11 08:05:05', '2021-06-11 08:05:05');
INSERT INTO `translations` VALUES (2684, 1, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2685, 1, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2686, 1, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2687, 1, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2688, 1, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2689, 1, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2690, 1, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2691, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2692, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2693, 1, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2694, 1, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2695, 1, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2696, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2697, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2698, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2699, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2700, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2701, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2702, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2703, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2704, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2705, 1, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2706, 1, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2707, 1, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2708, 1, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2709, 1, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2710, 1, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2711, 1, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2712, 1, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2713, 1, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2714, 1, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2715, 1, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2716, 1, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2717, 1, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2718, 1, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top selling products in this month', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2719, 1, 'en', 'plugins/ecommerce/reports', 'today', 'Today', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2720, 1, 'en', 'plugins/ecommerce/reports', 'this_week', 'This week', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2721, 1, 'en', 'plugins/ecommerce/reports', 'this_month', 'This month', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2722, 1, 'en', 'plugins/ecommerce/reports', 'this_year', 'This year', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2723, 1, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2724, 1, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2725, 1, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2726, 1, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2727, 1, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2728, 1, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2729, 1, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2730, 1, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2731, 1, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2732, 1, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2733, 1, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2734, 1, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2735, 1, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2736, 1, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2737, 1, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2738, 1, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2739, 1, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2740, 1, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2741, 1, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2742, 1, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2743, 1, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2744, 1, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2745, 1, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2746, 1, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2747, 1, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2748, 1, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2749, 1, 'en', 'plugins/ecommerce/shipping', 'currency', 'Currency', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2750, 1, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2751, 1, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2752, 1, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2753, 1, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2754, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2755, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2756, 1, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2757, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2758, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2759, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2760, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2761, 1, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2762, 1, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2763, 1, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2764, 1, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2765, 1, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2766, 1, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2767, 1, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2768, 1, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2769, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2770, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2771, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2772, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2773, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2774, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2775, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2776, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2777, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2778, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2779, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2780, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2781, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2782, 1, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2783, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2784, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2785, 1, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2786, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2787, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2788, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2789, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2790, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2791, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2792, 1, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2793, 1, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2794, 1, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2795, 1, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2796, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2797, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2798, 1, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2799, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (grams)', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2800, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2801, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2802, 1, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2803, 1, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2804, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2805, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2806, 1, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2807, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2808, 1, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2809, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2810, 1, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2811, 1, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2812, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2813, 1, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2814, 1, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2815, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2816, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2817, 1, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2818, 1, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2819, 1, 'en', 'plugins/ecommerce/shipping', 'warehouse', 'Warehouse', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2820, 1, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2821, 1, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2822, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2823, 1, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2824, 1, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2825, 1, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2826, 1, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2827, 1, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2828, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2829, 1, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2830, 1, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2831, 1, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2832, 1, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2833, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2834, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2835, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2836, 1, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2837, 1, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2838, 1, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2839, 1, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2840, 1, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2841, 1, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2842, 1, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2843, 1, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2844, 1, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2845, 1, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2846, 1, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2847, 1, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2848, 1, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2849, 1, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2850, 1, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2851, 1, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2852, 1, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2853, 1, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2854, 1, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2855, 1, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2856, 1, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2857, 1, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2858, 1, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2859, 1, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2860, 1, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (2861, 1, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-06-11 08:05:06', '2021-06-11 08:05:06');
INSERT INTO `translations` VALUES (3264, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3265, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3266, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3267, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3268, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3269, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3270, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3271, 1, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3272, 1, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3273, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3274, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3275, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3276, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3277, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3278, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3279, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3280, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3281, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3282, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3283, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3284, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3285, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3286, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3287, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3288, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3289, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3290, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3291, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3292, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3293, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3294, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3295, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3296, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3297, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3298, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3299, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3300, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3301, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3302, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3303, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3304, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3305, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3306, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3307, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3308, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3309, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3310, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3311, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3312, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3313, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3314, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3315, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3316, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3317, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3318, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3319, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-06-11 08:05:08', '2021-06-11 08:05:08');
INSERT INTO `translations` VALUES (3320, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3321, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3322, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3323, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3324, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3325, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3326, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3327, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3328, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3329, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3330, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3331, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3332, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3333, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3334, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3335, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3336, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3337, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3338, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3339, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3340, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3341, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3342, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3343, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3344, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3345, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3346, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3347, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3348, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3349, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3350, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3351, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3352, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3353, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3354, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3355, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3356, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3357, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3358, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3359, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3360, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3361, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3362, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3363, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3364, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3365, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3366, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3448, 1, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3449, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3450, 1, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3451, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3452, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3453, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3454, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3455, 1, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3456, 1, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3457, 1, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3458, 1, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3459, 1, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3460, 1, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3461, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3462, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3463, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3464, 1, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3465, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3466, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3467, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3468, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3469, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3470, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3471, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3472, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3473, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3474, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3475, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3476, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3477, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3478, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3479, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3480, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3481, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3482, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3483, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3484, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3485, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3486, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3487, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3488, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3489, 1, 'en', 'plugins/testimonial/testimonial', 'name', 'Testimonials', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3490, 1, 'en', 'plugins/testimonial/testimonial', 'create', 'New testimonial', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3491, 1, 'en', 'plugins/testimonial/testimonial', 'edit', 'Edit testimonial', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3492, 1, 'en', 'plugins/testimonial/testimonial', 'company', 'Position/Company', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3497, 1, 'en', 'plugins/testimonials/forms', 'name', 'Customer name', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3498, 1, 'en', 'plugins/testimonials/forms', 'company', 'Company/Working place', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3499, 1, 'en', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3500, 1, 'en', 'plugins/testimonials/forms', 'title', 'Title', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3501, 1, 'en', 'plugins/testimonials/forms', 'content', 'Content', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3502, 1, 'en', 'plugins/testimonials/forms', 'publish', 'Publish', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3503, 1, 'en', 'plugins/testimonials/forms', 'unpublish', 'Unpublish', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3504, 1, 'en', 'plugins/testimonials/testimonials', 'name', 'Testimonials', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3505, 1, 'en', 'plugins/testimonials/testimonials', 'create', 'New testimonials', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3506, 1, 'en', 'plugins/testimonials/testimonials', 'edit', 'Edit testimonials', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3517, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3518, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3519, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3520, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3521, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3522, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-06-11 08:05:09', '2021-06-11 08:05:09');
INSERT INTO `translations` VALUES (3523, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3524, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3525, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3526, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3527, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3528, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3529, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3530, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3531, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3532, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3533, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3534, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Admin translations', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3535, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3536, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3537, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3538, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3539, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3540, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3541, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3542, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3543, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3544, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3545, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3546, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3547, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
INSERT INTO `translations` VALUES (3548, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-06-11 08:05:10', '2021-06-11 08:05:10');
COMMIT;

-- ----------------------------
-- Table structure for user_meta
-- ----------------------------
DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin@botble.com', NULL, '$2y$10$diTyUqBi.XYGBO7S3W/6nOFL8QrYe8ftnVNPP0kSHw0yPL4M1dw3m', 'c7gAKZL7JXKQN38cNCBGC3Pmrh4S0QToEfuQ57FhstJ9dCtsWB1uaHeePU0t', '2021-09-14 22:29:10', '2022-03-08 15:55:13', 'System', 'Admin', 'studiomoulding', NULL, 1, 1, NULL, '2022-03-08 15:55:13');
COMMIT;

-- ----------------------------
-- Table structure for widgets
-- ----------------------------
DROP TABLE IF EXISTS `widgets`;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of widgets
-- ----------------------------
BEGIN;
INSERT INTO `widgets` VALUES (1, 'CustomMenuWidget', 'footer_sidebar', 'pfs', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Links\",\"menu_id\":\"footer-menu\"}', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
INSERT INTO `widgets` VALUES (2, 'CustomMenuWidget', 'primary_sidebar', 'pfs', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"blog_categories\"}', '2021-09-14 22:29:10', '2021-09-14 22:29:10');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
