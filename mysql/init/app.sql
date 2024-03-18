# grant all privileges on dbname.tablename to 'userName'@'%';
# 比如想给用户nacos赋予数据库test所有的表的权限并且不限制nacos用户的连接地址，代码如下
grant all privileges on app.* to 'app'@'%';
# 刷新权限
flush privileges;
create database IF NOT exists app;
use app;
CREATE TABLE IF NOT exists `app_user`  (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wx_openid` varchar(255) NOT NULL DEFAULT '',
  `apple_id` varchar(255) NOT NULL DEFAULT '',
  `qq_openid` varchar(255) NOT NULL DEFAULT '',
  `wb_openid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username`(`username`),
  UNIQUE INDEX `mobile`(`mobile`),
  UNIQUE INDEX `wx`(`wx_openid`),
  UNIQUE INDEX `wb`(`wb_openid`),
  UNIQUE INDEX `qq`(`qq_openid`),
  UNIQUE INDEX `apple`(`apple_id`)
) ENGINE = InnoDB CHARACTER SET = utf8;