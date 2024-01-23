-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2024 at 08:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Address_ID` int(6) NOT NULL,
  `Customer_ID` int(6) DEFAULT NULL,
  `Address_Line` varchar(30) NOT NULL,
  `City` varchar(10) NOT NULL,
  `Post_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`Address_ID`, `Customer_ID`, `Address_Line`, `City`, `Post_Code`) VALUES
(13, 1, '77 Catherine Street ', 'Cambridge', 'CB1 6TL'),
(14, 3, '214 Cherry Hinton Ro', 'Cambridge', 'CB1 7AW'),
(15, 4, '13 Humphreys Road', 'cambridge', 'CB4 2JR'),
(16, 5, '23 Humphreys Road', 'cambridge', 'CB4 2JR'),
(17, 6, '84 kings street', 'Cambridge', 'CB24 8QD'),
(18, 7, '24 Hawkins Road', 'Cambridge', 'CB4 2QX');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `first_name` varchar(155) NOT NULL,
  `card_number` varchar(155) NOT NULL,
  `date` varchar(155) NOT NULL,
  `cvv` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `first_name`, `card_number`, `date`, `cvv`) VALUES
(1, 'Mickey', '3245242', '2023-12-03', '234'),
(2, 'Minnie', '2343243232', '2023-02-02', '234'),
(3, 'Minnie', '2343243232', '2023-02-02', '234'),
(4, 'Minnie', '2343243232', '2023-02-02', '234'),
(5, 'Test', '67889988', '2023-01-12', '657'),
(6, 'Muzakkiruddin', '7647637844738292', '1997-01-23', '454');

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `Basket_ID` int(6) NOT NULL,
  `Customer_ID` int(6) DEFAULT NULL,
  `Product_ID` int(6) DEFAULT NULL,
  `Order_subtotal` float NOT NULL,
  `Promo_Code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`Basket_ID`, `Customer_ID`, `Product_ID`, `Order_subtotal`, `Promo_Code`) VALUES
(1, 3, 2, 26.99, NULL),
(2, 3, 6, 26.99, NULL),
(3, 4, 7, 19.99, NULL),
(4, 4, 10, 19.99, NULL),
(5, 1, 3, 4.99, NULL),
(6, 5, 8, 18.99, NULL),
(7, 6, 9, 37.99, NULL),
(8, 6, 10, 37.99, NULL),
(9, 7, 3, 4.99, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_ID` int(6) NOT NULL,
  `Address_ID` int(6) DEFAULT NULL,
  `Basket_ID` int(6) DEFAULT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Contact_Number` bigint(10) DEFAULT NULL,
  `Email_ID` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_ID`, `Address_ID`, `Basket_ID`, `First_Name`, `Last_name`, `Contact_Number`, `Email_ID`, `Password`, `Username`) VALUES
(1, 13, NULL, 'mickey', 'mouse', 123987647, 'MaleMouse@disney.com', 'Mickey123', 'Boy_Mouse'),
(3, 14, NULL, 'minnie', 'Mouse', 293847561, 'FemaleMouse@disney.com', 'Minnie123', 'Girl_Mouse'),
(4, 15, NULL, 'Donald', 'Duck', 987654378, 'quackquack@disney.com', 'Donald123', 'Boy_Duck'),
(5, 16, NULL, 'Tom', 'Cat', 874657384, 'iHateJerry@enemies.com', 'Tom123', 'Male_Cat'),
(6, 17, NULL, 'Jerry', 'Mouse', 984756372, 'iHateTom@enemies.com', 'Jerry123', 'Male_Mouse'),
(7, 18, NULL, 'BoB', 'Builder', 192576890, 'iFixThings@builder.com', 'Bob123', 'Boy_builder'),
(11, NULL, NULL, 'Winnie', 'Pooh', 9899383838, 'Winniethepooh@disney.com', 'Mickey123', 'Winnie_Bear'),
(10214, NULL, NULL, 'Winnie', 'Pooh1', 902233333, 'Winniethepooh@disney.com1', 'Winnie123', 'Winnie_Bear1'),
(10215, NULL, NULL, 'Muzakkiruddin', 'Mohammed', 789999383, 'ILoveHacking@Hacker.com', 'Mohammed123', 'ILoveHacking');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `Delivery_option_ID` int(4) NOT NULL,
  `Order_ID` int(6) DEFAULT NULL,
  `Delivery_title` varchar(50) NOT NULL,
  `Delivery_Price` float NOT NULL,
  `Time_to_Delivery` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`Delivery_option_ID`, `Order_ID`, `Delivery_title`, `Delivery_Price`, `Time_to_Delivery`) VALUES
(1, NULL, 'Guaranteed One-day delivery', 5.99, '1 day'),
(2, NULL, 'Guaranteed Two-day delivery', 4.99, '2 days'),
(3, NULL, '24 hours Delivery (business days)', 3.99, '1-2 days'),
(4, NULL, '48 hours Delivery (business Days)', 2.99, '2-4 days'),
(5, NULL, 'Eco Delivery', 6.5, '2-3 Days'),
(6, NULL, 'International Delivery', 11.99, '7-10 days');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(6) NOT NULL,
  `Basket_ID` int(6) DEFAULT NULL,
  `Customer_ID` int(6) DEFAULT NULL,
  `Delivery_option_ID` int(4) DEFAULT NULL,
  `payment_ID` bigint(8) DEFAULT NULL,
  `Order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Basket_ID`, `Customer_ID`, `Delivery_option_ID`, `payment_ID`, `Order_date`) VALUES
(1, 1, 3, 3, NULL, '2021-12-30'),
(2, 2, 3, 2, NULL, '2022-01-01'),
(3, 3, 4, 6, NULL, '2021-12-15'),
(4, 4, 4, 6, NULL, '2021-12-21'),
(5, 5, 1, 1, NULL, '2021-12-17'),
(6, 6, 5, 5, NULL, '2022-01-07'),
(7, 7, 6, 5, NULL, '2022-01-02'),
(8, 8, 6, 1, NULL, '2021-12-19'),
(9, 9, 7, 5, NULL, '2021-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` bigint(8) NOT NULL,
  `Order_ID` int(6) DEFAULT NULL,
  `Payment_method` enum('Card','paypal','klarna') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Order_ID`, `Payment_method`) VALUES
(1, 1, 'Card'),
(2, 2, 'klarna'),
(3, 3, 'paypal'),
(4, 4, 'paypal'),
(5, 5, 'Card'),
(6, 6, 'paypal'),
(7, 7, 'klarna'),
(8, 8, 'Card'),
(9, 9, 'paypal');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(6) NOT NULL,
  `Basket_ID` int(6) DEFAULT NULL,
  `Product_Title` varchar(20) NOT NULL,
  `Product_price` float NOT NULL,
  `Previous_Price` float DEFAULT NULL,
  `Product_size` enum('100','200','500','1000') NOT NULL,
  `Product_Rating` enum('1','2','3','4','5') NOT NULL,
  `Stock_Left` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Basket_ID`, `Product_Title`, `Product_price`, `Previous_Price`, `Product_size`, `Product_Rating`, `Stock_Left`) VALUES
(1, NULL, 'Whey Protein', 15, 17.99, '500', '4', 600),
(2, NULL, 'Whey protein', 9.99, 11.99, '200', '4', 430),
(3, NULL, 'Carbon Mononhydrate', 4.99, NULL, '100', '3', 790),
(4, NULL, 'Carbon Monohydrate', 12.99, 15, '500', '3', 357),
(5, NULL, 'Pre workout', 19, 22.5, '1000', '5', 210),
(6, NULL, 'Pre workout', 17, NULL, '500', '5', 560),
(7, NULL, 'Pre workout', 12, NULL, '200', '5', 708),
(8, NULL, 'Protein Pancake', 18.99, 21, '500', '2', 400),
(9, NULL, 'Protein pancake', 30, NULL, '1000', '2', 300),
(10, NULL, 'Protein Spread', 7.99, 9.99, '500', '4', 270);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Address_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`Basket_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_ID`),
  ADD KEY `Address_ID` (`Address_ID`),
  ADD KEY `Basket_ID` (`Basket_ID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`Delivery_option_ID`),
  ADD KEY `Order_ID` (`Order_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Basket_ID` (`Basket_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Delivery_option_ID` (`Delivery_option_ID`),
  ADD KEY `payment_ID` (`payment_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Order_ID` (`Order_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Basket_ID` (`Basket_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `Address_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `Basket_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20210;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `Delivery_option_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` bigint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`Basket_ID`) REFERENCES `basket` (`Basket_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Basket_ID`) REFERENCES `basket` (`Basket_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Delivery_option_ID`) REFERENCES `delivery` (`Delivery_option_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`payment_ID`) REFERENCES `payment` (`Payment_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Basket_ID`) REFERENCES `basket` (`Basket_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
