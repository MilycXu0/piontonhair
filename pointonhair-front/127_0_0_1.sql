-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-03-12 07:08:40
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haircut`
--
CREATE DATABASE IF NOT EXISTS `haircut` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `haircut`;

-- --------------------------------------------------------

--
-- 表的结构 `hairstyle`
--

CREATE TABLE `hairstyle` (
  `hid` int(11) NOT NULL,
  `hairname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `hairsex` int(1) NOT NULL,
  `imgaddress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `hairstyle`
--

INSERT INTO `hairstyle` (`hid`, `hairname`, `hairsex`, `imgaddress`) VALUES
(2, '男士发型1', 0, 'hair1.jpg'),
(4, '男士发型3', 0, 'hair3.jpg'),
(5, '男士发型4', 0, 'hair4.jpg'),
(7, '男士发型6', 0, 'hair6.jpg'),
(8, '女士发型1', 1, 'hair7.jpg'),
(9, '女士发型5', 1, 'hair11.jpg'),
(10, '女士发型2', 1, 'hair8.jpg'),
(11, '女士发型3', 1, 'hair9.jpg'),
(12, '女士发型4', 1, 'hair10.jpg'),
(13, '女士发型6', 1, 'hair12.jpg'),
(14, '男士发型2', 0, 'hair2.jpg'),
(15, '男士发型5', 0, 'hair5.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `mid` int(11) NOT NULL,
  `newstitle` varchar(30) NOT NULL,
  `newsdate` datetime NOT NULL,
  `newsauthor` varchar(8) NOT NULL,
  `newscontent` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`mid`, `newstitle`, `newsdate`, `newsauthor`, `newscontent`) VALUES
(2, '标题名2长长长长一点', '2017-03-08 11:32:30', '作者1', '<p style="border: 0px; margin: 0px; padding: 10px 0px 20px; font-size: 16px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; line-height: 30px; widows: 1;">而在21日举行的中国外交部例行记者会上，针对媒体提到的中国“限韩令”，外交部发言人给出回应。中国外交部发言人耿爽表示：首先，我没有听说所谓的“限韩令”。</p>\r\n<p style="border: 0px; margin: 0px; padding: 10px 0px 20px; font-size: 16px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; line-height: 30px; widows: 1;">　　第二，中方对中韩之间的人文交流一直持积极态度。但相信大家也能理解，两国之间的人文交流是需要有民意基础的。</p>\r\n<p style="border: 0px; margin: 0px; padding: 10px 0px 20px; font-size: 16px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; line-height: 30px; widows: 1;">　　第三，中方坚决反对美国在韩国部署“萨德”反导系统，这一立场也是众所周知的。中国民众也对此表达了不满，相信有关方面应该注意到了这种情绪。</p>\r\n<p style="border: 0px; margin: 0px; padding: 10px 0px 20px; font-size: 16px; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; line-height: 30px; widows: 1;">　　韩国政府一相关人士22日表示，部分韩流演出在中国被取消，当务之急是了解确切情况，韩政府正密切关注相关动向。该人士就 “限韩令”消息说道，尚不清楚这是中国官方行为还是民间措施，待了解情况后再做应对。</p>'),
(3, '标题名3长长长一点', '2017-03-01 12:20:18', '作者2', '<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">【环球网快讯 记者 赵衍龙】韩联社3月6日报道，韩国亲信门独检组6日公布最终调查结果，认定总统朴槿惠与亲信门核心涉案人崔顺实合谋从三星集团收受贿赂430亿韩元(约合人民币2.56亿元)。</p>\r\n<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">独检组表示，2015年朴槿惠大力支持三星物产与第一毛织合并，三星以此为代价向崔顺实及其掌控的Mir和K体育财团提供巨额资金。</p>\r\n<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">独检组还表示，崔顺实曾多次为朴槿惠安排“注射阿姨”(对上门注射针剂的女性的通俗叫法)等非正式诊疗，青瓦台医疗系统实则处于“崩溃”状态。</p>'),
(4, '标题名3长长长一点4', '2017-03-14 10:12:15', '作者3', '<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">3月6日，国务院新闻办公室举行国务院政策例行吹风会。会上，中移动、中国电信、中国联通三大运营商表示，今年10月1日起将全面实施取消手机国内长途和漫游费。三大运营商贯彻落实李克强总理《政府工作报告》，对下一步工作进行介绍。</p>\r\n<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">中国移动表示，在提网速方面，一是围绕客户感知，持续打造精品4G移动宽带网。在完善覆盖水平基础上，重点保障和优先解决高速度、高流量、高层建筑等特殊场景下用户感知问题。二是加快提速进程，打造高品质有线宽带网络。新建宽带全部采用光纤到户。抓紧推进光纤到楼存量用户提速改造，打造“百兆能力、千兆示范”的有线宽带网络。三是履行社会责任，推进电信普遍服务。将电信普遍服务工程所需资金纳入年度投资计划，保障资金投入。切实加强工程建设、政府补贴资金等规范管理，积极推进建设工作，切实提升农村及边远地区信息化水平，缩小数字鸿沟。</p>'),
(5, '标题名5长长长一点4', '2017-03-01 06:15:27', '作者4', '<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">降网费方面，一是尽快制定具体实施方案，加快完成相关业务支撑系统的改造，加强宣传和客户沟通，10月1日起全面取消国内手机长途漫游费。二是降低国际长途资费。下调重点方向直拨国际长途资费。三是降低企业接入专线价格。推出“双创宽带”产品和优惠套餐，降低“双创”企业互联网接入成本。四是下调“一带一路”国家语音和流量漫游资费，将“一带一路”沿线全部64个国家和方向的漫游语音资费下调至0.99元/分钟。</p>\r\n<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">中国联通表示，将认真落实提速降费工作部署，强化创新与合作力度，大幅度提高流量消费感知，大力扶持双创企业，积极助力实体经济发展。</p>'),
(6, '标题名6长长长一点4', '2017-03-21 14:34:00', '作者5', '<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">一是固网宽带带宽翻番，实现“宽上加宽”。在大中城市有高带宽业务需求的区域，将目前的100兆接入能力提高到200M及以上，实现带宽翻番。积极开展千兆业务试点，打造千兆示范区，以更加宽广的信息高速公路支撑“大众创业、万众创新”。</p>\r\n<p class="text" style="margin: 0px 0px 28px; padding: 0px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; font-size: 16px; line-height: 28px; widows: 1; text-indent: 2em;">二是4G网络速率翻番，实现“快上加快”。实施精准建设，推进无线网络提质增效，改善覆盖质量，扩大覆盖范围，提升网络体验，对重点场景、热点区域，将峰值速率由300Mbps提升至600Mbps，实现速率翻番，保持网络速率感知的领先位置。</p>');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'mmmmmmmm', 'qweasd0', 'aaaaaa@qq.com'),
(2, 'dammmmas', 'qweasd0', 'huihiuuhihgy@qq.com'),
(3, 'qwqqq', 'qweasd0', 'awdad@qq.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hairstyle`
--
ALTER TABLE `hairstyle`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `hairstyle`
--
ALTER TABLE `hairstyle`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 表的结构 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 表的结构 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 表的结构 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 表的结构 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- 表的结构 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 表的结构 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 表的结构 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 转存表中的数据 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"haircut","table":"hairstyle"},{"db":"haircut","table":"news"},{"db":"haircut","table":"users"}]');

-- --------------------------------------------------------

--
-- 表的结构 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 表的结构 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 表的结构 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 转存表中的数据 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-03-03 01:59:13', '{"lang":"zh_CN","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- 表的结构 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 表的结构 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `simple5`
--
CREATE DATABASE IF NOT EXISTS `simple5` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `simple5`;

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

CREATE TABLE `department` (
  `did` int(2) NOT NULL,
  `department` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `department`
--

INSERT INTO `department` (`did`, `department`) VALUES
(1, 'Math'),
(2, 'Computer Science'),
(3, 'Statistics');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `did` int(2) DEFAULT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sid`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
