#
# TABLE STRUCTURE FOR: account_2
#

DROP TABLE IF EXISTS `account_2`;

CREATE TABLE `account_2` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_id` int(1) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bank_add
#

DROP TABLE IF EXISTS `bank_add`;

CREATE TABLE `bank_add` (
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bank_summary
#

DROP TABLE IF EXISTS `bank_summary`;

CREATE TABLE `bank_summary` (
  `bank_id` varchar(250) DEFAULT NULL,
  `description` text,
  `deposite_id` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ac_type` varchar(50) DEFAULT NULL,
  `dr` float DEFAULT NULL,
  `cr` float DEFAULT NULL,
  `ammount` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: cheque_manger
#

DROP TABLE IF EXISTS `cheque_manger`;

CREATE TABLE `cheque_manger` (
  `cheque_id` varchar(100) NOT NULL,
  `transection_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `bank_id` varchar(100) NOT NULL,
  `cheque_no` varchar(100) NOT NULL,
  `date` varchar(250) DEFAULT NULL,
  `transection_type` varchar(100) NOT NULL,
  `cheque_status` int(10) NOT NULL,
  `amount` float NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: company_information
#

DROP TABLE IF EXISTS `company_information`;

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES ('1', 'AllOver', 'luisim11_@hotmail.com', 'San Salvador, El Salvador', '70802431', 'https://www.ejemplo.com/', '1');


#
# TABLE STRUCTURE FOR: customer_information
#

DROP TABLE IF EXISTS `customer_information`;

CREATE TABLE `customer_information` (
  `customer_id` varchar(250) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `customer_mobile`, `customer_email`, `status`, `create_date`) VALUES ('68Z6TCDM37J2VZF', 'regular', '', '', '', '1', '2019-07-21 08:05:43');


#
# TABLE STRUCTURE FOR: customer_ledger
#

DROP TABLE IF EXISTS `customer_ledger`;

CREATE TABLE `customer_ledger` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(250) DEFAULT NULL,
  `receipt_from` varchar(50) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `d_c` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('1', 'BRHBXYV2VZ', '68Z6TCDM37J2VZF', 'NA', NULL, '0', 'Previous adjustment with software', 'NA', 'NA', '2019-07-21', NULL, '1', 'd', '2019-07-21 08:05:43');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('2', 'W6DYXPE1F4GKDZ9', '68Z6TCDM37J2VZF', '4566626283', NULL, '20', 'Purchase by customer', '', '', '2019-07-21', NULL, '1', 'd', '2019-07-21 08:20:33');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('3', 'W6DYXPE1F4GKDZ9', '68Z6TCDM37J2VZF', NULL, 'X7GZZW3E2Y', '20', 'Paid by customer', '1', '', '2019-07-21', NULL, '1', 'c', '2019-07-21 08:20:33');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('4', '6TC52N769XA7I44', '68Z6TCDM37J2VZF', '8679712653', NULL, '160', 'Purchase by customer', '', '', '2019-07-21', NULL, '1', 'd', '2019-07-21 08:22:11');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('5', '6TC52N769XA7I44', '68Z6TCDM37J2VZF', NULL, 'D12NAI3AZ8', '160', 'Paid by customer', '1', '', '2019-07-21', NULL, '1', 'c', '2019-07-21 08:22:11');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('6', '71T1IQJGGNOP6T8', '68Z6TCDM37J2VZF', '8455117527', NULL, '120', 'Purchase by customer', '', '', '2019-07-21', NULL, '1', 'd', '2019-07-21 09:57:28');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('7', '71T1IQJGGNOP6T8', '68Z6TCDM37J2VZF', NULL, 'S9AH6RYARB', '120', 'Paid by customer', '1', '', '2019-07-21', NULL, '1', 'c', '2019-07-21 09:57:28');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('8', 'VA2Q2W1SALWJMJJ', '68Z6TCDM37J2VZF', '3545628747', NULL, '200', 'Purchase by customer', '', '', '2019-07-22', NULL, '1', 'd', '2019-07-21 12:19:01');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('9', 'VA2Q2W1SALWJMJJ', '68Z6TCDM37J2VZF', NULL, 'ZQH8LNNTBY', '200', 'Paid by customer', '1', '', '2019-07-22', NULL, '1', 'c', '2019-07-21 12:19:01');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('10', 'ZXHLYYPAVQ38H66', '68Z6TCDM37J2VZF', '8264343817', NULL, '20', 'Purchase by customer', '', '', '2019-07-22', NULL, '1', 'd', '2019-07-21 12:19:33');
INSERT INTO `customer_ledger` (`id`, `transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `receipt_from`, `status`, `d_c`, `created_at`) VALUES ('11', 'ZXHLYYPAVQ38H66', '68Z6TCDM37J2VZF', NULL, '66R3BSIEDP', '20', 'Paid by customer', '1', '', '2019-07-22', NULL, '1', 'c', '2019-07-21 12:19:33');


#
# TABLE STRUCTURE FOR: customer_transection_summary
#

DROP TABLE IF EXISTS `customer_transection_summary`;

CREATE   VIEW `customer_transection_summary` AS select `customer_information`.`customer_name` AS `customer_name`,`customer_ledger`.`customer_id` AS `customer_id`,'credit' AS `type`,sum(-(`customer_ledger`.`amount`)) AS `amount` from (`customer_ledger` join `customer_information` on((`customer_information`.`customer_id` = `customer_ledger`.`customer_id`))) where (isnull(`customer_ledger`.`receipt_no`) and (`customer_ledger`.`status` = 1)) group by `customer_ledger`.`customer_id` union all select `customer_information`.`customer_name` AS `customer_name`,`customer_ledger`.`customer_id` AS `customer_id`,'debit' AS `type`,sum(`customer_ledger`.`amount`) AS `amount` from (`customer_ledger` join `customer_information` on((`customer_information`.`customer_id` = `customer_ledger`.`customer_id`))) where (isnull(`customer_ledger`.`invoice_no`) and (`customer_ledger`.`status` = 1)) group by `customer_ledger`.`customer_id`;

latin1_swedish_ci;

INSERT INTO `customer_transection_summary` (`customer_name`, `customer_id`, `type`, `amount`) VALUES ('regular', '68Z6TCDM37J2VZF', 'credit', '-520');
INSERT INTO `customer_transection_summary` (`customer_name`, `customer_id`, `type`, `amount`) VALUES ('regular', '68Z6TCDM37J2VZF', 'debit', '520');


#
# TABLE STRUCTURE FOR: daily_banking_add
#

DROP TABLE IF EXISTS `daily_banking_add`;

CREATE TABLE `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `bank_id` varchar(100) NOT NULL,
  `deposit_type` varchar(255) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: daily_closing
#

DROP TABLE IF EXISTS `daily_closing`;

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `daily_closing` (`closing_id`, `last_day_closing`, `cash_in`, `cash_out`, `date`, `amount`, `adjustment`, `status`) VALUES ('UNE9I8qJ0wLC91a', '0', '10', '0', '2019-07-21', '0', NULL, '1');
INSERT INTO `daily_closing` (`closing_id`, `last_day_closing`, `cash_in`, `cash_out`, `date`, `amount`, `adjustment`, `status`) VALUES ('9yyanGGpT0t2lk8', '0', '210', '0', '2019-07-21', '210', NULL, '1');


#
# TABLE STRUCTURE FOR: invoice
#

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `invoice_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` float NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `invoice_discount` float DEFAULT NULL COMMENT 'invoice discount',
  `total_discount` float DEFAULT NULL COMMENT 'total invoice discount',
  `total_tax` float DEFAULT NULL,
  `invoice_details` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `invoice_details`, `status`) VALUES ('4249923596', '68Z6TCDM37J2VZF', '2019-07-21', '20', '1000', '0', '0', '0', '', '1');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `invoice_details`, `status`) VALUES ('6321254762', '68Z6TCDM37J2VZF', '2019-07-21', '200', '1001', '0', '0', '0', '', '1');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `invoice_details`, `status`) VALUES ('4566626283', '68Z6TCDM37J2VZF', '2019-07-21', '20', '1002', '0', '0', '0', '', '1');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `invoice_details`, `status`) VALUES ('8679712653', '68Z6TCDM37J2VZF', '2019-07-21', '160', '1003', '0', '0', '0', '', '1');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `invoice_details`, `status`) VALUES ('6684447756', '68Z6TCDM37J2VZF', '2019-07-21', '280', '1004', '0', '0', '0', '', '1');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `invoice_details`, `status`) VALUES ('8455117527', '68Z6TCDM37J2VZF', '2019-07-21', '120', '1005', '0', '0', '0', '', '1');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `invoice_details`, `status`) VALUES ('3545628747', '68Z6TCDM37J2VZF', '2019-07-22', '200', '1006', '0', '0', '0', '', '1');
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `invoice_details`, `status`) VALUES ('8264343817', '68Z6TCDM37J2VZF', '2019-07-22', '20', '1007', '0', '0', '0', '', '1');


#
# TABLE STRUCTURE FOR: invoice_details
#

DROP TABLE IF EXISTS `invoice_details`;

CREATE TABLE `invoice_details` (
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` float NOT NULL,
  `rate` float NOT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `paid_amount` float DEFAULT '0',
  `due_amount` float NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES ('678961427997174', '4249923596', '48432771', '1', '20', '10', '20', '0', '', '0', '0', '20', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES ('282572917149555', '6321254762', '48432771', '10', '20', '10', '200', '0', '', '0', '0', '200', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES ('747144821111347', '4566626283', '48432771', '1', '20', '10', '20', '0', '', '0', '20', '0', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES ('788692533239112', '8679712653', '48432771', '8', '20', '10', '160', '0', '', '0', '160', '0', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES ('667236556177356', '6684447756', '48432771', '14', '20', '10', '280', '0', '', '0', '0', '280', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES ('578752815693613', '8455117527', '48432771', '6', '20', '10', '120', '0', '', '0', '120', '0', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES ('454565346125781', '3545628747', '48432771', '10', '20', '10', '200', '0', '', '0', '200', '0', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES ('593548393957394', '8264343817', '48432771', '1', '20', '10', '20', '0', '', '0', '20', '0', '1');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8;

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1', 'user_profile', 'User Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('2', 'setting', 'Ajustes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('3', 'language', 'Lenguaje');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('4', 'manage_users', 'Manejar usuarios');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('5', 'add_user', 'Añadir usuario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('6', 'manage_company', 'Manejar compañia');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('7', 'web_settings', 'Software Settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('8', 'manage_accounts', 'Manejar cuentas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('9', 'create_accounts', 'Crear cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('10', 'manage_bank', 'Manage Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('11', 'add_new_bank', 'Add New Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('12', 'settings', 'Banco');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('13', 'closing_report', 'Reporte de cierre');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('14', 'closing', 'Cierre');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('15', 'cheque_manager', 'Manejo de cheque');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('16', 'accounts_summary', 'Resumen de cuentas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('17', 'expense', 'Gasto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('18', 'income', 'Entrada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('19', 'accounts', 'Cuentas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('20', 'stock_report', 'Reporte de Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('21', 'stock', 'Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('22', 'pos_invoice', 'Venta de POS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('23', 'manage_invoice', 'Manejar ventas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('24', 'new_invoice', 'Nueva venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('25', 'invoice', 'Venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('26', 'manage_purchase', 'Manejar compra');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('27', 'add_purchase', 'Añadir inventario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('28', 'purchase', 'Compra');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('29', 'paid_customer', 'Cliente Pago');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('30', 'manage_customer', 'Manejar cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('31', 'add_customer', 'Añadir cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('32', 'customer', 'Cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('33', 'supplier_payment_actual', 'Supplier Payment Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('34', 'supplier_sales_summary', 'Supplier Sales Summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('35', 'supplier_sales_details', 'Supplier Sales Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('36', 'supplier_ledger', 'Supplier Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('37', 'manage_supplier', 'Manejar distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('38', 'add_supplier', 'Añadir distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('39', 'supplier', 'Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('40', 'product_statement', ' Declaración del producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('41', 'manage_product', 'Manejar producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('42', 'add_product', 'Añadir producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('43', 'product', 'Producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('44', 'manage_category', 'Manejar categoria');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('45', 'add_category', 'Añadir categoria');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('46', 'category', 'Categoria');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('47', 'sales_report_product_wise', 'Reporte de ventas (Por Producto)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('48', 'purchase_report', 'Reporte de compras');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('49', 'sales_report', 'Reporte de ventas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('50', 'todays_report', 'Todays Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('51', 'report', 'Reporte');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('52', 'dashboard', 'Dashboard');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('53', 'online', 'Online');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('54', 'logout', 'Cerrar sesión');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('55', 'change_password', 'Cambiar contraseña');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('56', 'total_purchase', 'Total Purchase');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('57', 'total_amount', 'Total Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('58', 'supplier_name', 'Supplier Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('59', 'invoice_no', 'Factura No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('60', 'purchase_date', 'Fecha de compra');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('61', 'todays_purchase_report', 'Todays Purchase Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('62', 'total_sales', 'Total Sales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('63', 'customer_name', 'Nombre de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('64', 'sales_date', 'Fecha de ventas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('65', 'todays_sales_report', 'Todays Sales Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('66', 'home', 'Inicio');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('67', 'todays_sales_and_purchase_report', 'Todays sales and purchase report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('68', 'total_ammount', 'Total Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('69', 'rate', 'Tarifa');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('70', 'product_model', 'Modelo de producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('71', 'product_name', 'Nombre de producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('72', 'search', 'Buscar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('73', 'end_date', 'Fecha final');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('74', 'start_date', 'Fecha de inicio');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('75', 'total_purchase_report', 'Total Purchase Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('76', 'total_sales_report', 'Total Sales Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('77', 'total_seles', 'Total Sales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('78', 'all_stock_report', 'Reporte de todo inventario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('79', 'search_by_product', 'Buscar por producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('80', 'date', 'Fecha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('81', 'print', 'Imprimir');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('82', 'stock_date', 'Fecha de stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('83', 'print_date', 'Imprimir fecha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('84', 'sales', 'Ventas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('85', 'price', 'Precio');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('86', 'sl', 'SL.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('87', 'add_new_category', 'Añadir nueva categoria');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('88', 'category_name', 'Nombre categoria');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('89', 'save', 'Guardar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('90', 'delete', 'Borrar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('91', 'update', 'Update');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('92', 'action', 'Acción');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('93', 'manage_your_category', 'Manejar categorias');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('94', 'category_edit', 'Editar categoria');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('95', 'status', 'Estado');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('96', 'active', 'Activo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('97', 'inactive', 'Inactivo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('98', 'save_changes', 'Guardar cambios');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('99', 'save_and_add_another', 'Guardar y añadir otro');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('100', 'model', 'Modelo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('101', 'supplier_price', 'Supplier Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('102', 'sell_price', 'Precio de venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('103', 'image', 'Imagen');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('104', 'select_one', 'Seleccionar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('105', 'details', 'Detalles');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('106', 'new_product', 'Nuevo producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('107', 'add_new_product', 'Añadir nuevo producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('108', 'barcode', 'Barcode');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('109', 'qr_code', 'Código QR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('110', 'product_details', 'Detalles de producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('111', 'manage_your_product', 'Manejar productos');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('112', 'product_edit', 'Editar producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('113', 'edit_your_product', 'Editar productor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('114', 'cancel', 'Cancelar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('115', 'incl_vat', 'Incl. Vat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('116', 'money', 'USD');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('117', 'grand_total', 'Gran total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('118', 'quantity', 'Cnt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('119', 'product_report', 'Reporte de producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('120', 'product_sales_and_purchase_report', 'Reporte de ventas y compras de producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('121', 'previous_stock', 'Stock anterior');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('122', 'out', 'Fuera');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('123', 'in', 'Dentro');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('124', 'to', 'To');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('125', 'previous_balance', 'Balance de credito anterior');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('126', 'customer_address', 'Dirección de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('127', 'customer_mobile', 'Numero de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('128', 'customer_email', 'Correo de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('129', 'add_new_customer', 'Añadir nuevo cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('130', 'balance', 'Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('131', 'mobile', 'Número');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('132', 'address', 'Dirección');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('133', 'manage_your_customer', 'Manejar clientes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('134', 'customer_edit', 'Editar cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('135', 'paid_customer_list', 'Lista de pago de clientes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('136', 'ammount', 'Monto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('137', 'customer_ledger', 'Libro de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('138', 'manage_customer_ledger', 'Manejar libro de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('139', 'customer_information', 'Información de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('140', 'debit_ammount', 'Monto de debito');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('141', 'credit_ammount', 'Monto de Credito');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('142', 'balance_ammount', 'Balance ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('143', 'receipt_no', 'Recibo No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('144', 'description', 'Descripción');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('145', 'debit', 'Debito');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('146', 'credit', 'Credito');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('147', 'item_information', 'Información de producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('148', 'total', 'Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('149', 'please_select_supplier', 'Seleccionar distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('150', 'submit', 'Submit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('151', 'submit_and_add_another', 'Submit And Add Another One');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('152', 'add_new_item', 'Añadir nuevo item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('153', 'manage_your_purchase', 'Manejar compras');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('154', 'purchase_edit', 'Editar compra');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('155', 'purchase_ledger', 'Libro de compras');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('156', 'invoice_information', 'Información de venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('157', 'paid_ammount', 'Monto pagado');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('158', 'discount', 'Des./Pzs.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('159', 'save_and_paid', 'Guardar y pagar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('160', 'payee_name', 'Nombre');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('161', 'manage_your_invoice', 'Manejar compras');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('162', 'invoice_edit', 'Editar venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('163', 'new_pos_invoice', 'Nueva venta POS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('164', 'add_new_pos_invoice', 'Añadir nueva factura de POS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('165', 'product_id', 'Producto ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('166', 'paid_amount', 'Monto Pagado');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('167', 'authorised_by', 'Autorizado por');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('168', 'checked_by', 'Revisado por');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('169', 'received_by', 'Recibido por');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('170', 'prepared_by', 'Preparado por');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('171', 'memo_no', 'Memo No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('172', 'website', 'Website');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('173', 'email', 'Email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('174', 'invoice_details', 'Detalles de venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('175', 'reset', 'Reset');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('176', 'payment_account', 'Cuenta de pago');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('177', 'bank_name', 'Bank Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('178', 'cheque_or_pay_order_no', 'Cheque Orden No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('179', 'payment_type', 'Tipo de pago');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('180', 'payment_from', 'Pago de');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('181', 'payment_date', 'Fecha de pago');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('182', 'add_income', 'Añadir entrada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('183', 'cash', 'Efectivo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('184', 'cheque', 'Cheque');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('185', 'pay_order', 'Orden pago');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('186', 'payment_to', 'Pago a');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('187', 'total_outflow_ammount', 'Total Expense Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('188', 'transections', 'Transections');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('189', 'accounts_name', 'Nombre de cuentas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('190', 'outflow_report', 'Reporte de gasto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('191', 'inflow_report', 'Reporte de entrada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('192', 'all', 'Todo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('193', 'account', 'Cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('194', 'from', 'De');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('195', 'account_summary_report', 'Resumen de reporte de cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('196', 'search_by_date', 'Buscar por fecha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('197', 'cheque_no', 'Cheque No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('198', 'name', 'Nombre');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('199', 'closing_account', 'Cierre de cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('200', 'close_your_account', 'Cerrar cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('201', 'last_day_closing', 'Cierre de ultimo dia');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('202', 'cash_in', 'Dinero de entrada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('203', 'cash_out', 'Salida de dinero');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('204', 'cash_in_hand', 'Dinero en mano');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('205', 'add_new_bank', 'Add New Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('206', 'day_closing', 'Cierre diario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('207', 'account_closing_report', 'Reporte de cierres de cuentas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('208', 'last_day_ammount', 'Monto de ultimo dia');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('209', 'adjustment', 'Ajuste');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('210', 'pay_type', 'Tipo de pago ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('211', 'customer_or_supplier', 'Cliente, proveedor u otro');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('212', 'transection_id', 'Transections ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('213', 'accounts_summary_report', 'Resumen de reporte de cuentas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('214', 'bank_list', 'Bank List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('215', 'bank_edit', 'Bank Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('216', 'debit_plus', 'Debito (+)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('217', 'credit_minus', 'Credito (-)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('218', 'account_name', 'Nombre de cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('219', 'account_type', 'Tipo de cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('220', 'account_real_name', 'Nombre real de cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('221', 'manage_account', 'Manejar cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('222', 'company_name', 'AllOver');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('223', 'edit_your_company_information', 'Editar información de compañia');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('224', 'company_edit', 'Edición de compañia');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('225', 'admin', 'Admin');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('226', 'user', 'User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('227', 'password', 'Contraseña');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('228', 'last_name', 'Apellido');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('229', 'first_name', 'Primer Nombre');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('230', 'add_new_user_information', 'Añadir nueva información de usuario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('231', 'user_type', 'User Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('232', 'user_edit', 'User Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('233', 'rtr', 'RTR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('234', 'ltr', 'LTR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('235', 'ltr_or_rtr', 'LTR/RTR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('236', 'footer_text', 'Texto de footer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('237', 'favicon', 'Favicon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('238', 'logo', 'Logo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('239', 'update_setting', 'Update Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('240', 'update_your_web_setting', 'Update your web setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('241', 'login', 'Login');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('242', 'your_strong_password', 'Your strong password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('243', 'your_unique_email', 'Your unique email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('244', 'please_enter_your_login_information', 'Insertar información de inicio de sesión');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('245', 'update_profile', 'Update Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('246', 'your_profile', 'Your Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('247', 're_type_password', 'Escribir contraseña nuevamente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('248', 'new_password', 'Nueva contraseña');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('249', 'old_password', 'Contraseña antigua');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('250', 'new_information', 'Información nueva');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('251', 'old_information', 'Información antigua');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('252', 'change_your_information', 'Cambiar tu información');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('253', 'change_your_profile', 'Cambiar tu perfil');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('254', 'profile', 'Perfil');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('255', 'wrong_username_or_password', 'Wrong User Name Or Password !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('256', 'successfully_updated', 'Successfully Updated.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('257', 'blank_field_does_not_accept', 'No se aceptan espacios en blanco');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('258', 'successfully_changed_password', 'Successfully changed password.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('259', 'you_are_not_authorised_person', 'You are not authorised person !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('260', 'password_and_repassword_does_not_match', 'Contraseñas no son iguales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('261', 'new_password_at_least_six_character', 'Nueva contraseña, por lo menos 6 caracteres');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('262', 'you_put_wrong_email_address', 'You put wrong email address !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('263', 'cheque_ammount_asjusted', 'Ajuste de monto de cheque');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('264', 'successfully_payment_paid', 'Successfully Payment Paid.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('265', 'successfully_added', 'Successfully Added.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('266', 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('267', 'successfully_payment_received', 'Successfully Payment Received.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('268', 'already_inserted', 'Ya se insertó');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('269', 'successfully_delete', 'Successfully Delete.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('270', 'successfully_created', 'Successfully Created.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('271', 'logo_not_uploaded', 'Logo no subido');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('272', 'favicon_not_uploaded', 'Favicon no subido');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('273', 'supplier_mobile', 'Supplier Mobile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('274', 'supplier_address', 'Supplier Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('275', 'supplier_details', 'Supplier Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('276', 'add_new_supplier', 'Añadir nuevo proveedor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('277', 'manage_suppiler', 'Manejar distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('278', 'manage_your_supplier', 'Manejar distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('279', 'manage_supplier_ledger', 'Manejar libro de distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('280', 'invoice_id', 'Factura ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('281', 'deposite_id', 'Deposito ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('282', 'supplier_actual_ledger', 'Supplier Payment Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('283', 'supplier_information', 'Supplier Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('284', 'event', 'Evento');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('285', 'add_new_income', 'Añadir nueva entrada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('286', 'add_expese', 'Añadir gasto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('287', 'add_new_expense', 'Añadir nuevo gasto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('288', 'total_inflow_ammount', 'Total Income Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('289', 'create_new_invoice', 'Nueva venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('290', 'create_pos_invoice', 'Nueva venta POS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('291', 'total_profit', 'Total Profit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('292', 'monthly_progress_report', 'Reporte mensual');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('293', 'total_invoice', 'Total Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('294', 'account_summary', 'Resumen de cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('295', 'total_supplier', 'Total Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('296', 'total_product', 'Total Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('297', 'total_customer', 'Total Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('298', 'supplier_edit', 'Supplier Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('299', 'add_new_invoice', 'Añadir nueva factura');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('300', 'add_new_purchase', 'Añadir nueva compra');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('301', 'currency', 'Moneda');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('302', 'currency_position', 'Posición de monedaq');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('303', 'left', 'Izquierda');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('304', 'right', 'Derecha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('305', 'add_tax', 'Añadir impuesto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('306', 'manage_tax', 'Manejar impuesto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('307', 'add_new_tax', 'Añadir nuevo impuesto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('308', 'enter_tax', 'Ingresar impuesto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('309', 'already_exists', 'Ya existe');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('310', 'successfully_inserted', 'Successfully Inserted.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('311', 'tax', 'Tax');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('312', 'tax_edit', 'Tax Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('313', 'product_not_added', 'Producto no agregado');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('314', 'total_tax', 'Total Tax');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('315', 'manage_your_supplier_details', 'Manejar detalles de distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('316', 'invoice_description', 'Descripcción');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('317', 'thank_you_for_choosing_us', 'Thank you very much for choosing us.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('318', 'billing_date', 'Fecha de facturación');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('319', 'billing_to', 'Facturación hasta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('320', 'billing_from', 'Facturación desde');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('321', 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this product.This product already used in calculation system!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('322', 'old_customer', 'Cliente viejo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('323', 'new_customer', 'Nuevo Cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('324', 'new_supplier', 'Nuevo distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('325', 'old_supplier', 'Distribuidor viejo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('326', 'credit_customer', 'Credito de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('327', 'account_already_exists', 'Esta cuenta ya existe');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('328', 'edit_income', 'Editar entrada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('329', 'you_are_not_access_this_part', 'You are not authorised person !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('330', 'account_edit', 'Editar cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('331', 'due', 'Adeudado');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('332', 'expense_edit', 'Editar gasto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('333', 'please_select_customer', 'Seleccionar cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('334', 'profit_report', 'Reporte de ganancia (Por venta)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('335', 'total_profit_report', 'Total profit report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('336', 'please_enter_valid_captcha', 'Ingresar captcha valido');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('337', 'category_not_selected', 'Categoria no seleccionada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('338', 'supplier_not_selected', 'Supplier not selected.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('339', 'please_select_product', 'Seleccionar producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('340', 'product_model_already_exist', 'Modelo de producto ya existe');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('341', 'invoice_logo', 'Logo de factura');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('342', 'available_qnty', 'Cnt. Dis.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('343', 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('344', 'customer_details', 'Detalles de clienteq');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('345', 'manage_customer_details', 'Manejar detalles de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('346', 'site_key', 'Captcha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('347', 'secret_key', 'Captcha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('348', 'captcha', 'Captcha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('349', 'cartoon_quantity', 'Cantidad de Cartoon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('350', 'total_cartoon', 'Total Cartoon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('351', 'cartoon', 'Cartoon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('352', 'item_cartoon', 'Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('353', 'product_and_supplier_did_not_match', 'Producto y distribuidor no son el mismo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('354', 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'Si se actualiza compra,primero seleccione distribuidor y luego producto, luego actualizar cantidad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('355', 'item', 'Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('356', 'manage_your_credit_customer', 'Manejar credito de clientes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('357', 'total_quantity', 'Total Quantity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('358', 'quantity_per_cartoon', 'Cantidad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('359', 'barcode_qrcode_scan_here', 'Barcode o QR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('360', 'synchronizer_setting', 'Synchronizer Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('361', 'data_synchronizer', 'Sincronizar datos');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('362', 'hostname', 'Nombre de host');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('363', 'username', 'User Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('364', 'ftp_port', 'FTP Port');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('365', 'ftp_debug', 'FTP Debug');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('366', 'project_root', 'Raiz de proyecto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('367', 'please_try_again', 'Por favor trata nuevamente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('368', 'save_successfully', 'Guardado exitosamente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('369', 'synchronize', 'Synchronize');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('370', 'internet_connection', 'Conexión a internet');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('371', 'outgoing_file', 'Archivo de salida');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('372', 'incoming_file', 'Archivo de entrada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('373', 'ok', 'Ok');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('374', 'not_available', 'No disponible');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('375', 'available', 'Disponible');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('376', 'download_data_from_server', 'Descargar datos del servidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('377', 'data_import_to_database', 'Importar a base de datos');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('378', 'data_upload_to_server', 'Enviar datos a servidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('379', 'please_wait', 'Por favor espera');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('380', 'ooops_something_went_wrong', 'Oooops algo salió mal');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('381', 'upload_successfully', 'Upload successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('382', 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('383', 'please_configure_synchronizer_settings', 'Configurar sincronizador');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('384', 'download_successfully', 'Descarga exitosa');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('385', 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('386', 'data_import_first', 'Importar datos');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('387', 'data_import_successfully', 'Datos importados exitosamente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('388', 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('389', 'total_sale_ctn', 'Total Sale Ctn');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('390', 'in_qnty', 'Cantidad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('391', 'out_qnty', 'S. Cnt.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('392', 'stock_report_supplier_wise', 'Stock Reporte (Por proveedor)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('393', 'all_stock_report_supplier_wise', 'Reporte de inventario (Por proveedor)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('394', 'select_supplier', 'Seleccionar distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('395', 'stock_report_product_wise', 'Stock Reporte (Por producto)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('396', 'phone', 'Telefono');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('397', 'select_product', 'Seleccionar producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('398', 'in_quantity', 'Cantidad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('399', 'out_quantity', 'S. Cnt.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('400', 'in_taka', 'En USD');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('401', 'out_taka', 'Sin USD');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('402', 'commission', 'Comisión');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('403', 'generate_commission', 'Generar Comisión');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('404', 'commission_rate', 'Tarifa de comisión');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('405', 'total_ctn', 'Total Ctn.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('406', 'per_pcs_commission', 'Comisión por pieza');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('407', 'total_commission', 'Total Commission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('408', 'enter', 'Ingresar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('409', 'please_add_walking_customer_for_default_customer', 'Añadir cliente regular ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('410', 'supplier_ammount', 'Supplier Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('411', 'my_sale_ammount', 'Monto de venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('412', 'signature_pic', 'Imagen de fecha');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('413', 'branch', 'Sucursal');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('414', 'ac_no', 'Número');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('415', 'ac_name', 'Nombre ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('416', 'bank_transaction', 'Bank Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('417', 'bank', 'Banco');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('418', 'withdraw_deposite_id', 'Withdraw / Deposite ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('419', 'bank_ledger', 'Bank Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('420', 'note_name', 'Nombre de nota');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('421', 'pcs', 'Pieza');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('422', '1', '1');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('423', '2', '2');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('424', '5', '5');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('425', '10', '10');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('426', '20', '20');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('427', '50', '50');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('428', '100', '100');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('429', '500', '500');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('430', '1000', '1000');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('431', 'total_discount', 'Total Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('432', 'product_not_found', 'Producto no encontrado');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('433', 'this_is_not_credit_customer', 'This is not credit customer !');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('434', 'personal_loan', 'Prestamo de oficina');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('435', 'add_person', 'Añadir persona');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('436', 'add_loan', 'Añadir prestamo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('437', 'add_payment', 'Añadir pago');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('438', 'manage_person', 'Manejar persona');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('439', 'personal_edit', 'Editar persona');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('440', 'person_ledger', 'Libro de persona');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('441', 'backup_restore', 'Copia de seguridad ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('442', 'database_backup', 'Restauración de base de datos');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('443', 'file_information', 'Información de archivo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('444', 'filename', 'nombre de archivo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('445', 'size', 'Tamaño');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('446', 'backup_date', 'Fecha de Copia de seguridad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('447', 'backup_now', 'Realizar Copia de seguridad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('448', 'restore_now', 'Restaurar ahora');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('449', 'are_you_sure', '¿Esta seguro?');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('450', 'download', 'Descarga');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('451', 'backup_and_restore', 'Copia de seguridad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('452', 'backup_successfully', 'Copia de seguridad exitosa');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('453', 'delete_successfully', 'Borrado exitoso');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('454', 'stock_ctn', 'Stock/Cnt.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('455', 'unit', 'Unit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('456', 'meter_m', 'Metro (M)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('457', 'piece_pc', 'Pieza (Pz)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('458', 'kilogram_kg', 'Kilogramo (Kg)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('459', 'stock_cartoon', 'Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('460', 'add_product_csv', 'Añadir producto (CSV)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('461', 'import_product_csv', 'Importar producto (CSV)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('462', 'close', 'Cerrar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('463', 'download_example_file', 'Descargar archivo de ejemplo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('464', 'upload_csv_file', 'Upload CSV File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('465', 'csv_file_informaion', 'Información de archivo CSV');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('466', 'out_of_stock', 'Sin Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('467', 'others', 'Otros');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('468', 'full_paid', 'Pagado completamente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('469', 'successfully_saved', 'Your Data Successfully Saved');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('470', 'manage_loan', 'Manejar prestamo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('471', 'receipt', 'Recibo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('472', 'payment', 'Pago');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('473', 'cashflow', 'Flujo de dinero diario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('474', 'signature', 'Firma');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('475', 'supplier_reports', 'Supplier Reports');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('476', 'generate', 'Generar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('477', 'todays_overview', 'Todays Overview');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('478', 'last_sales', 'Ultima venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('479', 'manage_transaction', 'Manejar transacción');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('480', 'daily_summary', 'Resumen diario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('481', 'daily_cash_flow', 'Flujo de dinero diario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('482', 'custom_report', 'Reporte de cliente');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('483', 'transaction', 'Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('484', 'receipt_amount', 'Monto de recibo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('485', 'transaction_details_datewise', 'Transaction Details Datewise');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('486', 'cash_closing', 'Cierre de dinero');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('487', 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('488', 'supplier_id', 'Supplier ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('489', 'category_id', 'Categoria ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('490', 'select_report', 'Seleccionar reporte');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('491', 'supplier_summary', 'Supplier summary');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('492', 'sales_payment_actual', 'Pago de ventas');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('493', 'today_already_closed', 'Today already closed.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('494', 'root_account', 'Cuenta raiz');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('495', 'office', 'Oficina');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('496', 'loan', 'Prestamo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('497', 'transaction_mood', 'Transaction Mood');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('498', 'select_account', 'Seleccionar cuenta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('499', 'add_receipt', 'Añadir recibo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('500', 'update_transaction', 'Update Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('501', 'no_stock_found', 'No hay stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('502', 'admin_login_area', 'Admin Login');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('503', 'print_qr_code', 'Imprimir codigo QR');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('504', 'discount_type', 'Tipo de descuento');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('505', 'discount_percentage', 'Descuento');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('506', 'fixed_dis', 'Fixed Dis.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('507', 'return', 'Retorno');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('508', 'stock_return_list', 'Stock Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('509', 'wastage_return_list', 'Wastage Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('510', 'return_invoice', 'Factura de retorno');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('511', 'sold_qty', 'Cantidad vendida');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('512', 'ret_quantity', 'Cnt retorno');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('513', 'deduction', 'Deducción');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('514', 'check_return', 'Retorno de cheque');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('515', 'reason', 'Razón');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('516', 'usablilties', 'Usability');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('517', 'adjs_with_stck', 'Ajustar con inventario');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('518', 'return_to_supplier', 'Retorno a distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('519', 'wastage', 'Wastage');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('520', 'to_deduction', 'Total Deduction ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('521', 'nt_return', 'Monto retorno neto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('522', 'return_list', 'Lista de retornos');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('523', 'add_return', 'Añadir retorno');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('524', 'per_qty', 'Cant. Comprada');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('525', 'return_supplier', 'Retorno de distribuidor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('526', 'stock_purchase', 'Precio de compra de stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('527', 'stock_sale', 'Stock Sale Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('528', 'supplier_return', 'Supplier Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('529', 'purchase_id', 'Compra ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('530', 'return_id', 'Retorno ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('531', 'supplier_return_list', 'Supplier Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('532', 'c_r_slist', 'Inventario de retornos');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('533', 'wastage_list', 'Wastage List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('534', 'please_input_correct_invoice_id', 'Insertar un ID valido de factura');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('535', 'please_input_correct_purchase_id', 'Insertar un ID valido de venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('536', 'add_more', 'Añadir más');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('537', 'prouct_details', 'Detalles de producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('538', 'prouct_detail', 'Detalles de producto');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('539', 'stock_return', 'Stock Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('540', 'choose_transaction', 'Seleccionar transacción');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('541', 'transection_category', 'Select  Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('542', 'transaction_categry', 'Select Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('543', 'search_supplier', 'Buscar proveedor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('544', 'customer_id', 'Cliente ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('545', 'search_customer', 'Buscar venta de clientes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('546', 'serial_no', 'Numero de serie');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('547', 'item_discount', 'Descuento');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('548', 'invoice_discount', 'Descuento de venta');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('549', 'add_unit', 'Añadir unidad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('550', 'manage_unit', 'Manejar unidad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('551', 'add_new_unit', 'Añadir nueva unidad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('552', 'unit_name', 'Unit Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('553', 'payment_amount', 'Monto de pago');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('554', 'manage_your_unit', 'Manejar unidad');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('555', 'unit_id', 'Unit ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('556', 'unit_edit', 'Unit Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('557', 'vat', 'Vat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('558', 'sales_report_category_wise', 'Reporte de ventas (Por categoria)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('559', 'purchase_report_category_wise', 'Reporte de compras (Por Categoria)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('560', 'category_wise_purchase_report', 'Reporte de compras por categoria');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('561', 'category_wise_sales_report', 'Reporte de ventas por categoria');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('562', 'best_sale_product', 'Producto mejor vendido');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('563', 'all_best_sales_product', 'Productos mejor vendidos');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('564', 'todays_customer_receipt', 'Todays Customer Receipt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('565', 'not_found', 'Record no encontrado');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('566', 'collection', 'Colección');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('567', 'increment', 'Incremento');


#
# TABLE STRUCTURE FOR: notes
#

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `cash_date` varchar(20) NOT NULL,
  `1000n` varchar(11) NOT NULL,
  `500n` varchar(11) NOT NULL,
  `100n` varchar(11) NOT NULL,
  `50n` varchar(11) NOT NULL,
  `20n` varchar(11) NOT NULL,
  `10n` varchar(11) NOT NULL,
  `5n` varchar(11) NOT NULL,
  `2n` varchar(11) NOT NULL,
  `1n` varchar(30) NOT NULL,
  `grandtotal` varchar(30) NOT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `notes` (`note_id`, `cash_date`, `1000n`, `500n`, `100n`, `50n`, `20n`, `10n`, `5n`, `2n`, `1n`, `grandtotal`) VALUES ('1', '2019-07-21', '', '', '', '', '40', '', '', '', '', '800');
INSERT INTO `notes` (`note_id`, `cash_date`, `1000n`, `500n`, `100n`, `50n`, `20n`, `10n`, `5n`, `2n`, `1n`, `grandtotal`) VALUES ('2', '2019-07-21', '', '', '', '', '', '', '', '', '', '');


#
# TABLE STRUCTURE FOR: payment_trans
#

DROP TABLE IF EXISTS `payment_trans`;

CREATE TABLE `payment_trans` (
  `transection_id` varchar(200) NOT NULL,
  `tracing_id` varchar(200) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `amount` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: person_information
#

DROP TABLE IF EXISTS `person_information`;

CREATE TABLE `person_information` (
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: person_ledger
#

DROP TABLE IF EXISTS `person_ledger`;

CREATE TABLE `person_ledger` (
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` float NOT NULL,
  `credit` float NOT NULL,
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: personal_loan
#

DROP TABLE IF EXISTS `personal_loan`;

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` float DEFAULT NULL,
  `credit` float NOT NULL,
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  PRIMARY KEY (`per_loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: pesonal_loan_information
#

DROP TABLE IF EXISTS `pesonal_loan_information`;

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pesonal_loan_information` (`id`, `person_id`, `person_name`, `person_phone`, `person_address`, `status`) VALUES ('1', 'TY61LHFAGF', 'sucursal2', '12354', '', '1');


#
# TABLE STRUCTURE FOR: product_category
#

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('XVH9HASILX6ULCM', 'medicina', '1');


#
# TABLE STRUCTURE FOR: product_information
#

DROP TABLE IF EXISTS `product_information`;

CREATE TABLE `product_information` (
  `product_id` varchar(100) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(50) DEFAULT NULL,
  `product_model` varchar(100) NOT NULL,
  `product_details` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `product_information` (`product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES ('48432771', 'XVH9HASILX6ULCM', 'prueba', '20', 'test', '0', '', 'mprueba', '', 'http://localhost:8080/erp3/ventas/my-assets/image/product.png', '1');


#
# TABLE STRUCTURE FOR: product_price_history
#

DROP TABLE IF EXISTS `product_price_history`;

CREATE TABLE `product_price_history` (
  `product_pr_his_id` int(11) NOT NULL,
  `product_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supplier_price` double NOT NULL,
  `date_of_price_buy` varchar(30) CHARACTER SET latin1 NOT NULL,
  `affect_time_pc` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: product_purchase
#

DROP TABLE IF EXISTS `product_purchase`;

CREATE TABLE `product_purchase` (
  `purchase_id` varchar(100) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `grand_total_amount` float NOT NULL,
  `total_discount` float DEFAULT NULL,
  `purchase_date` varchar(50) NOT NULL,
  `purchase_details` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `product_purchase` (`purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`) VALUES ('20190721170800', '123', 'U1JYL1ZHXGMN24IZMC1O', '1200', NULL, '2019-07-21', '', '1');


#
# TABLE STRUCTURE FOR: product_purchase_details
#

DROP TABLE IF EXISTS `product_purchase_details`;

CREATE TABLE `product_purchase_details` (
  `purchase_detail_id` varchar(100) NOT NULL,
  `purchase_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` float NOT NULL,
  `rate` float NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `discount`, `status`) VALUES ('rEHroB71JEmbqUW', '20190721170800', '48432771', '120', '10', '1200', NULL, '1');


#
# TABLE STRUCTURE FOR: product_report
#

DROP TABLE IF EXISTS `product_report`;

CREATE   VIEW `product_report` AS select `purchase_report`.`purchase_date` AS `date`,`purchase_report`.`product_id` AS `product_id`,`purchase_report`.`quantity` AS `quantity`,`purchase_report`.`rate` AS `rate`,`purchase_report`.`total_amount` AS `total_amount`,'a' AS `account` from `purchase_report` union all select `sales_report`.`date` AS `date`,`sales_report`.`product_id` AS `product_id`,-(`sales_report`.`quantity`) AS `-quantity`,`sales_report`.`supplier_rate` AS `rate`,(`sales_report`.`quantity` * `sales_report`.`supplier_rate`) AS `total_amount`,'b' AS `account` from `sales_report`;

latin1_swedish_ci;

INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-21', '48432771', '120', '10', '1200', 'a');
INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-21', '48432771', '-1', '10', '10', 'b');
INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-21', '48432771', '-10', '10', '100', 'b');
INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-21', '48432771', '-1', '10', '10', 'b');
INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-21', '48432771', '-8', '10', '80', 'b');
INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-21', '48432771', '-14', '10', '140', 'b');
INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-21', '48432771', '-6', '10', '60', 'b');
INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-22', '48432771', '-10', '10', '100', 'b');
INSERT INTO `product_report` (`date`, `product_id`, `quantity`, `rate`, `total_amount`, `account`) VALUES ('2019-07-22', '48432771', '-1', '10', '10', 'b');


#
# TABLE STRUCTURE FOR: product_return
#

DROP TABLE IF EXISTS `product_return`;

CREATE TABLE `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` float NOT NULL,
  `deduction` float NOT NULL,
  `total_deduct` float NOT NULL,
  `total_tax` float NOT NULL,
  `total_ret_amount` float NOT NULL,
  `net_total_amount` float NOT NULL,
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: product_supplier
#

DROP TABLE IF EXISTS `product_supplier`;

CREATE   VIEW `product_supplier` AS select `b`.`product_id` AS `product_id`,`c`.`product_name` AS `product_name`,`c`.`product_model` AS `product_model`,`a`.`supplier_id` AS `supplier_id` from ((`product_purchase` `a` join `product_purchase_details` `b`) join `product_information` `c`) where ((`a`.`purchase_id` = `b`.`purchase_id`) and (`c`.`product_id` = `b`.`product_id`)) group by `b`.`product_id`;

latin1_swedish_ci;

INSERT INTO `product_supplier` (`product_id`, `product_name`, `product_model`, `supplier_id`) VALUES ('48432771', 'prueba', 'mprueba', 'U1JYL1ZHXGMN24IZMC1O');


#
# TABLE STRUCTURE FOR: purchase_report
#

DROP TABLE IF EXISTS `purchase_report`;

CREATE   VIEW `purchase_report` AS select `product_purchase`.`purchase_date` AS `purchase_date`,`product_purchase`.`chalan_no` AS `chalan_no`,`product_purchase`.`supplier_id` AS `supplier_id`,`product_purchase_details`.`purchase_detail_id` AS `purchase_detail_id`,`product_purchase_details`.`purchase_id` AS `purchase_id`,`product_purchase_details`.`product_id` AS `product_id`,`product_purchase_details`.`quantity` AS `quantity`,`product_purchase_details`.`rate` AS `rate`,`product_purchase_details`.`total_amount` AS `total_amount`,`product_purchase_details`.`status` AS `status` from (`product_purchase_details` left join `product_purchase` on((`product_purchase_details`.`purchase_id` = `product_purchase`.`purchase_id`)));

latin1_swedish_ci;

INSERT INTO `purchase_report` (`purchase_date`, `chalan_no`, `supplier_id`, `purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `status`) VALUES ('2019-07-21', '123', 'U1JYL1ZHXGMN24IZMC1O', 'rEHroB71JEmbqUW', '20190721170800', '48432771', '120', '10', '1200', '1');


#
# TABLE STRUCTURE FOR: sales_actual
#

DROP TABLE IF EXISTS `sales_actual`;

CREATE   VIEW `sales_actual` AS select `sales_report`.`date` AS `DATE`,`sales_report`.`supplier_id` AS `supplier_id`,sum((`sales_report`.`quantity` * -(`sales_report`.`supplier_rate`))) AS `sub_total`,sum(`sales_report`.`quantity`) AS `no_transection` from `sales_report` group by `sales_report`.`date`,`sales_report`.`supplier_id` union all select `supplier_ledger`.`date` AS `date`,`supplier_ledger`.`supplier_id` AS `supplier_id`,`supplier_ledger`.`amount` AS `sub_total`,`supplier_ledger`.`description` AS `no_transection` from `supplier_ledger` where isnull(`supplier_ledger`.`chalan_no`) group by `supplier_ledger`.`date`,`supplier_ledger`.`description`,`supplier_ledger`.`supplier_id`;

latin1_swedish_ci;

INSERT INTO `sales_actual` (`DATE`, `supplier_id`, `sub_total`, `no_transection`) VALUES ('2019-07-21', 'U1JYL1ZHXGMN24IZMC1O', '-400', '40');
INSERT INTO `sales_actual` (`DATE`, `supplier_id`, `sub_total`, `no_transection`) VALUES ('2019-07-22', 'U1JYL1ZHXGMN24IZMC1O', '-110', '11');


#
# TABLE STRUCTURE FOR: sales_report
#

DROP TABLE IF EXISTS `sales_report`;

CREATE   VIEW `sales_report` AS select `b`.`date` AS `date`,`b`.`invoice_id` AS `invoice_id`,`a`.`invoice_details_id` AS `invoice_details_id`,`b`.`customer_id` AS `customer_id`,`c`.`supplier_id` AS `supplier_id`,`a`.`product_id` AS `product_id`,`c`.`product_model` AS `product_model`,`c`.`product_name` AS `product_name`,`a`.`quantity` AS `quantity`,`a`.`rate` AS `sell_rate`,`a`.`supplier_rate` AS `supplier_rate` from ((`invoice_details` `a` join `invoice` `b`) join `product_supplier` `c`) where ((`a`.`invoice_id` = `b`.`invoice_id`) and (`a`.`product_id` = `c`.`product_id`));

latin1_swedish_ci;

INSERT INTO `sales_report` (`date`, `invoice_id`, `invoice_details_id`, `customer_id`, `supplier_id`, `product_id`, `product_model`, `product_name`, `quantity`, `sell_rate`, `supplier_rate`) VALUES ('2019-07-21', '4249923596', '678961427997174', '68Z6TCDM37J2VZF', 'U1JYL1ZHXGMN24IZMC1O', '48432771', 'mprueba', 'prueba', '1', '20', '10');
INSERT INTO `sales_report` (`date`, `invoice_id`, `invoice_details_id`, `customer_id`, `supplier_id`, `product_id`, `product_model`, `product_name`, `quantity`, `sell_rate`, `supplier_rate`) VALUES ('2019-07-21', '6321254762', '282572917149555', '68Z6TCDM37J2VZF', 'U1JYL1ZHXGMN24IZMC1O', '48432771', 'mprueba', 'prueba', '10', '20', '10');
INSERT INTO `sales_report` (`date`, `invoice_id`, `invoice_details_id`, `customer_id`, `supplier_id`, `product_id`, `product_model`, `product_name`, `quantity`, `sell_rate`, `supplier_rate`) VALUES ('2019-07-21', '4566626283', '747144821111347', '68Z6TCDM37J2VZF', 'U1JYL1ZHXGMN24IZMC1O', '48432771', 'mprueba', 'prueba', '1', '20', '10');
INSERT INTO `sales_report` (`date`, `invoice_id`, `invoice_details_id`, `customer_id`, `supplier_id`, `product_id`, `product_model`, `product_name`, `quantity`, `sell_rate`, `supplier_rate`) VALUES ('2019-07-21', '8679712653', '788692533239112', '68Z6TCDM37J2VZF', 'U1JYL1ZHXGMN24IZMC1O', '48432771', 'mprueba', 'prueba', '8', '20', '10');
INSERT INTO `sales_report` (`date`, `invoice_id`, `invoice_details_id`, `customer_id`, `supplier_id`, `product_id`, `product_model`, `product_name`, `quantity`, `sell_rate`, `supplier_rate`) VALUES ('2019-07-21', '6684447756', '667236556177356', '68Z6TCDM37J2VZF', 'U1JYL1ZHXGMN24IZMC1O', '48432771', 'mprueba', 'prueba', '14', '20', '10');
INSERT INTO `sales_report` (`date`, `invoice_id`, `invoice_details_id`, `customer_id`, `supplier_id`, `product_id`, `product_model`, `product_name`, `quantity`, `sell_rate`, `supplier_rate`) VALUES ('2019-07-21', '8455117527', '578752815693613', '68Z6TCDM37J2VZF', 'U1JYL1ZHXGMN24IZMC1O', '48432771', 'mprueba', 'prueba', '6', '20', '10');
INSERT INTO `sales_report` (`date`, `invoice_id`, `invoice_details_id`, `customer_id`, `supplier_id`, `product_id`, `product_model`, `product_name`, `quantity`, `sell_rate`, `supplier_rate`) VALUES ('2019-07-22', '3545628747', '454565346125781', '68Z6TCDM37J2VZF', 'U1JYL1ZHXGMN24IZMC1O', '48432771', 'mprueba', 'prueba', '10', '20', '10');
INSERT INTO `sales_report` (`date`, `invoice_id`, `invoice_details_id`, `customer_id`, `supplier_id`, `product_id`, `product_model`, `product_name`, `quantity`, `sell_rate`, `supplier_rate`) VALUES ('2019-07-22', '8264343817', '593548393957394', '68Z6TCDM37J2VZF', 'U1JYL1ZHXGMN24IZMC1O', '48432771', 'mprueba', 'prueba', '1', '20', '10');


#
# TABLE STRUCTURE FOR: stock_history
#

DROP TABLE IF EXISTS `stock_history`;

CREATE   VIEW `stock_history` AS select `invoice`.`date` AS `vdate`,`invoice_details`.`product_id` AS `product_id`,sum(`invoice_details`.`quantity`) AS `sell`,0 AS `Purchase` from (`invoice_details` join `invoice` on((`invoice_details`.`invoice_id` = `invoice`.`invoice_id`))) group by `invoice_details`.`product_id`,`invoice`.`date` union select `product_purchase`.`purchase_date` AS `purchase_date`,`product_purchase_details`.`product_id` AS `product_id`,0 AS `0`,sum(`product_purchase_details`.`quantity`) AS `purchase` from (`product_purchase_details` join `product_purchase` on((`product_purchase_details`.`purchase_id` = `product_purchase`.`purchase_id`))) group by `product_purchase_details`.`product_id`,`product_purchase`.`purchase_date`;

latin1_swedish_ci;

INSERT INTO `stock_history` (`vdate`, `product_id`, `sell`, `Purchase`) VALUES ('2019-07-21', '48432771', '40', '0');
INSERT INTO `stock_history` (`vdate`, `product_id`, `sell`, `Purchase`) VALUES ('2019-07-22', '48432771', '11', '0');
INSERT INTO `stock_history` (`vdate`, `product_id`, `sell`, `Purchase`) VALUES ('2019-07-21', '48432771', '0', '120');


#
# TABLE STRUCTURE FOR: supplier_information
#

DROP TABLE IF EXISTS `supplier_information`;

CREATE TABLE `supplier_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` varchar(100) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `supplier_information` (`id`, `supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('1', 'U1JYL1ZHXGMN24IZMC1O', 'guardado', '', '', '', '1');


#
# TABLE STRUCTURE FOR: supplier_ledger
#

DROP TABLE IF EXISTS `supplier_ledger`;

CREATE TABLE `supplier_ledger` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `d_c` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('1', 'XZ5AMFDTZH', 'U1JYL1ZHXGMN24IZMC1O', 'Adjustment ', NULL, '0', 'Previous adjustment with software', 'NA', 'NA', '2019-07-21', '1', 'c');
INSERT INTO `supplier_ledger` (`id`, `transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('2', '20190721170800', 'U1JYL1ZHXGMN24IZMC1O', '123', NULL, '1200', '', '', '', '2019-07-21', '1', 'c');


#
# TABLE STRUCTURE FOR: supplier_product
#

DROP TABLE IF EXISTS `supplier_product`;

CREATE TABLE `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supplier_price` float NOT NULL,
  PRIMARY KEY (`supplier_pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES ('1', '48432771', 'mprueba', 'U1JYL1ZHXGMN24IZMC1O', '10');


#
# TABLE STRUCTURE FOR: synchronizer_setting
#

DROP TABLE IF EXISTS `synchronizer_setting`;

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tax_information
#

DROP TABLE IF EXISTS `tax_information`;

CREATE TABLE `tax_information` (
  `tax_id` varchar(15) NOT NULL,
  `tax` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: transection
#

DROP TABLE IF EXISTS `transection`;

CREATE TABLE `transection` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(30) NOT NULL,
  `date_of_transection` varchar(30) NOT NULL,
  `transection_type` varchar(30) NOT NULL,
  `transection_category` varchar(30) NOT NULL,
  `transection_mood` varchar(25) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `pay_amount` int(30) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  `is_transaction` int(2) NOT NULL COMMENT '0 = invoice and 1 = transaction',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `transection` (`id`, `transaction_id`, `date_of_transection`, `transection_type`, `transection_category`, `transection_mood`, `amount`, `pay_amount`, `description`, `relation_id`, `is_transaction`) VALUES ('1', 'R7K92QM79AYHTWQ', '2019-07-21', '2', '2', '1', '10', '0', '', '', '1');
INSERT INTO `transection` (`id`, `transaction_id`, `date_of_transection`, `transection_type`, `transection_category`, `transection_mood`, `amount`, `pay_amount`, `description`, `relation_id`, `is_transaction`) VALUES ('2', 'W6DYXPE1F4GKDZ9', '2019-07-21', '2', '2', '1', '20.00', NULL, 'Paid by customer', '68Z6TCDM37J2VZF', '0');
INSERT INTO `transection` (`id`, `transaction_id`, `date_of_transection`, `transection_type`, `transection_category`, `transection_mood`, `amount`, `pay_amount`, `description`, `relation_id`, `is_transaction`) VALUES ('3', 'VXRML56SAW9IS5N', '2019-07-21', '2', '2', '1', '20', '0', '1002', '', '1');
INSERT INTO `transection` (`id`, `transaction_id`, `date_of_transection`, `transection_type`, `transection_category`, `transection_mood`, `amount`, `pay_amount`, `description`, `relation_id`, `is_transaction`) VALUES ('4', '6TC52N769XA7I44', '2019-07-21', '2', '2', '1', '160.00', NULL, 'Paid by customer', '68Z6TCDM37J2VZF', '0');
INSERT INTO `transection` (`id`, `transaction_id`, `date_of_transection`, `transection_type`, `transection_category`, `transection_mood`, `amount`, `pay_amount`, `description`, `relation_id`, `is_transaction`) VALUES ('5', '71T1IQJGGNOP6T8', '2019-07-21', '2', '2', '1', '120.00', NULL, 'Paid by customer', '68Z6TCDM37J2VZF', '0');
INSERT INTO `transection` (`id`, `transaction_id`, `date_of_transection`, `transection_type`, `transection_category`, `transection_mood`, `amount`, `pay_amount`, `description`, `relation_id`, `is_transaction`) VALUES ('6', 'VA2Q2W1SALWJMJJ', '2019-07-22', '2', '2', '1', '200.00', NULL, 'Paid by customer', '68Z6TCDM37J2VZF', '0');
INSERT INTO `transection` (`id`, `transaction_id`, `date_of_transection`, `transection_type`, `transection_category`, `transection_mood`, `amount`, `pay_amount`, `description`, `relation_id`, `is_transaction`) VALUES ('7', 'ZXHLYYPAVQ38H66', '2019-07-22', '2', '2', '1', '20.00', NULL, 'Paid by customer', '68Z6TCDM37J2VZF', '0');


#
# TABLE STRUCTURE FOR: units
#

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
  `unit_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `units` (`unit_id`, `unit_name`, `status`) VALUES ('I3QT1TR3VJIYAZX', 'Piece', '1');
INSERT INTO `units` (`unit_id`, `unit_name`, `status`) VALUES ('W9YUY1HJQM9IEFT', 'KG', '1');
INSERT INTO `units` (`unit_id`, `unit_name`, `status`) VALUES ('XM4H48345SO6M94', 'test', '1');


#
# TABLE STRUCTURE FOR: user_login
#

DROP TABLE IF EXISTS `user_login`;

CREATE TABLE `user_login` (
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(2) NOT NULL,
  `security_code` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('1', 'test@test.com', '41d99b369894eb1ec3f461135132d8bb', '1', '', '1');
INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('oZTpXAmq4itvJmY', 'caja@test.com', '41d99b369894eb1ec3f461135132d8bb', '2', '', '1');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` int(2) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('1', 'Escobar', 'Luis', '1', '', 'http://softest3.bdtask.com/wholesale-v3/assets/dist/img/profile_picture/20d549f44403f065ff12b35a1f09817f.jpg', '1');
INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('oZTpXAmq4itvJmY', 'Registrador', 'Cajero', '0', '', NULL, '1');


#
# TABLE STRUCTURE FOR: view_customer_transection
#

DROP TABLE IF EXISTS `view_customer_transection`;

CREATE   VIEW `view_customer_transection` AS (select `i`.`transaction_id` AS `transaction_id`,`j`.`customer_name` AS `customer_name`,`q`.`invoice_no` AS `invoice_no` from ((`transection` `i` left join `customer_information` `j` on((convert(`i`.`relation_id` using utf8) = `j`.`customer_id`))) left join `customer_ledger` `q` on((convert(`i`.`transaction_id` using utf8) = `q`.`transaction_id`))));

latin1_swedish_ci;

INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('W6DYXPE1F4GKDZ9', 'regular', '4566626283');
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('W6DYXPE1F4GKDZ9', 'regular', NULL);
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('6TC52N769XA7I44', 'regular', '8679712653');
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('6TC52N769XA7I44', 'regular', NULL);
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('71T1IQJGGNOP6T8', 'regular', '8455117527');
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('71T1IQJGGNOP6T8', 'regular', NULL);
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('VA2Q2W1SALWJMJJ', 'regular', '3545628747');
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('VA2Q2W1SALWJMJJ', 'regular', NULL);
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('ZXHLYYPAVQ38H66', 'regular', '8264343817');
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('ZXHLYYPAVQ38H66', 'regular', NULL);
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('R7K92QM79AYHTWQ', NULL, NULL);
INSERT INTO `view_customer_transection` (`transaction_id`, `customer_name`, `invoice_no`) VALUES ('VXRML56SAW9IS5N', NULL, NULL);


#
# TABLE STRUCTURE FOR: view_person_transection
#

DROP TABLE IF EXISTS `view_person_transection`;

CREATE   VIEW `view_person_transection` AS (select `i`.`transaction_id` AS `transaction_id`,`j`.`person_name` AS `person_name` from (`transection` `i` left join `person_information` `j` on((convert(`i`.`relation_id` using utf8) = `j`.`person_id`))));

latin1_swedish_ci;

INSERT INTO `view_person_transection` (`transaction_id`, `person_name`) VALUES ('R7K92QM79AYHTWQ', NULL);
INSERT INTO `view_person_transection` (`transaction_id`, `person_name`) VALUES ('W6DYXPE1F4GKDZ9', NULL);
INSERT INTO `view_person_transection` (`transaction_id`, `person_name`) VALUES ('VXRML56SAW9IS5N', NULL);
INSERT INTO `view_person_transection` (`transaction_id`, `person_name`) VALUES ('6TC52N769XA7I44', NULL);
INSERT INTO `view_person_transection` (`transaction_id`, `person_name`) VALUES ('71T1IQJGGNOP6T8', NULL);
INSERT INTO `view_person_transection` (`transaction_id`, `person_name`) VALUES ('VA2Q2W1SALWJMJJ', NULL);
INSERT INTO `view_person_transection` (`transaction_id`, `person_name`) VALUES ('ZXHLYYPAVQ38H66', NULL);


#
# TABLE STRUCTURE FOR: view_supplier_transection
#

DROP TABLE IF EXISTS `view_supplier_transection`;

CREATE   VIEW `view_supplier_transection` AS (select `i`.`transaction_id` AS `transaction_id`,`j`.`supplier_name` AS `supplier_name` from (`transection` `i` left join `supplier_information` `j` on((convert(`i`.`relation_id` using utf8) = `j`.`supplier_id`))));

latin1_swedish_ci;

INSERT INTO `view_supplier_transection` (`transaction_id`, `supplier_name`) VALUES ('R7K92QM79AYHTWQ', NULL);
INSERT INTO `view_supplier_transection` (`transaction_id`, `supplier_name`) VALUES ('W6DYXPE1F4GKDZ9', NULL);
INSERT INTO `view_supplier_transection` (`transaction_id`, `supplier_name`) VALUES ('VXRML56SAW9IS5N', NULL);
INSERT INTO `view_supplier_transection` (`transaction_id`, `supplier_name`) VALUES ('6TC52N769XA7I44', NULL);
INSERT INTO `view_supplier_transection` (`transaction_id`, `supplier_name`) VALUES ('71T1IQJGGNOP6T8', NULL);
INSERT INTO `view_supplier_transection` (`transaction_id`, `supplier_name`) VALUES ('VA2Q2W1SALWJMJJ', NULL);
INSERT INTO `view_supplier_transection` (`transaction_id`, `supplier_name`) VALUES ('ZXHLYYPAVQ38H66', NULL);


#
# TABLE STRUCTURE FOR: view_transection
#

DROP TABLE IF EXISTS `view_transection`;

CREATE   VIEW `view_transection` AS (select `i`.`transaction_id` AS `transaction_id`,`i`.`date_of_transection` AS `date_of_transection`,`i`.`amount` AS `amount`,`i`.`pay_amount` AS `pay_amount`,`f`.`invoice_no` AS `invoice_no`,`g`.`customer_name` AS `customer_name`,`h`.`supplier_name` AS `supplier_name`,`j`.`person_name` AS `person_name`,`i`.`transection_category` AS `transection_category`,`i`.`transection_type` AS `transection_type`,`i`.`transection_mood` AS `transection_mood`,`i`.`description` AS `description`,`i`.`relation_id` AS `relation_id` from ((((`transection` `i` left join `customer_ledger` `f` on((convert(`i`.`transaction_id` using utf8) = `f`.`transaction_id`))) left join `customer_information` `g` on((convert(`i`.`relation_id` using utf8) = `f`.`customer_id`))) left join `supplier_information` `h` on((convert(`i`.`relation_id` using utf8) = `h`.`supplier_id`))) left join `person_information` `j` on((convert(`i`.`relation_id` using utf8) = `j`.`person_id`))));

latin1_swedish_ci;

INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('W6DYXPE1F4GKDZ9', '2019-07-21', '20.00', NULL, '4566626283', 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('W6DYXPE1F4GKDZ9', '2019-07-21', '20.00', NULL, NULL, 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('6TC52N769XA7I44', '2019-07-21', '160.00', NULL, '8679712653', 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('6TC52N769XA7I44', '2019-07-21', '160.00', NULL, NULL, 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('71T1IQJGGNOP6T8', '2019-07-21', '120.00', NULL, '8455117527', 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('71T1IQJGGNOP6T8', '2019-07-21', '120.00', NULL, NULL, 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('VA2Q2W1SALWJMJJ', '2019-07-22', '200.00', NULL, '3545628747', 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('VA2Q2W1SALWJMJJ', '2019-07-22', '200.00', NULL, NULL, 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('ZXHLYYPAVQ38H66', '2019-07-22', '20.00', NULL, '8264343817', 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('ZXHLYYPAVQ38H66', '2019-07-22', '20.00', NULL, NULL, 'regular', NULL, NULL, '2', '2', '1', 'Paid by customer', '68Z6TCDM37J2VZF');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('R7K92QM79AYHTWQ', '2019-07-21', '10', '0', NULL, NULL, NULL, NULL, '2', '2', '1', '', '');
INSERT INTO `view_transection` (`transaction_id`, `date_of_transection`, `amount`, `pay_amount`, `invoice_no`, `customer_name`, `supplier_name`, `person_name`, `transection_category`, `transection_type`, `transection_mood`, `description`, `relation_id`) VALUES ('VXRML56SAW9IS5N', '2019-07-21', '20', '0', NULL, NULL, NULL, NULL, '2', '2', '1', '1002', '');


#
# TABLE STRUCTURE FOR: web_setting
#

DROP TABLE IF EXISTS `web_setting`;

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT '1' COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES ('1', 'http://localhost:8080/erp3/ventas/my-assets/image/logo/40b6782537c29ef89f2785a99dcae1cf.png', 'http://localhost:8080/erp3/ventas/my-assets/image/logo/49255185e84978f69809d4d396ef1b6a.png', 'http://localhost:8080/erp3/ventas/my-assets/image/logo/750814c772e9ee3cc0353e1780e49fc8.png', '$', '0', 'Desarrollado por Luis Escobar', 'english', '0', '1', '', '', '1');


