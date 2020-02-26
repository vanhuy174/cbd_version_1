-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: db
-- Thời gian đã tạo: Th2 26, 2020 lúc 08:36 AM
-- Phiên bản máy phục vụ: 5.7.22-log
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_cbd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_config`
--

CREATE TABLE `admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_config`
--

INSERT INTO `admin_config` (`id`, `group`, `code`, `key`, `value`, `store_id`, `sort`, `detail`) VALUES
(1, '', 'config', 'shop_allow_guest', '1', '1', 11, 'lang::admin.shop_allow_guest'),
(2, '', 'config', 'product_preorder', '1', '1', 18, 'lang::admin.product_preorder'),
(3, '', 'config', 'product_display_out_of_stock', '1', '1', 19, 'lang::admin.product_display_out_of_stock'),
(4, '', 'config', 'product_buy_out_of_stock', '0', '1', 20, 'lang::admin.product_buy_out_of_stock'),
(5, '', 'config', 'show_date_available', '1', '1', 21, 'lang::admin.show_date_available'),
(6, '', 'display', 'product_hot', '6', '1', 0, 'lang::admin.hot_product'),
(7, '', 'display', 'product_new', '6', '1', 0, 'lang::admin.new_product'),
(8, '', 'display', 'product_list', '18', '1', 0, 'lang::admin.list_product'),
(9, '', 'display', 'product_relation', '4', '1', 0, 'lang::admin.relation_product'),
(10, '', 'display', 'product_viewed', '4', '1', 0, 'lang::admin.viewed_product'),
(11, '', 'display', 'item_list', '12', '1', 0, 'lang::admin.item_list'),
(12, '', 'email_action', 'email_action_mode', '1', '1', 0, 'lang::email.email_action.email_action_mode'),
(13, '', 'email_action', 'order_success_to_admin', '0', '1', 1, 'lang::email.email_action.order_success_to_admin'),
(14, '', 'email_action', 'order_success_to_customer', '1', '1', 2, 'lang::email.email_action.order_success_to_cutomer'),
(15, '', 'email_action', 'welcome_customer', '1', '1', 4, 'lang::email.email_action.welcome_customer'),
(16, '', 'email_action', 'contact_to_admin', '1', '1', 6, 'lang::email.email_action.contact_to_admin'),
(17, '', 'email_action', 'email_action_smtp_mode', '1', '1', 6, 'lang::email.email_action.email_action_smtp_mode'),
(18, 'Modules', 'Block', 'LastViewProduct', '1', '1', 0, 'Modules/Block/LastViewProduct::.title'),
(19, 'Extensions', 'Payment', 'Cash', '1', '1', 0, 'Extensions/Payment/Cash::Cash.title'),
(21, '', 'smtp', 'smtp_host', 'smtp.gmail.com', '1', 8, 'lang::email.smtp_host'),
(22, '', 'smtp', 'smtp_user', 'dzu.ictu@gmail.com', '1', 7, 'lang::email.smtp_user'),
(23, '', 'smtp', 'smtp_password', 'dmdm1122', '1', 6, 'lang::email.smtp_password'),
(24, '', 'smtp', 'smtp_security', 'TLS', '1', 5, 'lang::email.smtp_security'),
(25, '', 'smtp', 'smtp_port', '587', '1', 4, 'lang::email.smtp_port'),
(26, 'Extensions', 'Total', 'Discount', '1', '1', 0, 'Extensions/Total/Discount::Discount.title'),
(27, '', 'cache', 'cache_status', '0', '1', 0, ''),
(28, '', 'cache', 'cache_time', '600', '1', 0, ''),
(29, '', 'upload', 'upload_image_size', '2048', '1', 0, ''),
(30, '', 'upload', 'upload_image_thumb_width', '250', '1', 0, ''),
(31, '', 'upload', 'upload_image_thumb_status', '1', '1', 0, ''),
(32, '', 'upload', 'upload_watermark_status', '1', '1', 0, ''),
(33, '', 'upload', 'upload_watermark_path', 'images/watermark.png', '1', 0, ''),
(34, '', 'env', 'SITE_STATUS', 'on', '1', 0, 'lang::env.SITE_STATUS'),
(35, '', 'env', 'SITE_TIMEZONE', 'Asia/Ho_Chi_Minh', '1', 0, 'lang::env.SITE_TIMEZONE'),
(36, '', 'env', 'SITE_LANGUAGE', 'vi', '1', 0, 'lang::env.SITE_LANGUAGE'),
(37, '', 'env', 'SITE_CURRENCY', 'USD', '1', 0, 'lang::env.SITE_CURRENCY'),
(38, '', 'env', 'APP_DEBUG', 'on', '1', 0, 'lang::env.APP_DEBUG'),
(39, '', 'env', 'ADMIN_LOG', 'on', '1', 0, 'lang::env.ADMIN_LOG'),
(40, '', 'env', 'ADMIN_LOG_EXP', '', '1', 0, 'lang::env.ADMIN_LOG_EXP'),
(41, '', 'env', 'ADMIN_PREFIX', 'admin_panel', '1', 0, 'lang::env.ADMIN_PREFIX'),
(42, '', 'env', 'ADMIN_NAME', 'S-Cart System', '1', 0, 'lang::env.ADMIN_NAME'),
(43, '', 'env', 'ADMIN_TITLE', 'S-Cart System', '1', 0, 'lang::env.ADMIN_TITLE'),
(44, '', 'env', 'ADMIN_LOGO', 'S-Cart Admin', '1', 0, 'lang::env.ADMIN_LOGO'),
(45, '', 'env', 'ADMIN_LOGO_MINI', '<i class=\"fa fa-map-o\" aria-hidden=\"true\"></i>', '1', 0, 'lang::env.ADMIN_LOGO_MINI'),
(46, '', 'env', 'LOG_SLACK_WEBHOOK_URL', '', '1', 0, 'lang::env.LOG_SLACK_WEBHOOK_URL'),
(47, '', 'url', 'SUFFIX_URL', '.html', '1', 0, 'lang::url.SUFFIX_URL'),
(48, '', 'url', 'PREFIX_BRAND', 'brand', '1', 0, 'lang::url.PREFIX_BRAND'),
(49, '', 'url', 'PREFIX_VENDOR', 'vendor', '1', 0, 'lang::url.PREFIX_VENDOR'),
(50, '', 'url', 'PREFIX_CATEGORY', 'category', '1', 0, 'lang::url.PREFIX_CATEGORY'),
(51, '', 'url', 'PREFIX_PRODUCT', 'product', '1', 0, 'lang::url.PREFIX_PRODUCT'),
(52, '', 'url', 'PREFIX_SEARCH', 'search', '1', 0, 'lang::url.PREFIX_SEARCH'),
(53, '', 'url', 'PREFIX_CONTACT', 'contact', '1', 0, 'lang::url.PREFIX_CONTACT'),
(54, '', 'url', 'PREFIX_NEWS', 'news', '1', 0, 'lang::url.PREFIX_NEWS'),
(55, '', 'url', 'PREFIX_MEMBER', 'member', '1', 0, 'lang::url.PREFIX_MEMBER'),
(56, '', 'url', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', '1', 0, 'lang::url.PREFIX_MEMBER_ORDER_LIST'),
(57, '', 'url', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', '1', 0, 'lang::url.PREFIX_MEMBER_CHANGE_PWD'),
(58, '', 'url', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', '1', 0, 'lang::url.PREFIX_MEMBER_CHANGE_INFO'),
(59, '', 'url', 'PREFIX_CMS_CATEGORY', 'cms-category', '1', 0, 'lang::url.PREFIX_CMS_CATEGORY'),
(60, '', 'url', 'PREFIX_CMS_ENTRY', 'entry', '1', 0, 'lang::url.PREFIX_CMS_ENTRY'),
(61, '', 'url', 'PREFIX_CART_WISHLIST', 'wishlst', '1', 0, 'lang::url.PREFIX_CART_WISHLIST'),
(62, '', 'url', 'PREFIX_CART_COMPARE', 'compare', '1', 0, 'lang::url.PREFIX_CART_COMPARE'),
(63, '', 'url', 'PREFIX_CART_DEFAULT', 'cart', '1', 0, 'lang::url.PREFIX_CART_DEFAULT'),
(64, '', 'url', 'PREFIX_CART_CHECKOUT', 'checkout', '1', 0, 'lang::url.PREFIX_CART_CHECKOUT'),
(65, '', 'url', 'PREFIX_ORDER_SUCCESS', 'order-success', '1', 0, 'lang::url.PREFIX_ORDER_SUCCESS'),
(66, '', 'product', 'product_brand', '1', '1', 0, 'lang::product.config_manager.brand'),
(67, '', 'product', 'product_vendor', '1', '1', 0, 'lang::product.config_manager.vendor'),
(68, '', 'product', 'product_price', '1', '1', 0, 'lang::product.config_manager.price'),
(69, '', 'product', 'product_cost', '1', '1', 0, 'lang::product.config_manager.cost'),
(70, '', 'product', 'product_promotion', '1', '1', 0, 'lang::product.config_manager.promotion'),
(71, '', 'product', 'product_stock', '1', '1', 0, 'lang::product.config_manager.stock'),
(72, '', 'product', 'product_type', '1', '1', 0, 'lang::product.config_manager.type'),
(73, '', 'product', 'product_kind', '1', '1', 0, 'lang::product.config_manager.kind'),
(74, '', 'product', 'product_virtual', '1', '1', 0, 'lang::product.config_manager.virtual'),
(75, '', 'product', 'product_attribute', '1', '1', 0, 'lang::product.config_manager.attribute'),
(76, '', 'product', 'product_available', '1', '1', 0, 'lang::product.config_manager.available'),
(77, '', 'customer', 'customer_lastname', '1', '1', 0, 'lang::customer.config_manager.lastname'),
(78, '', 'customer', 'customer_address1', '1', '1', 0, 'lang::customer.config_manager.address1'),
(79, '', 'customer', 'customer_address2', '1', '1', 0, 'lang::customer.config_manager.address2'),
(80, '', 'customer', 'customer_company', '0', '1', 0, 'lang::customer.config_manager.company'),
(81, '', 'customer', 'customer_postcode', '0', '1', 0, 'lang::customer.config_manager.postcode'),
(82, '', 'customer', 'customer_country', '1', '1', 0, 'lang::customer.config_manager.country'),
(83, '', 'customer', 'customer_group', '1', '1', 0, 'lang::customer.config_manager.group'),
(84, '', 'customer', 'customer_birthday', '0', '1', 0, 'lang::customer.config_manager.birthday'),
(85, '', 'customer', 'customer_sex', '0', '1', 0, 'lang::customer.config_manager.sex'),
(86, '', 'customer', 'customer_phone', '1', '1', 1, 'lang::customer.config_manager.phone'),
(98, 'Extensions', 'Shipping', 'GHTK', '1', '1', 0, 'Extensions/Shipping/GHTK::GHTK.title'),
(99, 'Extensions', 'Other', 'ExtCustomer', '1', '1', 0, 'Extensions/Other/ExtCustomer::ExtCustomer.title'),
(101, 'Extensions', 'Other', 'Affiliate', '1', '1', 0, 'Extensions/Other/Affiliate::Affiliate.title'),
(102, 'Extensions', 'Other', 'ExportInvoice', '1', '1', 0, 'Extensions/Other/ExportInvoice::ExportInvoice.title');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_log`
--

CREATE TABLE `admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_log`
--

INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:50:38', '2020-02-12 10:50:38'),
(2, 1, 'admin_panel/locale/vi', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:50:50', '2020-02-12 10:50:50'),
(3, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:50:50', '2020-02-12 10:50:50'),
(4, 1, 'admin_panel/module/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:51:07', '2020-02-12 10:51:07'),
(5, 1, 'admin_panel/module/block', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:51:10', '2020-02-12 10:51:10'),
(6, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:51:13', '2020-02-12 10:51:13'),
(7, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:51:15', '2020-02-12 10:51:15'),
(8, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:51:18', '2020-02-12 10:51:18'),
(9, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:51:24', '2020-02-12 10:51:24'),
(10, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:52:01', '2020-02-12 10:52:01'),
(11, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:53:15', '2020-02-12 10:53:15'),
(12, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:53:49', '2020-02-12 10:53:49'),
(13, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:54:12', '2020-02-12 10:54:12'),
(14, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:55:51', '2020-02-12 10:55:51'),
(15, 1, 'admin_panel/language', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:56:14', '2020-02-12 10:56:14'),
(16, 1, 'admin_panel/language/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:56:16', '2020-02-12 10:56:16'),
(17, 1, 'admin_panel/language/edit/1', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"_token\":\"nNoBfjo8tcnAewiVLfrE3M5kV4eA2AY7aHgKMLa6\"}', '2020-02-12 10:56:19', '2020-02-12 10:56:19'),
(18, 1, 'admin_panel/language', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:56:19', '2020-02-12 10:56:19'),
(19, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:56:24', '2020-02-12 10:56:24'),
(20, 1, 'admin_panel/block_content', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:56:55', '2020-02-12 10:56:55'),
(21, 1, 'admin_panel/block_content/edit/7', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:57:01', '2020-02-12 10:57:01'),
(22, 1, 'admin_panel/link', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:57:17', '2020-02-12 10:57:17'),
(23, 1, 'admin_panel/template', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:57:31', '2020-02-12 10:57:31'),
(24, 1, 'admin_panel/product', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:58:11', '2020-02-12 10:58:11'),
(25, 1, 'admin_panel/order/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:58:21', '2020-02-12 10:58:21'),
(26, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"order_status\":\"1\"}', '2020-02-12 10:58:28', '2020-02-12 10:58:28'),
(27, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:59:03', '2020-02-12 10:59:03'),
(28, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:59:10', '2020-02-12 10:59:10'),
(29, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"ShippingStandard\"}', '2020-02-12 10:59:17', '2020-02-12 10:59:17'),
(30, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:59:29', '2020-02-12 10:59:29'),
(31, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:59:34', '2020-02-12 10:59:34'),
(32, 1, 'admin_panel/module/cms', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:59:40', '2020-02-12 10:59:40'),
(33, 1, 'admin_panel/news', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:59:50', '2020-02-12 10:59:50'),
(34, 1, 'admin_panel/news/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 10:59:55', '2020-02-12 10:59:55'),
(35, 1, 'admin_panel/store_info', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:00:12', '2020-02-12 11:00:12'),
(36, 1, 'admin_panel/store_value', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:00:19', '2020-02-12 11:00:19'),
(37, 1, 'admin_panel/product_config', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:00:25', '2020-02-12 11:00:25'),
(38, 1, 'admin_panel/customer_config', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:00:28', '2020-02-12 11:00:28'),
(39, 1, 'admin_panel/url_config', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:00:30', '2020-02-12 11:00:30'),
(40, 1, 'admin_panel/env', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:00:36', '2020-02-12 11:00:36'),
(41, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"SITE_LANGUAGE\",\"value\":\"vi\",\"pk\":null,\"_token\":\"nNoBfjo8tcnAewiVLfrE3M5kV4eA2AY7aHgKMLa6\"}', '2020-02-12 11:00:46', '2020-02-12 11:00:46'),
(42, 1, 'admin_panel/backup', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:01:03', '2020-02-12 11:01:03'),
(43, 1, 'admin_panel/backup/generate', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"nNoBfjo8tcnAewiVLfrE3M5kV4eA2AY7aHgKMLa6\"}', '2020-02-12 11:01:11', '2020-02-12 11:01:11'),
(44, 1, 'admin_panel/product/edit/17', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:02:35', '2020-02-12 11:02:35'),
(45, 1, 'admin_panel/attribute_group', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:03:11', '2020-02-12 11:03:11'),
(46, 1, 'admin_panel/attribute_group', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:18:41', '2020-02-12 11:18:41'),
(47, 1, 'admin_panel/currency', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:26:03', '2020-02-12 11:26:03'),
(48, 1, 'admin_panel/currency/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:26:05', '2020-02-12 11:26:05'),
(49, 1, 'admin_panel/currency/edit/1', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"0\",\"_token\":\"nNoBfjo8tcnAewiVLfrE3M5kV4eA2AY7aHgKMLa6\"}', '2020-02-12 11:26:08', '2020-02-12 11:26:08'),
(50, 1, 'admin_panel/currency', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-12 11:26:09', '2020-02-12 11:26:09'),
(51, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 08:36:24', '2020-02-13 08:36:24'),
(52, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 08:36:45', '2020-02-13 08:36:45'),
(53, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 08:36:48', '2020-02-13 08:36:48'),
(54, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 08:36:48', '2020-02-13 08:36:48'),
(55, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 08:37:01', '2020-02-13 08:37:01'),
(56, 1, 'admin_panel/order/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 08:37:03', '2020-02-13 08:37:03'),
(57, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"shipping_method\",\"value\":\"GHTK\",\"pk\":\"1\",\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\"}', '2020-02-13 08:37:08', '2020-02-13 08:37:08'),
(58, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 08:46:58', '2020-02-13 08:46:58'),
(59, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 08:47:50', '2020-02-13 08:47:50'),
(60, 1, 'admin_panel/extension/disable', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 08:48:20', '2020-02-13 08:48:20'),
(61, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 08:48:20', '2020-02-13 08:48:20'),
(62, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 09:08:07', '2020-02-13 09:08:07'),
(63, 1, 'admin_panel/order/detail/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 09:08:10', '2020-02-13 09:08:10'),
(64, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"shipping_method\",\"value\":\"GHTK\",\"pk\":\"2\",\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\"}', '2020-02-13 09:08:31', '2020-02-13 09:08:31'),
(65, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"shipping_status\",\"value\":\"2\",\"pk\":\"2\",\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\"}', '2020-02-13 09:08:38', '2020-02-13 09:08:38'),
(66, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"status\",\"value\":\"3\",\"pk\":\"2\",\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\"}', '2020-02-13 09:08:42', '2020-02-13 09:08:42'),
(67, 1, 'admin_panel/order/detail/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 09:08:45', '2020-02-13 09:08:45'),
(68, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 09:09:06', '2020-02-13 09:09:06'),
(69, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"discount\",\"value\":\"08\",\"pk\":\"8\",\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\"}', '2020-02-13 09:11:05', '2020-02-13 09:11:05'),
(70, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"shipping\",\"value\":\"40000\",\"pk\":\"7\",\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\"}', '2020-02-13 09:11:10', '2020-02-13 09:11:10'),
(71, 1, 'admin_panel/order/detail/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 09:11:15', '2020-02-13 09:11:15'),
(72, 1, 'admin_panel/order/detail/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 09:16:42', '2020-02-13 09:16:42'),
(73, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 10:38:14', '2020-02-13 10:38:14'),
(74, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 10:38:25', '2020-02-13 10:38:25'),
(75, 1, 'admin_panel/extension/disable', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"ShippingStandard\",\"group\":\"Shipping\"}', '2020-02-13 10:38:29', '2020-02-13 10:38:29'),
(76, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 10:38:29', '2020-02-13 10:38:29'),
(77, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"ShippingStandard\"}', '2020-02-13 11:13:04', '2020-02-13 11:13:04'),
(78, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:30:59', '2020-02-13 11:30:59'),
(79, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:36:16', '2020-02-13 11:36:16'),
(80, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:36:31', '2020-02-13 11:36:31'),
(81, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:37:04', '2020-02-13 11:37:04'),
(82, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:39:56', '2020-02-13 11:39:56'),
(83, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:40:54', '2020-02-13 11:40:54'),
(84, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:41:21', '2020-02-13 11:41:21'),
(85, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:41:31', '2020-02-13 11:41:31'),
(86, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 11:41:39', '2020-02-13 11:41:39'),
(87, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 11:41:39', '2020-02-13 11:41:39'),
(88, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 11:41:50', '2020-02-13 11:41:50'),
(89, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 11:41:50', '2020-02-13 11:41:50'),
(90, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:41:51', '2020-02-13 11:41:51'),
(91, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:41:58', '2020-02-13 11:41:58'),
(92, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:42:10', '2020-02-13 11:42:10'),
(93, 1, 'admin_panel/extension/disable', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 11:42:15', '2020-02-13 11:42:15'),
(94, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 11:42:15', '2020-02-13 11:42:15'),
(95, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 11:42:18', '2020-02-13 11:42:18'),
(96, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 11:42:18', '2020-02-13 11:42:18'),
(97, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"ShippingStandard\",\"group\":\"Shipping\"}', '2020-02-13 11:42:32', '2020-02-13 11:42:32'),
(98, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 11:42:32', '2020-02-13 11:42:32'),
(99, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:42:42', '2020-02-13 11:42:42'),
(100, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 11:42:50', '2020-02-13 11:42:50'),
(101, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 11:42:50', '2020-02-13 11:42:50'),
(102, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:42:50', '2020-02-13 11:42:50'),
(103, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:43:31', '2020-02-13 11:43:31'),
(104, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 11:47:13', '2020-02-13 11:47:13'),
(105, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"ZZUhzH8YBjoVQczqnrAmYPSBxePkUe7mbKCFYB4y\",\"key\":\"ShippingStandard\",\"group\":\"Shipping\"}', '2020-02-13 11:47:19', '2020-02-13 11:47:19'),
(106, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 11:47:19', '2020-02-13 11:47:19'),
(107, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 13:47:27', '2020-02-13 13:47:27'),
(108, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 13:49:50', '2020-02-13 13:49:50'),
(109, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 13:49:55', '2020-02-13 13:49:55'),
(110, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 13:49:55', '2020-02-13 13:49:55'),
(111, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 13:49:56', '2020-02-13 13:49:56'),
(112, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 13:53:14', '2020-02-13 13:53:14'),
(113, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 13:53:16', '2020-02-13 13:53:16'),
(114, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 13:53:16', '2020-02-13 13:53:16'),
(115, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 13:53:19', '2020-02-13 13:53:19'),
(116, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 13:54:46', '2020-02-13 13:54:46'),
(117, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"token\",\"value\":\"6D311986760FcEe8D022a6A7c18e735e62b5d8ba\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 13:54:51', '2020-02-13 13:54:51'),
(118, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 13:55:47', '2020-02-13 13:55:47'),
(119, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 13:55:49', '2020-02-13 13:55:49'),
(120, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 13:55:53', '2020-02-13 13:55:53'),
(121, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 13:55:53', '2020-02-13 13:55:53'),
(122, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 13:55:55', '2020-02-13 13:55:55'),
(123, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 13:55:55', '2020-02-13 13:55:55'),
(124, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 13:55:58', '2020-02-13 13:55:58'),
(125, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"token\",\"value\":\"6D311986760FcEe8D022a6A7c18e735e62b5d8ba\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 13:56:01', '2020-02-13 13:56:01'),
(126, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\",\"key\":\"ShippingStandard\",\"group\":\"Shipping\"}', '2020-02-13 13:56:13', '2020-02-13 13:56:13'),
(127, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 13:56:14', '2020-02-13 13:56:14'),
(128, 1, 'admin_panel/currency', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:01:27', '2020-02-13 14:01:27'),
(129, 1, 'admin_panel/currency/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:01:32', '2020-02-13 14:01:32'),
(130, 1, 'admin_panel/currency/edit/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 14:01:38', '2020-02-13 14:01:38'),
(131, 1, 'admin_panel/currency', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:01:38', '2020-02-13 14:01:38'),
(132, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:03:52', '2020-02-13 14:03:52'),
(133, 1, 'admin_panel/order/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:04:03', '2020-02-13 14:04:03'),
(134, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"status\",\"value\":\"5\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 14:04:10', '2020-02-13 14:04:10'),
(135, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:04:13', '2020-02-13 14:04:13'),
(136, 1, 'admin_panel/order/detail/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:04:34', '2020-02-13 14:04:34'),
(137, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:24:46', '2020-02-13 14:24:46'),
(138, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 14:24:48', '2020-02-13 14:24:48'),
(139, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"token\",\"value\":\"a1ED9c6640F92ABF3b2dF516B34628A0F35eC3eb\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 14:24:52', '2020-02-13 14:24:52'),
(140, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 14:24:55', '2020-02-13 14:24:55'),
(141, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:24:58', '2020-02-13 14:24:58'),
(142, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:29:08', '2020-02-13 14:29:08'),
(143, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:29:09', '2020-02-13 14:29:09'),
(144, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 14:29:23', '2020-02-13 14:29:23'),
(145, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 14:29:23', '2020-02-13 14:29:23'),
(146, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 14:32:40', '2020-02-13 14:32:40'),
(147, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-13 14:32:42', '2020-02-13 14:32:42'),
(148, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-13 14:32:42', '2020-02-13 14:32:42'),
(149, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 14:32:45', '2020-02-13 14:32:45'),
(150, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 14:34:02', '2020-02-13 14:34:02'),
(151, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 14:34:15', '2020-02-13 14:34:15'),
(152, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 14:37:02', '2020-02-13 14:37:02'),
(153, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 14:37:08', '2020-02-13 14:37:08'),
(154, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"0\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 14:37:21', '2020-02-13 14:37:21'),
(155, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 14:37:31', '2020-02-13 14:37:31'),
(156, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"token\",\"value\":\"a1ED9c6640F92ABF3b2dF516B34628A0F35eC3eb\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 14:37:43', '2020-02-13 14:37:43'),
(157, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"fee\",\"value\":\"0\",\"pk\":\"1\",\"_token\":\"HNU5SFStX2rrck4RbqB0iDw577yLAyQj0m1AWEyE\"}', '2020-02-13 14:38:25', '2020-02-13 14:38:25'),
(158, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-13 14:38:38', '2020-02-13 14:38:38'),
(159, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 15:35:43', '2020-02-13 15:35:43'),
(160, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 15:36:44', '2020-02-13 15:36:44'),
(161, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-13 15:42:39', '2020-02-13 15:42:39'),
(162, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 08:42:56', '2020-02-14 08:42:56'),
(163, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 08:43:10', '2020-02-14 08:43:10'),
(164, 1, 'admin_panel/extension/disable', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 08:43:14', '2020-02-14 08:43:14'),
(165, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 08:43:14', '2020-02-14 08:43:14'),
(166, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 08:43:17', '2020-02-14 08:43:17'),
(167, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 08:43:17', '2020-02-14 08:43:17'),
(168, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:26:50', '2020-02-14 09:26:50'),
(169, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 09:26:53', '2020-02-14 09:26:53'),
(170, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 09:26:53', '2020-02-14 09:26:53'),
(171, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:26:56', '2020-02-14 09:26:56'),
(172, 1, 'admin_panel/menu', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:28:21', '2020-02-14 09:28:21'),
(173, 1, 'admin_panel/menu/edit/58', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:28:23', '2020-02-14 09:28:23'),
(174, 1, 'admin_panel/menu/edit/11', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:28:29', '2020-02-14 09:28:29'),
(175, 1, 'admin_panel/menu/edit/58', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:28:34', '2020-02-14 09:28:34'),
(176, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:29:45', '2020-02-14 09:29:45'),
(177, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:30:20', '2020-02-14 09:30:20'),
(178, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:35:25', '2020-02-14 09:35:25'),
(179, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:35:33', '2020-02-14 09:35:33'),
(180, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:35:53', '2020-02-14 09:35:53'),
(181, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:36:52', '2020-02-14 09:36:52'),
(182, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:37:59', '2020-02-14 09:37:59'),
(183, 1, 'admin_panel/order_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 09:42:32', '2020-02-14 09:42:32'),
(184, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:01:03', '2020-02-14 10:01:03'),
(185, 1, 'admin_panel/shipping_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:15:53', '2020-02-14 10:15:53'),
(186, 1, 'admin_panel/shipping_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:17:49', '2020-02-14 10:17:49'),
(187, 1, 'admin_panel/shipping_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:38:44', '2020-02-14 10:38:44'),
(188, 1, 'admin_panel/shipping_status/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:38:46', '2020-02-14 10:38:46'),
(189, 1, 'admin_panel/shipping_status/create', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":null,\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\"}', '2020-02-14 10:38:50', '2020-02-14 10:38:50'),
(190, 1, 'admin_panel/shipping_status/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:38:50', '2020-02-14 10:38:50'),
(191, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:54:11', '2020-02-14 10:54:11'),
(192, 1, 'admin_panel/order_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:54:11', '2020-02-14 10:54:11'),
(193, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:54:14', '2020-02-14 10:54:14'),
(194, 1, 'admin_panel/order_status/edit/6', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 10:54:21', '2020-02-14 10:54:21'),
(195, 1, 'admin_panel/shipping_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:10:59', '2020-02-14 11:10:59'),
(196, 1, 'admin_panel/shipping_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:11:24', '2020-02-14 11:11:24'),
(197, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:11:25', '2020-02-14 11:11:25'),
(198, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:20:22', '2020-02-14 11:20:22'),
(199, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:20:45', '2020-02-14 11:20:45');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(200, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:27:11', '2020-02-14 11:27:11'),
(201, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:37:01', '2020-02-14 11:37:01'),
(202, 1, 'admin_panel/extension/disable', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 11:37:05', '2020-02-14 11:37:05'),
(203, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 11:37:05', '2020-02-14 11:37:05'),
(204, 1, 'admin_panel/extension/enable', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 11:37:08', '2020-02-14 11:37:08'),
(205, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 11:37:08', '2020-02-14 11:37:08'),
(206, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 11:37:21', '2020-02-14 11:37:21'),
(207, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 11:37:21', '2020-02-14 11:37:21'),
(208, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 11:37:23', '2020-02-14 11:37:23'),
(209, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 11:37:24', '2020-02-14 11:37:24'),
(210, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 11:37:41', '2020-02-14 11:37:41'),
(211, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 11:37:41', '2020-02-14 11:37:41'),
(212, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:38:18', '2020-02-14 11:38:18'),
(213, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 11:38:57', '2020-02-14 11:38:57'),
(214, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 11:38:58', '2020-02-14 11:38:58'),
(215, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 11:38:59', '2020-02-14 11:38:59'),
(216, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 11:46:55', '2020-02-14 11:46:55'),
(217, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 11:46:55', '2020-02-14 11:46:55'),
(218, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"OLlLq2ztmgfYEHYvnMoSwnd3LFndxENfam4wDojK\",\"key\":\"GHTK\",\"group\":\"Shipping\"}', '2020-02-14 11:46:57', '2020-02-14 11:46:57'),
(219, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-14 11:46:58', '2020-02-14 11:46:58'),
(220, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 13:30:16', '2020-02-14 13:30:16'),
(221, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 13:35:16', '2020-02-14 13:35:16'),
(222, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 13:39:23', '2020-02-14 13:39:23'),
(223, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 13:50:22', '2020-02-14 13:50:22'),
(224, 1, 'admin_panel/order_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 14:02:11', '2020-02-14 14:02:11'),
(225, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"status\",\"value\":\"5\",\"pk\":\"5\",\"_token\":\"7kyrqZTQu0oiEhwAEvvCtVBN26bo0SuWCAevfCfg\"}', '2020-02-14 14:02:32', '2020-02-14 14:02:32'),
(226, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 14:06:02', '2020-02-14 14:06:02'),
(227, 1, 'admin_panel/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 14:52:02', '2020-02-14 14:52:02'),
(228, 1, 'admin_panel/customer_config', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 14:52:10', '2020-02-14 14:52:10'),
(229, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"customer_group\",\"value\":\"1\",\"_token\":\"7kyrqZTQu0oiEhwAEvvCtVBN26bo0SuWCAevfCfg\"}', '2020-02-14 14:53:05', '2020-02-14 14:53:05'),
(230, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 16:10:28', '2020-02-14 16:10:28'),
(231, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-14 16:10:30', '2020-02-14 16:10:30'),
(232, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-14 16:10:31', '2020-02-14 16:10:31'),
(233, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"7kyrqZTQu0oiEhwAEvvCtVBN26bo0SuWCAevfCfg\"}', '2020-02-14 16:10:37', '2020-02-14 16:10:37'),
(234, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-14 16:11:05', '2020-02-14 16:11:05'),
(235, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"token\",\"value\":\"a1ED9c6640F92ABF3b2dF516B34628A0F35eC3eb\",\"pk\":\"1\",\"_token\":\"7kyrqZTQu0oiEhwAEvvCtVBN26bo0SuWCAevfCfg\"}', '2020-02-14 16:11:25', '2020-02-14 16:11:25'),
(236, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-14 16:19:37', '2020-02-14 16:19:37'),
(237, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"7kyrqZTQu0oiEhwAEvvCtVBN26bo0SuWCAevfCfg\"}', '2020-02-14 16:19:41', '2020-02-14 16:19:41'),
(238, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-14 16:19:43', '2020-02-14 16:19:43'),
(239, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"0\",\"pk\":\"1\",\"_token\":\"7kyrqZTQu0oiEhwAEvvCtVBN26bo0SuWCAevfCfg\"}', '2020-02-14 16:19:50', '2020-02-14 16:19:50'),
(240, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-14 16:19:53', '2020-02-14 16:19:53'),
(241, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"7kyrqZTQu0oiEhwAEvvCtVBN26bo0SuWCAevfCfg\"}', '2020-02-14 16:20:54', '2020-02-14 16:20:54'),
(242, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-15 08:03:25', '2020-02-15 08:03:25'),
(243, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-15 08:03:58', '2020-02-15 08:03:58'),
(244, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-15 08:08:42', '2020-02-15 08:08:42'),
(245, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-15 08:08:44', '2020-02-15 08:08:44'),
(246, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"0\",\"pk\":\"1\",\"_token\":\"4w06AO5BNyQWUcLbOCI6bGhCfFQRad7lCvgDnisB\"}', '2020-02-15 08:09:03', '2020-02-15 08:09:03'),
(247, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 07:40:19', '2020-02-17 07:40:19'),
(248, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 07:40:23', '2020-02-17 07:40:23'),
(249, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 07:40:43', '2020-02-17 07:40:43'),
(250, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 07:40:48', '2020-02-17 07:40:48'),
(251, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-17 07:40:49', '2020-02-17 07:40:49'),
(252, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"token\",\"value\":\"B982e63032513246747589344843b9cEf58d8EC4\",\"pk\":\"1\",\"_token\":\"6xPjVL7kvj0UkSj829AkhGRy270xuhDemOUjLcYv\"}', '2020-02-17 07:40:55', '2020-02-17 07:40:55'),
(253, 1, 'admin_panel/extension/process/Shipping/GHTK', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"test_mode\",\"value\":\"1\",\"pk\":\"1\",\"_token\":\"6xPjVL7kvj0UkSj829AkhGRy270xuhDemOUjLcYv\"}', '2020-02-17 07:40:58', '2020-02-17 07:40:58'),
(254, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:09:43', '2020-02-17 08:09:43'),
(255, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:09:45', '2020-02-17 08:09:45'),
(256, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:09:50', '2020-02-17 08:09:50'),
(257, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"comment\",\"value\":\"naothjing\",\"pk\":\"4\",\"_token\":\"vyqDHqyFcNlCWGbaXXmXHvLUOZKxtxLsJuYA4ZFI\"}', '2020-02-17 08:09:58', '2020-02-17 08:09:58'),
(258, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:10:01', '2020-02-17 08:10:01'),
(259, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.3\",\"note\":\"naothjing\",\"_token\":\"vyqDHqyFcNlCWGbaXXmXHvLUOZKxtxLsJuYA4ZFI\"}', '2020-02-17 08:10:08', '2020-02-17 08:10:08'),
(260, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.3\",\"note\":\"naothjing\",\"_token\":\"vyqDHqyFcNlCWGbaXXmXHvLUOZKxtxLsJuYA4ZFI\"}', '2020-02-17 08:10:32', '2020-02-17 08:10:32'),
(261, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:11:36', '2020-02-17 08:11:36'),
(262, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:11:42', '2020-02-17 08:11:42'),
(263, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:11:46', '2020-02-17 08:11:46'),
(264, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:12:45', '2020-02-17 08:12:45'),
(265, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:13:02', '2020-02-17 08:13:02'),
(266, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:13:47', '2020-02-17 08:13:47'),
(267, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:14:37', '2020-02-17 08:14:37'),
(268, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:15:20', '2020-02-17 08:15:20'),
(269, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:15:57', '2020-02-17 08:15:57'),
(270, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:16:09', '2020-02-17 08:16:09'),
(271, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:16:13', '2020-02-17 08:16:13'),
(272, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:16:30', '2020-02-17 08:16:30'),
(273, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:16:38', '2020-02-17 08:16:38'),
(274, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:17:16', '2020-02-17 08:17:16'),
(275, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:17:52', '2020-02-17 08:17:52'),
(276, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:18:00', '2020-02-17 08:18:00'),
(277, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:18:24', '2020-02-17 08:18:24'),
(278, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:18:30', '2020-02-17 08:18:30'),
(279, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:18:40', '2020-02-17 08:18:40'),
(280, 1, 'admin_panel/ghtk_warehouses/edit/1', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse_name\":\"Kho H\\u00e0ng 1\",\"pick_address_id\":null,\"pick_name\":\"Janet Stehr\",\"pick_tel\":\"904-849-7604\",\"pick_province\":\"Th\\u00e1i Nguy\\u00ean\",\"pick_district\":\"TP Th\\u00e1i Nguy\\u00ean\",\"pick_ward\":null,\"pick_street\":null,\"pick_address\":\"65 Ho\\u00e0ng V\\u0103n Th\\u1ee5\",\"is_primary\":\"1\",\"_token\":\"vyqDHqyFcNlCWGbaXXmXHvLUOZKxtxLsJuYA4ZFI\"}', '2020-02-17 08:18:45', '2020-02-17 08:18:45'),
(281, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:18:45', '2020-02-17 08:18:45'),
(282, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:19:02', '2020-02-17 08:19:02'),
(283, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:19:38', '2020-02-17 08:19:38'),
(284, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:20:00', '2020-02-17 08:20:00'),
(285, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:21:26', '2020-02-17 08:21:26'),
(286, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:23:44', '2020-02-17 08:23:44'),
(287, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:41:23', '2020-02-17 08:41:23'),
(288, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:41:30', '2020-02-17 08:41:30'),
(289, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:45:00', '2020-02-17 08:45:00'),
(290, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:45:43', '2020-02-17 08:45:43'),
(291, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:46:10', '2020-02-17 08:46:10'),
(292, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 08:46:28', '2020-02-17 08:46:28'),
(293, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 09:44:36', '2020-02-17 09:44:36'),
(294, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 09:44:39', '2020-02-17 09:44:39'),
(295, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 09:44:41', '2020-02-17 09:44:41'),
(296, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 09:58:47', '2020-02-17 09:58:47'),
(297, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:00:18', '2020-02-17 10:00:18'),
(298, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:20:42', '2020-02-17 10:20:42'),
(299, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:20:45', '2020-02-17 10:20:45'),
(300, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:20:47', '2020-02-17 10:20:47'),
(301, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:21:28', '2020-02-17 10:21:28'),
(302, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:21:34', '2020-02-17 10:21:34'),
(303, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:52:41', '2020-02-17 10:52:41'),
(304, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:52:46', '2020-02-17 10:52:46'),
(305, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:52:50', '2020-02-17 10:52:50'),
(306, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:52:55', '2020-02-17 10:52:55'),
(307, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:54:22', '2020-02-17 10:54:22'),
(308, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:55:17', '2020-02-17 10:55:17'),
(309, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:55:20', '2020-02-17 10:55:20'),
(310, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:55:21', '2020-02-17 10:55:21'),
(311, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:55:25', '2020-02-17 10:55:25'),
(312, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 10:55:28', '2020-02-17 10:55:28'),
(313, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.1\",\"note\":\"naothjing\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 10:55:31', '2020-02-17 10:55:31'),
(314, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"shipping_status\",\"value\":\"2\",\"pk\":\"4\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 11:01:07', '2020-02-17 11:01:07'),
(315, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:01:10', '2020-02-17 11:01:10'),
(316, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:13:46', '2020-02-17 11:13:46'),
(317, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:13:50', '2020-02-17 11:13:50'),
(318, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:13:54', '2020-02-17 11:13:54'),
(319, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:14:20', '2020-02-17 11:14:20'),
(320, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:14:27', '2020-02-17 11:14:27'),
(321, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:16:07', '2020-02-17 11:16:07'),
(322, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:16:21', '2020-02-17 11:16:21'),
(323, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:17:29', '2020-02-17 11:17:29'),
(324, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:17:48', '2020-02-17 11:17:48'),
(325, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:19:31', '2020-02-17 11:19:31'),
(326, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:21:56', '2020-02-17 11:21:56'),
(327, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:22:07', '2020-02-17 11:22:07'),
(328, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:23:01', '2020-02-17 11:23:01'),
(329, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:23:11', '2020-02-17 11:23:11'),
(330, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:24:31', '2020-02-17 11:24:31'),
(331, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:24:34', '2020-02-17 11:24:34'),
(332, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:24:35', '2020-02-17 11:24:35'),
(333, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:29:47', '2020-02-17 11:29:47'),
(334, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:30:29', '2020-02-17 11:30:29'),
(335, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:39:01', '2020-02-17 11:39:01'),
(336, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:42:12', '2020-02-17 11:42:12'),
(337, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:43:17', '2020-02-17 11:43:17'),
(338, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:44:17', '2020-02-17 11:44:17'),
(339, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:44:33', '2020-02-17 11:44:33'),
(340, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 11:44:41', '2020-02-17 11:44:41'),
(341, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 12:02:55', '2020-02-17 12:02:55'),
(342, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 12:03:36', '2020-02-17 12:03:36'),
(343, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:05:12', '2020-02-17 13:05:12'),
(344, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:07:20', '2020-02-17 13:07:20'),
(345, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:10:53', '2020-02-17 13:10:53'),
(346, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:11:24', '2020-02-17 13:11:24'),
(347, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:11:38', '2020-02-17 13:11:38'),
(348, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:12:22', '2020-02-17 13:12:22'),
(349, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:12:52', '2020-02-17 13:12:52'),
(350, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:13:52', '2020-02-17 13:13:52'),
(351, 1, 'admin_panel/ghtk_warehouses/edit/1', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse_name\":\"Kho H\\u00e0ng 1\",\"pick_address_id\":null,\"pick_name\":\"Janet Stehr\",\"pick_tel\":\"904-849-7604\",\"pick_province\":\"Th\\u00e1i Nguy\\u00ean\",\"pick_district\":\"Th\\u00e0nh ph\\u1ed1 Th\\u00e1i Nguy\\u00ean\",\"pick_ward\":\"Ph\\u01b0\\u1eddng Phan \\u0110\\u00ecnh Ph\\u00f9ng\",\"pick_street\":null,\"pick_address\":\"65 Ho\\u00e0ng V\\u0103n Th\\u1ee5\",\"is_primary\":\"1\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 13:14:19', '2020-02-17 13:14:19'),
(352, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:14:19', '2020-02-17 13:14:19'),
(353, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:14:24', '2020-02-17 13:14:24'),
(354, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:14:46', '2020-02-17 13:14:46'),
(355, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:14:55', '2020-02-17 13:14:55'),
(356, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:15:03', '2020-02-17 13:15:03'),
(357, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:16:43', '2020-02-17 13:16:43'),
(358, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:20:28', '2020-02-17 13:20:28'),
(359, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:20:58', '2020-02-17 13:20:58'),
(360, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:21:15', '2020-02-17 13:21:15'),
(361, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:21:42', '2020-02-17 13:21:42'),
(362, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:23:03', '2020-02-17 13:23:03'),
(363, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:24:31', '2020-02-17 13:24:31'),
(364, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:29:12', '2020-02-17 13:29:12'),
(365, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:29:23', '2020-02-17 13:29:23'),
(366, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:29:43', '2020-02-17 13:29:43'),
(367, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:32:29', '2020-02-17 13:32:29'),
(368, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:33:13', '2020-02-17 13:33:13'),
(369, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:34:10', '2020-02-17 13:34:10'),
(370, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:34:40', '2020-02-17 13:34:40'),
(371, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:36:36', '2020-02-17 13:36:36'),
(372, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:36:48', '2020-02-17 13:36:48'),
(373, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:37:43', '2020-02-17 13:37:43'),
(374, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:38:31', '2020-02-17 13:38:31'),
(375, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:38:59', '2020-02-17 13:38:59'),
(376, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:39:46', '2020-02-17 13:39:46'),
(377, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:39:49', '2020-02-17 13:39:49'),
(378, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:39:52', '2020-02-17 13:39:52'),
(379, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:39:55', '2020-02-17 13:39:55'),
(380, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:42:22', '2020-02-17 13:42:22'),
(381, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:46:26', '2020-02-17 13:46:26'),
(382, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:46:47', '2020-02-17 13:46:47'),
(383, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:47:04', '2020-02-17 13:47:04'),
(384, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 13:53:29', '2020-02-17 13:53:29'),
(385, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:07:02', '2020-02-17 14:07:02'),
(386, 1, 'admin_panel/brand', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:07:20', '2020-02-17 14:07:20'),
(387, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:07:26', '2020-02-17 14:07:26'),
(388, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:07:28', '2020-02-17 14:07:28'),
(389, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Discount\"}', '2020-02-17 14:07:30', '2020-02-17 14:07:30'),
(390, 1, 'admin_panel/shop_discount', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:07:30', '2020-02-17 14:07:30'),
(391, 1, 'admin_panel/store_info', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:07:54', '2020-02-17 14:07:54'),
(392, 1, 'admin_panel/store_value', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:08:15', '2020-02-17 14:08:15'),
(393, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"product_buy_out_of_stock\",\"value\":\"0\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 14:08:22', '2020-02-17 14:08:22'),
(394, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"shop_allow_guest\",\"value\":\"0\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 14:08:30', '2020-02-17 14:08:30'),
(395, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:08:33', '2020-02-17 14:08:33'),
(396, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:08:35', '2020-02-17 14:08:35'),
(397, 1, 'admin_panel/order/edit_item', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"qty\",\"value\":\"9\",\"pk\":\"5\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 14:08:43', '2020-02-17 14:08:43'),
(398, 1, 'admin_panel/ghtk/order/create/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:33:30', '2020-02-17 14:33:30'),
(399, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:41:09', '2020-02-17 14:41:09'),
(400, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:41:13', '2020-02-17 14:41:13');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(401, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:41:46', '2020-02-17 14:41:46'),
(402, 1, 'admin_panel/order/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:41:48', '2020-02-17 14:41:48'),
(403, 1, 'admin_panel/order/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 14:41:51', '2020-02-17 14:41:51'),
(404, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"created_at__desc\",\"_pjax\":\"#pjax-container\"}', '2020-02-17 15:16:20', '2020-02-17 15:16:20'),
(405, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"id__asc\",\"_pjax\":\"#pjax-container\"}', '2020-02-17 15:16:25', '2020-02-17 15:16:25'),
(406, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"id__asc\",\"_pjax\":\"#pjax-container\"}', '2020-02-17 15:16:30', '2020-02-17 15:16:30'),
(407, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"id__desc\",\"_pjax\":\"#pjax-container\"}', '2020-02-17 15:16:32', '2020-02-17 15:16:32'),
(408, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"id__desc\",\"_pjax\":\"#pjax-container\"}', '2020-02-17 15:16:34', '2020-02-17 15:16:34'),
(409, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:08:41', '2020-02-17 16:08:41'),
(410, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:11:39', '2020-02-17 16:11:39'),
(411, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.5\",\"note\":\"no thing\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 16:12:06', '2020-02-17 16:12:06'),
(412, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.5\",\"note\":\"no thing\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 16:12:56', '2020-02-17 16:12:56'),
(413, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.5\",\"note\":\"no thing\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 16:13:30', '2020-02-17 16:13:30'),
(414, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:13:30', '2020-02-17 16:13:30'),
(415, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:13:48', '2020-02-17 16:13:48'),
(416, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-17 16:13:51', '2020-02-17 16:13:51'),
(417, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"status\",\"value\":\"5\",\"pk\":\"4\",\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 16:19:37', '2020-02-17 16:19:37'),
(418, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:19:42', '2020-02-17 16:19:42'),
(419, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:19:47', '2020-02-17 16:19:47'),
(420, 1, 'admin_panel/ghtk/order/create/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:19:51', '2020-02-17 16:19:51'),
(421, 1, 'admin_panel/ghtk/order/create/5', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"90000\",\"value\":\"90000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.5\",\"note\":null,\"_token\":\"gsUputVmOY8H2rsmGqfryW0g7KQD3a75I1kHcBPa\"}', '2020-02-17 16:20:02', '2020-02-17 16:20:02'),
(422, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:23:29', '2020-02-17 16:23:29'),
(423, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:33:00', '2020-02-17 16:33:00'),
(424, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:33:27', '2020-02-17 16:33:27'),
(425, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:34:39', '2020-02-17 16:34:39'),
(426, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:34:50', '2020-02-17 16:34:50'),
(427, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:36:40', '2020-02-17 16:36:40'),
(428, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:39:48', '2020-02-17 16:39:48'),
(429, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:41:20', '2020-02-17 16:41:20'),
(430, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:41:55', '2020-02-17 16:41:55'),
(431, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:45:32', '2020-02-17 16:45:32'),
(432, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:46:36', '2020-02-17 16:46:36'),
(433, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:47:05', '2020-02-17 16:47:05'),
(434, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:47:09', '2020-02-17 16:47:09'),
(435, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:48:12', '2020-02-17 16:48:12'),
(436, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:50:17', '2020-02-17 16:50:17'),
(437, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:54:45', '2020-02-17 16:54:45'),
(438, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:55:47', '2020-02-17 16:55:47'),
(439, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 16:55:54', '2020-02-17 16:55:54'),
(440, 1, 'admin_panel/test', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 17:10:06', '2020-02-17 17:10:06'),
(441, 1, 'admin_panel/test', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-17 17:15:10', '2020-02-17 17:15:10'),
(442, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 07:50:43', '2020-02-18 07:50:43'),
(443, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 07:50:48', '2020-02-18 07:50:48'),
(444, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 07:50:51', '2020-02-18 07:50:51'),
(445, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 07:53:26', '2020-02-18 07:53:26'),
(446, 1, 'admin_panel/order/export_detail', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"order_id\":\"5\",\"type\":\"pdf\"}', '2020-02-18 07:53:33', '2020-02-18 07:53:33'),
(447, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 07:53:43', '2020-02-18 07:53:43'),
(448, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 07:59:10', '2020-02-18 07:59:10'),
(449, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"shipping_status\",\"value\":\"2\",\"pk\":\"5\",\"_token\":\"bE6bk0zZ6IdmSTcNnQYcVz31mVJ6ZEbgbtoKhUIH\"}', '2020-02-18 07:59:27', '2020-02-18 07:59:27'),
(450, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 07:59:29', '2020-02-18 07:59:29'),
(451, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:00:02', '2020-02-18 08:00:02'),
(452, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:00:08', '2020-02-18 08:00:08'),
(453, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:00:41', '2020-02-18 08:00:41'),
(454, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:01:13', '2020-02-18 08:01:13'),
(455, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:01:14', '2020-02-18 08:01:14'),
(456, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:03:22', '2020-02-18 08:03:22'),
(457, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:04:00', '2020-02-18 08:04:00'),
(458, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:04:42', '2020-02-18 08:04:42'),
(459, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:05:07', '2020-02-18 08:05:07'),
(460, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:05:18', '2020-02-18 08:05:18'),
(461, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:05:52', '2020-02-18 08:05:52'),
(462, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:07:16', '2020-02-18 08:07:16'),
(463, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:07:40', '2020-02-18 08:07:40'),
(464, 1, 'admin_panel/order/export_detail', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"order_id\":\"5\",\"type\":\"invoice\"}', '2020-02-18 08:10:42', '2020-02-18 08:10:42'),
(465, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:11:52', '2020-02-18 08:11:52'),
(466, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:13:02', '2020-02-18 08:13:02'),
(467, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:13:51', '2020-02-18 08:13:51'),
(468, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:14:21', '2020-02-18 08:14:21'),
(469, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:14:31', '2020-02-18 08:14:31'),
(470, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:15:27', '2020-02-18 08:15:27'),
(471, 1, 'admin_panel/ghtk/order/create/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:15:35', '2020-02-18 08:15:35'),
(472, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:26:00', '2020-02-18 08:26:00'),
(473, 1, 'admin_panel/ghtk/order/create/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:26:02', '2020-02-18 08:26:02'),
(474, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:26:23', '2020-02-18 08:26:23'),
(475, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:26:32', '2020-02-18 08:26:32'),
(476, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:26:47', '2020-02-18 08:26:47'),
(477, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:26:49', '2020-02-18 08:26:49'),
(478, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:27:26', '2020-02-18 08:27:26'),
(479, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:27:38', '2020-02-18 08:27:38'),
(480, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:28:39', '2020-02-18 08:28:39'),
(481, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:31:10', '2020-02-18 08:31:10'),
(482, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:31:48', '2020-02-18 08:31:48'),
(483, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:31:57', '2020-02-18 08:31:57'),
(484, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:32:07', '2020-02-18 08:32:07'),
(485, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:33:08', '2020-02-18 08:33:08'),
(486, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:45:49', '2020-02-18 08:45:49'),
(487, 1, 'admin_panel/ghtk/order/cancel/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:45:53', '2020-02-18 08:45:53'),
(488, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:45:54', '2020-02-18 08:45:54'),
(489, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:46:37', '2020-02-18 08:46:37'),
(490, 1, 'admin_panel/ghtk/order/cancel/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:47:07', '2020-02-18 08:47:07'),
(491, 1, 'admin_panel/ghtk/order/cancel/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:47:13', '2020-02-18 08:47:13'),
(492, 1, 'admin_panel/ghtk/order/cancel/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:48:05', '2020-02-18 08:48:05'),
(493, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:48:06', '2020-02-18 08:48:06'),
(494, 1, 'admin_panel/ghtk/order/cancel/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:48:13', '2020-02-18 08:48:13'),
(495, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:48:13', '2020-02-18 08:48:13'),
(496, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:49:17', '2020-02-18 08:49:17'),
(497, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:49:24', '2020-02-18 08:49:24'),
(498, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:49:52', '2020-02-18 08:49:52'),
(499, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:50:03', '2020-02-18 08:50:03'),
(500, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:50:06', '2020-02-18 08:50:06'),
(501, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:50:08', '2020-02-18 08:50:08'),
(502, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:50:12', '2020-02-18 08:50:12'),
(503, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:50:15', '2020-02-18 08:50:15'),
(504, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:52:18', '2020-02-18 08:52:18'),
(505, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:52:22', '2020-02-18 08:52:22'),
(506, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:52:31', '2020-02-18 08:52:31'),
(507, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:52:38', '2020-02-18 08:52:38'),
(508, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:54:24', '2020-02-18 08:54:24'),
(509, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:55:45', '2020-02-18 08:55:45'),
(510, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:56:11', '2020-02-18 08:56:11'),
(511, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:57:02', '2020-02-18 08:57:02'),
(512, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:57:46', '2020-02-18 08:57:46'),
(513, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:58:52', '2020-02-18 08:58:52'),
(514, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:58:55', '2020-02-18 08:58:55'),
(515, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.1\",\"note\":\"naothjing\",\"_token\":\"bE6bk0zZ6IdmSTcNnQYcVz31mVJ6ZEbgbtoKhUIH\"}', '2020-02-18 08:58:58', '2020-02-18 08:58:58'),
(516, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.1\",\"note\":\"naothjing\",\"_token\":\"bE6bk0zZ6IdmSTcNnQYcVz31mVJ6ZEbgbtoKhUIH\"}', '2020-02-18 08:59:48', '2020-02-18 08:59:48'),
(517, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:59:48', '2020-02-18 08:59:48'),
(518, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.1\",\"note\":\"naothjing\",\"_token\":\"bE6bk0zZ6IdmSTcNnQYcVz31mVJ6ZEbgbtoKhUIH\"}', '2020-02-18 08:59:56', '2020-02-18 08:59:56'),
(519, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 08:59:56', '2020-02-18 08:59:56'),
(520, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.1\",\"note\":\"naothjing\",\"_token\":\"bE6bk0zZ6IdmSTcNnQYcVz31mVJ6ZEbgbtoKhUIH\"}', '2020-02-18 09:00:09', '2020-02-18 09:00:09'),
(521, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.1\",\"note\":\"naothjing\",\"_token\":\"bE6bk0zZ6IdmSTcNnQYcVz31mVJ6ZEbgbtoKhUIH\"}', '2020-02-18 09:00:27', '2020-02-18 09:00:27'),
(522, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:00:28', '2020-02-18 09:00:28'),
(523, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:00:34', '2020-02-18 09:00:34'),
(524, 1, 'admin_panel/ghtk/order/create/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"30000\",\"value\":\"30000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.1\",\"note\":\"naothjing\",\"_token\":\"bE6bk0zZ6IdmSTcNnQYcVz31mVJ6ZEbgbtoKhUIH\"}', '2020-02-18 09:00:36', '2020-02-18 09:00:36'),
(525, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:00:36', '2020-02-18 09:00:36'),
(526, 1, 'admin_panel/ghtk/order/create/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:03:13', '2020-02-18 09:03:13'),
(527, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:03:18', '2020-02-18 09:03:18'),
(528, 1, 'admin_panel/order/detail/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:03:21', '2020-02-18 09:03:21'),
(529, 1, 'admin_panel/order/detail/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:03:26', '2020-02-18 09:03:26'),
(530, 1, 'admin_panel/order/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:03:29', '2020-02-18 09:03:29'),
(531, 1, 'admin_panel/payment_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:05:15', '2020-02-18 09:05:15'),
(532, 1, 'admin_panel/order_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:05:22', '2020-02-18 09:05:22'),
(533, 1, 'admin_panel/vendor', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:05:31', '2020-02-18 09:05:31'),
(534, 1, 'admin_panel/category', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:05:34', '2020-02-18 09:05:34'),
(535, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:05:45', '2020-02-18 09:05:45'),
(536, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-18 09:18:51', '2020-02-18 09:18:51'),
(537, 1, 'admin_panel/banner', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 09:27:04', '2020-02-18 09:27:04'),
(538, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:23:55', '2020-02-18 10:23:55'),
(539, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:23:59', '2020-02-18 10:23:59'),
(540, 1, 'admin_panel/ghtk/order/print/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:24:59', '2020-02-18 10:24:59'),
(541, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:39:21', '2020-02-18 10:39:21'),
(542, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:41:54', '2020-02-18 10:41:54'),
(543, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:44:18', '2020-02-18 10:44:18'),
(544, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:44:38', '2020-02-18 10:44:38'),
(545, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:44:47', '2020-02-18 10:44:47'),
(546, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:45:59', '2020-02-18 10:45:59'),
(547, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:46:54', '2020-02-18 10:46:54'),
(548, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:48:55', '2020-02-18 10:48:55'),
(549, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:49:06', '2020-02-18 10:49:06'),
(550, 1, 'admin_panel/order/detail/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:49:31', '2020-02-18 10:49:31'),
(551, 1, 'admin_panel/order/detail/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:49:37', '2020-02-18 10:49:37'),
(552, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:53:17', '2020-02-18 10:53:17'),
(553, 1, 'admin_panel/customer/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 10:57:46', '2020-02-18 10:57:46'),
(554, 1, 'admin_panel/subscribe', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 11:15:51', '2020-02-18 11:15:51'),
(555, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 11:15:58', '2020-02-18 11:15:58'),
(556, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 11:16:15', '2020-02-18 11:16:15'),
(557, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 11:16:16', '2020-02-18 11:16:16'),
(558, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 11:16:18', '2020-02-18 11:16:18'),
(559, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 11:16:19', '2020-02-18 11:16:19'),
(560, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 11:16:23', '2020-02-18 11:16:23'),
(561, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Discount\"}', '2020-02-18 11:16:26', '2020-02-18 11:16:26'),
(562, 1, 'admin_panel/shop_discount', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 11:16:26', '2020-02-18 11:16:26'),
(563, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:34:44', '2020-02-18 13:34:44'),
(564, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:34:56', '2020-02-18 13:34:56'),
(565, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:44:48', '2020-02-18 13:44:48'),
(566, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:44:51', '2020-02-18 13:44:51'),
(567, 1, 'admin_panel/module/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:44:56', '2020-02-18 13:44:56'),
(568, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:45:00', '2020-02-18 13:45:00'),
(569, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:46:19', '2020-02-18 13:46:19'),
(570, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:46:49', '2020-02-18 13:46:49'),
(571, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:46:53', '2020-02-18 13:46:53'),
(572, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:47:01', '2020-02-18 13:47:01'),
(573, 1, 'admin_panel/extension/total', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:47:03', '2020-02-18 13:47:03'),
(574, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 13:47:06', '2020-02-18 13:47:06'),
(575, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:14:16', '2020-02-18 14:14:16'),
(576, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:16:27', '2020-02-18 14:16:27'),
(577, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:16:30', '2020-02-18 14:16:30'),
(578, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:18:18', '2020-02-18 14:18:18'),
(579, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:18:25', '2020-02-18 14:18:25'),
(580, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:19:19', '2020-02-18 14:19:19'),
(581, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:19:24', '2020-02-18 14:19:24'),
(582, 1, 'admin_panel/extension/payment', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:19:29', '2020-02-18 14:19:29'),
(583, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:19:35', '2020-02-18 14:19:35'),
(584, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:20:15', '2020-02-18 14:20:15'),
(585, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:20:17', '2020-02-18 14:20:17'),
(586, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:20:23', '2020-02-18 14:20:23'),
(587, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:20:25', '2020-02-18 14:20:25'),
(588, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:21:25', '2020-02-18 14:21:25'),
(589, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:21:31', '2020-02-18 14:21:31'),
(590, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:21:40', '2020-02-18 14:21:40'),
(591, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:21:41', '2020-02-18 14:21:41'),
(592, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:21:49', '2020-02-18 14:21:49'),
(593, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:21:50', '2020-02-18 14:21:50'),
(594, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:22:01', '2020-02-18 14:22:01'),
(595, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:22:23', '2020-02-18 14:22:23'),
(596, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:22:30', '2020-02-18 14:22:30'),
(597, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:23:53', '2020-02-18 14:23:53'),
(598, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:37:06', '2020-02-18 14:37:06'),
(599, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\",\"key\":\"ExtCustomer\",\"group\":\"Other\"}', '2020-02-18 14:37:09', '2020-02-18 14:37:09'),
(600, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-18 14:37:10', '2020-02-18 14:37:10'),
(601, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:37:35', '2020-02-18 14:37:35'),
(602, 1, 'admin_panel/ghtk_warehouses/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:37:38', '2020-02-18 14:37:38'),
(603, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:38:49', '2020-02-18 14:38:49'),
(604, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:45:17', '2020-02-18 14:45:17'),
(605, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:48:56', '2020-02-18 14:48:56'),
(606, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:49:43', '2020-02-18 14:49:43'),
(607, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:52:27', '2020-02-18 14:52:27'),
(608, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:52:29', '2020-02-18 14:52:29'),
(609, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:59:33', '2020-02-18 14:59:33'),
(610, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 14:59:43', '2020-02-18 14:59:43');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(611, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-18 15:00:12', '2020-02-18 15:00:12'),
(612, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-18 15:00:13', '2020-02-18 15:00:13'),
(613, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"id__asc\",\"_pjax\":\"#pjax-container\"}', '2020-02-18 15:00:20', '2020-02-18 15:00:20'),
(614, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"id__desc\",\"_pjax\":\"#pjax-container\"}', '2020-02-18 15:00:21', '2020-02-18 15:00:21'),
(615, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:00:34', '2020-02-18 15:00:34'),
(616, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:05:41', '2020-02-18 15:05:41'),
(617, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:06:00', '2020-02-18 15:06:00'),
(618, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"id__desc\"}', '2020-02-18 15:06:02', '2020-02-18 15:06:02'),
(619, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:07:02', '2020-02-18 15:07:02'),
(620, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:07:09', '2020-02-18 15:07:09'),
(621, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"sort_order\":\"id__desc\"}', '2020-02-18 15:07:12', '2020-02-18 15:07:12'),
(622, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:07:31', '2020-02-18 15:07:31'),
(623, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:10:02', '2020-02-18 15:10:02'),
(624, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:11:57', '2020-02-18 15:11:57'),
(625, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:13:49', '2020-02-18 15:13:49'),
(626, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:22:04', '2020-02-18 15:22:04'),
(627, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:24:49', '2020-02-18 15:24:49'),
(628, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:25:14', '2020-02-18 15:25:14'),
(629, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:25:30', '2020-02-18 15:25:30'),
(630, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:29:09', '2020-02-18 15:29:09'),
(631, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:29:16', '2020-02-18 15:29:16'),
(632, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:35:29', '2020-02-18 15:35:29'),
(633, 1, 'admin_panel/link', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:35:49', '2020-02-18 15:35:49'),
(634, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:36:37', '2020-02-18 15:36:37'),
(635, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:37:23', '2020-02-18 15:37:23'),
(636, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:37:24', '2020-02-18 15:37:24'),
(637, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:37:25', '2020-02-18 15:37:25'),
(638, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:37:56', '2020-02-18 15:37:56'),
(639, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:39:26', '2020-02-18 15:39:26'),
(640, 1, 'admin_panel/env', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:39:52', '2020-02-18 15:39:52'),
(641, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"ADMIN_PREFIX\",\"value\":\"admin_panel\",\"pk\":null,\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:40:05', '2020-02-18 15:40:05'),
(642, 1, 'admin_panel/env', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:40:05', '2020-02-18 15:40:05'),
(643, 1, 'admin_panel/env', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:40:08', '2020-02-18 15:40:08'),
(644, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:40:16', '2020-02-18 15:40:16'),
(645, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:44:53', '2020-02-18 15:44:53'),
(646, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:45:09', '2020-02-18 15:45:09'),
(647, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:46:32', '2020-02-18 15:46:32'),
(648, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:46:40', '2020-02-18 15:46:40'),
(649, 1, 'admin_panel/customer/edit/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":\"Effertz\",\"last_name\":\"Carole\",\"email\":\"your.email+faker61729@gmail.com\",\"phone\":\"0123456789\",\"country\":\"AL\",\"province\":\"qeqwe\",\"district\":\"12\",\"ward\":\"qeqweq\",\"address\":\"weqwe\",\"password\":\"123123\",\"status\":\"on\",\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:49:12', '2020-02-18 15:49:12'),
(650, 1, 'admin_panel/env', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:49:42', '2020-02-18 15:49:42'),
(651, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"APP_DEBUG\",\"value\":\"on\",\"pk\":null,\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:49:49', '2020-02-18 15:49:49'),
(652, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:50:00', '2020-02-18 15:50:00'),
(653, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"APP_DEBUG\",\"value\":\"off\",\"pk\":null,\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:50:23', '2020-02-18 15:50:23'),
(654, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:50:24', '2020-02-18 15:50:24'),
(655, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"APP_DEBUG\",\"value\":\"on\",\"pk\":null,\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:50:31', '2020-02-18 15:50:31'),
(656, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:50:38', '2020-02-18 15:50:38'),
(657, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:51:12', '2020-02-18 15:51:12'),
(658, 1, 'admin_panel/customer/edit/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":\"Effertz\",\"last_name\":\"Carole\",\"email\":\"your.email+faker61729@gmail.com\",\"phone\":\"0123456789\",\"country\":\"AL\",\"province\":\"123\",\"district\":\"123\",\"ward\":\"123\",\"address\":\"123\",\"password\":\"123\",\"status\":\"on\",\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:51:42', '2020-02-18 15:51:42'),
(659, 1, 'admin_panel/customer/edit/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":\"Effertz\",\"last_name\":\"Carole\",\"email\":\"your.email+faker61729@gmail.com\",\"phone\":\"0123456789\",\"country\":\"AL\",\"province\":\"123\",\"district\":\"123\",\"ward\":\"123\",\"address\":\"123\",\"password\":null,\"status\":\"on\",\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:52:02', '2020-02-18 15:52:02'),
(660, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:52:02', '2020-02-18 15:52:02'),
(661, 1, 'admin_panel/customer/edit/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":\"Effertz\",\"last_name\":\"Carole\",\"email\":\"your.email+faker61729@gmail.com\",\"phone\":\"0123456789\",\"country\":\"AL\",\"province\":\"123\",\"district\":\"123\",\"ward\":\"123\",\"address\":\"123\",\"password\":null,\"status\":\"on\",\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:52:33', '2020-02-18 15:52:33'),
(662, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:52:33', '2020-02-18 15:52:33'),
(663, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:52:35', '2020-02-18 15:52:35'),
(664, 1, 'admin_panel/customer/edit/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":\"Effertz\",\"last_name\":\"Carole\",\"email\":\"your.email+faker61729@gmail.com\",\"phone\":\"0123456789\",\"country\":\"AL\",\"province\":\"213\",\"district\":\"123\",\"ward\":\"123\",\"address\":\"3123\",\"password\":\"4123\",\"status\":\"on\",\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:54:04', '2020-02-18 15:54:04'),
(665, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:54:04', '2020-02-18 15:54:04'),
(666, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:54:09', '2020-02-18 15:54:09'),
(667, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:54:35', '2020-02-18 15:54:35'),
(668, 1, 'admin_panel/customer/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:54:37', '2020-02-18 15:54:37'),
(669, 1, 'admin_panel/customer/create', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":\"Rubye Koelpin\",\"last_name\":\"Minerva\",\"email\":\"your.email+faker55682@gmail.com\",\"phone\":\"067-698-4801\",\"country\":\"VN\",\"province\":\"T\\u1ec9nh\\/th\\u00e0nh\",\"district\":\"Qu\\u1eadn\\/huy\\u1ec7n\",\"ward\":\"X\\u00e3\\/ph\\u01b0\\u1eddng\\/th\\u1ecb tr\\u1ea5n\",\"address\":\"\\u0110\\u1ecba ch\\u1ec9\",\"password\":\"123\",\"status\":\"on\",\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:57:10', '2020-02-18 15:57:10'),
(670, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:57:10', '2020-02-18 15:57:10'),
(671, 1, 'admin_panel/customer/delete', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:57:21', '2020-02-18 15:57:21'),
(672, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-18 15:57:21', '2020-02-18 15:57:21'),
(673, 1, 'admin_panel/customer/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:57:49', '2020-02-18 15:57:49'),
(674, 1, 'admin_panel/customer/create', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":null,\"last_name\":null,\"email\":null,\"phone\":null,\"country\":null,\"province\":null,\"district\":null,\"ward\":null,\"address\":null,\"password\":null,\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:57:51', '2020-02-18 15:57:51'),
(675, 1, 'admin_panel/customer/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:57:51', '2020-02-18 15:57:51'),
(676, 1, 'admin_panel/customer/create', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":null,\"last_name\":null,\"email\":null,\"phone\":null,\"country\":null,\"province\":null,\"district\":null,\"ward\":null,\"address\":null,\"password\":null,\"_token\":\"BBgr4zsfZy9P055YwIVe46KcN2o01WtVWAqRuNq1\"}', '2020-02-18 15:58:33', '2020-02-18 15:58:33'),
(677, 1, 'admin_panel/customer/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:58:33', '2020-02-18 15:58:33'),
(678, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 15:58:50', '2020-02-18 15:58:50'),
(679, 1, 'admin_panel/customer/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:11:36', '2020-02-18 16:11:36'),
(680, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:12:03', '2020-02-18 16:12:03'),
(681, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:12:05', '2020-02-18 16:12:05'),
(682, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:12:49', '2020-02-18 16:12:49'),
(683, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:13:16', '2020-02-18 16:13:16'),
(684, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:13:21', '2020-02-18 16:13:21'),
(685, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:14:30', '2020-02-18 16:14:30'),
(686, 1, 'admin_panel/ghtk_warehouses/create', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:15:00', '2020-02-18 16:15:00'),
(687, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-18 16:16:20', '2020-02-18 16:16:20'),
(688, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:06:04', '2020-02-19 08:06:04'),
(689, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:06:10', '2020-02-19 08:06:10'),
(690, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:06:13', '2020-02-19 08:06:13'),
(691, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:07:16', '2020-02-19 08:07:16'),
(692, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:07:28', '2020-02-19 08:07:28'),
(693, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:07:47', '2020-02-19 08:07:47'),
(694, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:08:00', '2020-02-19 08:08:00'),
(695, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:08:51', '2020-02-19 08:08:51'),
(696, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:09:03', '2020-02-19 08:09:03'),
(697, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:10:02', '2020-02-19 08:10:02'),
(698, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:10:23', '2020-02-19 08:10:23'),
(699, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:11:18', '2020-02-19 08:11:18'),
(700, 1, 'admin_panel/customer/edit/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"first_name\":\"Effertz\",\"last_name\":\"Carole\",\"email\":\"your.email+faker61729@gmail.com\",\"phone\":\"0123456789\",\"country\":\"AL\",\"province\":\"Th\\u00e1i Nguy\\u00ean\",\"district\":\"TP Th\\u00e1i Nguy\\u00ean\",\"ward\":\"Ph\\u01b0\\u1eddng Quang Trung\",\"address\":\"3123\",\"password\":null,\"status\":\"on\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:11:47', '2020-02-19 08:11:47'),
(701, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:11:48', '2020-02-19 08:11:48'),
(702, 1, 'admin_panel/subscribe', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:12:14', '2020-02-19 08:12:14'),
(703, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:12:17', '2020-02-19 08:12:17'),
(704, 1, 'admin_panel/order_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:12:26', '2020-02-19 08:12:26'),
(705, 1, 'admin_panel/payment_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:13:18', '2020-02-19 08:13:18'),
(706, 1, 'admin_panel/shipping_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:13:20', '2020-02-19 08:13:20'),
(707, 1, 'admin_panel/ghtk_warehouses', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:13:24', '2020-02-19 08:13:24'),
(708, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:13:25', '2020-02-19 08:13:25'),
(709, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:13:30', '2020-02-19 08:13:30'),
(710, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:17:12', '2020-02-19 08:17:12'),
(711, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:19:37', '2020-02-19 08:19:37'),
(712, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:20:07', '2020-02-19 08:20:07'),
(713, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:20:29', '2020-02-19 08:20:29'),
(714, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:21:17', '2020-02-19 08:21:17'),
(715, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:22:05', '2020-02-19 08:22:05'),
(716, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:22:50', '2020-02-19 08:22:50'),
(717, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"address\",\"value\":\"104 Ho\\u00e0ng V\\u0103n Th\\u1ee5\",\"pk\":\"5\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:23:04', '2020-02-19 08:23:04'),
(718, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:23:06', '2020-02-19 08:23:06'),
(719, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"ward\",\"value\":\"Ph\\u01b0\\u1eddng Quang Trung\",\"pk\":\"5\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:23:20', '2020-02-19 08:23:20'),
(720, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:23:22', '2020-02-19 08:23:22'),
(721, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"ward\",\"value\":null,\"pk\":\"5\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:23:29', '2020-02-19 08:23:29'),
(722, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:23:30', '2020-02-19 08:23:30'),
(723, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"ward\",\"value\":\"Ph\\u01b0\\u1eddng Quang Trung\",\"pk\":\"5\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:23:33', '2020-02-19 08:23:33'),
(724, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"district\",\"value\":\"TP Th\\u00e1i Nguy\\u00ean\",\"pk\":\"5\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:23:40', '2020-02-19 08:23:40'),
(725, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"province\",\"value\":\"Th\\u00e1i Nguy\\u00ean\",\"pk\":\"5\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:23:47', '2020-02-19 08:23:47'),
(726, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"country\",\"value\":\"VN\",\"pk\":\"5\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:23:55', '2020-02-19 08:23:55'),
(727, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:23:57', '2020-02-19 08:23:57'),
(728, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:24:17', '2020-02-19 08:24:17'),
(729, 1, 'admin_panel/order/detail/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:24:20', '2020-02-19 08:24:20'),
(730, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"address\",\"value\":\"104 Ho\\u00e0ng V\\u0103n Th\\u1ee5\",\"pk\":\"2\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:24:26', '2020-02-19 08:24:26'),
(731, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"ward\",\"value\":\"Ph\\u01b0\\u1eddng Quang Trung\",\"pk\":\"2\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:24:31', '2020-02-19 08:24:31'),
(732, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"district\",\"value\":\"TP Th\\u00e1i Nguy\\u00ean\",\"pk\":\"2\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:24:35', '2020-02-19 08:24:35'),
(733, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"province\",\"value\":\"Th\\u00e1i Nguy\\u00ean\",\"pk\":\"2\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:24:40', '2020-02-19 08:24:40'),
(734, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"country\",\"value\":\"VN\",\"pk\":\"2\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:24:46', '2020-02-19 08:24:46'),
(735, 1, 'admin_panel/ghtk/order/create/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:25:33', '2020-02-19 08:25:33'),
(736, 1, 'admin_panel/ghtk/order/create/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"warehouse\":\"1\",\"is_freeship\":\"1\",\"pick_money\":\"300000\",\"value\":\"300000\",\"pick_option\":\"cod\",\"transport\":\"road\",\"weight_option\":\"kilogram\",\"total_weight\":\"0.1\",\"note\":\"qui fuga sed\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:26:37', '2020-02-19 08:26:37'),
(737, 1, 'admin_panel/order/detail/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:26:38', '2020-02-19 08:26:38'),
(738, 1, 'admin_panel/ghtk/order/print/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:27:00', '2020-02-19 08:27:00'),
(739, 1, 'admin_panel/language', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:28:28', '2020-02-19 08:28:28'),
(740, 1, 'admin_panel/language/edit/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:28:30', '2020-02-19 08:28:30'),
(741, 1, 'admin_panel/language/edit/1', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 08:28:35', '2020-02-19 08:28:35'),
(742, 1, 'admin_panel/language', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:28:35', '2020-02-19 08:28:35'),
(743, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:28:39', '2020-02-19 08:28:39'),
(744, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:28:42', '2020-02-19 08:28:42'),
(745, 1, 'admin_panel/locale/en', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:28:44', '2020-02-19 08:28:44'),
(746, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:28:44', '2020-02-19 08:28:44'),
(747, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:33:38', '2020-02-19 08:33:38'),
(748, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:34:18', '2020-02-19 08:34:18'),
(749, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:34:20', '2020-02-19 08:34:20'),
(750, 1, 'admin_panel/locale/vi', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:34:37', '2020-02-19 08:34:37'),
(751, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:34:37', '2020-02-19 08:34:37'),
(752, 1, 'admin_panel/report/product', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:41:03', '2020-02-19 08:41:03'),
(753, 1, 'admin_panel/product', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:41:13', '2020-02-19 08:41:13'),
(754, 1, 'admin_panel/category', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:42:03', '2020-02-19 08:42:03'),
(755, 1, 'admin_panel/product', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:42:06', '2020-02-19 08:42:06'),
(756, 1, 'admin_panel/banner', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:42:09', '2020-02-19 08:42:09'),
(757, 1, 'admin_panel/page', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:42:11', '2020-02-19 08:42:11'),
(758, 1, 'admin_panel/module/block', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:42:52', '2020-02-19 08:42:52'),
(759, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:43:14', '2020-02-19 08:43:14'),
(760, 1, 'admin_panel/payment_status', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:43:25', '2020-02-19 08:43:25'),
(761, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:43:27', '2020-02-19 08:43:27'),
(762, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:47:30', '2020-02-19 08:47:30'),
(763, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 08:50:21', '2020-02-19 08:50:21'),
(764, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:08:50', '2020-02-19 09:08:50'),
(765, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:42:48', '2020-02-19 09:42:48'),
(766, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\",\"key\":\"Affiliate\",\"group\":\"Other\"}', '2020-02-19 09:42:53', '2020-02-19 09:42:53'),
(767, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 09:42:53', '2020-02-19 09:42:53'),
(768, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-19 09:43:05', '2020-02-19 09:43:05'),
(769, 1, 'admin_panel/locale/en', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:43:09', '2020-02-19 09:43:09'),
(770, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-19 09:43:09', '2020-02-19 09:43:09'),
(771, 1, 'admin_panel/locale/vi', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:43:13', '2020-02-19 09:43:13'),
(772, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-19 09:43:13', '2020-02-19 09:43:13'),
(773, 1, 'admin_panel/extension/process/Other/Affiliate', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"percen\",\"value\":\"15\",\"pk\":null,\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 09:43:20', '2020-02-19 09:43:20'),
(774, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-19 09:43:27', '2020-02-19 09:43:27'),
(775, 1, 'admin_panel/extension/Other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:44:33', '2020-02-19 09:44:33'),
(776, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\",\"key\":\"Affiliate\",\"group\":\"Other\"}', '2020-02-19 09:44:36', '2020-02-19 09:44:36'),
(777, 1, 'admin_panel/extension/Other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 09:44:36', '2020-02-19 09:44:36'),
(778, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\",\"key\":\"Affiliate\",\"group\":\"Other\"}', '2020-02-19 09:44:38', '2020-02-19 09:44:38'),
(779, 1, 'admin_panel/extension/Other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 09:44:39', '2020-02-19 09:44:39'),
(780, 1, 'admin_panel/extension/Other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-19 09:44:45', '2020-02-19 09:44:45'),
(781, 1, 'admin_panel/extension/process/Other/Affiliate', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"name\":\"percen\",\"value\":\"15\",\"pk\":\"1\",\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\"}', '2020-02-19 09:44:51', '2020-02-19 09:44:51'),
(782, 1, 'admin_panel/extension/Other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:45:03', '2020-02-19 09:45:03'),
(783, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_token\":\"fQpxG6EeTyGm1ShO4kRzA80cnMhRwoavyKJEzmvn\",\"key\":\"Affiliate\",\"group\":\"Other\"}', '2020-02-19 09:45:06', '2020-02-19 09:45:06'),
(784, 1, 'admin_panel/extension/Other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 09:45:06', '2020-02-19 09:45:06'),
(785, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:52:11', '2020-02-19 09:52:11'),
(786, 1, 'admin_panel/extension/shipping', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"GHTK\"}', '2020-02-19 09:52:13', '2020-02-19 09:52:13'),
(787, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:56:48', '2020-02-19 09:56:48'),
(788, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:56:50', '2020-02-19 09:56:50'),
(789, 1, 'admin_panel/order/detail/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:56:52', '2020-02-19 09:56:52'),
(790, 1, 'admin_panel/customer/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', '[]', '2020-02-19 09:56:59', '2020-02-19 09:56:59'),
(791, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:01:28', '2020-02-24 10:01:28'),
(792, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:01:33', '2020-02-24 10:01:33'),
(793, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\",\"key\":\"Affiliate\",\"group\":\"Other\"}', '2020-02-24 10:01:36', '2020-02-24 10:01:36'),
(794, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 10:01:37', '2020-02-24 10:01:37'),
(795, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:01:39', '2020-02-24 10:01:39'),
(796, 1, 'admin_panel/extension/uninstall', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\",\"key\":\"Affiliate\",\"group\":\"Other\"}', '2020-02-24 10:02:08', '2020-02-24 10:02:08'),
(797, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 10:02:08', '2020-02-24 10:02:08'),
(798, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:02:10', '2020-02-24 10:02:10'),
(799, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\",\"key\":\"Affiliate\",\"group\":\"Other\"}', '2020-02-24 10:02:12', '2020-02-24 10:02:12'),
(800, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 10:02:13', '2020-02-24 10:02:13'),
(801, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:02:14', '2020-02-24 10:02:14'),
(802, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:02:20', '2020-02-24 10:02:20'),
(803, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:02:21', '2020-02-24 10:02:21'),
(804, 1, 'admin_panel/category', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:03:52', '2020-02-24 10:03:52'),
(805, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:03:58', '2020-02-24 10:03:58');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(806, 1, 'admin_panel/order/detail/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:04:00', '2020-02-24 10:04:00'),
(807, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"status\",\"value\":\"5\",\"pk\":\"3\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:04:05', '2020-02-24 10:04:05'),
(808, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:04:09', '2020-02-24 10:04:09'),
(809, 1, 'admin_panel/order/delete', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:04:49', '2020-02-24 10:04:49'),
(810, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 10:04:49', '2020-02-24 10:04:49'),
(811, 1, 'admin_panel/order/delete', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:04:53', '2020-02-24 10:04:53'),
(812, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 10:04:53', '2020-02-24 10:04:53'),
(813, 1, 'admin_panel/order/delete', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:04:56', '2020-02-24 10:04:56'),
(814, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 10:04:56', '2020-02-24 10:04:56'),
(815, 1, 'admin_panel/order/delete', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:04:59', '2020-02-24 10:04:59'),
(816, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 10:04:59', '2020-02-24 10:04:59'),
(817, 1, 'admin_panel/order/delete', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:05:02', '2020-02-24 10:05:02'),
(818, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 10:05:02', '2020-02-24 10:05:02'),
(819, 1, 'admin_panel/customer_config', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:21:46', '2020-02-24 10:21:46'),
(820, 1, 'admin_panel/store_info', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:21:54', '2020-02-24 10:21:54'),
(821, 1, 'admin_panel/store_value', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:22:01', '2020-02-24 10:22:01'),
(822, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"shop_allow_guest\",\"value\":\"1\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:22:04', '2020-02-24 10:22:04'),
(823, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:29:55', '2020-02-24 10:29:55'),
(824, 1, 'admin_panel/order/detail/6', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:30:05', '2020-02-24 10:30:05'),
(825, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"status\",\"value\":\"5\",\"pk\":\"6\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:30:41', '2020-02-24 10:30:41'),
(826, 1, 'admin_panel/order/detail/6', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:30:43', '2020-02-24 10:30:43'),
(827, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"address\",\"value\":\"92468 Selena Port 1\",\"pk\":\"6\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:30:47', '2020-02-24 10:30:47'),
(828, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"ward\",\"value\":\"Connecticut 2\",\"pk\":\"6\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:30:49', '2020-02-24 10:30:49'),
(829, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"district\",\"value\":\"Hawaii 3\",\"pk\":\"6\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:30:51', '2020-02-24 10:30:51'),
(830, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"province\",\"value\":\"North Enriqueton 4\",\"pk\":\"6\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:30:53', '2020-02-24 10:30:53'),
(831, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"country\",\"value\":\"AL\",\"pk\":\"6\",\"_token\":\"iI5HCT9ZUAoFCk6XAZRYVR8orScfHcecFZODt75S\"}', '2020-02-24 10:30:56', '2020-02-24 10:30:56'),
(832, 1, 'admin_panel/order/detail/6', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:30:57', '2020-02-24 10:30:57'),
(833, 1, 'admin_panel/order/detail/6', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:41:10', '2020-02-24 10:41:10'),
(834, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"status\",\"value\":\"2\",\"pk\":\"6\",\"_token\":\"jMyVkTKrC4P8tdsAv4YbjD5Ln9sgxe0VdgxNRNHJ\"}', '2020-02-24 10:41:14', '2020-02-24 10:41:14'),
(835, 1, 'admin_panel/order/update', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"status\",\"value\":\"5\",\"pk\":\"6\",\"_token\":\"jMyVkTKrC4P8tdsAv4YbjD5Ln9sgxe0VdgxNRNHJ\"}', '2020-02-24 10:41:21', '2020-02-24 10:41:21'),
(836, 1, 'admin_panel/order/detail/6', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:42:56', '2020-02-24 10:42:56'),
(837, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:43:01', '2020-02-24 10:43:01'),
(838, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:44:30', '2020-02-24 10:44:30'),
(839, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:44:46', '2020-02-24 10:44:46'),
(840, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:44:46', '2020-02-24 10:44:46'),
(841, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:45:25', '2020-02-24 10:45:25'),
(842, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:46:18', '2020-02-24 10:46:18'),
(843, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-24 10:46:20', '2020-02-24 10:46:20'),
(844, 1, 'admin_panel/extension/process/Other/Affiliate', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"percent\",\"value\":\"15\",\"pk\":\"1\",\"_token\":\"5FDxvAy3KqYgu0UXXFQdt8PndRC679tvXpsospsG\"}', '2020-02-24 10:46:25', '2020-02-24 10:46:25'),
(845, 1, 'admin_panel/affiliate/order/cancel/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:46:38', '2020-02-24 10:46:38'),
(846, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:46:39', '2020-02-24 10:46:39'),
(847, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:46:41', '2020-02-24 10:46:41'),
(848, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:46:46', '2020-02-24 10:46:46'),
(849, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:46:49', '2020-02-24 10:46:49'),
(850, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:48:03', '2020-02-24 10:48:03'),
(851, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:48:51', '2020-02-24 10:48:51'),
(852, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:49:55', '2020-02-24 10:49:55'),
(853, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:51:58', '2020-02-24 10:51:58'),
(854, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:52:19', '2020-02-24 10:52:19'),
(855, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:54:30', '2020-02-24 10:54:30'),
(856, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:54:33', '2020-02-24 10:54:33'),
(857, 1, 'admin_panel/affiliate/order/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:54:46', '2020-02-24 10:54:46'),
(858, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:54:46', '2020-02-24 10:54:46'),
(859, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 10:54:49', '2020-02-24 10:54:49'),
(860, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 14:42:58', '2020-02-24 14:42:58'),
(861, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-24 14:43:00', '2020-02-24 14:43:00'),
(862, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-24 14:44:27', '2020-02-24 14:44:27'),
(863, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-24 14:44:42', '2020-02-24 14:44:42'),
(864, 1, 'admin_panel/extension/process/Other/Affiliate', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"min_withdraw\",\"value\":\"2000\",\"pk\":\"1\",\"_token\":\"wnFoHs55gOsCF3qa4neBUiAStqxZ0fIY3JHqe4cR\"}', '2020-02-24 14:44:48', '2020-02-24 14:44:48'),
(865, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-24 14:44:50', '2020-02-24 14:44:50'),
(866, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:09:28', '2020-02-24 15:09:28'),
(867, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:09:42', '2020-02-24 15:09:42'),
(868, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:12:22', '2020-02-24 15:12:22'),
(869, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:14:52', '2020-02-24 15:14:52'),
(870, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:17:20', '2020-02-24 15:17:20'),
(871, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:17:35', '2020-02-24 15:17:35'),
(872, 1, 'admin_panel/affiliate/user_withdraw/cancel/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:17:39', '2020-02-24 15:17:39'),
(873, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:17:39', '2020-02-24 15:17:39'),
(874, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:17:50', '2020-02-24 15:17:50'),
(875, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:18:03', '2020-02-24 15:18:03'),
(876, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:18:10', '2020-02-24 15:18:10'),
(877, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:18:12', '2020-02-24 15:18:12'),
(878, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:18:13', '2020-02-24 15:18:13'),
(879, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:19:12', '2020-02-24 15:19:12'),
(880, 1, 'admin_panel/affiliate/user_withdraw/cancel/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:19:15', '2020-02-24 15:19:15'),
(881, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:19:15', '2020-02-24 15:19:15'),
(882, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:20:18', '2020-02-24 15:20:18'),
(883, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:20:20', '2020-02-24 15:20:20'),
(884, 1, 'admin_panel/affiliate/user_withdraw/cancel/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:20:25', '2020-02-24 15:20:25'),
(885, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:20:25', '2020-02-24 15:20:25'),
(886, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:20:30', '2020-02-24 15:20:30'),
(887, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:23:49', '2020-02-24 15:23:49'),
(888, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:24:13', '2020-02-24 15:24:13'),
(889, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:24:29', '2020-02-24 15:24:29'),
(890, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:25:14', '2020-02-24 15:25:14'),
(891, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:25:16', '2020-02-24 15:25:16'),
(892, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:25:53', '2020-02-24 15:25:53'),
(893, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:26:03', '2020-02-24 15:26:03'),
(894, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:31:03', '2020-02-24 15:31:03'),
(895, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:31:25', '2020-02-24 15:31:25'),
(896, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:31:59', '2020-02-24 15:31:59'),
(897, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:33:48', '2020-02-24 15:33:48'),
(898, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:35:51', '2020-02-24 15:35:51'),
(899, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:36:08', '2020-02-24 15:36:08'),
(900, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:38:08', '2020-02-24 15:38:08'),
(901, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:38:22', '2020-02-24 15:38:22'),
(902, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:38:34', '2020-02-24 15:38:34'),
(903, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:38:35', '2020-02-24 15:38:35'),
(904, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:38:57', '2020-02-24 15:38:57'),
(905, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:39:15', '2020-02-24 15:39:15'),
(906, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:39:28', '2020-02-24 15:39:28'),
(907, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:39:34', '2020-02-24 15:39:34'),
(908, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:39:45', '2020-02-24 15:39:45'),
(909, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:39:55', '2020-02-24 15:39:55'),
(910, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:40:02', '2020-02-24 15:40:02'),
(911, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:41:57', '2020-02-24 15:41:57'),
(912, 1, 'admin_panel/affiliate/user_withdraw/confirm/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"transaction_id\":\"tenetur sint molestiae\",\"note\":\"et placeat adipisci\",\"_token\":\"wnFoHs55gOsCF3qa4neBUiAStqxZ0fIY3JHqe4cR\"}', '2020-02-24 15:42:13', '2020-02-24 15:42:13'),
(913, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:42:13', '2020-02-24 15:42:13'),
(914, 1, 'admin_panel/affiliate/user/detail/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-24 15:42:23', '2020-02-24 15:42:23'),
(915, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 10:19:01', '2020-02-26 10:19:01'),
(916, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 10:19:04', '2020-02-26 10:19:04'),
(917, 1, 'admin_panel/order/detail/8', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 10:19:43', '2020-02-26 10:19:43'),
(918, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 10:19:59', '2020-02-26 10:19:59'),
(919, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 13:40:44', '2020-02-26 13:40:44'),
(920, 1, 'admin_panel/email', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 13:40:52', '2020-02-26 13:40:52'),
(921, 1, 'admin_panel/email_template', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 13:40:52', '2020-02-26 13:40:52'),
(922, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"order_success_to_customer\",\"value\":\"1\",\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:40:59', '2020-02-26 13:40:59'),
(923, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"welcome_customer\",\"value\":\"1\",\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:40:59', '2020-02-26 13:40:59'),
(924, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"email_action_smtp_mode\",\"value\":\"1\",\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:41:00', '2020-02-26 13:41:00'),
(925, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"smtp_port\",\"value\":\"587\",\"pk\":\"smtp_port\",\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:41:17', '2020-02-26 13:41:17'),
(926, 1, 'admin_panel/email/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"smtp_security\",\"value\":\"TLS\",\"pk\":null,\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:41:19', '2020-02-26 13:41:19'),
(927, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"smtp_password\",\"value\":\"dmdm1122\",\"pk\":\"smtp_password\",\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:41:23', '2020-02-26 13:41:23'),
(928, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"smtp_user\",\"value\":\"dzu.ictu@gmail.com\",\"pk\":\"smtp_user\",\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:41:30', '2020-02-26 13:41:30'),
(929, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"smtp_host\",\"value\":\"smtp.gmail.com\",\"pk\":\"smtp_host\",\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:42:00', '2020-02-26 13:42:00'),
(930, 1, 'admin_panel/email', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 13:42:01', '2020-02-26 13:42:01'),
(931, 1, 'admin_panel/store_info', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 13:43:17', '2020-02-26 13:43:17'),
(932, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"order_success_to_admin\",\"value\":\"1\",\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:43:23', '2020-02-26 13:43:23'),
(933, 1, 'admin_panel/store_info/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"long_phone\",\"value\":\"0987654321\",\"pk\":null,\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:43:31', '2020-02-26 13:43:31'),
(934, 1, 'admin_panel/store_info/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"email\",\"value\":\"dzu6996@gmail.com\",\"pk\":null,\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:43:42', '2020-02-26 13:43:42'),
(935, 1, 'admin_panel/store_info/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"CBD\",\"pk\":null,\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:43:46', '2020-02-26 13:43:46'),
(936, 1, 'admin_panel/store_info/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"CBD\",\"pk\":null,\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:43:49', '2020-02-26 13:43:49'),
(937, 1, 'admin_panel/store_info/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"description__en\",\"value\":\"CBD\",\"pk\":null,\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:43:52', '2020-02-26 13:43:52'),
(938, 1, 'admin_panel/store_info/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"description__vi\",\"value\":\"CBD\",\"pk\":null,\"_token\":\"AiwsO5blttUmr0ROIiJ3WIgyvtEMDVleMrw0cJ42\"}', '2020-02-26 13:43:55', '2020-02-26 13:43:55'),
(939, 1, 'admin_panel/email_template/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 13:48:15', '2020-02-26 13:48:15'),
(940, 1, 'admin_panel/email_template/list_variable', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"key\":\"welcome_customer\"}', '2020-02-26 13:48:16', '2020-02-26 13:48:16'),
(941, 1, 'admin_panel/email_template/edit/2', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"Welcome new customer\",\"group\":\"welcome_customer\",\"text\":\"<p>Ch\\u00e0o <b>{{$first_name}}<\\/b>, c\\u1ea3m \\u01a1n b\\u1ea1n \\u0111\\u00e3 \\u0111\\u0103ng k\\u00fd t\\u00e0i kho\\u1ea3n t\\u1ea1i HempPlus !<\\/p>\\r\\n<p>\\u0110\\u00e2y l\\u00e0 t\\u00e0i kho\\u1ea3n \\u0111\\u0103ng nh\\u1eadp c\\u1ee7a b\\u1ea1n:<\\/p>\\r\\n<p>Email: <b>{{$email}}<\\/b><\\/p>\\r\\n<p>M\\u1eadt kh\\u1ea9u: <b>{{$password}}<\\/b><\\/p>\\r\\n<p>T\\u00e0i kho\\u1ea3n d\\u00f9ng \\u0111\\u1ec3 \\u0111\\u0103ng nh\\u1eadp website <a href=\\\"http:\\/\\/hempplus.net\\/\\\">HempPlus.Net<\\/a>, \\r\\n    b\\u1ea1n c\\u00f3 th\\u1ec3 ki\\u1ec3m tra tr\\u1ea1ng th\\u00e1i \\u0111\\u01a1n h\\u00e0ng v\\u00e0 b\\u00e1n h\\u00e0ng \\u0111\\u1ec3 t\\u00edch \\u0111i\\u1ec3m th\\u01b0\\u1edfng c\\u00f9ng ch\\u00fang t\\u00f4i. \\r\\n    \\u0110i\\u1ec3m th\\u01b0\\u1edfng c\\u00f3 th\\u1ec3 \\u0111\\u1ed5i r\\u1ea5t nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m c\\u00f3 gi\\u00e1 tr\\u1ecb, h\\u00e3y c\\u00f9ng kh\\u00e1m ph\\u00e1 nh\\u00e9!<\\/p>\",\"status\":\"on\",\"_token\":\"4OhUEZlTe52xPoLazuV9tW2rg9wOz6Fv6EGTovPo\"}', '2020-02-26 13:48:58', '2020-02-26 13:48:58'),
(942, 1, 'admin_panel/email_template', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 13:48:59', '2020-02-26 13:48:59'),
(943, 1, 'admin_panel/email', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:01:56', '2020-02-26 14:01:56'),
(944, 1, 'admin_panel/store_value/update_info', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"order_success_to_admin\",\"value\":\"0\",\"_token\":\"WtoaxRsmnvP6APV4aSK14k7t6uaEayM4DE0PE3cA\"}', '2020-02-26 14:01:59', '2020-02-26 14:01:59'),
(945, 1, 'admin_panel/email_template/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:03:06', '2020-02-26 14:03:06'),
(946, 1, 'admin_panel/email_template/edit/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:03:06', '2020-02-26 14:03:06'),
(947, 1, 'admin_panel/email_template/list_variable', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"key\":\"welcome_customer\"}', '2020-02-26 14:03:07', '2020-02-26 14:03:07'),
(948, 1, 'admin_panel/email_template/list_variable', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"key\":\"contact_to_admin\"}', '2020-02-26 14:03:08', '2020-02-26 14:03:08'),
(949, 1, 'admin_panel/email_template/edit/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:03:15', '2020-02-26 14:03:15'),
(950, 1, 'admin_panel/email_template/list_variable', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"key\":\"welcome_customer\"}', '2020-02-26 14:03:16', '2020-02-26 14:03:16'),
(951, 1, 'admin_panel/email_template/edit/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:03:22', '2020-02-26 14:03:22'),
(952, 1, 'admin_panel/email_template/edit/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:03:23', '2020-02-26 14:03:23'),
(953, 1, 'admin_panel/email_template/list_variable', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"key\":\"order_success_to_customer\"}', '2020-02-26 14:03:23', '2020-02-26 14:03:23'),
(954, 1, 'admin_panel/email_template/list_variable', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"key\":\"order_success_to_admin\"}', '2020-02-26 14:03:24', '2020-02-26 14:03:24'),
(955, 1, 'admin_panel/email_template/edit/5', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"New order to customr\",\"group\":\"order_success_to_customer\",\"text\":\"<tr style=\\\"background:#fff\\\">\\r\\n        <td align=\\\"left\\\" height=\\\"auto\\\" style=\\\"padding:15px\\\" width=\\\"600\\\">\\r\\n            <table >\\r\\n                <tbody>\\r\\n                <tr>\\r\\n                    <td>\\r\\n                        <h1 style=\\\"font-size:17px;font-weight:bold;color:#444;padding:0 0 5px 0;margin:0\\\">C\\u1ea3m \\u01a1n qu\\u00fd\\r\\n                            kh\\u00e1ch {{$toname}} \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng t\\u1ea1i HempPlus,<\\/h1>\\r\\n\\r\\n                        <p style=\\\"margin:4px 0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\\\">\\r\\n                            Ch\\u00fang t\\u00f4i r\\u1ea5t vui th\\u00f4ng b\\u00e1o \\u0111\\u01a1n h\\u00e0ng #{{$orderID}} c\\u1ee7a qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ti\\u1ebfp nh\\u1eadn v\\u00e0 \\u0111ang\\r\\n                            trong qu\\u00e1 tr\\u00ecnh x\\u1eed l\\u00fd. Ch\\u00fang t\\u00f4i s\\u1ebd th\\u00f4ng b\\u00e1o \\u0111\\u1ebfn qu\\u00fd kh\\u00e1ch ngay khi h\\u00e0ng chu\\u1ea9n b\\u1ecb \\u0111\\u01b0\\u1ee3c giao.<\\/p>\\r\\n\\r\\n                        <h3 style=\\\"font-size:13px;font-weight:bold;color:#02acea;text-transform:uppercase;margin:20px 0 0 0;border-bottom:1px solid #ddd\\\">\\r\\n                            Th\\u00f4ng tin \\u0111\\u01a1n h\\u00e0ng #{{$orderID}}\\r\\n                        <\\/h3>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n                <tr>\\r\\n                    <td style=\\\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\\\">\\r\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\r\\n                            <thead>\\r\\n                            <tr>\\r\\n                                <th align=\\\"left\\\"\\r\\n                                    style=\\\"padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold\\\"\\r\\n                                    width=\\\"50%\\\">Th\\u00f4ng tin thanh to\\u00e1n\\r\\n                                <\\/th>\\r\\n                                <th align=\\\"left\\\"\\r\\n                                    style=\\\"padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold\\\"\\r\\n                                    width=\\\"50%\\\"> \\u0110\\u1ecba ch\\u1ec9 giao h\\u00e0ng\\r\\n                                <\\/th>\\r\\n                            <\\/tr>\\r\\n                            <\\/thead>\\r\\n                            <tbody>\\r\\n                            <tr>\\r\\n                                <td style=\\\"padding:3px 9px 9px 9px;border-top:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\\\"\\r\\n                                    valign=\\\"top\\\"><span style=\\\"text-transform:capitalize\\\">{{$toname}}<\\/span><br>\\r\\n                                    <a href=\\\"mailto:dzu.ictu@gmail.com\\\" target=\\\"_blank\\\">{{$email}}<\\/a><br>\\r\\n                                    {{$phone}}\\r\\n                                <\\/td>\\r\\n                                <td style=\\\"padding:3px 9px 9px 9px;border-top:0;border-left:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\\\"\\r\\n                                    valign=\\\"top\\\"><span style=\\\"text-transform:capitalize\\\">{{$toname}}<\\/span><br>\\r\\n                                    <a href=\\\"mailto:dzu.ictu@gmail.com\\\" target=\\\"_blank\\\">{{$email}}<\\/a><br>\\r\\n                                    {{$address}}<br>\\r\\n                                    T: {{$phone}}\\r\\n                                <\\/td>\\r\\n                            <\\/tr>\\r\\n                            <\\/tbody>\\r\\n                        <\\/table>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n                <tr>\\r\\n                    <td>\\r\\n                        <h2 style=\\\"text-align:left;margin:10px 0;border-bottom:1px solid #ddd;padding-bottom:5px;font-size:13px;color:#02acea\\\">\\r\\n                            CHI TI\\u1ebeT \\u0110\\u01a0N H\\u00c0NG<\\/h2>\\r\\n\\r\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"background:#f5f5f5\\\" width=\\\"100%\\\">\\r\\n                            <thead>\\r\\n                            <tr>\\r\\n                                <th align=\\\"left\\\" bgcolor=\\\"#02acea\\\"\\r\\n                                    style=\\\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\\\">\\r\\n                                    S\\u1ea3n ph\\u1ea9m\\r\\n                                <\\/th>\\r\\n                                <th align=\\\"left\\\" bgcolor=\\\"#02acea\\\"\\r\\n                                    style=\\\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\\\">\\r\\n                                    \\u0110\\u01a1n gi\\u00e1\\r\\n                                <\\/th>\\r\\n                                <th align=\\\"left\\\" bgcolor=\\\"#02acea\\\"\\r\\n                                    style=\\\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\\\">\\r\\n                                    S\\u1ed1 l\\u01b0\\u1ee3ng\\r\\n                                <\\/th>\\r\\n                                <th align=\\\"right\\\" bgcolor=\\\"#02acea\\\"\\r\\n                                    style=\\\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\\\">\\r\\n                                    T\\u1ed5ng t\\u1ea1m\\r\\n                                <\\/th>\\r\\n                            <\\/tr>\\r\\n                            <\\/thead>\\r\\n                            <tbody bgcolor=\\\"#eee\\\"\\r\\n                                   style=\\\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\\\">\\r\\n                            {{$orderDetail}}\\r\\n                            <\\/tbody>\\r\\n                            <tfoot style=\\\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\\\">\\r\\n                            <tr bgcolor=\\\"#eee\\\">\\r\\n                                <td align=\\\"right\\\" colspan=\\\"3\\\" style=\\\"padding:7px 9px\\\"><strong><big>T\\u1ed5ng gi\\u00e1 tr\\u1ecb \\u0111\\u01a1n\\r\\n                                            h\\u00e0ng<\\/big> <\\/strong><\\/td>\\r\\n                                <td align=\\\"right\\\" style=\\\"padding:7px 9px\\\"><strong><big><span>{{$subtotal}}<\\/span> <\\/big>\\r\\n                                    <\\/strong><\\/td>\\r\\n                            <\\/tr>\\r\\n                            <\\/tfoot>\\r\\n                        <\\/table>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n                <tr>\\r\\n                    <td>\\u00a0\\r\\n                        <p style=\\\"font-family:Arial,Helvetica,sans-serif;font-size:12px;margin:0;padding:0;line-height:18px;color:#444;font-weight:bold\\\">\\r\\n                            M\\u1ed9t l\\u1ea7n n\\u1eefa HempPlus c\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch.<\\/p>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n                <\\/tbody>\\r\\n            <\\/table>\\r\\n        <\\/td>\\r\\n    <\\/tr>\",\"status\":\"on\",\"_token\":\"WtoaxRsmnvP6APV4aSK14k7t6uaEayM4DE0PE3cA\"}', '2020-02-26 14:03:55', '2020-02-26 14:03:55'),
(956, 1, 'admin_panel/email_template', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:03:55', '2020-02-26 14:03:55');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(957, 1, 'admin_panel/email_template/edit/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"New order to admin\",\"group\":\"order_success_to_admin\",\"text\":\"<tr style=\\\"background:#fff\\\">\\r\\n        <td align=\\\"left\\\" height=\\\"auto\\\" style=\\\"padding:15px\\\" width=\\\"600\\\">\\r\\n            <table >\\r\\n                <tbody>\\r\\n                <tr>\\r\\n                    <td>\\r\\n                        <h1 style=\\\"font-size:17px;font-weight:bold;color:#444;padding:0 0 5px 0;margin:0\\\">C\\u1ea3m \\u01a1n qu\\u00fd\\r\\n                            kh\\u00e1ch {{$toname}} \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng t\\u1ea1i HempPlus,<\\/h1>\\r\\n\\r\\n                        <p style=\\\"margin:4px 0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\\\">\\r\\n                            Ch\\u00fang t\\u00f4i r\\u1ea5t vui th\\u00f4ng b\\u00e1o \\u0111\\u01a1n h\\u00e0ng #{{$orderID}} c\\u1ee7a qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ti\\u1ebfp nh\\u1eadn v\\u00e0 \\u0111ang\\r\\n                            trong qu\\u00e1 tr\\u00ecnh x\\u1eed l\\u00fd. Ch\\u00fang t\\u00f4i s\\u1ebd th\\u00f4ng b\\u00e1o \\u0111\\u1ebfn qu\\u00fd kh\\u00e1ch ngay khi h\\u00e0ng chu\\u1ea9n b\\u1ecb \\u0111\\u01b0\\u1ee3c giao.<\\/p>\\r\\n\\r\\n                        <h3 style=\\\"font-size:13px;font-weight:bold;color:#02acea;text-transform:uppercase;margin:20px 0 0 0;border-bottom:1px solid #ddd\\\">\\r\\n                            Th\\u00f4ng tin \\u0111\\u01a1n h\\u00e0ng #{{$orderID}}\\r\\n                        <\\/h3>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n                <tr>\\r\\n                    <td style=\\\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\\\">\\r\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\\r\\n                            <thead>\\r\\n                            <tr>\\r\\n                                <th align=\\\"left\\\"\\r\\n                                    style=\\\"padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold\\\"\\r\\n                                    width=\\\"50%\\\">Th\\u00f4ng tin thanh to\\u00e1n\\r\\n                                <\\/th>\\r\\n                                <th align=\\\"left\\\"\\r\\n                                    style=\\\"padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold\\\"\\r\\n                                    width=\\\"50%\\\"> \\u0110\\u1ecba ch\\u1ec9 giao h\\u00e0ng\\r\\n                                <\\/th>\\r\\n                            <\\/tr>\\r\\n                            <\\/thead>\\r\\n                            <tbody>\\r\\n                            <tr>\\r\\n                                <td style=\\\"padding:3px 9px 9px 9px;border-top:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\\\"\\r\\n                                    valign=\\\"top\\\"><span style=\\\"text-transform:capitalize\\\">{{$toname}}<\\/span><br>\\r\\n                                    <a href=\\\"mailto:dzu.ictu@gmail.com\\\" target=\\\"_blank\\\">{{$email}}<\\/a><br>\\r\\n                                    {{$phone}}\\r\\n                                <\\/td>\\r\\n                                <td style=\\\"padding:3px 9px 9px 9px;border-top:0;border-left:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\\\"\\r\\n                                    valign=\\\"top\\\"><span style=\\\"text-transform:capitalize\\\">{{$toname}}<\\/span><br>\\r\\n                                    <a href=\\\"mailto:dzu.ictu@gmail.com\\\" target=\\\"_blank\\\">{{$email}}<\\/a><br>\\r\\n                                    {{$address}}<br>\\r\\n                                    T: {{$phone}}\\r\\n                                <\\/td>\\r\\n                            <\\/tr>\\r\\n                            <\\/tbody>\\r\\n                        <\\/table>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n                <tr>\\r\\n                    <td>\\r\\n                        <h2 style=\\\"text-align:left;margin:10px 0;border-bottom:1px solid #ddd;padding-bottom:5px;font-size:13px;color:#02acea\\\">\\r\\n                            CHI TI\\u1ebeT \\u0110\\u01a0N H\\u00c0NG<\\/h2>\\r\\n\\r\\n                        <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"background:#f5f5f5\\\" width=\\\"100%\\\">\\r\\n                            <thead>\\r\\n                            <tr>\\r\\n                                <th align=\\\"left\\\" bgcolor=\\\"#02acea\\\"\\r\\n                                    style=\\\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\\\">\\r\\n                                    S\\u1ea3n ph\\u1ea9m\\r\\n                                <\\/th>\\r\\n                                <th align=\\\"left\\\" bgcolor=\\\"#02acea\\\"\\r\\n                                    style=\\\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\\\">\\r\\n                                    \\u0110\\u01a1n gi\\u00e1\\r\\n                                <\\/th>\\r\\n                                <th align=\\\"left\\\" bgcolor=\\\"#02acea\\\"\\r\\n                                    style=\\\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\\\">\\r\\n                                    S\\u1ed1 l\\u01b0\\u1ee3ng\\r\\n                                <\\/th>\\r\\n                                <th align=\\\"right\\\" bgcolor=\\\"#02acea\\\"\\r\\n                                    style=\\\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\\\">\\r\\n                                    T\\u1ed5ng t\\u1ea1m\\r\\n                                <\\/th>\\r\\n                            <\\/tr>\\r\\n                            <\\/thead>\\r\\n                            <tbody bgcolor=\\\"#eee\\\"\\r\\n                                   style=\\\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\\\">\\r\\n                            {{$orderDetail}}\\r\\n                            <\\/tbody>\\r\\n                            <tfoot style=\\\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\\\">\\r\\n                            <tr bgcolor=\\\"#eee\\\">\\r\\n                                <td align=\\\"right\\\" colspan=\\\"3\\\" style=\\\"padding:7px 9px\\\"><strong><big>T\\u1ed5ng gi\\u00e1 tr\\u1ecb \\u0111\\u01a1n\\r\\n                                            h\\u00e0ng<\\/big> <\\/strong><\\/td>\\r\\n                                <td align=\\\"right\\\" style=\\\"padding:7px 9px\\\"><strong><big><span>{{$subtotal}}<\\/span> <\\/big>\\r\\n                                    <\\/strong><\\/td>\\r\\n                            <\\/tr>\\r\\n                            <\\/tfoot>\\r\\n                        <\\/table>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n                <tr>\\r\\n                    <td>\\u00a0\\r\\n                        <p style=\\\"font-family:Arial,Helvetica,sans-serif;font-size:12px;margin:0;padding:0;line-height:18px;color:#444;font-weight:bold\\\">\\r\\n                            M\\u1ed9t l\\u1ea7n n\\u1eefa HempPlus c\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch.<\\/p>\\r\\n                    <\\/td>\\r\\n                <\\/tr>\\r\\n                <\\/tbody>\\r\\n            <\\/table>\\r\\n        <\\/td>\\r\\n    <\\/tr>\",\"status\":\"on\",\"_token\":\"WtoaxRsmnvP6APV4aSK14k7t6uaEayM4DE0PE3cA\"}', '2020-02-26 14:04:05', '2020-02-26 14:04:05'),
(958, 1, 'admin_panel/email_template', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:04:05', '2020-02-26 14:04:05'),
(959, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:05:48', '2020-02-26 14:05:48'),
(960, 1, 'admin_panel/customer/edit/10', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:05:53', '2020-02-26 14:05:53'),
(961, 1, 'admin_panel/customer/edit/10', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"first_name\":\"Theresia\",\"last_name\":\"Bridie\",\"email\":\"cayvl3.1@gmail.com\",\"phone\":\"0123456789\",\"country\":\"AL\",\"province\":\"Mississippi\",\"district\":\"Texas\",\"ward\":\"Georgia\",\"address\":\"125 Angela Tunnel\",\"password\":\"123123\",\"status\":\"on\",\"_token\":\"WtoaxRsmnvP6APV4aSK14k7t6uaEayM4DE0PE3cA\"}', '2020-02-26 14:05:58', '2020-02-26 14:05:58'),
(962, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:05:58', '2020-02-26 14:05:58'),
(963, 1, 'admin_panel/affiliate/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:06:44', '2020-02-26 14:06:44'),
(964, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:06:47', '2020-02-26 14:06:47'),
(965, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:06:49', '2020-02-26 14:06:49'),
(966, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:06:56', '2020-02-26 14:06:56'),
(967, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:13:55', '2020-02-26 14:13:55'),
(968, 1, 'admin_panel/customer/edit/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:13:59', '2020-02-26 14:13:59'),
(969, 1, 'admin_panel/customer/edit/3', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"first_name\":\"Alessandro\",\"last_name\":\"Deckow\",\"email\":\"cayvl3.1@gmail.com\",\"phone\":\"0123456789\",\"country\":\"VN\",\"province\":\"North Enriqueton\",\"district\":\"Hawaii\",\"ward\":\"Connecticut\",\"address\":\"92468 Selena Port\",\"password\":null,\"status\":\"on\",\"_token\":\"bvk8kfSekf53ZdcTsgpYueRLLJTIraZlFd7vl6yH\"}', '2020-02-26 14:14:09', '2020-02-26 14:14:09'),
(970, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:14:09', '2020-02-26 14:14:09'),
(971, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:14:13', '2020-02-26 14:14:13'),
(972, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"action\":\"config\",\"extensionKey\":\"Affiliate\"}', '2020-02-26 14:14:15', '2020-02-26 14:14:15'),
(973, 1, 'admin_panel/extension/process/Other/Affiliate', 'PUT', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"name\":\"min_withdraw\",\"value\":\"1000.00\",\"pk\":\"1\",\"_token\":\"bvk8kfSekf53ZdcTsgpYueRLLJTIraZlFd7vl6yH\"}', '2020-02-26 14:14:20', '2020-02-26 14:14:20'),
(974, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:14:54', '2020-02-26 14:14:54'),
(975, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:14:57', '2020-02-26 14:14:57'),
(976, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:14:59', '2020-02-26 14:14:59'),
(977, 1, 'admin_panel/affiliate/user', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:15:16', '2020-02-26 14:15:16'),
(978, 1, 'admin_panel/customer/edit/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:15:19', '2020-02-26 14:15:19'),
(979, 1, 'admin_panel/customer/edit/3', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"first_name\":\"Alessandro\",\"last_name\":\"Deckow\",\"email\":\"cayvl3.1@gmail.com\",\"phone\":\"0123456789\",\"country\":\"VN\",\"province\":\"North Enriqueton\",\"district\":\"Hawaii\",\"ward\":\"Connecticut\",\"address\":\"92468 Selena Port\",\"password\":\"123123\",\"status\":\"on\",\"_token\":\"DlwaVeDz7KDoSgscvAlbmbRST7SUjAPAxkIOfqKi\"}', '2020-02-26 14:15:22', '2020-02-26 14:15:22'),
(980, 1, 'admin_panel/customer', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:15:22', '2020-02-26 14:15:22'),
(981, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:23:09', '2020-02-26 14:23:09'),
(982, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:23:11', '2020-02-26 14:23:11'),
(983, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"transaction_id\":\"transaction\",\"note\":\"da chuhyen tien\",\"_token\":\"XGrs2zm5lRrP7vvRbxEYbK2lDoEneGGLrrgrhmjL\"}', '2020-02-26 14:23:33', '2020-02-26 14:23:33'),
(984, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:23:33', '2020-02-26 14:23:33'),
(985, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"transaction_id\":\"512-785-1488\",\"note\":\"officia dolor velit\",\"_token\":\"XGrs2zm5lRrP7vvRbxEYbK2lDoEneGGLrrgrhmjL\"}', '2020-02-26 14:23:54', '2020-02-26 14:23:54'),
(986, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:23:56', '2020-02-26 14:23:56'),
(987, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"transaction_id\":\"512-785-1488\",\"note\":\"officia dolor velit\",\"_token\":\"XGrs2zm5lRrP7vvRbxEYbK2lDoEneGGLrrgrhmjL\"}', '2020-02-26 14:24:21', '2020-02-26 14:24:21'),
(988, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:24:21', '2020-02-26 14:24:21'),
(989, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:24:28', '2020-02-26 14:24:28'),
(990, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"transaction_id\":\"901-768-9133\",\"note\":\"vel distinctio aut\",\"_token\":\"XGrs2zm5lRrP7vvRbxEYbK2lDoEneGGLrrgrhmjL\"}', '2020-02-26 14:25:08', '2020-02-26 14:25:08'),
(991, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:25:08', '2020-02-26 14:25:08'),
(992, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"transaction_id\":\"123123\",\"note\":\"1345seadad\",\"_token\":\"XGrs2zm5lRrP7vvRbxEYbK2lDoEneGGLrrgrhmjL\"}', '2020-02-26 14:25:35', '2020-02-26 14:25:35'),
(993, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:25:37', '2020-02-26 14:25:37'),
(994, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:25:50', '2020-02-26 14:25:50'),
(995, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:26:20', '2020-02-26 14:26:20'),
(996, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:26:22', '2020-02-26 14:26:22'),
(997, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"transaction_id\":\"534-400-1798\",\"note\":\"quibusdam voluptatem molestias\",\"_token\":\"XGrs2zm5lRrP7vvRbxEYbK2lDoEneGGLrrgrhmjL\"}', '2020-02-26 14:26:30', '2020-02-26 14:26:30'),
(998, 1, 'admin_panel/affiliate/user_withdraw/confirm/3', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:26:35', '2020-02-26 14:26:35'),
(999, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:26:47', '2020-02-26 14:26:47'),
(1000, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:27:11', '2020-02-26 14:27:11'),
(1001, 1, 'admin_panel/affiliate/user_withdraw/confirm/4', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:27:34', '2020-02-26 14:27:34'),
(1002, 1, 'admin_panel/affiliate/user_withdraw/confirm/4', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"transaction_id\":\"659-465-2289\",\"note\":\"asperiores commodi sunt\",\"_token\":\"XGrs2zm5lRrP7vvRbxEYbK2lDoEneGGLrrgrhmjL\"}', '2020-02-26 14:27:43', '2020-02-26 14:27:43'),
(1003, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:27:47', '2020-02-26 14:27:47'),
(1004, 1, 'admin_panel', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:50:16', '2020-02-26 14:50:16'),
(1005, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:50:24', '2020-02-26 14:50:24'),
(1006, 1, 'admin_panel/order/detail/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:50:30', '2020-02-26 14:50:30'),
(1007, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:50:58', '2020-02-26 14:50:58'),
(1008, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:53:59', '2020-02-26 14:53:59'),
(1009, 1, 'admin_panel/extension/install', 'POST', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_token\":\"XGrs2zm5lRrP7vvRbxEYbK2lDoEneGGLrrgrhmjL\",\"key\":\"ExportInvoice\",\"group\":\"Other\"}', '2020-02-26 14:54:02', '2020-02-26 14:54:02'),
(1010, 1, 'admin_panel/extension/other', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-26 14:54:02', '2020-02-26 14:54:02'),
(1011, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:54:06', '2020-02-26 14:54:06'),
(1012, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:56:18', '2020-02-26 14:56:18'),
(1013, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:56:20', '2020-02-26 14:56:20'),
(1014, 1, 'admin_panel/order', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:56:33', '2020-02-26 14:56:33'),
(1015, 1, 'admin_panel/invoice/order/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:56:36', '2020-02-26 14:56:36'),
(1016, 1, 'admin_panel/invoice/order/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:57:11', '2020-02-26 14:57:11'),
(1017, 1, 'admin_panel/invoice/order/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:58:43', '2020-02-26 14:58:43'),
(1018, 1, 'admin_panel/order/detail/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 14:58:57', '2020-02-26 14:58:57'),
(1019, 1, 'admin_panel/invoice/order/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:00:06', '2020-02-26 15:00:06'),
(1020, 1, 'admin_panel/invoice/order/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:01:13', '2020-02-26 15:01:13'),
(1021, 1, 'admin_panel/order/detail/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:04:24', '2020-02-26 15:04:24'),
(1022, 1, 'admin_panel/invoice/order/15', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:04:28', '2020-02-26 15:04:28'),
(1023, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:04:52', '2020-02-26 15:04:52'),
(1024, 1, 'admin_panel/affiliate/user_withdraw/confirm/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:06:02', '2020-02-26 15:06:02'),
(1025, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:06:25', '2020-02-26 15:06:25'),
(1026, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:06:33', '2020-02-26 15:06:33'),
(1027, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:07:35', '2020-02-26 15:07:35'),
(1028, 1, 'admin_panel/affiliate/user_withdraw', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:08:35', '2020-02-26 15:08:35'),
(1029, 1, 'admin_panel/invoice/withdraw/1', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:08:37', '2020-02-26 15:08:37'),
(1030, 1, 'admin_panel/invoice/withdraw/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:09:27', '2020-02-26 15:09:27'),
(1031, 1, 'admin_panel/invoice/withdraw/2', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:11:44', '2020-02-26 15:11:44'),
(1032, 1, 'admin_panel/invoice/withdraw/5', 'GET', '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '[]', '2020-02-26 15:11:57', '2020-02-26 15:11:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `key`, `permission`, `created_at`, `updated_at`) VALUES
(1, 6, 11, 'lang::admin.menu_titles.order_manager', 'fa-cart-arrow-down', '', 0, NULL, NULL, NULL, NULL),
(2, 6, 12, 'lang::admin.menu_titles.catalog_mamager', 'fa-folder-open', '', 0, NULL, NULL, NULL, NULL),
(3, 6, 13, 'lang::admin.menu_titles.customer_manager', 'fa-group', '', 0, NULL, NULL, NULL, NULL),
(4, 8, 201, 'lang::admin.menu_titles.template_layout', 'fa-object-ungroup', '', 0, NULL, NULL, NULL, NULL),
(5, 9, 301, 'lang::admin.menu_titles.config_manager', 'fa-cogs', '', 0, NULL, NULL, NULL, NULL),
(6, 0, 10, 'lang::ADMIN SHOP', 'fa-minus', '', 0, NULL, NULL, NULL, NULL),
(7, 0, 100, 'lang::ADMIN CONTENT', 'fa-minus', '', 0, NULL, NULL, NULL, NULL),
(8, 0, 200, 'lang::ADMIN EXTENSION', 'fa-minus', '', 0, NULL, NULL, NULL, NULL),
(9, 0, 300, 'lang::ADMIN SYSTEM', 'fa-minus', '', 0, NULL, NULL, NULL, NULL),
(10, 7, 102, 'lang::page.admin.title', 'fa-clone', 'admin::page', 0, NULL, NULL, NULL, NULL),
(11, 1, 6, 'lang::shipping_status.admin.title', 'fa-truck', 'admin::shipping_status', 0, NULL, NULL, NULL, NULL),
(12, 1, 3, 'lang::order.admin.title', 'fa-shopping-cart', 'admin::order', 0, NULL, NULL, NULL, NULL),
(13, 1, 4, 'lang::order_status.admin.title', 'fa-asterisk', 'admin::order_status', 0, NULL, NULL, NULL, NULL),
(14, 1, 5, 'lang::payment_status.admin.title', 'fa-recycle', 'admin::payment_status', 0, NULL, NULL, NULL, NULL),
(15, 2, 0, 'lang::category.admin.title', 'fa-folder-open-o', 'admin::category', 0, NULL, NULL, NULL, NULL),
(16, 2, 0, 'lang::product.admin.title', 'fa-file-photo-o', 'admin::product', 0, NULL, NULL, NULL, NULL),
(17, 2, 0, 'lang::vendor.admin.title', 'fa-user-secret', 'admin::vendor', 0, NULL, NULL, NULL, NULL),
(18, 2, 0, 'lang::brand.admin.title', 'fa-bank', 'admin::brand', 0, NULL, NULL, NULL, NULL),
(19, 2, 0, 'lang::attribute_group.admin.title', 'fa-bars', 'admin::attribute_group', 0, NULL, NULL, NULL, NULL),
(20, 3, 0, 'lang::customer.admin.title', 'fa-user', 'admin::customer', 0, NULL, NULL, NULL, NULL),
(21, 3, 0, 'lang::subscribe.admin.title', 'fa-user-circle-o', 'admin::subscribe', 0, NULL, NULL, NULL, NULL),
(22, 4, 0, 'lang::block_content.admin.title', 'fa-newspaper-o', 'admin::block_content', 0, NULL, NULL, NULL, NULL),
(23, 4, 0, 'lang::link.admin.title', 'fa-chrome', 'admin::link', 0, NULL, NULL, NULL, NULL),
(24, 4, 0, 'lang::template.admin.title', 'fa-columns', 'admin::template', 0, NULL, NULL, NULL, NULL),
(25, 5, 2, 'lang::store_value.admin.title', 'fa-code', 'admin::store_value', 0, NULL, NULL, NULL, NULL),
(26, 5, 1, 'lang::store_info.admin.title', 'fa-h-square', 'admin::store_info', 0, NULL, NULL, NULL, NULL),
(27, 5, 4, 'lang::admin.menu_titles.email_setting', 'fa-envelope', '', 0, NULL, NULL, NULL, NULL),
(28, 27, 0, 'lang::email.admin.title', 'fa-cog', 'admin::email', 0, NULL, NULL, NULL, NULL),
(29, 27, 0, 'lang::email_template.admin.title', 'fa-bars', 'admin::email_template', 0, NULL, NULL, NULL, NULL),
(30, 5, 5, 'lang::admin.menu_titles.localisation', 'fa-shirtsinbulk', '', 0, NULL, NULL, NULL, NULL),
(31, 30, 0, 'lang::language.admin.title', 'fa-pagelines', 'admin::language', 0, NULL, NULL, NULL, NULL),
(32, 30, 0, 'lang::currency.admin.title', 'fa-dollar', 'admin::currency', 0, NULL, NULL, NULL, NULL),
(33, 7, 101, 'lang::banner.admin.title', 'fa-image', 'admin::banner', 0, NULL, NULL, NULL, NULL),
(34, 5, 5, 'lang::backup.admin.title', 'fa-save', 'admin::backup', 0, NULL, NULL, NULL, NULL),
(35, 8, 202, 'lang::admin.menu_titles.extensions', 'fa-puzzle-piece', '', 0, NULL, NULL, NULL, NULL),
(36, 8, 202, 'lang::admin.menu_titles.modules', 'fa-codepen', '', 0, NULL, NULL, NULL, NULL),
(37, 9, 302, 'lang::admin.menu_titles.report_manager', 'fa-pie-chart', '', 0, NULL, NULL, NULL, NULL),
(38, 9, 0, 'lang::admin.menu_titles.admin', 'fa-sitemap', '', 0, NULL, NULL, NULL, NULL),
(39, 35, 0, 'admin.extension_manager.Payment', 'fa-money', 'admin::extension/payment', 0, NULL, NULL, NULL, NULL),
(40, 35, 0, 'admin.extension_manager.Shipping', 'fa-ambulance', 'admin::extension/shipping', 0, NULL, NULL, NULL, NULL),
(41, 35, 0, 'admin.extension_manager.Total', 'fa-cog', 'admin::extension/total', 0, NULL, NULL, NULL, NULL),
(42, 35, 0, 'admin.extension_manager.Other', 'fa-circle-thin', 'admin::extension/other', 0, NULL, NULL, NULL, NULL),
(43, 36, 0, 'admin.module_manager.Cms', 'fa-modx', 'admin::module/cms', 0, NULL, NULL, NULL, NULL),
(44, 36, 0, 'admin.module_manager.Block', 'fa-cube', 'admin::module/block', 0, NULL, NULL, NULL, NULL),
(45, 36, 0, 'admin.module_manager.Other', 'fa-circle-thin', 'admin::module/other', 0, NULL, NULL, NULL, NULL),
(46, 38, 0, 'lang::admin.menu_titles.users', 'fa-users', 'admin::user', 0, NULL, NULL, NULL, NULL),
(47, 38, 0, 'lang::admin.menu_titles.roles', 'fa-user', 'admin::role', 0, NULL, NULL, NULL, NULL),
(48, 38, 0, 'lang::admin.menu_titles.permission', 'fa-ban', 'admin::permission', 0, NULL, NULL, NULL, NULL),
(49, 38, 0, 'lang::admin.menu_titles.menu', 'fa-bars', 'admin::menu', 0, NULL, NULL, NULL, NULL),
(50, 38, 0, 'lang::admin.menu_titles.operation_log', 'fa-history', 'admin::log', 0, NULL, NULL, NULL, NULL),
(52, 7, 103, 'lang::news.admin.title', 'fa-file-powerpoint-o', 'admin::news', 0, NULL, NULL, NULL, NULL),
(53, 5, 3, 'lang::env.title', 'fa-cog', 'admin::env', 0, NULL, NULL, NULL, NULL),
(54, 37, 0, 'lang::admin.menu_titles.report_product', 'fa-bars', 'admin::report/product', 0, NULL, NULL, NULL, NULL),
(55, 5, 2, 'lang::product.config_manager.title', 'fa-product-hunt', 'admin::product_config', 0, NULL, NULL, NULL, NULL),
(56, 5, 2, 'lang::customer.config_manager.title', 'fa-address-card-o', 'admin::customer_config', 0, NULL, NULL, NULL, NULL),
(57, 5, 2, 'lang::link.config_manager.title', 'fa-gg', 'admin::url_config', 0, NULL, NULL, NULL, NULL),
(58, 1, 7, 'Quản lý kho hàng GHTK', 'fa-bank', 'route::ghtk.warehouses.index', 0, NULL, NULL, '2020-02-14 09:26:53', '2020-02-14 09:26:53'),
(63, 6, 14, 'Quản lý Affiliate', 'fa-percent', '', 0, NULL, NULL, '2020-02-24 10:02:13', '2020-02-24 10:02:13'),
(64, 63, 0, 'Quản lý khách hàng Affiliate', 'fa-user', 'route::affiliate.user.index', 0, NULL, NULL, '2020-02-24 10:02:13', '2020-02-24 10:02:13'),
(65, 63, 0, 'Quản lý đơn hàng Affiliate', 'fa-shopping-cart', 'route::affiliate.order.index', 0, NULL, NULL, '2020-02-24 10:02:13', '2020-02-24 10:02:13'),
(66, 63, 0, 'Quản lý rút tiền', 'fa-money', 'route::affiliate.user_withdraw.index', 0, NULL, NULL, '2020-02-24 10:02:13', '2020-02-24 10:02:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu_permission`
--

CREATE TABLE `admin_menu_permission` (
  `menu_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permission`
--

CREATE TABLE `admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permission`
--

INSERT INTO `admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Admin manager', 'admin.manager', 'GET::sc_admin/user,GET::sc_admin/role,GET::sc_admin/permission,ANY::sc_admin/log/*,ANY::sc_admin/menu/*', '2020-02-12 10:47:52', NULL),
(2, 'Dashboard', 'dashboard', 'GET::sc_admin', '2020-02-12 10:47:52', NULL),
(3, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', '2020-02-12 10:47:52', NULL),
(4, 'Setting manager', 'setting.full', 'ANY::sc_admin/store_info/*,ANY::sc_admin/store_value/*,ANY::sc_admin/url_config/*,ANY::sc_admin/product_config/*, ANY::sc_admin/customer_config/*, ANY::sc_admin/env/*,ANY::sc_admin/email/*,ANY::sc_admin/email_template/*,ANY::sc_admin/language/*,ANY::sc_admin/currency/*,ANY::sc_admin/backup/*', '2020-02-12 10:47:52', NULL),
(5, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', '2020-02-12 10:47:52', NULL),
(6, 'Module manager', 'module.full', 'ANY::sc_admin/module/*', '2020-02-12 10:47:52', NULL),
(7, 'Extension manager', 'extension.full', 'ANY::sc_admin/extension/*', '2020-02-12 10:47:52', NULL),
(8, 'CMS manager', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', '2020-02-12 10:47:52', NULL),
(11, 'Discount manager', 'discount.full', 'ANY::sc_admin/shop_discount/*', '2020-02-12 10:47:52', NULL),
(14, 'Shipping status', 'shipping_status.full', 'ANY::sc_admin/shipping_status/*', '2020-02-12 10:47:52', NULL),
(15, 'Payment  status', 'payment_status.full', 'ANY::sc_admin/payment_status/*', '2020-02-12 10:47:52', NULL),
(17, 'Customer manager', 'customer.full', 'ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*', '2020-02-12 10:47:52', NULL),
(18, 'Order status', 'order_status.full', 'ANY::sc_admin/order_status/*', '2020-02-12 10:47:52', NULL),
(19, 'Product manager', 'product.full', 'ANY::sc_admin/category/*,ANY::sc_admin/vendor/*,ANY::sc_admin/brand/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/product/*', '2020-02-12 10:47:52', NULL),
(20, 'Order Manager', 'order.full', 'ANY::sc_admin/order/*', '2020-02-12 10:47:52', NULL),
(21, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', '2020-02-12 10:47:52', NULL),
(22, 'Template manager', 'template.full', 'ANY::sc_admin/block_content/*,ANY::sc_admin/link/*,ANY::sc_admin/template/*', '2020-02-12 10:47:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-02-12 10:47:52', NULL),
(2, 'Group only View', 'view.all', '2020-02-12 10:47:52', NULL),
(3, 'Manager', 'manager', '2020-02-12 10:47:52', NULL),
(4, 'Cms manager', 'cms', '2020-02-12 10:47:52', NULL),
(5, 'Accountant', 'accountant', '2020-02-12 10:47:52', NULL),
(6, 'Marketing', 'maketing', '2020-02-12 10:47:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 38, '2020-02-12 10:47:52', NULL),
(2, 38, '2020-02-12 10:47:52', NULL),
(3, 38, '2020-02-12 10:47:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_permission`
--

CREATE TABLE `admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_permission`
--

INSERT INTO `admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2020-02-12 10:47:52', NULL),
(3, 2, '2020-02-12 10:47:52', NULL),
(3, 3, '2020-02-12 10:47:52', NULL),
(3, 4, '2020-02-12 10:47:52', NULL),
(3, 5, '2020-02-12 10:47:52', NULL),
(3, 8, '2020-02-12 10:47:52', NULL),
(3, 11, '2020-02-12 10:47:52', NULL),
(3, 14, '2020-02-12 10:47:52', NULL),
(3, 15, '2020-02-12 10:47:52', NULL),
(3, 17, '2020-02-12 10:47:52', NULL),
(3, 18, '2020-02-12 10:47:52', NULL),
(3, 19, '2020-02-12 10:47:52', NULL),
(3, 20, '2020-02-12 10:47:52', NULL),
(3, 21, '2020-02-12 10:47:52', NULL),
(3, 22, '2020-02-12 10:47:52', NULL),
(4, 3, '2020-02-12 10:47:52', NULL),
(4, 5, '2020-02-12 10:47:52', NULL),
(4, 8, '2020-02-12 10:47:52', NULL),
(5, 2, '2020-02-12 10:47:52', NULL),
(5, 3, '2020-02-12 10:47:52', NULL),
(5, 20, '2020-02-12 10:47:52', NULL),
(5, 21, '2020-02-12 10:47:52', NULL),
(6, 2, '2020-02-12 10:47:52', NULL),
(6, 3, '2020-02-12 10:47:52', NULL),
(6, 5, '2020-02-12 10:47:52', NULL),
(6, 8, '2020-02-12 10:47:52', NULL),
(6, 11, '2020-02-12 10:47:52', NULL),
(6, 14, '2020-02-12 10:47:52', NULL),
(6, 15, '2020-02-12 10:47:52', NULL),
(6, 17, '2020-02-12 10:47:52', NULL),
(6, 18, '2020-02-12 10:47:52', NULL),
(6, 19, '2020-02-12 10:47:52', NULL),
(6, 20, '2020-02-12 10:47:52', NULL),
(6, 21, '2020-02-12 10:47:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_user`
--

CREATE TABLE `admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_user`
--

INSERT INTO `admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_store`
--

CREATE TABLE `admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_status` tinyint(4) NOT NULL DEFAULT '1',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_store`
--

INSERT INTO `admin_store` (`id`, `logo`, `site_status`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`) VALUES
(1, '/data/logo/scart-mid.png', 1, '0123456789', '0987654321', 'dzu6996@gmail.com', '', '123st - abc - xyz', NULL, NULL, 'default');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_store_description`
--

CREATE TABLE `admin_store_description` (
  `config_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_store_description`
--

INSERT INTO `admin_store_description` (`config_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`) VALUES
(1, 'en', 'CBD', 'CBD', '', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n</center>'),
(1, 'vi', 'CBD', 'CBD', '', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n</center>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$JcmAHe5eUZ2rS0jU1GWr/.xhwCnh2RU13qwjTPcqfmtZXjZxcryPO', 'Administrator', '/admin/avatar/user.jpg', 'wUVTYHjj6BlejULxO2BZpPx40ADdIKkuaUGLlOzokVAw71xLaecdbR6uLEdS', '2020-02-12 10:47:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user_permission`
--

CREATE TABLE `admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `affiliate`
--

CREATE TABLE `affiliate` (
  `id` int(10) UNSIGNED NOT NULL,
  `percent` int(11) NOT NULL,
  `min_withdraw` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `affiliate`
--

INSERT INTO `affiliate` (`id`, `percent`, `min_withdraw`, `created_at`, `updated_at`) VALUES
(1, 15, '1000.00', '2020-02-24 10:02:12', '2020-02-26 14:14:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `affiliate_history`
--

CREATE TABLE `affiliate_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `affiliate_history`
--

INSERT INTO `affiliate_history` (`id`, `user_id`, `admin_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'Người dùng <b>#4</b> đã đăng ký với mã affiliate  <b>31582515685', '2020-02-24 10:42:49', '2020-02-24 10:42:49'),
(2, 3, NULL, 'Người dùng <b>#4</b> tạo đơn hàng <b>#7</b><br> Số điểm thưởng sẽ nhận được là <b>0</b>, sau khi đơn hàng được xác nhận thành công.', '2020-02-24 10:42:49', '2020-02-24 10:42:49'),
(3, 3, 1, 'Đã hủy bỏ đơn hàng #<b>7</b>', '2020-02-24 10:46:39', '2020-02-24 10:46:39'),
(4, 3, NULL, 'Người dùng <b>#4</b> tạo đơn hàng <b>#8</b><br> Số tiền sẽ nhận được là <b>22500</b>, sau khi đơn hàng được xác nhận thành công.', '2020-02-24 10:52:15', '2020-02-24 10:52:15'),
(5, 3, 1, 'Đã xác nhận đơn hàng #<b>8</b>. <br> Người dùng nhận được số tiền <b></b>.', '2020-02-24 10:54:46', '2020-02-24 10:54:46'),
(6, 3, NULL, 'Đã tạo lệnh rút tiền <b>1</b>. Số tiền <b>2000</b>', '2020-02-24 15:06:52', '2020-02-24 15:06:52'),
(9, 3, 1, 'Đã hủy yêu cầu rút tiền #<b>1</b>. Hoàn lại <b>2000.00</b>.', '2020-02-24 15:20:25', '2020-02-24 15:20:25'),
(10, 3, NULL, 'Đã tạo lệnh rút tiền <b>2</b>. Số tiền <b>3000</b>', '2020-02-24 15:23:57', '2020-02-24 15:23:57'),
(11, 3, 1, 'Đã xác nhận yêu cầu rút tiền #<b>2</b>', '2020-02-24 15:42:13', '2020-02-24 15:42:13'),
(12, 3, NULL, 'Đã tạo lệnh rút tiền <b>3</b>. Số tiền <b>1000</b>', '2020-02-26 14:15:52', '2020-02-26 14:15:52'),
(13, 3, NULL, 'Đã tạo lệnh rút tiền <b>4</b>. Số tiền <b>1000</b>', '2020-02-26 14:16:11', '2020-02-26 14:16:11'),
(14, 3, NULL, 'Đã tạo lệnh rút tiền <b>5</b>. Số tiền <b>1000</b>', '2020-02-26 14:17:22', '2020-02-26 14:17:22'),
(15, 3, 1, 'Đã xác nhận yêu cầu rút tiền #<b>3</b>', '2020-02-26 14:23:33', '2020-02-26 14:23:33'),
(16, 3, 1, 'Đã xác nhận yêu cầu rút tiền #<b>3</b>', '2020-02-26 14:26:30', '2020-02-26 14:26:30'),
(17, 3, 1, 'Đã xác nhận yêu cầu rút tiền #<b>4</b>', '2020-02-26 14:27:43', '2020-02-26 14:27:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `affiliate_order`
--

CREATE TABLE `affiliate_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `earn_money` decimal(15,2) NOT NULL DEFAULT '0.00',
  `affiliate_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `affiliate_order`
--

INSERT INTO `affiliate_order` (`id`, `user_id`, `order_id`, `earn_money`, `affiliate_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 7, '0.00', '31582515685', 2, '2020-02-24 10:42:49', '2020-02-24 10:46:38'),
(2, 4, 8, '22500.00', '31582515685', 1, '2020-02-24 10:52:15', '2020-02-24 10:54:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `affiliate_user`
--

CREATE TABLE `affiliate_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `affiliate_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_money` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `affiliate_user`
--

INSERT INTO `affiliate_user` (`id`, `user_id`, `affiliate_code`, `parent_code`, `affiliate_money`, `created_at`, `updated_at`) VALUES
(1, 3, '31582515685', NULL, '16500.00', '2020-02-24 10:25:53', '2020-02-26 14:17:22'),
(2, 4, NULL, '31582515685', '0.00', '2020-02-24 10:42:49', '2020-02-24 10:42:49'),
(3, 5, NULL, NULL, '0.00', '2020-02-26 13:37:49', '2020-02-26 13:37:49'),
(4, 6, NULL, NULL, '0.00', '2020-02-26 13:42:36', '2020-02-26 13:42:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `affiliate_user_withdraw`
--

CREATE TABLE `affiliate_user_withdraw` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `money` decimal(15,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `affiliate_user_withdraw`
--

INSERT INTO `affiliate_user_withdraw` (`id`, `user_id`, `money`, `transaction_id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '2000.00', NULL, NULL, 2, '2020-02-24 15:06:52', '2020-02-24 15:20:25'),
(2, 3, '3000.00', 'tenetur sint molestiae', 'et placeat adipisci', 1, '2020-02-24 15:23:57', '2020-02-24 15:42:13'),
(3, 3, '1000.00', '534-400-1798', 'quibusdam voluptatem molestias', 1, '2020-02-26 14:15:52', '2020-02-26 14:26:30'),
(4, 3, '1000.00', '659-465-2289', 'asperiores commodi sunt', 1, '2020-02-26 14:16:11', '2020-02-26 14:27:43'),
(5, 3, '1000.00', NULL, NULL, 0, '2020-02-26 14:17:22', '2020-02-26 14:17:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `affiliate_withdraw`
--

CREATE TABLE `affiliate_withdraw` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `affiliate_withdraw`
--

INSERT INTO `affiliate_withdraw` (`id`, `user_id`, `bank`, `branch`, `card_name`, `card_number`, `created_at`, `updated_at`) VALUES
(1, 3, 'Ngân hàng NN&PT Nông thôn Việt Nam - Agribank', 'repellat magnam quo', 'Earline Swaniawski', '769-744-1440', '2020-02-24 14:17:05', '2020-02-24 14:40:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_00_00_step1_create_admin_tables', 1),
(2, '2020_00_00_step2_create_shop_tables', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping_ghtk`
--

CREATE TABLE `shipping_ghtk` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL,
  `test_mode` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping_ghtk`
--

INSERT INTO `shipping_ghtk` (`id`, `token`, `fee`, `shipping_free`, `test_mode`, `created_at`, `updated_at`) VALUES
(1, 'B982e63032513246747589344843b9cEf58d8EC4', 0, 500000, 1, NULL, '2020-02-17 07:40:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping_ghtk_orders`
--

CREATE TABLE `shipping_ghtk_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_order_id` int(10) UNSIGNED NOT NULL,
  `ghtk_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weight` double DEFAULT NULL,
  `pick_option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_money` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `is_freeship` tinyint(1) NOT NULL DEFAULT '0',
  `use_return_address` tinyint(1) NOT NULL DEFAULT '0',
  `return_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping_ghtk_orders`
--

INSERT INTO `shipping_ghtk_orders` (`id`, `shop_order_id`, `ghtk_order_id`, `weight_option`, `total_weight`, `pick_option`, `transport`, `pick_money`, `value`, `is_freeship`, `use_return_address`, `return_name`, `return_address`, `return_province`, `return_district`, `return_tel`, `return_email`, `created_at`, `updated_at`) VALUES
(1, 5, 'S10298845.BO.500005500', 'kilogram', 0.5, 'cod', 'road', 90000, 90000, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-17 16:20:02', '2020-02-17 16:20:02'),
(2, 2, 'S10298845.MB19.A2.500005997', 'kilogram', 0.1, 'cod', 'road', 300000, 300000, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-19 08:26:38', '2020-02-19 08:26:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping_ghtk_warehouses`
--

CREATE TABLE `shipping_ghtk_warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_address_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_ward` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping_ghtk_warehouses`
--

INSERT INTO `shipping_ghtk_warehouses` (`id`, `warehouse_name`, `pick_address_id`, `pick_name`, `pick_address`, `pick_province`, `pick_district`, `pick_ward`, `pick_street`, `pick_tel`, `pick_email`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 'Kho Hàng 1', NULL, 'Janet Stehr', '65 Hoàng Văn Thụ', 'Thái Nguyên', 'Thành phố Thái Nguyên', 'Phường Phan Đình Phùng', NULL, '904-849-7604', NULL, 1, '2020-02-14 09:49:05', '2020-02-17 13:14:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_attribute_group`
--

CREATE TABLE `shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_attribute_group`
--

INSERT INTO `shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`) VALUES
(1, 'Color', 1, 1, 'radio'),
(2, 'Size', 1, 2, 'select');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_banner`
--

CREATE TABLE `shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `click` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_banner`
--

INSERT INTO `shop_banner` (`id`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
(1, '/data/banner/Main-banner-1-1903x600.jpg', NULL, '_self', '', 1, 0, 0, 0, NULL, NULL),
(2, '/data/banner/Main-banner-3-1903x600.jpg', NULL, '_self', '', 1, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_block_content`
--

CREATE TABLE `shop_block_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_block_content`
--

INSERT INTO `shop_block_content` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`) VALUES
(1, 'Facebook code', 'top', '*', 'html', '<div id=\"fb-root\"></div>\n<script>(function(d, s, id) {\n  var js, fjs = d.getElementsByTagName(s)[0];\n  if (d.getElementById(id)) return;\n  js = d.createElement(s); js.id = id;\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\n  fjs.parentNode.insertBefore(js, fjs);\n}(document, \'script\', \'facebook-jssdk\'));\n</script>', 1, 0),
(2, 'Google Analytics', 'header', '*', 'html', '<!-- Global site tag (gtag.js) - Google Analytics -->\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\n<script>\n  window.dataLayer = window.dataLayer || [];\n  function gtag(){dataLayer.push(arguments);}\n  gtag(\'js\', new Date());\n  gtag(\'config\', \'UA-128658138-1\');\n</script>', 1, 0),
(3, 'Product special', 'left', 'home,product_list', 'view', 'product_special', 1, 1),
(4, 'Brands', 'left', 'home,item_list', 'view', 'brands_left', 1, 3),
(5, 'Banner home', 'banner_top', 'home', 'view', 'banner_image', 1, 0),
(6, 'Categories', 'left', 'home,product_list,product_detail,shop_wishlist', 'view', 'categories', 1, 4),
(7, 'Product last view', 'left', '*', 'module', 'LastViewProduct', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_brand`
--

CREATE TABLE `shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_brand`
--

INSERT INTO `shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`) VALUES
(1, 'Husq', 'husq', '/data/brand/01-181x52.png', '', 1, 0),
(2, 'Ideal', 'ideal', '/data/brand/02-181x52.png', '', 1, 0),
(3, 'Apex', 'apex', '/data/brand/03-181x52.png', '', 1, 0),
(4, 'CST', 'cst', '/data/brand/04-181x52.png', '', 1, 0),
(5, 'Klein', 'klein', '/data/brand/05-181x52.png', '', 1, 0),
(6, 'Metabo', 'metabo', '/data/brand/06-181x52.png', '', 1, 0),
(7, 'Avatar', 'avatar', '/data/brand/07-181x52.png', '', 1, 0),
(8, 'Brand KA', 'brand-ka', '/data/brand/08-181x52.png', '', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_category`
--

CREATE TABLE `shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `top` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_category`
--

INSERT INTO `shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`) VALUES
(1, '/data/category/img-40.jpg', 'electronics', 0, 1, 1, 0),
(2, '/data/category/img-44.jpg', 'clothing-wears', 0, 1, 1, 0),
(3, '/data/category/img-42.jpg', 'mobile', 1, 1, 1, 0),
(4, '/data/category/img-18.jpg', 'accessaries-extras', 0, 1, 1, 0),
(5, '/data/category/img-14.jpg', 'computers', 1, 1, 1, 0),
(6, '/data/category/img-14.jpg', 'tablets', 1, 0, 1, 0),
(7, '/data/category/img-40.jpg', 'appliances', 1, 0, 1, 0),
(8, '/data/category/img-14.jpg', 'men-clothing', 2, 0, 1, 0),
(9, '/data/category/img-18.jpg', 'women-clothing', 2, 1, 1, 0),
(10, '/data/category/img-14.jpg', 'kid-wear', 2, 0, 1, 0),
(11, '/data/category/img-40.jpg', 'mobile-accessaries', 4, 0, 1, 0),
(12, '/data/category/img-42.jpg4', 'women-accessaries', 4, 0, 1, 3),
(13, '/data/category/img-40.jpg', 'men-accessaries', 4, 0, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_category_description`
--

CREATE TABLE `shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_category_description`
--

INSERT INTO `shop_category_description` (`category_id`, `lang`, `name`, `keyword`, `description`) VALUES
(1, 'en', 'Electronics', '', ''),
(1, 'vi', 'Thiết bị điện tử', '', ''),
(2, 'en', 'Clothing & Wears', '', ''),
(2, 'vi', 'Quần áo', '', ''),
(3, 'en', 'Mobile', '', ''),
(3, 'vi', 'Điện thoại', '', ''),
(4, 'en', 'Accessaries & Extras', '', ''),
(4, 'vi', 'Phụ kiện ', '', ''),
(5, 'en', 'Computers', '', ''),
(5, 'vi', 'Máy tính', '', ''),
(6, 'en', 'Tablets', '', ''),
(6, 'vi', 'Máy tính bảng', '', ''),
(7, 'en', 'Appliances', '', ''),
(7, 'vi', 'Thiết bị', '', ''),
(8, 'en', 'Men\'s Clothing', '', ''),
(8, 'vi', 'Quần áo nam', '', ''),
(9, 'en', 'Women\'s Clothing', '', ''),
(9, 'vi', 'Quần áo nữ', '', ''),
(10, 'en', 'Kid\'s Wear', '', ''),
(10, 'vi', 'Đồ trẻ em', '', ''),
(11, 'en', 'Mobile Accessaries', '', ''),
(11, 'vi', 'Phụ kiện điện thoại', '', ''),
(12, 'en', 'Women\'s Accessaries', '', ''),
(12, 'vi', 'Phụ kiện nam', '', ''),
(13, 'en', 'Men\'s Accessaries', '', ''),
(13, 'vi', 'Phụ kiện nữ', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_country`
--

CREATE TABLE `shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_country`
--

INSERT INTO `shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic People\'s Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People\'s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_currency`
--

CREATE TABLE `shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT '2',
  `symbol_first` tinyint(4) NOT NULL DEFAULT '0',
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_currency`
--

INSERT INTO `shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 0, 1, ',', 0, 0),
(2, 'VietNam Dong', 'VND', '₫', 1.00, 0, 0, ',', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_discount`
--

CREATE TABLE `shop_discount` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT '2',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'point' COMMENT 'point - Point; percent - %',
  `data` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` int(11) NOT NULL DEFAULT '1',
  `used` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_discount_user`
--

CREATE TABLE `shop_discount_user` (
  `user_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `log` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_email_template`
--

CREATE TABLE `shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_email_template`
--

INSERT INTO `shop_email_template` (`id`, `name`, `group`, `text`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n                    <table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n                      <tbody><tr>\n                        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                          <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                            <tbody><tr>\n                              <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                  <tbody><tr>\n                                    <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                      <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n                                    </td>\n                                  </tr>\n                                </tbody>\n                              </table>\n                              </td>\n                            </tr>\n                          </tbody>\n                        </table>\n                        </td>\n                      </tr>\n                    </tbody>\n                  </table>\n                    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n                      {{$note_sendmail}}\n                    </p>\n                    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n                    <tbody><tr>\n                      <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}: <a href=\"{{$reset_link}}\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#3869d4\" target=\"_blank\">{{$reset_link}}</a></p>\n                          </td>\n                        </tr>\n                      </tbody>\n                    </table>', 1),
(2, 'Welcome new customer', 'welcome_customer', '<p>Chào <b>{{$first_name}}</b>, cảm ơn bạn đã đăng ký tài khoản tại HempPlus !</p>\r\n<p>Đây là tài khoản đăng nhập của bạn:</p>\r\n<p>Email: <b>{{$email}}</b></p>\r\n<p>Mật khẩu: <b>{{$password}}</b></p>\r\n<p>Tài khoản dùng để đăng nhập website <a href=\"http://hempplus.net/\">HempPlus.Net</a>, \r\n    bạn có thể kiểm tra trạng thái đơn hàng và bán hàng để tích điểm thưởng cùng chúng tôi. \r\n    Điểm thưởng có thể đổi rất nhiều sản phẩm có giá trị, hãy cùng khám phá nhé!</p>', 1),
(3, 'Send form contact to admin', 'contact_to_admin', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            <b>Name</b>: {{$name}}<br>\n            <b>Email</b>: {{$email}}<br>\n            <b>Phone</b>: {{$phone}}<br>\n        </td>\n    </tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n    <tr>\n        <td>{{$content}}</td>\n    </tr>\n</table>', 1),
(4, 'New order to admin', 'order_success_to_admin', '<tr style=\"background:#fff\">\r\n        <td align=\"left\" height=\"auto\" style=\"padding:15px\" width=\"600\">\r\n            <table >\r\n                <tbody>\r\n                <tr>\r\n                    <td>\r\n                        <h1 style=\"font-size:17px;font-weight:bold;color:#444;padding:0 0 5px 0;margin:0\">Cảm ơn quý\r\n                            khách {{$toname}} đã đặt hàng tại HempPlus,</h1>\r\n\r\n                        <p style=\"margin:4px 0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\">\r\n                            Chúng tôi rất vui thông báo đơn hàng #{{$orderID}} của quý khách đã được tiếp nhận và đang\r\n                            trong quá trình xử lý. Chúng tôi sẽ thông báo đến quý khách ngay khi hàng chuẩn bị được giao.</p>\r\n\r\n                        <h3 style=\"font-size:13px;font-weight:bold;color:#02acea;text-transform:uppercase;margin:20px 0 0 0;border-bottom:1px solid #ddd\">\r\n                            Thông tin đơn hàng #{{$orderID}}\r\n                        </h3>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\">\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n                            <thead>\r\n                            <tr>\r\n                                <th align=\"left\"\r\n                                    style=\"padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold\"\r\n                                    width=\"50%\">Thông tin thanh toán\r\n                                </th>\r\n                                <th align=\"left\"\r\n                                    style=\"padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold\"\r\n                                    width=\"50%\"> Địa chỉ giao hàng\r\n                                </th>\r\n                            </tr>\r\n                            </thead>\r\n                            <tbody>\r\n                            <tr>\r\n                                <td style=\"padding:3px 9px 9px 9px;border-top:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\"\r\n                                    valign=\"top\"><span style=\"text-transform:capitalize\">{{$toname}}</span><br>\r\n                                    <a href=\"mailto:dzu.ictu@gmail.com\" target=\"_blank\">{{$email}}</a><br>\r\n                                    {{$phone}}\r\n                                </td>\r\n                                <td style=\"padding:3px 9px 9px 9px;border-top:0;border-left:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\"\r\n                                    valign=\"top\"><span style=\"text-transform:capitalize\">{{$toname}}</span><br>\r\n                                    <a href=\"mailto:dzu.ictu@gmail.com\" target=\"_blank\">{{$email}}</a><br>\r\n                                    {{$address}}<br>\r\n                                    T: {{$phone}}\r\n                                </td>\r\n                            </tr>\r\n                            </tbody>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td>\r\n                        <h2 style=\"text-align:left;margin:10px 0;border-bottom:1px solid #ddd;padding-bottom:5px;font-size:13px;color:#02acea\">\r\n                            CHI TIẾT ĐƠN HÀNG</h2>\r\n\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#f5f5f5\" width=\"100%\">\r\n                            <thead>\r\n                            <tr>\r\n                                <th align=\"left\" bgcolor=\"#02acea\"\r\n                                    style=\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\">\r\n                                    Sản phẩm\r\n                                </th>\r\n                                <th align=\"left\" bgcolor=\"#02acea\"\r\n                                    style=\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\">\r\n                                    Đơn giá\r\n                                </th>\r\n                                <th align=\"left\" bgcolor=\"#02acea\"\r\n                                    style=\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\">\r\n                                    Số lượng\r\n                                </th>\r\n                                <th align=\"right\" bgcolor=\"#02acea\"\r\n                                    style=\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\">\r\n                                    Tổng tạm\r\n                                </th>\r\n                            </tr>\r\n                            </thead>\r\n                            <tbody bgcolor=\"#eee\"\r\n                                   style=\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\">\r\n                            {{$orderDetail}}\r\n                            </tbody>\r\n                            <tfoot style=\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\">\r\n                            <tr bgcolor=\"#eee\">\r\n                                <td align=\"right\" colspan=\"3\" style=\"padding:7px 9px\"><strong><big>Tổng giá trị đơn\r\n                                            hàng</big> </strong></td>\r\n                                <td align=\"right\" style=\"padding:7px 9px\"><strong><big><span>{{$subtotal}}</span> </big>\r\n                                    </strong></td>\r\n                            </tr>\r\n                            </tfoot>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td> \r\n                        <p style=\"font-family:Arial,Helvetica,sans-serif;font-size:12px;margin:0;padding:0;line-height:18px;color:#444;font-weight:bold\">\r\n                            Một lần nữa HempPlus cảm ơn quý khách.</p>\r\n                    </td>\r\n                </tr>\r\n                </tbody>\r\n            </table>\r\n        </td>\r\n    </tr>', 1),
(5, 'New order to customr', 'order_success_to_customer', '<tr style=\"background:#fff\">\r\n        <td align=\"left\" height=\"auto\" style=\"padding:15px\" width=\"600\">\r\n            <table >\r\n                <tbody>\r\n                <tr>\r\n                    <td>\r\n                        <h1 style=\"font-size:17px;font-weight:bold;color:#444;padding:0 0 5px 0;margin:0\">Cảm ơn quý\r\n                            khách {{$toname}} đã đặt hàng tại HempPlus,</h1>\r\n\r\n                        <p style=\"margin:4px 0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\">\r\n                            Chúng tôi rất vui thông báo đơn hàng #{{$orderID}} của quý khách đã được tiếp nhận và đang\r\n                            trong quá trình xử lý. Chúng tôi sẽ thông báo đến quý khách ngay khi hàng chuẩn bị được giao.</p>\r\n\r\n                        <h3 style=\"font-size:13px;font-weight:bold;color:#02acea;text-transform:uppercase;margin:20px 0 0 0;border-bottom:1px solid #ddd\">\r\n                            Thông tin đơn hàng #{{$orderID}}\r\n                        </h3>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\">\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n                            <thead>\r\n                            <tr>\r\n                                <th align=\"left\"\r\n                                    style=\"padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold\"\r\n                                    width=\"50%\">Thông tin thanh toán\r\n                                </th>\r\n                                <th align=\"left\"\r\n                                    style=\"padding:6px 9px 0px 9px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;font-weight:bold\"\r\n                                    width=\"50%\"> Địa chỉ giao hàng\r\n                                </th>\r\n                            </tr>\r\n                            </thead>\r\n                            <tbody>\r\n                            <tr>\r\n                                <td style=\"padding:3px 9px 9px 9px;border-top:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\"\r\n                                    valign=\"top\"><span style=\"text-transform:capitalize\">{{$toname}}</span><br>\r\n                                    <a href=\"mailto:dzu.ictu@gmail.com\" target=\"_blank\">{{$email}}</a><br>\r\n                                    {{$phone}}\r\n                                </td>\r\n                                <td style=\"padding:3px 9px 9px 9px;border-top:0;border-left:0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal\"\r\n                                    valign=\"top\"><span style=\"text-transform:capitalize\">{{$toname}}</span><br>\r\n                                    <a href=\"mailto:dzu.ictu@gmail.com\" target=\"_blank\">{{$email}}</a><br>\r\n                                    {{$address}}<br>\r\n                                    T: {{$phone}}\r\n                                </td>\r\n                            </tr>\r\n                            </tbody>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td>\r\n                        <h2 style=\"text-align:left;margin:10px 0;border-bottom:1px solid #ddd;padding-bottom:5px;font-size:13px;color:#02acea\">\r\n                            CHI TIẾT ĐƠN HÀNG</h2>\r\n\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#f5f5f5\" width=\"100%\">\r\n                            <thead>\r\n                            <tr>\r\n                                <th align=\"left\" bgcolor=\"#02acea\"\r\n                                    style=\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\">\r\n                                    Sản phẩm\r\n                                </th>\r\n                                <th align=\"left\" bgcolor=\"#02acea\"\r\n                                    style=\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\">\r\n                                    Đơn giá\r\n                                </th>\r\n                                <th align=\"left\" bgcolor=\"#02acea\"\r\n                                    style=\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\">\r\n                                    Số lượng\r\n                                </th>\r\n                                <th align=\"right\" bgcolor=\"#02acea\"\r\n                                    style=\"padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px\">\r\n                                    Tổng tạm\r\n                                </th>\r\n                            </tr>\r\n                            </thead>\r\n                            <tbody bgcolor=\"#eee\"\r\n                                   style=\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\">\r\n                            {{$orderDetail}}\r\n                            </tbody>\r\n                            <tfoot style=\"font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px\">\r\n                            <tr bgcolor=\"#eee\">\r\n                                <td align=\"right\" colspan=\"3\" style=\"padding:7px 9px\"><strong><big>Tổng giá trị đơn\r\n                                            hàng</big> </strong></td>\r\n                                <td align=\"right\" style=\"padding:7px 9px\"><strong><big><span>{{$subtotal}}</span> </big>\r\n                                    </strong></td>\r\n                            </tr>\r\n                            </tfoot>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td> \r\n                        <p style=\"font-family:Arial,Helvetica,sans-serif;font-size:12px;margin:0;padding:0;line-height:18px;color:#444;font-weight:bold\">\r\n                            Một lần nữa HempPlus cảm ơn quý khách.</p>\r\n                    </td>\r\n                </tr>\r\n                </tbody>\r\n            </table>\r\n        </td>\r\n    </tr>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_language`
--

CREATE TABLE `shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_language`
--

INSERT INTO `shop_language` (`id`, `name`, `code`, `icon`, `status`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 1, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_layout_page`
--

CREATE TABLE `shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_layout_page`
--

INSERT INTO `shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'home', 'Home page'),
(2, 'product_list', 'Product list'),
(3, 'product_detail', 'Product detail'),
(4, 'shop_cart', 'Shop cart'),
(5, 'shop_account', 'Account'),
(6, 'shop_profile', 'Profile'),
(7, 'shop_compare', 'Compare page'),
(8, 'shop_wishlist', 'Wishlist page'),
(9, 'item_list', 'Item list');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_layout_position`
--

CREATE TABLE `shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_layout_position`
--

INSERT INTO `shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'meta', 'Meta'),
(2, 'header', 'Header'),
(3, 'top', 'Top'),
(4, 'bottom', 'Bottom'),
(5, 'footer', 'Footer'),
(6, 'left', 'Column left'),
(7, 'right', 'Column right'),
(8, 'banner_top', 'Banner top');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_layout_type`
--

CREATE TABLE `shop_layout_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_layout_type`
--

INSERT INTO `shop_layout_type` (`id`, `key`, `name`) VALUES
(1, 'html', 'Html'),
(2, 'view', 'View'),
(3, 'module', 'Module');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_link`
--

CREATE TABLE `shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_link`
--

INSERT INTO `shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`) VALUES
(1, 'lang::front.contact', 'route::pages::contact', '_self', 'menu', '', 1, 3),
(2, 'lang::front.about', 'route::pages::about', '_self', 'menu', '', 1, 4),
(3, 'S-Cart', 'https://s-cart.org', '_blank', 'menu', '', 1, 0),
(4, 'lang::front.my_profile', '/member/login.html', '_self', 'footer', '', 1, 5),
(5, 'lang::front.compare_page', '/compare.html', '_self', 'footer', '', 1, 4),
(6, 'lang::front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_news`
--

CREATE TABLE `shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_news_description`
--

CREATE TABLE `shop_news_description` (
  `shop_news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order`
--

CREATE TABLE `shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` int(11) DEFAULT '0',
  `shipping` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `payment_status` int(11) NOT NULL DEFAULT '1',
  `shipping_status` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT '0',
  `balance` int(11) DEFAULT '0',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_order`
--

INSERT INTO `shop_order` (`id`, `user_id`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `province`, `district`, `ward`, `address`, `address1`, `address2`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `ip`, `transaction`, `created_at`, `updated_at`) VALUES
(6, 3, 150000, 0, 0, 1, 1, 5, 0, 150000, 'VND', 1.00, 0, 150000, 'Alessandro', 'Deckow', 'North Enriqueton 4', 'Hawaii 3', 'Connecticut 2', '92468 Selena Port 1', '92468 Selena Port', '92468 Selena Port', 'AL', '', '', '0123456789', 'dzu6996@gmail.com', 'voluptas sit provident', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-24 10:29:49', '2020-02-24 10:41:21'),
(7, 4, 150000, 0, 0, 1, 1, 4, 0, 150000, 'VND', 1.00, 0, 150000, 'Mario', 'Witting', 'New Jazlyn', 'Minnesota', 'Maine', '793 Justina Keys', '793 Justina Keys', '793 Justina Keys', 'AR', '', '', '0123456789', 'your.email+faker39419@gmail.com', 'tenetur fugit consequatur', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-24 10:42:49', '2020-02-24 10:46:38'),
(8, 4, 150000, 0, 0, 1, 1, 5, 0, 150000, 'VND', 1.00, 0, 150000, 'Mario', 'Witting', 'New Jazlyn', 'Minnesota', 'Maine', '793 Justina Keys', '793 Justina Keys', '793 Justina Keys', 'AR', '', '', '0123456789', 'your.email+faker39419@gmail.com', 'tenetur fugit consequatur', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-24 10:52:15', '2020-02-24 10:54:46'),
(9, 8, 15000, 0, 0, 1, 1, 1, 0, 15000, 'VND', 1.00, 0, 15000, 'Theresia', 'Bridie', 'Mississippi', 'Texas', 'Georgia', '125 Angela Tunnel', '125 Angela Tunnel', '125 Angela Tunnel', 'AL', '', '', '0123456789', 'cayvl3.1@gmail.com', 'labore qui iusto', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-26 13:55:28', '2020-02-26 13:55:28'),
(10, 8, 15000, 0, 0, 1, 1, 1, 0, 15000, 'VND', 1.00, 0, 15000, 'Theresia', 'Bridie', 'Mississippi', 'Texas', 'Georgia', '125 Angela Tunnel', '125 Angela Tunnel', '125 Angela Tunnel', 'AL', '', '', '0123456789', 'cayvl3.1@gmail.com', 'labore qui iusto', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-26 13:55:42', '2020-02-26 13:55:42'),
(11, 9, 15000, 0, 0, 1, 1, 1, 0, 15000, 'VND', 1.00, 0, 15000, 'Theresia', 'Bridie', 'Mississippi', 'Texas', 'Georgia', '125 Angela Tunnel', '125 Angela Tunnel', '125 Angela Tunnel', 'AL', '', '', '0123456789', 'cayvl3.1@gmail.com', 'labore qui iusto', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-26 13:56:15', '2020-02-26 13:56:15'),
(12, 10, 15000, 0, 0, 1, 1, 1, 0, 15000, 'VND', 1.00, 0, 15000, 'Theresia', 'Bridie', 'Mississippi', 'Texas', 'Georgia', '125 Angela Tunnel', '125 Angela Tunnel', '125 Angela Tunnel', 'AL', '', '', '0123456789', 'cayvl3.1@gmail.com', 'labore qui iusto', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-26 13:58:38', '2020-02-26 13:58:38'),
(13, 10, 45000, 0, 0, 1, 1, 1, 0, 45000, 'VND', 1.00, 0, 45000, 'Theresia', 'Bridie', 'Mississippi', 'Texas', 'Georgia', '125 Angela Tunnel', '125 Angela Tunnel', '125 Angela Tunnel', 'AL', '', '', '0123456789', 'cayvl3.1@gmail.com', 'labore qui iusto', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-26 14:02:29', '2020-02-26 14:02:29'),
(14, 10, 75000, 0, 0, 1, 1, 1, 0, 75000, 'VND', 1.00, 0, 75000, 'Theresia', 'Bridie', 'Mississippi', 'Texas', 'Georgia', '125 Angela Tunnel', '125 Angela Tunnel', '125 Angela Tunnel', 'AL', '', '', '0123456789', 'cayvl3.1@gmail.com', 'labore qui iusto', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-26 14:04:41', '2020-02-26 14:04:41'),
(15, 10, 30000, 0, 0, 1, 1, 1, 0, 30000, 'VND', 1.00, 0, 30000, 'Theresia', 'Bridie', 'Mississippi', 'Texas', 'Georgia', '125 Angela Tunnel', '125 Angela Tunnel', '125 Angela Tunnel', 'AL', '', '', '0123456789', 'cayvl3.1@gmail.com', 'labore qui iusto', 'Cash', 'GHTK', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', '172.18.0.1', NULL, '2020-02-26 14:09:42', '2020-02-26 14:09:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order_detail`
--

CREATE TABLE `shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `total_price` int(11) NOT NULL DEFAULT '0',
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_order_detail`
--

INSERT INTO `shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `total_price`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
(6, 6, 17, 'ALOKK1-AY', 15000, 10, 150000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-24 10:29:49', '2020-02-24 10:29:49'),
(7, 7, 17, 'ALOKK1-AY', 15000, 10, 150000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-24 10:42:49', '2020-02-24 10:42:49'),
(8, 8, 17, 'ALOKK1-AY', 15000, 10, 150000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-24 10:52:15', '2020-02-24 10:52:15'),
(9, 9, 17, 'ALOKK1-AY', 15000, 1, 15000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-26 13:55:28', '2020-02-26 13:55:28'),
(10, 10, 17, 'ALOKK1-AY', 15000, 1, 15000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-26 13:55:42', '2020-02-26 13:55:42'),
(11, 11, 17, 'ALOKK1-AY', 15000, 1, 15000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-26 13:56:15', '2020-02-26 13:56:15'),
(12, 12, 17, 'ALOKK1-AY', 15000, 1, 15000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-26 13:58:39', '2020-02-26 13:58:39'),
(13, 13, 15, 'Easy Polo Black Edition 15', 15000, 2, 30000, 'LCD2004-3D', 'VND', 1.00, '[]', '2020-02-26 14:02:29', '2020-02-26 14:02:29'),
(14, 13, 17, 'ALOKK1-AY', 15000, 1, 15000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-26 14:02:29', '2020-02-26 14:02:29'),
(15, 14, 17, 'ALOKK1-AY', 15000, 2, 30000, 'ALOKK1-AY', 'VND', 1.00, '{\"1\":\"Blue\",\"2\":\"S\"}', '2020-02-26 14:04:41', '2020-02-26 14:04:41'),
(16, 14, 12, 'Easy Polo Black Edition 12', 15000, 1, 15000, '3D-CARBON1.75', 'VND', 1.00, '[]', '2020-02-26 14:04:41', '2020-02-26 14:04:41'),
(17, 14, 14, 'Easy Polo Black Edition 14', 15000, 1, 15000, 'LCD12864-3D', 'VND', 1.00, '[]', '2020-02-26 14:04:41', '2020-02-26 14:04:41'),
(18, 14, 15, 'Easy Polo Black Edition 15', 15000, 1, 15000, 'LCD2004-3D', 'VND', 1.00, '[]', '2020-02-26 14:04:41', '2020-02-26 14:04:41'),
(19, 15, 14, 'Easy Polo Black Edition 14', 15000, 1, 15000, 'LCD12864-3D', 'VND', 1.00, '[]', '2020-02-26 14:09:42', '2020-02-26 14:09:42'),
(20, 15, 12, 'Easy Polo Black Edition 12', 15000, 1, 15000, '3D-CARBON1.75', 'VND', 1.00, '[]', '2020-02-26 14:09:42', '2020-02-26 14:09:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order_history`
--

CREATE TABLE `shop_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_order_history`
--

INSERT INTO `shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `user_id`, `order_status_id`, `add_date`) VALUES
(38, 6, 'New order', 0, 3, 1, '2020-02-24 10:29:49'),
(39, 6, 'Change <b>status</b> from <span style=\"color:blue\">\'1\'</span> to <span style=\"color:red\">\'5\'</span>', 1, 0, 1, '2020-02-24 10:30:41'),
(40, 6, 'Change <b>address</b> from <span style=\"color:blue\">\'92468 Selena Port\'</span> to <span style=\"color:red\">\'92468 Selena Port 1\'</span>', 1, 0, 5, '2020-02-24 10:30:47'),
(41, 6, 'Change <b>ward</b> from <span style=\"color:blue\">\'Connecticut\'</span> to <span style=\"color:red\">\'Connecticut 2\'</span>', 1, 0, 5, '2020-02-24 10:30:49'),
(42, 6, 'Change <b>district</b> from <span style=\"color:blue\">\'Hawaii\'</span> to <span style=\"color:red\">\'Hawaii 3\'</span>', 1, 0, 5, '2020-02-24 10:30:51'),
(43, 6, 'Change <b>province</b> from <span style=\"color:blue\">\'North Enriqueton\'</span> to <span style=\"color:red\">\'North Enriqueton 4\'</span>', 1, 0, 5, '2020-02-24 10:30:53'),
(44, 6, 'Change <b>country</b> from <span style=\"color:blue\">\'DS\'</span> to <span style=\"color:red\">\'AL\'</span>', 1, 0, 5, '2020-02-24 10:30:56'),
(45, 6, 'Change <b>status</b> from <span style=\"color:blue\">\'5\'</span> to <span style=\"color:red\">\'2\'</span>', 1, 0, 5, '2020-02-24 10:41:14'),
(46, 6, 'Change <b>status</b> from <span style=\"color:blue\">\'2\'</span> to <span style=\"color:red\">\'5\'</span>', 1, 0, 2, '2020-02-24 10:41:21'),
(47, 7, 'New order', 0, 4, 1, '2020-02-24 10:42:49'),
(48, 7, 'Change <b>status</b> from <span style=\"color:blue\">1</span> to <span style=\"color:red\">4</span>', 1, 0, 1, '2020-02-24 10:46:38'),
(49, 8, 'New order', 0, 4, 1, '2020-02-24 10:52:15'),
(50, 8, 'Change <b>status</b> from <span style=\"color:blue\">1</span> to <span style=\"color:red\">5</span>', 1, 0, 1, '2020-02-24 10:54:46'),
(51, 9, 'New order', 0, 8, 1, '2020-02-26 13:55:28'),
(52, 10, 'New order', 0, 8, 1, '2020-02-26 13:55:42'),
(53, 11, 'New order', 0, 9, 1, '2020-02-26 13:56:15'),
(54, 12, 'New order', 0, 10, 1, '2020-02-26 13:58:39'),
(55, 13, 'New order', 0, 10, 1, '2020-02-26 14:02:29'),
(56, 14, 'New order', 0, 10, 1, '2020-02-26 14:04:41'),
(57, 15, 'New order', 0, 10, 1, '2020-02-26 14:09:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order_status`
--

CREATE TABLE `shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_order_status`
--

INSERT INTO `shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order_total`
--

CREATE TABLE `shop_order_total` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_order_total`
--

INSERT INTO `shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
(26, 6, 'Tiền hàng', 'subtotal', 150000, '150,000₫', 1, '2020-02-24 10:29:49', NULL),
(27, 6, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-24 10:29:49', NULL),
(28, 6, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-24 10:29:49', NULL),
(29, 6, 'Tổng tiền', 'total', 150000, '150,000₫', 100, '2020-02-24 10:29:49', NULL),
(30, 6, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-24 10:29:49', NULL),
(31, 7, 'Tiền hàng', 'subtotal', 150000, '150,000₫', 1, '2020-02-24 10:42:49', NULL),
(32, 7, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-24 10:42:49', NULL),
(33, 7, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-24 10:42:49', NULL),
(34, 7, 'Tổng tiền', 'total', 150000, '150,000₫', 100, '2020-02-24 10:42:49', NULL),
(35, 7, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-24 10:42:49', NULL),
(36, 8, 'Tiền hàng', 'subtotal', 150000, '150,000₫', 1, '2020-02-24 10:52:15', NULL),
(37, 8, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-24 10:52:15', NULL),
(38, 8, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-24 10:52:15', NULL),
(39, 8, 'Tổng tiền', 'total', 150000, '150,000₫', 100, '2020-02-24 10:52:15', NULL),
(40, 8, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-24 10:52:15', NULL),
(41, 9, 'Tiền hàng', 'subtotal', 15000, '15,000₫', 1, '2020-02-26 13:55:28', NULL),
(42, 9, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-26 13:55:28', NULL),
(43, 9, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-26 13:55:28', NULL),
(44, 9, 'Tổng tiền', 'total', 15000, '15,000₫', 100, '2020-02-26 13:55:28', NULL),
(45, 9, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-26 13:55:28', NULL),
(46, 10, 'Tiền hàng', 'subtotal', 15000, '15,000₫', 1, '2020-02-26 13:55:42', NULL),
(47, 10, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-26 13:55:42', NULL),
(48, 10, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-26 13:55:42', NULL),
(49, 10, 'Tổng tiền', 'total', 15000, '15,000₫', 100, '2020-02-26 13:55:42', NULL),
(50, 10, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-26 13:55:42', NULL),
(51, 11, 'Tiền hàng', 'subtotal', 15000, '15,000₫', 1, '2020-02-26 13:56:15', NULL),
(52, 11, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-26 13:56:15', NULL),
(53, 11, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-26 13:56:15', NULL),
(54, 11, 'Tổng tiền', 'total', 15000, '15,000₫', 100, '2020-02-26 13:56:15', NULL),
(55, 11, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-26 13:56:15', NULL),
(56, 12, 'Tiền hàng', 'subtotal', 15000, '15,000₫', 1, '2020-02-26 13:58:38', NULL),
(57, 12, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-26 13:58:38', NULL),
(58, 12, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-26 13:58:38', NULL),
(59, 12, 'Tổng tiền', 'total', 15000, '15,000₫', 100, '2020-02-26 13:58:38', NULL),
(60, 12, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-26 13:58:38', NULL),
(61, 13, 'Tiền hàng', 'subtotal', 45000, '45,000₫', 1, '2020-02-26 14:02:29', NULL),
(62, 13, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-26 14:02:29', NULL),
(63, 13, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-26 14:02:29', NULL),
(64, 13, 'Tổng tiền', 'total', 45000, '45,000₫', 100, '2020-02-26 14:02:29', NULL),
(65, 13, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-26 14:02:29', NULL),
(66, 14, 'Tiền hàng', 'subtotal', 75000, '75,000₫', 1, '2020-02-26 14:04:41', NULL),
(67, 14, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-26 14:04:41', NULL),
(68, 14, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-26 14:04:41', NULL),
(69, 14, 'Tổng tiền', 'total', 75000, '75,000₫', 100, '2020-02-26 14:04:41', NULL),
(70, 14, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-26 14:04:41', NULL),
(71, 15, 'Tiền hàng', 'subtotal', 30000, '30,000₫', 1, '2020-02-26 14:09:42', NULL),
(72, 15, 'Giaohangtietkiem.vn', 'shipping', 0, '0₫', 10, '2020-02-26 14:09:42', NULL),
(73, 15, 'Mã giảm giá', 'discount', 0, '0₫', 20, '2020-02-26 14:09:42', NULL),
(74, 15, 'Tổng tiền', 'total', 30000, '30,000₫', 100, '2020-02-26 14:09:42', NULL),
(75, 15, 'Đã nhận', 'received', 0, '0₫', 200, '2020-02-26 14:09:42', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_page`
--

CREATE TABLE `shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_page`
--

INSERT INTO `shop_page` (`id`, `image`, `alias`, `status`) VALUES
(1, '', 'about', 1),
(2, '', 'contact', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_page_description`
--

CREATE TABLE `shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_page_description`
--

INSERT INTO `shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'About', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n'),
(1, 'vi', 'Giới thiệu', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n'),
(2, 'en', 'Contact', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n'),
(2, 'vi', 'Liên hệ với chúng tôi', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_payment_status`
--

CREATE TABLE `shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_payment_status`
--

INSERT INTO `shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product`
--

CREATE TABLE `shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT '0',
  `vendor_id` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `stock` int(11) DEFAULT '0',
  `sold` int(11) DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `kind` tinyint(4) DEFAULT '0' COMMENT '0:single, 1:bundle, 2:group',
  `virtual` tinyint(4) DEFAULT '0' COMMENT '0:physical, 1:download, 2:only view, 3: Service',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product`
--

INSERT INTO `shop_product` (`id`, `sku`, `image`, `brand_id`, `vendor_id`, `price`, `cost`, `stock`, `sold`, `type`, `kind`, `virtual`, `status`, `sort`, `view`, `alias`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
(1, 'ABCZZ', '/data/product/img-1.jpg', 1, 1, 15000, 10000, 100, 0, 2, 0, 0, 1, 0, 0, 'demo-alias-name-product-1', NULL, '2020-02-03', NULL, '2020-02-24 10:04:53'),
(2, 'LEDFAN1', '/data/product/img-4.jpg', 1, 1, 15000, 10000, 100, 0, 1, 0, 0, 1, 0, 0, 'demo-alias-name-product-2', NULL, NULL, NULL, NULL),
(3, 'CLOCKFAN1', '/data/product/img-11.jpg', 2, 1, 15000, 10000, 100, 0, 0, 0, 0, 1, 0, 0, 'demo-alias-name-product-3', NULL, NULL, NULL, NULL),
(4, 'CLOCKFAN2', '/data/product/img-14.jpg', 3, 1, 15000, 10000, 100, 0, 0, 0, 0, 1, 0, 0, 'demo-alias-name-product-4', NULL, NULL, NULL, NULL),
(5, 'CLOCKFAN3', '/data/product/img-15.jpg', 1, 1, 15000, 10000, 100, 0, 0, 0, 0, 1, 0, 0, 'demo-alias-name-product-5', NULL, NULL, NULL, NULL),
(6, 'TMC2208', '/data/product/img-16.jpg', 1, 1, 15000, 10000, 97, 3, 1, 0, 0, 1, 0, 0, 'demo-alias-name-product-6', NULL, NULL, NULL, '2020-02-26 14:04:41'),
(7, 'FILAMENT', '/data/product/img-17.jpg', 2, 1, 15000, 10000, 94, 6, 0, 0, 0, 1, 0, 0, 'demo-alias-name-product-7', NULL, NULL, NULL, '2020-02-26 14:04:41'),
(8, 'A4988', '/data/product/img-18.jpg', 2, 1, 15000, 10000, 100, 0, 2, 0, 0, 1, 0, 0, 'demo-alias-name-product-8', NULL, NULL, NULL, NULL),
(9, 'ANYCUBIC-P', '/data/product/img-20.jpg', 2, 1, 15000, 10000, 100, 0, 2, 0, 0, 1, 0, 0, 'demo-alias-name-product-9', NULL, NULL, NULL, NULL),
(10, '3DHLFD-P', '/data/product/img-21.jpg', 4, 1, 15000, 10000, 100, 0, 2, 0, 0, 1, 0, 0, 'demo-alias-name-product-10', NULL, NULL, NULL, NULL),
(11, 'SS495A', '/data/product/img-22.jpg', 2, 1, 15000, 10000, 100, 0, 0, 0, 0, 1, 0, 0, 'demo-alias-name-product-11', NULL, NULL, NULL, NULL),
(12, '3D-CARBON1.75', '/data/product/img-23.jpg', 2, 1, 15000, 10000, 98, 2, 2, 0, 0, 1, 0, 1, 'demo-alias-name-product-12', '2020-02-13 16:13:27', NULL, NULL, '2020-02-26 14:09:42'),
(13, '3D-GOLD1.75', '/data/product/img-34.jpg', 3, 1, 10000, 5000, 0, 0, 0, 0, 0, 1, 0, 2, 'demo-alias-name-product-13', '2020-02-17 14:08:58', NULL, NULL, '2020-02-24 10:05:02'),
(14, 'LCD12864-3D', '/data/product/img-13.jpg', 3, 1, 15000, 10000, 98, 2, 0, 0, 0, 1, 0, 0, 'demo-alias-name-product-14', NULL, NULL, NULL, '2020-02-26 14:09:42'),
(15, 'LCD2004-3D', '/data/product/img-41.jpg', 3, 1, 15000, 10000, 97, 3, 0, 1, 0, 1, 0, 2, 'demo-alias-name-product-15', '2020-02-13 15:43:31', NULL, NULL, '2020-02-26 14:04:41'),
(16, 'RAMPS1.5-3D', '/data/product/img-42.jpg', 2, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 2, 'demo-alias-name-product-16', '2020-02-17 14:08:53', NULL, NULL, '2020-02-17 14:08:53'),
(17, 'ALOKK1-AY', '/data/product/img-26.jpg', 3, 1, 15000, 10000, 63, 37, 0, 0, 0, 1, 0, 10, 'demo-alias-name-product-17', '2020-02-26 14:04:14', NULL, NULL, '2020-02-26 14:04:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_attribute`
--

CREATE TABLE `shop_product_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_attribute`
--

INSERT INTO `shop_product_attribute` (`id`, `name`, `attribute_group_id`, `product_id`, `sort`) VALUES
(1, 'Blue', 1, 17, 0),
(2, 'White', 1, 17, 0),
(3, 'S', 2, 17, 0),
(4, 'XL', 2, 17, 0),
(5, 'Blue', 1, 10, 0),
(6, 'Red', 1, 10, 0),
(7, 'S', 2, 10, 0),
(8, 'M', 2, 10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_build`
--

CREATE TABLE `shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_build`
--

INSERT INTO `shop_product_build` (`build_id`, `product_id`, `quantity`) VALUES
(15, 6, 1),
(15, 7, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_category`
--

CREATE TABLE `shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_category`
--

INSERT INTO `shop_product_category` (`product_id`, `category_id`) VALUES
(1, 13),
(2, 13),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 12),
(8, 10),
(9, 6),
(10, 11),
(11, 10),
(12, 9),
(13, 5),
(14, 11),
(15, 6),
(16, 9),
(17, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_description`
--

CREATE TABLE `shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_description`
--

INSERT INTO `shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'en', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'en', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'vi', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'en', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'vi', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'en', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'vi', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'en', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'vi', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(7, 'en', 'Easy Polo Black Edition 7', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(7, 'vi', 'Easy Polo Black Edition 7', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(8, 'en', 'Easy Polo Black Edition 8', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(8, 'vi', 'Easy Polo Black Edition 8', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(9, 'en', 'Easy Polo Black Edition 9', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(9, 'vi', 'Easy Polo Black Edition 9', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(10, 'en', 'Easy Polo Black Edition 10', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(10, 'vi', 'Easy Polo Black Edition 10', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(11, 'en', 'Easy Polo Black Edition 11', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(11, 'vi', 'Easy Polo Black Edition 11', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(12, 'en', 'Easy Polo Black Edition 12', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(12, 'vi', 'Easy Polo Black Edition 12', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(13, 'en', 'Easy Polo Black Edition 13', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(13, 'vi', 'Easy Polo Black Edition 13', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(14, 'en', 'Easy Polo Black Edition 14', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(14, 'vi', 'Easy Polo Black Edition 14', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(15, 'en', 'Easy Polo Black Edition 15', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(15, 'vi', 'Easy Polo Black Edition 15', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(16, 'en', 'Easy Polo Black Edition 16', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(16, 'vi', 'Easy Polo Black Edition 16', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(17, 'en', 'Easy Polo Black Edition 17', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(17, 'vi', 'Easy Polo Black Edition 17', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/img-21.jpg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_group`
--

CREATE TABLE `shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_group`
--

INSERT INTO `shop_product_group` (`group_id`, `product_id`) VALUES
(16, 1),
(16, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_image`
--

CREATE TABLE `shop_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_image`
--

INSERT INTO `shop_product_image` (`id`, `image`, `product_id`) VALUES
(1, '/data/product/img-32.jpg', 1),
(2, '/data/product/img-33.jpg', 1),
(3, '/data/product/img-22.jpg', 11),
(4, '/data/product/img-23.jpg', 2),
(5, '/data/product/img-14.jpg', 11),
(6, '/data/product/img-12.jpg', 5),
(7, '/data/product/img-11.jpg', 5),
(8, '/data/product/img-9.jpg', 2),
(9, '/data/product/img-19.jpg', 2),
(10, '/data/product/img-21.jpg', 9),
(11, '/data/product/img-22.jpg', 8),
(12, '/data/product/img-20.jpg', 7),
(13, '/data/product/img-26.jpg', 7),
(14, '/data/product/img-27.jpg', 5),
(15, '/data/product/img-40.jpg', 4),
(16, '/data/product/img-14.jpg', 15),
(17, '/data/product/img-23.jpg', 15),
(18, '/data/product/img-12.jpg', 17),
(19, '/data/product/img-11.jpg', 17),
(20, '/data/product/img-32.jpg', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_promotion`
--

CREATE TABLE `shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_promotion`
--

INSERT INTO `shop_product_promotion` (`product_id`, `price_promotion`, `date_start`, `date_end`, `status_promotion`, `created_at`, `updated_at`) VALUES
(1, 5000, NULL, NULL, 1, NULL, NULL),
(11, 5000, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_shipping`
--

CREATE TABLE `shop_shipping` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_shipping`
--

INSERT INTO `shop_shipping` (`id`, `type`, `value`, `free`, `status`) VALUES
(1, 0, 20000, 10000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_shipping_status`
--

CREATE TABLE `shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_shipping_status`
--

INSERT INTO `shop_shipping_status` (`id`, `name`) VALUES
(1, 'GHTK - Chưa tiếp nhận'),
(2, 'GHTK - Đã tiếp nhận'),
(3, 'GHTK - Đã lấy hàng/Đã nhập kho'),
(4, 'GHTK - Đã điều phối giao hàng/Đang giao hàng\n'),
(5, 'GHTK - Đã giao hàng/Chưa đối soát'),
(6, 'GHTK - Đã đối soát'),
(7, 'GHTK - 	Không lấy được hàng'),
(8, 'GHTK - Hoãn lấy hàng'),
(9, 'GHTK - Không giao được hàng'),
(10, 'GHTK - Delay giao hàng'),
(11, 'GHTK - Đã đối soát công nợ trả hàng'),
(12, 'GHTK - Đã điều phối lấy hàng/Đang lấy hàng'),
(13, 'GHTK - Đơn hàng bồi hoàn'),
(20, 'GHTK - Đang trả hàng (COD cầm hàng đi trả)'),
(21, 'GHTK - Đã trả hàng (COD đã trả xong hàng)'),
(45, 'GHTK - Shipper báo đã giao hàng'),
(49, 'GHTK - Shipper báo không giao được giao hàng'),
(123, 'GHTK - Shipper báo đã lấy hàng'),
(127, 'GHTK - Shipper (nhân viên lấy/giao hàng) báo không lấy được hàng'),
(128, 'GHTK - Shipper báo delay lấy hàng'),
(410, 'GHTK - Shipper báo delay giao hàng'),
(9999, 'GHTK - Hủy Đơn Hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_shoppingcart`
--

CREATE TABLE `shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_subscribe`
--

CREATE TABLE `shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_user`
--

CREATE TABLE `shop_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `group` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_user`
--

INSERT INTO `shop_user` (`id`, `first_name`, `last_name`, `email`, `sex`, `birthday`, `password`, `province`, `district`, `ward`, `address`, `postcode`, `address1`, `address2`, `company`, `country`, `phone`, `remember_token`, `status`, `group`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'Kun', 'test@test.com', 0, NULL, '$2y$10$Wsebv1GtMVG6Qmw/EGjpheRvBRB/fPZACxRtA9IU.wPwJV48Bfl8.', NULL, NULL, NULL, NULL, '70000', 'HCM', 'HCM city', 'KTC', 'VN', '0667151172', NULL, 1, 1, '2020-02-12 10:47:59', NULL),
(2, 'Effertz', 'Carole', 'your.email+faker61729@gmail.com', 0, NULL, '$2y$10$lMtnBRuAMtE4dAE7tKL.Zu01hzWtUoeMs95bGuGVYub7ccnLqM1eq', 'Thái Nguyên', 'TP Thái Nguyên', 'Phường Quang Trung', '3123', '', 'Titofurt', '76254 Jaleel Lakes', NULL, 'AL', '0123456789', NULL, 1, 1, '2020-02-12 11:28:12', '2020-02-19 08:11:48'),
(3, 'Alessandro', 'Deckow', 'cayvl3.1@gmail.com', 0, NULL, '$2y$10$rYXRqS.PCM7BaQ9aoIBg.eIkxC4j8NcdFR3s6YL1F5SEQwIL1eES6', 'North Enriqueton', 'Hawaii', 'Connecticut', '92468 Selena Port', NULL, NULL, NULL, NULL, 'VN', '0123456789', NULL, 1, 1, '2020-02-24 10:25:53', '2020-02-26 14:15:22'),
(4, 'Mario', 'Witting', 'your.email+faker39419@gmail.com', 0, NULL, '$2y$10$RetYUQVys0D.3LH975qzneCsVXmkGs.hSZOlQszjUeeNMrUIoqojC', 'New Jazlyn', 'Minnesota', 'Maine', '793 Justina Keys', NULL, NULL, NULL, NULL, 'AR', '0123456789', NULL, 1, 1, '2020-02-24 10:42:49', '2020-02-24 10:42:49'),
(5, 'Jo Barton', NULL, 'your.email+faker83783@gmail.com', 0, NULL, '$2y$10$JuRbNEHJ5gIYRb5TVcQRNO00VK2Px7JOV3/qU9197qMVLp.sMSvwy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VN', NULL, NULL, 1, 1, '2020-02-26 13:37:49', '2020-02-26 13:37:49'),
(6, 'Neoma Kautzer', NULL, 'your.email+faker19174@gmail.com', 0, NULL, '$2y$10$1xkjKTWbh3dnuhfoTFD5DOlh4HFquiHj/pIuKP0J6Ap3QlPtSQ5xa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VN', NULL, NULL, 1, 1, '2020-02-26 13:42:36', '2020-02-26 13:42:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_vendor`
--

CREATE TABLE `shop_vendor` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_vendor`
--

INSERT INTO `shop_vendor` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/vendor/vendor.png', '', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_config_key_unique` (`key`),
  ADD KEY `admin_config_code_index` (`code`);

--
-- Chỉ mục cho bảng `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_menu_key_unique` (`key`);

--
-- Chỉ mục cho bảng `admin_menu_permission`
--
ALTER TABLE `admin_menu_permission`
  ADD PRIMARY KEY (`menu_id`,`permission_id`),
  ADD KEY `admin_menu_permission_menu_id_permission_id_index` (`menu_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_permission`
--
ALTER TABLE `admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permission_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_role_name_unique` (`name`),
  ADD UNIQUE KEY `admin_role_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD PRIMARY KEY (`role_id`,`menu_id`),
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Chỉ mục cho bảng `admin_role_permission`
--
ALTER TABLE `admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_role_user`
--
ALTER TABLE `admin_role_user`
  ADD KEY `admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `admin_store`
--
ALTER TABLE `admin_store`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_store_description`
--
ALTER TABLE `admin_store_description`
  ADD PRIMARY KEY (`config_id`,`lang`),
  ADD KEY `admin_store_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_user_username_unique` (`username`);

--
-- Chỉ mục cho bảng `admin_user_permission`
--
ALTER TABLE `admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `affiliate`
--
ALTER TABLE `affiliate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `affiliate_history`
--
ALTER TABLE `affiliate_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `affiliate_order`
--
ALTER TABLE `affiliate_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `affiliate_user`
--
ALTER TABLE `affiliate_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliate_user_affiliate_code_unique` (`affiliate_code`);

--
-- Chỉ mục cho bảng `affiliate_user_withdraw`
--
ALTER TABLE `affiliate_user_withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `affiliate_withdraw`
--
ALTER TABLE `affiliate_withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affiliate_withdraw_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `shipping_ghtk`
--
ALTER TABLE `shipping_ghtk`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping_ghtk_orders`
--
ALTER TABLE `shipping_ghtk_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping_ghtk_warehouses`
--
ALTER TABLE `shipping_ghtk_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_attribute_group`
--
ALTER TABLE `shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_banner`
--
ALTER TABLE `shop_banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_block_content`
--
ALTER TABLE `shop_block_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_brand`
--
ALTER TABLE `shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_brand_alias_unique` (`alias`);

--
-- Chỉ mục cho bảng `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_category_alias_unique` (`alias`);

--
-- Chỉ mục cho bảng `shop_category_description`
--
ALTER TABLE `shop_category_description`
  ADD PRIMARY KEY (`category_id`,`lang`),
  ADD KEY `shop_category_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `shop_country`
--
ALTER TABLE `shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_country_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_currency`
--
ALTER TABLE `shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_currency_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_discount`
--
ALTER TABLE `shop_discount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_discount_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_email_template`
--
ALTER TABLE `shop_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_language`
--
ALTER TABLE `shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_language_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_layout_page`
--
ALTER TABLE `shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_layout_page_key_unique` (`key`);

--
-- Chỉ mục cho bảng `shop_layout_position`
--
ALTER TABLE `shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_layout_position_key_unique` (`key`);

--
-- Chỉ mục cho bảng `shop_layout_type`
--
ALTER TABLE `shop_layout_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_layout_type_key_unique` (`key`);

--
-- Chỉ mục cho bảng `shop_link`
--
ALTER TABLE `shop_link`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_news`
--
ALTER TABLE `shop_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_news_alias_unique` (`alias`);

--
-- Chỉ mục cho bảng `shop_news_description`
--
ALTER TABLE `shop_news_description`
  ADD PRIMARY KEY (`shop_news_id`,`lang`);

--
-- Chỉ mục cho bảng `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_order_detail`
--
ALTER TABLE `shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_order_history`
--
ALTER TABLE `shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_order_status`
--
ALTER TABLE `shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_order_total`
--
ALTER TABLE `shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_page`
--
ALTER TABLE `shop_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_page_alias_unique` (`alias`);

--
-- Chỉ mục cho bảng `shop_page_description`
--
ALTER TABLE `shop_page_description`
  ADD PRIMARY KEY (`page_id`,`lang`),
  ADD KEY `shop_page_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `shop_payment_status`
--
ALTER TABLE `shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_product_sku_unique` (`sku`),
  ADD UNIQUE KEY `shop_product_alias_unique` (`alias`),
  ADD KEY `shop_product_brand_id_index` (`brand_id`),
  ADD KEY `shop_product_vendor_id_index` (`vendor_id`),
  ADD KEY `shop_product_type_index` (`type`),
  ADD KEY `shop_product_kind_index` (`kind`),
  ADD KEY `shop_product_virtual_index` (`virtual`),
  ADD KEY `shop_product_status_index` (`status`);

--
-- Chỉ mục cho bảng `shop_product_attribute`
--
ALTER TABLE `shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Chỉ mục cho bảng `shop_product_build`
--
ALTER TABLE `shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Chỉ mục cho bảng `shop_product_category`
--
ALTER TABLE `shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Chỉ mục cho bảng `shop_product_description`
--
ALTER TABLE `shop_product_description`
  ADD PRIMARY KEY (`product_id`,`lang`),
  ADD KEY `shop_product_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `shop_product_group`
--
ALTER TABLE `shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Chỉ mục cho bảng `shop_product_image`
--
ALTER TABLE `shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_image_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `shop_product_promotion`
--
ALTER TABLE `shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `shop_shipping`
--
ALTER TABLE `shop_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_shipping_status`
--
ALTER TABLE `shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_shoppingcart`
--
ALTER TABLE `shop_shoppingcart`
  ADD KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`);

--
-- Chỉ mục cho bảng `shop_subscribe`
--
ALTER TABLE `shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_subscribe_email_unique` (`email`);

--
-- Chỉ mục cho bảng `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_user_email_unique` (`email`);

--
-- Chỉ mục cho bảng `shop_vendor`
--
ALTER TABLE `shop_vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_vendor_alias_unique` (`alias`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1033;

--
-- AUTO_INCREMENT cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `admin_permission`
--
ALTER TABLE `admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `admin_store`
--
ALTER TABLE `admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `affiliate`
--
ALTER TABLE `affiliate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `affiliate_history`
--
ALTER TABLE `affiliate_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `affiliate_order`
--
ALTER TABLE `affiliate_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `affiliate_user`
--
ALTER TABLE `affiliate_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `affiliate_user_withdraw`
--
ALTER TABLE `affiliate_user_withdraw`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `affiliate_withdraw`
--
ALTER TABLE `affiliate_withdraw`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shipping_ghtk`
--
ALTER TABLE `shipping_ghtk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shipping_ghtk_orders`
--
ALTER TABLE `shipping_ghtk_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shipping_ghtk_warehouses`
--
ALTER TABLE `shipping_ghtk_warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shop_attribute_group`
--
ALTER TABLE `shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_banner`
--
ALTER TABLE `shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_block_content`
--
ALTER TABLE `shop_block_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `shop_brand`
--
ALTER TABLE `shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `shop_country`
--
ALTER TABLE `shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `shop_currency`
--
ALTER TABLE `shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_discount`
--
ALTER TABLE `shop_discount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_email_template`
--
ALTER TABLE `shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `shop_language`
--
ALTER TABLE `shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_layout_page`
--
ALTER TABLE `shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `shop_layout_position`
--
ALTER TABLE `shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `shop_layout_type`
--
ALTER TABLE `shop_layout_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shop_link`
--
ALTER TABLE `shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shop_news`
--
ALTER TABLE `shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `shop_order_detail`
--
ALTER TABLE `shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `shop_order_history`
--
ALTER TABLE `shop_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `shop_order_status`
--
ALTER TABLE `shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shop_order_total`
--
ALTER TABLE `shop_order_total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `shop_page`
--
ALTER TABLE `shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_payment_status`
--
ALTER TABLE `shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `shop_product_attribute`
--
ALTER TABLE `shop_product_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `shop_product_image`
--
ALTER TABLE `shop_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `shop_shipping`
--
ALTER TABLE `shop_shipping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shop_shipping_status`
--
ALTER TABLE `shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT cho bảng `shop_subscribe`
--
ALTER TABLE `shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `shop_vendor`
--
ALTER TABLE `shop_vendor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `affiliate_withdraw`
--
ALTER TABLE `affiliate_withdraw`
  ADD CONSTRAINT `affiliate_withdraw_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
