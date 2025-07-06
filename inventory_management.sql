CREATE DATABASE IF NOT EXISTS inventory_management CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE inventory_management;

-- Table : location
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` INT(11) NOT NULL AUTO_INCREMENT,
  `location_name` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `location` (`location_name`) VALUES
('Tunis'),
('Sfax'),
('Sousse'),
('Gabès'),
('Bizerte'),
('Ariana'),
('Kairouan'),
('Gafsa'),
('Monastir'),
('Nabeul');

-- Table : user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(20) NOT NULL,
  `user_email` VARCHAR(60) NOT NULL,
  `user_password` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user` (`user_name`, `user_email`, `user_password`) VALUES
('Asma Trabelsi', 'asma.trabelsi@example.com', '$2b$12$abcdefghijklmnopqrstuv'),
('Youssef Ben Ali', 'youssef.benali@example.com', '$2b$12$abcdefghijklmnopqrstuv');

-- Table : locationinventory
CREATE TABLE IF NOT EXISTS `locationinventory` (
  `locationinventory_id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `Tunis` INT(11) DEFAULT 0,
  `Sfax` INT(11) DEFAULT 0,
  `Sousse` INT(11) DEFAULT 0,
  `Gabès` INT(11) DEFAULT 0,
  `Bizerte` INT(11) DEFAULT 0,
  `Ariana` INT(11) DEFAULT 0,
  `Kairouan` INT(11) DEFAULT 0,
  `Gafsa` INT(11) DEFAULT 0,
  `Monastir` INT(11) DEFAULT 0,
  `Nabeul` INT(11) DEFAULT 0,
  PRIMARY KEY (`locationinventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `locationinventory` (`user_id`, `Tunis`, `Sfax`, `Sousse`, `Gabès`, `Bizerte`, `Ariana`, `Kairouan`, `Gafsa`, `Monastir`, `Nabeul`) VALUES
(1, 50, 30, 20, 10, 5, 5, 5, 5, 5, 5),
(2, 15, 25, 30, 5, 10, 5, 0, 0, 10, 10);

-- Table : product
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` INT(11) NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(60) NOT NULL,
  `product_quantity` INT(11) NOT NULL,
  `user_id` INT(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `product` (`product_name`, `product_quantity`, `user_id`) VALUES
('Huile d\'olive extra vierge', 150, 1),
('Dattes Deglet Nour', 200, 1),
('Harissa de Nabeul', 100, 2),
('Semoule fine', 300, 2);

-- Table : productmovement
CREATE TABLE IF NOT EXISTS `productmovement` (
  `productmovement_id` INT(11) NOT NULL AUTO_INCREMENT,
  `product_id` INT(11) NOT NULL,
  `product_name` VARCHAR(60) NOT NULL,
  `from_location_name` VARCHAR(60) NOT NULL,
  `to_location_name` VARCHAR(60) NOT NULL,
  `product_quantity` INT(11) NOT NULL,
  `timestamp` DATE NOT NULL,
  `user_id` INT(11) NOT NULL,
  PRIMARY KEY (`productmovement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `productmovement` (`product_id`, `product_name`, `from_location_name`, `to_location_name`, `product_quantity`, `timestamp`, `user_id`) VALUES
(1, 'Huile d\'olive extra vierge', 'Sfax', 'Tunis', 10, '2025-07-01', 1),
(2, 'Dattes Deglet Nour', 'Gabès', 'Sousse', 15, '2025-07-01', 1),
(3, 'Harissa de Nabeul', 'Nabeul', 'Bizerte', 8, '2025-07-01', 2),
(4, 'Semoule fine', 'Kairouan', 'Monastir', 20, '2025-07-01', 2),
(1, 'Huile d\'olive extra vierge', 'Tunis', 'Sfax', 5, '2025-07-01', 1);

INSERT INTO `productmovement` (`product_id`, `product_name`, `from_location_name`, `to_location_name`, `product_quantity`, `timestamp`, `user_id`) VALUES
(2, 'Dattes Deglet Nour', 'Ariana', 'Nabeul', 12, '2025-07-02', 1),
(3, 'Harissa de Nabeul', 'Sfax', 'Monastir', 5, '2025-07-02', 2),
(4, 'Semoule fine', 'Tunis', 'Gabès', 12, '2025-07-02', 2);

INSERT INTO `productmovement` (`product_id`, `product_name`, `from_location_name`, `to_location_name`, `product_quantity`, `timestamp`, `user_id`) VALUES
(1, 'Huile d\'olive extra vierge', 'Sousse', 'Gabès', 5, '2025-07-03', 1),
(2, 'Dattes Deglet Nour', 'Nabeul', 'Tunis', 7, '2025-07-03', 1);

INSERT INTO `productmovement` (`product_id`, `product_name`, `from_location_name`, `to_location_name`, `product_quantity`, `timestamp`, `user_id`) VALUES
(3, 'Harissa de Nabeul', 'Monastir', 'Bizerte', 3, '2025-07-04', 2),
(4, 'Semoule fine', 'Gabès', 'Ariana', 10, '2025-07-04', 2),
(1, 'Huile d\'olive extra vierge', 'Ariana', 'Sfax', 6, '2025-07-04', 1),
(2, 'Dattes Deglet Nour', 'Tunis', 'Kairouan', 9, '2025-07-04', 1),
(4, 'Semoule fine', 'Ariana', 'Sousse', 4, '2025-07-04', 2);

