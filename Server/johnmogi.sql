-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 01, 2020 at 03:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `johnmogi`
--

-- --------------------------------------------------------

--
-- Table structure for table `leadForm`
--

CREATE TABLE `leadForm` (
  `leadID` int(10) NOT NULL,
  `leadName` varchar(25) NOT NULL,
  `leadPhone` varchar(25) NOT NULL,
  `leadMail` varchar(25) NOT NULL,
  `leadDate` datetime(6) NOT NULL,
  `convertedToCustomer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leadForm`
--

INSERT INTO `leadForm` (`leadID`, `leadName`, `leadPhone`, `leadMail`, `leadDate`, `convertedToCustomer`) VALUES
(1, 'johnny', '050-8282456', 'anguru@gmail.com', '2020-10-01 17:32:08.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `postCats`
--

CREATE TABLE `postCats` (
  `postCatID` int(10) NOT NULL,
  `postID` int(10) NOT NULL,
  `postCatName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postCats`
--

INSERT INTO `postCats` (`postCatID`, `postID`, `postCatName`) VALUES
(1, 1, 'general');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(10) NOT NULL,
  `postName` varchar(25) NOT NULL,
  `postDesc` varchar(50) NOT NULL,
  `postImage` varchar(50) NOT NULL,
  `postDate` datetime(6) NOT NULL,
  `postTags` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `postName`, `postDesc`, `postImage`, `postDate`, `postTags`) VALUES
(1, 'hello world', 'hi, this is a post', '1.jpg', '2020-10-01 17:30:04.000000', 'wellcome, blog code');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(10) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `userPassword` varchar(25) NOT NULL,
  `userMail` varchar(25) NOT NULL,
  `userPhone` varchar(25) NOT NULL,
  `userRole` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userName`, `userPassword`, `userMail`, `userPhone`, `userRole`) VALUES
(1, 'izerobot', 'lazy monkey boy', 'anguru@gmail.com', '050-9382456', 'superAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `workCategories`
--

CREATE TABLE `workCategories` (
  `workCatID` int(10) NOT NULL,
  `workID` int(10) NOT NULL,
  `workCatName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workCategories`
--

INSERT INTO `workCategories` (`workCatID`, `workID`, `workCatName`) VALUES
(1, 1, 'Web Sites');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `workID` int(10) NOT NULL,
  `workName` varchar(50) NOT NULL,
  `workDesc` varchar(500) NOT NULL,
  `workMainImage` varchar(25) NOT NULL,
  `workGalImages` varchar(25) NOT NULL,
  `workDate` datetime(6) NOT NULL,
  `workTags` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`workID`, `workName`, `workDesc`, `workMainImage`, `workGalImages`, `workDate`, `workTags`) VALUES
(1, 'tennis kfar-saba', 'simple tennis site, maintenance and execution. ', '1.jpg', '1.jpg, 2.jpg, 3.jpg', '2020-10-01 17:24:44.000000', 'wordpress, maintenance, tennis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leadForm`
--
ALTER TABLE `leadForm`
  ADD PRIMARY KEY (`leadID`);

--
-- Indexes for table `postCats`
--
ALTER TABLE `postCats`
  ADD PRIMARY KEY (`postCatID`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `workCategories`
--
ALTER TABLE `workCategories`
  ADD PRIMARY KEY (`workCatID`),
  ADD KEY `workID` (`workID`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`workID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leadForm`
--
ALTER TABLE `leadForm`
  MODIFY `leadID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `postCats`
--
ALTER TABLE `postCats`
  MODIFY `postCatID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workCategories`
--
ALTER TABLE `workCategories`
  MODIFY `workCatID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `workID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `postCats`
--
ALTER TABLE `postCats`
  ADD CONSTRAINT `postCats_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workCategories`
--
ALTER TABLE `workCategories`
  ADD CONSTRAINT `workCategories_ibfk_1` FOREIGN KEY (`workID`) REFERENCES `works` (`workID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
