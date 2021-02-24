-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `sma_company_users`;
CREATE TABLE `sma_company_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `group` varchar(20) NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `sma_company_users` (`id`, `company`, `email`, `group`) VALUES
(1,	'kamilaju',	'email@kamil.com',	'NONE'),
(2,	'Ouskabas',	'ous@ous.com',	'NONE'),
(3,	'snami',	'sema@k.com',	'NONE'),
(4,	'omatola',	'aaa@bb.com',	'NONE'),
(5,	'onnn',	'onnn@kk.com',	'NONE'),
(6,	'comp',	'test@test.com',	'NONE');

DROP TABLE IF EXISTS `sma_organizations`;
CREATE TABLE `sma_organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `sub_county` varchar(20) DEFAULT NULL,
  `zone` varchar(20) DEFAULT NULL,
  `owner_id` varchar(100) DEFAULT '0',
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `org_type` varchar(50) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `sma_organizations` (`id`, `name`, `phone`, `email`, `county`, `sub_county`, `zone`, `owner_id`, `longitude`, `latitude`, `org_type`, `parent`) VALUES
(3,	'kamilaju',	'0794566099',	'email@kamil.com',	NULL,	NULL,	NULL,	'0',	NULL,	NULL,	NULL,	NULL),
(4,	'Ouskabas',	'123456',	'ous@ous.com',	NULL,	NULL,	NULL,	'0',	NULL,	NULL,	NULL,	NULL),
(5,	'snami',	'1234567890',	'sema@k.com',	NULL,	NULL,	NULL,	'0',	NULL,	NULL,	NULL,	NULL),
(6,	'omatola',	'7890999900',	'aaa@bb.com',	NULL,	NULL,	NULL,	'0',	NULL,	NULL,	NULL,	NULL),
(7,	'onnn',	'98765432',	'onnn@kk.com',	NULL,	NULL,	NULL,	'0',	NULL,	NULL,	NULL,	NULL),
(8,	'comp',	'678907890',	'test@test.com',	NULL,	NULL,	NULL,	'0',	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `sma_sessions`;
CREATE TABLE `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1cn5jm6mm3grl1sqj4abtbakegcaii12',	'::1',	1591790281,	'__ci_last_regenerate|i:1591790022;requested_page|s:5:\"admin\";'),
('71ak28d5pho3n6q1qp3t4fcknee6da0g',	'::1',	1591823570,	'__ci_last_regenerate|i:1591823543;requested_page|s:23:\"admin/pos/open_register\";company|s:8:\"kamilaju\";user_email|s:15:\"email@kamil.com\";'),
('7eg0ki07i5r50thi68tf0h6i2h7p18bc',	'::1',	1591817986,	'__ci_last_regenerate|i:1591817986;'),
('7fq4o23siklpbblhbggsacop9bpjmc4p',	'::1',	1591888151,	'__ci_last_regenerate|i:1591887962;company|s:8:\"kamilaju\";user_email|s:15:\"email@kamil.com\";'),
('7p0eqp930hfoheks12qi4ql6va1dm1dm',	'::1',	1591790913,	'__ci_last_regenerate|i:1591790741;requested_page|s:5:\"admin\";'),
('8op9ereagsfquv2dcjh6cbqel4thp5e9',	'::1',	1591795878,	'__ci_last_regenerate|i:1591795752;requested_page|s:5:\"admin\";'),
('arov08pt38tg85fhh2isjpchmelhit5s',	'::1',	1591801363,	'__ci_last_regenerate|i:1591801072;requested_page|s:5:\"admin\";'),
('bv6ophvcdrhth5vafjdg33ijh4tn4lt4',	'::1',	1591797227,	'__ci_last_regenerate|i:1591797198;requested_page|s:5:\"admin\";'),
('c3f8dpvfsrethmi7p9uldgfsfkoodr08',	'::1',	1591796853,	'__ci_last_regenerate|i:1591796571;requested_page|s:5:\"admin\";'),
('d3a14fcm2d09hn1spavo2ef96nnafu2q',	'::1',	1591819891,	'__ci_last_regenerate|i:1591819667;requested_page|s:5:\"admin\";'),
('d4f7bskoqbi2rflos1snobfato9prufm',	'::1',	1591794833,	'__ci_last_regenerate|i:1591794547;requested_page|s:5:\"admin\";'),
('ea7lkvhmpjsd3uadlkp2srbuqei04h98',	'::1',	1591821041,	'__ci_last_regenerate|i:1591821038;requested_page|s:5:\"admin\";'),
('ecd9lmug2gbrh2i3nbq0cs2nkv5opmr0',	'::1',	1591821003,	'__ci_last_regenerate|i:1591820704;requested_page|s:5:\"admin\";'),
('er08usnc2haftf353dojg7nj88pn5o6n',	'::1',	1591802288,	'__ci_last_regenerate|i:1591802018;requested_page|s:5:\"admin\";'),
('fjog3gtu2po6pic5vsmb0duonsp9soq4',	'::1',	1591790657,	'__ci_last_regenerate|i:1591790423;requested_page|s:5:\"admin\";'),
('gd06hb6e1qvqqr238lqvqtqf0qqutg2m',	'::1',	1591822648,	'__ci_last_regenerate|i:1591822609;requested_page|s:23:\"admin/pos/open_register\";company|s:8:\"kamilaju\";user_email|s:15:\"email@kamil.com\";'),
('hk8h2jm0jiar4ad362gqbqho4iiaoegv',	'::1',	1591802773,	'__ci_last_regenerate|i:1591802727;requested_page|s:5:\"admin\";'),
('ig2fmb61dhdurqm9ke4ns5884et6r7m9',	'::1',	1591822025,	'__ci_last_regenerate|i:1591821825;requested_page|s:23:\"admin/pos/open_register\";company|s:8:\"kamilaju\";user_email|s:15:\"email@kamil.com\";'),
('kfgs8gac99o4qncibsha53den62cu42a',	'::1',	1591886613,	'__ci_last_regenerate|i:1591886613;'),
('lg880p8ecgmojonub788cujt88b5f91i',	'::1',	1591802706,	'__ci_last_regenerate|i:1591802414;requested_page|s:5:\"admin\";'),
('li6vft8aahmtioimffala97ce5j77m80',	'::1',	1591818752,	'__ci_last_regenerate|i:1591818752;'),
('lo0apfks7vn9f4ken585pnaoikm2br3j',	'::1',	1591800813,	'__ci_last_regenerate|i:1591800724;requested_page|s:5:\"admin\";'),
('lv5pnu9i1moj8hjuels9j5tkvmncvn3o',	'::1',	1591801949,	'__ci_last_regenerate|i:1591801662;requested_page|s:5:\"admin\";'),
('mlodmhivrrbfjitak1meu5nq166kva0h',	'::1',	1591789975,	'__ci_last_regenerate|i:1591789675;requested_page|s:5:\"admin\";'),
('n2l3juhlakilgptdlakkk7ci0b2fud85',	'::1',	1591823914,	'__ci_last_regenerate|i:1591823772;requested_page|s:23:\"admin/pos/open_register\";company|s:8:\"kamilaju\";user_email|s:15:\"email@kamil.com\";'),
('s51tg1gtkf71hd402pebj48od45a0uen',	'::1',	1591800576,	'__ci_last_regenerate|i:1591800400;requested_page|s:5:\"admin\";'),
('t8i3htti0b1g3r5ubctoh1s6q5bu7s2a',	'::1',	1591820589,	'__ci_last_regenerate|i:1591820315;requested_page|s:5:\"admin\";'),
('t9mmf8ag2763vcdsg9tph9lrh23u7be3',	'::1',	1591794890,	'__ci_last_regenerate|i:1591794889;requested_page|s:5:\"admin\";'),
('tj2ubgj9p94i884ldu3c43gbk8m0pdfr',	'::1',	1591888555,	'__ci_last_regenerate|i:1591888552;'),
('u412u55dc16des863mg9ukn6tp9e28pq',	'::1',	1591820131,	'__ci_last_regenerate|i:1591819991;requested_page|s:5:\"admin\";'),
('ud6d6575dsdlac750jmmj3e4941g1a4b',	'::1',	1591797165,	'__ci_last_regenerate|i:1591796895;requested_page|s:5:\"admin\";');

DROP TABLE IF EXISTS `sma_settings`;
CREATE TABLE `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT '0',
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) DEFAULT NULL,
  `quote_prefix` varchar(20) DEFAULT NULL,
  `purchase_prefix` varchar(20) DEFAULT NULL,
  `transfer_prefix` varchar(20) DEFAULT NULL,
  `delivery_prefix` varchar(20) DEFAULT NULL,
  `payment_prefix` varchar(20) DEFAULT NULL,
  `return_prefix` varchar(20) DEFAULT NULL,
  `returnp_prefix` varchar(20) DEFAULT NULL,
  `expense_prefix` varchar(20) DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT '0',
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) DEFAULT NULL,
  `reg_ver` tinyint(1) DEFAULT NULL,
  `allow_reg` tinyint(1) DEFAULT NULL,
  `reg_notification` tinyint(1) DEFAULT NULL,
  `auto_reg` tinyint(1) DEFAULT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(10) DEFAULT NULL,
  `corn` datetime DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT '0',
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '1',
  `reference_format` tinyint(1) NOT NULL DEFAULT '1',
  `racks` tinyint(1) DEFAULT '0',
  `attributes` tinyint(1) NOT NULL DEFAULT '0',
  `product_expiry` tinyint(1) NOT NULL DEFAULT '0',
  `decimals` tinyint(2) NOT NULL DEFAULT '2',
  `qty_decimals` tinyint(2) NOT NULL DEFAULT '2',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT '0',
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT '0',
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT '0',
  `sac` tinyint(1) DEFAULT '0',
  `display_all_products` tinyint(1) DEFAULT '0',
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT '0',
  `barcode_separator` varchar(2) NOT NULL DEFAULT '_',
  `set_focus` tinyint(1) NOT NULL DEFAULT '0',
  `price_group` int(11) DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT '1',
  `ppayment_prefix` varchar(20) DEFAULT 'POP',
  `disable_editing` smallint(6) DEFAULT '90',
  `qa_prefix` varchar(55) DEFAULT NULL,
  `update_cost` tinyint(1) DEFAULT NULL,
  `apis` tinyint(1) NOT NULL DEFAULT '0',
  `state` varchar(100) DEFAULT NULL,
  `pdf_lib` varchar(20) DEFAULT 'dompdf',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`, `price_group`, `barcode_img`, `ppayment_prefix`, `disable_editing`, `qa_prefix`, `update_cost`, `apis`, `state`, `pdf_lib`) VALUES
(1,	'lifestyle-logo-pic.png',	'lifestyle-logo-pic1.png',	'LifeStyle',	'english',	1,	0,	'USD',	1,	10,	'3.2.10',	1,	5,	'SALE',	'QUOTE',	'PO',	'TR',	'DO',	'IPAY',	'SR',	'PR',	'',	0,	'default',	1,	1,	1,	1,	1,	1,	0,	1,	0,	'Africa/Nairobi',	800,	800,	150,	150,	0,	0,	0,	0,	NULL,	'mail',	'/usr/sbin/sendmail',	'pop.gmail.com',	'contact@sma.tecdiary.org',	'jEFTM4T63AiQ9dsidxhPKt9CIg4HQjCN58n/RW9vmdC/UDXCzRLR469ziZ0jjpFlbOg43LyoSmpJLBkcAHh0Yw==',	'25',	NULL,	NULL,	1,	'kmacharia@usiu.ac.ke',	0,	4,	1,	0,	2,	1,	1,	0,	2,	2,	'.',	',',	0,	3,	'coderzee',	'ea8d0b65-ef5d-4fdf-9d2f-afbdc2a51030',	0,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0,	'',	0,	'_',	0,	1,	1,	'POP',	90,	'',	0,	0,	'AN',	'dompdf');

-- 2021-02-16 05:28:33
