-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- 主机: sql100.byethost33.com
-- 生成日期: 2018 年 01 月 12 日 08:06
-- 服务器版本: 5.6.35-81.0
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `b33_19049243_yee`
--

-- --------------------------------------------------------

--
-- 表的结构 `company_intro`
--

CREATE TABLE IF NOT EXISTS `company_intro` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `main` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `second` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `third` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `company_intro`
--

INSERT INTO `company_intro` (`c_id`, `main`, `second`, `third`) VALUES
(1, '創見資訊成立於1988年，總部設於台灣，由董事長束崇萬先生一手創立，如今已成為為全球消費性電子與工業用產品領導廠商，擁有專業的研發、生產、業務與行銷團隊，在全球共擁有14個據點。在創見，我們秉持高品質的產品理念，並以客戶為中心，提供最專業的客戶服務，面對日益變化的市場需求，創見有能力迅速做出反應，滿足各式各樣的消費需求。', '創見提供超過2000款產品，包含各式記憶體、記憶卡、隨身碟、音樂播放器、可攜式硬碟、固態硬碟、工業用產品與其他週邊產品，可滿足客戶「一次購足」的需求。面對日新月異的高科技世代，創見憑藉不斷精進的技術創新，引領業界潮流；客戶想得到的，我們就做得到。', '高品質是我們的一貫承諾，創見將全面品質管理的理念貫穿於每個環節，且是台灣第一、世界第二名獲得ISO9001、ISO 14001、QC080000及ISO/TS 16949認證的記憶體品牌。每樣產品均通過嚴苛的儀器測試，每位產線人員都受過專業訓練，以確保所有產品均符合公司嚴格的品質標準。');

-- --------------------------------------------------------

--
-- 表的结构 `link`
--

CREATE TABLE IF NOT EXISTS `link` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `link`
--

INSERT INTO `link` (`l_id`, `title`, `link`, `parent`) VALUES
(2, '工業用潤滑油添加劑', 'www.yahoo.com.tw', 2),
(3, '船舶用潤滑油添加劑', 'www.yahoo.com.tw', 3),
(4, '特殊合成機油添加劑', 'www.yahoo.com.tw', 4),
(5, '專製各類式油精添加劑', 'www.yahoo.com.tw', 5),
(6, '各種金屬加工用油添加劑', 'www.yahoo.com.tw', 6),
(7, '車輛用各種潤滑油添加劑', 'www.yahoo.com.tw', 7),
(8, '清潔劑、除鏽劑、防霧劑', 'www.yahoo.com.tw', 8),
(9, '油精用抗磨損耐極壓添加劑', 'www.yahoo.com.tw', 9),
(10, '各種水性合成切削研磨添加劑', 'www.yahoo.com.tw', 10);

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `message` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=74 ;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `message`, `date`, `ip`, `name`, `mail`, `title`) VALUES
(50, '5646546546', '2016-10-17', '49.158.103.32', '吳彥祖', '03481122222', '123456456465'),
(53, 'aaaaaaaaaaaaa', '2016-10-17', '49.158.103.32', '馬英丸', '123456798', '36465465'),
(61, '123123123123', '2016-10-18', '59.102.172.237', '許睿甄', 'angie199348@hotmail.com', '123123'),
(62, '我好想吃雞排', '2017-03-26', '::1', 'leo', '09123456789', '我想吃雞排');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`n_id`, `title`, `link`, `date`) VALUES
(2, '本公司將參加 2016 年台灣國際工具機展，展出時間 11月23~27日，展位 2A510 (大台中國際會展中心)，歡迎您的蒞臨參觀指教。', 'test.com', '2017-03-21'),
(3, '本公司將參加 2016 年台灣國際工具機展，展出時間 11月23~27日，展位 2A510 (大台中國際會展中心)，歡迎您的蒞臨參觀指教。', 'https://www.google.com.tw/?gfe_rd=cr&ei=Fl7QWKnLKcz48AeYlr6oCw', '2017-03-21');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(20) NOT NULL,
  `intro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image2` longblob NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`p_id`, `title`, `image`, `parent`, `intro`, `image2`) VALUES
(1, '0', '1.jpg', 1, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(11, '商品名稱或標題', '1.jpg', 1, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(12, '商品名稱或標題', '1.jpg', 1, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(13, '商品名稱或標題', '1.jpg', 1, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(14, '商品名稱或標題', '1.jpg', 1, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(15, '商品名稱或標題', '1.jpg', 1, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(16, '商品名稱或標題', '2.jpg', 2, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(17, '商品名稱或標題', '2.jpg', 2, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(18, '商品名稱或標題', '2.jpg', 2, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(19, '商品名稱或標題', '3.jpg', 3, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(20, '商品名稱或標題', '3.jpg', 3, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(21, '商品名稱或標題', '3.jpg', 3, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(22, '商品名稱或標題', '4.jpg', 4, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(23, '商品名稱或標題', '4.jpg', 4, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(24, '商品名稱或標題', '4.jpg', 4, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', ''),
(25, '商品名稱或標題', '4.jpg', 4, '這裡是詳細的商品介紹,最多可以打五十個字,12345678912312312312eqed', '');

-- --------------------------------------------------------

--
-- 表的结构 `qa`
--

CREATE TABLE IF NOT EXISTS `qa` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `qa`
--

INSERT INTO `qa` (`id`, `date`, `title`, `content`) VALUES
(8, '2016-10-19', '付款方式有哪些', '1.	本網使用符合安全認証的歐付寶all Pay 金流系統您可放心，線上刷卡完成後系統亦會立即通知，無需來電告知。<br>\r\n2.	若使用ATM轉帳.匯款完煩請來電049-2380-100告知或+line : @bowei_art 告知亦可  。<br>\r\n※	無論您選何種方式.本公司一律款到出貨，感謝您的配合。<br>'),
(9, '2016-10-19', '禮拜六可以去釣魚嗎', '中央氣象局預報中心主任鄭明典今天傍晚在臉書表示海馬颱風眼牆置換完成，並指出「如果新眼牆中心，就是颱風眼再清澈一些，強度就可能再提升。」<br>\r\n鄭明典今天晚間在臉書以「海馬眼牆置換終於完成」為題撰文表示，清晨海馬颱風經過一處海溫略低的區域，使得新眼牆遲遲無法完整成型，因此颱風強度略有減弱。<br>\r\n他說，下午開始，海馬颱風的新眼牆逐漸組織起來，現在的強度逐漸回復到昨晚最強的狀態。<br>\r\n鄭明典並po圖指出，在色調強化雲圖中，紫色內的白色圓環已經形成。「如果新眼牆中心，就是颱風眼再清澈一些，強度就可能再提升。」<br>\r\n'),
(11, '2016-10-19', '禮拜六可以去釣魚嗎', '中央氣象局預報中心主任鄭明典今天傍晚在臉書表示海馬颱風眼牆置換完成，並指出「如果新眼牆中心，就是颱風眼再清澈一些，強度就可能再提升。」<br>\r\n鄭明典今天晚間在臉書以「海馬眼牆置換終於完成」為題撰文表示，清晨海馬颱風經過一處海溫略低的區域，使得新眼牆遲遲無法完整成型，因此颱風強度略有減弱。<br>\r\n他說，下午開始，海馬颱風的新眼牆逐漸組織起來，現在的強度逐漸回復到昨晚最強的狀態。<br>\r\n鄭明典並po圖指出，在色調強化雲圖中，紫色內的白色圓環已經形成。「如果新眼牆中心，就是颱風眼再清澈一些，強度就可能再提升。」<br>\r\n<a href=''#''>詳細連結</a>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
