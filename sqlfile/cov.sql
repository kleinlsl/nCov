/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : cov

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 04/04/2020 18:01:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `confirm` int(11) NULL DEFAULT NULL,
  `confirm_add` int(11) NULL DEFAULT NULL,
  `heal` int(11) NULL DEFAULT NULL,
  `dead` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 431 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES (1, '2020-03-01 09:27:11', '湖北', '武汉', 49122, 565, 19227, 2195);
INSERT INTO `details` VALUES (2, '2020-03-01 09:27:11', '湖北', '孝感', 3518, 0, 2215, 118);
INSERT INTO `details` VALUES (3, '2020-03-01 09:27:11', '湖北', '黄冈', 2905, 1, 2171, 115);
INSERT INTO `details` VALUES (4, '2020-03-01 09:27:11', '湖北', '荆州', 1579, 0, 1034, 46);
INSERT INTO `details` VALUES (5, '2020-03-01 09:27:11', '湖北', '鄂州', 1391, 1, 784, 47);
INSERT INTO `details` VALUES (6, '2020-03-01 09:27:11', '湖北', '随州', 1307, 0, 835, 40);
INSERT INTO `details` VALUES (7, '2020-03-01 09:27:11', '湖北', '襄阳', 1175, 0, 850, 34);
INSERT INTO `details` VALUES (8, '2020-03-01 09:27:11', '湖北', '黄石', 1014, 1, 697, 34);
INSERT INTO `details` VALUES (9, '2020-03-01 09:27:11', '湖北', '宜昌', 931, 0, 506, 31);
INSERT INTO `details` VALUES (10, '2020-03-01 09:27:11', '湖北', '荆门', 925, 1, 604, 37);
INSERT INTO `details` VALUES (11, '2020-03-01 09:27:11', '湖北', '咸宁', 836, 0, 692, 12);
INSERT INTO `details` VALUES (12, '2020-03-01 09:27:11', '湖北', '十堰', 672, 1, 441, 7);
INSERT INTO `details` VALUES (13, '2020-03-01 09:27:11', '湖北', '仙桃', 575, 0, 438, 19);
INSERT INTO `details` VALUES (14, '2020-03-01 09:27:11', '湖北', '天门', 496, 0, 371, 13);
INSERT INTO `details` VALUES (15, '2020-03-01 09:27:11', '湖北', '恩施州', 252, 0, 192, 4);
INSERT INTO `details` VALUES (16, '2020-03-01 09:27:11', '湖北', '潜江', 198, 0, 119, 9);
INSERT INTO `details` VALUES (17, '2020-03-01 09:27:11', '湖北', '神农架', 11, 0, 11, 0);
INSERT INTO `details` VALUES (18, '2020-03-01 09:27:11', '湖北', '监狱系统', 0, 0, 0, 0);
INSERT INTO `details` VALUES (19, '2020-03-01 09:27:11', '广东', '深圳', 417, 0, 308, 3);
INSERT INTO `details` VALUES (20, '2020-03-01 09:27:11', '广东', '广州', 346, 0, 260, 1);
INSERT INTO `details` VALUES (21, '2020-03-01 09:27:11', '广东', '东莞', 99, 0, 63, 1);
INSERT INTO `details` VALUES (22, '2020-03-01 09:27:11', '广东', '珠海', 98, 0, 75, 1);
INSERT INTO `details` VALUES (23, '2020-03-01 09:27:11', '广东', '佛山', 84, 0, 47, 0);
INSERT INTO `details` VALUES (24, '2020-03-01 09:27:11', '广东', '中山', 66, 0, 59, 0);
INSERT INTO `details` VALUES (25, '2020-03-01 09:27:11', '广东', '惠州', 62, 0, 58, 0);
INSERT INTO `details` VALUES (26, '2020-03-01 09:27:11', '广东', '汕头', 25, 0, 22, 0);
INSERT INTO `details` VALUES (27, '2020-03-01 09:27:11', '广东', '江门', 23, 0, 14, 0);
INSERT INTO `details` VALUES (28, '2020-03-01 09:27:11', '广东', '湛江', 22, 0, 17, 0);
INSERT INTO `details` VALUES (29, '2020-03-01 09:27:11', '广东', '肇庆', 19, 0, 13, 1);
INSERT INTO `details` VALUES (30, '2020-03-01 09:27:11', '广东', '梅州', 16, 0, 12, 0);
INSERT INTO `details` VALUES (31, '2020-03-01 09:27:11', '广东', '阳江', 14, 0, 11, 0);
INSERT INTO `details` VALUES (32, '2020-03-01 09:27:11', '广东', '茂名', 14, 0, 9, 0);
INSERT INTO `details` VALUES (33, '2020-03-01 09:27:11', '广东', '清远', 12, 0, 12, 0);
INSERT INTO `details` VALUES (34, '2020-03-01 09:27:11', '广东', '韶关', 10, 0, 9, 0);
INSERT INTO `details` VALUES (35, '2020-03-01 09:27:11', '广东', '揭阳', 8, 0, 6, 0);
INSERT INTO `details` VALUES (36, '2020-03-01 09:27:11', '广东', '汕尾', 5, 0, 5, 0);
INSERT INTO `details` VALUES (37, '2020-03-01 09:27:11', '广东', '潮州', 5, 0, 5, 0);
INSERT INTO `details` VALUES (38, '2020-03-01 09:27:11', '广东', '河源', 4, 0, 4, 0);
INSERT INTO `details` VALUES (39, '2020-03-01 09:27:11', '广东', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (40, '2020-03-01 09:27:11', '河南', '信阳', 274, 0, 28, 3);
INSERT INTO `details` VALUES (41, '2020-03-01 09:27:11', '河南', '郑州', 157, 0, 36, 1);
INSERT INTO `details` VALUES (42, '2020-03-01 09:27:11', '河南', '南阳', 156, 0, 28, 3);
INSERT INTO `details` VALUES (43, '2020-03-01 09:27:11', '河南', '驻马店', 139, 0, 25, 0);
INSERT INTO `details` VALUES (44, '2020-03-01 09:27:11', '河南', '商丘', 91, 0, 9, 3);
INSERT INTO `details` VALUES (45, '2020-03-01 09:27:11', '河南', '周口', 76, 0, 16, 1);
INSERT INTO `details` VALUES (46, '2020-03-01 09:27:11', '河南', '平顶山', 58, 0, 13, 1);
INSERT INTO `details` VALUES (47, '2020-03-01 09:27:11', '河南', '新乡', 57, 0, 6, 3);
INSERT INTO `details` VALUES (48, '2020-03-01 09:27:11', '河南', '安阳', 53, 0, 10, 0);
INSERT INTO `details` VALUES (49, '2020-03-01 09:27:11', '河南', '许昌', 39, 0, 2, 0);
INSERT INTO `details` VALUES (50, '2020-03-01 09:27:11', '河南', '漯河', 35, 0, 6, 0);
INSERT INTO `details` VALUES (51, '2020-03-01 09:27:11', '河南', '焦作', 32, 0, 1, 1);
INSERT INTO `details` VALUES (52, '2020-03-01 09:27:11', '河南', '洛阳', 31, 0, 2, 1);
INSERT INTO `details` VALUES (53, '2020-03-01 09:27:11', '河南', '开封', 26, 0, 1, 0);
INSERT INTO `details` VALUES (54, '2020-03-01 09:27:11', '河南', '鹤壁', 19, 0, 3, 0);
INSERT INTO `details` VALUES (55, '2020-03-01 09:27:11', '河南', '濮阳', 17, 0, 1, 0);
INSERT INTO `details` VALUES (56, '2020-03-01 09:27:11', '河南', '三门峡', 7, 0, 3, 1);
INSERT INTO `details` VALUES (57, '2020-03-01 09:27:11', '河南', '济源示范区', 5, 0, 0, 0);
INSERT INTO `details` VALUES (58, '2020-03-01 09:27:11', '河南', '地区待确认', 0, 0, 995, 4);
INSERT INTO `details` VALUES (59, '2020-03-01 09:27:11', '浙江', '温州', 504, 0, 432, 1);
INSERT INTO `details` VALUES (60, '2020-03-01 09:27:11', '浙江', '杭州', 169, 0, 164, 0);
INSERT INTO `details` VALUES (61, '2020-03-01 09:27:11', '浙江', '宁波', 157, 0, 148, 0);
INSERT INTO `details` VALUES (62, '2020-03-01 09:27:11', '浙江', '台州', 146, 0, 107, 0);
INSERT INTO `details` VALUES (63, '2020-03-01 09:27:11', '浙江', '金华', 55, 0, 51, 0);
INSERT INTO `details` VALUES (64, '2020-03-01 09:27:11', '浙江', '嘉兴', 45, 0, 38, 0);
INSERT INTO `details` VALUES (65, '2020-03-01 09:27:11', '浙江', '绍兴', 42, 0, 36, 0);
INSERT INTO `details` VALUES (66, '2020-03-01 09:27:11', '浙江', '省十里丰监狱', 36, 0, 5, 0);
INSERT INTO `details` VALUES (67, '2020-03-01 09:27:11', '浙江', '丽水', 17, 0, 17, 0);
INSERT INTO `details` VALUES (68, '2020-03-01 09:27:11', '浙江', '衢州', 14, 0, 12, 0);
INSERT INTO `details` VALUES (69, '2020-03-01 09:27:11', '浙江', '湖州', 10, 0, 9, 0);
INSERT INTO `details` VALUES (70, '2020-03-01 09:27:11', '浙江', '舟山', 10, 0, 8, 0);
INSERT INTO `details` VALUES (71, '2020-03-01 09:27:11', '湖南', '长沙', 242, 0, 178, 2);
INSERT INTO `details` VALUES (72, '2020-03-01 09:27:11', '湖南', '岳阳', 156, 0, 115, 1);
INSERT INTO `details` VALUES (73, '2020-03-01 09:27:11', '湖南', '邵阳', 102, 0, 95, 1);
INSERT INTO `details` VALUES (74, '2020-03-01 09:27:11', '湖南', '常德', 82, 0, 72, 0);
INSERT INTO `details` VALUES (75, '2020-03-01 09:27:11', '湖南', '株洲', 80, 0, 62, 0);
INSERT INTO `details` VALUES (76, '2020-03-01 09:27:11', '湖南', '娄底', 76, 0, 62, 0);
INSERT INTO `details` VALUES (77, '2020-03-01 09:27:11', '湖南', '益阳', 60, 0, 59, 0);
INSERT INTO `details` VALUES (78, '2020-03-01 09:27:11', '湖南', '衡阳', 48, 0, 46, 0);
INSERT INTO `details` VALUES (79, '2020-03-01 09:27:11', '湖南', '永州', 44, 0, 42, 0);
INSERT INTO `details` VALUES (80, '2020-03-01 09:27:11', '湖南', '怀化', 40, 0, 40, 0);
INSERT INTO `details` VALUES (81, '2020-03-01 09:27:11', '湖南', '郴州', 39, 0, 35, 0);
INSERT INTO `details` VALUES (82, '2020-03-01 09:27:11', '湖南', '湘潭', 36, 0, 34, 0);
INSERT INTO `details` VALUES (83, '2020-03-01 09:27:11', '湖南', '湘西自治州', 8, 0, 8, 0);
INSERT INTO `details` VALUES (84, '2020-03-01 09:27:11', '湖南', '张家界', 5, 0, 5, 0);
INSERT INTO `details` VALUES (85, '2020-03-01 09:27:11', '安徽', '合肥', 174, 0, 147, 1);
INSERT INTO `details` VALUES (86, '2020-03-01 09:27:11', '安徽', '蚌埠', 160, 0, 146, 5);
INSERT INTO `details` VALUES (87, '2020-03-01 09:27:11', '安徽', '阜阳', 155, 0, 139, 0);
INSERT INTO `details` VALUES (88, '2020-03-01 09:27:11', '安徽', '亳州', 108, 0, 103, 0);
INSERT INTO `details` VALUES (89, '2020-03-01 09:27:11', '安徽', '安庆', 83, 0, 82, 0);
INSERT INTO `details` VALUES (90, '2020-03-01 09:27:11', '安徽', '六安', 69, 0, 58, 0);
INSERT INTO `details` VALUES (91, '2020-03-01 09:27:11', '安徽', '宿州', 41, 0, 37, 0);
INSERT INTO `details` VALUES (92, '2020-03-01 09:27:11', '安徽', '马鞍山', 38, 0, 33, 0);
INSERT INTO `details` VALUES (93, '2020-03-01 09:27:11', '安徽', '芜湖', 34, 0, 31, 0);
INSERT INTO `details` VALUES (94, '2020-03-01 09:27:11', '安徽', '铜陵', 29, 0, 29, 0);
INSERT INTO `details` VALUES (95, '2020-03-01 09:27:11', '安徽', '淮南', 27, 0, 22, 0);
INSERT INTO `details` VALUES (96, '2020-03-01 09:27:11', '安徽', '淮北', 27, 0, 24, 0);
INSERT INTO `details` VALUES (97, '2020-03-01 09:27:11', '安徽', '池州', 17, 0, 15, 0);
INSERT INTO `details` VALUES (98, '2020-03-01 09:27:11', '安徽', '滁州', 13, 0, 11, 0);
INSERT INTO `details` VALUES (99, '2020-03-01 09:27:11', '安徽', '黄山', 9, 0, 7, 0);
INSERT INTO `details` VALUES (100, '2020-03-01 09:27:11', '安徽', '宣城', 6, 0, 4, 0);
INSERT INTO `details` VALUES (101, '2020-03-01 09:27:11', '江西', '南昌', 230, 0, 207, 0);
INSERT INTO `details` VALUES (102, '2020-03-01 09:27:11', '江西', '新余', 130, 0, 120, 0);
INSERT INTO `details` VALUES (103, '2020-03-01 09:27:11', '江西', '上饶', 123, 0, 111, 0);
INSERT INTO `details` VALUES (104, '2020-03-01 09:27:11', '江西', '九江', 118, 0, 94, 0);
INSERT INTO `details` VALUES (105, '2020-03-01 09:27:11', '江西', '宜春', 106, 0, 104, 0);
INSERT INTO `details` VALUES (106, '2020-03-01 09:27:11', '江西', '赣州', 76, 0, 71, 1);
INSERT INTO `details` VALUES (107, '2020-03-01 09:27:11', '江西', '抚州', 72, 0, 65, 0);
INSERT INTO `details` VALUES (108, '2020-03-01 09:27:11', '江西', '萍乡', 33, 0, 25, 0);
INSERT INTO `details` VALUES (109, '2020-03-01 09:27:11', '江西', '吉安', 22, 0, 18, 0);
INSERT INTO `details` VALUES (110, '2020-03-01 09:27:11', '江西', '鹰潭', 18, 0, 12, 0);
INSERT INTO `details` VALUES (111, '2020-03-01 09:27:11', '江西', '景德镇', 6, 0, 3, 0);
INSERT INTO `details` VALUES (112, '2020-03-01 09:27:11', '江西', '赣江新区', 1, 0, 1, 0);
INSERT INTO `details` VALUES (113, '2020-03-01 09:27:11', '山东', '济宁', 258, 0, 46, 0);
INSERT INTO `details` VALUES (114, '2020-03-01 09:27:11', '山东', '青岛', 60, 0, 51, 1);
INSERT INTO `details` VALUES (115, '2020-03-01 09:27:11', '山东', '临沂', 49, 0, 46, 0);
INSERT INTO `details` VALUES (116, '2020-03-01 09:27:11', '山东', '烟台', 47, 0, 31, 0);
INSERT INTO `details` VALUES (117, '2020-03-01 09:27:11', '山东', '济南', 47, 0, 29, 0);
INSERT INTO `details` VALUES (118, '2020-03-01 09:27:11', '山东', '潍坊', 44, 0, 29, 0);
INSERT INTO `details` VALUES (119, '2020-03-01 09:27:11', '山东', '威海', 38, 0, 31, 0);
INSERT INTO `details` VALUES (120, '2020-03-01 09:27:11', '山东', '聊城', 38, 0, 34, 0);
INSERT INTO `details` VALUES (121, '2020-03-01 09:27:11', '山东', '德州', 37, 0, 18, 2);
INSERT INTO `details` VALUES (122, '2020-03-01 09:27:11', '山东', '泰安', 35, 0, 30, 2);
INSERT INTO `details` VALUES (123, '2020-03-01 09:27:11', '山东', '淄博', 30, 0, 21, 1);
INSERT INTO `details` VALUES (124, '2020-03-01 09:27:11', '山东', '枣庄', 24, 0, 22, 0);
INSERT INTO `details` VALUES (125, '2020-03-01 09:27:11', '山东', '菏泽', 18, 0, 17, 0);
INSERT INTO `details` VALUES (126, '2020-03-01 09:27:11', '山东', '日照', 16, 0, 14, 0);
INSERT INTO `details` VALUES (127, '2020-03-01 09:27:11', '山东', '滨州', 15, 0, 12, 0);
INSERT INTO `details` VALUES (128, '2020-03-01 09:27:11', '江苏', '南京', 93, 0, 58, 0);
INSERT INTO `details` VALUES (129, '2020-03-01 09:27:11', '江苏', '苏州', 87, 0, 64, 0);
INSERT INTO `details` VALUES (130, '2020-03-01 09:27:11', '江苏', '徐州', 79, 0, 71, 0);
INSERT INTO `details` VALUES (131, '2020-03-01 09:27:11', '江苏', '淮安', 66, 0, 55, 0);
INSERT INTO `details` VALUES (132, '2020-03-01 09:27:11', '江苏', '无锡', 55, 0, 49, 0);
INSERT INTO `details` VALUES (133, '2020-03-01 09:27:11', '江苏', '常州', 51, 0, 48, 0);
INSERT INTO `details` VALUES (134, '2020-03-01 09:27:11', '江苏', '连云港', 48, 0, 37, 0);
INSERT INTO `details` VALUES (135, '2020-03-01 09:27:11', '江苏', '南通', 40, 0, 37, 0);
INSERT INTO `details` VALUES (136, '2020-03-01 09:27:11', '江苏', '泰州', 37, 0, 37, 0);
INSERT INTO `details` VALUES (137, '2020-03-01 09:27:11', '江苏', '盐城', 27, 0, 27, 0);
INSERT INTO `details` VALUES (138, '2020-03-01 09:27:11', '江苏', '扬州', 23, 0, 23, 0);
INSERT INTO `details` VALUES (139, '2020-03-01 09:27:11', '江苏', '宿迁', 13, 0, 12, 0);
INSERT INTO `details` VALUES (140, '2020-03-01 09:27:11', '江苏', '镇江', 12, 0, 11, 0);
INSERT INTO `details` VALUES (141, '2020-03-01 09:27:11', '重庆', '万州区', 118, 0, 87, 4);
INSERT INTO `details` VALUES (142, '2020-03-01 09:27:11', '重庆', '江北区', 28, 0, 21, 0);
INSERT INTO `details` VALUES (143, '2020-03-01 09:27:11', '重庆', '云阳县', 25, 0, 22, 0);
INSERT INTO `details` VALUES (144, '2020-03-01 09:27:11', '重庆', '綦江区', 23, 0, 14, 0);
INSERT INTO `details` VALUES (145, '2020-03-01 09:27:11', '重庆', '合川区', 23, 0, 18, 0);
INSERT INTO `details` VALUES (146, '2020-03-01 09:27:11', '重庆', '长寿区', 22, 0, 14, 0);
INSERT INTO `details` VALUES (147, '2020-03-01 09:27:11', '重庆', '奉节县', 22, 0, 18, 0);
INSERT INTO `details` VALUES (148, '2020-03-01 09:27:11', '重庆', '忠县', 21, 0, 18, 0);
INSERT INTO `details` VALUES (149, '2020-03-01 09:27:11', '重庆', '九龙坡区', 21, 0, 15, 1);
INSERT INTO `details` VALUES (150, '2020-03-01 09:27:11', '重庆', '开州区', 21, 0, 19, 1);
INSERT INTO `details` VALUES (151, '2020-03-01 09:27:11', '重庆', '垫江县', 20, 0, 14, 0);
INSERT INTO `details` VALUES (152, '2020-03-01 09:27:11', '重庆', '渝中区', 20, 0, 17, 0);
INSERT INTO `details` VALUES (153, '2020-03-01 09:27:11', '重庆', '潼南区', 18, 0, 10, 0);
INSERT INTO `details` VALUES (154, '2020-03-01 09:27:11', '重庆', '渝北区', 17, 0, 15, 0);
INSERT INTO `details` VALUES (155, '2020-03-01 09:27:11', '重庆', '两江新区', 17, 0, 14, 0);
INSERT INTO `details` VALUES (156, '2020-03-01 09:27:11', '重庆', '石柱县', 15, 0, 12, 0);
INSERT INTO `details` VALUES (157, '2020-03-01 09:27:11', '重庆', '南岸区', 15, 0, 8, 0);
INSERT INTO `details` VALUES (158, '2020-03-01 09:27:11', '重庆', '巫溪县', 14, 0, 12, 0);
INSERT INTO `details` VALUES (159, '2020-03-01 09:27:11', '重庆', '大足区', 14, 0, 10, 0);
INSERT INTO `details` VALUES (160, '2020-03-01 09:27:11', '重庆', '丰都县', 10, 0, 6, 0);
INSERT INTO `details` VALUES (161, '2020-03-01 09:27:11', '重庆', '巫山县', 10, 0, 9, 0);
INSERT INTO `details` VALUES (162, '2020-03-01 09:27:11', '重庆', '铜梁区', 10, 0, 7, 0);
INSERT INTO `details` VALUES (163, '2020-03-01 09:27:11', '重庆', '璧山区', 9, 0, 9, 0);
INSERT INTO `details` VALUES (164, '2020-03-01 09:27:11', '重庆', '荣昌区', 9, 0, 7, 0);
INSERT INTO `details` VALUES (165, '2020-03-01 09:27:11', '重庆', '沙坪坝区', 9, 0, 3, 0);
INSERT INTO `details` VALUES (166, '2020-03-01 09:27:11', '重庆', '大渡口区', 7, 0, 6, 0);
INSERT INTO `details` VALUES (167, '2020-03-01 09:27:11', '重庆', '巴南区', 6, 0, 4, 0);
INSERT INTO `details` VALUES (168, '2020-03-01 09:27:11', '重庆', '涪陵区', 5, 0, 3, 0);
INSERT INTO `details` VALUES (169, '2020-03-01 09:27:11', '重庆', '永川区', 5, 0, 5, 0);
INSERT INTO `details` VALUES (170, '2020-03-01 09:27:11', '重庆', '梁平区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (171, '2020-03-01 09:27:11', '重庆', '高新区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (172, '2020-03-01 09:27:11', '重庆', '江津区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (173, '2020-03-01 09:27:11', '重庆', '彭水县', 2, 0, 1, 0);
INSERT INTO `details` VALUES (174, '2020-03-01 09:27:11', '重庆', '黔江区', 2, 0, 2, 0);
INSERT INTO `details` VALUES (175, '2020-03-01 09:27:11', '重庆', '城口县', 2, 0, 2, 0);
INSERT INTO `details` VALUES (176, '2020-03-01 09:27:11', '重庆', '万盛经开区', 1, 0, 1, 0);
INSERT INTO `details` VALUES (177, '2020-03-01 09:27:11', '重庆', '武隆区', 1, 0, 1, 0);
INSERT INTO `details` VALUES (178, '2020-03-01 09:27:11', '重庆', '酉阳县', 1, 0, 1, 0);
INSERT INTO `details` VALUES (179, '2020-03-01 09:27:11', '重庆', '秀山县', 1, 0, 1, 0);
INSERT INTO `details` VALUES (180, '2020-03-01 09:27:11', '四川', '成都', 143, 0, 88, 3);
INSERT INTO `details` VALUES (181, '2020-03-01 09:27:11', '四川', '甘孜', 78, 0, 40, 0);
INSERT INTO `details` VALUES (182, '2020-03-01 09:27:11', '四川', '达州', 42, 0, 27, 0);
INSERT INTO `details` VALUES (183, '2020-03-01 09:27:11', '四川', '南充', 39, 0, 24, 0);
INSERT INTO `details` VALUES (184, '2020-03-01 09:27:11', '四川', '广安', 30, 0, 24, 0);
INSERT INTO `details` VALUES (185, '2020-03-01 09:27:11', '四川', '巴中', 24, 0, 12, 0);
INSERT INTO `details` VALUES (186, '2020-03-01 09:27:11', '四川', '泸州', 24, 0, 20, 0);
INSERT INTO `details` VALUES (187, '2020-03-01 09:27:11', '四川', '内江', 22, 0, 18, 0);
INSERT INTO `details` VALUES (188, '2020-03-01 09:27:11', '四川', '绵阳', 22, 0, 15, 0);
INSERT INTO `details` VALUES (189, '2020-03-01 09:27:11', '四川', '德阳', 18, 0, 10, 0);
INSERT INTO `details` VALUES (190, '2020-03-01 09:27:11', '四川', '遂宁', 17, 0, 15, 0);
INSERT INTO `details` VALUES (191, '2020-03-01 09:27:11', '四川', '攀枝花', 16, 0, 16, 0);
INSERT INTO `details` VALUES (192, '2020-03-01 09:27:11', '四川', '凉山', 13, 0, 10, 0);
INSERT INTO `details` VALUES (193, '2020-03-01 09:27:11', '四川', '宜宾', 12, 0, 10, 0);
INSERT INTO `details` VALUES (194, '2020-03-01 09:27:11', '四川', '自贡', 9, 0, 9, 0);
INSERT INTO `details` VALUES (195, '2020-03-01 09:27:11', '四川', '眉山', 8, 0, 7, 0);
INSERT INTO `details` VALUES (196, '2020-03-01 09:27:11', '四川', '雅安', 7, 0, 6, 0);
INSERT INTO `details` VALUES (197, '2020-03-01 09:27:11', '四川', '广元', 6, 0, 6, 0);
INSERT INTO `details` VALUES (198, '2020-03-01 09:27:11', '四川', '资阳', 4, 0, 2, 0);
INSERT INTO `details` VALUES (199, '2020-03-01 09:27:11', '四川', '乐山', 3, 0, 3, 0);
INSERT INTO `details` VALUES (200, '2020-03-01 09:27:11', '四川', '阿坝', 1, 0, 1, 0);
INSERT INTO `details` VALUES (201, '2020-03-01 09:27:11', '黑龙江', '哈尔滨', 198, 0, 123, 4);
INSERT INTO `details` VALUES (202, '2020-03-01 09:27:11', '黑龙江', '双鸭山', 52, 0, 36, 3);
INSERT INTO `details` VALUES (203, '2020-03-01 09:27:11', '黑龙江', '绥化', 47, 0, 35, 4);
INSERT INTO `details` VALUES (204, '2020-03-01 09:27:11', '黑龙江', '鸡西', 46, 0, 31, 0);
INSERT INTO `details` VALUES (205, '2020-03-01 09:27:11', '黑龙江', '齐齐哈尔', 43, 0, 33, 1);
INSERT INTO `details` VALUES (206, '2020-03-01 09:27:11', '黑龙江', '大庆', 26, 0, 17, 1);
INSERT INTO `details` VALUES (207, '2020-03-01 09:27:11', '黑龙江', '七台河', 17, 0, 13, 0);
INSERT INTO `details` VALUES (208, '2020-03-01 09:27:11', '黑龙江', '佳木斯', 15, 0, 15, 0);
INSERT INTO `details` VALUES (209, '2020-03-01 09:27:11', '黑龙江', '黑河', 14, 0, 11, 0);
INSERT INTO `details` VALUES (210, '2020-03-01 09:27:11', '黑龙江', '牡丹江', 14, 0, 9, 0);
INSERT INTO `details` VALUES (211, '2020-03-01 09:27:11', '黑龙江', '鹤岗', 5, 0, 4, 0);
INSERT INTO `details` VALUES (212, '2020-03-01 09:27:11', '黑龙江', '大兴安岭', 2, 0, 2, 0);
INSERT INTO `details` VALUES (213, '2020-03-01 09:27:11', '黑龙江', '伊春', 1, 0, 1, 0);
INSERT INTO `details` VALUES (214, '2020-03-01 09:27:11', '北京', '朝阳', 71, 0, 0, 0);
INSERT INTO `details` VALUES (215, '2020-03-01 09:27:11', '北京', '海淀', 62, 0, 0, 0);
INSERT INTO `details` VALUES (216, '2020-03-01 09:27:11', '北京', '西城', 53, 0, 0, 0);
INSERT INTO `details` VALUES (217, '2020-03-01 09:27:11', '北京', '丰台', 42, 0, 0, 0);
INSERT INTO `details` VALUES (218, '2020-03-01 09:27:11', '北京', '大兴', 39, 0, 0, 0);
INSERT INTO `details` VALUES (219, '2020-03-01 09:27:11', '北京', '昌平', 29, 0, 0, 0);
INSERT INTO `details` VALUES (220, '2020-03-01 09:27:11', '北京', '外地来京', 25, 0, 0, 0);
INSERT INTO `details` VALUES (221, '2020-03-01 09:27:11', '北京', '通州', 19, 0, 0, 0);
INSERT INTO `details` VALUES (222, '2020-03-01 09:27:11', '北京', '房山', 16, 0, 0, 0);
INSERT INTO `details` VALUES (223, '2020-03-01 09:27:11', '北京', '石景山', 14, 0, 0, 0);
INSERT INTO `details` VALUES (224, '2020-03-01 09:27:11', '北京', '东城', 13, 0, 0, 0);
INSERT INTO `details` VALUES (225, '2020-03-01 09:27:11', '北京', '顺义', 10, 0, 0, 0);
INSERT INTO `details` VALUES (226, '2020-03-01 09:27:11', '北京', '密云', 7, 0, 0, 0);
INSERT INTO `details` VALUES (227, '2020-03-01 09:27:11', '北京', '怀柔', 7, 0, 0, 0);
INSERT INTO `details` VALUES (228, '2020-03-01 09:27:11', '北京', '门头沟', 3, 0, 0, 0);
INSERT INTO `details` VALUES (229, '2020-03-01 09:27:11', '北京', '延庆', 1, 0, 0, 0);
INSERT INTO `details` VALUES (230, '2020-03-01 09:27:11', '北京', '地区待确认', 0, 0, 271, 8);
INSERT INTO `details` VALUES (231, '2020-03-01 09:27:11', '上海', '外地来沪', 111, 0, 94, 0);
INSERT INTO `details` VALUES (232, '2020-03-01 09:27:11', '上海', '浦东', 60, 0, 52, 0);
INSERT INTO `details` VALUES (233, '2020-03-01 09:27:11', '上海', '宝山', 21, 0, 14, 0);
INSERT INTO `details` VALUES (234, '2020-03-01 09:27:11', '上海', '闵行', 19, 0, 18, 0);
INSERT INTO `details` VALUES (235, '2020-03-01 09:27:11', '上海', '徐汇', 18, 0, 16, 0);
INSERT INTO `details` VALUES (236, '2020-03-01 09:27:11', '上海', '静安', 16, 0, 13, 0);
INSERT INTO `details` VALUES (237, '2020-03-01 09:27:11', '上海', '松江', 14, 0, 12, 0);
INSERT INTO `details` VALUES (238, '2020-03-01 09:27:11', '上海', '长宁', 13, 0, 13, 0);
INSERT INTO `details` VALUES (239, '2020-03-01 09:27:11', '上海', '普陀', 11, 0, 10, 0);
INSERT INTO `details` VALUES (240, '2020-03-01 09:27:11', '上海', '杨浦', 9, 0, 9, 0);
INSERT INTO `details` VALUES (241, '2020-03-01 09:27:11', '上海', '嘉定', 9, 0, 7, 0);
INSERT INTO `details` VALUES (242, '2020-03-01 09:27:11', '上海', '奉贤', 9, 0, 8, 0);
INSERT INTO `details` VALUES (243, '2020-03-01 09:27:11', '上海', '虹口', 7, 0, 6, 0);
INSERT INTO `details` VALUES (244, '2020-03-01 09:27:11', '上海', '黄浦', 6, 0, 4, 0);
INSERT INTO `details` VALUES (245, '2020-03-01 09:27:11', '上海', '青浦', 6, 0, 5, 0);
INSERT INTO `details` VALUES (246, '2020-03-01 09:27:11', '上海', '金山', 4, 0, 3, 0);
INSERT INTO `details` VALUES (247, '2020-03-01 09:27:11', '上海', '崇明', 4, 0, 3, 0);
INSERT INTO `details` VALUES (248, '2020-03-01 09:27:11', '上海', '地区待确认', 0, 0, 0, 3);
INSERT INTO `details` VALUES (249, '2020-03-01 09:27:11', '河北', '唐山', 58, 0, 42, 1);
INSERT INTO `details` VALUES (250, '2020-03-01 09:27:11', '河北', '沧州', 48, 0, 42, 3);
INSERT INTO `details` VALUES (251, '2020-03-01 09:27:11', '河北', '张家口', 41, 0, 33, 0);
INSERT INTO `details` VALUES (252, '2020-03-01 09:27:11', '河北', '邯郸', 32, 0, 31, 0);
INSERT INTO `details` VALUES (253, '2020-03-01 09:27:11', '河北', '保定', 32, 0, 32, 0);
INSERT INTO `details` VALUES (254, '2020-03-01 09:27:11', '河北', '廊坊', 30, 0, 30, 0);
INSERT INTO `details` VALUES (255, '2020-03-01 09:27:11', '河北', '石家庄', 29, 0, 27, 0);
INSERT INTO `details` VALUES (256, '2020-03-01 09:27:11', '河北', '邢台', 23, 0, 22, 1);
INSERT INTO `details` VALUES (257, '2020-03-01 09:27:11', '河北', '秦皇岛', 10, 0, 9, 1);
INSERT INTO `details` VALUES (258, '2020-03-01 09:27:11', '河北', '衡水', 8, 0, 8, 0);
INSERT INTO `details` VALUES (259, '2020-03-01 09:27:11', '河北', '承德', 7, 0, 7, 0);
INSERT INTO `details` VALUES (260, '2020-03-01 09:27:11', '福建', '福州', 72, 0, 70, 1);
INSERT INTO `details` VALUES (261, '2020-03-01 09:27:11', '福建', '莆田', 56, 0, 35, 0);
INSERT INTO `details` VALUES (262, '2020-03-01 09:27:11', '福建', '泉州', 47, 0, 32, 0);
INSERT INTO `details` VALUES (263, '2020-03-01 09:27:11', '福建', '厦门', 35, 0, 31, 0);
INSERT INTO `details` VALUES (264, '2020-03-01 09:27:11', '福建', '宁德', 26, 0, 23, 0);
INSERT INTO `details` VALUES (265, '2020-03-01 09:27:11', '福建', '漳州', 20, 0, 16, 0);
INSERT INTO `details` VALUES (266, '2020-03-01 09:27:11', '福建', '南平', 20, 0, 14, 0);
INSERT INTO `details` VALUES (267, '2020-03-01 09:27:11', '福建', '三明', 14, 0, 12, 0);
INSERT INTO `details` VALUES (268, '2020-03-01 09:27:11', '福建', '龙岩', 6, 0, 6, 0);
INSERT INTO `details` VALUES (269, '2020-03-01 09:27:11', '福建', '地区待确认', 0, 0, 4, 0);
INSERT INTO `details` VALUES (270, '2020-03-01 09:27:11', '广西', '南宁', 55, 0, 50, 0);
INSERT INTO `details` VALUES (271, '2020-03-01 09:27:11', '广西', '北海', 44, 0, 33, 1);
INSERT INTO `details` VALUES (272, '2020-03-01 09:27:11', '广西', '桂林', 32, 0, 26, 0);
INSERT INTO `details` VALUES (273, '2020-03-01 09:27:11', '广西', '河池', 28, 0, 8, 1);
INSERT INTO `details` VALUES (274, '2020-03-01 09:27:11', '广西', '柳州', 24, 0, 16, 0);
INSERT INTO `details` VALUES (275, '2020-03-01 09:27:11', '广西', '防城港', 19, 0, 10, 0);
INSERT INTO `details` VALUES (276, '2020-03-01 09:27:11', '广西', '来宾', 11, 0, 4, 0);
INSERT INTO `details` VALUES (277, '2020-03-01 09:27:11', '广西', '玉林', 11, 0, 7, 0);
INSERT INTO `details` VALUES (278, '2020-03-01 09:27:11', '广西', '贵港', 8, 0, 6, 0);
INSERT INTO `details` VALUES (279, '2020-03-01 09:27:11', '广西', '钦州', 8, 0, 7, 0);
INSERT INTO `details` VALUES (280, '2020-03-01 09:27:11', '广西', '梧州', 5, 0, 5, 0);
INSERT INTO `details` VALUES (281, '2020-03-01 09:27:11', '广西', '贺州', 4, 0, 4, 0);
INSERT INTO `details` VALUES (282, '2020-03-01 09:27:11', '广西', '百色', 3, 0, 3, 0);
INSERT INTO `details` VALUES (283, '2020-03-01 09:27:11', '广西', '崇左', 0, 0, 0, 0);
INSERT INTO `details` VALUES (284, '2020-03-01 09:27:11', '陕西', '西安', 120, 0, 0, 1);
INSERT INTO `details` VALUES (285, '2020-03-01 09:27:11', '陕西', '安康', 26, 0, 0, 0);
INSERT INTO `details` VALUES (286, '2020-03-01 09:27:11', '陕西', '汉中', 26, 0, 0, 0);
INSERT INTO `details` VALUES (287, '2020-03-01 09:27:11', '陕西', '咸阳', 17, 0, 0, 0);
INSERT INTO `details` VALUES (288, '2020-03-01 09:27:11', '陕西', '渭南', 15, 0, 0, 0);
INSERT INTO `details` VALUES (289, '2020-03-01 09:27:11', '陕西', '宝鸡', 13, 0, 0, 0);
INSERT INTO `details` VALUES (290, '2020-03-01 09:27:11', '陕西', '延安', 8, 0, 0, 0);
INSERT INTO `details` VALUES (291, '2020-03-01 09:27:11', '陕西', '铜川', 8, 0, 0, 0);
INSERT INTO `details` VALUES (292, '2020-03-01 09:27:11', '陕西', '商洛', 7, 0, 0, 0);
INSERT INTO `details` VALUES (293, '2020-03-01 09:27:11', '陕西', '榆林', 3, 0, 0, 0);
INSERT INTO `details` VALUES (294, '2020-03-01 09:27:11', '陕西', '韩城', 1, 0, 0, 0);
INSERT INTO `details` VALUES (295, '2020-03-01 09:27:11', '陕西', '杨凌', 1, 0, 0, 0);
INSERT INTO `details` VALUES (296, '2020-03-01 09:27:11', '陕西', '地区待确认', 0, 0, 207, 0);
INSERT INTO `details` VALUES (297, '2020-03-01 09:27:11', '云南', '昆明', 53, 0, 48, 0);
INSERT INTO `details` VALUES (298, '2020-03-01 09:27:11', '云南', '昭通市', 25, 0, 20, 0);
INSERT INTO `details` VALUES (299, '2020-03-01 09:27:11', '云南', '西双版纳州', 15, 0, 14, 1);
INSERT INTO `details` VALUES (300, '2020-03-01 09:27:11', '云南', '玉溪', 14, 0, 12, 1);
INSERT INTO `details` VALUES (301, '2020-03-01 09:27:11', '云南', '大理', 13, 0, 13, 0);
INSERT INTO `details` VALUES (302, '2020-03-01 09:27:11', '云南', '曲靖', 13, 0, 12, 0);
INSERT INTO `details` VALUES (303, '2020-03-01 09:27:11', '云南', '保山市', 9, 0, 8, 0);
INSERT INTO `details` VALUES (304, '2020-03-01 09:27:11', '云南', '红河', 9, 0, 8, 0);
INSERT INTO `details` VALUES (305, '2020-03-01 09:27:11', '云南', '丽江市', 7, 0, 7, 0);
INSERT INTO `details` VALUES (306, '2020-03-01 09:27:11', '云南', '德宏州', 5, 0, 4, 0);
INSERT INTO `details` VALUES (307, '2020-03-01 09:27:11', '云南', '普洱', 4, 0, 4, 0);
INSERT INTO `details` VALUES (308, '2020-03-01 09:27:11', '云南', '楚雄州', 4, 0, 4, 0);
INSERT INTO `details` VALUES (309, '2020-03-01 09:27:11', '云南', '文山州', 2, 0, 2, 0);
INSERT INTO `details` VALUES (310, '2020-03-01 09:27:11', '云南', '临沧', 1, 0, 1, 0);
INSERT INTO `details` VALUES (311, '2020-03-01 09:27:11', '海南', '三亚', 54, 0, 50, 1);
INSERT INTO `details` VALUES (312, '2020-03-01 09:27:11', '海南', '海口', 39, 0, 33, 0);
INSERT INTO `details` VALUES (313, '2020-03-01 09:27:11', '海南', '儋州', 15, 0, 12, 1);
INSERT INTO `details` VALUES (314, '2020-03-01 09:27:11', '海南', '万宁', 13, 0, 12, 0);
INSERT INTO `details` VALUES (315, '2020-03-01 09:27:11', '海南', '澄迈县', 9, 0, 7, 1);
INSERT INTO `details` VALUES (316, '2020-03-01 09:27:11', '海南', '昌江县', 7, 0, 6, 0);
INSERT INTO `details` VALUES (317, '2020-03-01 09:27:11', '海南', '琼海', 6, 0, 5, 1);
INSERT INTO `details` VALUES (318, '2020-03-01 09:27:11', '海南', '临高县', 6, 0, 6, 0);
INSERT INTO `details` VALUES (319, '2020-03-01 09:27:11', '海南', '陵水县', 4, 0, 4, 0);
INSERT INTO `details` VALUES (320, '2020-03-01 09:27:11', '海南', '保亭', 3, 0, 3, 0);
INSERT INTO `details` VALUES (321, '2020-03-01 09:27:11', '海南', '文昌', 3, 0, 3, 0);
INSERT INTO `details` VALUES (322, '2020-03-01 09:27:11', '海南', '定安县', 3, 0, 2, 1);
INSERT INTO `details` VALUES (323, '2020-03-01 09:27:11', '海南', '东方', 3, 0, 2, 0);
INSERT INTO `details` VALUES (324, '2020-03-01 09:27:11', '海南', '乐东', 2, 0, 2, 0);
INSERT INTO `details` VALUES (325, '2020-03-01 09:27:11', '海南', '琼中县', 1, 0, 1, 0);
INSERT INTO `details` VALUES (326, '2020-03-01 09:27:11', '贵州', '贵阳', 36, 0, 27, 1);
INSERT INTO `details` VALUES (327, '2020-03-01 09:27:11', '贵州', '遵义', 32, 0, 19, 0);
INSERT INTO `details` VALUES (328, '2020-03-01 09:27:11', '贵州', '毕节', 23, 0, 15, 0);
INSERT INTO `details` VALUES (329, '2020-03-01 09:27:11', '贵州', '黔南州', 17, 0, 15, 0);
INSERT INTO `details` VALUES (330, '2020-03-01 09:27:11', '贵州', '铜仁', 10, 0, 10, 0);
INSERT INTO `details` VALUES (331, '2020-03-01 09:27:11', '贵州', '黔东南州', 10, 0, 10, 0);
INSERT INTO `details` VALUES (332, '2020-03-01 09:27:11', '贵州', '六盘水', 10, 0, 8, 1);
INSERT INTO `details` VALUES (333, '2020-03-01 09:27:11', '贵州', '安顺', 4, 0, 4, 0);
INSERT INTO `details` VALUES (334, '2020-03-01 09:27:11', '贵州', '黔西南州', 4, 0, 4, 0);
INSERT INTO `details` VALUES (335, '2020-03-01 09:27:11', '天津', '宝坻区', 60, 0, 45, 0);
INSERT INTO `details` VALUES (336, '2020-03-01 09:27:11', '天津', '河东区', 15, 0, 11, 0);
INSERT INTO `details` VALUES (337, '2020-03-01 09:27:11', '天津', '河北区', 12, 0, 10, 0);
INSERT INTO `details` VALUES (338, '2020-03-01 09:27:11', '天津', '外地来津', 6, 0, 6, 0);
INSERT INTO `details` VALUES (339, '2020-03-01 09:27:11', '天津', '南开区', 6, 0, 4, 0);
INSERT INTO `details` VALUES (340, '2020-03-01 09:27:11', '天津', '北辰区', 6, 0, 5, 0);
INSERT INTO `details` VALUES (341, '2020-03-01 09:27:11', '天津', '和平区', 6, 0, 5, 0);
INSERT INTO `details` VALUES (342, '2020-03-01 09:27:11', '天津', '河西区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (343, '2020-03-01 09:27:11', '天津', '宁河区', 4, 0, 3, 0);
INSERT INTO `details` VALUES (344, '2020-03-01 09:27:11', '天津', '西青区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (345, '2020-03-01 09:27:11', '天津', '东丽区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (346, '2020-03-01 09:27:11', '天津', '滨海新区', 3, 0, 3, 0);
INSERT INTO `details` VALUES (347, '2020-03-01 09:27:11', '天津', '红桥区', 2, 0, 2, 0);
INSERT INTO `details` VALUES (348, '2020-03-01 09:27:11', '天津', '武清区', 2, 0, 2, 0);
INSERT INTO `details` VALUES (349, '2020-03-01 09:27:11', '天津', '津南区', 2, 0, 1, 0);
INSERT INTO `details` VALUES (350, '2020-03-01 09:27:11', '天津', '地区待确认', 0, 0, 0, 3);
INSERT INTO `details` VALUES (351, '2020-03-01 09:27:11', '山西', '晋中', 37, 0, 28, 0);
INSERT INTO `details` VALUES (352, '2020-03-01 09:27:11', '山西', '太原', 20, 0, 19, 0);
INSERT INTO `details` VALUES (353, '2020-03-01 09:27:11', '山西', '运城', 19, 0, 18, 0);
INSERT INTO `details` VALUES (354, '2020-03-01 09:27:11', '山西', '大同', 12, 0, 8, 0);
INSERT INTO `details` VALUES (355, '2020-03-01 09:27:11', '山西', '晋城', 10, 0, 8, 0);
INSERT INTO `details` VALUES (356, '2020-03-01 09:27:11', '山西', '长治', 8, 0, 7, 0);
INSERT INTO `details` VALUES (357, '2020-03-01 09:27:11', '山西', '朔州', 8, 0, 8, 0);
INSERT INTO `details` VALUES (358, '2020-03-01 09:27:11', '山西', '忻州', 7, 0, 6, 0);
INSERT INTO `details` VALUES (359, '2020-03-01 09:27:11', '山西', '吕梁', 6, 0, 6, 0);
INSERT INTO `details` VALUES (360, '2020-03-01 09:27:11', '山西', '阳泉', 4, 0, 4, 0);
INSERT INTO `details` VALUES (361, '2020-03-01 09:27:11', '山西', '临汾', 2, 0, 2, 0);
INSERT INTO `details` VALUES (362, '2020-03-01 09:27:11', '辽宁', '沈阳', 28, 0, 25, 0);
INSERT INTO `details` VALUES (363, '2020-03-01 09:27:11', '辽宁', '大连', 19, 0, 15, 0);
INSERT INTO `details` VALUES (364, '2020-03-01 09:27:11', '辽宁', '葫芦岛', 12, 0, 7, 1);
INSERT INTO `details` VALUES (365, '2020-03-01 09:27:11', '辽宁', '锦州', 12, 0, 11, 0);
INSERT INTO `details` VALUES (366, '2020-03-01 09:27:11', '辽宁', '盘锦', 11, 0, 11, 0);
INSERT INTO `details` VALUES (367, '2020-03-01 09:27:11', '辽宁', '阜新', 8, 0, 8, 0);
INSERT INTO `details` VALUES (368, '2020-03-01 09:27:11', '辽宁', '丹东', 8, 1, 6, 0);
INSERT INTO `details` VALUES (369, '2020-03-01 09:27:11', '辽宁', '铁岭', 7, 0, 5, 0);
INSERT INTO `details` VALUES (370, '2020-03-01 09:27:11', '辽宁', '朝阳市', 6, 0, 4, 0);
INSERT INTO `details` VALUES (371, '2020-03-01 09:27:11', '辽宁', '鞍山', 4, 0, 2, 0);
INSERT INTO `details` VALUES (372, '2020-03-01 09:27:11', '辽宁', '本溪', 3, 0, 3, 0);
INSERT INTO `details` VALUES (373, '2020-03-01 09:27:11', '辽宁', '辽阳', 3, 0, 3, 0);
INSERT INTO `details` VALUES (374, '2020-03-01 09:27:11', '辽宁', '营口', 1, 0, 1, 0);
INSERT INTO `details` VALUES (375, '2020-03-01 09:27:11', '香港', '地区待确认', 95, 1, 33, 2);
INSERT INTO `details` VALUES (376, '2020-03-01 09:27:11', '吉林', '长春', 45, 0, 39, 0);
INSERT INTO `details` VALUES (377, '2020-03-01 09:27:11', '吉林', '四平', 15, 0, 11, 1);
INSERT INTO `details` VALUES (378, '2020-03-01 09:27:11', '吉林', '辽源', 7, 0, 4, 0);
INSERT INTO `details` VALUES (379, '2020-03-01 09:27:11', '吉林', '通化', 6, 0, 3, 0);
INSERT INTO `details` VALUES (380, '2020-03-01 09:27:11', '吉林', '公主岭', 6, 0, 5, 0);
INSERT INTO `details` VALUES (381, '2020-03-01 09:27:11', '吉林', '延边', 5, 0, 5, 0);
INSERT INTO `details` VALUES (382, '2020-03-01 09:27:11', '吉林', '吉林', 5, 0, 5, 0);
INSERT INTO `details` VALUES (383, '2020-03-01 09:27:11', '吉林', '松原', 2, 0, 2, 0);
INSERT INTO `details` VALUES (384, '2020-03-01 09:27:11', '吉林', '梅河口市', 1, 0, 1, 0);
INSERT INTO `details` VALUES (385, '2020-03-01 09:27:11', '吉林', '白城', 1, 0, 0, 0);
INSERT INTO `details` VALUES (386, '2020-03-01 09:27:11', '甘肃', '兰州', 36, 0, 32, 2);
INSERT INTO `details` VALUES (387, '2020-03-01 09:27:11', '甘肃', '天水', 12, 0, 12, 0);
INSERT INTO `details` VALUES (388, '2020-03-01 09:27:11', '甘肃', '平凉', 9, 0, 6, 0);
INSERT INTO `details` VALUES (389, '2020-03-01 09:27:11', '甘肃', '定西', 9, 0, 8, 0);
INSERT INTO `details` VALUES (390, '2020-03-01 09:27:11', '甘肃', '甘南州', 8, 0, 8, 0);
INSERT INTO `details` VALUES (391, '2020-03-01 09:27:11', '甘肃', '白银', 4, 0, 4, 0);
INSERT INTO `details` VALUES (392, '2020-03-01 09:27:11', '甘肃', '陇南', 4, 0, 4, 0);
INSERT INTO `details` VALUES (393, '2020-03-01 09:27:11', '甘肃', '庆阳', 3, 0, 2, 0);
INSERT INTO `details` VALUES (394, '2020-03-01 09:27:11', '甘肃', '临夏', 3, 0, 3, 0);
INSERT INTO `details` VALUES (395, '2020-03-01 09:27:11', '甘肃', '张掖', 2, 0, 2, 0);
INSERT INTO `details` VALUES (396, '2020-03-01 09:27:11', '甘肃', '金昌', 1, 0, 1, 0);
INSERT INTO `details` VALUES (397, '2020-03-01 09:27:11', '甘肃', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (398, '2020-03-01 09:27:11', '新疆', '乌鲁木齐', 23, 0, 17, 0);
INSERT INTO `details` VALUES (399, '2020-03-01 09:27:11', '新疆', '伊犁州', 18, 0, 18, 0);
INSERT INTO `details` VALUES (400, '2020-03-01 09:27:11', '新疆', '兵团第四师', 10, 0, 9, 1);
INSERT INTO `details` VALUES (401, '2020-03-01 09:27:11', '新疆', '兵团第九师', 4, 0, 2, 1);
INSERT INTO `details` VALUES (402, '2020-03-01 09:27:11', '新疆', '第八师石河子', 4, 0, 2, 1);
INSERT INTO `details` VALUES (403, '2020-03-01 09:27:11', '新疆', '昌吉州', 4, 0, 3, 0);
INSERT INTO `details` VALUES (404, '2020-03-01 09:27:11', '新疆', '兵团第十二师', 3, 0, 3, 0);
INSERT INTO `details` VALUES (405, '2020-03-01 09:27:11', '新疆', '巴州', 3, 0, 3, 0);
INSERT INTO `details` VALUES (406, '2020-03-01 09:27:11', '新疆', '吐鲁番', 3, 0, 1, 0);
INSERT INTO `details` VALUES (407, '2020-03-01 09:27:11', '新疆', '六师五家渠', 2, 0, 2, 0);
INSERT INTO `details` VALUES (408, '2020-03-01 09:27:11', '新疆', '第七师', 1, 0, 1, 0);
INSERT INTO `details` VALUES (409, '2020-03-01 09:27:11', '新疆', '阿克苏', 1, 0, 1, 0);
INSERT INTO `details` VALUES (410, '2020-03-01 09:27:11', '内蒙古', '鄂尔多斯', 11, 0, 10, 0);
INSERT INTO `details` VALUES (411, '2020-03-01 09:27:11', '内蒙古', '包头', 11, 0, 6, 0);
INSERT INTO `details` VALUES (412, '2020-03-01 09:27:11', '内蒙古', '锡林郭勒', 9, 0, 3, 0);
INSERT INTO `details` VALUES (413, '2020-03-01 09:27:11', '内蒙古', '赤峰', 9, 0, 8, 0);
INSERT INTO `details` VALUES (414, '2020-03-01 09:27:11', '内蒙古', '巴彦淖尔', 8, 0, 7, 0);
INSERT INTO `details` VALUES (415, '2020-03-01 09:27:11', '内蒙古', '呼伦贝尔', 7, 0, 5, 0);
INSERT INTO `details` VALUES (416, '2020-03-01 09:27:11', '内蒙古', '通辽', 7, 0, 3, 0);
INSERT INTO `details` VALUES (417, '2020-03-01 09:27:11', '内蒙古', '呼和浩特', 7, 0, 4, 0);
INSERT INTO `details` VALUES (418, '2020-03-01 09:27:11', '内蒙古', '乌兰察布', 3, 0, 2, 0);
INSERT INTO `details` VALUES (419, '2020-03-01 09:27:11', '内蒙古', '乌海', 2, 0, 2, 0);
INSERT INTO `details` VALUES (420, '2020-03-01 09:27:11', '内蒙古', '兴安盟', 1, 0, 1, 0);
INSERT INTO `details` VALUES (421, '2020-03-01 09:27:11', '宁夏', '银川', 34, 0, 32, 0);
INSERT INTO `details` VALUES (422, '2020-03-01 09:27:11', '宁夏', '吴忠', 28, 0, 27, 0);
INSERT INTO `details` VALUES (423, '2020-03-01 09:27:11', '宁夏', '固原', 5, 0, 5, 0);
INSERT INTO `details` VALUES (424, '2020-03-01 09:27:11', '宁夏', '中卫', 4, 0, 3, 0);
INSERT INTO `details` VALUES (425, '2020-03-01 09:27:11', '宁夏', '石嘴山', 1, 0, 1, 0);
INSERT INTO `details` VALUES (426, '2020-03-01 09:27:11', '宁夏', '宁东管委会', 1, 0, 1, 0);
INSERT INTO `details` VALUES (427, '2020-03-01 09:27:11', '台湾', '地区待确认', 39, 0, 9, 1);
INSERT INTO `details` VALUES (428, '2020-03-01 09:27:11', '青海', '西宁', 15, 0, 15, 0);
INSERT INTO `details` VALUES (429, '2020-03-01 09:27:11', '青海', '海北州', 3, 0, 3, 0);
INSERT INTO `details` VALUES (430, '2020-03-01 09:27:11', '澳门', '地区待确认', 10, 0, 8, 0);
INSERT INTO `details` VALUES (431, '2020-03-01 09:27:11', '西藏', '地区待确认', 1, 0, 1, 0);

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `ds` datetime(5) NOT NULL COMMENT '日期',
  `confirm` int(11) NULL DEFAULT NULL COMMENT '累积确诊',
  `confirm_add` int(11) NULL DEFAULT NULL,
  `suspect` int(11) NULL DEFAULT NULL,
  `suspect_add` int(11) NULL DEFAULT NULL,
  `heal` int(11) NULL DEFAULT NULL,
  `heal_add` int(11) NULL DEFAULT NULL,
  `dead` int(11) NULL DEFAULT NULL,
  `dead_add` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ds`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('2020-01-13 00:00:00.00000', 41, NULL, 0, NULL, 0, NULL, 1, NULL);
INSERT INTO `history` VALUES ('2020-01-14 00:00:00.00000', 41, NULL, 0, NULL, 0, NULL, 1, NULL);
INSERT INTO `history` VALUES ('2020-01-15 00:00:00.00000', 41, NULL, 0, NULL, 5, NULL, 2, NULL);
INSERT INTO `history` VALUES ('2020-01-16 00:00:00.00000', 45, NULL, 0, NULL, 8, NULL, 2, NULL);
INSERT INTO `history` VALUES ('2020-01-17 00:00:00.00000', 62, NULL, 0, NULL, 12, NULL, 2, NULL);
INSERT INTO `history` VALUES ('2020-01-18 00:00:00.00000', 198, NULL, 0, NULL, 17, NULL, 3, NULL);
INSERT INTO `history` VALUES ('2020-01-19 00:00:00.00000', 275, NULL, 0, NULL, 18, NULL, 4, NULL);
INSERT INTO `history` VALUES ('2020-01-20 00:00:00.00000', 291, 77, 54, 27, 25, 0, 6, 0);
INSERT INTO `history` VALUES ('2020-01-21 00:00:00.00000', 440, 149, 37, 53, 25, 0, 9, 3);
INSERT INTO `history` VALUES ('2020-01-22 00:00:00.00000', 574, 131, 393, 257, 25, 0, 17, 8);
INSERT INTO `history` VALUES ('2020-01-23 00:00:00.00000', 835, 259, 1072, 680, 34, 6, 25, 8);
INSERT INTO `history` VALUES ('2020-01-24 00:00:00.00000', 1297, 444, 1965, 1118, 38, 3, 41, 16);
INSERT INTO `history` VALUES ('2020-01-25 00:00:00.00000', 1985, 688, 2684, 1309, 49, 11, 56, 15);
INSERT INTO `history` VALUES ('2020-01-26 00:00:00.00000', 2761, 769, 5794, 3806, 51, 2, 80, 24);
INSERT INTO `history` VALUES ('2020-01-27 00:00:00.00000', 4535, 1771, 6973, 2077, 60, 9, 106, 26);
INSERT INTO `history` VALUES ('2020-01-28 00:00:00.00000', 5997, 1459, 9239, 3248, 103, 43, 132, 26);
INSERT INTO `history` VALUES ('2020-01-29 00:00:00.00000', 7736, 1737, 12167, 4148, 124, 21, 170, 38);
INSERT INTO `history` VALUES ('2020-01-30 00:00:00.00000', 9720, 1982, 15238, 4812, 171, 47, 213, 43);
INSERT INTO `history` VALUES ('2020-01-31 00:00:00.00000', 11821, 2102, 17988, 5019, 243, 72, 259, 46);
INSERT INTO `history` VALUES ('2020-02-01 00:00:00.00000', 14411, 2590, 19544, 4562, 328, 85, 304, 45);
INSERT INTO `history` VALUES ('2020-02-02 00:00:00.00000', 17238, 2829, 21558, 5173, 475, 147, 361, 57);
INSERT INTO `history` VALUES ('2020-02-03 00:00:00.00000', 20471, 3235, 23214, 5072, 632, 157, 425, 64);
INSERT INTO `history` VALUES ('2020-02-04 00:00:00.00000', 24363, 3893, 23260, 3971, 892, 262, 491, 65);
INSERT INTO `history` VALUES ('2020-02-05 00:00:00.00000', 28060, 3697, 24702, 5328, 1153, 261, 564, 73);
INSERT INTO `history` VALUES ('2020-02-06 00:00:00.00000', 31211, 3143, 26359, 4833, 1542, 387, 637, 73);
INSERT INTO `history` VALUES ('2020-02-07 00:00:00.00000', 34598, 3401, 27657, 4214, 2052, 510, 723, 86);
INSERT INTO `history` VALUES ('2020-02-08 00:00:00.00000', 37251, 2656, 28942, 3916, 2651, 600, 812, 89);
INSERT INTO `history` VALUES ('2020-02-09 00:00:00.00000', 40235, 3062, 23589, 4008, 3283, 632, 909, 97);
INSERT INTO `history` VALUES ('2020-02-10 00:00:00.00000', 42708, 2484, 21675, 3536, 3998, 716, 1017, 108);
INSERT INTO `history` VALUES ('2020-02-11 00:00:00.00000', 44730, 2022, 16067, 3342, 4742, 744, 1114, 97);
INSERT INTO `history` VALUES ('2020-02-12 00:00:00.00000', 59882, 15153, 13435, 2807, 5915, 1173, 1368, 254);
INSERT INTO `history` VALUES ('2020-02-13 00:00:00.00000', 63932, 5093, 10109, 2450, 6728, 1083, 1381, 121);
INSERT INTO `history` VALUES ('2020-02-14 00:00:00.00000', 66576, 2644, 8969, 2277, 8101, 1373, 1524, 143);
INSERT INTO `history` VALUES ('2020-02-15 00:00:00.00000', 68584, 2009, 8228, 1918, 9425, 1324, 1666, 142);
INSERT INTO `history` VALUES ('2020-02-16 00:00:00.00000', 70635, 2051, 7264, 1563, 10853, 1425, 1772, 105);
INSERT INTO `history` VALUES ('2020-02-17 00:00:00.00000', 72528, 1891, 6242, 1432, 12561, 1701, 1870, 98);
INSERT INTO `history` VALUES ('2020-02-18 00:00:00.00000', 74279, 1751, 5248, 1185, 14387, 1826, 2006, 136);
INSERT INTO `history` VALUES ('2020-02-19 00:00:00.00000', 75002, 820, 4922, 1277, 16157, 1781, 2121, 115);
INSERT INTO `history` VALUES ('2020-02-20 00:00:00.00000', 75993, 892, 5206, 1614, 18266, 2109, 2239, 118);
INSERT INTO `history` VALUES ('2020-02-21 00:00:00.00000', 76392, 399, 5365, 1361, 20673, 2394, 2348, 109);
INSERT INTO `history` VALUES ('2020-02-22 00:00:00.00000', 77041, 649, 4148, 882, 22907, 2235, 2445, 97);
INSERT INTO `history` VALUES ('2020-02-23 00:00:00.00000', 77262, 416, 3434, 620, 24757, 1850, 2595, 150);
INSERT INTO `history` VALUES ('2020-02-24 00:00:00.00000', 77779, 517, 2824, 530, 27353, 2596, 2666, 71);
INSERT INTO `history` VALUES ('2020-02-25 00:00:00.00000', 78190, 411, 2491, 439, 29775, 2422, 2718, 52);
INSERT INTO `history` VALUES ('2020-02-26 00:00:00.00000', 78630, 440, 2358, 508, 32531, 2756, 2747, 29);
INSERT INTO `history` VALUES ('2020-02-27 00:00:00.00000', 78959, 329, 2308, 452, 36157, 3626, 2791, 44);
INSERT INTO `history` VALUES ('2020-02-28 00:00:00.00000', 79389, 430, 1418, 248, 39049, 2892, 2838, 47);
INSERT INTO `history` VALUES ('2020-02-29 00:00:00.00000', 79968, 579, 851, 132, 41675, 2626, 2873, 35);

-- ----------------------------
-- Table structure for hotsearch
-- ----------------------------
DROP TABLE IF EXISTS `hotsearch`;
CREATE TABLE `hotsearch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `dt`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotsearch
-- ----------------------------
INSERT INTO `hotsearch` VALUES (1, '2020-03-01 17:41:47', '新型肺炎实时动态489214');
INSERT INTO `hotsearch` VALUES (2, '2020-03-01 17:41:47', '现有疑似病例不足千人328574');
INSERT INTO `hotsearch` VALUES (3, '2020-03-01 17:41:47', '机票卖出白菜价317500');
INSERT INTO `hotsearch` VALUES (4, '2020-03-01 17:41:47', '北京3个不得擅自304202');
INSERT INTO `hotsearch` VALUES (5, '2020-03-01 17:41:47', '31省区市新增573例新冠肺炎239620');
INSERT INTO `hotsearch` VALUES (6, '2020-03-01 17:41:47', '韩国出生45天婴儿感染新冠肺炎214446');
INSERT INTO `hotsearch` VALUES (7, '2020-03-01 17:41:47', '除湖北外省市4月底可摘口罩210862');
INSERT INTO `hotsearch` VALUES (8, '2020-03-01 17:41:47', '湖北疫情风险等级评估报告出炉190462');
INSERT INTO `hotsearch` VALUES (9, '2020-03-01 17:41:47', '超4万名患者治愈出院187788');
INSERT INTO `hotsearch` VALUES (10, '2020-03-01 17:41:47', '武汉中心医院江学庆感染去世132190');
INSERT INTO `hotsearch` VALUES (11, '2020-03-01 17:41:47', '一家人武汉修轮胎滞留1个月113402');
INSERT INTO `hotsearch` VALUES (12, '2020-03-01 17:41:47', '法国新冠肺炎确诊升至100例102676');
INSERT INTO `hotsearch` VALUES (13, '2020-03-01 17:41:47', '诊疗方案二次推荐清肺排毒汤95114');
INSERT INTO `hotsearch` VALUES (14, '2020-03-01 17:41:47', '广西贺州32岁医生抗疫牺牲94474');
INSERT INTO `hotsearch` VALUES (15, '2020-03-01 17:41:47', '巴黎半程马拉松因疫情取消90374');
INSERT INTO `hotsearch` VALUES (16, '2020-03-01 17:41:47', '80名中国公民在俄隔离遭虐待不实89614');
INSERT INTO `hotsearch` VALUES (17, '2020-03-01 17:41:47', '湖北男子隔离21天后复工被赶出67434');
INSERT INTO `hotsearch` VALUES (18, '2020-03-01 17:41:47', '拾荒老人遭殴打打人者被拘10日62436');
INSERT INTO `hotsearch` VALUES (19, '2020-03-01 17:41:47', '大邱医院改造集装箱收治患者55592');
INSERT INTO `hotsearch` VALUES (20, '2020-03-01 17:41:47', '安徽全省退出高风险地区51112');

SET FOREIGN_KEY_CHECKS = 1;
