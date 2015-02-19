-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2015 at 09:04 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`iid`, `title`, `path`, `user_id`, `uploaded`) VALUES
(65, 'momy', 'fm', 1, '2015-02-17 20:50:25'),
(68, 'yami yami', 'frf', 1, '2015-02-18 09:31:56'),
(69, 'just do it', 'sr', 1, '2015-02-18 10:12:26'),
(70, 'deede', 'ss', 1, '2015-02-18 10:20:52'),
(71, 'dd', 'hv1', 1, '2015-02-18 10:30:01'),
(72, 'eat healthy food', 'fp', 1, '2015-02-18 10:49:20'),
(74, 'ITALIAN PIZZA', 'fpi', 1, '2015-02-18 12:18:00'),
(75, 'pasta pasta', 'fp', 1, '2015-02-18 12:41:49'),
(77, 'Divorce Lawyers', 'fd', 1, '2015-02-18 12:51:44'),
(78, 'Vitamin and Mineral', 'hv1', 1, '2015-02-18 12:53:42'),
(79, 'The Best Kebab', 'fk', 1, '2015-02-18 12:57:20'),
(80, 'fry food', 'frf', 1, '2015-02-18 13:00:51'),
(82, ' Discipline Children', 'fc', 1, '2015-02-18 13:12:53');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `menu_link`
--

INSERT INTO `menu_link` (`ml_id`, `title`, `path`, `mm_id`) VALUES
(55, 'Mother', 'healthy-mother110', 1),
(60, 'Thomas page', 'thomas-page115', 3),
(61, 'Thomas second page', 'thomas-second-page116', 3),
(64, 'Pizza', 'welcome-to-the-italian-pizza-kitchen119', 4),
(65, 'Pasta', '30-favoriter-med-pasta120', 4),
(67, 'Divorce', 'introducing-divorce-lawyers-about-to-be-in-love122', 1),
(68, 'Vitamin and Mineral', 'vitamin-and-mineral-supplement-fact-sheets123', 3),
(69, ' Kebab', 'the-best-kebab-recipes-real-simple124', 4),
(70, 'Junk Food', 'the-facts-on-junk-food-marketing-and-kids125', 4),
(72, 'Children', 'six-ways-to-discipline-children-that-work127', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `user_id`, `img_id`, `created`) VALUES
(110, 'Healthy Mother', 'orem ipsum dolor sit amet, consectetur adipiscing elit. Etiam finibus libero quis mattis pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus arcu turpis, sagittis sed fringilla vel, egestas a urna. Praesent ac interdum eros. Proin rhoncus tristique hendrerit. Vestibulum ac magna a nisi lobortis gravida in nec urna. Morbi condimentum pulvinar tortor id cursus. Integer felis magna, consectetur eu viverra nec, maximus at leo. Etiam sagittis tristique gravida. Praesent ipsum massa, faucibus sed felis eu, efficitur aliquet eros. Curabitur leo est, rutrum sed volutpat vel, fermentum non dolor.\n\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Proin auctor sapien magna, ac lobortis justo lobortis et. Duis luctus elit libero, eget hendrerit dui commodo at. Nunc ex lorem, rhoncus vitae diam sit amet, accumsan elementum mi. Aenean tristique blandit ipsum, id volutpat tortor accumsan sit amet. Pellentesque eleifend odio a leo convallis, a elementum magna malesuada. Vestibulum ullamcorper id tortor vel vehicula. Suspendisse sed laoreet mi. Nulla non sollicitudin mi. Etiam vestibulum dignissim nisi id auctor. Donec volutpat commodo elit ac tristique. Proin sed nulla at orci egestas dignissim eget eu justo. Etiam sagittis neque faucibus, ornare felis vitae, pharetra mauris.\n\nEtiam laoreet convallis eros a dapibus. Aliquam orci nibh, interdum sit amet commodo id, dapibus sit amet ex. Pellentesque vel mi ac enim finibus faucibus non nec enim. Fusce et auctor risus, eget pharetra mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin interdum est et ligula ornare fringilla. Nunc porttitor est arcu, vitae tincidunt dui rhoncus eu. Aliquam laoreet venenatis arcu, vitae maximus erat cursus imperdiet. Quisque lobortis tortor quis arcu dapibus varius at sed lectus. Sed viverra varius nisi suscipit fringilla. Cras quam nisi, lacinia nec lorem et, pharetra lacinia erat. Donec sit amet cursus neque, id feugiat lectus.', 1, 65, '2015-02-17 20:50:25'),
(115, 'Thomas page', 'This is the page content. Here we tell people really important things.\n<p>This text was entered inside a paragraph tag.</p>', 1, 70, '2015-02-18 10:20:52'),
(116, 'Thomas second page ', 'This is a line of text. I can continue to write a whole paragraph here and just write and write.\nThen this is another line of text.', 1, 71, '2015-02-18 10:30:01'),
(119, 'WELCOME TO THE ITALIAN PIZZA KITCHEN ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eleifend magna vel fringilla posuere. Cras nec risus a nisi gravida efficitur a venenatis nunc. Duis dapibus imperdiet ex, a vehicula velit commodo accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse vitae augue augue. Vivamus justo ante, sagittis sit amet quam et, egestas fermentum purus. Duis nec sem felis. Nunc dictum nisi a eros malesuada aliquam. Quisque eu justo hendrerit mi fermentum fermentum. Praesent non libero metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam auctor neque id risus lobortis vehicula. Suspendisse tincidunt dictum ultrices. Curabitur tincidunt, dui vel lacinia interdum, augue ex facilisis sem, eget ultricies arcu tortor non metus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis eget suscipit urna.\n\nIn a tortor nibh. Aenean et ex justo. Nam id est vitae urna imperdiet pharetra sit amet vitae ligula. Fusce ornare, massa eget convallis molestie, est dolor varius metus, vitae condimentum augue nisl sollicitudin ex. Suspendisse sed vulputate dui, hendrerit convallis quam. Nunc cursus, nisl eget sodales gravida, est ligula sodales lectus, at eleifend tortor lectus quis orci. Quisque vel rhoncus erat. Curabitur bibendum sed erat non mollis. Curabitur pharetra eros ac gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce mattis vulputate eros, vel efficitur lorem pharetra at.', 1, 74, '2015-02-18 12:18:00'),
(120, '30 favoriter med pasta', 'Fusce posuere turpis ut mauris faucibus, nec accumsan dolor ultricies. Curabitur accumsan purus ut leo dapibus suscipit. Quisque sagittis tempor metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam iaculis odio eu sapien gravida efficitur. Duis interdum ullamcorper posuere. Suspendisse maximus purus sapien, a eleifend enim dapibus in.\n\nProin ut ante diam. Morbi tincidunt et ligula at commodo. Aliquam nec est lacinia, aliquet mauris molestie, pellentesque nisl. Duis a eros a nulla rutrum porttitor et ut lorem. Morbi nec eros tempus, mollis tortor quis, volutpat nulla. Mauris vel dui eu elit hendrerit pharetra. Suspendisse sodales sapien sit amet turpis porttitor imperdiet. Ut eros nisi, lacinia sit amet enim eu, fermentum maximus metus. Maecenas convallis ullamcorper massa, sit amet sagittis nunc accumsan feugiat. Aenean eget euismod magna. Maecenas mi arcu, ultricies in pharetra vel, tristique vitae mauris. Nullam posuere sodales nisl.\n\nEtiam mollis pharetra pulvinar. Suspendisse potenti. Integer tempus eros ac eleifend consequat. Fusce ac iaculis risus. Aliquam vel lectus ac leo tempor condimentum sed quis justo. Maecenas luctus leo eget nibh euismod, a suscipit nulla pretium. Vestibulum sagittis scelerisque libero, nec consectetur augue ullamcorper at. Nam viverra lacus quis elementum cursus. Duis cursus dictum hendrerit. Etiam lacinia, lacus vel suscipit placerat, metus dolor dictum mi, id fermentum quam tellus id nisi. Mauris tristique consectetur eros sed ultrices. Etiam sit amet leo sapien. Mauris dolor tortor, sollicitudin non tortor a, bibendum sodales sem. Nam a maximus dui. Maecenas tristique nisl non accumsan mattis.\n', 1, 75, '2015-02-18 12:41:49'),
(122, 'Introducing Divorce Lawyers (about to be) in Love ', 'In a tortor nibh. Aenean et ex justo. Nam id est vitae urna imperdiet pharetra sit amet vitae ligula. Fusce ornare, massa eget convallis molestie, est dolor varius metus, vitae condimentum augue nisl sollicitudin ex. Suspendisse sed vulputate dui, hendrerit convallis quam. Nunc cursus, nisl eget sodales gravida, est ligula sodales lectus, at eleifend tortor lectus quis orci. Quisque vel rhoncus erat. Curabitur bibendum sed erat non mollis. Curabitur pharetra eros ac gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce mattis vulputate eros, vel efficitur lorem pharetra at.', 1, 77, '2015-02-18 12:51:44'),
(123, 'Vitamin and Mineral Supplement Fact Sheets', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eleifend magna vel fringilla posuere. Cras nec risus a nisi gravida efficitur a venenatis nunc. Duis dapibus imperdiet ex, a vehicula velit commodo accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse vitae augue augue. Vivamus justo ante, sagittis sit amet quam et, egestas fermentum purus. Duis nec sem felis. Nunc dictum nisi a eros malesuada aliquam. Quisque eu justo hendrerit mi fermentum fermentum. Praesent non libero metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam auctor neque id risus lobortis vehicula. Suspendisse tincidunt dictum ultrices. Curabitur tincidunt, dui vel lacinia interdum, augue ex facilisis sem, eget ultricies arcu tortor non metus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis eget suscipit urna.\n\nIn a tortor nibh. Aenean et ex justo. Nam id est vitae urna imperdiet pharetra sit amet vitae ligula. Fusce ornare, massa eget convallis molestie, est dolor varius metus, vitae condimentum augue nisl sollicitudin ex. Suspendisse sed vulputate dui, hendrerit convallis quam. Nunc cursus, nisl eget sodales gravida, est ligula sodales lectus, at eleifend tortor lectus quis orci. Quisque vel rhoncus erat. Curabitur bibendum sed erat non mollis. Curabitur pharetra eros ac gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce mattis vulputate eros, vel efficitur lorem pharetra at.\n\nFusce posuere turpis ut mauris faucibus, nec accumsan dolor ultricies. Curabitur accumsan purus ut leo dapibus suscipit. Quisque sagittis tempor metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam iaculis odio eu sapien gravida efficitur. Duis interdum ullamcorper posuere. Suspendisse maximus purus sapien, a eleifend enim dapibus in.\n\nProin ut ante diam. Morbi tincidunt et ligula at commodo. Aliquam nec est lacinia, aliquet mauris molestie, pellentesque nisl. Duis a eros a nulla rutrum porttitor et ut lorem. Morbi nec eros tempus, mollis tortor quis, volutpat nulla. Mauris vel dui eu elit hendrerit pharetra. Suspendisse sodales sapien sit amet turpis porttitor imperdiet. Ut eros nisi, lacinia sit amet enim eu, fermentum maximus metus. Maecenas convallis ullamcorper massa, sit amet sagittis nunc accumsan feugiat. Aenean eget euismod magna. Maecenas mi arcu, ultricies in pharetra vel, tristique vitae mauris. Nullam posuere sodales nisl.', 1, 78, '2015-02-18 12:53:42'),
(124, 'The Best Kebab Recipes - Real Simple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eleifend magna vel fringilla posuere. Cras nec risus a nisi gravida efficitur a venenatis nunc. Duis dapibus imperdiet ex, a vehicula velit commodo accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse vitae augue augue. Vivamus justo ante, sagittis sit amet quam et, egestas fermentum purus. Duis nec sem felis. Nunc dictum nisi a eros malesuada aliquam. Quisque eu justo hendrerit mi fermentum fermentum. Praesent non libero metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam auctor neque id risus lobortis vehicula. Suspendisse tincidunt dictum ultrices. Curabitur tincidunt, dui vel lacinia interdum, augue ex facilisis sem, eget ultricies arcu tortor non metus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis eget suscipit urna.\n\nIn a tortor nibh. Aenean et ex justo. Nam id est vitae urna imperdiet pharetra sit amet vitae ligula. Fusce ornare, massa eget convallis molestie, est dolor varius metus, vitae condimentum augue nisl sollicitudin ex. Suspendisse sed vulputate dui, hendrerit convallis quam. Nunc cursus, nisl eget sodales gravida, est ligula sodales lectus, at eleifend tortor lectus quis orci. Quisque vel rhoncus erat. Curabitur bibendum sed erat non mollis. Curabitur pharetra eros ac gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce mattis vulputate eros, vel efficitur lorem pharetra at.\n\nFusce posuere turpis ut mauris faucibus, nec accumsan dolor ultricies. Curabitur accumsan purus ut leo dapibus suscipit. Quisque sagittis tempor metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam iaculis odio eu sapien gravida efficitur. Duis interdum ullamcorper posuere. Suspendisse maximus purus sapien, a eleifend enim dapibus in.\n\nProin ut ante diam. Morbi tincidunt et ligula at commodo. Aliquam nec est lacinia, aliquet mauris molestie, pellentesque nisl. Duis a eros a nulla rutrum porttitor et ut lorem. Morbi nec eros tempus, mollis tortor quis, volutpat nulla. Mauris vel dui eu elit hendrerit pharetra. Suspendisse sodales sapien sit amet turpis porttitor imperdiet. Ut eros nisi, lacinia sit amet enim eu, fermentum maximus metus. Maecenas convallis ullamcorper massa, sit amet sagittis nunc accumsan feugiat. Aenean eget euismod magna. Maecenas mi arcu, ultricies in pharetra vel, tristique vitae mauris. Nullam posuere sodales nisl.', 1, 79, '2015-02-18 12:57:20'),
(125, 'The facts on junk food marketing and kids', 'Maecenas sit amet tortor ut ipsum viverra lacinia.\nDonec hendrerit massa eu felis condimentum vehicula vel in sem.\nAenean quis purus in mauris porta rhoncus.\nUt faucibus ante nec tincidunt lacinia.\nFusce feugiat magna vel dolor molestie hendrerit.\nQuisque congue mi quis bibendum feugiat.\nEtiam rhoncus elit in ex sagittis condimentum scelerisque id tortor.\nNam tincidunt enim a lectus ornare interdum.\nMorbi sit amet libero eget lacus sagittis placerat.\nEtiam vel nisl suscipit, luctus diam at, molestie nisi.\nNunc eu felis mattis, mattis diam tincidunt, dictum dolor.\nVivamus molestie enim id nunc consectetur, at auctor leo efficitur.\nSed in ante ut ante consequat imperdiet.\nNam vel odio sit amet elit gravida scelerisque non non dolor.\nDonec gravida mauris non est mattis iaculis.\nProin sed ante dapibus, sagittis velit quis, posuere elit.\nPraesent ac nulla maximus, aliquet risus sed, mollis libero.\nNullam quis ligula auctor mi bibendum faucibus at sed risus.', 1, 80, '2015-02-18 13:00:51'),
(127, 'Six Ways to Discipline Children -- That Work', 'Pellentesque a sodales tellus. Ut tincidunt turpis nec tellus ultricies lacinia. Aenean volutpat ultrices ultricies. Nunc tincidunt congue nibh quis consequat. Donec posuere, nisi imperdiet faucibus iaculis, eros erat cursus mi, in cursus eros ligula eget nisi. Morbi vitae nibh iaculis est interdum dictum fringilla ut felis. Duis id tincidunt ante, eu sodales tortor. Aliquam ut est diam. Etiam augue velit, facilisis vitae velit non, semper maximus urna. Curabitur nibh massa, placerat maximus ex convallis, auctor tincidunt risus. Aenean vitae est vel nunc suscipit egestas. Morbi vehicula odio sit amet diam scelerisque, nec congue turpis gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget fringilla lacus. Aliquam semper ipsum vel velit euismod, malesuada scelerisque ante rhoncus.\n\n1-Etiam quis erat id dolor efficitur facilisis vel ut felis.\n2-Quisque vitae est tempus, porttitor lorem quis, eleifend eros.\n3-Phasellus et enim vitae quam convallis commodo.\n4-Nam convallis felis non enim elementum accumsan.\n5-Aenean ultrices augue ac ex condimentum hendrerit.\n6-Phasellus et enim vitae quam convallis commodo.', 1, 82, '2015-02-18 13:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`aid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`aid`, `path`, `pid`) VALUES
(130, 'healthy-mother110', 110),
(135, 'thomas-page115', 115),
(136, 'thomas-second-page116', 116),
(139, 'welcome-to-the-italian-pizza-kitchen119', 119),
(140, '30-favoriter-med-pasta120', 120),
(142, 'introducing-divorce-lawyers-about-to-be-in-love122', 122),
(143, 'vitamin-and-mineral-supplement-fact-sheets123', 123),
(144, 'the-best-kebab-recipes-real-simple124', 124),
(145, 'the-facts-on-junk-food-marketing-and-kids125', 125),
(147, 'six-ways-to-discipline-children-that-work127', 127);

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
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
MODIFY `mm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_link`
--
ALTER TABLE `menu_link`
MODIFY `ml_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
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
