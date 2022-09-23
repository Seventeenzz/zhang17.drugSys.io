/*
 Navicat Premium Data Transfer

 Source Server         : MysqlTest
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : lms

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 06/03/2022 20:40:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, 'teacherGroup');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (8, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (1, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 40);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 实验室', 7, 'add_lab');
INSERT INTO `auth_permission` VALUES (26, 'Can change 实验室', 7, 'change_lab');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 实验室', 7, 'delete_lab');
INSERT INTO `auth_permission` VALUES (28, 'Can view 实验室', 7, 'view_lab');
INSERT INTO `auth_permission` VALUES (29, 'Can add 药品列表', 8, 'add_medicine');
INSERT INTO `auth_permission` VALUES (30, 'Can change 药品列表', 8, 'change_medicine');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 药品列表', 8, 'delete_medicine');
INSERT INTO `auth_permission` VALUES (32, 'Can view 药品列表', 8, 'view_medicine');
INSERT INTO `auth_permission` VALUES (33, 'Can add 用户信息', 9, 'add_commonuser');
INSERT INTO `auth_permission` VALUES (34, 'Can change 用户信息', 9, 'change_commonuser');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 用户信息', 9, 'delete_commonuser');
INSERT INTO `auth_permission` VALUES (36, 'Can view 用户信息', 9, 'view_commonuser');
INSERT INTO `auth_permission` VALUES (37, 'Can add 借用记录', 10, 'add_borrow');
INSERT INTO `auth_permission` VALUES (38, 'Can change 借用记录', 10, 'change_borrow');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 借用记录', 10, 'delete_borrow');
INSERT INTO `auth_permission` VALUES (40, 'Can view 借用记录', 10, 'view_borrow');
INSERT INTO `auth_permission` VALUES (41, 'Can add 仪器列表', 11, 'add_instrument');
INSERT INTO `auth_permission` VALUES (42, 'Can change 仪器列表', 11, 'change_instrument');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 仪器列表', 11, 'delete_instrument');
INSERT INTO `auth_permission` VALUES (44, 'Can view 仪器列表', 11, 'view_instrument');
INSERT INTO `auth_permission` VALUES (45, 'Can add 借用仪器记录', 12, 'add_insborrow');
INSERT INTO `auth_permission` VALUES (46, 'Can change 借用仪器记录', 12, 'change_insborrow');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 借用仪器记录', 12, 'delete_insborrow');
INSERT INTO `auth_permission` VALUES (48, 'Can view 借用仪器记录', 12, 'view_insborrow');
INSERT INTO `auth_permission` VALUES (49, 'Can add 文件', 13, 'add_doc');
INSERT INTO `auth_permission` VALUES (50, 'Can change 文件', 13, 'change_doc');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 文件', 13, 'delete_doc');
INSERT INTO `auth_permission` VALUES (52, 'Can view 文件', 13, 'view_doc');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$OV16P5E1VV3l$mT48dpSeq1bBbANKD1w/vbWKygABp4+hHBRVZNkO1ZQ=', '2022-03-05 09:12:55.017461', 1, 'admin', '', '', 'admin@163.com', 1, 1, '2021-09-25 10:52:54.317234');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$150000$6GbqLD5HJRju$roTyfDciBLSd0cwD9NjvKGHjitUqawbsPB/X8ub/Ryo=', '2021-10-17 02:42:55.634094', 0, '19002028', '', '', 'szh@91.com', 0, 1, '2021-09-25 10:53:59.638712');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$150000$g7xxYtSqIqWI$mL8uToH78aKdcvXJquAklZ/J1zWrAzbZRH65CJz07UM=', '2022-03-05 11:06:06.743965', 0, '19002022', '', '', 'zcy@gmail.com', 1, 1, '2021-10-05 07:02:00.000000');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$150000$lvu0GoSUFUjb$KUnr7UOdoaBzGWQQ7frIALrLgy56wku9ww+m0sNE7jk=', '2022-01-08 11:13:32.030608', 0, '19002044', '', '', 'zjf@qq.com', 0, 1, '2021-10-05 07:04:00.000000');
INSERT INTO `auth_user` VALUES (9, 'pbkdf2_sha256$150000$92rGua48Cm9t$Rzi9Az2wKndnG4+rebrWT6wOaIB9sVTD4Pc63vPCNHc=', '2022-01-27 09:30:31.488659', 0, '19001234', '', '', 'xiaomeng123@163.com', 0, 1, '2022-01-08 02:52:22.518346');
INSERT INTO `auth_user` VALUES (10, 'pbkdf2_sha256$150000$myoG4Ee7UzbH$AWEVNL0QPjcgbUMbyg1qjXFIXSQ7x+cgt60O+p8VSjI=', '2022-01-13 00:51:50.105482', 0, 'x100x', '张老师', '张', '', 1, 1, '2022-01-09 05:43:00.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES (1, 3, 1);
INSERT INTO `auth_user_groups` VALUES (2, 10, 1);

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2021-09-25 10:56:47.191228', '1', '硝酸', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (2, '2021-09-25 10:57:01.259157', '2', '盐酸', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (3, '2021-09-25 10:57:17.170768', '3', '氢氧化钠', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (4, '2021-09-25 10:57:37.708505', '4', '碳水化合物', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (5, '2021-09-25 10:58:02.256640', '1', 'room1', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (6, '2021-09-25 10:58:19.780198', '2', 'room2', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (7, '2021-09-25 10:58:43.486233', '3', 'room3', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (8, '2021-09-25 10:58:55.708059', '1', 'Borrow object (1)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (9, '2021-09-25 10:59:03.905447', '2', 'Borrow object (2)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (10, '2021-09-25 11:50:36.617821', '6', '氢氧化钠', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (11, '2021-09-25 11:52:30.600020', '6', '氢氧化钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (12, '2021-09-25 12:03:02.705061', '6', '氢氧化钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (13, '2021-09-25 12:05:11.951989', '6', '氢氧化钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (14, '2021-09-25 12:05:11.955177', '8', '碳酸钠', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (15, '2021-09-25 12:08:29.607679', '8', '碳酸钠', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (16, '2021-09-25 12:09:16.956588', '6', '氢氧化钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (17, '2021-09-25 12:09:16.958597', '10', '碳酸钠', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (18, '2021-10-02 12:51:10.598022', '6', '氢氧化钙', 2, '[{\"changed\": {\"fields\": [\"name\", \"detail\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (19, '2021-10-02 12:56:25.217992', '10', '碳酸钠', 2, '[{\"changed\": {\"fields\": [\"usedtotal\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (20, '2021-10-02 14:07:49.270129', '5', 'Borrow object (5)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (21, '2021-10-02 14:08:13.641959', '6', 'Borrow object (6)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (22, '2021-10-02 14:08:22.684100', '7', 'Borrow object (7)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (23, '2021-10-02 14:08:30.426482', '8', 'Borrow object (8)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (24, '2021-10-02 14:08:37.203164', '9', 'Borrow object (9)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (25, '2021-10-02 14:08:43.364367', '10', 'Borrow object (10)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (26, '2021-10-02 14:08:50.105221', '11', 'Borrow object (11)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (27, '2021-10-05 07:02:54.560412', '3', '19002022', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u7528\\u6237\\u4fe1\\u606f\", \"object\": \"19002022\"}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (28, '2021-10-05 07:03:28.777658', '3', '19002022', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (29, '2021-10-05 07:04:27.514637', '4', '19002040', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u7528\\u6237\\u4fe1\\u606f\", \"object\": \"19002040\"}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (30, '2021-10-05 07:04:45.049205', '4', '19002040', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (31, '2021-10-05 07:05:12.319288', '12', 'Borrow object (12)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (32, '2021-10-05 07:05:19.752821', '13', 'Borrow object (13)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (33, '2021-10-05 07:05:27.164136', '14', 'Borrow object (14)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (34, '2021-10-05 07:05:34.177650', '15', 'Borrow object (15)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (35, '2021-10-05 07:05:41.725454', '16', 'Borrow object (16)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (36, '2021-10-05 07:05:49.768526', '17', 'Borrow object (17)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (37, '2021-10-05 07:09:36.313705', '11', '氯化钠', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (38, '2021-10-05 07:10:07.416008', '12', '苯', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (39, '2021-10-05 07:10:48.494983', '13', '硝酸铵', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (40, '2021-10-05 07:11:39.148169', '14', '碳酸钾', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (41, '2021-10-05 07:12:10.175664', '15', '乙醚', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (42, '2021-10-05 07:12:40.142043', '16', '甲烷', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (43, '2021-10-17 03:19:19.378101', '3', '19002022', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (44, '2021-10-17 03:21:07.491733', '3', '19002022', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (45, '2021-10-17 03:28:36.129328', '5', 'maozi', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u7528\\u6237\\u4fe1\\u606f\", \"object\": \"maozi\"}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (46, '2021-10-17 03:29:26.087067', '5', 'maozi', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"user_permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (47, '2021-10-17 06:23:28.935726', '7', '3', 3, '', 4, 1);
INSERT INTO `django_admin_log` VALUES (48, '2021-10-17 06:23:28.938718', '6', '56', 3, '', 4, 1);
INSERT INTO `django_admin_log` VALUES (49, '2021-10-17 06:24:07.115617', '5', 'teacher1', 2, '[{\"changed\": {\"fields\": [\"username\"]}}, {\"changed\": {\"name\": \"\\u7528\\u6237\\u4fe1\\u606f\", \"object\": \"teacher1\", \"fields\": [\"nickyName\", \"faculty\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (50, '2021-10-22 13:29:44.681747', '3', 'room3', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (51, '2021-10-22 13:29:54.999438', '2', 'room2', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (52, '2021-10-22 13:30:24.243954', '1', 'room1', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (53, '2021-10-22 13:36:56.555895', '22', 'Borrow object (22)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (54, '2021-10-22 13:36:56.558869', '21', 'Borrow object (21)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (55, '2021-10-22 13:36:56.561861', '20', 'Borrow object (20)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (56, '2021-10-22 13:36:56.564853', '19', 'Borrow object (19)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (57, '2021-10-22 13:36:56.566847', '18', 'Borrow object (18)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (58, '2021-10-22 13:36:56.569840', '17', 'Borrow object (17)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (59, '2021-10-22 13:36:56.571835', '16', 'Borrow object (16)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (60, '2021-10-22 13:36:56.573834', '15', 'Borrow object (15)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (61, '2021-10-22 13:36:56.575824', '14', 'Borrow object (14)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (62, '2021-10-22 13:36:56.577819', '13', 'Borrow object (13)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (63, '2021-10-22 13:37:18.427934', '22', 'Borrow object (22)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (64, '2021-10-22 13:37:18.430927', '21', 'Borrow object (21)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (65, '2021-10-22 13:37:18.433918', '20', 'Borrow object (20)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (66, '2021-10-22 13:37:18.435912', '19', 'Borrow object (19)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (67, '2021-10-22 13:37:18.436910', '18', 'Borrow object (18)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (68, '2021-10-22 13:37:18.439902', '17', 'Borrow object (17)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (69, '2021-10-22 13:37:18.440899', '16', 'Borrow object (16)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (70, '2021-10-22 13:37:18.442894', '15', 'Borrow object (15)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (71, '2021-10-22 13:37:18.444888', '14', 'Borrow object (14)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (72, '2021-10-22 13:37:18.446882', '13', 'Borrow object (13)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (73, '2021-10-22 13:41:48.412298', '23', 'Borrow object (23)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (74, '2021-10-22 13:42:26.747867', '24', 'Borrow object (24)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (75, '2021-10-22 13:42:34.708059', '25', 'Borrow object (25)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (76, '2021-10-22 13:42:40.858068', '26', 'Borrow object (26)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (77, '2021-10-22 13:42:48.066641', '27', 'Borrow object (27)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (78, '2021-10-22 13:42:59.659532', '28', 'Borrow object (28)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (79, '2021-10-22 13:43:11.269158', '29', 'Borrow object (29)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (80, '2021-10-22 13:43:18.598393', '30', 'Borrow object (30)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (81, '2021-10-22 13:43:28.405629', '31', 'Borrow object (31)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (82, '2021-10-22 13:43:34.836078', '32', 'Borrow object (32)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (83, '2021-10-22 13:43:40.862216', '33', 'Borrow object (33)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (84, '2021-10-22 13:43:48.737432', '34', 'Borrow object (34)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (85, '2021-11-09 14:38:11.116569', '17', '1', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (86, '2021-11-09 14:38:14.243697', '18', '2', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (87, '2021-11-09 14:38:16.890253', '19', '3', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (88, '2021-11-09 14:38:19.867080', '20', '4', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (89, '2021-11-09 14:38:23.291617', '21', '5', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (90, '2021-11-09 14:38:26.703921', '22', '6', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (91, '2021-11-09 14:38:30.753674', '23', '7', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (92, '2021-11-09 14:38:33.248731', '24', '8', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (93, '2021-11-09 14:38:35.895145', '25', '9', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (94, '2021-11-09 14:38:39.850189', '26', '10', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (95, '2021-11-09 14:38:43.127819', '27', '11', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (96, '2021-11-09 14:38:46.328638', '28', '12', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (97, '2021-11-09 14:38:49.464198', '29', '13', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (98, '2021-11-09 14:38:52.024649', '30', '14', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (99, '2021-12-05 07:38:08.913314', '17', '乙烯', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (100, '2021-12-05 07:38:08.919586', '26', '氯化钴', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (101, '2021-12-05 07:38:08.922941', '27', '碳酸钾', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (102, '2021-12-05 07:38:08.926026', '28', '硼酸', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (103, '2021-12-05 07:38:08.929159', '29', '氰化物', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (104, '2021-12-05 07:38:08.932207', '30', '玻尿酸', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (105, '2021-12-05 07:38:08.934652', '18', '乙酸', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (106, '2021-12-05 07:38:08.938189', '19', '氯化苯', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (107, '2021-12-05 07:38:08.941345', '20', '硝酸钠', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (108, '2021-12-05 07:38:08.944990', '21', '二甲基甲苯', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (109, '2021-12-05 07:38:08.955740', '22', '氦气', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (110, '2021-12-05 07:38:08.959009', '23', '硫酸', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (111, '2021-12-05 07:38:08.961999', '24', '硫酸钠', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (112, '2021-12-05 07:38:08.972486', '25', '钠', 1, 'new through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (113, '2021-12-05 07:38:08.975809', '1', '硝酸', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (114, '2021-12-05 07:38:08.978757', '11', '氯化钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (115, '2021-12-05 07:38:08.982401', '2', '盐酸', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (116, '2021-12-05 07:38:08.985393', '3', '氢氧化钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (117, '2021-12-05 07:38:08.988513', '4', '碳水化合物', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (118, '2021-12-05 07:38:08.992538', '6', '氢氧化钙', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (119, '2021-12-05 07:38:08.995533', '10', '碳酸钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (120, '2021-12-05 07:38:08.998540', '12', '苯', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (121, '2021-12-05 07:38:09.002528', '13', '硝酸铵', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (122, '2021-12-05 07:38:09.006016', '14', '碳酸钾', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (123, '2021-12-05 07:38:09.009252', '15', '乙醚', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (124, '2021-12-05 07:38:09.011946', '16', '甲烷', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (125, '2021-12-05 07:39:20.860388', '4', 'room4', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (126, '2022-01-08 02:23:51.926744', '8', '1', 3, '', 4, 1);
INSERT INTO `django_admin_log` VALUES (127, '2022-01-08 02:23:51.941704', '5', 'teacher1', 3, '', 4, 1);
INSERT INTO `django_admin_log` VALUES (128, '2022-01-08 02:27:07.339243', '1', 'teacherGroup', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (129, '2022-01-08 02:28:22.127581', '3', '19002022', 2, '[{\"changed\": {\"fields\": [\"groups\", \"user_permissions\", \"last_login\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (130, '2022-01-08 10:21:22.033878', '1', '硝酸', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (131, '2022-01-08 10:21:22.036870', '11', '氯化钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (132, '2022-01-08 10:21:22.038864', '2', '盐酸', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (133, '2022-01-08 10:21:22.040860', '3', '氢氧化钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (134, '2022-01-08 10:21:22.041856', '4', '碳水化合物', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (135, '2022-01-08 10:21:22.043851', '6', '氢氧化钙', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (136, '2022-01-08 10:21:22.045846', '10', '碳酸钠', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (137, '2022-01-08 10:21:22.047840', '12', '苯', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (138, '2022-01-08 10:21:22.049835', '13', '硝酸铵', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (139, '2022-01-08 10:21:22.052828', '14', '碳酸钾', 2, 'update through import_export', 8, 1);
INSERT INTO `django_admin_log` VALUES (140, '2022-01-08 10:22:52.235461', '39', 'Borrow object (39)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (141, '2022-01-08 10:22:52.238454', '37', 'Borrow object (37)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (142, '2022-01-08 10:23:17.275727', '38', 'Borrow object (38)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (143, '2022-01-08 10:23:17.277722', '37', 'Borrow object (37)', 2, 'update through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (144, '2022-01-08 10:28:56.883620', '49', 'Borrow object (49)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (145, '2022-01-08 10:28:56.885614', '50', 'Borrow object (50)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (146, '2022-01-08 10:28:56.887609', '51', 'Borrow object (51)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (147, '2022-01-08 10:28:56.890601', '52', 'Borrow object (52)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (148, '2022-01-08 10:28:56.892596', '53', 'Borrow object (53)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (149, '2022-01-08 10:28:56.894592', '54', 'Borrow object (54)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (150, '2022-01-08 10:28:56.896586', '55', 'Borrow object (55)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (151, '2022-01-08 10:28:56.898580', '56', 'Borrow object (56)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (152, '2022-01-08 10:28:56.900574', '57', 'Borrow object (57)', 1, 'new through import_export', 10, 1);
INSERT INTO `django_admin_log` VALUES (153, '2022-01-09 05:43:16.208206', '10', 'x100x', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u5b66\\u751f\\u4fe1\\u606f\", \"object\": \"x100x\"}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (154, '2022-01-09 05:43:46.168350', '10', 'x100x', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"is_staff\", \"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (155, '2022-01-27 07:22:32.036929', '67', 'Borrow object (67)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (156, '2022-01-27 07:22:40.457747', '68', 'Borrow object (68)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (157, '2022-01-27 07:22:45.100131', '68', 'Borrow object (68)', 2, '[]', 10, 1);
INSERT INTO `django_admin_log` VALUES (158, '2022-01-27 07:22:55.211725', '69', 'Borrow object (69)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (159, '2022-01-27 07:23:03.029376', '70', 'Borrow object (70)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (160, '2022-01-27 07:23:09.926486', '71', 'Borrow object (71)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (161, '2022-01-27 07:26:52.995304', '72', 'Borrow object (72)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (162, '2022-01-27 07:27:05.424494', '73', 'Borrow object (73)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (163, '2022-01-27 07:27:21.218331', '74', 'Borrow object (74)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (164, '2022-01-27 07:27:30.255795', '75', 'Borrow object (75)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (165, '2022-01-27 07:28:31.710460', '76', 'Borrow object (76)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (166, '2022-01-27 07:28:40.332042', '77', 'Borrow object (77)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (167, '2022-01-27 07:28:51.148367', '78', 'Borrow object (78)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (168, '2022-02-28 01:37:04.111758', '1', 'Instrument object (1)', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (169, '2022-02-28 01:37:29.334340', '2', 'Instrument object (2)', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (170, '2022-02-28 01:43:30.277124', '1', 'InsBorrow object (1)', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (171, '2022-03-01 13:49:57.500245', '1', 'Doc object (1)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (172, '2022-03-05 09:21:39.507714', '81', 'Borrow object (81)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (173, '2022-03-05 09:21:49.036391', '82', 'Borrow object (82)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (174, '2022-03-05 09:21:59.073142', '83', 'Borrow object (83)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (175, '2022-03-05 09:23:32.357966', '1', 'Doc object (1)', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (176, '2022-03-05 10:36:37.131588', '2', '华东理工大学突发危险化学品事件应急预案（试行）.doc', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (177, '2022-03-05 10:45:56.637439', '3', '华东理工大学突发危险化学品事件应急预案（试行）', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (178, '2022-03-05 11:00:57.530442', '4', '华东理工大学实验室工作条例', 1, '[{\"added\": {}}]', 13, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (10, 'lms', 'borrow');
INSERT INTO `django_content_type` VALUES (9, 'lms', 'commonuser');
INSERT INTO `django_content_type` VALUES (13, 'lms', 'doc');
INSERT INTO `django_content_type` VALUES (12, 'lms', 'insborrow');
INSERT INTO `django_content_type` VALUES (11, 'lms', 'instrument');
INSERT INTO `django_content_type` VALUES (7, 'lms', 'lab');
INSERT INTO `django_content_type` VALUES (8, 'lms', 'medicine');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-09-25 10:46:35.185489');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-09-25 10:46:35.386732');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-09-25 10:46:35.907508');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-09-25 10:46:36.039057');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-25 10:46:36.047693');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-09-25 10:46:36.162391');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-09-25 10:46:36.260363');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-09-25 10:46:36.361521');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-09-25 10:46:36.375647');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-09-25 10:46:36.441467');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-09-25 10:46:36.445236');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-25 10:46:36.452220');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-09-25 10:46:36.542057');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-25 10:46:36.610768');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-09-25 10:46:36.640235');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-09-25 10:46:36.650867');
INSERT INTO `django_migrations` VALUES (17, 'lms', '0001_initial', '2021-09-25 10:46:36.838469');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2021-09-25 10:46:37.126222');
INSERT INTO `django_migrations` VALUES (19, 'lms', '0002_auto_20220228_0933', '2022-02-28 01:35:25.306211');
INSERT INTO `django_migrations` VALUES (20, 'lms', '0003_auto_20220228_0935', '2022-02-28 01:35:25.493698');
INSERT INTO `django_migrations` VALUES (21, 'lms', '0004_doc', '2022-03-01 13:44:21.933038');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0uaj0hrcji6ttbjrqvkp596lwjun476j', 'MWI1N2U5MjI2NDA5N2VjMjA0YzY0YWJiY2Y0NThkZThjNjgzNjFjNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NTZmZVxcdTg4NjhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTU2ZmVcXHU4ODY4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1NTE4NVxcdTdmNTFcXHU3YTdmXFx1OTAwZlwiLCBcInVybFwiOiBcImh0dHBzOi8vd3d3Lndlem96LmNvbVwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTUxODVcXHU3ZjUxXFx1N2E3ZlxcdTkwMGZcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTB9LCB7XCJuYW1lXCI6IFwiXFx1NTE4NVxcdTdmNTFcXHU3YTdmXFx1OTAwZlwiLCBcInVybFwiOiBcImh0dHBzOi8vd3d3Lndlem96LmNvbVwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTUxODVcXHU3ZjUxXFx1N2E3ZlxcdTkwMGZcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTF9XSwgXCJlaWRcIjogMTAwOH1dIiwic2ltcGxldWlfMjAyMTEyMTkiOnRydWV9', '2022-01-02 09:05:12.522386');
INSERT INTO `django_session` VALUES ('1t836zlby4udn9t123p6d55i6pnejp8w', 'Y2U2NTFhZDUzYmEyYjg0ODgyZmZmY2FiNDU4ZTdhOTk3MjA5OWZkYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fV0iLCJzaW1wbGV1aV8yMDIxMTAwMiI6dHJ1ZX0=', '2021-10-16 12:50:47.912885');
INSERT INTO `django_session` VALUES ('2s0halkcikpvodc2hp6h1t31xyd4jy30', 'ZTEyMzFlMjQ2NjFlZGQzYzYwYzcxZWNlZDRlOGE1YjJmNTlmZTZiNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NjAzYlxcdTg5YzhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTYwM2JcXHU4OWM4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwidXJsXCI6IFwiY2hhcnQyXCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIn1dLCBcImVpZFwiOiAxMDEwfSwge1wibmFtZVwiOiBcIlxcdTk4ODRcXHU4YjY2XFx1OTg3NVxcdTk3NjJcIiwgXCJ1cmxcIjogXCJwcmVkaWN0XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OTg4NFxcdThiNjZcXHU5ODc1XFx1OTc2MlwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCJ9XSwgXCJlaWRcIjogMTAxMX1dLCBcImVpZFwiOiAxMDA4fV0iLCJzaW1wbGV1aV8yMDIyMDEwOSI6dHJ1ZSwic2ltcGxldWlfMjAyMjAxMTAiOnRydWV9', '2022-01-24 05:32:44.638529');
INSERT INTO `django_session` VALUES ('36hdx5wde3h69v7kxmlassptszwzp6kd', 'YTVhNzNjMjkwNzk5M2MwZWM5Njg3Njk2NDYxMDYxYjlkOGViM2YxODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NTZmZVxcdTg4NjhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTU2ZmVcXHU4ODY4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1NTE4NVxcdTdmNTFcXHU3YTdmXFx1OTAwZlwiLCBcInVybFwiOiBcImh0dHBzOi8vd3d3Lndlem96LmNvbVwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTUxODVcXHU3ZjUxXFx1N2E3ZlxcdTkwMGZcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTB9LCB7XCJuYW1lXCI6IFwiXFx1NTE4NVxcdTdmNTFcXHU3YTdmXFx1OTAwZlwiLCBcInVybFwiOiBcImh0dHBzOi8vd3d3Lndlem96LmNvbVwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTUxODVcXHU3ZjUxXFx1N2E3ZlxcdTkwMGZcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTF9XSwgXCJlaWRcIjogMTAwOH1dIiwic2ltcGxldWlfMjAyMTEwMDUiOnRydWV9', '2021-10-19 07:14:35.627474');
INSERT INTO `django_session` VALUES ('3vjag5eae92gw16qnjwdmd99a5fltapc', 'ODQyODFmMWE4YjMzYzNjMTUyZjI5NTZhMjk2MDEwNzdlYzlhYWIwZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmVlNGI0ZDQ0ZDM0NzJiZTJkNGUxMmJmMGUyYzQwNDExMzQ3OWEwIn0=', '2022-03-14 11:08:00.536273');
INSERT INTO `django_session` VALUES ('5z1ingbocd5c3oucw31du7johd5eanpp', 'ZTJkYjM4MDNjNzU5MGQ2ZmRmMTQ0MjJlNjkyNTA5NTM2MzFiZDAxZjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmVlNGI0ZDQ0ZDM0NzJiZTJkNGUxMmJmMGUyYzQwNDExMzQ3OWEwIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBudWxsLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiTG1zXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU1MDFmXFx1NzUyOFxcdThiYjBcXHU1ZjU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAyfSwge1wibmFtZVwiOiBcIlxcdTViOWVcXHU5YThjXFx1NWJhNFwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2xtcy9sYWIvXCIsIFwiYWRkVXJsXCI6IG51bGwsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTViOWVcXHU5YThjXFx1NWJhNFwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwM30sIHtcIm5hbWVcIjogXCJcXHU4MzZmXFx1NTRjMVxcdTUyMTdcXHU4ODY4XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vbG1zL21lZGljaW5lL1wiLCBcImFkZFVybFwiOiBudWxsLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiTG1zXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU4MzZmXFx1NTRjMVxcdTUyMTdcXHU4ODY4XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDA0fV0sIFwiZWlkXCI6IDEwMDF9LCB7XCJuYW1lXCI6IFwiXFx1NTNlZlxcdTg5YzZcXHU1MzE2XCIsIFwiaWNvblwiOiBcImZhIGZhLWZpbGVcIiwgXCJtb2RlbHNcIjogW3tcIm5hbWVcIjogXCJcXHU2MDNiXFx1ODljOFwiLCBcInVybFwiOiBcImNoYXJ0MVwiLCBcImljb25cIjogXCJmYXIgZmEtc3VycHJpc2VcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NjAzYlxcdTg5YzhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCJ9XSwgXCJlaWRcIjogMTAwNn0sIHtcIm5hbWVcIjogXCJcXHU4ZmQxXFx1NGUwMFxcdTY3MDhcIiwgXCJ1cmxcIjogXCJjaGFydDJcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NTNlZlxcdTg5YzZcXHU1MzE2XCIsIFwiaWNvblwiOiBcImZhIGZhLWZpbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU4ZmQxXFx1NGUwMFxcdTY3MDhcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMDd9LCB7XCJuYW1lXCI6IFwiXFx1OTg4NFxcdThiNjZcXHU5ODc1XFx1OTc2MlwiLCBcInVybFwiOiBcInByZWRpY3RcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NTNlZlxcdTg5YzZcXHU1MzE2XCIsIFwiaWNvblwiOiBcImZhIGZhLWZpbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU5ODg0XFx1OGI2NlxcdTk4NzVcXHU5NzYyXCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIn1dLCBcImVpZFwiOiAxMDA4fV0sIFwiZWlkXCI6IDEwMDV9XSIsInNpbXBsZXVpXzIwMjIwMjI1Ijp0cnVlfQ==', '2022-03-11 12:39:23.516680');
INSERT INTO `django_session` VALUES ('d2mx2ath7ca4ldlqw56a6wkm2hcv75jf', 'MmU2MWI3NjI0YjNkYzExZDBhNDE3NjY4YmNjM2U0NDQ0ZTkzODAzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fV0iLCJzaW1wbGV1aV8yMDIxMDkyNSI6dHJ1ZX0=', '2021-10-09 12:11:48.587639');
INSERT INTO `django_session` VALUES ('godyjtcij180f43js70znqiv8d0gc1nw', 'YjE0ZDkyMTU0MGUyZDU0MjMwMThkMjljYzBjNGZhODkyNzhjYjFmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NTZmZVxcdTg4NjhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTU2ZmVcXHU4ODY4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1NTE4NVxcdTdmNTFcXHU3YTdmXFx1OTAwZlwiLCBcInVybFwiOiBcImh0dHBzOi8vd3d3Lndlem96LmNvbVwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTUxODVcXHU3ZjUxXFx1N2E3ZlxcdTkwMGZcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTB9LCB7XCJuYW1lXCI6IFwiXFx1NTE4NVxcdTdmNTFcXHU3YTdmXFx1OTAwZlwiLCBcInVybFwiOiBcImh0dHBzOi8vd3d3Lndlem96LmNvbVwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTUxODVcXHU3ZjUxXFx1N2E3ZlxcdTkwMGZcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTF9XSwgXCJlaWRcIjogMTAwOH1dIiwic2ltcGxldWlfMjAyMTEwMjIiOnRydWV9', '2021-11-05 13:43:53.114867');
INSERT INTO `django_session` VALUES ('hyz95zfbjmwug7h1yg3apczv0yfedhx2', 'ODQyODFmMWE4YjMzYzNjMTUyZjI5NTZhMjk2MDEwNzdlYzlhYWIwZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmVlNGI0ZDQ0ZDM0NzJiZTJkNGUxMmJmMGUyYzQwNDExMzQ3OWEwIn0=', '2022-03-19 11:06:06.746958');
INSERT INTO `django_session` VALUES ('lifkfcqwo7bprasxdvhbfb4bwi5rfws8', 'NTk3OTNiOWIxMTJjZTY1YmIyNGY2OTQ4ZTU5YWE3MGUwYmQ2YmRhMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTRlZWFcXHU1NjY4XFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvaW5zdHJ1bWVudC9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vbG1zL2luc3RydW1lbnQvYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiTG1zXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU0ZWVhXFx1NTY2OFxcdTUyMTdcXHU4ODY4XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAyfSwge1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1NGVlYVxcdTU2NjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2xtcy9pbnNib3Jyb3cvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9pbnNib3Jyb3cvYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiTG1zXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU1MDFmXFx1NzUyOFxcdTRlZWFcXHU1NjY4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDN9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4MzZmXFx1NTRjMVxcdThiYjBcXHU1ZjU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vbG1zL2JvcnJvdy9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vbG1zL2JvcnJvdy9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1ODM2ZlxcdTU0YzFcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwNH0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTY1ODdcXHU0ZWY2XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vbG1zL2RvYy9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vbG1zL2RvYy9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTY1ODdcXHU0ZWY2XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDd9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA5fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAxMH1dLCBcImVpZFwiOiAxMDA4fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NjAzYlxcdTg5YzhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTYwM2JcXHU4OWM4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMTJ9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwidXJsXCI6IFwiY2hhcnQyXCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIn1dLCBcImVpZFwiOiAxMDEzfSwge1wibmFtZVwiOiBcIlxcdTk4ODRcXHU4YjY2XFx1OTg3NVxcdTk3NjJcIiwgXCJ1cmxcIjogXCJwcmVkaWN0XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OTg4NFxcdThiNjZcXHU5ODc1XFx1OTc2MlwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCJ9XSwgXCJlaWRcIjogMTAxNH1dLCBcImVpZFwiOiAxMDExfV0iLCJzaW1wbGV1aV8yMDIyMDMwMSI6dHJ1ZX0=', '2022-03-15 13:49:16.547428');
INSERT INTO `django_session` VALUES ('mid8q3miwya1km3l2jevqshsoyy0zd2v', 'ODMzYmZlZjU5NzNmNDVlOTM4NDk1NTgyOTVjOGM5YjQ2YmJjZTkzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NTZmZVxcdTg4NjhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTU2ZmVcXHU4ODY4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1NTE4NVxcdTdmNTFcXHU3YTdmXFx1OTAwZlwiLCBcInVybFwiOiBcImh0dHBzOi8vd3d3Lndlem96LmNvbVwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTUxODVcXHU3ZjUxXFx1N2E3ZlxcdTkwMGZcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTB9LCB7XCJuYW1lXCI6IFwiXFx1NTE4NVxcdTdmNTFcXHU3YTdmXFx1OTAwZlwiLCBcInVybFwiOiBcImh0dHBzOi8vd3d3Lndlem96LmNvbVwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTUxODVcXHU3ZjUxXFx1N2E3ZlxcdTkwMGZcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTF9XSwgXCJlaWRcIjogMTAwOH1dIiwic2ltcGxldWlfMjAyMTExMDkiOnRydWV9', '2021-11-23 14:37:41.157539');
INSERT INTO `django_session` VALUES ('o1jk4t6b7sufhd1c0whvrrc685ff3dpj', 'OTE4MDBjNzdjMTI1MjcxYWI3ZTI2NDViY2RhMTA1MTUwYjYwZDNkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNWI4MDYzMTE2NTIyY2U5NmU4N2Y3NjRhNjk0OWQ3NDU1ZDhjMDQxIn0=', '2021-10-11 13:39:33.634869');
INSERT INTO `django_session` VALUES ('rdyifmxripdrz7w9w5inaksldqn83a38', 'YjkxZmQyNzU3Mzg4YTc2NmE0ZWJjOGYxMjAzYzk4OTYzZTAxZTI2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NjAzYlxcdTg5YzhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTYwM2JcXHU4OWM4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwidXJsXCI6IFwiY2hhcnQyXCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIn1dLCBcImVpZFwiOiAxMDEwfSwge1wibmFtZVwiOiBcIlxcdTk4ODRcXHU4YjY2XFx1OTg3NVxcdTk3NjJcIiwgXCJ1cmxcIjogXCJwcmVkaWN0XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OTg4NFxcdThiNjZcXHU5ODc1XFx1OTc2MlwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCJ9XSwgXCJlaWRcIjogMTAxMX1dLCBcImVpZFwiOiAxMDA4fV0iLCJzaW1wbGV1aV8yMDIyMDExNyI6dHJ1ZX0=', '2022-01-31 12:38:06.433622');
INSERT INTO `django_session` VALUES ('rf1y7ix3eyjwpksz2by1cyxy9kpae7tp', 'NjEyOGNiZDA2Nzc1MzdlODlkYjI3OGJhNDUxY2Q5ZDc5NGRiNjE5NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NjAzYlxcdTg5YzhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTYwM2JcXHU4OWM4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwidXJsXCI6IFwiY2hhcnQyXCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIn1dLCBcImVpZFwiOiAxMDEwfSwge1wibmFtZVwiOiBcIlxcdTk4ODRcXHU4YjY2XFx1OTg3NVxcdTk3NjJcIiwgXCJ1cmxcIjogXCJwcmVkaWN0XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OTg4NFxcdThiNjZcXHU5ODc1XFx1OTc2MlwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCJ9XSwgXCJlaWRcIjogMTAxMX1dLCBcImVpZFwiOiAxMDA4fV0iLCJzaW1wbGV1aV8yMDIyMDEyNyI6dHJ1ZX0=', '2022-02-10 09:33:24.250934');
INSERT INTO `django_session` VALUES ('ro45t8fp4wwssfh1qs6u404dy0kpx8au', 'NzFiNDFhYzAxNTE1NjUxODYzZDNhNjY5NTMwYmFhNTY0OTIyYjc1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTBhMWNhYTdhMDY2MmJkYTlhYmY3OGE2NjI2YjliZWI1MzAzNjkyMCIsIl9tZW51cyI6Ilt7XCJuYW1lXCI6IFwiTG1zXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJtb2RlbHNcIjogW3tcIm5hbWVcIjogXCJcXHU1MDFmXFx1NzUyOFxcdThiYjBcXHU1ZjU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vbG1zL2JvcnJvdy9cIiwgXCJhZGRVcmxcIjogbnVsbCwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBudWxsLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiTG1zXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDN9LCB7XCJuYW1lXCI6IFwiXFx1ODM2ZlxcdTU0YzFcXHU1MjE3XFx1ODg2OFwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9cIiwgXCJhZGRVcmxcIjogbnVsbCwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1ODM2ZlxcdTU0YzFcXHU1MjE3XFx1ODg2OFwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwNH1dLCBcImVpZFwiOiAxMDAxfSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NjAzYlxcdTg5YzhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTYwM2JcXHU4OWM4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDZ9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwidXJsXCI6IFwiY2hhcnQyXCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OGZkMVxcdTRlMDBcXHU2NzA4XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIn1dLCBcImVpZFwiOiAxMDA3fSwge1wibmFtZVwiOiBcIlxcdTk4ODRcXHU4YjY2XFx1OTg3NVxcdTk3NjJcIiwgXCJ1cmxcIjogXCJwcmVkaWN0XCIsIFwiaWNvblwiOiBcImZhYiBmYS1naXRodWJcIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OTg4NFxcdThiNjZcXHU5ODc1XFx1OTc2MlwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCJ9XSwgXCJlaWRcIjogMTAwOH1dLCBcImVpZFwiOiAxMDA1fV0iLCJzaW1wbGV1aV8yMDIyMDExMyI6dHJ1ZX0=', '2022-01-27 00:51:50.147500');
INSERT INTO `django_session` VALUES ('wi3r86u62muj28fo2boefq99kgwh5vx2', 'MzVmOThjYTIyMzM3NDFjMGU2NzMxNDJhMGU3ZjFhY2RkMTE2OWU2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTA4NDRhYzU2NzUyNGQ5Nzc2NzJmZmFhNDViMzkxNzBkMjA2YTZmIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTUwMWZcXHU3NTI4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvYm9ycm93L2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTAxZlxcdTc1MjhcXHU4YmIwXFx1NWY1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1YjllXFx1OWE4Y1xcdTViYTRcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9sbXMvbGFiL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIkxtc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NWI5ZVxcdTlhOGNcXHU1YmE0XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9sbXMvbWVkaWNpbmUvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2xtcy9tZWRpY2luZS9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJMbXNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTgzNmZcXHU1NGMxXFx1NTIxN1xcdTg4NjhcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDR9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU4YmE0XFx1OGJjMVxcdTU0OGNcXHU2Mzg4XFx1Njc0M1wiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS11c2VyXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvdXNlci9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIn1dLCBcImVpZFwiOiAxMDA2fSwge1wibmFtZVwiOiBcIlxcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wiLCBcInVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL2dyb3VwL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCJ9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCJ9XSwgXCJlaWRcIjogMTAwN31dLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdTUzZWZcXHU4OWM2XFx1NTMxNlwiLCBcImljb25cIjogXCJmYSBmYS1maWxlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NTZmZVxcdTg4NjhcIiwgXCJ1cmxcIjogXCJjaGFydDFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXN1cnByaXNlXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIlxcdTU2ZmVcXHU4ODY4XCIsIFwiaWNvblwiOiBcImZhciBmYS1zdXJwcmlzZVwifV0sIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiMVwiLCBcInVybFwiOiBcIlwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIjFcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTB9LCB7XCJuYW1lXCI6IFwiMlwiLCBcInVybFwiOiBcIlwiLCBcImljb25cIjogXCJmYWIgZmEtZ2l0aHViXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1M2VmXFx1ODljNlxcdTUzMTZcIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZVwifSwge1wibmFtZVwiOiBcIjJcIiwgXCJpY29uXCI6IFwiZmFiIGZhLWdpdGh1YlwifV0sIFwiZWlkXCI6IDEwMTF9XSwgXCJlaWRcIjogMTAwOH1dIiwic2ltcGxldWlfMjAyMTEyMjgiOnRydWV9', '2022-01-11 08:15:18.130273');
INSERT INTO `django_session` VALUES ('xfjd3wvi76ncclvb0p6rkti4sc7rgfmq', 'ZTI2NjA5M2ZiMjVjYWM1MWYyODEyMzViNjM5OGI0MDdjMzc5YTdhNTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkM2NjYzA3MTc4YjQ3ZmEwZjRlZmExNjMyMmEyNzVhNjBjYzJkYjRiIn0=', '2022-01-22 11:24:47.790255');

-- ----------------------------
-- Table structure for lms_borrow
-- ----------------------------
DROP TABLE IF EXISTS `lms_borrow`;
CREATE TABLE `lms_borrow`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `medicineUsedNum` int(0) UNSIGNED NOT NULL,
  `boDate` datetime(6) NOT NULL,
  `lab_id` int(0) NOT NULL,
  `medicine_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lms_borrow_lab_id_fcdc5cee_fk_lms_lab_id`(`lab_id`) USING BTREE,
  INDEX `lms_borrow_medicine_id_6845fd0c_fk_lms_medicine_id`(`medicine_id`) USING BTREE,
  INDEX `lms_borrow_user_id_3913470e_fk_lms_commonuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `lms_borrow_lab_id_fcdc5cee_fk_lms_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `lms_lab` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lms_borrow_medicine_id_6845fd0c_fk_lms_medicine_id` FOREIGN KEY (`medicine_id`) REFERENCES `lms_medicine` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lms_borrow_user_id_3913470e_fk_lms_commonuser_id` FOREIGN KEY (`user_id`) REFERENCES `lms_commonuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lms_borrow
-- ----------------------------
INSERT INTO `lms_borrow` VALUES (1, 20, '2021-09-25 10:58:55.695325', 1, 2, 1);
INSERT INTO `lms_borrow` VALUES (2, 300, '2021-09-25 10:59:03.893794', 3, 3, 1);
INSERT INTO `lms_borrow` VALUES (3, 20, '2021-09-27 13:39:43.596280', 1, 1, 1);
INSERT INTO `lms_borrow` VALUES (4, 30, '2021-09-30 08:21:15.159333', 1, 1, 1);
INSERT INTO `lms_borrow` VALUES (5, 100, '2021-10-02 14:07:49.256194', 2, 6, 1);
INSERT INTO `lms_borrow` VALUES (6, 50, '2021-10-02 14:08:13.631329', 2, 3, 1);
INSERT INTO `lms_borrow` VALUES (7, 20, '2021-10-02 14:08:22.634957', 2, 2, 1);
INSERT INTO `lms_borrow` VALUES (8, 400, '2021-10-02 14:08:30.413326', 2, 2, 1);
INSERT INTO `lms_borrow` VALUES (9, 70, '2021-10-02 14:08:37.193036', 2, 1, 1);
INSERT INTO `lms_borrow` VALUES (10, 30, '2021-10-02 14:08:43.353773', 2, 3, 1);
INSERT INTO `lms_borrow` VALUES (11, 60, '2021-10-02 14:08:50.093200', 2, 6, 1);
INSERT INTO `lms_borrow` VALUES (12, 50, '2021-10-05 07:05:12.307355', 2, 1, 3);
INSERT INTO `lms_borrow` VALUES (13, 30, '2021-10-05 07:05:19.000000', 1, 4, 3);
INSERT INTO `lms_borrow` VALUES (14, 60, '2021-10-05 07:05:27.000000', 3, 2, 2);
INSERT INTO `lms_borrow` VALUES (15, 60, '2021-10-05 07:05:34.000000', 1, 3, 3);
INSERT INTO `lms_borrow` VALUES (16, 100, '2021-10-05 07:05:41.000000', 1, 10, 3);
INSERT INTO `lms_borrow` VALUES (17, 30, '2021-10-05 07:05:49.000000', 2, 10, 3);
INSERT INTO `lms_borrow` VALUES (18, 10, '2021-10-17 02:43:19.000000', 1, 1, 1);
INSERT INTO `lms_borrow` VALUES (19, 10, '2021-10-17 02:43:28.000000', 1, 1, 1);
INSERT INTO `lms_borrow` VALUES (20, 10, '2021-10-17 02:44:31.000000', 1, 1, 1);
INSERT INTO `lms_borrow` VALUES (21, 100, '2021-10-17 02:44:55.000000', 2, 4, 1);
INSERT INTO `lms_borrow` VALUES (22, 10, '2021-10-17 03:25:54.000000', 2, 1, 2);
INSERT INTO `lms_borrow` VALUES (23, 10, '2021-10-22 13:41:48.400331', 2, 3, 2);
INSERT INTO `lms_borrow` VALUES (24, 10, '2021-10-22 13:42:26.736665', 1, 2, 3);
INSERT INTO `lms_borrow` VALUES (25, 20, '2021-10-22 13:42:34.696088', 2, 10, 3);
INSERT INTO `lms_borrow` VALUES (26, 20, '2021-10-22 13:42:40.857030', 2, 3, 3);
INSERT INTO `lms_borrow` VALUES (27, 30, '2021-10-22 13:42:48.055709', 2, 13, 3);
INSERT INTO `lms_borrow` VALUES (28, 60, '2021-10-22 13:42:59.612266', 3, 15, 1);
INSERT INTO `lms_borrow` VALUES (29, 20, '2021-10-22 13:43:11.258153', 1, 16, 3);
INSERT INTO `lms_borrow` VALUES (30, 30, '2021-10-22 13:43:18.587236', 3, 2, 2);
INSERT INTO `lms_borrow` VALUES (31, 30, '2021-10-22 13:43:28.393656', 2, 15, 2);
INSERT INTO `lms_borrow` VALUES (32, 30, '2021-10-22 13:43:34.825098', 1, 13, 3);
INSERT INTO `lms_borrow` VALUES (33, 30, '2021-10-22 13:43:40.851196', 2, 13, 1);
INSERT INTO `lms_borrow` VALUES (34, 5, '2021-10-22 13:43:48.736415', 2, 10, 1);
INSERT INTO `lms_borrow` VALUES (35, 10, '2021-12-05 07:50:08.716362', 1, 22, 2);
INSERT INTO `lms_borrow` VALUES (36, 400, '2021-12-05 07:50:30.267000', 4, 17, 2);
INSERT INTO `lms_borrow` VALUES (37, 2, '2021-12-05 07:51:00.000000', 2, 17, 2);
INSERT INTO `lms_borrow` VALUES (38, 12, '2021-12-30 09:04:16.000000', 2, 11, 2);
INSERT INTO `lms_borrow` VALUES (39, 10, '2022-01-08 02:54:30.000000', 3, 21, 8);
INSERT INTO `lms_borrow` VALUES (49, 30, '2022-01-08 10:28:56.840735', 2, 15, 2);
INSERT INTO `lms_borrow` VALUES (50, 30, '2021-12-25 10:28:56.000000', 1, 13, 3);
INSERT INTO `lms_borrow` VALUES (51, 30, '2022-01-08 10:28:56.858687', 2, 13, 1);
INSERT INTO `lms_borrow` VALUES (52, 5, '2022-01-01 10:28:56.000000', 2, 10, 1);
INSERT INTO `lms_borrow` VALUES (53, 10, '2022-01-08 10:28:56.866665', 1, 22, 2);
INSERT INTO `lms_borrow` VALUES (54, 400, '2022-01-01 10:28:56.000000', 4, 17, 2);
INSERT INTO `lms_borrow` VALUES (55, 2, '2022-01-08 10:28:56.872650', 2, 17, 2);
INSERT INTO `lms_borrow` VALUES (56, 12, '2022-01-08 10:28:56.875642', 2, 11, 2);
INSERT INTO `lms_borrow` VALUES (57, 10, '2022-01-08 10:28:56.880629', 3, 21, 8);
INSERT INTO `lms_borrow` VALUES (58, 10, '2022-01-08 11:10:52.496531', 1, 1, 8);
INSERT INTO `lms_borrow` VALUES (59, 20, '2022-01-08 11:11:02.920704', 2, 10, 8);
INSERT INTO `lms_borrow` VALUES (60, 30, '2022-01-08 11:11:21.803085', 3, 10, 8);
INSERT INTO `lms_borrow` VALUES (61, 19, '2022-01-08 11:14:00.805204', 4, 22, 3);
INSERT INTO `lms_borrow` VALUES (62, 10, '2022-01-13 00:49:15.511190', 2, 1, 2);
INSERT INTO `lms_borrow` VALUES (63, 23, '2022-01-13 00:49:27.144465', 4, 13, 2);
INSERT INTO `lms_borrow` VALUES (64, 50, '2022-01-13 00:49:53.241865', 2, 26, 8);
INSERT INTO `lms_borrow` VALUES (65, 60, '2022-01-13 00:50:04.888227', 2, 19, 8);
INSERT INTO `lms_borrow` VALUES (66, 50, '2022-01-13 00:50:20.088085', 1, 21, 8);
INSERT INTO `lms_borrow` VALUES (67, 20, '2022-01-27 07:22:32.034688', 2, 11, 8);
INSERT INTO `lms_borrow` VALUES (68, 30, '2022-01-27 07:22:40.446622', 1, 17, 3);
INSERT INTO `lms_borrow` VALUES (69, 40, '2022-01-27 07:22:55.210765', 4, 6, 2);
INSERT INTO `lms_borrow` VALUES (70, 5, '2022-01-27 07:23:03.028384', 1, 4, 8);
INSERT INTO `lms_borrow` VALUES (71, 30, '2022-01-27 07:23:09.914596', 2, 6, 3);
INSERT INTO `lms_borrow` VALUES (72, 60, '2022-01-27 07:26:52.984056', 2, 23, 3);
INSERT INTO `lms_borrow` VALUES (73, 40, '2022-01-27 07:27:05.423312', 3, 28, 2);
INSERT INTO `lms_borrow` VALUES (74, 52, '2022-01-27 07:27:21.216829', 2, 12, 3);
INSERT INTO `lms_borrow` VALUES (75, 60, '2022-01-27 07:27:30.244665', 2, 18, 8);
INSERT INTO `lms_borrow` VALUES (76, 100, '2022-01-27 07:28:31.698491', 2, 1, 3);
INSERT INTO `lms_borrow` VALUES (77, 100, '2022-01-27 07:28:40.330982', 2, 12, 8);
INSERT INTO `lms_borrow` VALUES (78, 130, '2022-01-27 07:28:51.135439', 3, 4, 1);
INSERT INTO `lms_borrow` VALUES (79, 10, '2022-01-27 08:37:14.028178', 2, 1, 2);
INSERT INTO `lms_borrow` VALUES (80, 10, '2022-02-25 12:32:43.491549', 1, 1, 2);
INSERT INTO `lms_borrow` VALUES (81, 200, '2022-03-05 09:21:39.496710', 2, 15, 3);
INSERT INTO `lms_borrow` VALUES (82, 100, '2022-03-05 09:21:49.035394', 1, 6, 1);
INSERT INTO `lms_borrow` VALUES (83, 250, '2022-03-05 09:21:59.061174', 2, 10, 8);
INSERT INTO `lms_borrow` VALUES (84, 10, '2022-03-05 11:06:19.062246', 2, 19, 2);

-- ----------------------------
-- Table structure for lms_commonuser
-- ----------------------------
DROP TABLE IF EXISTS `lms_commonuser`;
CREATE TABLE `lms_commonuser`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `nickyName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cate` tinyint(1) NOT NULL,
  `faculty` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `lms_commonuser_user_id_584bdcf4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lms_commonuser
-- ----------------------------
INSERT INTO `lms_commonuser` VALUES (1, 'szh', 1, '马院', 2);
INSERT INTO `lms_commonuser` VALUES (2, 'zcy', 1, '信院', 3);
INSERT INTO `lms_commonuser` VALUES (3, 'lj', 1, '贵院', 4);
INSERT INTO `lms_commonuser` VALUES (8, '小孟', 1, '马院', 9);
INSERT INTO `lms_commonuser` VALUES (9, 'teacher1', 0, '信院', 10);

-- ----------------------------
-- Table structure for lms_doc
-- ----------------------------
DROP TABLE IF EXISTS `lms_doc`;
CREATE TABLE `lms_doc`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file_obj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `upload_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lms_doc
-- ----------------------------
INSERT INTO `lms_doc` VALUES (3, '华东理工大学突发危险化学品事件应急预案试行.doc', 'media/files/华东理工大学突发危险化学品事件应急预案试行.doc', 'files/华东理工大学突发危险化学品事件应急预案试行.doc', '2022-03-05 10:45:56.636470');
INSERT INTO `lms_doc` VALUES (4, '华东理工大学实验室工作条例', 'media/files/华东理工大学实验室工作条例.doc', 'files/华东理工大学实验室工作条例.doc', '2022-03-05 11:00:57.520466');

-- ----------------------------
-- Table structure for lms_insborrow
-- ----------------------------
DROP TABLE IF EXISTS `lms_insborrow`;
CREATE TABLE `lms_insborrow`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ins_boDate` datetime(6) NOT NULL,
  `ins_user_id` int(0) NOT NULL,
  `instrument_id` int(0) NOT NULL,
  `ins_boNum` int(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lms_insborrow_ins_user_id_32b9f3ed_fk_lms_commonuser_id`(`ins_user_id`) USING BTREE,
  INDEX `lms_insborrow_instrument_id_9349d77f_fk_lms_instrument_id`(`instrument_id`) USING BTREE,
  CONSTRAINT `lms_insborrow_ins_user_id_32b9f3ed_fk_lms_commonuser_id` FOREIGN KEY (`ins_user_id`) REFERENCES `lms_commonuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lms_insborrow_instrument_id_9349d77f_fk_lms_instrument_id` FOREIGN KEY (`instrument_id`) REFERENCES `lms_instrument` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lms_insborrow
-- ----------------------------
INSERT INTO `lms_insborrow` VALUES (1, '2022-02-28 01:43:30.265156', 2, 1, 3);

-- ----------------------------
-- Table structure for lms_instrument
-- ----------------------------
DROP TABLE IF EXISTS `lms_instrument`;
CREATE TABLE `lms_instrument`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ins_no` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ins_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ins_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ins_nowtotal` int(0) NOT NULL,
  `ins_bototal` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ins_no`(`ins_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lms_instrument
-- ----------------------------
INSERT INTO `lms_instrument` VALUES (1, 'INS100', '烧杯', '盛试剂', 96, 9);
INSERT INTO `lms_instrument` VALUES (2, 'INS101', '蒸馏烧瓶', '', 50, 10);

-- ----------------------------
-- Table structure for lms_lab
-- ----------------------------
DROP TABLE IF EXISTS `lms_lab`;
CREATE TABLE `lms_lab`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lms_lab
-- ----------------------------
INSERT INTO `lms_lab` VALUES (1, 'room1', '临床医学实验室');
INSERT INTO `lms_lab` VALUES (2, 'room2', '有机化学实验室');
INSERT INTO `lms_lab` VALUES (3, 'room3', '精细化工实验室');
INSERT INTO `lms_lab` VALUES (4, 'room4', '环境工程实验室');

-- ----------------------------
-- Table structure for lms_medicine
-- ----------------------------
DROP TABLE IF EXISTS `lms_medicine`;
CREATE TABLE `lms_medicine`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `number` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nowtotal` int(0) NOT NULL,
  `usedtotal` int(0) NOT NULL,
  `riskfactor` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lms_medicine
-- ----------------------------
INSERT INTO `lms_medicine` VALUES (1, 'X1000', '硝酸', '', 219, 47, 3);
INSERT INTO `lms_medicine` VALUES (2, 'X1002', '盐酸', '', 0, 1, 3);
INSERT INTO `lms_medicine` VALUES (3, 'X1003', '氢氧化钠', '', 477, 19, 2);
INSERT INTO `lms_medicine` VALUES (4, 'X1004', '碳水化合物', '', 55, 6, 2);
INSERT INTO `lms_medicine` VALUES (6, 'X1008', '氢氧化钙', 'Ca(OH)2', 2, 186, 2);
INSERT INTO `lms_medicine` VALUES (10, 'X1009', '碳酸钠', '', 241, 160, 1);
INSERT INTO `lms_medicine` VALUES (11, 'X1001', '氯化钠', '', 16, 132, 2);
INSERT INTO `lms_medicine` VALUES (12, 'X1010', '苯', '', 264, 44, 3);
INSERT INTO `lms_medicine` VALUES (13, 'X1011', '硝酸铵', '', 344, 180, 5);
INSERT INTO `lms_medicine` VALUES (14, 'X1012', '碳酸钾', '', 263, 197, 3);
INSERT INTO `lms_medicine` VALUES (15, 'X1013', '乙醚', '', 24, 180, 1);
INSERT INTO `lms_medicine` VALUES (16, 'X1015', '甲烷', '', 499, 191, 5);
INSERT INTO `lms_medicine` VALUES (17, 'X1017', '乙烯', '', 49, 408, 5);
INSERT INTO `lms_medicine` VALUES (18, 'X1018', '乙酸', '', 58, 196, 5);
INSERT INTO `lms_medicine` VALUES (19, 'X1019', '氯化苯', '', 198, 264, 3);
INSERT INTO `lms_medicine` VALUES (20, 'X1020', '硝酸钠', '', 320, 91, 2);
INSERT INTO `lms_medicine` VALUES (21, 'X1021', '二甲基甲苯', '', 106, 92, 4);
INSERT INTO `lms_medicine` VALUES (22, 'X1022', '氦气', '', 180, 220, 2);
INSERT INTO `lms_medicine` VALUES (23, 'X1023', '硫酸', '', 195, 141, 2);
INSERT INTO `lms_medicine` VALUES (24, 'X1024', '硫酸钠', '', 35, 185, 4);
INSERT INTO `lms_medicine` VALUES (25, 'X1025', '钠', '', 282, 33, 1);
INSERT INTO `lms_medicine` VALUES (26, 'X1026', '氯化钴', '', 178, 170, 3);
INSERT INTO `lms_medicine` VALUES (27, 'X1027', '碳酸钾', '', 344, 24, 3);
INSERT INTO `lms_medicine` VALUES (28, 'X1028', '硼酸', '', 368, 78, 4);
INSERT INTO `lms_medicine` VALUES (29, 'X1029', '氰化物', '', 254, 170, 5);
INSERT INTO `lms_medicine` VALUES (30, 'X1030', '玻尿酸', '', 298, 134, 2);

SET FOREIGN_KEY_CHECKS = 1;
