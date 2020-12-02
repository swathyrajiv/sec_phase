-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2020 at 02:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplilearnoct`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `feedback` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`fname`, `lname`, `feedback`) VALUES
('Swathy', 'Rajiv', 'Best flights...best search'),
('Swathy', 'Rajiv', 'Best flights...best search');

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

CREATE TABLE `flight_details` (
  `flight_id` int(50) NOT NULL,
  `source_name` varchar(50) NOT NULL,
  `destination_name` varchar(50) NOT NULL,
  `airways_name` varchar(50) NOT NULL,
  `ticket_charge` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`flight_id`, `source_name`, `destination_name`, `airways_name`, `ticket_charge`) VALUES
(1, 'Kochi ', 'Kannur', 'jetairways', 560),
(2, 'Nashville', 'New York', 'United airways', 490),
(3, 'New York', 'Vermont', 'Southwest Airlines', 350),
(4, 'Cleveland', 'Chicago', 'United airlines', 580),
(5, 'Newark', 'Nashville', 'United airways', 480),
(6, 'Mumbai', 'Delhi', 'Indigo', 670),
(7, 'mumbai', 'delhi', 'jetairways', 489),
(8, 'mumbai', 'Delhi', 'jetairways', 478),
(9, 'Delhi', 'Pune', 'Southwest', 678),
(10, 'kochi', 'delhi', 'jetairways', 345),
(11, 'hyderabad', 'delhi', 'jetairways', 345),
(12, 'hyderabad', 'delhi', 'jet airways', 222),
(13, 'hyderabad', 'delhi', 'jet airways', 89),
(14, 'kochi', 'kannur', 'Indigo', 789),
(15, 'ohare', 'nashville', 'united', 340),
(16, 'bangalore', 'delhi', 'spicejet', 450),
(17, 'bangalore', 'delhi', 'spicejet', 450);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `noofpersons` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`fname`, `lname`, `phone`, `email`, `date`, `noofpersons`, `address`, `userid`) VALUES
('swathy', 'rajiv', '09539005490', 'swathyrajiv@gmail.com', '2020-11-12', '2', 'bhsd', 1),
('swathy', 'rajiv', '09539005490', 'swathyrajiv@gmail.com', '2020-11-20', '1', 'vgsva', 2),
('swathy', 'bijith', '09539005490', 'swathyrajiv@gmail.com', '2020-11-20', '1', 'vgsva', 3),
('aarav', 'bijith', '09539005490', 'aaravbijith@gmail.com', '2020-11-20', '2', 'jdbdjbd', 4),
('aarav', 'bijith', '09539005490', 'aaravbijith@gmail.com', '2020-11-20', '2', 'jdbdjbd', 5),
('aarav', 'bijith', '09539005490', 'aaravbijith@gmail.com', '2020-11-20', '2', 'jdbdjbd', 6),
('aarav', 'bijith', '09539005490', 'aaravbijith@gmail.com', '2020-11-20', '2', 'jdbdjbd', 7),
('aadi', 'bimith', '09539005490', 'aadi@gmail.com', '2020-11-20', '2', 'njdn', 8),
('bijith', 'mp', '0123456789', 'bijitj@gmail.com', '2020-11-12', '2', 'nnd', 9),
('srijuna', 'bimith', '0987654321', 'srijuna@gmail.com', '2020-11-18', '4', 'bhbsh', 10),
('srijuna', 'bimith', '0987654321', 'srijuna@gmail.com', '2020-11-18', '4', 'bhbsh', 11),
('srijuna', 'bimith', '0987654321', 'srijuna@gmail.com', '2020-11-18', '4', 'bhbsh', 12),
('srijuna', 'bimith', '0987654321', 'srijuna@gmail.com', '2020-11-18', '4', 'bhbsh', 13),
('srijuna', 'bimith', '0987654321', 'srijuna@gmail.com', '2020-11-18', '4', 'bhbsh', 14),
('srijuna', 'bimith', '0987654321', 'srijuna@gmail.com', '2020-11-18', '4', 'bhbsh', 15),
('srijuna', 'bimith', '0987654321', 'srijuna@gmail.com', '2020-11-18', '4', 'bhbsh', 16),
('niin', 'mike', '0998765432', 'nnin@gmail.com', '2020-11-21', '2', 'aqs', 17),
('ninn', 'iieie', '0910123456', 'njdnn@gmail.com', '2020-11-12', '3', 'cjdc', 18),
('ninn', 'iieie', '0910123456', 'njdnn@gmail.com', '2020-11-12', '3', 'cjdc', 19),
('ninn', 'iieie', '0910123456', 'njdnn@gmail.com', '2020-11-12', '3', 'cjdc', 20),
('ninn', 'iieie', '0910123456', 'njdnn@gmail.com', '2020-11-12', '3', 'cjdc', 21),
('ninn', 'iieie', '0910123456', 'njdnn@gmail.com', '2020-11-12', '3', 'cjdc', 22),
('mila', 'nila', '0989435678', 'kinn@gmail.com', '2020-11-19', '3', 'jnjdfnv', 23),
('mila', 'nila', '0989435678', 'kinn@gmail.com', '2020-11-19', '3', 'jnjdfnv', 24),
('mila', 'nila', '0989435678', 'kinn@gmail.com', '2020-11-19', '3', 'jnjdfnv', 25),
('swa', 'thy', '9034569087', 'huhh@gmail.com', '2020-11-26', '5', 'jbj', 26),
('niya', 'nia', '1232123456', 'niya@gmail.com', '2020-11-27', '2', 'knxjs', 27),
('swathy', 'kit', '03444444', 'swath@gmail.com', '2020-11-13', '2', 'de', 28),
('swathy', 'kit', '03444444', 'swath@gmail.com', '2020-11-13', '2', 'de', 29),
('sawthya', 'hvshvhw', '9539005490', 'swathy12@gmail.com', '2020-11-13', '2', 'jbwbdj', 30),
('bhxwebdx', 'hbchbh', '9876567895', 'nwndnj@gmail.com', '2020-12-04', '2', 'jcj ', 31),
('bijith', 'map', '9876546432', 'bijijthmp@gmail.com', '2020-11-27', '2', 'njdnsnd', 32),
('kiran', 'lill', '9876545678', 'jnjnjii@gmail.com', '2020-11-13', '2', 'jnjscnsj', 33),
('kiran', 'lill', '9876545678', 'jnjnjii@gmail.com', '2020-11-13', '2', 'jnjscnsj', 34),
('kiran', 'lill', '9876545678', 'jnjnjii@gmail.com', '2020-11-13', '2', 'jnjscnsj', 35),
('kiran', 'lill', '9876545678', 'jnjnjii@gmail.com', '2020-11-13', '2', 'jnjscnsj', 36),
('kiran', 'lill', '9876545678', 'jnjnjii@gmail.com', '2020-11-13', '2', 'jnjscnsj', 37),
('jiya', 'khan', '9807654321', 'swathyrty@gmail.com', '2020-11-27', '6', 'vyvjgv', 38),
('niki', 'hala', '9807654323', 'bjjxjks@gmail.com', '2020-12-03', '2', 'jscjnsdj', 39),
('nithya', 'nijin', '8978989876', 'njndjfnjn@gmail.com', '2020-11-28', '5', 'knkn', 40),
('nithya', 'nijn', '8978989876', 'njndjfnjn@gmail.com', '2020-11-28', '5', 'knkn', 41),
('hih', 'uvh', '9876545678', 'ubbhb@gmail.com', '2020-11-26', '6', 'gvghv', 42),
('king', 'king2', '9689456789', 'jdns@gmail.com', '2020-11-13', '2', 'njdnjn', 43),
('meena', 'raj', '9845678390', 'meenaraj@gmail.com', '2020-12-03', '4', 'meena jii 3455', 44),
('meena ', 'damodhar', '9834563456', 'meena@gmail.com', '2020-12-17', '2', 'hdjehd', 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight_details`
--
ALTER TABLE `flight_details`
  MODIFY `flight_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
