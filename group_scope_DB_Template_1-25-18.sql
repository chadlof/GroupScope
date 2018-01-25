-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2017 at 05:20 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group_scope`
--
CREATE DATABASE IF NOT EXISTS `group_scope` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `group_scope`;

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `Device_ID` int(11) NOT NULL,
  `Device_User_ID` int(11) DEFAULT NULL,
  `Device_Phone_Num` int(11) DEFAULT NULL,
  `Device_Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `device`
--

-- INSERT INTO `device` (`Device_ID`, `Device_User_ID`, `Device_Phone_Num`, `Device_Name`) VALUES
-- (2, 1, 987654321, 'Home Phone');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `Group_ID` int(11) NOT NULL,
  `Group_Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

-- INSERT INTO `group` (`Group_ID`, `Group_Name`) VALUES
-- (1, 'Test'),
-- (3, 'Test3'),
-- (4, 'Test4'),
-- (10, 'Test2'),
-- (12, 'User'),
-- (14, 'Admin'),
-- (16, 'Chad Alan Lofgren'),
-- (17, 'Code Monkeys'),
-- (18, ''),
-- (19, 'Test5'),
-- (20, 'Test6'),
-- (21, 'Test7');

-- --------------------------------------------------------

--
-- Table structure for table `groupuser`
--

CREATE TABLE `groupuser` (
  `GroupUser_ID` int(11) NOT NULL,
  `GroupUser_User_ID` int(11) NOT NULL,
  `GroupUser_Group_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupuser`
--

-- INSERT INTO `groupuser` (`GroupUser_ID`, `GroupUser_User_ID`, `GroupUser_Group_ID`) VALUES
-- (1, 1, 1),
-- (22, 4, 3),
-- (23, 4, 4),
-- (33, 4, 1),
-- (36, 2, 1),
-- (37, 3, 1),
-- (38, 1, 10),
-- (39, 1, 3),
-- (43, 8, 12),
-- (46, 8, 1),
-- (47, 8, 10),
-- (48, 8, 18),
-- (49, 8, 18),
-- (50, 8, 3),
-- (51, 8, 4),
-- (52, 8, 19),
-- (53, 8, 20),
-- (54, 8, 21),
-- (64, 17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Role_ID` int(11) NOT NULL,
  `Role_User_ID` int(11) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `User_Phone_Num` varchar(45) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL DEFAULT 'User',
  `Image_Name` varchar(45) DEFAULT NULL,
  `Hair_Color` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `Ethnicity` varchar(45) DEFAULT NULL,
  `Lat` varchar(45) DEFAULT NULL,
  `Lon` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

-- INSERT INTO `user` (`User_ID`, `First_Name`, `Last_Name`, `User_Phone_Num`, `Email`, `Username`, `Password`, `Role`, `Image_Name`, `Hair_Color`, `Weight`, `Ethnicity`, `Lat`, `Lon`) VALUES
-- (1, 'Chad', 'Lofgren', '6128766761', 'chadlof@gmail.com', 'chadlof', '$2y$10$A1TVfkDv0dKn.ScIYceJoe9e0FFWGnb6Nk.x/e', 'Admin', '', 'red', '150', 'yes', '44.9731635', '-93.2903417'),
-- (2, 'Joe', 'Bob', '741852963', 'joebob@yahoo.com', 'joebob', 'qaz', '', NULL, NULL, NULL, NULL, '44.9731636', '-93.2903382'),
-- (3, 'Jimmy', 'Johnson', '963852741', 'jimmyjohn@gmail.com', 'jimmyjohn', 'qaz', '', NULL, NULL, NULL, NULL, NULL, ''),
-- (4, 'Fank', 'Olsen', '369258147', 'franko@email.com', 'franko', 'wsx', '', NULL, NULL, NULL, NULL, '45.2597873', '-93.6338463'),
-- (7, 'Admin', 'Admin', '123456789', 'admin@email.com', 'admin', 'admin', 'User', NULL, NULL, NULL, NULL, NULL, NULL),
-- (8, 'User', 'User', '6128766761', 'user@email.com', 'user', 'user', 'User', NULL, NULL, NULL, NULL, '45.259856199999994', '-93.6338791'),
-- (12, 'Chad', 'Lofgren', '6128766761', 'chadlof@gmail.com', 'crypttest', '$2y$10$U.VJIS1O04HgrEL4OOV5eeHTCGoRHKDBgS0w/J', 'User', NULL, NULL, NULL, NULL, NULL, NULL),
-- (17, 'bob', 'encryption test', '741852963', 'bob@encrypt.com', 'bob', '$2y$10$9stc6kGftN4sn/z.bBonguWsoBqeIWESo5gTmT', 'User', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`Device_ID`),
  ADD KEY `Device_User_ID_idx` (`Device_User_ID`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`Group_ID`);

--
-- Indexes for table `groupuser`
--
ALTER TABLE `groupuser`
  ADD PRIMARY KEY (`GroupUser_ID`),
  ADD KEY `User_ID` (`GroupUser_User_ID`),
  ADD KEY `Group_ID` (`GroupUser_Group_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Role_ID`),
  ADD KEY `R_User_ID` (`Role_User_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `Device_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `Group_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `groupuser`
--
ALTER TABLE `groupuser`
  MODIFY `GroupUser_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Role_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `device`
--
ALTER TABLE `device`
  ADD CONSTRAINT `D_User_ID` FOREIGN KEY (`Device_User_ID`) REFERENCES `user` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groupuser`
--
ALTER TABLE `groupuser`
  ADD CONSTRAINT `Group_ID` FOREIGN KEY (`GroupUser_Group_ID`) REFERENCES `group` (`Group_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `User_ID` FOREIGN KEY (`GroupUser_User_ID`) REFERENCES `user` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `R_User_ID` FOREIGN KEY (`Role_User_ID`) REFERENCES `user` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
