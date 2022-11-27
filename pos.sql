-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 04:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_code` varchar(50) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `Unit_Price` varchar(20) NOT NULL,
  `Total_Price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `INID`, `Product_Name`, `Bar_code`, `qty`, `Unit_Price`, `Total_Price`) VALUES
(1, 2, 'book-test', 'Total Price:', '3', '00.00', '0.0'),
(2, 2, 'book-test', '01000100', '3', '30', '90.0'),
(3, 2, 'book-test', '01000100', '3', '30', '90.0'),
(4, 2, 'book-test', '01000100', '4', '30', '120.0'),
(5, 2, 'book-test', '01000100', '4', '30', '120.0'),
(6, 2, 'book-test', '01000100', '4', '30', '120.0'),
(7, 2, 'book-test', '01000100', '4', '30', '120.0'),
(8, 2, 'book-test', '01000100', '4', '30', '120.0'),
(9, 2, 'book-test', '01000100', '4', '30', '120.0'),
(10, 2, 'book-test', '01000100', '1', '30', '30.0'),
(11, 2, 'book-test', '01000100', '1', '30', '30.0'),
(12, 2, 'book-test', '01000100', '4', '30', '120.0'),
(13, 2, 'pen', '00011', '4', '200', '800.0'),
(14, 2, 'pen', '00011', '4', '200', '800.0'),
(15, 2, 'pen', '00011', '4', '200', '800.0'),
(16, 3, 'pen', '00011', '25', '200', '5000.0'),
(17, 3, 'pencil', '011011', '20', '100', '2000.0'),
(18, 3, 'pen', '00011', '25', '200', '5000.0'),
(19, 3, 'pencil', '011011', '20', '100', '2000.0'),
(20, 4, 'pen', '001111', '10', '200', '2000.0'),
(21, 4, 'pencil', '011011', '20', '100', '2000.0'),
(22, 4, 'pen', '001111', '10', '200', '2000.0'),
(23, 4, 'pencil', '011011', '20', '100', '2000.0');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `customer_name`, `Tp_Number`) VALUES
(1, 'Gazijahin', '10-984376'),
(4, 'mohua', '00099876'),
(6, 'juena', '00099-33'),
(7, 'purba', '000-9987'),
(8, 'nirjana', '0905-119'),
(9, 'zuni', '000-65472');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `Employee_Name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `Employee_Name`, `Tp_Number`) VALUES
(1, 'andrew', '00-8765'),
(4, 'tania', '5676-0012'),
(5, 'tinni', '5676-1143');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `exid` int(11) NOT NULL,
  `val` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`exid`, `val`) VALUES
(1, '4');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_code` varchar(20) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Qty` varchar(10) NOT NULL,
  `Sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `Product_Name`, `Bar_code`, `Price`, `Qty`, `Sid`) VALUES
(4, 'pen', '001111', '200', '100', 2),
(5, 'pencil', '011011', '100', '25', 3),
(6, 'Hp laptop', '0001101', '40000', '8', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `saleid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Total_Qty` varchar(10) NOT NULL,
  `Total_Bill` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Balance` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`saleid`, `INID`, `Cid`, `Customer_Name`, `Total_Qty`, `Total_Bill`, `Status`, `Balance`) VALUES
(1, 2, 0, 'jahin', '8.0', '240.0', 'UnPaid', '-240.0'),
(2, 2, 0, 'jahin', '8.0', '240.0', 'Partial', '-80.0'),
(3, 2, 0, 'jahin', '8.0', '240.0', 'Paid', '0.0'),
(4, 2, 4, 'mohua', '6.0', '180.0', 'UnPaid', '-180.0'),
(5, 2, 6, 'juena', '12.0', '2400.0', 'Partial', '-1600.0'),
(6, 3, 4, 'mohua', '45.0', '7000.0', 'Partial', '-2000.0'),
(7, 3, 4, 'mohua', '45.0', '7000.0', 'Paid', '0.0'),
(8, 4, 6, 'juena', '30.0', '4000.0', 'Partial', '-2000.0'),
(9, 4, 6, 'juena', '30.0', '4000.0', 'Paid', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sid` int(11) NOT NULL,
  `supplier_Name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `supplier_Name`, `Tp_Number`) VALUES
(5, 'raihan-uddin', '678-0876'),
(6, 'urmi', '11284-987');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`saleid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `exid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `saleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
