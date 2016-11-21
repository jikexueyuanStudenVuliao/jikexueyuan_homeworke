-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-05 13:36:30
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baidunews`
--

-- --------------------------------------------------------

--
-- 表的结构 `imags`
--

CREATE TABLE `imags` (
  `newsId` int(11) NOT NULL,
  `newsTitle` varchar(100) NOT NULL,
  `newsImg` varchar(200) NOT NULL,
  `newsContent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `imags`
--

INSERT INTO `imags` (`newsId`, `newsTitle`, `newsImg`, `newsContent`) VALUES
(1, '台湾导弹发射瞬间画面首度曝光', 'img/4.jpg', ''),
(2, '千余乘客在郑州火车站广场打地铺睡觉', 'img/1.jpg', ''),
(3, '俄制大杀器助阵伊拉克联军收复费卢杰', 'img/7.jpg', ''),
(4, '东莞裸男轻生 凌晨倒挂在医院窗户外', 'img/8.jpg', ''),
(5, '创意摄影：看那些厨房中的悬浮食材', 'img/9.jpg', ''),
(6, '广西一汽车侧翻后 司机和乘客拍照留念', 'img/2.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `jokes`
--

CREATE TABLE `jokes` (
  `newsId` int(11) NOT NULL,
  `newsTitle` varchar(100) NOT NULL,
  `newsImg` varchar(200) NOT NULL,
  `newsContent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jokes`
--

INSERT INTO `jokes` (`newsId`, `newsTitle`, `newsImg`, `newsContent`) VALUES
(1, '考试前几分钟，老师什么都没来，旁边的一个-冷笑话精选 分享身边的爆笑事儿', '', '老师什么都没来，旁边的一个有口音的男同学和我说，咱俩作弊吧，要不你抄我，要不我抄你，四周哄笑，...'),
(2, '初中的时候学习比较好，和另外一个同学去帮-冷笑话精选 分享身边的爆笑事儿', '', '老师脸红了有木有……。'),
(3, '我妈说 闺女 你要是能瘦点就好看了 我白-冷笑话精选 分享身边的爆笑事儿', '', '我妈说 闺女 你要是能瘦点就好看了 我白了她一眼 我没瘦过嘛 我妈想了想 哦刚出生的时候 又黑又'),
(4, '记得有一年回家，我爸妈做了一桌好菜，边吃-冷笑话精选 分享身边的爆笑事儿', '', '记得有一年回家，我爸妈做了一桌好菜，边吃边说:吃啊！就当自己家！我夹鸡腿的手顿时抖了一'),
(5, '作为一个销售人员，最痛苦的就是月底盘库的-冷笑话精选 分享身边的爆笑事儿', '', '作为一个销售人员，最痛苦的就是月底盘库的时候。。。尼玛怎么盘都是错的。。。以至于每个月底我都一...'),
(6, '跟哥们儿在健身房锻炼，从我们面前突然走过-冷笑话精选 分享身边的爆笑事儿', '', '跟哥们儿在健身房锻炼，从我们面前突然走过一个妹子，紧身运动服，呈现出她妖娆的身材，那叫一个性、感。'),
(7, '作为一个销售人员，最痛苦的就是月底盘库的-冷笑话精选 分享身边的爆笑事儿', '', '作为一个销售人员，最痛苦的就是月底盘库的时候。。。尼玛怎么盘都是错的。。。以至于每个月底我都一...'),
(8, '作为一个销售人员，最痛苦的就是月底盘库的时候。。。尼玛怎么盘都是错的。。。以至于每个月底我都一...', '', '作为一个销售人员，最痛苦的就是月底盘库的时候。。。尼玛怎么盘都是错的。。。以至于每个月底我都一...'),
(9, '作为一个销售人员，最痛苦的就是月底盘库的时候。。。尼玛怎么盘都是错的。。。以至于每个月底我都一...', '', '作为一个销售人员，最痛苦的就是月底盘库的时候。。。尼玛怎么盘都是错的。。。以至于每个月底我都一...');

-- --------------------------------------------------------

--
-- 表的结构 `recommend`
--

CREATE TABLE `recommend` (
  `newsId` int(11) NOT NULL COMMENT '自动',
  `newsTitle` varchar(100) NOT NULL,
  `newsImg` varchar(200) NOT NULL,
  `newsContent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `recommend`
--

INSERT INTO `recommend` (`newsId`, `newsTitle`, `newsImg`, `newsContent`) VALUES
(1, '建党95周年庆祝大会举行 习近平发表重要讲话', 'img/4.jpg', '1天前'),
(2, '曝森林狼追05年榜眼 黄蜂恐步开拓者去年后尘', 'img/2.jpg', '1天前'),
(3, '“罢免万科董事会”提案被否 华润3人投反对票', 'img/6.jpg', '1小时前'),
(4, '企业因商标近似被不予注册 起诉国家商评委', 'img/8.jpg', '2分钟前'),
(5, '我国将进一步查处网络传销', 'img/4.jpg', '1分钟前'),
(6, '乐视汽车首轮融资遇冷 “贾布斯”吹过的牛能不能实现？', 'img/3.jpg', '3分钟前'),
(7, '金山软件放弃世纪互联私有化：雷军系话语权不敌清华系', 'img/10.jpg', '3分钟前');

-- --------------------------------------------------------

--
-- 表的结构 `tec`
--

CREATE TABLE `tec` (
  `newsId` int(11) NOT NULL,
  `newsTitle` varchar(100) NOT NULL,
  `newsImg` varchar(200) NOT NULL,
  `newsContent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tec`
--

INSERT INTO `tec` (`newsId`, `newsTitle`, `newsImg`, `newsContent`) VALUES
(1, '想买惠普Elite X3手机、PC？Win10设备租赁是个好办法', 'img/6.jpg', '1天前'),
(2, '纳德拉：微软不会因英国脱欧而停止对英投资', 'img/7.jpg', '30分钟前'),
(3, '华硕ZenFone Zoom/Selfie获安卓6.0更新', 'img/11.jpg', '1小时前'),
(4, '专家警告：机器人不加控制会变得像"疯狗"', 'img/7.jpg', '25分钟前'),
(5, '中国手机致命危机：尼日利亚货币崩盘', 'img/9.jpg', '6分钟前'),
(6, '特斯拉出人命，黑客都开挂，硅谷还好吗？ | 硅谷锋向周刊', 'img/1.jpg', '6分钟前'),
(7, '纳德拉：微软不会因英国脱欧而停止对英投资', 'img/11.jpg', '23分钟前');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `imags`
--
ALTER TABLE `imags`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `jokes`
--
ALTER TABLE `jokes`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `recommend`
--
ALTER TABLE `recommend`
  ADD PRIMARY KEY (`newsId`),
  ADD KEY `newsTitle` (`newsTitle`);

--
-- Indexes for table `tec`
--
ALTER TABLE `tec`
  ADD PRIMARY KEY (`newsId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `imags`
--
ALTER TABLE `imags`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `jokes`
--
ALTER TABLE `jokes`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- 使用表AUTO_INCREMENT `recommend`
--
ALTER TABLE `recommend`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动', AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `tec`
--
ALTER TABLE `tec`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
