-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2022 at 11:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpleblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `info` text NOT NULL,
  `tags` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `featured` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `info`, `tags`, `image`, `featured`) VALUES
(1, 'We\'re living some strange times', 'We\'re living some strange times This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'tag1-tag2-tag3-tag-4', '1.jpg', 1),
(2, 'Dreaming of Las Vegas Crazyness', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'tag2-tag5-tag8', '2.jpg', 1),
(3, 'The beauty of this world is in your heart', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'tagg5-taggg12', '3.jpg', 1),
(4, 'San Francisco at its best view in all seasons', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n', 'gsfdfs-ffdsfgds-fgdfgfd', '4.jpg', 1),
(5, 'Autumn doesn\'t have to be nostalgic, you know?', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'fgsfgfgds-fgdsds-fgfgbd', '5.jpg', 0),
(6, 'Little red dress and a perfect summer', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'gsfddfs-etewrer-nbvvv', '6.jpg', 0),
(7, '10 Things you should know about choosing your house', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'bfdsfdn-ytghghgh-xcxcxv', '7.jpg', 0),
(8, 'Best galleries in the world with photos\r\n', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'fsfgfg-dnmnnmm-xccvxvcx', '8.jpg', 0),
(9, 'Thinking outside the box can help you prosper', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'dfsfdfs-gdsdfsfs-dsgdgsgds', '9.jpg', 0),
(10, 'Visiting the world means learning cultures', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'fgsffs-xcbcx-jklkl-wweqewq', '10.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paragraph`
--

CREATE TABLE `paragraph` (
  `id` int(11) NOT NULL,
  `blog` int(11) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `discription` text NOT NULL,
  `image` varchar(225) NOT NULL,
  `linkedin` varchar(225) NOT NULL,
  `google` varchar(225) NOT NULL,
  `twitter` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `discription`, `image`, `linkedin`, `google`, `twitter`) VALUES
(1, 'Bhupendra Sambare', 'I am a java Developer applying Java Spring Framework with concepts of MVC(Model View Controller) and JDBC(Java Database Connectivity) for gaining practical implementation of the development knowledge.', 'bhupendra.png', 'https://www.linkedin.com/in/bhupendrasambare/', 'mailto:bhupendrasam1404@gmail.com', 'https://twitter.com/bhupendra_SAM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paragraph`
--
ALTER TABLE `paragraph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paragraph`
--
ALTER TABLE `paragraph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
