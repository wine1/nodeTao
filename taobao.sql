/*
MySQL Data Transfer
Source Host: localhost
Source Database: taobao
Target Host: localhost
Target Database: taobao
Date: 2019/2/20 17:49:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(11) CHARACTER SET latin1 NOT NULL,
  `goodid` int(11) NOT NULL,
  `goodamount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`city`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `shopid` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(255) NOT NULL,
  `goodid` int(11) NOT NULL,
  `goodamount` int(11) NOT NULL,
  `orderid` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for save
-- ----------------------------
DROP TABLE IF EXISTS `save`;
CREATE TABLE `save` (
  `id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) DEFAULT NULL,
  `issave` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` char(255) CHARACTER SET latin1 NOT NULL,
  `password` char(255) CHARACTER SET latin1 NOT NULL,
  `telephone` char(255) CHARACTER SET latin1 DEFAULT NULL,
  `image` char(255) CHARACTER SET latin1 DEFAULT NULL,
  `address` char(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `carts` VALUES ('2', '123', '13', '1');
INSERT INTO `carts` VALUES ('3', '123', '10', '1');
INSERT INTO `carts` VALUES ('4', '123', '17', '1');
INSERT INTO `carts` VALUES ('5', '123', '11', '5');
INSERT INTO `carts` VALUES ('7', 'yubowen', '12', '3');
INSERT INTO `carts` VALUES ('8', 'yubowen', '19', '2');
INSERT INTO `carts` VALUES ('9', 'yubowen', '9', '3');
INSERT INTO `carts` VALUES ('14', 'haha', '20', '1');
INSERT INTO `city` VALUES ('1', '');
INSERT INTO `goods` VALUES ('6', '2018韩版新款网红高跟鞋秋季百搭女单鞋 英伦复古方头粗跟学院', '73.00', '//img.alicdn.com/bao/uploaded/i3/2884121096/O1CN011Jy0XMl46DKOcbx_!!2884121096.jpg_40x40.jpg', '0', null);
INSERT INTO `goods` VALUES ('7', '兔毛毛拖鞋女秋2018新款韩版真毛交叉时尚平底外穿百搭秋季女凉拖', '78.00', '//img.alicdn.com/bao/uploaded/i3/2884121096/O1CN011Jy0XO6gEuJ7Ju7_!!2884121096.jpg_40x40.jpg', '1', null);
INSERT INTO `goods` VALUES ('8', '2018新款韩国女鞋方头单鞋女平底浅口平跟复古奶奶鞋简约百搭春季', '69.00', '//img.alicdn.com/bao/uploaded/i4/2884121096/TB2gF2wbmtYBeNjSspkXXbU8VXa_!!2884121096.jpg_40x40.jpg', '1', null);
INSERT INTO `goods` VALUES ('9', 'X.KuGua / 2018秋季新款粗跟单鞋浅口女鞋方头复古奶奶鞋工作鞋', '72.00', '//img.alicdn.com/bao/uploaded/i1/2884121096/TB2.2GCj_mWBKNjSZFBXXXxUFXa_!!2884121096.jpg_40x40.jpg', '1', null);
INSERT INTO `goods` VALUES ('10', '18新款韩国女鞋方头单鞋女平底蝴蝶结复古奶奶鞋简约百搭春季软底', '65.00', '//img.alicdn.com/bao/uploaded/i1/2884121096/TB2gY4UhSFjpuFjSszhXXaBuVXa_!!2884121096.jpg_40x40.jpg', '1', null);
INSERT INTO `goods` VALUES ('11', '包包女2018新款潮链条单肩斜挎包韩版百搭简约小挎包森系小方包', '116.00', '//img.alicdn.com/bao/uploaded/i2/278238551/TB2eTL5ziOYBuNjSsD4XXbSkFXa_!!278238551.jpg_40x40.jpg', '2', null);
INSERT INTO `goods` VALUES ('12', '包包女2018夏季新款潮时尚韩版百搭小香风菱格链条单肩斜挎流浪包', '119.00', '//img.alicdn.com/bao/uploaded/i2/278238551/TB2uBIYFHuWBuNjSszgXXb8jVXa_!!278238551.jpg_40x40.jpg', '2', null);
INSERT INTO `goods` VALUES ('13', 'chic包包女2018夏季新款潮手提包韩版ins帆布包购物袋单肩包大包', '125.00', '//img.alicdn.com/bao/uploaded/i1/278238551/TB2PEAqkY3nBKNjSZFMXXaUSFXa_!!278238551.jpg_40x40.jpg', '2', null);
INSERT INTO `goods` VALUES ('14', '时尚港风包包单肩包包女2018新款潮韩版百搭斜挎包宽肩带水桶包', '119.00', '//img.alicdn.com/bao/uploaded/i1/278238551/TB22WM0pcUrBKNjSZPxXXX00pXa_!!278238551.jpg_40x40.jpg', '2', null);
INSERT INTO `goods` VALUES ('15', 'chic大包包女2018新款潮菱格链条包韩版百搭单肩斜挎包时尚绣线包', '119.00', '//img.alicdn.com/bao/uploaded/i4/278238551/TB27KAUpcUrBKNjSZPxXXX00pXa_!!278238551.jpg_40x40.jpg', '2', null);
INSERT INTO `goods` VALUES ('16', 'A7seven 黑色小V领百褶长袖连衣裙女秋季2018新款打底长裙小黑裙', '99.00', '//gdp.alicdn.com/imgextra/i2/64980047/T2XUUpXhhXXXXXXXXX-64980047.gif', '3', null);
INSERT INTO `goods` VALUES ('17', 'A7seven 学院风拼色V领针织马甲女秋冬2018新款宽松慵懒毛线背心', '99.00', '//img.alicdn.com/bao/uploaded/i3/883696985/TB2egO1orsrBKNjSZFpXXcXhFXa_!!883696985.jpg_40x40.jpg', '3', null);
INSERT INTO `goods` VALUES ('18', 'A7seven 复古格子高腰半身裙女秋季2018新款百搭包臀裙一步裙短裙', '89.00', '//img.alicdn.com/bao/uploaded/i2/883696985/TB2vhqzorArBKNjSZFLXXc_dVXa_!!883696985.jpg_40x40.jpg', '3', null);
INSERT INTO `goods` VALUES ('19', 'A7seven 复古百搭牛仔外套女秋季2018新款宽松显瘦休闲夹克衫上衣', '149.00', '//img.alicdn.com/bao/uploaded/i2/883696985/TB2Xp1borZnBKNjSZFrXXaRLFXa_!!883696985.jpg_40x40.jpg', '3', null);
INSERT INTO `goods` VALUES ('20', 'A7seven 破洞宽松oversize白色长袖T恤女秋冬韩版百搭圆领打底衫', '69.00', '//img.alicdn.com/bao/uploaded/i1/883696985/TB2T5ngoaAoBKNjSZSyXXaHAVXa_!!883696985.jpg_40x40.jpg', '3', null);
INSERT INTO `goods` VALUES ('21', '网红同款牛仔裤女春秋2018新款韩版chic风裤子宽松高腰原宿直筒裤', '40.00', '//amos.alicdn.com/online.aw?v=2&uid=%E5%9C%A8%E5%81%9A%E4%B8%80%E4%BC%9A%3A%E4%BC%81%E9%B9%85&site=cntaobao&s=2&charset=utf-8', '3', null);
INSERT INTO `goods` VALUES ('22', '秋装2018新款韩版chic早秋上衣慵懒原宿风长袖宽松短款牛仔外套女', '55.00', '//amos.alicdn.com/online.aw?v=2&uid=%E5%9C%A8%E5%81%9A%E4%B8%80%E4%BC%9A%3A%E4%BC%81%E9%B9%85&site=cntaobao&s=2&charset=utf-8', '3', null);
INSERT INTO `goods` VALUES ('23', '初秋套装女秋装2018新款韩版chic早秋港味上衣裙子网红时尚两件套', '30.00', '//amos.alicdn.com/online.aw?v=2&uid=%E5%9C%A8%E5%81%9A%E4%B8%80%E4%BC%9A%3A%E4%BC%81%E9%B9%85&site=cntaobao&s=2&charset=utf-8', '3', null);
INSERT INTO `goods` VALUES ('24', '原宿风外套女春秋2018新款韩版chic早秋上衣bf宽松中长款工装风衣', '70.00', '//amos.alicdn.com/online.aw?v=2&uid=%E5%9C%A8%E5%81%9A%E4%B8%80%E4%BC%9A%3A%E4%BC%81%E9%B9%85&site=cntaobao&s=2&charset=utf-8', '3', null);
INSERT INTO `goods` VALUES ('25', '早秋女神两件套装2018新款韩版衣服网红毛衣背心裙子时尚两件套女', '26.00', '//amos.alicdn.com/online.aw?v=2&uid=%E5%9C%A8%E5%81%9A%E4%B8%80%E4%BC%9A%3A%E4%BC%81%E9%B9%85&site=cntaobao&s=2&charset=utf-8', '3', null);
INSERT INTO `goods` VALUES ('26', 'chic早秋上衣慵懒风秋装2018新款韩版宽松pp home卫衣女潮ins薄款', '40.00', '//amos.alicdn.com/online.aw?v=2&uid=%E5%9C%A8%E5%81%9A%E4%B8%80%E4%BC%9A%3A%E4%BC%81%E9%B9%85&site=cntaobao&s=2&charset=utf-8', '4', null);
INSERT INTO `goods` VALUES ('27', 'ins超火的上衣秋天长袖学生2018新款韩版pp home早秋卫衣女潮宽松', '38.00', '//img.alicdn.com/bao/uploaded/i4/706619803/TB29VqgIACWBuNjy0FaXXXUlXXa_!!706619803.jpg_40x40.jpg', '4', null);
INSERT INTO `goods` VALUES ('28', '怪味少女初秋长袖上衣女装2018新款韩版宽松条纹T恤网红同款衣服', '43.00', '//img.alicdn.com/bao/uploaded/i3/706619803/TB2qg82G7CWBuNjy0FaXXXUlXXa_!!706619803.jpg_40x40.jpg', '5', null);
INSERT INTO `goods` VALUES ('29', '2018新款韩版内搭针织打底衫性感上衣短款黑色小吊带背心女夏外穿', '20.00', '//img.alicdn.com/bao/uploaded/i1/706619803/TB2I0FSsaQoBKNjSZJnXXaw9VXa_!!706619803.jpg_40x40.jpg', '4', null);
INSERT INTO `goods` VALUES ('30', '秋天上衣女2018新款韩版chic早秋打底衫慵懒宽松衣服长袖T恤学生', '30.00', '//img.alicdn.com/bao/uploaded/i4/706619803/TB214MDryMnBKNjSZFzXXc_qVXa_!!706619803.jpg_40x40.jpg', '6', null);
INSERT INTO `goods` VALUES ('31', '持久！哑光唇釉抖音烂番茄色不脱色保湿韩国防水狗口红限量学生款', '48.00', '//img.alicdn.com/bao/uploaded/i1/2900327135/TB2BNflrKySBuNjy1zdXXXPxFXa_!!2900327135.jpg_40x40.jpg', '7', null);
INSERT INTO `goods` VALUES ('32', '磁石颜九车厘子限高颜值捡漏姨妈色德国小众学生款女抖音同款口红', '46.00', '//img.alicdn.com/bao/uploaded/i3/2900327135/TB2G3pDq4SYBuNjSspjXXX73VXa_!!2900327135.jpg_40x40.jpg', '7', null);
INSERT INTO `goods` VALUES ('33', '男友看不出的伪素颜棕色铅笔胶笔网红眼线笔女防水防汗不脱色持久', '38.00', '//img.alicdn.com/bao/uploaded/i2/2900327135/TB2jfhpX_qWBKNjSZFAXXanSpXa_!!2900327135.jpg_40x40.jpg', '7', null);
INSERT INTO `goods` VALUES ('34', '小白玉大理石唇膏女德国小众学生款的店限量同款捡漏抖音颜九口红', '49.00', '//img.alicdn.com/bao/uploaded/i4/2900327135/O1CN0122ZsNh158Qfj83K_!!2900327135.jpg_40x40.jpg', '7', null);
INSERT INTO `goods` VALUES ('35', 'Flower彩色防水防汗不脱色持久不晕染蓝色内眼线笔眼线液笔女', '38.00', '//img.alicdn.com/bao/uploaded/i4/2900327135/TB2cnLdfBTH8KJjy0FiXXcRsXXa_!!2900327135.jpg_40x40.jpg', '7', null);
INSERT INTO `goods` VALUES ('36', '日本Lucky Trendy素肌双眼皮贴蕾丝网状单面肤色防水自然隐形神器', '19.50', '//img.alicdn.com/bao/uploaded/i4/1078678229/TB2MajxqOCYBuNkHFCcXXcHtVXa_!!1078678229.jpg_40x40.jpg', '8', null);
INSERT INTO `goods` VALUES ('37', '日本Yanagiya柳屋生发液头发增长液防脱发固发生发滋养精华密发女', '89.00', '//img.alicdn.com/bao/uploaded/i1/1078678229/TB2HRZmlFooBKNjSZPhXXc2CXXa_!!1078678229.jpg_40x40.jpg', '8', null);
INSERT INTO `goods` VALUES ('38', '日本进口Unicharm尤妮佳1/2超省水化妆棉40枚 三分之一卸妆棉32枚', '15.90', '//img.alicdn.com/bao/uploaded/i4/1078678229/TB2YGMBX7fb_uJkHFNRXXc3vpXa_!!1078678229.jpg_40x40.jpg', '8', null);
INSERT INTO `goods` VALUES ('39', '日本原装资生堂修眉刀刮眉刀剃眉刀新手适用安全专业女用3支套装', '19.90', '//img.alicdn.com/bao/uploaded/i4/1078678229/TB28HTOdb_I8KJjy1XaXXbsxpXa_!!1078678229.jpg_40x40.jpg', '8', null);
INSERT INTO `goods` VALUES ('40', '日本CEZANNE倩丽倩诗丽透明感裸妆保湿素肌定妆补妆粉饼SPF28', '46.00', '//img.alicdn.com/bao/uploaded/i3/1078678229/TB2uJ56JHGYBuNjy0FoXXciBFXa_!!1078678229.jpg_40x40.jpg', '8', null);
INSERT INTO `goods` VALUES ('41', '兰若庭汉服太平有象秋冬圈金立领斜襟长袄', '49.00', '//img.alicdn.com/bao/uploaded/i4/59079057/TB21cA2bVzqK1RjSZFzXXXjrpXa_!!59079057.jpg_40x40.jpg', '10', null);
INSERT INTO `goods` VALUES ('42', '兰若庭汉服太平有象秋冬织金马面', '160.00', '//img.alicdn.com/bao/uploaded/i2/59079057/TB2m1xdcjTpK1RjSZKPXXa3UpXa_!!59079057.jpg_40x40.jpg', '10', null);
INSERT INTO `goods` VALUES ('43', '我是一只比掌柜萌的补差价/邮费的专用链接', '1.00', '//img.alicdn.com/bao/uploaded/i3/59079057/TB2Xvyyy9tYBeNjSspaXXaOOFXa_!!59079057.jpg_40x40.jpg', '10', null);
INSERT INTO `goods` VALUES ('44', '兰若庭汉服传统汉服女装红果果马面裙百搭日常下裙春秋冬装', '99.00', '//img.alicdn.com/bao/uploaded/i3/59079057/TB2_pM1XH1YBuNjSszhXXcUsFXa_!!59079057.jpg_40x40.jpg', '10', null);
INSERT INTO `goods` VALUES ('45', '兰若庭汉服 二重衣单件印花 魏晋风广袖交领襦裙', '55.00', '//img.alicdn.com/bao/uploaded/i1/59079057/TB2mdjDcNTI8KJjSspiXXbM4FXa_!!59079057.jpg_40x40.jpg', '10', null);
INSERT INTO `orderlist` VALUES ('23', 'wine', '7', '6', '1542793569000');
INSERT INTO `orderlist` VALUES ('24', 'wine', '7', '6', '1542793573000');
INSERT INTO `orderlist` VALUES ('25', 'wine', '18', '1', '1542793573000');
INSERT INTO `orderlist` VALUES ('26', 'haha', '20', '1', '1542850436000');
INSERT INTO `orderlist` VALUES ('27', '1234', '7', '2', '1542878407000');
INSERT INTO `orderlist` VALUES ('28', '1234', '6', '1', '1542879045000');
INSERT INTO `orderlist` VALUES ('50', 'wine', '41', '10', '1543226710000');
INSERT INTO `orderlist` VALUES ('51', 'wine', '7', '11', '1543226710000');
INSERT INTO `orderlist` VALUES ('52', 'wine', '6', '18', '1543226710000');
INSERT INTO `orderlist` VALUES ('53', 'wine', '11', '1', '1543226887000');
INSERT INTO `orderlist` VALUES ('54', 'wine', '6', '1', '1543227868000');
INSERT INTO `orderlist` VALUES ('55', 'wine', '8', '1', '1543227898000');
INSERT INTO `orderlist` VALUES ('56', 'wine', '8', '1', '1543227920000');
INSERT INTO `orderlist` VALUES ('57', 'wine', '9', '1', '1543227920000');
INSERT INTO `orderlist` VALUES ('58', 'wine', '13', '1', '1543227966000');
INSERT INTO `orderlist` VALUES ('59', 'wine', '10', '1', '1543371772000');
INSERT INTO `orderlist` VALUES ('60', 'wine', '32', '1', '1543372026000');
INSERT INTO `orderlist` VALUES ('61', '', '45', '2', '1543374622000');
INSERT INTO `orderlist` VALUES ('62', '', '9', '2', '1543557172000');
INSERT INTO `orderlist` VALUES ('63', '123', '6', '5', '1550633278000');
INSERT INTO `shops` VALUES ('0', 'old dream');
INSERT INTO `shops` VALUES ('1', 'balala');
INSERT INTO `shops` VALUES ('2', 'hahaha');
INSERT INTO `shops` VALUES ('3', 'ga');
INSERT INTO `shops` VALUES ('4', 'efw');
INSERT INTO `shops` VALUES ('5', 'efas');
INSERT INTO `shops` VALUES ('6', 'gtrhth');
INSERT INTO `shops` VALUES ('7', 'er');
INSERT INTO `shops` VALUES ('8', 'rte');
INSERT INTO `shops` VALUES ('9', 'rewtwer');
INSERT INTO `shops` VALUES ('10', 'rtw');
INSERT INTO `users` VALUES ('1', 'tian', '123', null, null, null);
INSERT INTO `users` VALUES ('2', '123', '1234', null, null, null);
INSERT INTO `users` VALUES ('11', 'wine', '1995', null, null, null);
INSERT INTO `users` VALUES ('12', '1234', '1234', null, null, null);
INSERT INTO `users` VALUES ('13', 'yubowen', '123', null, null, null);
INSERT INTO `users` VALUES ('14', 'haha', '123', null, null, null);
INSERT INTO `users` VALUES ('16', '123456', '123456', null, null, null);
INSERT INTO `users` VALUES ('17', '3465', 'dsgv234234', null, null, null);
INSERT INTO `users` VALUES ('19', '32412', '3rtfe cv', null, null, null);
