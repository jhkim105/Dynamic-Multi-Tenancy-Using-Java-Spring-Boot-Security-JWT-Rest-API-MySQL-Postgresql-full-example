create database master_db;
CREATE TABLE  `master_db`.`tbl_tenant_master` (
  `tenant_client_id` int(10) unsigned NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `driver_class` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`tenant_client_id`) USING BTREE
) ENGINE=InnoDB;


create database testdb;
DROP TABLE IF EXISTS `testdb`.`tbl_user`;
CREATE TABLE  `testdb`.`tbl_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB;
DROP TABLE IF EXISTS `testdb`.`tbl_product`;
CREATE TABLE  `testdb`.`tbl_product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `size` varchar(3) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB;



-- master_db.tbl_tenant_master
INSERT INTO `master_db`.`tbl_tenant_master` (`tenant_client_id`, `db_name`, `url`, `user_name`, `password`, `driver_class`, `status`) VALUES (100, 'testdb', 'jdbc:mysql://localhost:3306/testdb', 'root', '111111', 'com.mysql.cj.jdbc.Driver', 'ACTIVE')

-- test_db.tbl_product
INSERT INTO `testdb`.`tbl_user` (`user_id`, `full_name`, `gender`, `user_name`, `password`, `status`) VALUES (100, 'User 01', 'MALE', 'user01', '111111', 'ACTIVE');
INSERT INTO `testdb`.`tbl_product` (`product_id`, `product_name`, `quantity`, `size`) VALUES (100, 'Product Name 01', 10, 'M');

