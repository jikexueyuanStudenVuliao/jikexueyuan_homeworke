-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-07-03 10:16:40
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
(1, '我一哥们结婚了，特别想生个女儿 一次他-冷笑话精选 分享身边的爆笑事儿', '', '特别想生个女儿……一次他玩微信搜索附近的人，有个妹子的个性签名是，谁在举报我，我就咒他没儿子。'),
(2, '高中时候，我们学校分快慢班，学霸一个班，-冷笑话精选 分享身边的爆笑事儿', '', '我们学校分快慢班，学霸一个班，学渣一个班。'),
(3, '朋友昨晚喝醉叫了代驾，路上下车撒尿的功夫-冷笑话精选 分享身边的爆笑事儿', '', '朋友昨晚喝醉叫了代驾，路上下车撒尿的功夫，车子竟然被开走了……走了。幸好车子有定位，最后被追'),
(4, '上次我穿了裙子出去和闺蜜喝咖啡，我们聊到-冷笑话精选 分享身边的爆笑事儿', '', '我们聊到一半闺蜜就盯着我的膝盖看，她说，不红啊，你没和你男朋友试试内个姿势。'),
(5, '楼主一个亲戚，他们一家人在回媳妇娘家的时-冷笑话精选 分享身边的爆笑事儿', '', '送到医院处理伤口缝针以后，他媳妇醒来看到自己脑袋的第一句话是:“我花300元烫的头发没有了”，...'),
(6, '大妈上了空调车投了一块钱。司机说：“空调-冷笑话精选 分享身边的爆笑事儿', '', '........就这样，我们眼巴巴看着大妈花一块坐到了终点站...........。'),
(7, '学渣高考失利，去当兵，新兵连两个月集训后-冷笑话精选 分享身边的爆笑事儿', '', '不，要感谢我的班主任，高中三年，我就没有几天是坐着上课的。');

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
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
