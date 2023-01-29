-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 09:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ef_saas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `role` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `name`, `email`, `phone`, `password`, `ip`, `role`, `created_at`) VALUES
(2, 'sooraj123', 'sooraj', 'test@test.com', '9874561230', '$2y$10$GaSHkz44RpeeHFkoE5T0Du0LpZrdaoCGUeZYLNND6z/fBdh2UAFeG', '::1', 0, '2023-01-23 16:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `instance`
--

CREATE TABLE `instance` (
  `instance_id` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `hospital_name` varchar(50) NOT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `inst_type` varchar(50) NOT NULL,
  `status` tinyint(2) DEFAULT 0,
  `dbname` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instance`
--

INSERT INTO `instance` (`instance_id`, `slug`, `hospital_name`, `institution_id`, `inst_type`, `status`, `dbname`, `startdate`, `enddate`, `user_id`, `created_at`) VALUES
(33, 'ma', 'abc', 1, 'DEMO', 0, 'demo', '0000-00-00', '0000-00-00', 2, '2023-01-23 18:56:16'),
(34, 'test', 'hos', NULL, 'DEMO', 1, 'df', '2023-02-04', '2023-01-31', 2, '2023-01-23 18:57:32'),
(35, 'adjgqjk', 'sfjlsbq', NULL, 'ACCOUNT', 1, 'sdnbkanbg', '2023-01-04', '2023-01-24', 2, '2023-01-24 15:23:00'),
(36, 'hosp', 'bangalore Hospital', NULL, 'ACCOUNT', 1, 'DB1', '2023-01-21', '2023-01-28', 2, '2023-01-24 15:40:02'),
(37, 'abc', 'hsr Hospital', NULL, 'DEMO', 1, 'DB2', '2023-01-02', '2023-01-02', 2, '2023-01-24 15:41:06'),
(38, 'xyz', 'sdh', NULL, 'ACCOUNT', 0, 'asds', '2023-01-28', '2023-01-29', 2, '2023-01-25 13:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE `institution` (
  `institution_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`institution_id`, `title`, `description`, `user_id`, `created_at`) VALUES
(1, 'name', 'DESC', 2, '2023-01-23 17:13:52'),
(2, 'vdv', 'svfs', 2, '2023-01-23 17:15:13'),
(3, 'sfc', 'sfc', 2, '2023-01-23 17:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `title`, `description`, `created_at`) VALUES
(1, 'IP', 'InPatient Access', '2023-01-14 15:43:41'),
(2, 'OP', 'OutPatient Access', '2023-01-14 15:44:19'),
(3, 'INT', 'Interim Access', '2023-01-14 15:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `module_access`
--

CREATE TABLE `module_access` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `instance_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `instance`
--
ALTER TABLE `instance`
  ADD PRIMARY KEY (`instance_id`),
  ADD UNIQUE KEY `uniqueSubDomain` (`slug`),
  ADD UNIQUE KEY `uniqueDB` (`dbname`),
  ADD KEY `institution_id` (`institution_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`institution_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `module_access`
--
ALTER TABLE `module_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `instance_id` (`instance_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instance`
--
ALTER TABLE `instance`
  MODIFY `instance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `institution`
--
ALTER TABLE `institution`
  MODIFY `institution_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `module_access`
--
ALTER TABLE `module_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instance`
--
ALTER TABLE `instance`
  ADD CONSTRAINT `instance_ibfk_1` FOREIGN KEY (`institution_id`) REFERENCES `institution` (`institution_id`),
  ADD CONSTRAINT `instance_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `admin` (`user_id`);

--
-- Constraints for table `institution`
--
ALTER TABLE `institution`
  ADD CONSTRAINT `institution_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin` (`user_id`);

--
-- Constraints for table `module_access`
--
ALTER TABLE `module_access`
  ADD CONSTRAINT `module_access_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`),
  ADD CONSTRAINT `module_access_ibfk_2` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`instance_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
