-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 03:46 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `summary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `views`, `image`, `body`, `created_at`, `summary`) VALUES
(1, 1, 'This is my first post', 36, 'banner.jpg', 'Content of the first ', '2020-11-27 16:32:40', ''),
(5, 15, '231', 0, 'dao-duc-gia-dinh.png', '231', '0000-00-00 00:00:00', ''),
(9, 15, '213', 0, 'ban.jpg', 'rewrew', '2020-12-04 12:04:42', ''),
(12, 15, '123', 0, 'background.jpg', 'rfd', '2020-12-04 12:16:20', ''),
(13, 18, 'Thông báo lịch học tiếng Anh kỳ Spring 2021', 13, 'alphalegion.jpg', '<p>PH&Ograve;NG TỔ CHỨC V&Agrave; QUẢN L&Yacute; Đ&Agrave;O TẠO TH&Ocirc;NG B&Aacute;O LỊCH HỌC TIẾNG ANH KỲ SPRING 2021</p>\r\n\r\n<p>Chi tiết sinh vi&ecirc;n xem tại link đ&iacute;nh k&egrave;m&nbsp; https://drive.google.com/file/d/1snu2YeegpwdJwy8fMHVMRHeRam09gulc/view?usp=sharing</p>\r\n\r\n<p>v&agrave; lịch học c&aacute; nh&acirc;n của m&igrave;nh tr&ecirc;n hệ thống ap.poly.edu.vn</p>\r\n\r\n<p>Lưu &yacute; đ&acirc;y l&agrave; m&ocirc;n tiếng Anh online sinh vi&ecirc;n kiểm tra email để tham gia nh&oacute;m của giảng vi&ecirc;n v&agrave; nắm được lịch học online, google meet (remote), đăng nhập v&agrave;o cms.poly.edu.vn trước ng&agrave;y 18/1/2021.</p>\r\n\r\n<p>Mọi thắc mắc về lịch học/ đổi lịch sẽ được xử l&yacute; trực tiếp tại c&aacute;c địa điểm sau trong 2 ng&agrave;y 11-12/1/2021:</p>\r\n\r\n<p>Ng&agrave;y 11/1/2021 từ 8h30-17h:</p>\r\n\r\n<p>- Level 1/ Tiếng Anh 1.1 + Level 4/ tiếng Anh 2.2 tại ph&ograve;ng F101</p>\r\n\r\n<p>- Level 2: tiếng Anh 1.2 tại Hội trường to&agrave; P</p>\r\n\r\n<p>- Level 3, tiếng Anh 2.1 tại ph&ograve;ng F102</p>\r\n\r\n<p>Ng&agrave;y 12/1/2021 từ 8h30 -14h00 tại Hội trường v&agrave; quầy dịch vụ sinh vi&ecirc;n: tất cả c&aacute;c level tiếng Anh n&oacute;i tr&ecirc;n.</p>\r\n\r\n<p>Lưu &yacute;: sinh vi&ecirc;n chỉ được đổi ch&eacute;o cho nhau, tức l&agrave; nếu bạn A ở lớp X muốn đổi sang lớp Y th&igrave; cần t&igrave;m bạn B ở lớp Y cũng muốn đổi sang lớp A.</p>\r\n\r\n<p>Nh&agrave; trường chỉ đổi lịch trực tiếp kh&ocirc;ng đổi qua email/ fanpage/ điện thoại tr&aacute;nh nhầm lẫn. Sinh vi&ecirc;n đ&atilde; đổi lịch kh&ocirc;ng được thay đổi về lớp cũ hay chuyển sang lớp kh&aacute;c nữa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Người đăng: yenlh<br />\r\nThời gian: 21:36:21 - 09/01/2021<br />\r\nCập nhật lần cuối bởi yenlh v&agrave;o l&uacute;c 22:13:52 ng&agrave;y 09/01/2021</em></p>', '2021-01-15 08:12:48', 'Thông báo lịch học tiếng Anh kỳ Spring 2021'),
(14, 19, 'Pointer Events & Disabling Current Page Links', 13, 'chaossm.jpg', '<p>It is a long-standing web design standard that the logo in the header area links to the homepage of the site. Another standard is that when displaying the navigation of a site, to highlight in some way the &ldquo;current&rdquo; page, if it is present in the navigation. I think those are great standards. The logo-link thing is so ubiquitous that your users will likely automatically try it if you&rsquo;ve coded it that way or not. The current navigation thing is just good ol&rsquo; horse-sense for grounding a users and making them feel good about their current location in a websites hierarchy.</p>\r\n\r\n<p>But here is another good design standard:&nbsp;<strong>don&rsquo;t have links to the same page you are on, on that page.</strong></p>\r\n\r\n<p>The idea here is twofold:</p>\r\n\r\n<ol>\r\n	<li>When you see a link, it looks like a link, it behaves like a link, that says &ldquo;click this and be taken elsewhere.&rdquo; If the link takes you back to the same page you are on, that&rsquo;s kinda weird.</li>\r\n	<li>It is a waste of server resources to reload a page for no reason.</li>\r\n</ol>\r\n\r\n<p>How can you accomplish this without a bunch of development work and changing markup? CSS of course!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1.wp.com/css-tricks.com/wp-content/csstricks-uploads/disablednav.png?resize=520%2C161\" style=\"height:161px; width:520px\" /><br />\r\n&ldquo;Disabled&rdquo; navigation from a&nbsp;<a href=\"https://css-tricks.com/examples/PreventCurrentPageLinks/\">quick demo</a>.</p>\r\n\r\n<p>The big idea here is that you can tell a link not to behave like a link (do nothing when clicked) using the pointer-events CSS property.</p>\r\n\r\n<p>Body has a unique ID at the homepage:</p>\r\n\r\n<pre>\r\n<code>&lt;body id=&quot;home&quot;&gt;</code></pre>\r\n\r\n<p>Navigation has a matching class name:</p>\r\n\r\n<pre>\r\n<code>&lt;nav&gt;\r\n    &lt;ul&gt;\r\n       &lt;li class=&quot;home&quot;&gt;&lt;a href=&quot;#&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;\r\n       &lt;li class=&quot;about&quot;&gt;&lt;a href=&quot;#&quot;&gt;About&lt;/a&gt;&lt;/li&gt;\r\n       &lt;li class=&quot;clients&quot;&gt;&lt;a href=&quot;#&quot;&gt;Clients&lt;/a&gt;&lt;/li&gt;\r\n       &lt;li class=&quot;contact&quot;&gt;&lt;a href=&quot;#&quot;&gt;Contact Us&lt;/a&gt;&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n&lt;/nav&gt;</code></pre>\r\n\r\n<p>Navigation for home is deactivated only on homepage:</p>\r\n\r\n<pre>\r\n<code>#home nav .home &gt; a {\r\n       pointer-events: none;\r\n       cursor: default;\r\n}</code></pre>\r\n\r\n<p>Wow that was easy, eh? This works in Firefox 3.6+, Safari 3+, and the latest Chrome versions (v5+?). Nothing from Opera or IE yet. But hey, that&rsquo;s pretty sweet for such a little development investment.</p>\r\n\r\n<p>Part of the trick to getting this to work is getting an ID or a class on the body you can work with. If that is a new idea to you, check out&nbsp;<a href=\"https://css-tricks.com/id-your-body-for-greater-css-control-and-specificity/\">this article</a>&nbsp;and&nbsp;<a href=\"https://css-tricks.com/video-screencasts/36-current-nav-highlighting-using-php-to-set-the-body-id/\">this screencast</a>&nbsp;for the basic idea. Also know that a CMS like WordPress has a&nbsp;<tt>body_class();</tt>&nbsp;function which does a great job of providing all the class names you could ever want on the body.</p>\r\n\r\n<p>Thanks to&nbsp;<a href=\"http://www.free-lance.ru/users/izvarinskij\">Ant Gray</a>&nbsp;for the idea!</p>', '2021-01-15 10:02:24', 'Pointer Events & Disabling Current Page Links');

-- --------------------------------------------------------

--
-- Table structure for table `reset_pass`
--

CREATE TABLE `reset_pass` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reset_pass`
--

INSERT INTO `reset_pass` (`id`, `email`, `token`) VALUES
(2, 'lol@gmail.com', '3729e9336b28f1baba14b458ea0c689f5b1583a5700ce5b568f0dbaef64eefa86c85686cfb480da1eed2963046ca6a27df11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(10, 'dary', 'dary@hotmail.com', '$2y$10$5W3ZAgj1UjIvcnTVJ1wnE.ubWx0kfhEng9lgyAq7eeRdR5rDR7sd6', 0),
(11, 'dary06', 'dary@gmail.com', '$2y$10$SlCqsEHmtIpPiIr2eC.tr.S0fuMD8AESxyC.oXhsbSvdf6XZbidLy', 0),
(12, 'lechuhuuha', 'lechuhuuha@gmail.com', '$2y$10$R1xG10U.tkNbxBUWMP6FN.nCcnqCK3eFBqTyXyJ8kLUHfyMhu3.76', 0),
(13, 'longvan', 'thanhtu0904@gmail.com', '$2y$10$AHmD4WEpPkSQMqV7eI3Ste1LwL7g3reTcWXc92..7L5ko4VXcq/Mi', 0),
(14, 'lechuhuuha', 'lechuhuuha@gmail.com', '$2y$10$R1xG10U.tkNbxBUWMP6FN.nCcnqCK3eFBqTyXyJ8kLUHfyMhu3.76', 0),
(15, 'longvanren', 'halchph10019@fpt.edu.vn', '$2y$10$WKhIGM2kkZj12/Yp/nhJ/ueJZ6ZAxAA0XmBEtlWA/jBzBdB4MRWKG', 0),
(16, 'halch', 'halch@inet.vn', '$2y$10$tiTc5shfW0q8p2dMHmiWq.5/0sk/w7sPfnkBPedE/NyT0YdSCxDKS', 0),
(17, 'lol', 'lol@gmail.com', '$2y$10$I/WVibuxoRKASbbfodTJDeSMu2CA.wKOwkTn7mWfkXTEoE0sC2QOS', 0),
(18, 'lchh0412', 'lchh0412@gmail.com', '$2y$10$PH1whWEXmYNh3aQ9CBKCVOrvs2JvAn0Rk5f1nEO5vpjJm3.Aky4La', 1),
(19, 'thanh', 'thanhtu0804@gmail.com', '$2y$10$WaCmPfdsEPM/mb4p/rTDgeBfaiAqXo0Vd4Aaf8woyx2KLgDztkRFy', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_pass`
--
ALTER TABLE `reset_pass`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reset_pass`
--
ALTER TABLE `reset_pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
