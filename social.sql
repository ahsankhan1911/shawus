-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2018 at 03:20 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(2, 'hello', 'abbas_zaidi', 'ali_zaidi', '2018-07-01 20:15:41', 'no', 2),
(3, 'hi there', 'hassan_zaidi', 'ali_zaidi', '2018-07-02 07:27:13', 'no', 2),
(4, 'nice trailer', 'ali_zaidi', 'hassan_zaidi', '2018-07-02 08:10:14', 'no', 5);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'abbas_zaidi', 1),
(8, 'abbas_zaidi', 5);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'abbas_zaidi', 'ali_zaidi', 'abbas', '2018-07-01 00:00:00', 'yes', 'yes', 'no'),
(2, 'abbas_zaidi', 'ali_zaidi', 'abbas', '2018-07-01 00:00:00', 'yes', 'yes', 'no'),
(3, 'ali_zaidi', 'abbas_zaidi', 'hi ali', '2018-07-02 00:00:00', 'no', 'yes', 'no'),
(4, 'abbas_zaidi', 'hassan_zaidi', 'hi abbas', '2018-07-02 00:00:00', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'ali_zaidi', 'abbas_zaidi', 'Abbas Zaidi commented on your post', 'post.php?id=1', '2018-07-01 20:00:11', 'no', 'yes'),
(2, 'ali_zaidi', 'abbas_zaidi', 'Abbas Zaidi liked your post', 'post.php?id=1', '2018-07-01 20:00:13', 'no', 'yes'),
(3, 'ali_zaidi', 'abbas_zaidi', 'Abbas Zaidi liked your post', 'post.php?id=2', '2018-07-01 20:09:45', 'yes', 'yes'),
(4, 'ali_zaidi', 'abbas_zaidi', 'Abbas Zaidi commented on your post', 'post.php?id=2', '2018-07-01 20:15:41', 'yes', 'yes'),
(5, 'hassan_zaidi', 'abbas_zaidi', 'Abbas Zaidi liked your post', 'post.php?id=4', '2018-07-02 05:15:34', 'no', 'yes'),
(6, 'ali_zaidi', 'abbas_zaidi', 'Abbas Zaidi liked your post', 'post.php?id=2', '2018-07-02 05:15:35', 'yes', 'yes'),
(7, 'hassan_zaidi', 'abbas_zaidi', 'Abbas Zaidi liked your post', 'post.php?id=4', '2018-07-02 05:15:43', 'no', 'yes'),
(8, 'hassan_zaidi', 'abbas_zaidi', 'Abbas Zaidi liked your post', 'post.php?id=4', '2018-07-02 05:15:59', 'no', 'yes'),
(9, 'ali_zaidi', 'hassan_zaidi', 'Hassan Zaidi commented on your post', 'post.php?id=2', '2018-07-02 07:27:13', 'yes', 'yes'),
(10, 'abbas_zaidi', 'hassan_zaidi', 'Hassan Zaidi comment on a post you commented on', 'post.php?id=2', '2018-07-02 07:27:13', 'no', 'yes'),
(11, 'hassan_zaidi', 'abbas_zaidi', 'Abbas Zaidi liked your post', 'post.php?id=5', '2018-07-02 08:09:53', 'yes', 'yes'),
(12, 'hassan_zaidi', 'ali_zaidi', 'Ali Zaidi commented on your post', 'post.php?id=5', '2018-07-02 08:10:14', 'yes', 'yes'),
(13, 'hassan_zaidi', 'abbas_zaidi', 'Abbas Zaidi liked your post', 'post.php?id=3', '2018-07-02 17:57:48', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(2, 'hi', 'ali_zaidi', 'none', '2018-07-01 20:00:37', 'no', 'no', 0, ''),
(3, 'hi abbas', 'hassan_zaidi', 'abbas_zaidi', '2018-07-02 05:11:43', 'no', 'no', 0, ''),
(4, 'hello evey one', 'hassan_zaidi', 'none', '2018-07-02 05:15:04', 'no', 'no', 0, ''),
(5, '<br><iframe width=\'620\' height=\'350\' src=\'https://www.youtube.com/embed/Pq02p3z3X2k\'></iframe><br>', 'hassan_zaidi', 'none', '2018-07-02 08:08:38', 'no', 'no', 1, ''),
(12, 'Hello guys', 'abbas_zaidi', 'none', '2018-07-02 08:47:35', 'no', 'no', 0, ''),
(14, 'Arkham Knight', 'hassan_zaidi', 'none', '2018-07-02 18:00:55', 'no', 'no', 0, 'assets/images/posts/5b3a2207ec8fabatman_arkham_knight_game-wide.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 1),
('Guys', 1),
('Joker', 1),
('Arkham', 1),
('Knight', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Abbas', 'Zaidi', 'abbas_zaidi', 'Abbas@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2018-07-01', 'assets/images/profile_pics/abbas_zaidi4e311f439b14da970aaa6a4c9bae6a4bn.jpeg', 1, 0, 'no', ',ali_zaidi,hassan_zaidi,'),
(2, 'Ali', 'Zaidi', 'ali_zaidi', 'Ali@hotmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2018-07-01', 'assets/images/profile_pics/defaults/head_sun_flower.png', 1, 0, 'no', ',abbas_zaidi,hassan_zaidi,'),
(3, 'Hassan', 'Zaidi', 'hassan_zaidi', 'Hassan@gmail.com', '0102812fbd5f73aa18aa0bae2cd8f79f', '2018-07-02', 'assets/images/profile_pics/defaults/head_wet_asphalt.png', 3, 1, 'no', ',ali_zaidi,abbas_zaidi,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
