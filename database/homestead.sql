/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : homestead

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-05-09 20:54:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adverts
-- ----------------------------
DROP TABLE IF EXISTS `adverts`;
CREATE TABLE `adverts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告标题',
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片链接',
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '跳转链接',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `position_id` int(11) NOT NULL COMMENT '位置ID',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '广告描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of adverts
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `keywords` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键词',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `thumb` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '5', '有人告诉我中国人敬你酒的时候应该这样', '原创生活品', '是是是', '<p>是是打发第三方</p>', '259', '/upload/2019-04-25_1556189432_5cc190f8d4971.jpg', '2019-01-23 13:44:00', '2019-04-25 18:50:42');

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '资讯ID',
  `tag_id` int(11) NOT NULL COMMENT '标签ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('5', '体育新闻', '4', '0', '2019-03-01 13:41:24', '2019-03-01 13:41:24');
INSERT INTO `categories` VALUES ('4', '新闻', '0', '0', '2019-03-01 13:41:06', '2019-03-01 13:41:06');

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '行政编码',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名字',
  `center` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '经纬度',
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '级别',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of districts
-- ----------------------------

-- ----------------------------
-- Table structure for icons
-- ----------------------------
DROP TABLE IF EXISTS `icons`;
CREATE TABLE `icons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unicode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'unicode 字符',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类名',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of icons
-- ----------------------------
INSERT INTO `icons` VALUES ('1', '&#xe6c9;', 'layui-icon-rate-half', '半星', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('2', '&#xe67b;', 'layui-icon-rate', '星星-空心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('3', '&#xe67a;', 'layui-icon-rate-solid', '星星-实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('4', '&#xe678;', 'layui-icon-cellphone', '手机', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('5', '&#xe679;', 'layui-icon-vercode', '验证码', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('6', '&#xe677;', 'layui-icon-login-wechat', '微信', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('7', '&#xe676;', 'layui-icon-login-qq', 'QQ', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('8', '&#xe675;', 'layui-icon-login-weibo', '微博', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('9', '&#xe673;', 'layui-icon-password', '密码', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('10', '&#xe66f;', 'layui-icon-username', '用户名', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('11', '&#xe9aa;', 'layui-icon-refresh-3', '刷新-粗', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('12', '&#xe672;', 'layui-icon-auz', '授权', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('13', '&#xe66b;', 'layui-icon-spread-left', '左向右伸缩菜单', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('14', '&#xe668;', 'layui-icon-shrink-right', '右向左伸缩菜单', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('15', '&#xe6b1;', 'layui-icon-snowflake', '雪花', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('16', '&#xe702;', 'layui-icon-tips', '提示说明', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('17', '&#xe66e;', 'layui-icon-note', '便签', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('18', '&#xe68e;', 'layui-icon-home', '主页', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('19', '&#xe674;', 'layui-icon-senior', '高级', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('20', '&#xe669;', 'layui-icon-refresh', '刷新', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('21', '&#xe666;', 'layui-icon-refresh-1', '刷新', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('22', '&#xe66c;', 'layui-icon-flag', '旗帜', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('23', '&#xe66a;', 'layui-icon-theme', '主题', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('24', '&#xe667;', 'layui-icon-notice', '消息-通知', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('25', '&#xe7ae;', 'layui-icon-website', '网站', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('26', '&#xe665;', 'layui-icon-console', '控制台', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('27', '&#xe664;', 'layui-icon-face-surprised', '表情-惊讶', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('28', '&#xe716;', 'layui-icon-set', '设置-空心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('29', '&#xe656;', 'layui-icon-template-1', '模板', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('30', '&#xe653;', 'layui-icon-app', '应用', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('31', '&#xe663;', 'layui-icon-template', '模板', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('32', '&#xe6c6;', 'layui-icon-praise', '赞', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('33', '&#xe6c5;', 'layui-icon-tread', '踩', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('34', '&#xe662;', 'layui-icon-male', '男', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('35', '&#xe661;', 'layui-icon-female', '女', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('36', '&#xe660;', 'layui-icon-camera', '相机-空心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('37', '&#xe65d;', 'layui-icon-camera-fill', '相机-实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('38', '&#xe65f;', 'layui-icon-more', '菜单-水平', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('39', '&#xe671;', 'layui-icon-more-vertical', '菜单-垂直', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('40', '&#xe65e;', 'layui-icon-rmb', '金额-人民币', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('41', '&#xe659;', 'layui-icon-dollar', '金额-美元', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('42', '&#xe735;', 'layui-icon-diamond', '钻石-等级', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('43', '&#xe756;', 'layui-icon-fire', '火', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('44', '&#xe65c;', 'layui-icon-return', '返回', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('45', '&#xe715;', 'layui-icon-location', '位置-地图', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('46', '&#xe705;', 'layui-icon-read', '办公-阅读', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('47', '&#xe6b2;', 'layui-icon-survey', '调查', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('48', '&#xe6af;', 'layui-icon-face-smile', '表情-微笑', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('49', '&#xe69c;', 'layui-icon-face-cry', '表情-哭泣', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('50', '&#xe698;', 'layui-icon-cart-simple', '购物车', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('51', '&#xe657;', 'layui-icon-cart', '购物车', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('52', '&#xe65b;', 'layui-icon-next', '下一页', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('53', '&#xe65a;', 'layui-icon-prev', '上一页', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('54', '&#xe681;', 'layui-icon-upload-drag', '上传-空心-拖拽', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('55', '&#xe67c;', 'layui-icon-upload', '上传-实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('56', '&#xe601;', 'layui-icon-download-circle', '下载-圆圈', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('57', '&#xe857;', 'layui-icon-component', '组件', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('58', '&#xe655;', 'layui-icon-file-b', '文件-粗', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('59', '&#xe770;', 'layui-icon-user', '用户', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('60', '&#xe670;', 'layui-icon-find-fill', '发现-实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('61', '&#xe63d;', 'layui-icon-loading', 'loading', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('62', '&#xe63e;', 'layui-icon-loading-1', 'loading', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('63', '&#xe654;', 'layui-icon-add-1', '添加', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('64', '&#xe652;', 'layui-icon-play', '播放', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('65', '&#xe651;', 'layui-icon-pause', '暂停', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('66', '&#xe6fc;', 'layui-icon-headset', '音频-耳机', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('67', '&#xe6ed;', 'layui-icon-video', '视频', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('68', '&#xe688;', 'layui-icon-voice', '语音-声音', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('69', '&#xe645;', 'layui-icon-speaker', '消息-通知-喇叭', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('70', '&#xe64f;', 'layui-icon-fonts-del', '删除线', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('71', '&#xe64e;', 'layui-icon-fonts-code', '代码', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('72', '&#xe64b;', 'layui-icon-fonts-html', 'HTML', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('73', '&#xe62b;', 'layui-icon-fonts-strong', '字体加粗', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('74', '&#xe64d;', 'layui-icon-unlink', '删除链接', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('75', '&#xe64a;', 'layui-icon-picture', '图片', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('76', '&#xe64c;', 'layui-icon-link', '链接', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('77', '&#xe650;', 'layui-icon-face-smile-b', '表情-笑-粗', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('78', '&#xe649;', 'layui-icon-align-left', '左对齐', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('79', '&#xe648;', 'layui-icon-align-right', '右对齐', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('80', '&#xe647;', 'layui-icon-align-center', '居中对齐', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('81', '&#xe646;', 'layui-icon-fonts-u', '字体-下划线', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('82', '&#xe644;', 'layui-icon-fonts-i', '字体-斜体', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('83', '&#xe62a;', 'layui-icon-tabs', 'Tabs 选项卡', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('84', '&#xe643;', 'layui-icon-radio', '单选框-选中', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('85', '&#xe63f;', 'layui-icon-circle', '单选框-候选', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('86', '&#xe642;', 'layui-icon-edit', '编辑', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('87', '&#xe641;', 'layui-icon-share', '分享', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('88', '&#xe640;', 'layui-icon-delete', '删除', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('89', '&#xe63c;', 'layui-icon-form', '表单', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('90', '&#xe63b;', 'layui-icon-cellphone-fine', '手机-细体', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('91', '&#xe63a;', 'layui-icon-dialogue', '聊天 对话 沟通', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('92', '&#xe639;', 'layui-icon-fonts-clear', '文字格式化', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('93', '&#xe638;', 'layui-icon-layer', '窗口', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('94', '&#xe637;', 'layui-icon-date', '日期', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('95', '&#xe636;', 'layui-icon-water', '水 下雨', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('96', '&#xe635;', 'layui-icon-code-circle', '代码-圆圈', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('97', '&#xe634;', 'layui-icon-carousel', '轮播组图', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('98', '&#xe633;', 'layui-icon-prev-circle', '翻页', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('99', '&#xe632;', 'layui-icon-layouts', '布局', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('100', '&#xe631;', 'layui-icon-util', '工具', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('101', '&#xe630;', 'layui-icon-templeate-1', '选择模板', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('102', '&#xe62f;', 'layui-icon-upload-circle', '上传-圆圈', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('103', '&#xe62e;', 'layui-icon-tree', '树', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('104', '&#xe62d;', 'layui-icon-table', '表格', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('105', '&#xe62c;', 'layui-icon-chart', '图表', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('106', '&#xe629;', 'layui-icon-chart-screen', '图标 报表 屏幕', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('107', '&#xe628;', 'layui-icon-engine', '引擎', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('108', '&#xe625;', 'layui-icon-triangle-d', '下三角', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('109', '&#xe623;', 'layui-icon-triangle-r', '右三角', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('110', '&#xe621;', 'layui-icon-file', '文件', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('111', '&#xe620;', 'layui-icon-set-sm', '设置-小型', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('112', '&#xe61f;', 'layui-icon-add-circle', '添加-圆圈', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('113', '&#xe61c;', 'layui-icon-404', '404', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('114', '&#xe60b;', 'layui-icon-about', '关于', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('115', '&#xe619;', 'layui-icon-up', '箭头 向上', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('116', '&#xe61a;', 'layui-icon-down', '箭头 向下', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('117', '&#xe603;', 'layui-icon-left', '箭头 向左', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('118', '&#xe602;', 'layui-icon-right', '箭头 向右', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('119', '&#xe617;', 'layui-icon-circle-dot', '圆点', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('120', '&#xe615;', 'layui-icon-search', '搜索', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('121', '&#xe614;', 'layui-icon-set-fill', '设置-实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('122', '&#xe613;', 'layui-icon-group', '群组', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('123', '&#xe612;', 'layui-icon-friends', '好友', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('124', '&#xe611;', 'layui-icon-reply-fill', '回复 评论 实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('125', '&#xe60f;', 'layui-icon-menu-fill', '菜单 隐身 实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('126', '&#xe60e;', 'layui-icon-log', '记录', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('127', '&#xe60d;', 'layui-icon-picture-fine', '图片-细体', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('128', '&#xe60c;', 'layui-icon-face-smile-fine', '表情-笑-细体', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('129', '&#xe60a;', 'layui-icon-list', '列表', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('130', '&#xe609;', 'layui-icon-release', '发布 纸飞机', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('131', '&#xe605;', 'layui-icon-ok', '对 OK', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('132', '&#xe607;', 'layui-icon-help', '帮助', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('133', '&#xe606;', 'layui-icon-chat', '客服', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('134', '&#xe604;', 'layui-icon-top', 'top 置顶', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('135', '&#xe600;', 'layui-icon-star', '收藏-空心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('136', '&#xe658;', 'layui-icon-star-fill', '收藏-实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('137', '&#x1007;', 'layui-icon-close-fill', '关闭-实心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('138', '&#x1006;', 'layui-icon-close', '关闭-空心', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('139', '&#x1005;', 'layui-icon-ok-circle', '正确', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `icons` VALUES ('140', '&#xe608;', 'layui-icon-add-circle-fine', '添加-圆圈-细体', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `remember_token` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '记住我',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('2', '13521283025', 'ssssadfasd', '$2y$10$M9srwORGXZisjZxr5.M4zu.kNd5DmE6BsGBfF2LdFHmE0JRqOflP2', 'http://www.finance-admin.com/upload/2019-01-29_1548743533_5c4ff36d69575.png', null, '6e92c7aa-2b1a-3faa-94d5-dd4d533ce915', null, '2019-01-28 16:48:02', '2019-01-29 14:32:14');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '消息内容',
  `read` int(11) NOT NULL DEFAULT '1' COMMENT '1-未读，2-已读',
  `send_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '消息发送者UUID，1表示系统发送',
  `accept_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息接收者UUID',
  `flag` int(11) NOT NULL COMMENT '消息对应关系：12-系统推送给后台，13-系统推送给前台,22-后台推送给后台，23-后台推送给前台，32-前台推送给后台，33-前台推送给前台，',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_04_26_171101_create_district_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_05_04_090903_create_members_table', '1');
INSERT INTO `migrations` VALUES ('5', '2018_05_04_103656_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('6', '2018_05_04_134703_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('7', '2018_05_04_135258_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('8', '2018_05_07_160110_create_article_tag_table', '1');
INSERT INTO `migrations` VALUES ('9', '2018_05_14_091108_create_sites_table', '1');
INSERT INTO `migrations` VALUES ('10', '2018_05_14_115332_create_table_positions', '1');
INSERT INTO `migrations` VALUES ('11', '2018_05_14_115355_create_table_adverts', '1');
INSERT INTO `migrations` VALUES ('12', '2018_05_31_162020_create_icons_table', '1');
INSERT INTO `migrations` VALUES ('13', '2018_06_07_092825_create_messages_table', '1');
INSERT INTO `migrations` VALUES ('14', '2018_06_25_014048_create_permission_tables', '1');

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
INSERT INTO `model_has_permissions` VALUES ('1', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('2', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('3', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('4', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('5', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('6', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('7', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('8', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('9', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('10', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('11', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('12', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('13', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('14', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('15', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('16', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('17', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('18', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('19', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('20', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('21', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('22', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('23', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('24', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('25', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('26', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('27', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('28', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('29', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('30', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('31', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('32', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('33', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('34', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('35', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('36', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('37', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('38', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('39', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('40', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('41', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('42', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('43', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('44', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('45', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('46', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('47', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('48', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('51', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('53', '1', 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES ('54', '1', 'App\\Models\\User');

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES ('1', '1', 'App\\Models\\User');
INSERT INTO `model_has_roles` VALUES ('6', '2', 'App\\Models\\User');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路由名称',
  `icon_id` int(11) DEFAULT NULL COMMENT '图标ID',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'system.manage', 'web', '系统管理', '', '100', '0', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('2', 'system.user', 'web', '用户管理', 'admin.user', '123', '1', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('3', 'system.user.create', 'web', '添加用户', 'admin.user.create', '1', '2', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('4', 'system.user.edit', 'web', '编辑用户', 'admin.user.edit', '1', '2', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('5', 'system.user.destroy', 'web', '删除用户', 'admin.user.destroy', '1', '2', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('6', 'system.user.role', 'web', '分配角色', 'admin.user.role', '1', '2', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('7', 'system.user.permission', 'web', '分配权限', 'admin.user.permission', '1', '2', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('8', 'system.role', 'web', '角色管理', 'admin.role', '121', '1', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('9', 'system.role.create', 'web', '添加角色', 'admin.role.create', '1', '8', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('10', 'system.role.edit', 'web', '编辑角色', 'admin.role.edit', '1', '8', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('11', 'system.role.destroy', 'web', '删除角色', 'admin.role.destroy', '1', '8', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('12', 'system.role.permission', 'web', '分配权限', 'admin.role.permission', '1', '8', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('13', 'system.permission', 'web', '权限管理', 'admin.permission', '12', '1', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('14', 'system.permission.create', 'web', '添加权限', 'admin.permission.create', '1', '13', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('15', 'system.permission.edit', 'web', '编辑权限', 'admin.permission.edit', '1', '13', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('16', 'system.permission.destroy', 'web', '删除权限', 'admin.permission.destroy', '1', '13', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('17', 'zixun.manage', 'web', '资讯管理', '', '100', '0', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('18', 'zixun.category', 'web', '分类管理', 'admin.category', '29', '17', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('19', 'zixun.category.create', 'web', '添加分类', 'admin.category.create', '1', '18', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('20', 'zixun.category.edit', 'web', '编辑分类', 'admin.category.edit', '1', '18', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('21', 'zixun.category.destroy', 'web', '删除分类', 'admin.category.destroy', '1', '18', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('22', 'zixun.tag', 'web', '标签管理', 'admin.tag', '15', '17', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('23', 'zixun.tag.create', 'web', '添加标签', 'admin.tag.create', '1', '22', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('24', 'zixun.tag.edit', 'web', '编辑标签', 'admin.tag.edit', '1', '22', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('25', 'zixun.tag.destroy', 'web', '删除标签', 'admin.tag.destroy', '1', '22', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('26', 'zixun.article', 'web', '文章管理', 'admin.article', '89', '17', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('27', 'zixun.article.create', 'web', '添加文章', 'admin.article.create', '1', '26', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('28', 'zixun.article.edit', 'web', '编辑文章', 'admin.article.edit', '1', '26', '0', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `permissions` VALUES ('29', 'zixun.article.destroy', 'web', '删除文章', 'admin.article.destroy', '1', '26', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('30', 'config.manage', 'web', '配置管理', '', '28', '0', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('31', 'config.site', 'web', '站点配置', 'admin.site', '25', '30', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('32', 'config.site.update', 'web', '更新配置', 'admin.site.update', '1', '31', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('33', 'config.position', 'web', '广告位置', 'admin.position', '30', '30', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('34', 'config.position.create', 'web', '添加广告位', 'admin.position.create', '1', '33', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('35', 'config.position.edit', 'web', '编辑广告位', 'admin.position.edit', '1', '33', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('36', 'config.position.destroy', 'web', '删除广告位', 'admin.position.destroy', '1', '33', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('37', 'config.advert', 'web', '广告信息', 'admin.advert', '107', '30', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('38', 'config.advert.create', 'web', '添加信息', 'admin.advert.create', '1', '37', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('39', 'config.advert.edit', 'web', '编辑信息', 'admin.advert.edit', '1', '37', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('40', 'config.advert.destroy', 'web', '删除信息', 'admin.advert.destroy', '1', '37', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('41', 'member.manage', 'web', '会员管理', '', '59', '0', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('42', 'member.member', 'web', '账号管理', 'admin.member', '10', '41', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('43', 'member.member.create', 'web', '添加账号', 'admin.member.create', '1', '42', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('44', 'member.member.edit', 'web', '编辑账号', 'admin.member.edit', '1', '42', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('45', 'member.member.destroy', 'web', '删除账号', 'admin.member.destroy', '1', '42', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('46', 'message.manage', 'web', '消息管理', '', '24', '0', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('47', 'message.message.mine', 'web', '我的消息', 'admin.message.mine', '124', '46', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('48', 'message.message', 'web', '消息管理', 'admin.message', '24', '46', '0', '2018-11-09 17:00:52', '2018-11-09 17:00:52');
INSERT INTO `permissions` VALUES ('51', 'message.message.delmymine', 'web', '删除我的消息', 'admin.message.delmymine', '88', '47', '0', '2018-11-09 17:30:45', '2018-11-11 19:15:49');
INSERT INTO `permissions` VALUES ('52', 'member.member.set', 'web', '账号设置', 'admin.member.set', '107', '42', '0', '2018-11-11 19:09:26', '2018-11-11 19:09:26');
INSERT INTO `permissions` VALUES ('53', 'message.message.destroy', 'web', '删除消息', 'admin.message.destroy', '88', '48', '0', '2018-11-11 19:17:53', '2018-11-11 19:17:53');
INSERT INTO `permissions` VALUES ('54', 'message.message.editmymine', 'web', '编辑我的消息', 'admin.message.editmymine', '86', '47', '0', '2018-11-11 19:20:49', '2018-11-11 19:20:49');
INSERT INTO `permissions` VALUES ('55', 'member.reservation', 'web', '预约记录', 'admin.member.reservation', '129', '41', '0', '2019-01-23 14:47:54', '2019-01-23 14:48:39');
INSERT INTO `permissions` VALUES ('56', 'product.manage', 'web', '商品管理', null, '83', '0', '0', '2019-01-28 11:54:07', '2019-01-28 11:54:07');
INSERT INTO `permissions` VALUES ('57', 'product.attrname', 'web', '规格名称', 'admin.product.attrname', null, '56', '0', '2019-01-28 11:58:47', '2019-01-28 11:58:47');
INSERT INTO `permissions` VALUES ('58', 'product.attrname.create', 'web', '规格添加', 'admin.product.attrname_create', null, '57', '0', '2019-01-28 14:10:14', '2019-01-28 14:10:14');
INSERT INTO `permissions` VALUES ('59', 'product.attrname.destroy', 'web', '规则名称删除', 'admin.product.attrname_destroy', null, '57', '0', '2019-01-28 14:15:48', '2019-01-28 16:55:22');
INSERT INTO `permissions` VALUES ('60', 'product.attrname.edit', 'web', '规格名称编辑', 'admin.product.attrname_edit', null, '57', '0', '2019-01-28 15:09:47', '2019-01-28 15:09:47');
INSERT INTO `permissions` VALUES ('61', 'product.attrvalue', 'web', '规格属性值', 'admin.product.attrvalue', null, '56', '0', '2019-01-28 17:27:59', '2019-01-28 17:40:10');
INSERT INTO `permissions` VALUES ('62', 'product.attrvalue.create', 'web', '规格属性值添加', 'admin.product.attrvalue_create', null, '61', '0', '2019-01-28 17:29:02', '2019-01-28 17:29:02');
INSERT INTO `permissions` VALUES ('63', 'product.attrvalue.edit', 'web', '规格属性值编辑', 'admin.product.attrvalue_edit', null, '61', '0', '2019-01-28 17:30:00', '2019-01-28 17:30:00');
INSERT INTO `permissions` VALUES ('64', 'product.attrvalue.destroy', 'web', '规格属性值删除', 'admin.product.attrvalue_destroy', null, '61', '0', '2019-01-28 17:30:57', '2019-01-28 17:30:57');
INSERT INTO `permissions` VALUES ('66', 'product.cates', 'web', '商品分类', 'admin.product.cates', null, '56', '0', '2019-01-31 14:35:33', '2019-01-31 14:35:33');
INSERT INTO `permissions` VALUES ('69', 'product.cates.create', 'web', '商品分类添加', 'admin.product.cates_create', null, '66', '0', '2019-01-31 14:39:42', '2019-01-31 14:39:42');
INSERT INTO `permissions` VALUES ('71', 'product.cates.edit', 'web', '商品分类编辑', 'admin.product.cates_edit', null, '66', '0', '2019-01-31 14:44:18', '2019-01-31 14:44:18');
INSERT INTO `permissions` VALUES ('72', 'product.cates.destroy', 'web', '商品分类删除', 'admin.product.cates_destroy', null, '66', '0', '2019-01-31 14:45:12', '2019-01-31 14:45:12');
INSERT INTO `permissions` VALUES ('73', 'screenwriter.manage', 'web', '编剧管理', null, '31', '0', '0', '2019-04-27 10:34:07', '2019-04-27 20:13:06');
INSERT INTO `permissions` VALUES ('74', 'screen.writer.index', 'web', '编剧', 'admin.screen.writer', null, '73', '0', '2019-04-27 10:41:26', '2019-04-27 11:03:02');
INSERT INTO `permissions` VALUES ('75', 'script.manage', 'web', '剧本管理', null, '46', '0', '0', '2019-05-06 21:00:07', '2019-05-06 21:00:07');
INSERT INTO `permissions` VALUES ('76', 'script.index', 'web', '剧本', 'admin.script.index', null, '75', '0', '2019-05-06 21:16:38', '2019-05-06 21:16:38');

-- ----------------------------
-- Table structure for positions
-- ----------------------------
DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置名称',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of positions
-- ----------------------------

-- ----------------------------
-- Table structure for reservation
-- ----------------------------
DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` int(11) DEFAULT NULL COMMENT '手机号',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `description` varchar(255) DEFAULT NULL COMMENT '预约备注',
  `createtime_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reservation
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'root', 'web', '超级管理员', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `roles` VALUES ('6', 'admin', 'web', '管理员', '2018-11-09 17:00:52', '2018-11-09 17:00:52');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES ('1', '1');
INSERT INTO `role_has_permissions` VALUES ('1', '6');
INSERT INTO `role_has_permissions` VALUES ('2', '1');
INSERT INTO `role_has_permissions` VALUES ('2', '6');
INSERT INTO `role_has_permissions` VALUES ('3', '1');
INSERT INTO `role_has_permissions` VALUES ('3', '6');
INSERT INTO `role_has_permissions` VALUES ('4', '1');
INSERT INTO `role_has_permissions` VALUES ('4', '6');
INSERT INTO `role_has_permissions` VALUES ('5', '1');
INSERT INTO `role_has_permissions` VALUES ('5', '6');
INSERT INTO `role_has_permissions` VALUES ('6', '1');
INSERT INTO `role_has_permissions` VALUES ('6', '6');
INSERT INTO `role_has_permissions` VALUES ('7', '1');
INSERT INTO `role_has_permissions` VALUES ('7', '6');
INSERT INTO `role_has_permissions` VALUES ('8', '1');
INSERT INTO `role_has_permissions` VALUES ('8', '6');
INSERT INTO `role_has_permissions` VALUES ('9', '1');
INSERT INTO `role_has_permissions` VALUES ('9', '6');
INSERT INTO `role_has_permissions` VALUES ('10', '1');
INSERT INTO `role_has_permissions` VALUES ('10', '6');
INSERT INTO `role_has_permissions` VALUES ('11', '1');
INSERT INTO `role_has_permissions` VALUES ('11', '6');
INSERT INTO `role_has_permissions` VALUES ('12', '1');
INSERT INTO `role_has_permissions` VALUES ('12', '6');
INSERT INTO `role_has_permissions` VALUES ('13', '1');
INSERT INTO `role_has_permissions` VALUES ('13', '6');
INSERT INTO `role_has_permissions` VALUES ('14', '1');
INSERT INTO `role_has_permissions` VALUES ('14', '6');
INSERT INTO `role_has_permissions` VALUES ('15', '1');
INSERT INTO `role_has_permissions` VALUES ('15', '6');
INSERT INTO `role_has_permissions` VALUES ('16', '1');
INSERT INTO `role_has_permissions` VALUES ('16', '6');
INSERT INTO `role_has_permissions` VALUES ('17', '1');
INSERT INTO `role_has_permissions` VALUES ('17', '6');
INSERT INTO `role_has_permissions` VALUES ('18', '1');
INSERT INTO `role_has_permissions` VALUES ('18', '6');
INSERT INTO `role_has_permissions` VALUES ('19', '1');
INSERT INTO `role_has_permissions` VALUES ('19', '6');
INSERT INTO `role_has_permissions` VALUES ('20', '1');
INSERT INTO `role_has_permissions` VALUES ('20', '6');
INSERT INTO `role_has_permissions` VALUES ('21', '1');
INSERT INTO `role_has_permissions` VALUES ('21', '6');
INSERT INTO `role_has_permissions` VALUES ('22', '1');
INSERT INTO `role_has_permissions` VALUES ('23', '1');
INSERT INTO `role_has_permissions` VALUES ('24', '1');
INSERT INTO `role_has_permissions` VALUES ('25', '1');
INSERT INTO `role_has_permissions` VALUES ('26', '1');
INSERT INTO `role_has_permissions` VALUES ('26', '6');
INSERT INTO `role_has_permissions` VALUES ('27', '1');
INSERT INTO `role_has_permissions` VALUES ('27', '6');
INSERT INTO `role_has_permissions` VALUES ('28', '1');
INSERT INTO `role_has_permissions` VALUES ('28', '6');
INSERT INTO `role_has_permissions` VALUES ('29', '1');
INSERT INTO `role_has_permissions` VALUES ('29', '6');
INSERT INTO `role_has_permissions` VALUES ('30', '1');
INSERT INTO `role_has_permissions` VALUES ('31', '1');
INSERT INTO `role_has_permissions` VALUES ('32', '1');
INSERT INTO `role_has_permissions` VALUES ('33', '1');
INSERT INTO `role_has_permissions` VALUES ('34', '1');
INSERT INTO `role_has_permissions` VALUES ('35', '1');
INSERT INTO `role_has_permissions` VALUES ('36', '1');
INSERT INTO `role_has_permissions` VALUES ('37', '1');
INSERT INTO `role_has_permissions` VALUES ('38', '1');
INSERT INTO `role_has_permissions` VALUES ('39', '1');
INSERT INTO `role_has_permissions` VALUES ('40', '1');
INSERT INTO `role_has_permissions` VALUES ('41', '1');
INSERT INTO `role_has_permissions` VALUES ('41', '6');
INSERT INTO `role_has_permissions` VALUES ('42', '1');
INSERT INTO `role_has_permissions` VALUES ('42', '6');
INSERT INTO `role_has_permissions` VALUES ('43', '1');
INSERT INTO `role_has_permissions` VALUES ('43', '6');
INSERT INTO `role_has_permissions` VALUES ('44', '1');
INSERT INTO `role_has_permissions` VALUES ('44', '6');
INSERT INTO `role_has_permissions` VALUES ('45', '1');
INSERT INTO `role_has_permissions` VALUES ('45', '6');
INSERT INTO `role_has_permissions` VALUES ('46', '1');
INSERT INTO `role_has_permissions` VALUES ('47', '1');
INSERT INTO `role_has_permissions` VALUES ('48', '1');
INSERT INTO `role_has_permissions` VALUES ('51', '1');
INSERT INTO `role_has_permissions` VALUES ('52', '1');
INSERT INTO `role_has_permissions` VALUES ('52', '6');
INSERT INTO `role_has_permissions` VALUES ('53', '1');
INSERT INTO `role_has_permissions` VALUES ('54', '1');
INSERT INTO `role_has_permissions` VALUES ('55', '1');
INSERT INTO `role_has_permissions` VALUES ('55', '6');
INSERT INTO `role_has_permissions` VALUES ('56', '1');
INSERT INTO `role_has_permissions` VALUES ('56', '6');
INSERT INTO `role_has_permissions` VALUES ('57', '1');
INSERT INTO `role_has_permissions` VALUES ('57', '6');
INSERT INTO `role_has_permissions` VALUES ('58', '1');
INSERT INTO `role_has_permissions` VALUES ('58', '6');
INSERT INTO `role_has_permissions` VALUES ('59', '1');
INSERT INTO `role_has_permissions` VALUES ('59', '6');
INSERT INTO `role_has_permissions` VALUES ('60', '1');
INSERT INTO `role_has_permissions` VALUES ('60', '6');
INSERT INTO `role_has_permissions` VALUES ('61', '1');
INSERT INTO `role_has_permissions` VALUES ('61', '6');
INSERT INTO `role_has_permissions` VALUES ('62', '1');
INSERT INTO `role_has_permissions` VALUES ('62', '6');
INSERT INTO `role_has_permissions` VALUES ('63', '1');
INSERT INTO `role_has_permissions` VALUES ('63', '6');
INSERT INTO `role_has_permissions` VALUES ('64', '1');
INSERT INTO `role_has_permissions` VALUES ('64', '6');
INSERT INTO `role_has_permissions` VALUES ('66', '1');
INSERT INTO `role_has_permissions` VALUES ('66', '6');
INSERT INTO `role_has_permissions` VALUES ('69', '1');
INSERT INTO `role_has_permissions` VALUES ('69', '6');
INSERT INTO `role_has_permissions` VALUES ('71', '1');
INSERT INTO `role_has_permissions` VALUES ('71', '6');
INSERT INTO `role_has_permissions` VALUES ('72', '1');
INSERT INTO `role_has_permissions` VALUES ('72', '6');
INSERT INTO `role_has_permissions` VALUES ('73', '1');
INSERT INTO `role_has_permissions` VALUES ('73', '6');
INSERT INTO `role_has_permissions` VALUES ('74', '1');
INSERT INTO `role_has_permissions` VALUES ('74', '6');
INSERT INTO `role_has_permissions` VALUES ('75', '6');
INSERT INTO `role_has_permissions` VALUES ('76', '6');

-- ----------------------------
-- Table structure for screenwriters
-- ----------------------------
DROP TABLE IF EXISTS `screenwriters`;
CREATE TABLE `screenwriters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '编剧名字',
  `rating` enum('1','2','3','4') DEFAULT NULL COMMENT '编剧评级',
  `residence` varchar(255) DEFAULT NULL COMMENT '常住地',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='编剧表';

-- ----------------------------
-- Records of screenwriters
-- ----------------------------
INSERT INTO `screenwriters` VALUES ('1', '武怡瞳', '4', '石家庄', '2019-05-01 15:35:40', '2019-05-01 16:22:47');
INSERT INTO `screenwriters` VALUES ('3', '魏一铮', '2', '北京', '2019-05-01 15:36:57', '2019-05-01 15:36:57');

-- ----------------------------
-- Table structure for scripts
-- ----------------------------
DROP TABLE IF EXISTS `scripts`;
CREATE TABLE `scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scriptTitle` varchar(50) DEFAULT NULL COMMENT '剧本名称',
  `scriptType` enum('1','2','3','4','5') DEFAULT NULL COMMENT '剧本类型',
  `scriptTheme` enum('1','2','3','4','5') DEFAULT NULL COMMENT '剧本题材',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='剧本表';

-- ----------------------------
-- Records of scripts
-- ----------------------------
INSERT INTO `scripts` VALUES ('3', '《双鱼村的半农时代》', '1', '3', '2019-05-06 22:47:55', '2019-05-06 22:47:55');

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sites
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_phone_unique` (`phone`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'root', '18908221080', '超级管理员', 'root@dgg.net', '$2y$10$w79bBKQdNd8apyuhH4oSMu2fQe5XNsbtYqZC5z8IOVsmH6OYqIjqu', 'pRg7KNlTmHmZTIO9d9xzr0bh7bwcDs8iLBBhZ1WcRSfl5Wqi2ueqygmNSTc9', '7df46d11-966d-3a2e-a313-48dd01c47e20', '2018-11-09 17:00:51', '2018-11-09 17:00:51');
INSERT INTO `users` VALUES ('2', 'heiue', '13521282025', 'heiue', 'weiyizheng@xinchuangmedia.com', '$2y$10$h7JE6v7tPoBzOxDzNYC6kOtgTPbIqmi0XC04UCJScfOBJrlNbKTuO', 'jNpwp5umk4H93JQuWm41t4CcDSd0FLKaTtAqiE6Jd0yZwydylPtKCu0VcDQc', 'a2399ca7-7ccc-31d1-8341-e1cd746335bc', '2018-11-09 17:22:30', '2018-11-09 17:22:30');

-- ----------------------------
-- Table structure for z_attrname
-- ----------------------------
DROP TABLE IF EXISTS `z_attrname`;
CREATE TABLE `z_attrname` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `cid` int(11) DEFAULT NULL COMMENT '分类id',
  `title` varchar(50) NOT NULL COMMENT '规格名称',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of z_attrname
-- ----------------------------
INSERT INTO `z_attrname` VALUES ('4', null, '产地', '2019-01-29 15:00:23', '2019-01-29 15:00:23');
INSERT INTO `z_attrname` VALUES ('2', null, '品种', '2019-01-28 15:25:12', '2019-01-28 18:02:29');

-- ----------------------------
-- Table structure for z_attrvalue
-- ----------------------------
DROP TABLE IF EXISTS `z_attrvalue`;
CREATE TABLE `z_attrvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_id` int(11) DEFAULT NULL COMMENT '规格名称',
  `value` varchar(50) DEFAULT NULL COMMENT '属性值',
  `img` varchar(255) DEFAULT NULL COMMENT '属性图片',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of z_attrvalue
-- ----------------------------
INSERT INTO `z_attrvalue` VALUES ('5', '4', '中式1', 'http://www.finance-admin.com/upload/2019-01-29_1548744446_5c4ff6fe8bdd4.png', '2019-01-29 14:47:27', '2019-01-29 15:01:03');
INSERT INTO `z_attrvalue` VALUES ('4', '2', '日式', 'http://www.finance-admin.com/upload/2019-01-29_1548743587_5c4ff3a36f7ac.png', '2019-01-29 14:33:08', '2019-01-29 15:25:10');

-- ----------------------------
-- Table structure for z_cates
-- ----------------------------
DROP TABLE IF EXISTS `z_cates`;
CREATE TABLE `z_cates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '上级分类',
  `ord` int(11) DEFAULT NULL COMMENT '排序',
  `title` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of z_cates
-- ----------------------------
INSERT INTO `z_cates` VALUES ('1', '0', '0', '男装', null, '2019-03-01 13:29:13', '2019-03-01 13:29:13');
INSERT INTO `z_cates` VALUES ('3', '1', '0', '潮流男装', null, '2019-03-01 15:00:48', '2019-03-01 15:00:48');

-- ----------------------------
-- Table structure for z_product
-- ----------------------------
DROP TABLE IF EXISTS `z_product`;
CREATE TABLE `z_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `cid` int(11) DEFAULT NULL COMMENT '分类',
  `title` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `pro_no` varchar(50) DEFAULT NULL COMMENT '商品编码',
  `keywords` varchar(50) DEFAULT NULL COMMENT '关键词',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `img` varchar(255) DEFAULT NULL COMMENT '商品主图',
  `price` decimal(10,2) DEFAULT NULL COMMENT '商品最低价',
  `cost` decimal(10,2) DEFAULT NULL COMMENT '成本价格',
  `pv` int(11) DEFAULT NULL COMMENT '点击量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of z_product
-- ----------------------------

-- ----------------------------
-- Table structure for z_product_img
-- ----------------------------
DROP TABLE IF EXISTS `z_product_img`;
CREATE TABLE `z_product_img` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `img` varchar(255) DEFAULT NULL COMMENT '详情图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of z_product_img
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
