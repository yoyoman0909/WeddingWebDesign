-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2021 at 11:31 PM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coa123wdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--

CREATE TABLE `catering` (
  `venue_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering`
--

INSERT INTO `catering` (`venue_id`, `grade`, `cost`) VALUES
(1, 3, 15),
(1, 4, 20),
(2, 4, 22),
(2, 5, 28),
(3, 3, 15),
(3, 4, 22),
(3, 5, 26),
(4, 2, 10),
(4, 3, 14),
(4, 4, 20),
(4, 5, 24),
(5, 4, 26),
(5, 5, 30),
(6, 1, 6),
(6, 2, 10),
(6, 3, 14),
(7, 2, 10),
(7, 3, 15),
(7, 4, 20),
(7, 5, 24),
(8, 1, 7),
(8, 2, 10),
(8, 3, 14),
(8, 4, 19),
(8, 5, 25),
(9, 1, 6),
(9, 2, 10),
(9, 3, 15),
(9, 4, 22),
(9, 5, 28),
(10, 1, 8),
(10, 2, 12),
(10, 3, 17),
(10, 4, 22);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `weekend_price` int(11) NOT NULL,
  `weekday_price` int(11) NOT NULL,
  `licensed` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `name`, `capacity`, `weekend_price`, `weekday_price`, `licensed`) VALUES
(1, 'Central Plaza', 200, 2000, 1750, 1),
(2, 'Pacific Towers Hotel', 250, 3000, 2400, 1),
(3, 'Sky Center Complex', 100, 2500, 1900, 0),
(4, 'Sea View Tavern', 300, 2200, 2000, 0),
(5, 'Ashby Castle', 1000, 8000, 7000, 1),
(6, 'Fawlty Towers', 50, 600, 400, 1),
(7, 'Hilltop Mansion', 120, 3000, 2200, 0),
(8, 'Haslegrave Hotel', 200, 2000, 1500, 0),
(9, 'Forest Inn', 260, 1800, 1600, 1),
(10, 'Southwestern Estate', 500, 4000, 3000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `venue_booking`
--

CREATE TABLE `venue_booking` (
  `venue_id` int(11) NOT NULL,
  `date_booked` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_booking`
--

INSERT INTO `venue_booking` (`venue_id`, `date_booked`) VALUES
(1, '2020-01-17'),
(1, '2020-01-18'),
(1, '2020-01-24'),
(1, '2020-01-29'),
(1, '2020-01-30'),
(1, '2020-02-01'),
(1, '2020-02-06'),
(1, '2020-02-12'),
(1, '2020-02-16'),
(1, '2020-02-21'),
(1, '2020-02-27'),
(1, '2020-02-28'),
(1, '2020-03-01'),
(1, '2020-03-06'),
(1, '2020-03-10'),
(1, '2020-03-15'),
(1, '2020-03-17'),
(1, '2020-03-23'),
(1, '2020-03-24'),
(1, '2020-03-26'),
(1, '2020-03-30'),
(1, '2020-04-01'),
(1, '2020-04-02'),
(1, '2020-04-08'),
(1, '2020-04-09'),
(1, '2020-04-11'),
(1, '2020-04-13'),
(1, '2020-04-16'),
(1, '2020-04-22'),
(1, '2020-04-25'),
(1, '2020-04-27'),
(1, '2020-04-28'),
(1, '2020-05-01'),
(1, '2020-05-03'),
(1, '2020-05-09'),
(1, '2020-05-13'),
(1, '2020-05-16'),
(1, '2020-05-20'),
(1, '2020-05-24'),
(1, '2020-05-25'),
(1, '2020-05-27'),
(1, '2020-05-30'),
(1, '2020-06-01'),
(1, '2020-06-07'),
(1, '2020-06-09'),
(1, '2020-06-14'),
(1, '2020-06-19'),
(1, '2020-06-23'),
(1, '2020-06-28'),
(1, '2020-07-01'),
(1, '2020-07-06'),
(1, '2020-07-08'),
(1, '2020-07-12'),
(1, '2020-07-18'),
(1, '2020-07-19'),
(1, '2020-07-23'),
(1, '2020-07-24'),
(1, '2020-07-27'),
(1, '2020-07-28'),
(1, '2020-07-29'),
(1, '2020-08-01'),
(1, '2020-08-04'),
(1, '2020-08-05'),
(1, '2020-08-07'),
(1, '2020-08-11'),
(1, '2020-08-12'),
(1, '2020-08-18'),
(1, '2020-08-24'),
(1, '2020-08-28'),
(1, '2020-09-01'),
(1, '2020-09-07'),
(1, '2020-09-13'),
(1, '2020-09-18'),
(1, '2020-09-19'),
(1, '2020-09-25'),
(1, '2020-09-26'),
(1, '2020-10-01'),
(1, '2020-10-06'),
(1, '2020-10-10'),
(1, '2020-10-14'),
(1, '2020-10-18'),
(1, '2020-10-21'),
(1, '2020-10-26'),
(1, '2020-10-27'),
(1, '2020-10-29'),
(1, '2020-11-01'),
(1, '2020-11-06'),
(1, '2020-11-09'),
(1, '2020-11-11'),
(1, '2020-11-17'),
(1, '2020-11-21'),
(1, '2020-11-22'),
(1, '2020-11-24'),
(1, '2020-11-29'),
(1, '2020-12-01'),
(1, '2020-12-06'),
(1, '2020-12-11'),
(1, '2020-12-13'),
(1, '2020-12-18'),
(1, '2020-12-20'),
(1, '2020-12-24'),
(1, '2020-12-28'),
(1, '2020-12-29'),
(2, '2020-01-01'),
(2, '2020-01-05'),
(2, '2020-01-06'),
(2, '2020-01-09'),
(2, '2020-01-12'),
(2, '2020-01-17'),
(2, '2020-01-18'),
(2, '2020-01-24'),
(2, '2020-01-26'),
(2, '2020-01-29'),
(2, '2020-02-01'),
(2, '2020-02-04'),
(2, '2020-02-09'),
(2, '2020-02-14'),
(2, '2020-02-16'),
(2, '2020-02-18'),
(2, '2020-02-19'),
(2, '2020-02-20'),
(2, '2020-02-25'),
(2, '2020-02-26'),
(2, '2020-02-28'),
(2, '2020-03-01'),
(2, '2020-03-04'),
(2, '2020-03-05'),
(2, '2020-03-06'),
(2, '2020-03-10'),
(2, '2020-03-15'),
(2, '2020-03-17'),
(2, '2020-03-18'),
(2, '2020-03-21'),
(2, '2020-03-24'),
(2, '2020-03-27'),
(2, '2020-03-28'),
(2, '2020-04-01'),
(2, '2020-04-06'),
(2, '2020-04-09'),
(2, '2020-04-11'),
(2, '2020-04-17'),
(2, '2020-04-20'),
(2, '2020-04-24'),
(2, '2020-04-26'),
(2, '2020-04-28'),
(2, '2020-04-29'),
(2, '2020-04-30'),
(2, '2020-05-01'),
(2, '2020-05-03'),
(2, '2020-05-05'),
(2, '2020-05-11'),
(2, '2020-05-14'),
(2, '2020-05-20'),
(2, '2020-05-21'),
(2, '2020-05-26'),
(2, '2020-05-29'),
(2, '2020-06-01'),
(2, '2020-06-06'),
(2, '2020-06-09'),
(2, '2020-06-10'),
(2, '2020-06-14'),
(2, '2020-06-19'),
(2, '2020-06-20'),
(2, '2020-06-21'),
(2, '2020-06-23'),
(2, '2020-06-27'),
(2, '2020-06-28'),
(2, '2020-07-01'),
(2, '2020-07-04'),
(2, '2020-07-08'),
(2, '2020-07-14'),
(2, '2020-07-16'),
(2, '2020-07-22'),
(2, '2020-07-26'),
(2, '2020-07-30'),
(2, '2020-08-01'),
(2, '2020-08-05'),
(2, '2020-08-09'),
(2, '2020-08-11'),
(2, '2020-08-17'),
(2, '2020-08-23'),
(2, '2020-08-24'),
(2, '2020-08-26'),
(2, '2020-09-01'),
(2, '2020-09-03'),
(2, '2020-09-09'),
(2, '2020-09-11'),
(2, '2020-09-15'),
(2, '2020-09-19'),
(2, '2020-09-24'),
(2, '2020-09-29'),
(2, '2020-10-01'),
(2, '2020-10-04'),
(2, '2020-10-09'),
(2, '2020-10-11'),
(2, '2020-10-15'),
(2, '2020-10-18'),
(2, '2020-10-20'),
(2, '2020-10-22'),
(2, '2020-10-28'),
(2, '2020-11-01'),
(2, '2020-11-03'),
(2, '2020-11-04'),
(2, '2020-11-10'),
(2, '2020-11-15'),
(2, '2020-11-20'),
(2, '2020-11-21'),
(2, '2020-11-24'),
(2, '2020-11-27'),
(2, '2020-11-29'),
(2, '2020-12-01'),
(2, '2020-12-03'),
(2, '2020-12-06'),
(2, '2020-12-09'),
(2, '2020-12-10'),
(2, '2020-12-14'),
(2, '2020-12-16'),
(2, '2020-12-19'),
(2, '2020-12-21'),
(2, '2020-12-27'),
(2, '2020-12-28'),
(3, '2020-01-01'),
(3, '2020-01-03'),
(3, '2020-01-07'),
(3, '2020-01-12'),
(3, '2020-01-15'),
(3, '2020-01-16'),
(3, '2020-01-17'),
(3, '2020-01-22'),
(3, '2020-01-25'),
(3, '2020-02-01'),
(3, '2020-02-06'),
(3, '2020-02-11'),
(3, '2020-02-12'),
(3, '2020-02-16'),
(3, '2020-02-20'),
(3, '2020-02-25'),
(3, '2020-03-01'),
(3, '2020-03-07'),
(3, '2020-03-08'),
(3, '2020-03-14'),
(3, '2020-03-16'),
(3, '2020-03-19'),
(3, '2020-03-22'),
(3, '2020-03-26'),
(3, '2020-03-29'),
(3, '2020-04-01'),
(3, '2020-04-07'),
(3, '2020-04-13'),
(3, '2020-04-14'),
(3, '2020-04-20'),
(3, '2020-04-21'),
(3, '2020-04-22'),
(3, '2020-04-23'),
(3, '2020-04-27'),
(3, '2020-05-01'),
(3, '2020-05-05'),
(3, '2020-05-10'),
(3, '2020-05-16'),
(3, '2020-05-19'),
(3, '2020-05-21'),
(3, '2020-05-26'),
(3, '2020-05-27'),
(3, '2020-06-01'),
(3, '2020-06-07'),
(3, '2020-06-11'),
(3, '2020-06-14'),
(3, '2020-06-18'),
(3, '2020-06-21'),
(3, '2020-06-24'),
(3, '2020-06-29'),
(3, '2020-07-01'),
(3, '2020-07-05'),
(3, '2020-07-06'),
(3, '2020-07-10'),
(3, '2020-07-11'),
(3, '2020-07-15'),
(3, '2020-07-19'),
(3, '2020-07-20'),
(3, '2020-07-24'),
(3, '2020-07-29'),
(3, '2020-08-01'),
(3, '2020-08-05'),
(3, '2020-08-10'),
(3, '2020-08-11'),
(3, '2020-08-12'),
(3, '2020-08-15'),
(3, '2020-08-19'),
(3, '2020-08-24'),
(3, '2020-08-26'),
(3, '2020-08-27'),
(3, '2020-08-28'),
(3, '2020-08-29'),
(3, '2020-08-30'),
(3, '2020-09-01'),
(3, '2020-09-07'),
(3, '2020-09-12'),
(3, '2020-09-14'),
(3, '2020-09-18'),
(3, '2020-09-19'),
(3, '2020-09-23'),
(3, '2020-09-26'),
(3, '2020-09-29'),
(3, '2020-10-01'),
(3, '2020-10-05'),
(3, '2020-10-06'),
(3, '2020-10-08'),
(3, '2020-10-09'),
(3, '2020-10-13'),
(3, '2020-10-16'),
(3, '2020-10-20'),
(3, '2020-10-22'),
(3, '2020-10-24'),
(3, '2020-10-26'),
(3, '2020-10-27'),
(3, '2020-10-30'),
(3, '2020-11-01'),
(3, '2020-11-04'),
(3, '2020-11-10'),
(3, '2020-11-11'),
(3, '2020-11-16'),
(3, '2020-11-17'),
(3, '2020-11-18'),
(3, '2020-11-24'),
(3, '2020-11-25'),
(3, '2020-11-26'),
(3, '2020-12-01'),
(3, '2020-12-07'),
(3, '2020-12-09'),
(3, '2020-12-13'),
(3, '2020-12-14'),
(3, '2020-12-20'),
(3, '2020-12-26'),
(3, '2020-12-29'),
(3, '2020-12-30'),
(4, '2020-01-01'),
(4, '2020-01-05'),
(4, '2020-01-08'),
(4, '2020-01-12'),
(4, '2020-01-13'),
(4, '2020-01-19'),
(4, '2020-01-21'),
(4, '2020-01-24'),
(4, '2020-01-25'),
(4, '2020-01-28'),
(4, '2020-02-01'),
(4, '2020-02-04'),
(4, '2020-02-08'),
(4, '2020-02-14'),
(4, '2020-02-17'),
(4, '2020-02-22'),
(4, '2020-02-27'),
(4, '2020-03-01'),
(4, '2020-03-07'),
(4, '2020-03-11'),
(4, '2020-03-15'),
(4, '2020-03-21'),
(4, '2020-03-24'),
(4, '2020-03-28'),
(4, '2020-03-30'),
(4, '2020-04-01'),
(4, '2020-04-05'),
(4, '2020-04-07'),
(4, '2020-04-13'),
(4, '2020-04-14'),
(4, '2020-04-17'),
(4, '2020-04-19'),
(4, '2020-04-23'),
(4, '2020-04-28'),
(4, '2020-05-01'),
(4, '2020-05-06'),
(4, '2020-05-10'),
(4, '2020-05-11'),
(4, '2020-05-12'),
(4, '2020-05-17'),
(4, '2020-05-20'),
(4, '2020-05-24'),
(4, '2020-05-26'),
(4, '2020-06-01'),
(4, '2020-06-05'),
(4, '2020-06-10'),
(4, '2020-06-15'),
(4, '2020-06-17'),
(4, '2020-06-19'),
(4, '2020-06-23'),
(4, '2020-06-29'),
(4, '2020-07-01'),
(4, '2020-07-04'),
(4, '2020-07-07'),
(4, '2020-07-10'),
(4, '2020-07-15'),
(4, '2020-07-17'),
(4, '2020-07-23'),
(4, '2020-07-29'),
(4, '2020-08-01'),
(4, '2020-08-02'),
(4, '2020-08-04'),
(4, '2020-08-07'),
(4, '2020-08-11'),
(4, '2020-08-12'),
(4, '2020-08-14'),
(4, '2020-08-16'),
(4, '2020-08-20'),
(4, '2020-08-23'),
(4, '2020-08-26'),
(4, '2020-08-29'),
(4, '2020-09-01'),
(4, '2020-09-02'),
(4, '2020-09-07'),
(4, '2020-09-12'),
(4, '2020-09-17'),
(4, '2020-09-20'),
(4, '2020-09-23'),
(4, '2020-09-24'),
(4, '2020-09-29'),
(4, '2020-09-30'),
(4, '2020-10-01'),
(4, '2020-10-05'),
(4, '2020-10-09'),
(4, '2020-10-11'),
(4, '2020-10-17'),
(4, '2020-10-19'),
(4, '2020-10-23'),
(4, '2020-10-29'),
(4, '2020-10-30'),
(4, '2020-11-01'),
(4, '2020-11-07'),
(4, '2020-11-09'),
(4, '2020-11-11'),
(4, '2020-11-15'),
(4, '2020-11-17'),
(4, '2020-11-21'),
(4, '2020-11-26'),
(4, '2020-12-01'),
(4, '2020-12-07'),
(4, '2020-12-09'),
(4, '2020-12-12'),
(4, '2020-12-16'),
(4, '2020-12-18'),
(4, '2020-12-19'),
(4, '2020-12-22'),
(4, '2020-12-28'),
(5, '2020-01-01'),
(5, '2020-01-06'),
(5, '2020-01-12'),
(5, '2020-01-14'),
(5, '2020-01-19'),
(5, '2020-01-25'),
(5, '2020-01-30'),
(5, '2020-02-01'),
(5, '2020-02-03'),
(5, '2020-02-08'),
(5, '2020-02-12'),
(5, '2020-02-17'),
(5, '2020-02-21'),
(5, '2020-02-25'),
(5, '2020-03-01'),
(5, '2020-03-05'),
(5, '2020-03-11'),
(5, '2020-03-17'),
(5, '2020-03-18'),
(5, '2020-03-20'),
(5, '2020-03-24'),
(5, '2020-03-29'),
(5, '2020-04-01'),
(5, '2020-04-04'),
(5, '2020-04-05'),
(5, '2020-04-09'),
(5, '2020-04-10'),
(5, '2020-04-12'),
(5, '2020-04-17'),
(5, '2020-04-20'),
(5, '2020-04-22'),
(5, '2020-04-24'),
(5, '2020-04-26'),
(5, '2020-04-28'),
(5, '2020-05-01'),
(5, '2020-05-02'),
(5, '2020-05-03'),
(5, '2020-05-05'),
(5, '2020-05-08'),
(5, '2020-05-11'),
(5, '2020-05-12'),
(5, '2020-05-18'),
(5, '2020-05-19'),
(5, '2020-05-23'),
(5, '2020-05-27'),
(5, '2020-06-01'),
(5, '2020-06-03'),
(5, '2020-06-06'),
(5, '2020-06-10'),
(5, '2020-06-12'),
(5, '2020-06-17'),
(5, '2020-06-18'),
(5, '2020-06-19'),
(5, '2020-06-25'),
(5, '2020-06-29'),
(5, '2020-06-30'),
(5, '2020-07-01'),
(5, '2020-07-06'),
(5, '2020-07-09'),
(5, '2020-07-11'),
(5, '2020-07-13'),
(5, '2020-07-18'),
(5, '2020-07-22'),
(5, '2020-07-26'),
(5, '2020-08-01'),
(5, '2020-08-02'),
(5, '2020-08-06'),
(5, '2020-08-07'),
(5, '2020-08-09'),
(5, '2020-08-15'),
(5, '2020-08-18'),
(5, '2020-08-21'),
(5, '2020-08-26'),
(5, '2020-08-30'),
(5, '2020-09-01'),
(5, '2020-09-03'),
(5, '2020-09-05'),
(5, '2020-09-06'),
(5, '2020-09-11'),
(5, '2020-09-17'),
(5, '2020-09-20'),
(5, '2020-09-23'),
(5, '2020-09-24'),
(5, '2020-09-27'),
(5, '2020-09-30'),
(5, '2020-10-01'),
(5, '2020-10-04'),
(5, '2020-10-10'),
(5, '2020-10-13'),
(5, '2020-10-19'),
(5, '2020-10-20'),
(5, '2020-10-24'),
(5, '2020-10-28'),
(5, '2020-11-01'),
(5, '2020-11-02'),
(5, '2020-11-06'),
(5, '2020-11-11'),
(5, '2020-11-15'),
(5, '2020-11-20'),
(5, '2020-11-21'),
(5, '2020-11-25'),
(5, '2020-11-26'),
(5, '2020-11-29'),
(5, '2020-12-01'),
(5, '2020-12-06'),
(5, '2020-12-09'),
(5, '2020-12-14'),
(5, '2020-12-15'),
(5, '2020-12-19'),
(5, '2020-12-22'),
(5, '2020-12-28'),
(6, '2020-01-01'),
(6, '2020-01-07'),
(6, '2020-01-13'),
(6, '2020-01-16'),
(6, '2020-01-18'),
(6, '2020-01-22'),
(6, '2020-01-28'),
(6, '2020-01-30'),
(6, '2020-02-01'),
(6, '2020-02-06'),
(6, '2020-02-09'),
(6, '2020-02-12'),
(6, '2020-02-15'),
(6, '2020-02-16'),
(6, '2020-02-20'),
(6, '2020-02-26'),
(6, '2020-03-01'),
(6, '2020-03-03'),
(6, '2020-03-07'),
(6, '2020-03-12'),
(6, '2020-03-17'),
(6, '2020-03-22'),
(6, '2020-03-24'),
(6, '2020-03-25'),
(6, '2020-03-29'),
(6, '2020-04-01'),
(6, '2020-04-07'),
(6, '2020-04-11'),
(6, '2020-04-12'),
(6, '2020-04-14'),
(6, '2020-04-17'),
(6, '2020-04-18'),
(6, '2020-04-20'),
(6, '2020-04-23'),
(6, '2020-04-26'),
(6, '2020-04-30'),
(6, '2020-05-01'),
(6, '2020-05-03'),
(6, '2020-05-08'),
(6, '2020-05-14'),
(6, '2020-05-15'),
(6, '2020-05-16'),
(6, '2020-05-19'),
(6, '2020-05-22'),
(6, '2020-05-24'),
(6, '2020-05-30'),
(6, '2020-06-01'),
(6, '2020-06-02'),
(6, '2020-06-04'),
(6, '2020-06-10'),
(6, '2020-06-16'),
(6, '2020-06-22'),
(6, '2020-06-27'),
(6, '2020-06-28'),
(6, '2020-06-29'),
(6, '2020-07-01'),
(6, '2020-07-05'),
(6, '2020-07-11'),
(6, '2020-07-16'),
(6, '2020-07-21'),
(6, '2020-07-23'),
(6, '2020-07-25'),
(6, '2020-08-01'),
(6, '2020-08-05'),
(6, '2020-08-10'),
(6, '2020-08-13'),
(6, '2020-08-14'),
(6, '2020-08-19'),
(6, '2020-08-23'),
(6, '2020-08-29'),
(6, '2020-09-01'),
(6, '2020-09-05'),
(6, '2020-09-06'),
(6, '2020-09-12'),
(6, '2020-09-13'),
(6, '2020-09-15'),
(6, '2020-09-21'),
(6, '2020-09-23'),
(6, '2020-09-25'),
(6, '2020-09-26'),
(6, '2020-09-28'),
(6, '2020-09-29'),
(6, '2020-09-30'),
(6, '2020-10-01'),
(6, '2020-10-02'),
(6, '2020-10-03'),
(6, '2020-10-05'),
(6, '2020-10-10'),
(6, '2020-10-11'),
(6, '2020-10-12'),
(6, '2020-10-16'),
(6, '2020-10-19'),
(6, '2020-10-21'),
(6, '2020-10-25'),
(6, '2020-11-01'),
(6, '2020-11-02'),
(6, '2020-11-08'),
(6, '2020-11-09'),
(6, '2020-11-14'),
(6, '2020-11-17'),
(6, '2020-11-23'),
(6, '2020-11-26'),
(6, '2020-11-27'),
(6, '2020-12-01'),
(6, '2020-12-03'),
(6, '2020-12-04'),
(6, '2020-12-06'),
(6, '2020-12-08'),
(6, '2020-12-11'),
(6, '2020-12-14'),
(6, '2020-12-16'),
(6, '2020-12-21'),
(6, '2020-12-25'),
(6, '2020-12-27'),
(7, '2020-01-01'),
(7, '2020-01-06'),
(7, '2020-01-09'),
(7, '2020-01-15'),
(7, '2020-01-19'),
(7, '2020-01-23'),
(7, '2020-01-29'),
(7, '2020-02-01'),
(7, '2020-02-07'),
(7, '2020-02-09'),
(7, '2020-02-14'),
(7, '2020-02-20'),
(7, '2020-02-23'),
(7, '2020-02-27'),
(7, '2020-03-01'),
(7, '2020-03-02'),
(7, '2020-03-03'),
(7, '2020-03-09'),
(7, '2020-03-13'),
(7, '2020-03-15'),
(7, '2020-03-21'),
(7, '2020-03-27'),
(7, '2020-03-30'),
(7, '2020-04-01'),
(7, '2020-04-02'),
(7, '2020-04-08'),
(7, '2020-04-12'),
(7, '2020-04-14'),
(7, '2020-04-18'),
(7, '2020-04-19'),
(7, '2020-04-23'),
(7, '2020-04-26'),
(7, '2020-05-01'),
(7, '2020-05-07'),
(7, '2020-05-09'),
(7, '2020-05-12'),
(7, '2020-05-15'),
(7, '2020-05-17'),
(7, '2020-05-22'),
(7, '2020-05-25'),
(7, '2020-05-29'),
(7, '2020-06-01'),
(7, '2020-06-03'),
(7, '2020-06-09'),
(7, '2020-06-10'),
(7, '2020-06-12'),
(7, '2020-06-13'),
(7, '2020-06-14'),
(7, '2020-06-16'),
(7, '2020-06-20'),
(7, '2020-06-23'),
(7, '2020-06-24'),
(7, '2020-06-27'),
(7, '2020-07-01'),
(7, '2020-07-02'),
(7, '2020-07-05'),
(7, '2020-07-09'),
(7, '2020-07-13'),
(7, '2020-07-18'),
(7, '2020-07-20'),
(7, '2020-07-25'),
(7, '2020-07-27'),
(7, '2020-08-01'),
(7, '2020-08-06'),
(7, '2020-08-07'),
(7, '2020-08-13'),
(7, '2020-08-15'),
(7, '2020-08-19'),
(7, '2020-08-20'),
(7, '2020-08-26'),
(7, '2020-09-01'),
(7, '2020-09-06'),
(7, '2020-09-09'),
(7, '2020-09-11'),
(7, '2020-09-15'),
(7, '2020-09-18'),
(7, '2020-09-22'),
(7, '2020-09-27'),
(7, '2020-10-01'),
(7, '2020-10-06'),
(7, '2020-10-08'),
(7, '2020-10-14'),
(7, '2020-10-19'),
(7, '2020-10-24'),
(7, '2020-10-29'),
(7, '2020-11-01'),
(7, '2020-11-02'),
(7, '2020-11-04'),
(7, '2020-11-08'),
(7, '2020-11-14'),
(7, '2020-11-18'),
(7, '2020-11-20'),
(7, '2020-11-21'),
(7, '2020-11-22'),
(7, '2020-11-23'),
(7, '2020-11-25'),
(7, '2020-11-26'),
(7, '2020-11-28'),
(7, '2020-12-01'),
(7, '2020-12-03'),
(7, '2020-12-04'),
(7, '2020-12-09'),
(7, '2020-12-15'),
(7, '2020-12-18'),
(7, '2020-12-19'),
(7, '2020-12-22'),
(7, '2020-12-28'),
(8, '2020-01-01'),
(8, '2020-01-02'),
(8, '2020-01-05'),
(8, '2020-01-08'),
(8, '2020-01-11'),
(8, '2020-01-14'),
(8, '2020-01-16'),
(8, '2020-01-17'),
(8, '2020-01-18'),
(8, '2020-01-19'),
(8, '2020-01-21'),
(8, '2020-01-24'),
(8, '2020-01-29'),
(8, '2020-01-30'),
(8, '2020-02-01'),
(8, '2020-02-02'),
(8, '2020-02-03'),
(8, '2020-02-04'),
(8, '2020-02-05'),
(8, '2020-02-08'),
(8, '2020-02-10'),
(8, '2020-02-12'),
(8, '2020-02-13'),
(8, '2020-02-16'),
(8, '2020-02-19'),
(8, '2020-02-25'),
(8, '2020-02-27'),
(8, '2020-03-01'),
(8, '2020-03-07'),
(8, '2020-03-12'),
(8, '2020-03-17'),
(8, '2020-03-21'),
(8, '2020-03-27'),
(8, '2020-03-29'),
(8, '2020-03-30'),
(8, '2020-04-01'),
(8, '2020-04-05'),
(8, '2020-04-07'),
(8, '2020-04-10'),
(8, '2020-04-14'),
(8, '2020-04-17'),
(8, '2020-04-21'),
(8, '2020-04-22'),
(8, '2020-04-24'),
(8, '2020-04-29'),
(8, '2020-04-30'),
(8, '2020-05-01'),
(8, '2020-05-07'),
(8, '2020-05-09'),
(8, '2020-05-11'),
(8, '2020-05-13'),
(8, '2020-05-16'),
(8, '2020-05-20'),
(8, '2020-05-23'),
(8, '2020-05-28'),
(8, '2020-05-29'),
(8, '2020-06-01'),
(8, '2020-06-02'),
(8, '2020-06-08'),
(8, '2020-06-10'),
(8, '2020-06-15'),
(8, '2020-06-19'),
(8, '2020-06-25'),
(8, '2020-06-29'),
(8, '2020-07-01'),
(8, '2020-07-07'),
(8, '2020-07-13'),
(8, '2020-07-16'),
(8, '2020-07-18'),
(8, '2020-07-20'),
(8, '2020-07-21'),
(8, '2020-07-26'),
(8, '2020-08-01'),
(8, '2020-08-02'),
(8, '2020-08-08'),
(8, '2020-08-12'),
(8, '2020-08-13'),
(8, '2020-08-15'),
(8, '2020-08-19'),
(8, '2020-08-21'),
(8, '2020-08-25'),
(8, '2020-08-30'),
(8, '2020-09-01'),
(8, '2020-09-03'),
(8, '2020-09-04'),
(8, '2020-09-07'),
(8, '2020-09-09'),
(8, '2020-09-12'),
(8, '2020-09-16'),
(8, '2020-09-17'),
(8, '2020-09-22'),
(8, '2020-09-24'),
(8, '2020-09-28'),
(8, '2020-10-01'),
(8, '2020-10-07'),
(8, '2020-10-10'),
(8, '2020-10-14'),
(8, '2020-10-19'),
(8, '2020-10-24'),
(8, '2020-10-30'),
(8, '2020-11-01'),
(8, '2020-11-06'),
(8, '2020-11-10'),
(8, '2020-11-11'),
(8, '2020-11-17'),
(8, '2020-11-21'),
(8, '2020-11-26'),
(8, '2020-12-01'),
(8, '2020-12-07'),
(8, '2020-12-09'),
(8, '2020-12-11'),
(8, '2020-12-14'),
(8, '2020-12-20'),
(8, '2020-12-26'),
(8, '2020-12-30'),
(9, '2020-01-01'),
(9, '2020-01-04'),
(9, '2020-01-09'),
(9, '2020-01-13'),
(9, '2020-01-19'),
(9, '2020-01-24'),
(9, '2020-01-26'),
(9, '2020-01-28'),
(9, '2020-02-01'),
(9, '2020-02-07'),
(9, '2020-02-08'),
(9, '2020-02-14'),
(9, '2020-02-17'),
(9, '2020-02-23'),
(9, '2020-02-27'),
(9, '2020-03-01'),
(9, '2020-03-02'),
(9, '2020-03-05'),
(9, '2020-03-11'),
(9, '2020-03-13'),
(9, '2020-03-15'),
(9, '2020-03-19'),
(9, '2020-03-25'),
(9, '2020-03-27'),
(9, '2020-03-30'),
(9, '2020-04-01'),
(9, '2020-04-05'),
(9, '2020-04-11'),
(9, '2020-04-12'),
(9, '2020-04-16'),
(9, '2020-04-20'),
(9, '2020-04-22'),
(9, '2020-04-28'),
(9, '2020-04-30'),
(9, '2020-05-01'),
(9, '2020-05-07'),
(9, '2020-05-08'),
(9, '2020-05-09'),
(9, '2020-05-10'),
(9, '2020-05-14'),
(9, '2020-05-20'),
(9, '2020-05-22'),
(9, '2020-05-25'),
(9, '2020-05-28'),
(9, '2020-05-30'),
(9, '2020-06-01'),
(9, '2020-06-06'),
(9, '2020-06-09'),
(9, '2020-06-12'),
(9, '2020-06-17'),
(9, '2020-06-21'),
(9, '2020-06-26'),
(9, '2020-06-29'),
(9, '2020-07-01'),
(9, '2020-07-07'),
(9, '2020-07-13'),
(9, '2020-07-17'),
(9, '2020-07-20'),
(9, '2020-07-25'),
(9, '2020-07-30'),
(9, '2020-08-01'),
(9, '2020-08-03'),
(9, '2020-08-09'),
(9, '2020-08-15'),
(9, '2020-08-19'),
(9, '2020-08-24'),
(9, '2020-08-30'),
(9, '2020-09-01'),
(9, '2020-09-07'),
(9, '2020-09-08'),
(9, '2020-09-09'),
(9, '2020-09-15'),
(9, '2020-09-17'),
(9, '2020-09-21'),
(9, '2020-09-24'),
(9, '2020-09-28'),
(9, '2020-10-01'),
(9, '2020-10-02'),
(9, '2020-10-08'),
(9, '2020-10-09'),
(9, '2020-10-15'),
(9, '2020-10-18'),
(9, '2020-10-23'),
(9, '2020-10-25'),
(9, '2020-11-01'),
(9, '2020-11-06'),
(9, '2020-11-07'),
(9, '2020-11-10'),
(9, '2020-11-11'),
(9, '2020-11-17'),
(9, '2020-11-19'),
(9, '2020-11-20'),
(9, '2020-11-21'),
(9, '2020-11-23'),
(9, '2020-11-24'),
(9, '2020-11-28'),
(9, '2020-12-01'),
(9, '2020-12-07'),
(9, '2020-12-09'),
(9, '2020-12-15'),
(9, '2020-12-21'),
(9, '2020-12-24'),
(9, '2020-12-29'),
(10, '2020-01-01'),
(10, '2020-01-07'),
(10, '2020-01-08'),
(10, '2020-01-13'),
(10, '2020-01-17'),
(10, '2020-01-19'),
(10, '2020-01-24'),
(10, '2020-01-28'),
(10, '2020-01-30'),
(10, '2020-02-01'),
(10, '2020-02-03'),
(10, '2020-02-06'),
(10, '2020-02-07'),
(10, '2020-02-13'),
(10, '2020-02-17'),
(10, '2020-02-21'),
(10, '2020-02-22'),
(10, '2020-02-25'),
(10, '2020-03-01'),
(10, '2020-03-03'),
(10, '2020-03-06'),
(10, '2020-03-12'),
(10, '2020-03-14'),
(10, '2020-03-15'),
(10, '2020-03-21'),
(10, '2020-03-23'),
(10, '2020-03-25'),
(10, '2020-03-30'),
(10, '2020-04-01'),
(10, '2020-04-06'),
(10, '2020-04-10'),
(10, '2020-04-13'),
(10, '2020-04-17'),
(10, '2020-04-22'),
(10, '2020-04-24'),
(10, '2020-04-26'),
(10, '2020-04-27'),
(10, '2020-05-01'),
(10, '2020-05-06'),
(10, '2020-05-08'),
(10, '2020-05-09'),
(10, '2020-05-10'),
(10, '2020-05-14'),
(10, '2020-05-16'),
(10, '2020-05-17'),
(10, '2020-05-18'),
(10, '2020-05-23'),
(10, '2020-05-25'),
(10, '2020-05-28'),
(10, '2020-06-01'),
(10, '2020-06-04'),
(10, '2020-06-10'),
(10, '2020-06-13'),
(10, '2020-06-18'),
(10, '2020-06-24'),
(10, '2020-06-27'),
(10, '2020-07-01'),
(10, '2020-07-03'),
(10, '2020-07-05'),
(10, '2020-07-06'),
(10, '2020-07-07'),
(10, '2020-07-12'),
(10, '2020-07-16'),
(10, '2020-07-20'),
(10, '2020-07-24'),
(10, '2020-07-29'),
(10, '2020-08-01'),
(10, '2020-08-05'),
(10, '2020-08-09'),
(10, '2020-08-13'),
(10, '2020-08-18'),
(10, '2020-08-23'),
(10, '2020-08-27'),
(10, '2020-08-30'),
(10, '2020-09-01'),
(10, '2020-09-05'),
(10, '2020-09-09'),
(10, '2020-09-13'),
(10, '2020-09-18'),
(10, '2020-09-19'),
(10, '2020-09-20'),
(10, '2020-09-22'),
(10, '2020-09-28'),
(10, '2020-10-01'),
(10, '2020-10-07'),
(10, '2020-10-13'),
(10, '2020-10-14'),
(10, '2020-10-20'),
(10, '2020-10-22'),
(10, '2020-10-24'),
(10, '2020-10-25'),
(10, '2020-10-27'),
(10, '2020-10-28'),
(10, '2020-11-01'),
(10, '2020-11-07'),
(10, '2020-11-11'),
(10, '2020-11-13'),
(10, '2020-11-18'),
(10, '2020-11-19'),
(10, '2020-11-25'),
(10, '2020-11-28'),
(10, '2020-12-01'),
(10, '2020-12-05'),
(10, '2020-12-11'),
(10, '2020-12-14'),
(10, '2020-12-17'),
(10, '2020-12-21'),
(10, '2020-12-27'),
(10, '2020-12-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`venue_id`,`grade`,`cost`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- Indexes for table `venue_booking`
--
ALTER TABLE `venue_booking`
  ADD PRIMARY KEY (`venue_id`,`date_booked`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
