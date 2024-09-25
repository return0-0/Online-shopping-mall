/*
 Navicat Premium Data Transfer

 Source Server         : MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : xm_shopping_manager

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 25/09/2024 16:32:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `useraddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '地址信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 6, '张三', ' 1', '13531744059');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商家姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商家介绍',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (2, 'meshe', '123', 'ifashion', 'http://localhost:9090/files/1725555726576-avatar.png', 'BUSINESS', '18877776666', 'meshe@xm.com', 'MsShe(慕姗.诗怡)--始创于2010年，定义“欧美简约、奢华风格 致力传播丰盈女性自信优雅之美 诠释现代丰盈女性独立自主，淡然优雅的淑女气 享受生活，拒绝平庸，于时尚与生活中挥洒自如，淡淡演绎完美生活', '审核通过');
INSERT INTO `business` VALUES (3, 'perfume', '123', '香水之家', 'http://localhost:9090/files/1725569094268-鞋_箱包.png', 'BUSINESS', '18899990000', 'perfume@xm.com', '成立于2010年，陌陌集团旗下大型香水批发户。倡导「便捷 廉价」的生活方式，提升消费者的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店。', '审核通过');
INSERT INTO `business` VALUES (4, 'computer', '123', '启航电脑配件', 'http://localhost:9090/files/1725568992004-1.png', 'BUSINESS', '18899990000', 'computer@xm.com', '成立于2010年，鹿鹿集团旗下大型批发户。倡导「便捷 廉价」的生活方式，提升消费者的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店。', '审核通过');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  `num` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (13, 9, 1, 2, 1);
INSERT INTO `cart` VALUES (15, 9, 11, 4, 1);
INSERT INTO `cart` VALUES (16, 9, 14, 4, 1);
INSERT INTO `cart` VALUES (17, 6, 13, 4, 1);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 6, 10, 2);
INSERT INTO `collect` VALUES (6, 6, 1, 2);
INSERT INTO `collect` VALUES (7, 6, 9, 2);
INSERT INTO `collect` VALUES (8, 9, 1, 2);
INSERT INTO `collect` VALUES (9, 9, 11, 4);
INSERT INTO `collect` VALUES (10, 9, 14, 4);
INSERT INTO `collect` VALUES (11, 6, 13, 4);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (3, 6, 9, 2, '真好看', '2024-09-12 02:20:07');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品主图',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品介绍',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '计件单位',
  `count` int NULL DEFAULT 0 COMMENT '商品销量',
  `type_id` int NULL DEFAULT NULL COMMENT '分类ID',
  `business_id` int NULL DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '设计感修身短款t恤女夏季新款圆领薄款短袖白色高腰紧身露脐上衣', 'http://localhost:9090/files/1725576803780-1.png', '<p>1<img src=\"http://localhost:9090/files/1725617680698-d1.png\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\"/><img src=\"http://localhost:9090/files/1725617689769-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725617693315-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725617699718-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725617703118-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 59.00, '件', 0, 6, 2);
INSERT INTO `goods` VALUES (9, '美式复古短袖T恤女纯棉夏ins潮半袖2023年新款设计感小众v领体桖', 'http://localhost:9090/files/1725647586307-1.png', '<p><img src=\"http://localhost:9090/files/1725647624123-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725647627676-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725647637520-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725647640646-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725647643803-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 88.00, '件', 0, 6, 2);
INSERT INTO `goods` VALUES (10, '加绒加厚MsShe大码女装2023新款秋装胖mm多巴胺V领宽松卫衣上衣冬', 'http://localhost:9090/files/1725654531543-1.png', '<p><img src=\"http://localhost:9090/files/1725654562440-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725654565686-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725654570596-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725654591744-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725654596170-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725654602007-d6.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725654607373-d7.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1725654609904-d8.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 188.00, '件', 0, 6, 2);
INSERT INTO `goods` VALUES (11, '联想台式电脑主机商务办公采购高配游戏设计学习全套六核电脑整机', 'http://localhost:9090/files/1727093726005-1.jpg', '<p><img src=\"http://localhost:9090/files/1727093810285-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727093814264-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727093819584-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727093823421-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727093830489-6.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3699.00, '台', 1, 4, 4);
INSERT INTO `goods` VALUES (12, '雷柏M650无线鼠标三模蓝牙鼠标办公静音小巧台式笔记本电脑可爱女', 'http://localhost:9090/files/1727093868036-1.jpg', '<p><img src=\"http://localhost:9090/files/1727093933644-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727093938295-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727093941644-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727093949971-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727093986063-手淘网页版_主图_1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 39.00, '个', 0, 4, 4);
INSERT INTO `goods` VALUES (13, 'Xiaomi_小米笔记本电脑办公商务大学生网课超轻薄i7游戏本手提i5', 'http://localhost:9090/files/1727096146956-1.jpg', '<p><img src=\"http://localhost:9090/files/1727096151747-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727096154971-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727096158508-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727096179747-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 4999.00, '台', 0, 4, 4);
INSERT INTO `goods` VALUES (14, 'honor_荣耀笔记本电脑商务办公大学生i7吃鸡游戏本剪辑设计i5便携', 'http://localhost:9090/files/1727098882755-1.jpg', '<p><img src=\"http://localhost:9090/files/1727098989203-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727098995176-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727098999286-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727099001879-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 4999.00, '台', 0, 4, 4);
INSERT INTO `goods` VALUES (15, 'i7高配独显一体机电脑台式全套整机主机八核商务办公家用游戏吃鸡', 'http://localhost:9090/files/1727100553894-6.jpg', '<p><img src=\"http://localhost:9090/files/1727100614323-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100618268-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100621336-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100624422-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100628173-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3999.00, '台', 0, 4, 4);
INSERT INTO `goods` VALUES (16, 'Dell_戴尔灵越15.6英寸轻薄笔记本电脑英特尔学习游戏办公商务手提剪辑PS设计pr高性能本官方旗舰店', 'http://localhost:9090/files/1727100660309-1.jpg', '<p><img src=\"http://localhost:9090/files/1727100707358-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100710198-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100716898-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100719571-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 4000.00, '台', 0, 4, 4);
INSERT INTO `goods` VALUES (17, '2023款13代酷睿i3_i5 联想台式电脑天逸510S主机 家用办公台式机设计游戏学习小主机全套 官方旗舰正品原装', 'http://localhost:9090/files/1727100791945-1.jpg', '<p><img src=\"http://localhost:9090/files/1727100822481-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100827324-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100843500-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1727100857177-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 5999.00, '台', 0, 4, 4);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '商家ID',
  `num` int NULL DEFAULT NULL COMMENT '商品数量',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  `address_id` int NULL DEFAULT NULL COMMENT '地址ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (3, '20240912015521', 9, 2, 1, 1, 88.00, 1, '待收货');
INSERT INTO `orders` VALUES (4, '20240912021845', 9, 2, 1, 6, 88.00, 1, '已评价');
INSERT INTO `orders` VALUES (5, '20240912021845', 1, 2, 1, 6, 59.00, 1, '已完成');
INSERT INTO `orders` VALUES (6, '20240912021845', 10, 2, 1, 6, 188.00, 1, '已完成');
INSERT INTO `orders` VALUES (7, '20240925013909', 11, 4, 1, 6, 3699.00, 1, '待发货');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '母婴玩具', '这是母婴玩具类商品', 'http://localhost:9090/files/1725484062139-母婴玩具.png');
INSERT INTO `type` VALUES (2, '精品男装/户外运动', '这是男装类商品', 'http://localhost:9090/files/1725484032186-男装.png');
INSERT INTO `type` VALUES (3, '珠宝/饰品/护肤', '这是珠宝饰品', 'http://localhost:9090/files/1725484086574-珠宝饰品.png');
INSERT INTO `type` VALUES (4, '电脑/电子办公/配件', NULL, 'http://localhost:9090/files/1725487543901-电脑.png');
INSERT INTO `type` VALUES (5, '手机/数码/配件', NULL, 'http://localhost:9090/files/1725487552271-数码手机.png');
INSERT INTO `type` VALUES (6, '女装/内衣', NULL, 'http://localhost:9090/files/1725487618875-女装内衣.png');
INSERT INTO `type` VALUES (7, '零食/茶酒/进口食品', NULL, 'http://localhost:9090/files/1725487656738-食品.png');
INSERT INTO `type` VALUES (8, '医药/保健品', NULL, 'http://localhost:9090/files/1725487828220-医药保健.png');
INSERT INTO `type` VALUES (9, '水果生鲜', NULL, 'http://localhost:9090/files/1725487875700-喵鲜生.png');
INSERT INTO `type` VALUES (10, '汽车配件', NULL, 'http://localhost:9090/files/1725487941434-汽车配件.png');
INSERT INTO `type` VALUES (11, '家用电器', NULL, 'http://localhost:9090/files/1725487977270-家用电器.png');
INSERT INTO `type` VALUES (12, '家具/灯具', NULL, 'http://localhost:9090/files/1725488019219-家具建材.png');
INSERT INTO `type` VALUES (13, '家纺/家饰', NULL, 'http://localhost:9090/files/1725488073720-家纺家饰.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (6, 'zhangsan', '123', '张三', 'http://localhost:9090/files/1725572353284-logo.png', 'USER', '10086', 'zhangsan@xm.com');
INSERT INTO `user` VALUES (9, 'lisi', '123', 'lisi', NULL, 'USER', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
