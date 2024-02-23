-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 05:18 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`user_id`, `playlist_id`) VALUES
('Ub3EMIPfOfdZYTFlvhlI', 'ZpikY0ghfhVbH9o75IKN'),
('Ub3EMIPfOfdZYTFlvhlI', '4eelj8bT3lAAzbTV1siE');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('B6EaogqlfUxVhazxy8Um', '5jxFun9sLnhKMmSAaMGf', 'Ub3EMIPfOfdZYTFlvhlI', 'A8UAJe5CqTys4SP7mti1', 'nnnnnn', '2024-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `number`, `message`) VALUES
('nida', 'nida@gmail.com', 23344, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('5jxFun9sLnhKMmSAaMGf', 'A8UAJe5CqTys4SP7mti1', 'ZpikY0ghfhVbH9o75IKN', 'introduction', 'introduction 123 123 123', 'xotv1xKYALT0BQb8dSKP.mp4', '3P1JX7TCyiHpdCcpqm34.png', '2024-02-14', 'active'),
('CFgR8hZWJcbPV7qY1zJM', 'A8UAJe5CqTys4SP7mti1', '4eelj8bT3lAAzbTV1siE', 'introduction', 'welcome to mern stack learning', 'N3SHhvTWwZOcjosdq1SA.mp4', 'Zs7njJnDC4CmXAdHZkeF.png', '2024-02-21', 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('Ub3EMIPfOfdZYTFlvhlI', 'A8UAJe5CqTys4SP7mti1', '5jxFun9sLnhKMmSAaMGf');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `category`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('va16qXdh4ui1vmbZl5Nv', 'JDDTnM86XWZhtanCjE4X', '', 'random', 'random text', 'DvradqRPsXiLhlbEBmCI.png', '2024-02-11', 'deactive'),
('ZpikY0ghfhVbH9o75IKN', 'A8UAJe5CqTys4SP7mti1', '', 'learn php', 'phphphphphp', '8oId6A3BX2KnMrNMnnjo.png', '2024-02-14', 'active'),
('4eelj8bT3lAAzbTV1siE', 'A8UAJe5CqTys4SP7mti1', 'Design', 'Learn MERN', 'Lets learn MERN 123', 'g6XbaqTR04yfnf9adzIk.png', '2024-02-21', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('JDDTnM86XWZhtanCjE4X', 'gojo', 'teacher', 'gojo123@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'f85x22bx92ZzVlDUJrHs.jpg'),
('A8UAJe5CqTys4SP7mti1', 'hamza', 'teacher', 'hamza@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'UPZa116vgj5UTkXuLczU.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('Ub3EMIPfOfdZYTFlvhlI', 'fatima', 'fatima123@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'P2bzFGWa34QLLEG6eAqX.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
