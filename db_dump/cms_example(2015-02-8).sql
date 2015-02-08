-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2015 at 04:09 PM
-- Server version: 5.6.17
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms_example`
--

-- --------------------------------------------------------

--
-- Table structure for table `footer_info`
--

CREATE TABLE IF NOT EXISTS `footer_info` (
`f_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mob` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `footer_info`
--

INSERT INTO `footer_info` (`f_id`, `address`, `mail`, `mob`, `tel`) VALUES
(1, 'munnis väg 2', 'mnb@hh.cc.sd', '73365767', '462883737');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`iid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`iid`, `title`, `path`, `user_id`, `uploaded`) VALUES
(3, 'kkk', 'ha', 1, '2015-02-02 13:47:05'),
(4, 'jscjbdc', 'hv2', 1, '2015-02-03 10:06:30'),
(5, 'sssss', 'hv1', 1, '2015-02-05 07:52:18'),
(6, 'qsq', 'ha', 1, '2015-02-05 08:20:09'),
(7, 'aaaa', 'hv2', 1, '2015-02-06 08:58:28'),
(8, 'IIII', 'hv1', 1, '2015-02-06 09:08:21'),
(9, 'asa', 'ff', 1, '2015-02-06 09:21:13'),
(10, 'qqqqqq', 'hv1', 1, '2015-02-06 10:04:58'),
(11, 'ss', 'hv2', 1, '2015-02-06 15:38:00'),
(12, 'kkk', 'ha', 1, '2015-02-06 15:39:19'),
(13, 'ss', 'hv1', 1, '2015-02-06 15:41:00'),
(14, 'hhh', 'hv1', 1, '2015-02-06 15:48:25'),
(15, 'hjhvjhvh', 'ha', 1, '2015-02-06 15:49:01'),
(16, '222', 'ff', 1, '2015-02-06 16:21:56'),
(17, 'eeww', 'ff', 1, '2015-02-06 16:25:09'),
(18, 'eee', 'ha', 1, '2015-02-06 16:34:09'),
(19, 'ss', 'ha', 1, '2015-02-06 16:39:58'),
(20, 'asa', 'hv2', 1, '2015-02-08 10:56:53'),
(21, 'aaa', 'hv1', 1, '2015-02-08 11:05:40'),
(22, 'aaa', 'ff', 1, '2015-02-08 11:10:56'),
(23, 'hhhh', 'hv1', 1, '2015-02-08 11:16:34'),
(24, 'aaa', 'ff', 1, '2015-02-08 11:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE IF NOT EXISTS `main_menu` (
`mm_id` int(11) NOT NULL,
  `mm_name` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`mm_id`, `mm_name`) VALUES
(1, 'family'),
(2, 'sport'),
(3, 'health'),
(4, 'food');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `menu_name` varchar(255) NOT NULL,
  `machine_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu_link`
--

CREATE TABLE IF NOT EXISTS `menu_link` (
`ml_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `mm_id` int(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `menu_link`
--

INSERT INTO `menu_link` (`ml_id`, `title`, `path`, `mm_id`) VALUES
(1, 'kkk', 'mitsa58', 3),
(3, 'fry fish', 'yami-yami60', 4),
(4, 'mitsa', 'kian61', 1),
(5, 'Ali', 'kian62', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_links`
--

CREATE TABLE IF NOT EXISTS `menu_links` (
`mlid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `plid` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  `mm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`pid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `user_id`, `img_id`, `video_id`, `created`) VALUES
(58, 'mitsa', 'hkjhkjhkjhkjhkjh', 1, NULL, NULL, '2015-02-08 10:56:53'),
(60, 'Yami yami', 'jwefjwef uwegfuyegfuygwugfw uygfgu34gfr wuvuwgyrvuyrgvyger', 1, NULL, NULL, '2015-02-08 11:10:56'),
(61, 'kian', ' hvdhq wyefdyweff yewfywtfytwe yewf ywefyw', 1, NULL, NULL, '2015-02-08 11:16:34'),
(62, 'kian', 'jhvdwjqhvdjhqved qj vdqhefhevf', 1, NULL, NULL, '2015-02-08 11:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`aid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`aid`, `path`, `pid`) VALUES
(76, 'mitsa58', 58),
(78, 'yami-yami60', 60),
(79, 'kian61', 61),
(80, 'kian62', 62);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`uid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `description` text,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `email`, `pass`, `description`, `joined`) VALUES
(1, 'mitsa', 'taj', '', '1', NULL, '2015-01-16 10:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
`vid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `description` text,
  `user_id` int(11) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `footer_info`
--
ALTER TABLE `footer_info`
 ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`iid`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
 ADD PRIMARY KEY (`mm_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
 ADD PRIMARY KEY (`machine_name`);

--
-- Indexes for table `menu_link`
--
ALTER TABLE `menu_link`
 ADD PRIMARY KEY (`ml_id`);

--
-- Indexes for table `menu_links`
--
ALTER TABLE `menu_links`
 ADD PRIMARY KEY (`mlid`), ADD KEY `menu` (`menu`), ADD KEY `plid` (`plid`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`pid`), ADD KEY `user_id` (`user_id`), ADD KEY `img_id` (`img_id`), ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `url_alias`
--
ALTER TABLE `url_alias`
 ADD PRIMARY KEY (`aid`), ADD KEY `pid` (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`vid`), ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `footer_info`
--
ALTER TABLE `footer_info`
MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
MODIFY `mm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_link`
--
ALTER TABLE `menu_link`
MODIFY `ml_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu_links`
--
ALTER TABLE `menu_links`
MODIFY `mlid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

--
-- Constraints for table `menu_links`
--
ALTER TABLE `menu_links`
ADD CONSTRAINT `menu_links_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `menus` (`machine_name`),
ADD CONSTRAINT `menu_links_ibfk_2` FOREIGN KEY (`plid`) REFERENCES `menu_links` (`mlid`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`),
ADD CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`img_id`) REFERENCES `images` (`iid`),
ADD CONSTRAINT `pages_ibfk_3` FOREIGN KEY (`video_id`) REFERENCES `videos` (`vid`);

--
-- Constraints for table `url_alias`
--
ALTER TABLE `url_alias`
ADD CONSTRAINT `url_alias_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `pages` (`pid`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
