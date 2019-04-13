-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2019 at 02:08 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aubaid`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT 'active=1, inactive=0 ',
  `role` enum('1','2') NOT NULL COMMENT 'super_admin=1, sub_admin=2',
  `last_login` datetime NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `contact_no`, `email`, `password`, `status`, `role`, `last_login`, `create_date`) VALUES
(1, 'Naseem', '9818619835', 'anaseem711@gmail.com', 'MTIzNDU2', '1', '1', '2018-03-06 00:00:00', '2018-03-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` varchar(190) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `url_slug` varchar(200) NOT NULL,
  `description` text,
  `meta_title` varchar(200) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` enum('1','0') NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `parent_id`, `title`, `image`, `url_slug`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `create_date`) VALUES
(1, 0, 'By Code', NULL, 'by-code', '', 'By Code', 'By Code', 'By Code', '1', '2019-04-11 09:51:09'),
(2, 0, 'By Feature', NULL, 'by-feature', NULL, 'By Feature', 'By Feature', 'By Feature', '1', '2019-04-11 10:01:29'),
(3, 0, 'By End User', NULL, 'by-end-user', NULL, 'By End User', 'By End User', 'By End User', '1', '2019-04-11 10:04:18'),
(4, 1, 'A - Table Clocks', NULL, 'a-table-clocks', NULL, 'A - Table Clocks', 'A - Table Clocks', 'A - Table Clocks', '1', '2019-04-11 10:05:00'),
(5, 1, 'B - Office Use Products', NULL, 'b-office-use-products', NULL, 'B - Office Use Products', 'B - Office Use Products', 'B - Office Use Products', '1', '2019-04-11 10:05:29'),
(6, 1, 'D - Photo Frames', NULL, 'd-photo-frames', NULL, 'D - Photo Frames', 'D - Photo Frames', 'D - Photo Frames', '1', '2019-04-11 10:05:59'),
(7, 2, 'AM / FM Radios', NULL, 'am-fm-radios', NULL, 'AM / FM Radios', 'AM / FM Radios', 'AM / FM Radios', '1', '2019-04-11 10:06:24'),
(8, 2, 'Bottle and wine openers', NULL, 'bottle-and-wine-openers', NULL, 'Bottle and wine openers', 'Bottle and wine openers', 'Bottle and wine openers', '1', '2019-04-11 10:06:41'),
(9, 3, 'Architects', NULL, 'architects', NULL, 'Architects', 'Architects', 'Architects', '1', '2019-04-11 10:06:57'),
(10, 3, 'Bankers', NULL, 'bankers', NULL, 'Bankers', 'Bankers', 'Bankers', '1', '2019-04-11 10:07:09'),
(11, 3, 'Businessmen', NULL, 'businessmen', NULL, 'Businessmen', 'Businessmen', 'Businessmen', '1', '2019-04-11 10:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clients`
--

INSERT INTO `tbl_clients` (`id`, `image`) VALUES
(37, '124450619976.png'),
(38, '206972495414.png'),
(39, '765471420993.png'),
(40, '960927459141.jpg'),
(41, '957492407915.jpg'),
(42, '375027941941.jpg'),
(43, '097497054122.jpg'),
(44, '451779249401.jpg'),
(45, '119770494253.jpg'),
(46, '110772445991.png'),
(47, '547024975196.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms`
--

CREATE TABLE `tbl_cms` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image1` varchar(150) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `image6` varchar(100) NOT NULL,
  `image7` varchar(100) NOT NULL,
  `field1` varchar(250) NOT NULL,
  `field2` varchar(250) NOT NULL,
  `field3` varchar(250) NOT NULL,
  `field4` varchar(250) NOT NULL,
  `field5` varchar(250) NOT NULL,
  `field6` varchar(250) NOT NULL,
  `field7` varchar(250) NOT NULL,
  `field8` varchar(250) NOT NULL,
  `field9` varchar(250) NOT NULL,
  `field10` varchar(250) NOT NULL,
  `desc1` text NOT NULL,
  `desc2` text NOT NULL,
  `desc3` text NOT NULL,
  `desc4` text NOT NULL,
  `desc5` text NOT NULL,
  `desc6` text NOT NULL,
  `desc7` text NOT NULL,
  `desc8` text NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `fields` text NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`id`, `title`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`, `field7`, `field8`, `field9`, `field10`, `desc1`, `desc2`, `desc3`, `desc4`, `desc5`, `desc6`, `desc7`, `desc8`, `meta_title`, `meta_keywords`, `meta_description`, `fields`, `status`, `create_date`) VALUES
(1, 'Home', '575197431581.png', '315584990441.jpg', '445144890951.jpg', '644159598047.jpg', '295410485496.jpg', '695594414807.jpg', '', 'About Us', 'Discover Categories', '#', '#', '#', '#', '#', 'Top Products', 'What People are Saying', '', 'Welcome to the newest and most exciting way of discovering fine living, The Style Salad. We grate some exciting home d&eacute;cor, sprinkle stylish stationery to liven up your workstation, toss it with carefully chosen, delectable gourmet food products and surprise recipes, add a few beauty goodies to lend you that additional sparkle, and lo and behold your very own master-curated &lsquo;Style Salad&rsquo; is ready!', 'Every special occasion seems incomplete without gifts. They add charm to celebrations and give the recipient something unique to remember you by.', '', '', '', '', '', '', 'Welcome to CGC', 'Welcome to CGC', 'Welcome to CGC', '{\r\n	\"field1\":{\"title\":\"About Title\",\"type\":\"text\"},\r\n	\"image1\":{\"title\":\"About Image\",\"type\":\"file\"},\r\n	\"desc1\":{\"title\":\"About Content\",\"type\":\"textarea\"},\r\n	\"field2\":{\"title\":\"Heading 1\",\"type\":\"text\"},\r\n	\"image2\":{\"title\":\"Image 1\",\"type\":\"file\"},\r\n	\"field3\":{\"title\":\"Image 1 url\",\"type\":\"text\"},\r\n	\"image3\":{\"title\":\"Image 2\",\"type\":\"file\"},\r\n	\"field4\":{\"title\":\"Image 2 url\",\"type\":\"text\"},\r\n	\"image4\":{\"title\":\"Image 3\",\"type\":\"file\"},\r\n	\"field5\":{\"title\":\"Image 3 url\",\"type\":\"text\"},\r\n	\"image5\":{\"title\":\"Image 4\",\"type\":\"file\"},\r\n	\"field6\":{\"title\":\"Image 4 url\",\"type\":\"text\"},\r\n	\"image6\":{\"title\":\"Image 5\",\"type\":\"file\"},\r\n	\"field7\":{\"title\":\"Image 5 url\",\"type\":\"text\"},\r\n	\"field8\":{\"title\":\"Heading 2\",\"type\":\"text\"},\r\n	\"desc2\":{\"title\":\"Content\",\"type\":\"text\"},\r\n	\"field9\":{\"title\":\"Heading 3\",\"type\":\"text\"}\r\n}', '1', '2019-03-13 00:00:00'),
(2, 'About Us', '837417895457.png', '', '', '', '', '', '', 'ABOUT CGC COMPANY', '', '', '', '', '', '', '', '', '', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\" 1914 translation by H. Rackham \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\" Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\" 1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.', '', '', '', '', '', '', '', 'About Us', 'About Us', 'About Us', '{\r\n	\"field1\":{\"title\":\"About Title\",\"type\":\"text\"},\r\n	\"image1\":{\"title\":\"About Image\",\"type\":\"file\"},\r\n	\"desc1\":{\"title\":\"About Content\",\"type\":\"textarea\"}\r\n}', '1', '2018-03-15 00:00:00'),
(6, 'Products', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Products', 'Products', 'Products', '', '1', '2018-03-15 00:00:00'),
(9, 'Contact Us', '', '', '', '', '', '', '', 'Contact Info', '450 Wilkinson Harbors, New Delhi -110046', '+91 9810100020', 'info@corporategift.com', 'corporategift.com', '', '', '', '', '', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,', '', '', '', '', '', '', '', 'Contact Us', 'Contact Us', 'Contact Us', '{\r\n	\"field1\":{\"title\":\"Heading\",\"type\":\"text\"},\r\n	\"desc1\":{\"title\":\"Content\",\"type\":\"textarea\"},\r\n	\"field2\":{\"title\":\"Address\",\"type\":\"text\"},\r\n	\"field3\":{\"title\":\"Contact No.\",\"type\":\"text\"},\r\n	\"field4\":{\"title\":\"Email Address\",\"type\":\"text\"},\r\n	\"field5\":{\"title\":\"Website Url\",\"type\":\"text\"}\r\n}', '1', '2018-03-15 00:00:00'),
(10, 'Header & Footer content', '', '', '', '', '', '', '', 'https://www.facebook.com', 'https://twitter.com/', 'https://www.instagram.com', 'https://youtube.com/', 'Copyright © 2019 corporategift. All Rights Reserved.', '+91 9810100020', 'info@corporategift.com', '450 Wilkinson Harbors, New Delhi -110046', '', '', '  .', '', '', '.', '', '', '', '', 'Header & Footer content', 'Header & Footer content', 'Header & Footer content', '{\r\n\"field1\":{\"title\":\"Facebook Link\",\"type\":\"text\"},\r\n\"field2\":{\"title\":\"Twitter Link\",\"type\":\"text\"},\r\n\"field3\":{\"title\":\"Instagram Link\",\"type\":\"text\"},\r\n\"field4\":{\"title\":\"Youtube Link\",\"type\":\"text\"},\r\n\"field5\":{\"title\":\"Copy Rights Text\",\"type\":\"text\"},\r\n\"field6\":{\"title\":\"Footer Contact No.\",\"type\":\"text\"},\r\n\"field7\":{\"title\":\"Footer Email\",\"type\":\"text\"},\r\n\"field8\":{\"title\":\"Footer Address\",\"type\":\"text\"}\r\n}', '1', '2018-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `url_slug` varchar(200) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `image` varchar(190) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `product_code` varchar(90) NOT NULL,
  `stock` varchar(90) NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `is_latest` enum('yes','no') NOT NULL DEFAULT 'no',
  `related_products` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `cat_id`, `url_slug`, `title`, `image`, `short_description`, `description`, `product_code`, `stock`, `meta_title`, `meta_keywords`, `meta_description`, `is_latest`, `related_products`, `status`, `create_date`) VALUES
(1, 4, '', 'A02 - Transparent Folding Table Clock', '178945158112.jpg', '', '<table class=\"table table-bordered\">\r\n<tbody>\r\n<tr>\r\n<td>Pcs. per carton</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>Master Carton Dimensions (cm)</td>\r\n<td>42.5 x 38 x 29.5</td>\r\n</tr>\r\n<tr>\r\n<td>Master Carton Weight (Kg)</td>\r\n<td>11</td>\r\n</tr>\r\n<tr>\r\n<td>Product Dimensions (cm)</td>\r\n<td>8.5 x 8 x 2.4</td>\r\n</tr>\r\n<tr>\r\n<td>Product Weight (gms)</td>\r\n<td>67.4</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', 'A02 - Transparent Folding Table Clock', 'A02 - Transparent Folding Table Clock', 'A02 - Transparent Folding Table Clock', 'no', 'null', '1', '2019-04-11 03:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_images`
--

CREATE TABLE `tbl_product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(190) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` enum('1','0') NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`, `description`, `status`, `create_date`) VALUES
(1, 'Polycarbonate Steel Sipper', '474695518983.png', '#', '1', '2018-03-08 08:32:45'),
(3, 'Polycarbonate Steel Sipper', '997831985451.png', '#', '1', '2018-03-21 08:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `sub_title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`id`, `title`, `image`, `sub_title`, `description`, `status`, `create_date`) VALUES
(1, 'Alex Paul', '684993135553.jpg', '', 'Thw process of launching your own design studio or web agency is very time-con-suming There is a lot of preparation required to create notable branding, structure the website, and organize a capivating portfolio', '1', '2019-04-11 02:23:13'),
(2, 'jhon Smith CE', '252554811491.jpg', '', 'Thw process of launching your own design studio or web agency is very time-con-suming There is a lot of preparation required to create notable branding, structure the website, and organize a capivating portfolio', '1', '2019-04-11 02:23:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url_slug` (`url_slug`);

--
-- Indexes for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product_images`
--
ALTER TABLE `tbl_product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
