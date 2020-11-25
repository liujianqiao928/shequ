/*
Navicat MySQL Data Transfer

Source Server         : cust
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : communoty

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2020-11-24 16:49:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL,
  `type` int(255) NOT NULL,
  `commentator` bigint(255) DEFAULT NULL,
  `gmt_create` bigint(255) DEFAULT NULL,
  `gmt_modified` bigint(255) DEFAULT NULL,
  `like_count` bigint(255) DEFAULT '0',
  `comment_count` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '这是一个内容', '1', '1', '10', '1604989260866', '1604989260866', '7', '7');
INSERT INTO `comment` VALUES ('2', 'aaaaaaaaaaaaaaaaaaaaaaa', '6', '6', '10', '1605081183952', '1605081183952', '7', '7');
INSERT INTO `comment` VALUES ('3', '仄仄仄仄仄仄仄转转转', '5', '6', '10', '1605082030390', '1605082030390', '7', '7');
INSERT INTO `comment` VALUES ('4', '啊啊啊啊啊啊啊啊啊啊', '5', '6', '10', '1605082143369', '1605082143369', '7', '7');
INSERT INTO `comment` VALUES ('5', '啊啊啊', '6', '6', '10', '1605151305865', '1605151305865', '7', '7');
INSERT INTO `comment` VALUES ('6', '啊啊啊', '6', '6', '10', '1605151426153', '1605151426153', '7', '7');
INSERT INTO `comment` VALUES ('7', '阿霞', '6', '6', '10', '1605151549383', '1605151549383', '7', '7');
INSERT INTO `comment` VALUES ('8', '去去去', '6', '6', null, '1605152898652', '1605152898652', null, null);
INSERT INTO `comment` VALUES ('9', '三妻四妾所群', '6', '6', null, '1605153428288', '1605153428288', null, null);
INSERT INTO `comment` VALUES ('10', '啊啊啊啊', '1', '1', '10', '1605153796570', '1605153796570', null, null);
INSERT INTO `comment` VALUES ('11', '嘻嘻嘻嘻嘻嘻嘻嘻寻寻寻寻寻', '1', '6', null, '1605154064975', '1605154064975', null, null);
INSERT INTO `comment` VALUES ('12', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '1', '6', '10', '1605154371355', '1605154371355', null, null);
INSERT INTO `comment` VALUES ('13', '啊啊啊啊啊啊啊啊', '1', '1', '10', '1605155896825', '1605155896825', null, null);
INSERT INTO `comment` VALUES ('14', 'good', '10', '1', '10', '1605160049159', '1605160049159', null, null);
INSERT INTO `comment` VALUES ('15', '啊啊啊', '1', '1', '10', '1605160718306', '1605160718306', null, null);
INSERT INTO `comment` VALUES ('16', '啊啊啊', '1', '1', '10', '1605160718317', '1605160718317', null, null);
INSERT INTO `comment` VALUES ('17', '啊啊啊', '1', '1', '10', '1605160562838', '1605160562838', null, null);
INSERT INTO `comment` VALUES ('18', '真的好a', '10', '1', '10', '1605161320724', '1605161320724', null, null);
INSERT INTO `comment` VALUES ('19', 'js真的', '10', '1', '10', '1605162744681', '1605162744681', null, null);
INSERT INTO `comment` VALUES ('20', 'hao', '11', '1', '10', '1605167208476', '1605167208476', null, null);
INSERT INTO `comment` VALUES ('21', 'aaa', '12', '1', '10', '1605167469257', '1605167469257', null, null);
INSERT INTO `comment` VALUES ('22', 'aaa', '12', '1', '10', '1605167469260', '1605167469260', null, null);
INSERT INTO `comment` VALUES ('23', 'qqq', '3', '1', '10', '1606118997602', '1606118997602', null, null);
INSERT INTO `comment` VALUES ('24', 'qqq', '3', '1', '10', '1606118997618', '1606118997618', null, null);
INSERT INTO `comment` VALUES ('25', 'aaaaaaaaaaa', '2', '1', '10', '1606119025988', '1606119025988', null, null);
INSERT INTO `comment` VALUES ('26', 'aaaaaaaaa', '17', '1', '10', '1606119037107', '1606119037107', null, null);
INSERT INTO `comment` VALUES ('27', 'sssssssss', '2', '1', '10', '1606119966011', '1606119966011', null, null);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `gmt_create` bigint(255) DEFAULT NULL,
  `gmt_modified` bigint(255) DEFAULT NULL,
  `creator` bigint(255) unsigned zerofill NOT NULL,
  `comment_count` int(200) NOT NULL DEFAULT '1',
  `view_count` int(200) NOT NULL DEFAULT '1',
  `like_count` int(255) DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imgs` varchar(50000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'ajax', 'ajax', '1604453992649', '1604453992649', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010', '22', '104', '22', 'java', 'https://image.baidu.com/search/detail?ct=503316480&z=undefined&tn=baiduimagedetail&ipn=d&word=ajax&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=undefined&hd=undefined&latest=undefined&copyright=undefined&cs=4005754747,4127172206&os=1649499912,2187249050&simid=4180465374,630882685&pn=0&rn=1&di=99110&ln=1826&fr=&fmq=1604909194890_R&fm=&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=0&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&objurl=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20161128%2F9ebd2f09da4f4c0095daa563589f11ff_th.png&rpstart=0&rpnum=0&adpicid=0&force=undefined');
INSERT INTO `question` VALUES ('2', 'spring boot', 'qsqsqs', '1603875094315', '1604453992649', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010', '12', '60', '12', 'dddww', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=677271219,1260379003&fm=26&gp=0.jpg');
INSERT INTO `question` VALUES ('3', 'mybatis1', '凄凄切切群群群群群群群群群群群群群', '1604453992649', '1604453992649', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010', '1', '53', '11', 'java,js,vue', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604462708167&di=14178367d43533b8343123cfd8a34f06&imgtype=0&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D2196685962%2C796489853%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `question` VALUES ('4', 'mybatis', 'MyBatis 是一款优秀的持久层框架，它支持自定义 SQL、存储过程以及高级映射。MyBatis 免除了几乎所有的 JDBC 代码以及设置参数和获取结果集的工作。MyBatis 可以通过简单的 XML 或注解来配置和映射原始类型、接口和 Java POJO（Plain Old Java Objects，普通老式 Java 对象）为数据库中的记录。\r\n\r\n', '1604453992649', '1604453992649', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '5', '14', '10', 'java', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604462708167&di=14178367d43533b8343123cfd8a34f06&imgtype=0&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D2196685962%2C796489853%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `question` VALUES ('5', 'mybatis', 'MyBatis 是一款优秀的持久层框架，它支持自定义 SQL、存储过程以及高级映射。MyBatis 免除了几乎所有的 JDBC 代码以及设置参数和获取结果集的工作。MyBatis 可以通过简单的 XML 或注解来配置和映射原始类型、接口和 Java POJO（Plain Old Java Objects，普通老式 Java 对象）为数据库中的记录。\r\n\r\n', '1604453992649', '1604453992649', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '32', '14', '9', 'java', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604462708167&di=14178367d43533b8343123cfd8a34f06&imgtype=0&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D2196685962%2C796489853%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `question` VALUES ('6', 'mybatis', 'MyBatis 是一款优秀的持久层框架，它支持自定义 SQL、存储过程以及高级映射。MyBatis 免除了几乎所有的 JDBC 代码以及设置参数和获取结果集的工作。MyBatis 可以通过简单的 XML 或注解来配置和映射原始类型、接口和 Java POJO（Plain Old Java Objects，普通老式 Java 对象）为数据库中的记录。\r\n\r\n', '1604453992649', '1604453992649', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '55', '56', '8', 'java', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604462708167&di=14178367d43533b8343123cfd8a34f06&imgtype=0&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D2196685962%2C796489853%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `question` VALUES ('7', 'mybatis', 'MyBatis 是一款优秀的持久层框架，它支持自定义 SQL、存储过程以及高级映射。MyBatis 免除了几乎所有的 JDBC 代码以及设置参数和获取结果集的工作。MyBatis 可以通过简单的 XML 或注解来配置和映射原始类型、接口和 Java POJO（Plain Old Java Objects，普通老式 Java 对象）为数据库中的记录。\r\n\r\n', '1604453992649', '1604453992649', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '55', '6', '8', 'java', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604462708167&di=14178367d43533b8343123cfd8a34f06&imgtype=0&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D2196685962%2C796489853%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `question` VALUES ('8', 'ssm', '优秀框架', '1605157246663', '1605157246663', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '1', '2', null, 'ssm', 'https://image.baidu.com/search/detail?ct=503316480&z=undefined&tn=baiduimagedetail&ipn=d&word=ssm%E6%A1%86%E6%9E%B6&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=undefined&hd=undefined&latest=undefined&copyright=undefined&cs=2368845565,1528382865&os=825756355,4012257877&simid=0,0&pn=5&rn=1&di=169290&ln=1282&fr=&fmq=1605156981714_R&fm=&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=0&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&objurl=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20200330%2F212f07a467c04703b871b82ef667d849.jpeg&rpstart=0&rpnum=0&adpicid=0&force=undefined');
INSERT INTO `question` VALUES ('10', 'js', 'good', '1605160028288', '1605160028288', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010', '1', '35', null, 'js', 'data:image/jpeg;base64,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707DWDlLWyPHxN/FdyXzlgD/AFVWGpmpZBJG4tI7jqqM9NT1cLoZ2hzXbEEZBWC28nhJ0Vwmq7ltXfGx83MYqWoOGtJ7AH2WLm4nBFvttYJf7R6PlqIozj61SNLmlTGshYwdAqettVDXRclVRRyg92SMDh+q3qg4jX6ii8Nzg9vqN/moc1FwM0Zdzz0zDC7f9J9nf0UDOodNXy2T8lRaqqLHpJA4f4Liy2RreWRjh94wp1tS7G7W6zh8nUWhbdM3GP8AdWg4/AK2+p/Dp4W9QskLtu4InyA/FD0Lc+q2Sn4oRADxITnvuo2l+zlWNeXQ1uR2GMKG8sb7dfmvnJGOzWqWit8J7hgr2NjFtrIS12eaN4yfktkfhMcMtOMto695+bwshLxNtLhu1x+CQ8Ar85/5kzAPeokamEuHK1hPX0CporRc5p208Fkq5XzO5YhFTuOT+Smd014b3CzYow6TbiGoewDDqjqSfdXI0lw67N6MhZHYdvbbByD4SaVriPzCxdRxJoub8qEn44WTpuAdwE48WqAb3wMqGXafgX4mt2a9osG3tdDSv+zVV8Plx/msutgfBUoYooa/fvVHnOc8F9BRHDSO+ObuFIfDa6KijEdDSRxNHZsTA0fotwhIILmn8Vq1y11dK/2YsRj06/NSLZeD2lrS8SPaZX/7j7PyXRtouGLZPZS2xW/QOhqKmdEwN+smIGR2Pd3crvrg0O6tBWoYQRgI9pJ6BaZNLLUP55HEnzKlKnp4aWIRwtDWjsBgLVoAHQLVEVMK46IiIvUREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREX/9k=');
INSERT INTO `question` VALUES ('12', 'spring', 'gof', '1605167446030', '1605167446030', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010', '1', '8', null, 'java', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3827979352,1501043192&fm=26&gp=0.jpg');
INSERT INTO `question` VALUES ('17', 'spring boot', 'xxx', '1605492924874', '1605492924874', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010', '1', '9', null, 'java', '\\images\\1.jpg');
INSERT INTO `question` VALUES ('20', 'spring boot', 'aaaaaaassssssssss', '1606122258503', '1606122258503', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010', '1', '7', null, 'java,js,jq,vue,sql', '\\images\\GitHub.jpg');

-- ----------------------------
-- Table structure for tourist
-- ----------------------------
DROP TABLE IF EXISTS `tourist`;
CREATE TABLE `tourist` (
  `user_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `user_email` varchar(32) NOT NULL COMMENT '用户密码',
  `user_password` varchar(32) NOT NULL,
  `user_state` int(1) DEFAULT NULL COMMENT '1:正常,0:暂停',
  `user_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tourist
-- ----------------------------
INSERT INTO `tourist` VALUES ('10', 'ljq', '没有', '2492112242@qq.com', 'sqsq', '1', '1');
INSERT INTO `tourist` VALUES ('11', 'aaljq', '模块', '2492112242@qq.com', 'sqsq', '1', '1');
INSERT INTO `tourist` VALUES ('14', 'woskkkk', '看见', '510221@166.com', 'qs', '1', '1');
INSERT INTO `tourist` VALUES ('16', 'liujianqiaoqas', '几', '510221@166.com', '10140', '1', '1');
INSERT INTO `tourist` VALUES ('17', 'liujianqiao', 'meiyou', '2492112242@qq.com', 'zzzz', '1', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `gmt_create` bigint(255) DEFAULT NULL,
  `gmt_modified` bigint(255) DEFAULT NULL,
  `avater_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'null', '小乔', '6304bef7-baf6-4b13-b728-92b1557de863', '1604637568784', '1604637568784', null);
INSERT INTO `users` VALUES ('2', 'com.custchina.shequdemo.dto.GithubUser@6f723472', '小乔', '384d5f53-a7af-461e-acbb-4bdb2be0eecf', '1604638145416', null, null);