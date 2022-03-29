/*
 Navicat MySQL Data Transfer

 Source Server         : laradock
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : pictureframesolutions

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 10/09/2021 19:06:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ec_product_sizes
-- ----------------------------
DROP TABLE IF EXISTS `ec_product_sizes`;
CREATE TABLE `ec_product_sizes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

SET FOREIGN_KEY_CHECKS = 1;
