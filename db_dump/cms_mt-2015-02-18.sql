-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2015 at 10:00 AM
-- Server version: 5.6.17
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms_mt`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`iid`, `title`, `path`, `user_id`, `uploaded`) VALUES
(65, 'momy', 'fm', 1, '2015-02-17 20:50:25'),
(68, 'yami yami', 'frf', 1, '2015-02-18 09:31:56');

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
-- Table structure for table `menu_link`
--

CREATE TABLE IF NOT EXISTS `menu_link` (
`ml_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `mm_id` int(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `menu_link`
--

INSERT INTO `menu_link` (`ml_id`, `title`, `path`, `mm_id`) VALUES
(55, 'Mother', 'healthy-mother110', 1),
(58, 'Junk Food', 'junk-food-facts113', 4);

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
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `user_id`, `img_id`, `created`) VALUES
(110, 'Healthy Mother', 'orem ipsum dolor sit amet, consectetur adipiscing elit. Etiam finibus libero quis mattis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus arcu turpis, sagittis sed fringilla vel, egestas a urna. Praesent ac interdum eros. Proin rhoncus tristique hendrerit. Vestibulum ac magna a nisi lobortis gravida in nec urna. Morbi condimentum pulvinar tortor id cursus. Integer felis magna, consectetur eu viverra nec, maximus at leo. Etiam sagittis tristique gravida. Praesent ipsum massa, faucibus sed felis eu, efficitur aliquet eros. Curabitur leo est, rutrum sed volutpat vel, fermentum non dolor.\n\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Proin auctor sapien magna, ac lobortis justo lobortis et. Duis luctus elit libero, eget hendrerit dui commodo at. Nunc ex lorem, rhoncus vitae diam sit amet, accumsan elementum mi. Aenean tristique blandit ipsum, id volutpat tortor accumsan sit amet. Pellentesque eleifend odio a leo convallis, a elementum magna malesuada. Vestibulum ullamcorper id tortor vel vehicula. Suspendisse sed laoreet mi. Nulla non sollicitudin mi. Etiam vestibulum dignissim nisi id auctor. Donec volutpat commodo elit ac tristique. Proin sed nulla at orci egestas dignissim eget eu justo. Etiam sagittis neque faucibus, ornare felis vitae, pharetra mauris.\n\nEtiam laoreet convallis eros a dapibus. Aliquam orci nibh, interdum sit amet commodo id, dapibus sit amet ex. Pellentesque vel mi ac enim finibus faucibus non nec enim. Fusce et auctor risus, eget pharetra mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin interdum est et ligula ornare fringilla. Nunc porttitor est arcu, vitae tincidunt dui rhoncus eu. Aliquam laoreet venenatis arcu, vitae maximus erat cursus imperdiet. Quisque lobortis tortor quis arcu dapibus varius at sed lectus. Sed viverra varius nisi suscipit fringilla. Cras quam nisi, lacinia nec lorem et, pharetra lacinia erat. Donec sit amet cursus neque, id feugiat lectus.', 1, 65, '2015-02-17 20:50:25'),
(113, 'Junk Food Facts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in arcu placerat, mattis elit at, euismod leo. Suspendisse imperdiet pretium mi, id varius metus vehicula ut. Suspendisse condimentum, lacus quis hendrerit mollis, orci orci aliquet lacus, eget elementum dui neque sed mi. Praesent at euismod enim. Maecenas vestibulum vulputate lectus vel molestie. Maecenas sit amet feugiat urna. Duis cursus enim arcu, ut commodo velit bibendum sed. Etiam at tincidunt nisi, ac tincidunt mauris. Etiam mi purus, pellentesque vel erat vel, pretium efficitur justo.\n\nPraesent mattis mi facilisis ornare sagittis. Etiam eu tortor cursus, molestie neque auctor, porttitor est. Donec suscipit diam ante, non hendrerit lectus convallis vel. In a pulvinar lacus. Proin sed leo interdum, consectetur lacus in, dapibus neque. Vestibulum hendrerit felis elit, in aliquet arcu sodales id. Cras et elit ut risus fringilla egestas. Aliquam nec felis at magna ullamcorper sollicitudin quis sit amet leo. Sed gravida augue et massa sollicitudin laoreet. Ut tincidunt iaculis tellus, et aliquam ligula accumsan sit amet. Maecenas a eros mollis, semper mi vitae, molestie quam. Integer commodo tristique vehicula. Donec pellentesque consequat leo eget congue. Sed non eros arcu.\n\nNam orci ex, pulvinar id pretium in, lacinia vel eros. Sed quis interdum magna. Sed ut turpis sit amet nibh euismod ornare. Cras auctor nisi quis tristique faucibus. Curabitur ac posuere nisl, vitae ultrices arcu. Nullam interdum dolor quis sem congue dictum. Suspendisse egestas urna tellus, non condimentum magna venenatis vel. Phasellus elementum, diam nec sodales vestibulum, dui velit dictum quam, eget pellentesque magna felis ut purus. Aliquam consectetur purus quis nisi bibendum, id tincidunt diam gravida. Morbi sit amet viverra ante. Nulla interdum odio augue, quis laoreet justo tempus at.\n\nMauris auctor turpis eu nisi tempus, at malesuada erat tincidunt. Proin lobortis nulla at magna porta, nec finibus orci tincidunt. Ut sagittis mauris sed laoreet sollicitudin. Vestibulum vitae neque vitae odio varius tempus. Curabitur in fermentum orci. Ut ac dolor sit amet nisl maximus pellentesque. Ut enim libero, fringilla quis ullamcorper a, sagittis rutrum ligula. Nullam porttitor in sapien sit amet finibus. Morbi lorem odio, dictum in consequat eget, semper ac purus. Sed vitae est sed mi ultrices rhoncus. Suspendisse at rhoncus augue, laoreet elementum leo. Duis dapibus placerat rhoncus. Nunc tempor, lorem a viverra pharetra, libero tellus lacinia metus, in fermentum metus justo nec orci. Nam velit elit, consectetur quis dolor vitae, venenatis lobortis leo. Nam eget nibh nec dolor egestas dictum eget in odio. Vestibulum ut fermentum diam, non condimentum leo', 1, 68, '2015-02-18 09:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`aid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`aid`, `path`, `pid`) VALUES
(130, 'healthy-mother110', 110),
(133, 'junk-food-facts113', 113);

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
-- Indexes for table `menu_link`
--
ALTER TABLE `menu_link`
 ADD PRIMARY KEY (`ml_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`pid`), ADD KEY `user_id` (`user_id`), ADD KEY `img_id` (`img_id`);

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
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
MODIFY `mm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_link`
--
ALTER TABLE `menu_link`
MODIFY `ml_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`),
ADD CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`img_id`) REFERENCES `images` (`iid`);

--
-- Constraints for table `url_alias`
--
ALTER TABLE `url_alias`
ADD CONSTRAINT `url_alias_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `pages` (`pid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
