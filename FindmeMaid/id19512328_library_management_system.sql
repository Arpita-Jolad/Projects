-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2022 at 08:16 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19512328_library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADMIN`
--

CREATE TABLE `ADMIN` (
  `ADMIN_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MOBILE_NO` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ADMIN`
--

INSERT INTO `ADMIN` (`ADMIN_ID`, `MOBILE_NO`, `PASSWORD`) VALUES
('A1', '7338098970', 'Arpita123'),
('A2', '7353673662', 'Anusha123');

-- --------------------------------------------------------

--
-- Table structure for table `BOOK`
--

CREATE TABLE `BOOK` (
  `BOOK_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BOOK_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTH_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BRANCH` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEMESTER` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PUBLISHED_YEAR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ENQUIRY`
--

CREATE TABLE `ENQUIRY` (
  `MAID_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MAIDNAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CATEGORY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MOBILE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CITY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `WORK_DETAILS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PRICING` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_FN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_LN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_MNO` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ENQUIRY`
--

INSERT INTO `ENQUIRY` (`MAID_ID`, `MAIDNAME`, `CATEGORY`, `MOBILE`, `CITY`, `ADDRESS`, `WORK_DETAILS`, `PRICING`, `USER_FN`, `USER_LN`, `USER_MNO`) VALUES
('M1', 'Ganga', 'Washing', '9901706925', 'Hubli', 'Keshav nagar', 'I wash clothes and utensils', '500per-month', 'Anupama', 'Jolad', '7338098970'),
('M7', 'Sarala', 'Cooking', '9901706918', 'Gadag', 'Hudco-colony', 'my speciality north indian dishes', '1000per-month', 'Anupama', 'Jolad', '7338098970'),
('M8', 'Manjula', 'Cooking', '9901706917', 'Gadag', 'radhakrishna nagar', 'my Speciality in south indian dishes and non veg', '1500per-month', 'Anupama', 'Jolad', '7338098970'),
('M8', 'Manjula', 'Cooking', '9901706917', 'Gadag', 'radhakrishna nagar', 'my Speciality in south indian dishes and non veg', '1500per-month', 'Anupama', 'Jolad', '7338098970'),
('M11', 'Madhu', 'babycare', '9901706913', 'Gadag', 'kalyan nagar', '5 years of experience', '600per-month', 'Anupama', 'Jolad', '7338098970');

-- --------------------------------------------------------

--
-- Table structure for table `MAID`
--

CREATE TABLE `MAID` (
  `FIRSTNAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LASTNAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MOBILENO` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CITY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `POSTALADDRESS` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MAID`
--

INSERT INTO `MAID` (`FIRSTNAME`, `LASTNAME`, `EMAIL`, `PASSWORD`, `MOBILENO`, `CITY`, `POSTALADDRESS`) VALUES
('Priyanka', 'Merwade', 'priyanka@gmail.com', 'Priyanka123', '9880146184', 'Hubli', 'Bankers colony'),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('Anupama', 'Jolad', 'anupama@gmail.com', 'anupama@123', '7338098970', 'Hubli', 'Keshav Nagar');

-- --------------------------------------------------------

--
-- Table structure for table `MAID_DETAILS`
--

CREATE TABLE `MAID_DETAILS` (
  `MAID_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `M_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CATEGORY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MOBILE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CITY` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ADDRESS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `WORK_DETAILS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PRICING` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MAID_DETAILS`
--

INSERT INTO `MAID_DETAILS` (`MAID_ID`, `M_NAME`, `CATEGORY`, `MOBILE`, `CITY`, `ADDRESS`, `WORK_DETAILS`, `PRICING`) VALUES
('M1', 'Ganga', 'Washing', '9901706925', 'Hubli', 'Keshav nagar', 'I wash clothes and utensils', '500per-month'),
('M2', 'Rani', 'Washing', '9901706926', 'Gadag', 'Prabha nagar', 'I wash clothes,cusions, utensils', '800per-month'),
('M3', 'Razi', 'Washing', '9901706927', 'Gadag', 'Hudco-colony', 'I work in 10 houses', '500per-month'),
('M4', 'Rina', 'Washing', '9901706928', 'Dharwad', 'Bankers-colony', 'I am working for nearly 10 years', '600per-month'),
('M5', 'Shanta', 'Cooking', '9901706920', 'Gadag', 'Hudco-colony', '3 years of experience', '800per-month'),
('M6', 'Renuka', 'Cooking', '9901706919', 'Gadag', 'betegeri', '4 years of experience', '700per-month'),
('M7', 'Sarala', 'Cooking', '9901706918', 'Gadag', 'Hudco-colony', 'my speciality north indian dishes', '1000per-month'),
('M8', 'Manjula', 'Cooking', '9901706917', 'Gadag', 'radhakrishna nagar', 'my Speciality in south indian dishes and non veg', '1500per-month'),
('M9', 'Sheela', 'babycare', '9901706915', 'Gadag', 'Hudco-colony', '3 years of experience', '800per-month'),
('M10', 'Sweta', 'babycare', '9901706914', 'Gadag', 'adarsh nagar', 'i can handle all types of baby', '1000per-month'),
('M11', 'Madhu', 'babycare', '9901706913', 'Gadag', 'kalyan nagar', '5 years of experience', '600per-month'),
('M12', 'Netra', 'Babycare', '7353673662', 'Gadag', 'Ringroad', '10years of experience', '1000permonth');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
