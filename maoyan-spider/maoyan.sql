
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for maoyan_cinema_list
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_cinema_list`;
CREATE TABLE `maoyan_cinema_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cinema_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `crawl_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cinema_id` (`cinema_id`,`city_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of maoyan_cinema_list
-- ----------------------------
BEGIN;
INSERT INTO `maoyan_cinema_list` VALUES (1, 15082, '华联影城（平谷店）', '地址：平谷区渔阳地区迎宾路1号院22号楼BHGMall北京华联平谷购物中心5层F5-13室', '[\"改签\", \"折扣卡\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (2, 2548, '华谊兄弟影院（IMAX洋桥店）', '地址：丰台区马家堡东路101号院10号银泰百货6层地铁10号线角门东站D口', '[\"退\", \"改签\", \"折扣卡\", \"IMAX厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (3, 13054, '万画影城（四季青店）', '地址：海淀区西四环北路金四季购物中心中段三层B003', '[\"退\", \"改签\", \"折扣卡\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (4, 99, 'UME影城（安贞DTS:X店）', '地址：东城区北三环东路36号环球贸易中心E座1层', '[\"改签\", \"折扣卡\", \"RealD厅\", \"4DX厅\", \"DTS:X 临境音厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (5, 5278, '耀莱成龙影城（马连道店）', '地址：西城区马连道路25号新年华生活购物广场5层', '[\"改签\", \"折扣卡\", \"4DX厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (6, 9370, '环球国际影城（房山欢乐城店）', '地址：房山区兴房大街38号华冠欢乐城四楼', '[\"改签\", \"折扣卡\", \"儿童厅\", \"4K厅\", \"60帧厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (7, 23617, '金泉港IMAX国际影城', '地址：朝阳区大屯里金泉购物中心318号楼4层', '[\"改签\", \"折扣卡\", \"IMAX厅\", \"杜比全景声厅\", \"4DX厅\", \"儿童厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (8, 14381, '博纳国际影城（通州土桥店）', '地址：通州区八通线土桥地铁站向东900米华远好天地购物中心3层（迪卡侬通州店）', '[\"改签\", \"折扣卡\", \"CGS中国巨幕厅\", \"杜比全景声厅\", \"60帧厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (9, 149, '首都电影院（西单店 LED+LUXE）', '地址：西城区西单北大街131号大悦城10楼（近西单苹果店）', '[\"折扣卡\", \"LUXE巨幕厅\", \"DTS:X 临境音厅\", \"60帧厅\", \"MX4D厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (10, 7634, '中影国际影城（丰台千禧街店）', '地址：丰台区卢沟桥街道靛厂路千禧商业街4号楼1-3层', '[\"折扣卡\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (11, 10987, '金逸影城（荟聚IMAX店）', '地址：大兴区欣宁街15号荟聚购物中心H区3层', '[\"改签\", \"折扣卡\", \"IMAX厅\", \"60帧厅\", \"CINITY厅\", \"MX4D厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (12, 69, '博纳国际影城（顺义店）', '地址：顺义区新顺南大街18号新世界百货七层', '[\"改签\", \"折扣卡\", \"MX4D厅\"]', 1, '2021-08-29 13:34:46');
INSERT INTO `maoyan_cinema_list` VALUES (25, 269, '百老汇影城（东方广场店）', '地址：东城区东长安街1号东方新天地LG层第五区', '[\"改签\", \"折扣卡\", \"RealD厅\", \"60帧厅\"]', 1, '2021-08-29 16:17:16');
INSERT INTO `maoyan_cinema_list` VALUES (26, 119, '百老汇影城（国瑞购物中心店）', '地址：东城区崇文门外大街18号国瑞城购物中心首层/-2层', '[\"改签\", \"折扣卡\", \"杜比全景声厅\", \"RealD厅\", \"LUXE巨幕厅\", \"4K厅\", \"60帧厅\"]', 1, '2021-08-29 16:17:16');
INSERT INTO `maoyan_cinema_list` VALUES (37, 2598, '华美国际影城（免费停车旧宫永辉店）', '地址：大兴区旧宫小红门路39号', '[\"退\", \"改签\", \"折扣卡\", \"4K厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (38, 16421, '奥兰环球影城（诚盈中心店）', '地址：朝阳区来广营西路5号院诚盈中心6号楼B1层商业街', '[\"改签\", \"折扣卡\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (39, 17023, '保利国际影城（天安门店）', '地址：西城区煤市街廊房头条交叉口东北角北京坊东区B1-B2层', '[\"折扣卡\", \"杜比全景声厅\", \"4K厅\", \"60帧厅\", \"巨幕厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (40, 116, '博纳国际影城（朝阳门IMAX店）', '地址：朝阳区三丰北里2号悠唐购物中心二期B1层', '[\"改签\", \"折扣卡\", \"IMAX厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (41, 10294, '保利国际影城（苹果园店）', '地址：石景山区阜石路300号喜隆多三层', '[\"改签\", \"折扣卡\", \"CGS中国巨幕厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (42, 35745, '万画影城 （国投财富广场店）', '地址：丰台区广安路9号院11号楼地下一层1217-08', '[\"退\", \"改签\", \"折扣卡\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (43, 36339, '中影南方古城影院', '地址：石景山区古城南路甲21号院古城影院', '[\"改签\", \"折扣卡\", \"杜比全景声厅\", \"4K厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (44, 36720, '中影奥兰环球影城（顺义LUXE店）', '地址：顺义区顺恒大街10号院5号楼2层201', '[\"改签\", \"折扣卡\", \"杜比全景声厅\", \"60帧厅\", \"巨幕厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (45, 36658, '中影盛世华纳国际影城（免费停车）', '地址：顺义区融鹰大厦三层', '[\"改签\", \"折扣卡\", \"杜比全景声厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (46, 35937, '光耀华纳·简票影城（免费停车大红门店）', '地址：丰台区集美家居大红门店南大门6号馆东南门上电影院', '[\"退\", \"改签\", \"折扣卡\", \"RealD厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (49, 25196, '华夏影城（环宇荟店）', '地址：朝阳区安定路6号环宇荟5层（安贞门地铁站B口）', '[\"折扣卡\", \"杜比全景声厅\", \"4K厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (50, 25866, '华联影院（公益西桥店）', '地址：丰台区马家堡街道华联商厦F3层', '[\"改签\", \"折扣卡\", \"杜比全景声厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (51, 36665, '国文全激光影城（正华店）', '地址：丰台区东铁匠营政馨园三区正华商城地下1层', '[\"折扣卡\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (52, 26195, '大地院线影城（珠江摩尔店）', '地址：昌平区回龙观镇北清路1号院7号楼内7-101-26', '[\"退\", \"改签\", \"折扣卡\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (53, 26198, '奥兰环球影城（方恒购物中心一店）', '地址：朝阳区阜通东大街6号院4号楼方恒购物中心', '[\"改签\", \"折扣卡\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (54, 27811, '时代影城密云店', '地址：密云区鼓楼南大街22号兴天阳生活广场4层', '[\"退\", \"改签\", \"折扣卡\", \"60帧厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (55, 28124, '时光巨幕影城房山店', '地址：房山区城关街道万宁桥南侧100米未来小镇二层', '[\"改签\", \"折扣卡\", \"儿童厅\", \"4K厅\", \"60帧厅\", \"巨幕厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (56, 27677, '星典巨幕影城（生物医药地铁站）', '地址：大兴区永大路北京东盛明发广场5层', '[\"退\", \"改签\", \"折扣卡\", \"杜比全景声厅\", \"4D厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (57, 24963, '星典影城（六里桥店）', '地址：丰台区西三环六里桥南里月恒正大商场三层', '[\"退\", \"改签\", \"折扣卡\", \"儿童厅\", \"4D厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (58, 25061, '晟嘉国际影城（新华百货店）', '地址：西城区新街口北大街1号新华百货5层', '[\"改签\", \"折扣卡\", \"杜比全景声厅\", \"4D厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (59, 36470, '纳美国际影城（免费停车通州店）', '地址：通州区六合桥西甲一号（免费停车）', '[\"改签\", \"折扣卡\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (60, 25747, '耀莱成龙影城（房山天街店）', '地址：房山区政通南路2号院1号楼龙湖房山天街五层', '[\"改签\", \"折扣卡\", \"Dolby Cinema厅\", \"4DX厅\", \"4K厅\"]', 1, '2021-08-29 16:17:23');
INSERT INTO `maoyan_cinema_list` VALUES (61, 24263, '耀莱成龙影城（花乡店）', '地址：丰台区南四环西路76号北京花乡奥莱村第十三号楼三层四层', '[\"改签\", \"折扣卡\", \"杜比全景声厅\", \"4DX厅\"]', 1, '2021-08-29 16:17:24');
INSERT INTO `maoyan_cinema_list` VALUES (62, 36517, '魔影国际影城（吉彩店）', '地址：海淀区玉海园五里22号配套商业楼', '[\"改签\", \"折扣卡\"]', 1, '2021-08-29 16:17:24');
INSERT INTO `maoyan_cinema_list` VALUES (63, 58, '金逸影城（新都店）', '地址：海淀区西三旗建材城中路6号新都购物广场1层', '[\"改签\", \"折扣卡\"]', 1, '2021-08-29 16:17:24');
INSERT INTO `maoyan_cinema_list` VALUES (64, 131, '新华国际影城（房山店）', '地址：房山区良乡北关西路14号华冠购物中心五层（良乡医院对面）', '[\"折扣卡\", \"4K厅\", \"60帧厅\"]', 1, '2021-08-29 16:17:24');
INSERT INTO `maoyan_cinema_list` VALUES (65, 2243, '完美世界影城（北京管庄店）', '地址：朝阳区朝阳路京通苑30号楼L307PLus365购物中心三层', '[\"改签\", \"折扣卡\"]', 1, '2021-08-29 16:17:24');
COMMIT;

-- ----------------------------
-- Table structure for maoyan_city
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_city`;
CREATE TABLE `maoyan_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_id` (`city_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1093 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of maoyan_city
-- ----------------------------
BEGIN;
INSERT INTO `maoyan_city` VALUES (1, '阿拉善盟', 150);
INSERT INTO `maoyan_city` VALUES (2, '鞍山', 151);
INSERT INTO `maoyan_city` VALUES (3, '安庆', 197);
INSERT INTO `maoyan_city` VALUES (4, '安阳', 238);
INSERT INTO `maoyan_city` VALUES (5, '阿坝', 319);
INSERT INTO `maoyan_city` VALUES (6, '安顺', 324);
INSERT INTO `maoyan_city` VALUES (7, '安康', 359);
INSERT INTO `maoyan_city` VALUES (8, '阿勒泰', 400);
INSERT INTO `maoyan_city` VALUES (9, '阿克苏', 394);
INSERT INTO `maoyan_city` VALUES (10, '安吉', 490);
INSERT INTO `maoyan_city` VALUES (11, '安丘', 588);
INSERT INTO `maoyan_city` VALUES (12, '安岳', 699);
INSERT INTO `maoyan_city` VALUES (13, '安平', 807);
INSERT INTO `maoyan_city` VALUES (14, '安宁', 873);
INSERT INTO `maoyan_city` VALUES (15, '安溪', 844);
INSERT INTO `maoyan_city` VALUES (16, '安化', 1008);
INSERT INTO `maoyan_city` VALUES (17, '阿勒泰市', 1126);
INSERT INTO `maoyan_city` VALUES (18, '安福', 1068);
INSERT INTO `maoyan_city` VALUES (19, '阿荣旗', 1229);
INSERT INTO `maoyan_city` VALUES (20, '安陆市', 1245);
INSERT INTO `maoyan_city` VALUES (21, '安州区', 1212);
INSERT INTO `maoyan_city` VALUES (22, '北京', 1);
INSERT INTO `maoyan_city` VALUES (23, '保定', 84);
INSERT INTO `maoyan_city` VALUES (24, '蚌埠', 88);
INSERT INTO `maoyan_city` VALUES (25, '包头', 140);
INSERT INTO `maoyan_city` VALUES (26, '本溪', 153);
INSERT INTO `maoyan_city` VALUES (27, '巴彦淖尔', 146);
INSERT INTO `maoyan_city` VALUES (28, '白城', 167);
INSERT INTO `maoyan_city` VALUES (29, '白山', 165);
INSERT INTO `maoyan_city` VALUES (30, '亳州', 204);
INSERT INTO `maoyan_city` VALUES (31, '滨州', 233);
INSERT INTO `maoyan_city` VALUES (32, '巴中', 317);
INSERT INTO `maoyan_city` VALUES (33, '北海', 292);
INSERT INTO `maoyan_city` VALUES (34, '百色', 297);
INSERT INTO `maoyan_city` VALUES (35, '毕节', 327);
INSERT INTO `maoyan_city` VALUES (36, '保山', 332);
INSERT INTO `maoyan_city` VALUES (37, '宝鸡', 353);
INSERT INTO `maoyan_city` VALUES (38, '白银', 363);
INSERT INTO `maoyan_city` VALUES (39, '巴州', 393);
INSERT INTO `maoyan_city` VALUES (40, '博尔塔拉', 392);
INSERT INTO `maoyan_city` VALUES (41, '滨海', 533);
INSERT INTO `maoyan_city` VALUES (42, '宝应', 602);
INSERT INTO `maoyan_city` VALUES (43, '北流', 681);
INSERT INTO `maoyan_city` VALUES (44, '博爱', 698);
INSERT INTO `maoyan_city` VALUES (45, '北碚', 731);
INSERT INTO `maoyan_city` VALUES (46, '宝丰', 783);
INSERT INTO `maoyan_city` VALUES (47, '泌阳', 887);
INSERT INTO `maoyan_city` VALUES (48, '博兴', 852);
INSERT INTO `maoyan_city` VALUES (49, '博山', 952);
INSERT INTO `maoyan_city` VALUES (50, '璧山', 946);
INSERT INTO `maoyan_city` VALUES (51, '彬县', 915);
INSERT INTO `maoyan_city` VALUES (52, '宾阳', 994);
INSERT INTO `maoyan_city` VALUES (53, '博白县', 1102);
INSERT INTO `maoyan_city` VALUES (54, '博罗县', 1098);
INSERT INTO `maoyan_city` VALUES (55, '北镇市', 1141);
INSERT INTO `maoyan_city` VALUES (56, '泊头市', 1074);
INSERT INTO `maoyan_city` VALUES (57, '北安市', 1165);
INSERT INTO `maoyan_city` VALUES (58, '巴彦县', 1193);
INSERT INTO `maoyan_city` VALUES (59, '重庆', 45);
INSERT INTO `maoyan_city` VALUES (60, '成都', 59);
INSERT INTO `maoyan_city` VALUES (61, '长沙', 70);
INSERT INTO `maoyan_city` VALUES (62, '常州', 89);
INSERT INTO `maoyan_city` VALUES (63, '长春', 116);
INSERT INTO `maoyan_city` VALUES (64, '沧州', 127);
INSERT INTO `maoyan_city` VALUES (65, '承德', 126);
INSERT INTO `maoyan_city` VALUES (66, '赤峰', 142);
INSERT INTO `maoyan_city` VALUES (67, '长治', 131);
INSERT INTO `maoyan_city` VALUES (68, '朝阳', 160);
INSERT INTO `maoyan_city` VALUES (69, '池州', 205);
INSERT INTO `maoyan_city` VALUES (70, '巢湖', 202);
INSERT INTO `maoyan_city` VALUES (71, '滁州', 199);
INSERT INTO `maoyan_city` VALUES (72, '潮州', 287);
INSERT INTO `maoyan_city` VALUES (73, '郴州', 271);
INSERT INTO `maoyan_city` VALUES (74, '常德', 268);
INSERT INTO `maoyan_city` VALUES (75, '崇左', 301);
INSERT INTO `maoyan_city` VALUES (76, '楚雄', 337);
INSERT INTO `maoyan_city` VALUES (77, '昌吉', 391);
INSERT INTO `maoyan_city` VALUES (78, '从化', 421);
INSERT INTO `maoyan_city` VALUES (79, '常熟', 422);
INSERT INTO `maoyan_city` VALUES (80, '长乐', 463);
INSERT INTO `maoyan_city` VALUES (81, '长兴', 452);
INSERT INTO `maoyan_city` VALUES (82, '慈溪', 451);
INSERT INTO `maoyan_city` VALUES (83, '昌邑', 527);
INSERT INTO `maoyan_city` VALUES (84, '长葛', 627);
INSERT INTO `maoyan_city` VALUES (85, '苍南', 624);
INSERT INTO `maoyan_city` VALUES (86, '承德县', 700);
INSERT INTO `maoyan_city` VALUES (87, '赤壁', 653);
INSERT INTO `maoyan_city` VALUES (88, '崇州', 646);
INSERT INTO `maoyan_city` VALUES (89, '淳安', 660);
INSERT INTO `maoyan_city` VALUES (90, '曹妃甸', 746);
INSERT INTO `maoyan_city` VALUES (91, '昌乐', 737);
INSERT INTO `maoyan_city` VALUES (92, '磁县', 767);
INSERT INTO `maoyan_city` VALUES (93, '昌黎', 801);
INSERT INTO `maoyan_city` VALUES (94, '岑溪', 811);
INSERT INTO `maoyan_city` VALUES (95, '成安', 798);
INSERT INTO `maoyan_city` VALUES (96, '长垣', 795);
INSERT INTO `maoyan_city` VALUES (97, '曹县', 883);
INSERT INTO `maoyan_city` VALUES (98, '茌平', 877);
INSERT INTO `maoyan_city` VALUES (99, '长汀', 954);
INSERT INTO `maoyan_city` VALUES (100, '城固', 909);
INSERT INTO `maoyan_city` VALUES (101, '赤水', 1018);
INSERT INTO `maoyan_city` VALUES (102, '常山', 993);
INSERT INTO `maoyan_city` VALUES (103, '长寿', 981);
INSERT INTO `maoyan_city` VALUES (104, '潮安', 970);
INSERT INTO `maoyan_city` VALUES (105, '长丰县', 1100);
INSERT INTO `maoyan_city` VALUES (106, '茶陵', 1097);
INSERT INTO `maoyan_city` VALUES (107, '常宁市', 1092);
INSERT INTO `maoyan_city` VALUES (108, '苍溪县', 1150);
INSERT INTO `maoyan_city` VALUES (109, '慈利', 1078);
INSERT INTO `maoyan_city` VALUES (110, '长清区', 1157);
INSERT INTO `maoyan_city` VALUES (111, '崇明区', 1164);
INSERT INTO `maoyan_city` VALUES (112, '成武县', 1201);
INSERT INTO `maoyan_city` VALUES (113, '澄江县', 1205);
INSERT INTO `maoyan_city` VALUES (114, '大连', 65);
INSERT INTO `maoyan_city` VALUES (115, '东莞', 91);
INSERT INTO `maoyan_city` VALUES (116, '大庆', 90);
INSERT INTO `maoyan_city` VALUES (117, '大同', 129);
INSERT INTO `maoyan_city` VALUES (118, '丹东', 154);
INSERT INTO `maoyan_city` VALUES (119, '大兴安岭', 178);
INSERT INTO `maoyan_city` VALUES (120, '东营', 223);
INSERT INTO `maoyan_city` VALUES (121, '德州', 231);
INSERT INTO `maoyan_city` VALUES (122, '德阳', 305);
INSERT INTO `maoyan_city` VALUES (123, '达州', 315);
INSERT INTO `maoyan_city` VALUES (124, '德宏', 342);
INSERT INTO `maoyan_city` VALUES (125, '大理', 341);
INSERT INTO `maoyan_city` VALUES (126, '迪庆', 344);
INSERT INTO `maoyan_city` VALUES (127, '定西', 370);
INSERT INTO `maoyan_city` VALUES (128, '敦煌', 434);
INSERT INTO `maoyan_city` VALUES (129, '丹阳', 431);
INSERT INTO `maoyan_city` VALUES (130, '东台', 478);
INSERT INTO `maoyan_city` VALUES (131, '大丰', 477);
INSERT INTO `maoyan_city` VALUES (132, '德清', 467);
INSERT INTO `maoyan_city` VALUES (133, '东阳', 455);
INSERT INTO `maoyan_city` VALUES (134, '当阳', 491);
INSERT INTO `maoyan_city` VALUES (135, '登封', 552);
INSERT INTO `maoyan_city` VALUES (136, '儋州', 571);
INSERT INTO `maoyan_city` VALUES (137, '东港', 539);
INSERT INTO `maoyan_city` VALUES (138, '东兴', 635);
INSERT INTO `maoyan_city` VALUES (139, '都江堰', 576);
INSERT INTO `maoyan_city` VALUES (140, '大石桥', 599);
INSERT INTO `maoyan_city` VALUES (141, '大冶', 600);
INSERT INTO `maoyan_city` VALUES (142, '东方', 686);
INSERT INTO `maoyan_city` VALUES (143, '大通', 679);
INSERT INTO `maoyan_city` VALUES (144, '灯塔', 651);
INSERT INTO `maoyan_city` VALUES (145, '调兵山', 642);
INSERT INTO `maoyan_city` VALUES (146, '邓州', 662);
INSERT INTO `maoyan_city` VALUES (147, '电白', 750);
INSERT INTO `maoyan_city` VALUES (148, '东平', 738);
INSERT INTO `maoyan_city` VALUES (149, '定州', 765);
INSERT INTO `maoyan_city` VALUES (150, '东海', 754);
INSERT INTO `maoyan_city` VALUES (151, '达拉特旗', 874);
INSERT INTO `maoyan_city` VALUES (152, '郸城', 835);
INSERT INTO `maoyan_city` VALUES (153, '大荔', 836);
INSERT INTO `maoyan_city` VALUES (154, '大洼', 945);
INSERT INTO `maoyan_city` VALUES (155, '大竹', 910);
INSERT INTO `maoyan_city` VALUES (156, '东光', 999);
INSERT INTO `maoyan_city` VALUES (157, '敦化', 978);
INSERT INTO `maoyan_city` VALUES (158, '大邑', 971);
INSERT INTO `maoyan_city` VALUES (159, '砀山', 974);
INSERT INTO `maoyan_city` VALUES (160, '道县', 1035);
INSERT INTO `maoyan_city` VALUES (161, '大安市', 1076);
INSERT INTO `maoyan_city` VALUES (162, '大厂回族自治县', 1233);
INSERT INTO `maoyan_city` VALUES (163, '定远县', 1242);
INSERT INTO `maoyan_city` VALUES (164, '大悟县', 1243);
INSERT INTO `maoyan_city` VALUES (165, '定安县', 1168);
INSERT INTO `maoyan_city` VALUES (166, '垫江', 1177);
INSERT INTO `maoyan_city` VALUES (167, '东明县', 1203);
INSERT INTO `maoyan_city` VALUES (168, '定陶区', 1204);
INSERT INTO `maoyan_city` VALUES (169, '定边县', 1208);
INSERT INTO `maoyan_city` VALUES (170, '鄂尔多斯', 144);
INSERT INTO `maoyan_city` VALUES (171, '鄂州', 254);
INSERT INTO `maoyan_city` VALUES (172, '恩施', 261);
INSERT INTO `maoyan_city` VALUES (173, '峨眉山', 417);
INSERT INTO `maoyan_city` VALUES (174, '额尔古纳', 568);
INSERT INTO `maoyan_city` VALUES (175, '恩平', 989);
INSERT INTO `maoyan_city` VALUES (176, '额敏县', 1172);
INSERT INTO `maoyan_city` VALUES (177, '福州', 44);
INSERT INTO `maoyan_city` VALUES (178, '佛山', 92);
INSERT INTO `maoyan_city` VALUES (179, '抚顺', 152);
INSERT INTO `maoyan_city` VALUES (180, '阜新', 156);
INSERT INTO `maoyan_city` VALUES (181, '阜阳', 200);
INSERT INTO `maoyan_city` VALUES (182, '抚州', 220);
INSERT INTO `maoyan_city` VALUES (183, '防城港', 293);
INSERT INTO `maoyan_city` VALUES (184, '涪陵', 427);
INSERT INTO `maoyan_city` VALUES (185, '富阳', 416);
INSERT INTO `maoyan_city` VALUES (186, '福清', 462);
INSERT INTO `maoyan_city` VALUES (187, '凤凰', 480);
INSERT INTO `maoyan_city` VALUES (188, '肥城', 545);
INSERT INTO `maoyan_city` VALUES (189, '阜宁', 535);
INSERT INTO `maoyan_city` VALUES (190, '奉化', 540);
INSERT INTO `maoyan_city` VALUES (191, '汾阳', 677);
INSERT INTO `maoyan_city` VALUES (192, '阜康', 689);
INSERT INTO `maoyan_city` VALUES (193, '凤城', 665);
INSERT INTO `maoyan_city` VALUES (194, '范县', 742);
INSERT INTO `maoyan_city` VALUES (195, '丰城', 735);
INSERT INTO `maoyan_city` VALUES (196, '封丘', 827);
INSERT INTO `maoyan_city` VALUES (197, '肥乡', 792);
INSERT INTO `maoyan_city` VALUES (198, '繁昌', 774);
INSERT INTO `maoyan_city` VALUES (199, '富顺', 888);
INSERT INTO `maoyan_city` VALUES (200, '抚松', 869);
INSERT INTO `maoyan_city` VALUES (201, '丰县', 862);
INSERT INTO `maoyan_city` VALUES (202, '扶风', 861);
INSERT INTO `maoyan_city` VALUES (203, '扶沟', 937);
INSERT INTO `maoyan_city` VALUES (204, '丰宁', 924);
INSERT INTO `maoyan_city` VALUES (205, '佛冈', 921);
INSERT INTO `maoyan_city` VALUES (206, '费县', 916);
INSERT INTO `maoyan_city` VALUES (207, '凤台', 980);
INSERT INTO `maoyan_city` VALUES (208, '肥西县', 1142);
INSERT INTO `maoyan_city` VALUES (209, '奉新', 1031);
INSERT INTO `maoyan_city` VALUES (210, '方城', 1052);
INSERT INTO `maoyan_city` VALUES (211, '富源县', 1066);
INSERT INTO `maoyan_city` VALUES (212, '分宜', 1070);
INSERT INTO `maoyan_city` VALUES (213, '扶绥县', 1084);
INSERT INTO `maoyan_city` VALUES (214, '丰都', 1231);
INSERT INTO `maoyan_city` VALUES (215, '奉节', 1230);
INSERT INTO `maoyan_city` VALUES (216, '肥东县', 1241);
INSERT INTO `maoyan_city` VALUES (217, '凤翔县', 1152);
INSERT INTO `maoyan_city` VALUES (218, '福安', 1195);
INSERT INTO `maoyan_city` VALUES (219, '福鼎市', 1202);
INSERT INTO `maoyan_city` VALUES (220, '府谷县', 1209);
INSERT INTO `maoyan_city` VALUES (221, '广州', 20);
INSERT INTO `maoyan_city` VALUES (222, '桂林', 93);
INSERT INTO `maoyan_city` VALUES (223, '贵阳', 107);
INSERT INTO `maoyan_city` VALUES (224, '赣州', 217);
INSERT INTO `maoyan_city` VALUES (225, '广元', 307);
INSERT INTO `maoyan_city` VALUES (226, '广安', 314);
INSERT INTO `maoyan_city` VALUES (227, '贵港', 295);
INSERT INTO `maoyan_city` VALUES (228, '甘孜', 320);
INSERT INTO `maoyan_city` VALUES (229, '甘南', 373);
INSERT INTO `maoyan_city` VALUES (230, '固原', 385);
INSERT INTO `maoyan_city` VALUES (231, '巩义', 553);
INSERT INTO `maoyan_city` VALUES (232, '桂平', 570);
INSERT INTO `maoyan_city` VALUES (233, '高邮', 521);
INSERT INTO `maoyan_city` VALUES (234, '广饶', 541);
INSERT INTO `maoyan_city` VALUES (235, '高州', 631);
INSERT INTO `maoyan_city` VALUES (236, '个旧', 630);
INSERT INTO `maoyan_city` VALUES (237, '高碑店', 629);
INSERT INTO `maoyan_city` VALUES (238, '盖州', 638);
INSERT INTO `maoyan_city` VALUES (239, '公主岭', 581);
INSERT INTO `maoyan_city` VALUES (240, '高密', 589);
INSERT INTO `maoyan_city` VALUES (241, '广汉', 593);
INSERT INTO `maoyan_city` VALUES (242, '藁城', 595);
INSERT INTO `maoyan_city` VALUES (243, '高平', 601);
INSERT INTO `maoyan_city` VALUES (244, '格尔木', 702);
INSERT INTO `maoyan_city` VALUES (245, '古交', 691);
INSERT INTO `maoyan_city` VALUES (246, '灌云', 751);
INSERT INTO `maoyan_city` VALUES (247, '灌南', 752);
INSERT INTO `maoyan_city` VALUES (248, '赣榆', 753);
INSERT INTO `maoyan_city` VALUES (249, '共青城', 787);
INSERT INTO `maoyan_city` VALUES (250, '高安', 771);
INSERT INTO `maoyan_city` VALUES (251, '广德', 780);
INSERT INTO `maoyan_city` VALUES (252, '高陵', 866);
INSERT INTO `maoyan_city` VALUES (253, '高阳', 854);
INSERT INTO `maoyan_city` VALUES (254, '公安', 911);
INSERT INTO `maoyan_city` VALUES (255, '固始县', 1104);
INSERT INTO `maoyan_city` VALUES (256, '光山县', 1239);
INSERT INTO `maoyan_city` VALUES (257, '光泽', 1174);
INSERT INTO `maoyan_city` VALUES (258, '杭州', 50);
INSERT INTO `maoyan_city` VALUES (259, '合肥', 56);
INSERT INTO `maoyan_city` VALUES (260, '葫芦岛', 95);
INSERT INTO `maoyan_city` VALUES (261, '海口', 94);
INSERT INTO `maoyan_city` VALUES (262, '哈尔滨', 105);
INSERT INTO `maoyan_city` VALUES (263, '邯郸', 123);
INSERT INTO `maoyan_city` VALUES (264, '呼和浩特', 139);
INSERT INTO `maoyan_city` VALUES (265, '衡水', 128);
INSERT INTO `maoyan_city` VALUES (266, '呼伦贝尔', 145);
INSERT INTO `maoyan_city` VALUES (267, '鹤岗', 170);
INSERT INTO `maoyan_city` VALUES (268, '湖州', 186);
INSERT INTO `maoyan_city` VALUES (269, '黑河', 176);
INSERT INTO `maoyan_city` VALUES (270, '淮安', 180);
INSERT INTO `maoyan_city` VALUES (271, '黄山', 198);
INSERT INTO `maoyan_city` VALUES (272, '淮南', 193);
INSERT INTO `maoyan_city` VALUES (273, '淮北', 195);
INSERT INTO `maoyan_city` VALUES (274, '鹤壁', 239);
INSERT INTO `maoyan_city` VALUES (275, '菏泽', 234);
INSERT INTO `maoyan_city` VALUES (276, '黄石', 250);
INSERT INTO `maoyan_city` VALUES (277, '怀化', 273);
INSERT INTO `maoyan_city` VALUES (278, '惠州', 281);
INSERT INTO `maoyan_city` VALUES (279, '河源', 284);
INSERT INTO `maoyan_city` VALUES (280, '黄冈', 258);
INSERT INTO `maoyan_city` VALUES (281, '衡阳', 265);
INSERT INTO `maoyan_city` VALUES (282, '贺州', 298);
INSERT INTO `maoyan_city` VALUES (283, '河池', 299);
INSERT INTO `maoyan_city` VALUES (284, '红河', 338);
INSERT INTO `maoyan_city` VALUES (285, '海东', 375);
INSERT INTO `maoyan_city` VALUES (286, '海西', 381);
INSERT INTO `maoyan_city` VALUES (287, '海南州', 378);
INSERT INTO `maoyan_city` VALUES (288, '汉中', 357);
INSERT INTO `maoyan_city` VALUES (289, '花都', 410);
INSERT INTO `maoyan_city` VALUES (290, '哈密', 390);
INSERT INTO `maoyan_city` VALUES (291, '海宁', 424);
INSERT INTO `maoyan_city` VALUES (292, '惠阳', 472);
INSERT INTO `maoyan_city` VALUES (293, '惠东', 471);
INSERT INTO `maoyan_city` VALUES (294, '鹤山', 504);
INSERT INTO `maoyan_city` VALUES (295, '桦甸', 505);
INSERT INTO `maoyan_city` VALUES (296, '海城', 506);
INSERT INTO `maoyan_city` VALUES (297, '华阴', 564);
INSERT INTO `maoyan_city` VALUES (298, '霸州', 575);
INSERT INTO `maoyan_city` VALUES (299, '海阳', 573);
INSERT INTO `maoyan_city` VALUES (300, '海门', 519);
INSERT INTO `maoyan_city` VALUES (301, '海安', 623);
INSERT INTO `maoyan_city` VALUES (302, '侯马', 579);
INSERT INTO `maoyan_city` VALUES (303, '河津', 598);
INSERT INTO `maoyan_city` VALUES (304, '海林', 685);
INSERT INTO `maoyan_city` VALUES (305, '化州', 672);
INSERT INTO `maoyan_city` VALUES (306, '黄骅', 650);
INSERT INTO `maoyan_city` VALUES (307, '霍州', 645);
INSERT INTO `maoyan_city` VALUES (308, '淮阳', 758);
INSERT INTO `maoyan_city` VALUES (309, '合川', 732);
INSERT INTO `maoyan_city` VALUES (310, '海盐', 726);
INSERT INTO `maoyan_city` VALUES (311, '滑县', 816);
INSERT INTO `maoyan_city` VALUES (312, '惠安', 825);
INSERT INTO `maoyan_city` VALUES (313, '怀仁', 806);
INSERT INTO `maoyan_city` VALUES (314, '辉县', 800);
INSERT INTO `maoyan_city` VALUES (315, '户县', 799);
INSERT INTO `maoyan_city` VALUES (316, '和县', 794);
INSERT INTO `maoyan_city` VALUES (317, '含山', 793);
INSERT INTO `maoyan_city` VALUES (318, '汉阴', 772);
INSERT INTO `maoyan_city` VALUES (319, '河口', 881);
INSERT INTO `maoyan_city` VALUES (320, '辉南', 894);
INSERT INTO `maoyan_city` VALUES (321, '洪洞', 867);
INSERT INTO `maoyan_city` VALUES (322, '横店', 851);
INSERT INTO `maoyan_city` VALUES (323, '华亭', 856);
INSERT INTO `maoyan_city` VALUES (324, '韩城', 832);
INSERT INTO `maoyan_city` VALUES (325, '洪湖', 928);
INSERT INTO `maoyan_city` VALUES (326, '怀宁', 1005);
INSERT INTO `maoyan_city` VALUES (327, '珲春', 977);
INSERT INTO `maoyan_city` VALUES (328, '霍邱', 975);
INSERT INTO `maoyan_city` VALUES (329, '海沧', 964);
INSERT INTO `maoyan_city` VALUES (330, '潢川县', 1103);
INSERT INTO `maoyan_city` VALUES (331, '衡阳县', 1088);
INSERT INTO `maoyan_city` VALUES (332, '衡山县', 1090);
INSERT INTO `maoyan_city` VALUES (333, '衡东县', 1091);
INSERT INTO `maoyan_city` VALUES (334, '贺兰县', 1105);
INSERT INTO `maoyan_city` VALUES (335, '海伦市', 1130);
INSERT INTO `maoyan_city` VALUES (336, '汉南区', 1124);
INSERT INTO `maoyan_city` VALUES (337, '合江县', 1145);
INSERT INTO `maoyan_city` VALUES (338, '怀远县', 1042);
INSERT INTO `maoyan_city` VALUES (339, '会泽县', 1065);
INSERT INTO `maoyan_city` VALUES (340, '河间市', 1080);
INSERT INTO `maoyan_city` VALUES (341, '合浦县', 1086);
INSERT INTO `maoyan_city` VALUES (342, '横山区', 1234);
INSERT INTO `maoyan_city` VALUES (343, '环县', 1185);
INSERT INTO `maoyan_city` VALUES (344, '黄陵县', 1206);
INSERT INTO `maoyan_city` VALUES (345, '华容', 8001);
INSERT INTO `maoyan_city` VALUES (346, '锦州', 98);
INSERT INTO `maoyan_city` VALUES (347, '济南', 96);
INSERT INTO `maoyan_city` VALUES (348, '焦作', 97);
INSERT INTO `maoyan_city` VALUES (349, '九江', 115);
INSERT INTO `maoyan_city` VALUES (350, '晋城', 132);
INSERT INTO `maoyan_city` VALUES (351, '晋中', 134);
INSERT INTO `maoyan_city` VALUES (352, '鸡西', 169);
INSERT INTO `maoyan_city` VALUES (353, '佳木斯', 173);
INSERT INTO `maoyan_city` VALUES (354, '吉林', 161);
INSERT INTO `maoyan_city` VALUES (355, '嘉兴', 185);
INSERT INTO `maoyan_city` VALUES (356, '金华', 188);
INSERT INTO `maoyan_city` VALUES (357, '吉安', 218);
INSERT INTO `maoyan_city` VALUES (358, '景德镇', 213);
INSERT INTO `maoyan_city` VALUES (359, '济宁', 225);
INSERT INTO `maoyan_city` VALUES (360, '荆门', 255);
INSERT INTO `maoyan_city` VALUES (361, '济源', 249);
INSERT INTO `maoyan_city` VALUES (362, '江门', 277);
INSERT INTO `maoyan_city` VALUES (363, '荆州', 257);
INSERT INTO `maoyan_city` VALUES (364, '揭阳', 288);
INSERT INTO `maoyan_city` VALUES (365, '酒泉', 368);
INSERT INTO `maoyan_city` VALUES (366, '金昌', 362);
INSERT INTO `maoyan_city` VALUES (367, '嘉峪关', 409);
INSERT INTO `maoyan_city` VALUES (368, '江阴', 404);
INSERT INTO `maoyan_city` VALUES (369, '靖江', 439);
INSERT INTO `maoyan_city` VALUES (370, '晋江', 420);
INSERT INTO `maoyan_city` VALUES (371, '金坛', 460);
INSERT INTO `maoyan_city` VALUES (372, '江山', 510);
INSERT INTO `maoyan_city` VALUES (373, '嘉善', 489);
INSERT INTO `maoyan_city` VALUES (374, '晋州', 544);
INSERT INTO `maoyan_city` VALUES (375, '句容', 515);
INSERT INTO `maoyan_city` VALUES (376, '建湖', 536);
INSERT INTO `maoyan_city` VALUES (377, '介休', 636);
INSERT INTO `maoyan_city` VALUES (378, '胶州', 583);
INSERT INTO `maoyan_city` VALUES (379, '建德', 594);
INSERT INTO `maoyan_city` VALUES (380, '简阳', 605);
INSERT INTO `maoyan_city` VALUES (381, '集安', 678);
INSERT INTO `maoyan_city` VALUES (382, '即墨', 664);
INSERT INTO `maoyan_city` VALUES (383, '建阳', 756);
INSERT INTO `maoyan_city` VALUES (384, '蛟河', 725);
INSERT INTO `maoyan_city` VALUES (385, '监利', 831);
INSERT INTO `maoyan_city` VALUES (386, '金堂', 788);
INSERT INTO `maoyan_city` VALUES (387, '郏县', 785);
INSERT INTO `maoyan_city` VALUES (388, '巨野', 882);
INSERT INTO `maoyan_city` VALUES (389, '江津', 871);
INSERT INTO `maoyan_city` VALUES (390, '金湖', 956);
INSERT INTO `maoyan_city` VALUES (391, '江都', 948);
INSERT INTO `maoyan_city` VALUES (392, '莒南', 941);
INSERT INTO `maoyan_city` VALUES (393, '江油', 927);
INSERT INTO `maoyan_city` VALUES (394, '京山', 918);
INSERT INTO `maoyan_city` VALUES (395, '缙云', 913);
INSERT INTO `maoyan_city` VALUES (396, '金乡', 900);
INSERT INTO `maoyan_city` VALUES (397, '嘉祥', 899);
INSERT INTO `maoyan_city` VALUES (398, '金沙', 1001);
INSERT INTO `maoyan_city` VALUES (399, '泾县', 1003);
INSERT INTO `maoyan_city` VALUES (400, '集美', 963);
INSERT INTO `maoyan_city` VALUES (401, '鄄城县', 1134);
INSERT INTO `maoyan_city` VALUES (402, '靖边', 1146);
INSERT INTO `maoyan_city` VALUES (403, '江川县', 1032);
INSERT INTO `maoyan_city` VALUES (404, '江华瑶族自治县', 1038);
INSERT INTO `maoyan_city` VALUES (405, '吉安县', 1028);
INSERT INTO `maoyan_city` VALUES (406, '吉水县', 1029);
INSERT INTO `maoyan_city` VALUES (407, '晋宁县', 1059);
INSERT INTO `maoyan_city` VALUES (408, '江永', 1061);
INSERT INTO `maoyan_city` VALUES (409, '建水县', 1085);
INSERT INTO `maoyan_city` VALUES (410, '嘉鱼县', 1153);
INSERT INTO `maoyan_city` VALUES (411, '祁县', 1188);
INSERT INTO `maoyan_city` VALUES (412, '精河县', 1194);
INSERT INTO `maoyan_city` VALUES (413, '靖西县', 1197);
INSERT INTO `maoyan_city` VALUES (414, '昆明', 114);
INSERT INTO `maoyan_city` VALUES (415, '开封', 235);
INSERT INTO `maoyan_city` VALUES (416, '昆山', 403);
INSERT INTO `maoyan_city` VALUES (417, '喀什地区', 396);
INSERT INTO `maoyan_city` VALUES (418, '克拉玛依', 388);
INSERT INTO `maoyan_city` VALUES (419, '开平', 502);
INSERT INTO `maoyan_city` VALUES (420, '库尔勒', 603);
INSERT INTO `maoyan_city` VALUES (421, '奎屯', 643);
INSERT INTO `maoyan_city` VALUES (422, '开州区', 748);
INSERT INTO `maoyan_city` VALUES (423, '垦利', 880);
INSERT INTO `maoyan_city` VALUES (424, '宽城', 925);
INSERT INTO `maoyan_city` VALUES (425, '开阳', 1002);
INSERT INTO `maoyan_city` VALUES (426, '开化', 990);
INSERT INTO `maoyan_city` VALUES (427, '廊坊', 106);
INSERT INTO `maoyan_city` VALUES (428, '临汾', 137);
INSERT INTO `maoyan_city` VALUES (429, '吕梁', 138);
INSERT INTO `maoyan_city` VALUES (430, '辽阳', 157);
INSERT INTO `maoyan_city` VALUES (431, '辽源', 163);
INSERT INTO `maoyan_city` VALUES (432, '连云港', 179);
INSERT INTO `maoyan_city` VALUES (433, '六安', 203);
INSERT INTO `maoyan_city` VALUES (434, '丽水', 192);
INSERT INTO `maoyan_city` VALUES (435, '龙岩', 211);
INSERT INTO `maoyan_city` VALUES (436, '洛阳', 236);
INSERT INTO `maoyan_city` VALUES (437, '聊城', 232);
INSERT INTO `maoyan_city` VALUES (438, '临沂', 230);
INSERT INTO `maoyan_city` VALUES (439, '莱芜', 229);
INSERT INTO `maoyan_city` VALUES (440, '漯河', 242);
INSERT INTO `maoyan_city` VALUES (441, '娄底', 274);
INSERT INTO `maoyan_city` VALUES (442, '泸州', 304);
INSERT INTO `maoyan_city` VALUES (443, '乐山', 310);
INSERT INTO `maoyan_city` VALUES (444, '柳州', 290);
INSERT INTO `maoyan_city` VALUES (445, '来宾', 300);
INSERT INTO `maoyan_city` VALUES (446, '临沧', 336);
INSERT INTO `maoyan_city` VALUES (447, '拉萨', 345);
INSERT INTO `maoyan_city` VALUES (448, '六盘水', 322);
INSERT INTO `maoyan_city` VALUES (449, '凉山', 321);
INSERT INTO `maoyan_city` VALUES (450, '丽江', 334);
INSERT INTO `maoyan_city` VALUES (451, '临夏', 372);
INSERT INTO `maoyan_city` VALUES (452, '陇南', 371);
INSERT INTO `maoyan_city` VALUES (453, '林芝', 351);
INSERT INTO `maoyan_city` VALUES (454, '兰州', 361);
INSERT INTO `maoyan_city` VALUES (455, '兰溪', 476);
INSERT INTO `maoyan_city` VALUES (456, '临海', 461);
INSERT INTO `maoyan_city` VALUES (457, '溧阳', 450);
INSERT INTO `maoyan_city` VALUES (458, '耒阳', 509);
INSERT INTO `maoyan_city` VALUES (459, '龙口', 492);
INSERT INTO `maoyan_city` VALUES (460, '陆丰', 567);
INSERT INTO `maoyan_city` VALUES (461, '莱阳', 561);
INSERT INTO `maoyan_city` VALUES (462, '乐昌', 513);
INSERT INTO `maoyan_city` VALUES (463, '莱州', 529);
INSERT INTO `maoyan_city` VALUES (464, '临安', 542);
INSERT INTO `maoyan_city` VALUES (465, '临清', 537);
INSERT INTO `maoyan_city` VALUES (466, '乐陵', 611);
INSERT INTO `maoyan_city` VALUES (467, '龙海', 618);
INSERT INTO `maoyan_city` VALUES (468, '醴陵', 619);
INSERT INTO `maoyan_city` VALUES (469, '浏阳', 617);
INSERT INTO `maoyan_city` VALUES (470, '莱西', 620);
INSERT INTO `maoyan_city` VALUES (471, '廉江', 628);
INSERT INTO `maoyan_city` VALUES (472, '阆中', 634);
INSERT INTO `maoyan_city` VALUES (473, '乐平', 632);
INSERT INTO `maoyan_city` VALUES (474, '灵宝', 596);
INSERT INTO `maoyan_city` VALUES (475, '冷水江', 606);
INSERT INTO `maoyan_city` VALUES (476, '连州', 683);
INSERT INTO `maoyan_city` VALUES (477, '灵山', 675);
INSERT INTO `maoyan_city` VALUES (478, '滦南', 674);
INSERT INTO `maoyan_city` VALUES (479, '临江', 690);
INSERT INTO `maoyan_city` VALUES (480, '陵水', 688);
INSERT INTO `maoyan_city` VALUES (481, '鹿泉', 652);
INSERT INTO `maoyan_city` VALUES (482, '利川', 655);
INSERT INTO `maoyan_city` VALUES (483, '凌海', 670);
INSERT INTO `maoyan_city` VALUES (484, '老河口', 659);
INSERT INTO `maoyan_city` VALUES (485, '滦县', 745);
INSERT INTO `maoyan_city` VALUES (486, '乐亭', 744);
INSERT INTO `maoyan_city` VALUES (487, '临朐', 739);
INSERT INTO `maoyan_city` VALUES (488, '栾城', 766);
INSERT INTO `maoyan_city` VALUES (489, '连江', 724);
INSERT INTO `maoyan_city` VALUES (490, '隆昌', 823);
INSERT INTO `maoyan_city` VALUES (491, '林州', 815);
INSERT INTO `maoyan_city` VALUES (492, '临潼', 808);
INSERT INTO `maoyan_city` VALUES (493, '蓝田', 809);
INSERT INTO `maoyan_city` VALUES (494, '临漳', 791);
INSERT INTO `maoyan_city` VALUES (495, '灵石', 789);
INSERT INTO `maoyan_city` VALUES (496, '鲁山', 786);
INSERT INTO `maoyan_city` VALUES (497, '临猗', 889);
INSERT INTO `maoyan_city` VALUES (498, '柳河', 868);
INSERT INTO `maoyan_city` VALUES (499, '鹿邑', 839);
INSERT INTO `maoyan_city` VALUES (500, '临沭', 951);
INSERT INTO `maoyan_city` VALUES (501, '兰陵', 939);
INSERT INTO `maoyan_city` VALUES (502, '龙游', 938);
INSERT INTO `maoyan_city` VALUES (503, '栾川', 935);
INSERT INTO `maoyan_city` VALUES (504, '雷州', 934);
INSERT INTO `maoyan_city` VALUES (505, '隆尧', 930);
INSERT INTO `maoyan_city` VALUES (506, '陵川', 919);
INSERT INTO `maoyan_city` VALUES (507, '龙泉', 912);
INSERT INTO `maoyan_city` VALUES (508, '临邑', 905);
INSERT INTO `maoyan_city` VALUES (509, '利津', 902);
INSERT INTO `maoyan_city` VALUES (510, '梁山', 896);
INSERT INTO `maoyan_city` VALUES (511, '澧县', 1010);
INSERT INTO `maoyan_city` VALUES (512, '辽中', 1011);
INSERT INTO `maoyan_city` VALUES (513, '涟水', 976);
INSERT INTO `maoyan_city` VALUES (514, '临澧', 1119);
INSERT INTO `maoyan_city` VALUES (515, '兰考县', 1110);
INSERT INTO `maoyan_city` VALUES (516, '灵丘县', 1133);
INSERT INTO `maoyan_city` VALUES (517, '利辛', 1121);
INSERT INTO `maoyan_city` VALUES (518, '洛川县', 1147);
INSERT INTO `maoyan_city` VALUES (519, '泸县', 1144);
INSERT INTO `maoyan_city` VALUES (520, '溧水区', 1143);
INSERT INTO `maoyan_city` VALUES (521, '禄丰县', 1138);
INSERT INTO `maoyan_city` VALUES (522, '罗平县', 1034);
INSERT INTO `maoyan_city` VALUES (523, '涟源市', 1037);
INSERT INTO `maoyan_city` VALUES (524, '庐江县', 1040);
INSERT INTO `maoyan_city` VALUES (525, '隆回', 1064);
INSERT INTO `maoyan_city` VALUES (526, '临颍', 1056);
INSERT INTO `maoyan_city` VALUES (527, '蓝山', 1060);
INSERT INTO `maoyan_city` VALUES (528, '隆化县', 1083);
INSERT INTO `maoyan_city` VALUES (529, '洛宁', 1087);
INSERT INTO `maoyan_city` VALUES (530, '芦溪', 1073);
INSERT INTO `maoyan_city` VALUES (531, '卢氏县', 1079);
INSERT INTO `maoyan_city` VALUES (532, '陆川县', 1225);
INSERT INTO `maoyan_city` VALUES (533, '临泉县', 1247);
INSERT INTO `maoyan_city` VALUES (534, '罗定市', 1163);
INSERT INTO `maoyan_city` VALUES (535, '乐东', 1171);
INSERT INTO `maoyan_city` VALUES (536, '梁平', 1178);
INSERT INTO `maoyan_city` VALUES (537, '临高县', 1183);
INSERT INTO `maoyan_city` VALUES (538, '罗源县', 1184);
INSERT INTO `maoyan_city` VALUES (539, '牡丹江', 175);
INSERT INTO `maoyan_city` VALUES (540, '马鞍山', 194);
INSERT INTO `maoyan_city` VALUES (541, '茂名', 279);
INSERT INTO `maoyan_city` VALUES (542, '梅州', 282);
INSERT INTO `maoyan_city` VALUES (543, '绵阳', 306);
INSERT INTO `maoyan_city` VALUES (544, '眉山', 312);
INSERT INTO `maoyan_city` VALUES (545, '密山', 566);
INSERT INTO `maoyan_city` VALUES (546, '漠河', 563);
INSERT INTO `maoyan_city` VALUES (547, '满洲里', 572);
INSERT INTO `maoyan_city` VALUES (548, '明光', 610);
INSERT INTO `maoyan_city` VALUES (549, '梅河口', 584);
INSERT INTO `maoyan_city` VALUES (550, '孟州', 694);
INSERT INTO `maoyan_city` VALUES (551, '麻城', 668);
INSERT INTO `maoyan_city` VALUES (552, '渑池', 872);
INSERT INTO `maoyan_city` VALUES (553, '眉县', 848);
INSERT INTO `maoyan_city` VALUES (554, '民权', 860);
INSERT INTO `maoyan_city` VALUES (555, '孟津', 838);
INSERT INTO `maoyan_city` VALUES (556, '牟平', 846);
INSERT INTO `maoyan_city` VALUES (557, '蒙阴', 944);
INSERT INTO `maoyan_city` VALUES (558, '绵竹', 906);
INSERT INTO `maoyan_city` VALUES (559, '蒙自市', 1116);
INSERT INTO `maoyan_city` VALUES (560, '蒙城', 1122);
INSERT INTO `maoyan_city` VALUES (561, '明水县', 1222);
INSERT INTO `maoyan_city` VALUES (562, '米易县', 1216);
INSERT INTO `maoyan_city` VALUES (563, '闽侯县', 1219);
INSERT INTO `maoyan_city` VALUES (564, '勐腊县', 1210);
INSERT INTO `maoyan_city` VALUES (565, '宁波', 51);
INSERT INTO `maoyan_city` VALUES (566, '南京', 55);
INSERT INTO `maoyan_city` VALUES (567, '南昌', 83);
INSERT INTO `maoyan_city` VALUES (568, '南通', 82);
INSERT INTO `maoyan_city` VALUES (569, '南宁', 99);
INSERT INTO `maoyan_city` VALUES (570, '宁德', 212);
INSERT INTO `maoyan_city` VALUES (571, '南平', 210);
INSERT INTO `maoyan_city` VALUES (572, '南阳', 244);
INSERT INTO `maoyan_city` VALUES (573, '内江', 309);
INSERT INTO `maoyan_city` VALUES (574, '南充', 311);
INSERT INTO `maoyan_city` VALUES (575, '怒江', 343);
INSERT INTO `maoyan_city` VALUES (576, '南沙', 547);
INSERT INTO `maoyan_city` VALUES (577, '宁海', 512);
INSERT INTO `maoyan_city` VALUES (578, '宁乡', 520);
INSERT INTO `maoyan_city` VALUES (579, '南安', 621);
INSERT INTO `maoyan_city` VALUES (580, '南雄', 687);
INSERT INTO `maoyan_city` VALUES (581, '讷河', 682);
INSERT INTO `maoyan_city` VALUES (582, '南乐', 741);
INSERT INTO `maoyan_city` VALUES (583, '宁津', 820);
INSERT INTO `maoyan_city` VALUES (584, '宁晋', 813);
INSERT INTO `maoyan_city` VALUES (585, '南陵', 775);
INSERT INTO `maoyan_city` VALUES (586, '宁国', 781);
INSERT INTO `maoyan_city` VALUES (587, '宁阳', 779);
INSERT INTO `maoyan_city` VALUES (588, '内丘', 931);
INSERT INTO `maoyan_city` VALUES (589, '南和', 1013);
INSERT INTO `maoyan_city` VALUES (590, '内黄', 979);
INSERT INTO `maoyan_city` VALUES (591, '宁陵', 1112);
INSERT INTO `maoyan_city` VALUES (592, '南部县', 1053);
INSERT INTO `maoyan_city` VALUES (593, '南皮县', 1075);
INSERT INTO `maoyan_city` VALUES (594, '宁远县', 1224);
INSERT INTO `maoyan_city` VALUES (595, '嫩江县', 1166);
INSERT INTO `maoyan_city` VALUES (596, '盘锦', 158);
INSERT INTO `maoyan_city` VALUES (597, '莆田', 207);
INSERT INTO `maoyan_city` VALUES (598, '萍乡', 214);
INSERT INTO `maoyan_city` VALUES (599, '平顶山', 237);
INSERT INTO `maoyan_city` VALUES (600, '濮阳', 240);
INSERT INTO `maoyan_city` VALUES (601, '攀枝花', 303);
INSERT INTO `maoyan_city` VALUES (602, '普洱', 335);
INSERT INTO `maoyan_city` VALUES (603, '平凉', 367);
INSERT INTO `maoyan_city` VALUES (604, '邳州', 493);
INSERT INTO `maoyan_city` VALUES (605, '普宁', 546);
INSERT INTO `maoyan_city` VALUES (606, '平湖', 524);
INSERT INTO `maoyan_city` VALUES (607, '平度', 582);
INSERT INTO `maoyan_city` VALUES (608, '彭州', 585);
INSERT INTO `maoyan_city` VALUES (609, '蓬莱', 587);
INSERT INTO `maoyan_city` VALUES (610, '鄱阳', 701);
INSERT INTO `maoyan_city` VALUES (611, '磐石', 761);
INSERT INTO `maoyan_city` VALUES (612, '浦江', 730);
INSERT INTO `maoyan_city` VALUES (613, '平潭', 805);
INSERT INTO `maoyan_city` VALUES (614, '平原', 777);
INSERT INTO `maoyan_city` VALUES (615, '平山', 893);
INSERT INTO `maoyan_city` VALUES (616, '濮阳县', 849);
INSERT INTO `maoyan_city` VALUES (617, '沛县', 833);
INSERT INTO `maoyan_city` VALUES (618, '蒲城', 837);
INSERT INTO `maoyan_city` VALUES (619, '盘县', 842);
INSERT INTO `maoyan_city` VALUES (620, '平江', 847);
INSERT INTO `maoyan_city` VALUES (621, '平邑', 950);
INSERT INTO `maoyan_city` VALUES (622, '平遥', 987);
INSERT INTO `maoyan_city` VALUES (623, '平果', 991);
INSERT INTO `maoyan_city` VALUES (624, '平阳', 972);
INSERT INTO `maoyan_city` VALUES (625, '平舆', 960);
INSERT INTO `maoyan_city` VALUES (626, '平罗县', 1106);
INSERT INTO `maoyan_city` VALUES (627, '平南县', 1226);
INSERT INTO `maoyan_city` VALUES (628, '彭水苗族土家族自治县', 1232);
INSERT INTO `maoyan_city` VALUES (629, '平阴县', 1156);
INSERT INTO `maoyan_city` VALUES (630, '青岛', 60);
INSERT INTO `maoyan_city` VALUES (631, '泉州', 110);
INSERT INTO `maoyan_city` VALUES (632, '齐齐哈尔', 109);
INSERT INTO `maoyan_city` VALUES (633, '秦皇岛', 122);
INSERT INTO `maoyan_city` VALUES (634, '七台河', 174);
INSERT INTO `maoyan_city` VALUES (635, '衢州', 189);
INSERT INTO `maoyan_city` VALUES (636, '清远', 286);
INSERT INTO `maoyan_city` VALUES (637, '钦州', 294);
INSERT INTO `maoyan_city` VALUES (638, '黔西南', 326);
INSERT INTO `maoyan_city` VALUES (639, '曲靖', 330);
INSERT INTO `maoyan_city` VALUES (640, '黔东南', 328);
INSERT INTO `maoyan_city` VALUES (641, '黔南', 329);
INSERT INTO `maoyan_city` VALUES (642, '庆阳', 369);
INSERT INTO `maoyan_city` VALUES (643, '迁安', 430);
INSERT INTO `maoyan_city` VALUES (644, '琼海', 418);
INSERT INTO `maoyan_city` VALUES (645, '曲阜', 507);
INSERT INTO `maoyan_city` VALUES (646, '启东', 500);
INSERT INTO `maoyan_city` VALUES (647, '青州', 496);
INSERT INTO `maoyan_city` VALUES (648, '潜江', 550);
INSERT INTO `maoyan_city` VALUES (649, '沁阳', 644);
INSERT INTO `maoyan_city` VALUES (650, '邛崃', 647);
INSERT INTO `maoyan_city` VALUES (651, '清丰', 740);
INSERT INTO `maoyan_city` VALUES (652, '齐河', 727);
INSERT INTO `maoyan_city` VALUES (653, '淇县', 864);
INSERT INTO `maoyan_city` VALUES (654, '全椒', 865);
INSERT INTO `maoyan_city` VALUES (655, '清河', 929);
INSERT INTO `maoyan_city` VALUES (656, '青田', 922);
INSERT INTO `maoyan_city` VALUES (657, '栖霞', 914);
INSERT INTO `maoyan_city` VALUES (658, '青县', 1020);
INSERT INTO `maoyan_city` VALUES (659, '潜山', 1004);
INSERT INTO `maoyan_city` VALUES (660, '庆云', 998);
INSERT INTO `maoyan_city` VALUES (661, '祁东县', 1089);
INSERT INTO `maoyan_city` VALUES (662, '杞县', 1115);
INSERT INTO `maoyan_city` VALUES (663, '庆安县', 1107);
INSERT INTO `maoyan_city` VALUES (664, '青冈县', 1131);
INSERT INTO `maoyan_city` VALUES (665, '岐山县', 1139);
INSERT INTO `maoyan_city` VALUES (666, '青阳县', 1220);
INSERT INTO `maoyan_city` VALUES (667, '日照', 228);
INSERT INTO `maoyan_city` VALUES (668, '日喀则', 348);
INSERT INTO `maoyan_city` VALUES (669, '仁怀', 475);
INSERT INTO `maoyan_city` VALUES (670, '瑞安', 469);
INSERT INTO `maoyan_city` VALUES (671, '如皋', 501);
INSERT INTO `maoyan_city` VALUES (672, '荣成', 497);
INSERT INTO `maoyan_city` VALUES (673, '乳山', 499);
INSERT INTO `maoyan_city` VALUES (674, '汝州', 616);
INSERT INTO `maoyan_city` VALUES (675, '瑞金', 639);
INSERT INTO `maoyan_city` VALUES (676, '瑞昌', 657);
INSERT INTO `maoyan_city` VALUES (677, '仁寿', 749);
INSERT INTO `maoyan_city` VALUES (678, '任丘', 917);
INSERT INTO `maoyan_city` VALUES (679, '如东', 988);
INSERT INTO `maoyan_city` VALUES (680, '汝阳', 966);
INSERT INTO `maoyan_city` VALUES (681, '容县', 1101);
INSERT INTO `maoyan_city` VALUES (682, '汝城县', 1095);
INSERT INTO `maoyan_city` VALUES (683, '荣昌区', 1114);
INSERT INTO `maoyan_city` VALUES (684, '上海', 10);
INSERT INTO `maoyan_city` VALUES (685, '深圳', 30);
INSERT INTO `maoyan_city` VALUES (686, '沈阳', 66);
INSERT INTO `maoyan_city` VALUES (687, '石家庄', 76);
INSERT INTO `maoyan_city` VALUES (688, '苏州', 80);
INSERT INTO `maoyan_city` VALUES (689, '三亚', 111);
INSERT INTO `maoyan_city` VALUES (690, '汕头', 117);
INSERT INTO `maoyan_city` VALUES (691, '朔州', 133);
INSERT INTO `maoyan_city` VALUES (692, '双鸭山', 171);
INSERT INTO `maoyan_city` VALUES (693, '四平', 162);
INSERT INTO `maoyan_city` VALUES (694, '松原', 166);
INSERT INTO `maoyan_city` VALUES (695, '绍兴', 187);
INSERT INTO `maoyan_city` VALUES (696, '宿迁', 184);
INSERT INTO `maoyan_city` VALUES (697, '绥化', 177);
INSERT INTO `maoyan_city` VALUES (698, '宿州', 201);
INSERT INTO `maoyan_city` VALUES (699, '上饶', 221);
INSERT INTO `maoyan_city` VALUES (700, '三明', 208);
INSERT INTO `maoyan_city` VALUES (701, '十堰', 251);
INSERT INTO `maoyan_city` VALUES (702, '商丘', 245);
INSERT INTO `maoyan_city` VALUES (703, '三门峡', 243);
INSERT INTO `maoyan_city` VALUES (704, '韶关', 276);
INSERT INTO `maoyan_city` VALUES (705, '汕尾', 283);
INSERT INTO `maoyan_city` VALUES (706, '随州', 260);
INSERT INTO `maoyan_city` VALUES (707, '邵阳', 266);
INSERT INTO `maoyan_city` VALUES (708, '遂宁', 308);
INSERT INTO `maoyan_city` VALUES (709, '石嘴山', 383);
INSERT INTO `maoyan_city` VALUES (710, '商洛', 360);
INSERT INTO `maoyan_city` VALUES (711, '石河子', 408);
INSERT INTO `maoyan_city` VALUES (712, '顺德', 406);
INSERT INTO `maoyan_city` VALUES (713, '石狮', 440);
INSERT INTO `maoyan_city` VALUES (714, '上虞', 456);
INSERT INTO `maoyan_city` VALUES (715, '寿光', 495);
INSERT INTO `maoyan_city` VALUES (716, '神农架', 487);
INSERT INTO `maoyan_city` VALUES (717, '韶山', 569);
INSERT INTO `maoyan_city` VALUES (718, '射阳', 532);
INSERT INTO `maoyan_city` VALUES (719, '沭阳', 531);
INSERT INTO `maoyan_city` VALUES (720, '嵊州', 530);
INSERT INTO `maoyan_city` VALUES (721, '三河', 538);
INSERT INTO `maoyan_city` VALUES (722, '沙河', 613);
INSERT INTO `maoyan_city` VALUES (723, '四会', 633);
INSERT INTO `maoyan_city` VALUES (724, '松滋', 648);
INSERT INTO `maoyan_city` VALUES (725, '舒兰', 669);
INSERT INTO `maoyan_city` VALUES (726, '邵东', 736);
INSERT INTO `maoyan_city` VALUES (727, '沙湾', 762);
INSERT INTO `maoyan_city` VALUES (728, '泗阳', 760);
INSERT INTO `maoyan_city` VALUES (729, '睢县', 755);
INSERT INTO `maoyan_city` VALUES (730, '石泉', 819);
INSERT INTO `maoyan_city` VALUES (731, '单县', 830);
INSERT INTO `maoyan_city` VALUES (732, '泗洪', 824);
INSERT INTO `maoyan_city` VALUES (733, '上高', 804);
INSERT INTO `maoyan_city` VALUES (734, '绥中', 797);
INSERT INTO `maoyan_city` VALUES (735, '神木', 796);
INSERT INTO `maoyan_city` VALUES (736, '涉县', 768);
INSERT INTO `maoyan_city` VALUES (737, '上蔡', 886);
INSERT INTO `maoyan_city` VALUES (738, '遂昌', 895);
INSERT INTO `maoyan_city` VALUES (739, '睢宁', 875);
INSERT INTO `maoyan_city` VALUES (740, '沈丘', 840);
INSERT INTO `maoyan_city` VALUES (741, '三门', 845);
INSERT INTO `maoyan_city` VALUES (742, '什邡', 953);
INSERT INTO `maoyan_city` VALUES (743, '上杭', 955);
INSERT INTO `maoyan_city` VALUES (744, '石岛', 907);
INSERT INTO `maoyan_city` VALUES (745, '泗水', 1017);
INSERT INTO `maoyan_city` VALUES (746, '社旗', 1022);
INSERT INTO `maoyan_city` VALUES (747, '商河', 1015);
INSERT INTO `maoyan_city` VALUES (748, '射洪', 992);
INSERT INTO `maoyan_city` VALUES (749, '舒城', 982);
INSERT INTO `maoyan_city` VALUES (750, '嵩县', 965);
INSERT INTO `maoyan_city` VALUES (751, '石门', 1118);
INSERT INTO `maoyan_city` VALUES (752, '桑植', 1113);
INSERT INTO `maoyan_city` VALUES (753, '商城县', 1108);
INSERT INTO `maoyan_city` VALUES (754, '鄯善县', 1120);
INSERT INTO `maoyan_city` VALUES (755, '深州市', 1039);
INSERT INTO `maoyan_city` VALUES (756, '泗县', 1024);
INSERT INTO `maoyan_city` VALUES (757, '商水县', 1055);
INSERT INTO `maoyan_city` VALUES (758, '上林县', 1045);
INSERT INTO `maoyan_city` VALUES (759, '遂川', 1067);
INSERT INTO `maoyan_city` VALUES (760, '上栗', 1071);
INSERT INTO `maoyan_city` VALUES (761, '双峰', 1062);
INSERT INTO `maoyan_city` VALUES (762, '肃宁县', 1081);
INSERT INTO `maoyan_city` VALUES (763, '莎车县', 1077);
INSERT INTO `maoyan_city` VALUES (764, '山丹县', 1228);
INSERT INTO `maoyan_city` VALUES (765, '绥宁县', 1240);
INSERT INTO `maoyan_city` VALUES (766, '遂平', 1250);
INSERT INTO `maoyan_city` VALUES (767, '双城', 1249);
INSERT INTO `maoyan_city` VALUES (768, '绥德县', 1155);
INSERT INTO `maoyan_city` VALUES (769, '沙县', 1158);
INSERT INTO `maoyan_city` VALUES (770, '深泽县', 1176);
INSERT INTO `maoyan_city` VALUES (771, '石柱', 1180);
INSERT INTO `maoyan_city` VALUES (772, '邵武', 1189);
INSERT INTO `maoyan_city` VALUES (773, '寿县', 1192);
INSERT INTO `maoyan_city` VALUES (774, '三台县', 1211);
INSERT INTO `maoyan_city` VALUES (775, '天津', 40);
INSERT INTO `maoyan_city` VALUES (776, '太原', 101);
INSERT INTO `maoyan_city` VALUES (777, '唐山', 121);
INSERT INTO `maoyan_city` VALUES (778, '通辽', 143);
INSERT INTO `maoyan_city` VALUES (779, '铁岭', 159);
INSERT INTO `maoyan_city` VALUES (780, '通化', 164);
INSERT INTO `maoyan_city` VALUES (781, '台州', 191);
INSERT INTO `maoyan_city` VALUES (782, '泰州', 183);
INSERT INTO `maoyan_city` VALUES (783, '铜陵', 196);
INSERT INTO `maoyan_city` VALUES (784, '泰安', 226);
INSERT INTO `maoyan_city` VALUES (785, '铜仁', 325);
INSERT INTO `maoyan_city` VALUES (786, '铜川', 352);
INSERT INTO `maoyan_city` VALUES (787, '天水', 364);
INSERT INTO `maoyan_city` VALUES (788, '塔城', 399);
INSERT INTO `maoyan_city` VALUES (789, '吐鲁番', 389);
INSERT INTO `maoyan_city` VALUES (790, '太仓', 432);
INSERT INTO `maoyan_city` VALUES (791, '桐乡', 425);
INSERT INTO `maoyan_city` VALUES (792, '台山', 503);
INSERT INTO `maoyan_city` VALUES (793, '腾冲', 482);
INSERT INTO `maoyan_city` VALUES (794, '滕州', 549);
INSERT INTO `maoyan_city` VALUES (795, '桐庐', 554);
INSERT INTO `maoyan_city` VALUES (796, '泰兴', 518);
INSERT INTO `maoyan_city` VALUES (797, '天长', 626);
INSERT INTO `maoyan_city` VALUES (798, '天门', 578);
INSERT INTO `maoyan_city` VALUES (799, '桐城', 673);
INSERT INTO `maoyan_city` VALUES (800, '洮南', 666);
INSERT INTO `maoyan_city` VALUES (801, '台前', 743);
INSERT INTO `maoyan_city` VALUES (802, '太和', 759);
INSERT INTO `maoyan_city` VALUES (803, '汤阴', 817);
INSERT INTO `maoyan_city` VALUES (804, '藤县', 812);
INSERT INTO `maoyan_city` VALUES (805, '太谷', 790);
INSERT INTO `maoyan_city` VALUES (806, '天台', 782);
INSERT INTO `maoyan_city` VALUES (807, '土默特右旗', 879);
INSERT INTO `maoyan_city` VALUES (808, '铜梁', 947);
INSERT INTO `maoyan_city` VALUES (809, '郯城', 942);
INSERT INTO `maoyan_city` VALUES (810, '桃源', 1009);
INSERT INTO `maoyan_city` VALUES (811, '同安', 962);
INSERT INTO `maoyan_city` VALUES (812, '通许县', 1111);
INSERT INTO `maoyan_city` VALUES (813, '通榆县', 1135);
INSERT INTO `maoyan_city` VALUES (814, '通海县', 1132);
INSERT INTO `maoyan_city` VALUES (815, '唐河', 1136);
INSERT INTO `maoyan_city` VALUES (816, '泰和县', 1030);
INSERT INTO `maoyan_city` VALUES (817, '太康县', 1054);
INSERT INTO `maoyan_city` VALUES (818, '铜鼓', 1041);
INSERT INTO `maoyan_city` VALUES (819, '田东县', 1044);
INSERT INTO `maoyan_city` VALUES (820, '通江县', 1215);
INSERT INTO `maoyan_city` VALUES (821, '无锡', 52);
INSERT INTO `maoyan_city` VALUES (822, '武汉', 57);
INSERT INTO `maoyan_city` VALUES (823, '芜湖', 102);
INSERT INTO `maoyan_city` VALUES (824, '温州', 112);
INSERT INTO `maoyan_city` VALUES (825, '乌海', 141);
INSERT INTO `maoyan_city` VALUES (826, '乌兰察布', 147);
INSERT INTO `maoyan_city` VALUES (827, '威海', 227);
INSERT INTO `maoyan_city` VALUES (828, '潍坊', 224);
INSERT INTO `maoyan_city` VALUES (829, '梧州', 291);
INSERT INTO `maoyan_city` VALUES (830, '文山', 339);
INSERT INTO `maoyan_city` VALUES (831, '渭南', 355);
INSERT INTO `maoyan_city` VALUES (832, '武威', 365);
INSERT INTO `maoyan_city` VALUES (833, '乌鲁木齐', 387);
INSERT INTO `maoyan_city` VALUES (834, '吴忠', 384);
INSERT INTO `maoyan_city` VALUES (835, '武夷山', 443);
INSERT INTO `maoyan_city` VALUES (836, '吴江', 433);
INSERT INTO `maoyan_city` VALUES (837, '万州', 428);
INSERT INTO `maoyan_city` VALUES (838, '婺源', 479);
INSERT INTO `maoyan_city` VALUES (839, '温岭', 457);
INSERT INTO `maoyan_city` VALUES (840, '武安', 449);
INSERT INTO `maoyan_city` VALUES (841, '文登', 498);
INSERT INTO `maoyan_city` VALUES (842, '武当山', 486);
INSERT INTO `maoyan_city` VALUES (843, '乌镇', 551);
INSERT INTO `maoyan_city` VALUES (844, '吴川', 592);
INSERT INTO `maoyan_city` VALUES (845, '文昌', 607);
INSERT INTO `maoyan_city` VALUES (846, '舞钢', 684);
INSERT INTO `maoyan_city` VALUES (847, '万宁', 680);
INSERT INTO `maoyan_city` VALUES (848, '温县', 696);
INSERT INTO `maoyan_city` VALUES (849, '武陟', 697);
INSERT INTO `maoyan_city` VALUES (850, '武穴', 667);
INSERT INTO `maoyan_city` VALUES (851, '乌苏', 747);
INSERT INTO `maoyan_city` VALUES (852, '卫辉', 826);
INSERT INTO `maoyan_city` VALUES (853, '芜湖县', 773);
INSERT INTO `maoyan_city` VALUES (854, '无为', 769);
INSERT INTO `maoyan_city` VALUES (855, '乌拉特前旗', 850);
INSERT INTO `maoyan_city` VALUES (856, '围场', 926);
INSERT INTO `maoyan_city` VALUES (857, '武城', 904);
INSERT INTO `maoyan_city` VALUES (858, '汶上', 898);
INSERT INTO `maoyan_city` VALUES (859, '微山', 897);
INSERT INTO `maoyan_city` VALUES (860, '无极', 1019);
INSERT INTO `maoyan_city` VALUES (861, '万荣', 1023);
INSERT INTO `maoyan_city` VALUES (862, '舞阳', 1014);
INSERT INTO `maoyan_city` VALUES (863, '威宁', 1006);
INSERT INTO `maoyan_city` VALUES (864, '武鸣', 995);
INSERT INTO `maoyan_city` VALUES (865, '武义', 973);
INSERT INTO `maoyan_city` VALUES (866, '瓦房店', 967);
INSERT INTO `maoyan_city` VALUES (867, '尉氏县', 1109);
INSERT INTO `maoyan_city` VALUES (868, '万载', 1025);
INSERT INTO `maoyan_city` VALUES (869, '武平县', 1049);
INSERT INTO `maoyan_city` VALUES (870, '威县', 1046);
INSERT INTO `maoyan_city` VALUES (871, '武冈市', 1223);
INSERT INTO `maoyan_city` VALUES (872, '望奎县', 1217);
INSERT INTO `maoyan_city` VALUES (873, '五常市', 1187);
INSERT INTO `maoyan_city` VALUES (874, '旺苍县', 1207);
INSERT INTO `maoyan_city` VALUES (875, '西安', 42);
INSERT INTO `maoyan_city` VALUES (876, '厦门', 62);
INSERT INTO `maoyan_city` VALUES (877, '新乡', 103);
INSERT INTO `maoyan_city` VALUES (878, '徐州', 119);
INSERT INTO `maoyan_city` VALUES (879, '邢台', 124);
INSERT INTO `maoyan_city` VALUES (880, '忻州', 136);
INSERT INTO `maoyan_city` VALUES (881, '兴安盟', 148);
INSERT INTO `maoyan_city` VALUES (882, '锡林郭勒', 149);
INSERT INTO `maoyan_city` VALUES (883, '宣城', 206);
INSERT INTO `maoyan_city` VALUES (884, '新余', 215);
INSERT INTO `maoyan_city` VALUES (885, '襄阳', 253);
INSERT INTO `maoyan_city` VALUES (886, '信阳', 246);
INSERT INTO `maoyan_city` VALUES (887, '许昌', 241);
INSERT INTO `maoyan_city` VALUES (888, '湘西', 275);
INSERT INTO `maoyan_city` VALUES (889, '咸宁', 259);
INSERT INTO `maoyan_city` VALUES (890, '孝感', 256);
INSERT INTO `maoyan_city` VALUES (891, '湘潭', 264);
INSERT INTO `maoyan_city` VALUES (892, '西双版纳', 340);
INSERT INTO `maoyan_city` VALUES (893, '西宁', 374);
INSERT INTO `maoyan_city` VALUES (894, '咸阳', 354);
INSERT INTO `maoyan_city` VALUES (895, '仙桃', 412);
INSERT INTO `maoyan_city` VALUES (896, '香格里拉', 484);
INSERT INTO `maoyan_city` VALUES (897, '新沂', 548);
INSERT INTO `maoyan_city` VALUES (898, '新密', 556);
INSERT INTO `maoyan_city` VALUES (899, '荥阳', 557);
INSERT INTO `maoyan_city` VALUES (900, '新郑', 555);
INSERT INTO `maoyan_city` VALUES (901, '兴宁', 562);
INSERT INTO `maoyan_city` VALUES (902, '西塘', 560);
INSERT INTO `maoyan_city` VALUES (903, '新民', 574);
INSERT INTO `maoyan_city` VALUES (904, '兴化', 517);
INSERT INTO `maoyan_city` VALUES (905, '湘阴', 525);
INSERT INTO `maoyan_city` VALUES (906, '新泰', 523);
INSERT INTO `maoyan_city` VALUES (907, '响水', 534);
INSERT INTO `maoyan_city` VALUES (908, '辛集', 543);
INSERT INTO `maoyan_city` VALUES (909, '湘乡', 614);
INSERT INTO `maoyan_city` VALUES (910, '项城', 580);
INSERT INTO `maoyan_city` VALUES (911, '孝义', 604);
INSERT INTO `maoyan_city` VALUES (912, '修武', 695);
INSERT INTO `maoyan_city` VALUES (913, '象山', 692);
INSERT INTO `maoyan_city` VALUES (914, '兴城', 641);
INSERT INTO `maoyan_city` VALUES (915, '兴平', 661);
INSERT INTO `maoyan_city` VALUES (916, '仙居', 764);
INSERT INTO `maoyan_city` VALUES (917, '夏津', 728);
INSERT INTO `maoyan_city` VALUES (918, '信宜', 729);
INSERT INTO `maoyan_city` VALUES (919, '新化', 734);
INSERT INTO `maoyan_city` VALUES (920, '新安', 818);
INSERT INTO `maoyan_city` VALUES (921, '新乡县', 828);
INSERT INTO `maoyan_city` VALUES (922, '宣威', 802);
INSERT INTO `maoyan_city` VALUES (923, '霞浦', 810);
INSERT INTO `maoyan_city` VALUES (924, '襄垣', 776);
INSERT INTO `maoyan_city` VALUES (925, '西平', 885);
INSERT INTO `maoyan_city` VALUES (926, '新乐', 892);
INSERT INTO `maoyan_city` VALUES (927, '西乡', 870);
INSERT INTO `maoyan_city` VALUES (928, '徐闻', 853);
INSERT INTO `maoyan_city` VALUES (929, '夏邑', 857);
INSERT INTO `maoyan_city` VALUES (930, '浚县', 863);
INSERT INTO `maoyan_city` VALUES (931, '盱眙', 843);
INSERT INTO `maoyan_city` VALUES (932, '香河', 957);
INSERT INTO `maoyan_city` VALUES (933, '信丰', 959);
INSERT INTO `maoyan_city` VALUES (934, '浠水', 949);
INSERT INTO `maoyan_city` VALUES (935, '西华', 936);
INSERT INTO `maoyan_city` VALUES (936, '薛城', 920);
INSERT INTO `maoyan_city` VALUES (937, '新昌', 903);
INSERT INTO `maoyan_city` VALUES (938, '淅川', 1021);
INSERT INTO `maoyan_city` VALUES (939, '溆浦', 996);
INSERT INTO `maoyan_city` VALUES (940, '新蔡', 961);
INSERT INTO `maoyan_city` VALUES (941, '秀山土家族苗族自治县', 1129);
INSERT INTO `maoyan_city` VALUES (942, '新洲区', 1123);
INSERT INTO `maoyan_city` VALUES (943, '仙游县', 1149);
INSERT INTO `maoyan_city` VALUES (944, '新野', 1137);
INSERT INTO `maoyan_city` VALUES (945, '兴国县', 1033);
INSERT INTO `maoyan_city` VALUES (946, '新田', 1036);
INSERT INTO `maoyan_city` VALUES (947, '新干', 1026);
INSERT INTO `maoyan_city` VALUES (948, '祥云县', 1051);
INSERT INTO `maoyan_city` VALUES (949, '寻乌县', 1050);
INSERT INTO `maoyan_city` VALUES (950, '襄城县', 1057);
INSERT INTO `maoyan_city` VALUES (951, '新宁', 1063);
INSERT INTO `maoyan_city` VALUES (952, '献县', 1082);
INSERT INTO `maoyan_city` VALUES (953, '孝昌县', 1244);
INSERT INTO `maoyan_city` VALUES (954, '息县', 1248);
INSERT INTO `maoyan_city` VALUES (955, '新津县', 1167);
INSERT INTO `maoyan_city` VALUES (956, '旬阳县', 1213);
INSERT INTO `maoyan_city` VALUES (957, '烟台', 104);
INSERT INTO `maoyan_city` VALUES (958, '扬州', 120);
INSERT INTO `maoyan_city` VALUES (959, '阳泉', 130);
INSERT INTO `maoyan_city` VALUES (960, '运城', 135);
INSERT INTO `maoyan_city` VALUES (961, '营口', 155);
INSERT INTO `maoyan_city` VALUES (962, '延边', 168);
INSERT INTO `maoyan_city` VALUES (963, '伊春', 172);
INSERT INTO `maoyan_city` VALUES (964, '盐城', 181);
INSERT INTO `maoyan_city` VALUES (965, '鹰潭', 216);
INSERT INTO `maoyan_city` VALUES (966, '宜春', 219);
INSERT INTO `maoyan_city` VALUES (967, '宜昌', 252);
INSERT INTO `maoyan_city` VALUES (968, '永州', 272);
INSERT INTO `maoyan_city` VALUES (969, '阳江', 285);
INSERT INTO `maoyan_city` VALUES (970, '岳阳', 267);
INSERT INTO `maoyan_city` VALUES (971, '益阳', 270);
INSERT INTO `maoyan_city` VALUES (972, '宜宾', 313);
INSERT INTO `maoyan_city` VALUES (973, '雅安', 316);
INSERT INTO `maoyan_city` VALUES (974, '云浮', 289);
INSERT INTO `maoyan_city` VALUES (975, '玉林', 296);
INSERT INTO `maoyan_city` VALUES (976, '玉溪', 331);
INSERT INTO `maoyan_city` VALUES (977, '银川', 382);
INSERT INTO `maoyan_city` VALUES (978, '延安', 356);
INSERT INTO `maoyan_city` VALUES (979, '榆林', 358);
INSERT INTO `maoyan_city` VALUES (980, '义乌', 405);
INSERT INTO `maoyan_city` VALUES (981, '伊犁', 398);
INSERT INTO `maoyan_city` VALUES (982, '乐清', 470);
INSERT INTO `maoyan_city` VALUES (983, '阳朔', 466);
INSERT INTO `maoyan_city` VALUES (984, '余姚', 459);
INSERT INTO `maoyan_city` VALUES (985, '永康', 458);
INSERT INTO `maoyan_city` VALUES (986, '宜兴', 454);
INSERT INTO `maoyan_city` VALUES (987, '兖州', 453);
INSERT INTO `maoyan_city` VALUES (988, '扬中', 559);
INSERT INTO `maoyan_city` VALUES (989, '伊川', 516);
INSERT INTO `maoyan_city` VALUES (990, '英德', 514);
INSERT INTO `maoyan_city` VALUES (991, '仪征', 522);
INSERT INTO `maoyan_city` VALUES (992, '偃师', 528);
INSERT INTO `maoyan_city` VALUES (993, '禹城', 608);
INSERT INTO `maoyan_city` VALUES (994, '禹州', 609);
INSERT INTO `maoyan_city` VALUES (995, '伊宁', 622);
INSERT INTO `maoyan_city` VALUES (996, '宜城', 625);
INSERT INTO `maoyan_city` VALUES (997, '原平', 637);
INSERT INTO `maoyan_city` VALUES (998, '永城', 577);
INSERT INTO `maoyan_city` VALUES (999, '永济', 597);
INSERT INTO `maoyan_city` VALUES (1000, '玉环', 693);
INSERT INTO `maoyan_city` VALUES (1001, '宜都', 656);
INSERT INTO `maoyan_city` VALUES (1002, '沅江', 658);
INSERT INTO `maoyan_city` VALUES (1003, '永年', 763);
INSERT INTO `maoyan_city` VALUES (1004, '永川', 733);
INSERT INTO `maoyan_city` VALUES (1005, '阎良', 822);
INSERT INTO `maoyan_city` VALUES (1006, '原阳', 829);
INSERT INTO `maoyan_city` VALUES (1007, '易县', 803);
INSERT INTO `maoyan_city` VALUES (1008, '宜阳', 814);
INSERT INTO `maoyan_city` VALUES (1009, '阳城', 770);
INSERT INTO `maoyan_city` VALUES (1010, '云阳', 778);
INSERT INTO `maoyan_city` VALUES (1011, '郓城', 884);
INSERT INTO `maoyan_city` VALUES (1012, '玉山', 876);
INSERT INTO `maoyan_city` VALUES (1013, '阳谷', 878);
INSERT INTO `maoyan_city` VALUES (1014, '虞城', 859);
INSERT INTO `maoyan_city` VALUES (1015, '于都', 958);
INSERT INTO `maoyan_city` VALUES (1016, '沂水', 940);
INSERT INTO `maoyan_city` VALUES (1017, '沂南', 943);
INSERT INTO `maoyan_city` VALUES (1018, '杨凌', 908);
INSERT INTO `maoyan_city` VALUES (1019, '伊金霍洛旗', 901);
INSERT INTO `maoyan_city` VALUES (1020, '攸县', 1096);
INSERT INTO `maoyan_city` VALUES (1021, '永顺县', 1099);
INSERT INTO `maoyan_city` VALUES (1022, '永兴县', 1094);
INSERT INTO `maoyan_city` VALUES (1023, '酉阳土家族苗族自治县', 1127);
INSERT INTO `maoyan_city` VALUES (1024, '应县', 1151);
INSERT INTO `maoyan_city` VALUES (1025, '宜丰', 1027);
INSERT INTO `maoyan_city` VALUES (1026, '营山县', 1043);
INSERT INTO `maoyan_city` VALUES (1027, '永安', 1047);
INSERT INTO `maoyan_city` VALUES (1028, '永丰', 1069);
INSERT INTO `maoyan_city` VALUES (1029, '鄢陵', 1058);
INSERT INTO `maoyan_city` VALUES (1030, '永新', 1072);
INSERT INTO `maoyan_city` VALUES (1031, '宜良县', 1218);
INSERT INTO `maoyan_city` VALUES (1032, '阳山县', 1159);
INSERT INTO `maoyan_city` VALUES (1033, '榆树市', 1160);
INSERT INTO `maoyan_city` VALUES (1034, '沅陵县', 1162);
INSERT INTO `maoyan_city` VALUES (1035, '永登县', 1169);
INSERT INTO `maoyan_city` VALUES (1036, '鱼台县', 1181);
INSERT INTO `maoyan_city` VALUES (1037, '宜州市', 1182);
INSERT INTO `maoyan_city` VALUES (1038, '义马市', 1186);
INSERT INTO `maoyan_city` VALUES (1039, '盂县', 1199);
INSERT INTO `maoyan_city` VALUES (1040, '永嘉县', 1198);
INSERT INTO `maoyan_city` VALUES (1041, '郑州', 73);
INSERT INTO `maoyan_city` VALUES (1042, '淄博', 81);
INSERT INTO `maoyan_city` VALUES (1043, '珠海', 108);
INSERT INTO `maoyan_city` VALUES (1044, '中山', 113);
INSERT INTO `maoyan_city` VALUES (1045, '张家口', 125);
INSERT INTO `maoyan_city` VALUES (1046, '舟山', 190);
INSERT INTO `maoyan_city` VALUES (1047, '镇江', 182);
INSERT INTO `maoyan_city` VALUES (1048, '枣庄', 222);
INSERT INTO `maoyan_city` VALUES (1049, '漳州', 209);
INSERT INTO `maoyan_city` VALUES (1050, '驻马店', 248);
INSERT INTO `maoyan_city` VALUES (1051, '周口', 247);
INSERT INTO `maoyan_city` VALUES (1052, '湛江', 278);
INSERT INTO `maoyan_city` VALUES (1053, '肇庆', 280);
INSERT INTO `maoyan_city` VALUES (1054, '株洲', 263);
INSERT INTO `maoyan_city` VALUES (1055, '张家界', 269);
INSERT INTO `maoyan_city` VALUES (1056, '资阳', 318);
INSERT INTO `maoyan_city` VALUES (1057, '自贡', 302);
INSERT INTO `maoyan_city` VALUES (1058, '遵义', 323);
INSERT INTO `maoyan_city` VALUES (1059, '昭通', 333);
INSERT INTO `maoyan_city` VALUES (1060, '张掖', 366);
INSERT INTO `maoyan_city` VALUES (1061, '中卫', 386);
INSERT INTO `maoyan_city` VALUES (1062, '涿州', 426);
INSERT INTO `maoyan_city` VALUES (1063, '张家港', 419);
INSERT INTO `maoyan_city` VALUES (1064, '增城', 474);
INSERT INTO `maoyan_city` VALUES (1065, '诸暨', 468);
INSERT INTO `maoyan_city` VALUES (1066, '章丘', 465);
INSERT INTO `maoyan_city` VALUES (1067, '邹平', 508);
INSERT INTO `maoyan_city` VALUES (1068, '枣阳', 494);
INSERT INTO `maoyan_city` VALUES (1069, '庄河', 558);
INSERT INTO `maoyan_city` VALUES (1070, '诸城', 526);
INSERT INTO `maoyan_city` VALUES (1071, '钟祥', 612);
INSERT INTO `maoyan_city` VALUES (1072, '招远', 586);
INSERT INTO `maoyan_city` VALUES (1073, '遵化', 591);
INSERT INTO `maoyan_city` VALUES (1074, '枝江', 654);
INSERT INTO `maoyan_city` VALUES (1075, '樟树', 671);
INSERT INTO `maoyan_city` VALUES (1076, '漳浦', 663);
INSERT INTO `maoyan_city` VALUES (1077, '正定', 757);
INSERT INTO `maoyan_city` VALUES (1078, '中牟', 821);
INSERT INTO `maoyan_city` VALUES (1079, '准格尔旗', 891);
INSERT INTO `maoyan_city` VALUES (1080, '柘城', 858);
INSERT INTO `maoyan_city` VALUES (1081, '邹城', 834);
INSERT INTO `maoyan_city` VALUES (1082, '赵县', 841);
INSERT INTO `maoyan_city` VALUES (1083, '织金', 1007);
INSERT INTO `maoyan_city` VALUES (1084, '芷江', 997);
INSERT INTO `maoyan_city` VALUES (1085, '周至', 985);
INSERT INTO `maoyan_city` VALUES (1086, '资兴市', 1093);
INSERT INTO `maoyan_city` VALUES (1087, '扎兰屯市', 1140);
INSERT INTO `maoyan_city` VALUES (1088, '漳平', 1048);
INSERT INTO `maoyan_city` VALUES (1089, '镇雄县', 1246);
INSERT INTO `maoyan_city` VALUES (1090, '忠县', 1179);
INSERT INTO `maoyan_city` VALUES (1091, '柘荣', 1196);
INSERT INTO `maoyan_city` VALUES (1092, '中江县', 1200);
COMMIT;

-- ----------------------------
-- Table structure for maoyan_film_detail
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_film_detail`;
CREATE TABLE `maoyan_film_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL COMMENT '电影id',
  `movie_name` varchar(255) DEFAULT NULL COMMENT '电影名',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院id',
  `cinema_name` varchar(255) DEFAULT NULL COMMENT '影院名称',
  `screen` varchar(50)  DEFAULT NULL COMMENT '影厅',
  `version` varchar(255) DEFAULT NULL COMMENT '版本',
  `show_time` datetime DEFAULT NULL COMMENT '场次',
  `price` varchar(255) DEFAULT NULL COMMENT '票价',
  `seat_sold_count` varchar(255) DEFAULT NULL COMMENT '已售座位',
  `seat_total_count` varchar(255) DEFAULT NULL COMMENT '总座位',
  `city_id` int(11) DEFAULT NULL COMMENT '城市id',
  `url` varchar(255) DEFAULT NULL COMMENT '详情地址',
  `crawl_time` datetime DEFAULT NULL COMMENT '采集时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `movie_id` (`movie_id`,`cinema_id`,`city_id`,`show_time`,`screen`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for maoyan_film_detail_batch_record
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_film_detail_batch_record`;
CREATE TABLE `maoyan_film_detail_batch_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `batch_date` date DEFAULT NULL COMMENT '批次时间',
  `total_count` int(11) DEFAULT NULL COMMENT '任务总数',
  `done_count` int(11) DEFAULT NULL COMMENT '完成数 (1,-1)',
  `fail_count` int(11) DEFAULT NULL COMMENT '失败任务数 (-1)',
  `interval` float DEFAULT NULL COMMENT '批次间隔',
  `interval_unit` varchar(20) DEFAULT NULL COMMENT '批次间隔单位 day, hour',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '批次开始时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '本条记录更新时间',
  `is_done` int(11) DEFAULT '0' COMMENT '批次是否完成 0 未完成  1 完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for maoyan_film_detail_snapshot_batch_record
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_film_detail_snapshot_batch_record`;
CREATE TABLE `maoyan_film_detail_snapshot_batch_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `batch_date` date DEFAULT NULL COMMENT '批次时间',
  `total_count` int(11) DEFAULT NULL COMMENT '任务总数',
  `done_count` int(11) DEFAULT NULL COMMENT '完成数 (1,-1)',
  `fail_count` int(11) DEFAULT NULL COMMENT '失败任务数 (-1)',
  `interval` float DEFAULT NULL COMMENT '批次间隔',
  `interval_unit` varchar(20) DEFAULT NULL COMMENT '批次间隔单位 day, hour',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '批次开始时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '本条记录更新时间',
  `is_done` int(11) DEFAULT '0' COMMENT '批次是否完成 0 未完成  1 完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for maoyan_film_detail_snapshot_task
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_film_detail_snapshot_task`;
CREATE TABLE `maoyan_film_detail_snapshot_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL COMMENT '电影id',
  `city_id` int(11) DEFAULT NULL COMMENT '城市id',
  `url` varchar(170) DEFAULT NULL COMMENT '售票地址',
  `show_time` datetime DEFAULT NULL COMMENT '播出时间',
  `crawl_time` datetime DEFAULT NULL COMMENT '采集时间',
  `state` int(11) DEFAULT '0' COMMENT '采集状态 -1失败 0 待抓取 1抓取成功 2 正在抓取',
  PRIMARY KEY (`id`),
  UNIQUE KEY `movie_id` (`movie_id`,`city_id`,`url`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for maoyan_film_detail_task
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_film_detail_task`;
CREATE TABLE `maoyan_film_detail_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL COMMENT '电影id',
  `city_id` int(11) DEFAULT NULL COMMENT '城市id',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌 -1表示全部',
  `show_date` date DEFAULT NULL COMMENT '日期',
  `state` int(11) DEFAULT '0' COMMENT '采集状态 -1失败 0 待抓取 1抓取成功 2 正在抓取',
  PRIMARY KEY (`id`),
  UNIQUE KEY `movie_id` (`movie_id`,`city_id`,`brand_id`,`show_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for maoyan_hot_movie_list
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_hot_movie_list`;
CREATE TABLE `maoyan_hot_movie_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `movie_id` varchar(0) DEFAULT NULL COMMENT '电影id',
  `url` varchar(1000) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL COMMENT '封面',
  `movie_type` varchar(255) DEFAULT NULL COMMENT '电影类型',
  `main_actor` varchar(255) DEFAULT NULL COMMENT '主演',
  `release_date` datetime DEFAULT NULL COMMENT '上映时间',
  `imax` varchar(255) DEFAULT NULL COMMENT '影片 2d 3d',
  `crawl_time` datetime DEFAULT NULL COMMENT '采集时间',
  `city_id` int(11) DEFAULT NULL COMMENT '城市id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for maoyan_hot_movie_list_task
-- ----------------------------
DROP TABLE IF EXISTS `maoyan_hot_movie_list_task`;
CREATE TABLE `maoyan_hot_movie_list_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '0' COMMENT '采集状态 -1失败 0 待抓取 1抓取成功 2 正在抓取',
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_id` (`city_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of maoyan_hot_movie_list_task
-- ----------------------------
BEGIN;
INSERT INTO `maoyan_hot_movie_list_task` VALUES (1, 1, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
