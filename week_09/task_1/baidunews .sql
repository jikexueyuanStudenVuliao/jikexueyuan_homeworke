-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-13 23:10:03
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
(1, '台湾导弹发射瞬间画面首度曝光', 'img/2.jpg', ''),
(2, '千余乘客在郑州火车站广场打地铺睡觉', 'img/1.jpg', ''),
(3, '俄制大杀器助阵伊拉克联军收复费卢杰', 'img/7.jpg', ''),
(4, '东莞裸男轻生 凌晨倒挂在医院窗户外', 'img/8.jpg', ''),
(5, '创意摄影：看那些厨房中的悬浮食材', 'img/9.jpg', ''),
(7, ' 俄制大杀器助阵伊拉克联军收复费卢杰', 'img/4.jpg', '');

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
(1, '记得儿子刚出生的那天…护士把儿子从产房抱出来', '', '记得儿子刚出生的那天…护士把儿子从产房抱出来…初为人父那叫一个激动啊…急忙接过儿子…嘴里还习惯性的说着：来，叔叔抱一下，乖…周围立刻一片沉寂…'),
(2, '一对情侣在外边吃饭，女生要男生喂她', '', '一对情侣在外边吃饭，女生要男生喂她，在这时女生问：“除了我，你还喂过谁”？男生深沉而冷静地回答：“我还喂过狗”。'),
(3, '本届奥运会最令我感动的', '', '本届奥运会最令我感动的， 不是那些未得奖牌仍然拼搏的运动员， 而是那些双目失明， 依然坚守在工作岗位的裁判们……'),
(4, '以前做生意的朋友欠了我8万', '', '以前做生意的朋友欠了我8万！一直没有消息！电话打不通！在逃避！就刚刚我带着律师来他家！见了他父母！我拿出了欠条（复印件）！她母亲迅雷不及掩耳盗铃之势撕了、吃了！我和律师懵了！然后我又拿了两张出来！这回他母亲懵了！'),
(5, '有时候真是不能理解女人的思维', '', '有时候真是不能理解女人的思维，例如：女人总是想尽办法不让自己的老公有私房钱，却在所有的节日里幻想自己能收到一份惊喜的礼物。还能再无耻一点嘛？'),
(6, '“自己”这个东西是看不见的', '', '“自己”这个东西是看不见的，撞上一些别的什么，反弹回来，才会了解“自己”。所以与很强的东西、可怕的东西、水准很高的东西相碰撞，然后才知道自己是什么，这才是自我。'),
(7, '“自己”这个东西是看不见的', '', '“自己”这个东西是看不见的，撞上一些别的什么，反弹回来，才会了解“自己”。所以与很强的东西、可怕的东西、水准很高的东西相碰撞，然后才知道自己是什么，这才是自我。');

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
(7, '金山软件放弃世纪互联私有化：雷军系话语权不敌清华系', 'img/10.jpg', '1分钟前'),
(8, '一卡刷遍陆海空！国家智能交通实施方案详解', 'img/4.jpg', '1小时前'),
(9, '企业因商标近似被不予注册 起诉国家商评委	', 'img/1.jpg	', '1年前');

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
(2, '纳德拉：微软不会因英国脱欧而停止对英投资l', 'img/7.jpg', '30分钟前'),
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
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `jokes`
--
ALTER TABLE `jokes`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `recommend`
--
ALTER TABLE `recommend`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动', AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `tec`
--
ALTER TABLE `tec`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
