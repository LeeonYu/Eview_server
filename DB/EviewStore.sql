CREATE DATABASE if not exists `eviewstore` DEFAULT CHARSET=utf8;
USE `eviewstore`;
CREATE TABLE `logininfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `UserName` varchar(16) NOT NULL default '',
  `Password` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `logininfo` (`id`,`UserName`,`Password`) VALUES 
 ('1','admin','admin');
CREATE TABLE `bookinfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Bname` varchar(10) NOT NULL default '',
  `Addtime` varchar(19) NOT NULL default '0000-00-00 00:00:00',
  `Url` varchar(50) NOT NULL default '/raw/0.txt',
  `Kind` varchar(8) NOT NULL default '',
  `Writer` varchar(10) NOT NULL default '匿名',
  `Info` varchar(1000) NOT NULL default 'null',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `bookinfo` VALUES ('1', '论备胎的修养', '2014-02-22 15:51', '/book/1.txt', '言情', '黄尼玛', '著名作家黄尼玛先森讲述了他备胎的一生...');
INSERT INTO `bookinfo` VALUES ('2', '秒速五厘米', '2013-03-12 21:08', '/book/2.txt', '言情', '新海诚', '以一个少年为故事轴心而展开连续3个独立故事的动画短片。小说的时代背景是从1990年前半起至今的日本，通过少年的人生展现东京以及其他地区的变迁。');
INSERT INTO `bookinfo` VALUES ('3', '极品狂少', '2014-05-18 23:01', '/book/3.txt', '玄幻', '我本疯狂', '身世如迷的少年，来到繁华都市，本想偷得浮生半日闲，却发现各方势力像飞蛾扑火一般涌现在他的身边……');
INSERT INTO `bookinfo` VALUES ('4', '全能大叔', '2014-05-19 06:52', '/book/4.txt', '都市', '兵家传人', '训练馆、医院、搏击场，每天三点一线的生活，让高峻饱尝孤独寂寞，也错过了十六年的青春。看着坚硬如钢铁的双拳，上面布满了老茧，也沾满了对手的斑斑血迹，突然间，他感觉累了，想退隐江湖。');
INSERT INTO `bookinfo` VALUES ('5', '光明至尊', '2014-05-19 00:18', '/book/5.txt', '玄幻', '中猴的老湿', '少年执剑，风卷云烟。不控生死，怎逆苍天！我欲成魔，魔心成圣！更迭苍穹，光明之巅！');
INSERT INTO `bookinfo` VALUES ('6', '混在美国当土豪', '2014-05-19 00:18', '/book/6.txt', '都市', '驾雾', '碌碌无为的小职员安峰，在机缘巧合下获得了超级科技和财富，他以制造次世代人造钻石赚（骗）钱为终极目标，漂洋过海，和美国人民打起了交道，由此发生一系列追求梦想，追求自由，改变人生的故事。');
INSERT INTO `bookinfo` VALUES ('7', '末世重生之龙帝', '2012-01-15 10:32', '/book/7.txt', '玄幻', '天不负01', '诡秘狡诈的人性道德！倾国倾城的绝代佳人！激情热血的强者碰撞！大进化时代，强者楚寒逆天归来！');
INSERT INTO `bookinfo` VALUES ('8', '众夫争仙', '2014-05-17 15:20', '/book/8.txt', '言情', '姽婳轻语', '中药师穿越到异世修仙界，成为灵异体质的小庶女，爹不疼娘不爱，姊妹欺！废材变成仙灵体，修习仙法一日千里，驱兽炼药无人能及，成为众仙派抢对象！');
INSERT INTO `bookinfo` VALUES ('9', '天才相师', '2011-12-01 12:22', '/book/9.txt', '都市', '打眼', '打眼心血巨作，神秘的麻衣一脉重现都市，全面阐释玄学相学。');