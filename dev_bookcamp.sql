-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2025 at 03:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_bookcamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `section_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `accountType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`, `first_name`, `last_name`, `section_id`, `course_id`, `department_id`, `created_at`, `updated_at`, `accountType_id`) VALUES
(2, 'user1', 'user1@bookcamp.com', '$2y$10$sgfJzJfl0B54Ur5tSfwvNuwnusZWg0TyfPmipOXtW/wUZ5IDqo1xO', NULL, 'user1', 'bookcamp', 1, 1, 1, '2025-02-01 14:00:55', '2025-02-01 14:00:55', 1),
(5, 'user2', 'user2@bookcamp.com', '$2y$10$wAcYrxq/wMPmO2b8tUlsoOW5Xh4H/S9bER8Yyr9dUVjXO/5qQr50u', NULL, 'user2', 'bookcamp', 1, 1, 1, '2025-02-01 14:00:55', '2025-02-01 14:00:55', 2),
(6, 'user3', 'user3@bookcamp.com', '$2y$10$WErPvClmydVLyj0TFgk1b.iJM/LFFam0cEGYw4USRcVZINzfwNGwG', NULL, 'user3', 'bookcamp', 1, 1, 1, '2025-02-01 14:00:55', '2025-02-01 14:00:55', 3),
(7, 'user4', 'user4@bookcamp.com', '$2y$10$gPRW42IOtSWxuNFA2FhGc..m8DPwa3tMv6wEN2JRpJmbMLlt80IqO', NULL, 'user4', 'bookcamp', 1, 1, 1, '2025-02-01 14:00:55', '2025-02-01 14:00:55', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accountType_id` (`accountType_id`),
  ADD KEY `section_id` (`section_id`,`course_id`,`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`accountType_id`) REFERENCES `accounttype` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
