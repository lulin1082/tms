
-- ----------------------------
-- Records of sys_companies
-- ----------------------------
select * from sys_companies;

INSERT INTO `sys_companies` VALUES ('2', 'DIS-山东广顺国际旅行社-2',     '2', '18678909876', 'http://www.sdgslvs.cn', '中国', '山东济南', '东城区', '东三路28号', '200000', '', '1', 'admin', '2019-04-06 17:40:31', 'admin', '2019-04-12 11:15:37');
INSERT INTO `sys_companies` VALUES ('4', 'SUP-海南国内旅行社-4',    	  '1','18767890987',  'http://hngnlvs.cn', '中国', '海南', '三亚', '云南路48号', '30000', '',     '1', 'admin', '2019-04-07 14:47:56', 'admin', '2019-05-18 14:10:11');
INSERT INTO `sys_companies` VALUES ('5', 'SUP-北京能源有限公司-5', 		'1',  '13567890987', 'http://www.bjny.cn', '中国', '北京', '西城区', '西二环北路28号', '10000', '','1', 'admin', '2019-04-07 14:49:02', 'admin', '2019-05-18 14:10:12');
INSERT INTO `sys_companies` VALUES ('7', 'DIS-北京国际旅行社-7', 		'2',  '18678909876',  'http://www.bjgjlvxs.cn', '中国', '北京', '海淀区', '西四环北路', '10000', '',  '1', 'admin', '2019-04-12 11:15:12', 'admin', '2019-04-12 11:15:12');
INSERT INTO `sys_companies` VALUES ('8', 'DIS-上海国际旅行社-8', 		'2', '13678909876',  'http://shanghailvxs.cn', '中国', '上海', '浦东区', '23号', '20000', '', '1', 'admin', '2019-04-12 11:21:16', 'admin', '2019-04-12 11:21:16');
INSERT INTO `sys_companies` VALUES ('9', 'DIS-西安青年旅行社-9', 		'2',  '18678909876',  'http://xianqlv.cn', '中国', '陕西', '西安', '玉石路', '710000', '', '1', 'admin', '2019-04-12 11:23:34', 'admin', '2019-04-12 11:23:34');
INSERT INTO `sys_companies` VALUES ('10', 'SUP-康师傅矿泉水-10', 		'1','18798765432',  'http://kangshifu.cn', '中国', '北京', '东城区', '23号', '1000000', '','1', 'admin', '2019-04-12 11:29:26', 'admin', '2019-05-18 14:10:13');
INSERT INTO `sys_companies` VALUES ('11', 'SUP-北京神州帽业有限公司-11',	'1','13876543212',  'http://shenzhou.cn', '中国', '北京', '朝阳区', '建设大街45号', '1000000', '', '1', 'admin', '2019-04-12 11:31:21', 'admin', '2019-05-18 14:10:14');
INSERT INTO `sys_companies` VALUES ('12', 'SUP-北京顺达客运有限公司-12', 	'1','18654321234',  'http://sdkeyun.cn', '中国', '北京', '丰台区', '五棵松48号', '1000000', '', '1', 'admin', '2019-04-12 11:34:21', 'admin', '2019-04-12 11:34:21');
INSERT INTO `sys_companies` VALUES ('13', 'CHN-携程旅游公司-13', '       3',	'15256789876',  'http://www.xiecheng.com', '中国', '北京', '朝阳区', '建设东路18号', '100000', '', '1', 'admin', '2019-04-12 13:52:11', 'admin', '2019-04-12 13:52:11');
INSERT INTO `sys_companies` VALUES ('14', 'CHN-去哪儿网有限公司-14', 		'1','18637489876',  'http://www.qunaer.com', '中国', '北京', '朝阳区', '建设东路23号', '100000', '', '1', 'admin', '2019-04-12 13:54:20', 'admin', '2019-04-12 13:54:20');
INSERT INTO `sys_companies` VALUES ('15', 'CHN-驴妈妈网有限公司-15',  		'1','18627389876',  'http://www.lvmama.com', '中国', '北京', '朝阳区', '建设东路118号', '100000', '', '1', 'admin', '2019-04-12 13:55:32', 'admin', '2019-04-12 13:55:32');

-- ----------------------------
-- Records of aut_organizations
-- ----------------------------
 truncate table `sys_function`;

-- truncate table `sys_role_function`;

INSERT INTO `sys_function` VALUES ('1', '信息面板', '请求路径', '1', '1', null, null, '', '2020-07-12 15:15:59', '2020-07-21 11:07:49', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('3', '产品管理', '请求路径', '1', '3', null, null, 'product:list', '2020-07-12 15:15:59', '2020-07-21 11:16:10', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('4', '销售管理', '请求路径', '1', '4', null, null, null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('5', '资源管理', '请求路径', '1', '5', null, null, null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('6', '财务管理', '请求路径', '1', '6', null, null, null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('7', '供销管理', '请求路径', '1', '7', null, null, 'dist:list', '2020-07-12 15:15:59', '2020-07-21 11:16:55', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('8', '系统管理', '请求路径', '1', '8', null, null, 'sys:list', '2020-07-12 15:15:59', '2020-07-21 11:16:00', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('11', '项目信息', 'project/listUI.do', '1', '11', null, '3', 'product:project:view', '2020-07-12 15:15:59', '2020-07-21 17:35:34', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('12', '团信息', 'team/listUI.do', '1', '12', null, '3', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('13', '产品信息', 'product/listUI.do', '1', '13', null, '3', '', '2020-07-12 15:15:59', '2020-07-24 14:34:08', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('14', '产品分类', 'productType/listUI.do', '1', '14', null, '3', '', '2020-07-12 15:15:59', '2020-07-24 14:34:50', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('24', '系统配置', '请求路径', '1', '24', null, '8', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('25', '日志管理', '请求路径', '1', '25', null, '8', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('26', '发布通知', '请求路径', '1', '26', null, '1', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('27', '通知管理', '请求路径', '1', '27', null, '1', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('34', '分销商管理', '请求路径', '1', '34', null, '7', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('35', '订单管理', '请求路径', '1', '35', null, '4', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('36', '世界大洲', '请求路径', '1', '36', null, '5', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('37', '国家地区', '请求路径', '1', '37', null, '5', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('38', '城市', '请求路径', '1', '38', null, '5', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('39', '导游管理', '请求路径', '1', '39', null, '5', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('40', '附件管理', '请求路径', '1', '40', null, '5', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('41', '供应商管理', '请求路径', '1', '41', null, '7', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('42', '成本信息', '请求路径', '1', '42', null, '6', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('43', '渠道信息管理', '请求路径', '1', '43', null, '7', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('44', '渠道商管理', '请求路径', '1', '44', null, '7', null, '2020-07-12 15:15:59', '2020-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('45', '用户管理', 'user/listUI.do', '1', '45', null, '8', 'sys:user:view', '2020-07-12 15:15:59', '2020-07-21 17:36:01', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('46', '菜单管理', 'function/listUI.do', '1', '46', null, '8', 'sys:function:view', '2020-07-12 15:15:59', '2020-07-21 17:36:16', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('47', '角色管理', 'role/listUI.do', '1', '47', null, '8', 'sys:role:view', '2020-07-12 15:15:59', '2020-07-21 17:38:03', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('48', '组织管理', '请求路径', '1', '48', null, '8', 'sys:org:view', '2020-07-12 15:15:59', '2020-07-21 18:37:57', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('49', '操作日志', '请求路径', '1', '49', null, '25', null, '2021-07-12 15:15:59', '2021-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_function` VALUES ('72', '查看', '', '2', '1', null, '26', 'user:lislt', '2021-07-13 16:09:09', '2021-07-13 16:09:09', null, null);
INSERT INTO `sys_function` VALUES ('73', '发布', '', '2', '2', null, '26', 'user:publish', '2021-07-13 16:09:48', '2021-07-13 16:09:48', null, null);
INSERT INTO `sys_function` VALUES ('74', '查看', '', '2', '1', null, '27', 'user:list', '2021-07-13 16:10:16', '2021-07-13 16:10:16', null, null);
INSERT INTO `sys_function` VALUES ('75', '新增', '', '2', '2', null, '27', 'user:add', '2021-07-13 16:10:37', '2021-07-13 16:10:37', null, null);
INSERT INTO `sys_function` VALUES ('76', '修改', '', '2', '3', null, '27', 'user:update', '2021-07-13 16:11:07', '2021-07-13 16:11:07', null, null);
INSERT INTO `sys_function` VALUES ('77', '删除', '', '2', '4', null, '27', 'user:delete', '2021-07-13 16:11:29', '2021-07-13 16:11:29', null, null);
INSERT INTO `sys_function` VALUES ('78', '查看', '', '2', '1', null, '10', 'user:add', '2021-07-13 16:11:53', '2021-07-13 16:11:53', null, null);
INSERT INTO `sys_function` VALUES ('79', '新增', '', '2', '2', null, '10', 'user:add', '2021-07-13 16:12:10', '2021-07-13 16:12:10', null, null);
INSERT INTO `sys_function` VALUES ('80', '修改', '', '2', '3', null, '10', 'user:update', '2021-07-13 16:12:27', '2021-07-13 16:12:27', null, null);
INSERT INTO `sys_function` VALUES ('81', '删除', '', '2', '4', null, '10', 'user:delete', '2021-07-13 16:12:44', '2021-07-13 16:12:44', null, null);
INSERT INTO `sys_function` VALUES ('82', '查看', '', '2', '1', null, '28', 'user:list', '2021-07-13 16:13:09', '2021-07-13 16:13:09', null, null);
INSERT INTO `sys_function` VALUES ('83', '新增', '', '2', '2', null, '28', 'user：add', '2021-07-13 16:13:27', '2021-07-13 16:13:27', null, null);
INSERT INTO `sys_function` VALUES ('84', '修改', '', '2', '3', null, '28', 'user:update', '2021-07-13 16:13:46', '2021-07-13 16:13:46', null, null);
INSERT INTO `sys_function` VALUES ('85', '查看', '', '2', '1', null, '29', 'user:list', '2021-07-13 16:14:59', '2021-07-13 16:14:59', null, null);
INSERT INTO `sys_function` VALUES ('86', '新增', '', '2', '2', null, '29', 'user:add', '2021-07-13 16:15:16', '2021-07-13 16:15:16', null, null);
INSERT INTO `sys_function` VALUES ('87', '修改', '', '2', '3', null, '29', 'user:update', '2021-07-13 16:15:35', '2021-07-13 16:15:35', null, null);
INSERT INTO `sys_function` VALUES ('88', '保存', '', '2', '1', null, '30', 'user:save', '2021-07-13 16:16:27', '2021-07-13 16:23:12', null, null);
INSERT INTO `sys_function` VALUES ('89', '查询', '', '2', '1', null, '31', 'user:list', '2021-07-13 16:16:45', '2021-07-13 16:24:34', null, null);
INSERT INTO `sys_function` VALUES ('90', '修改', '', '2', '2', null, '31', 'user:edit', '2021-07-13 16:17:12', '2021-07-13 16:17:12', null, null);
INSERT INTO `sys_function` VALUES ('91', '查看', '', '2', '1', null, '33', 'user:list', '2021-07-13 16:17:45', '2021-07-13 16:17:45', null, null);
INSERT INTO `sys_function` VALUES ('92', '新增', '', '2', '2', null, '33', 'user:add', '2021-07-13 16:18:03', '2021-07-13 16:18:03', null, null);
INSERT INTO `sys_function` VALUES ('93', '修改', '', '2', '3', null, '33', 'user:edit', '2021-07-13 16:18:22', '2021-07-13 16:18:22', null, null);
INSERT INTO `sys_function` VALUES ('94', '查看', '', '2', '1', null, '35', 'user:view', '2021-07-13 16:18:42', '2021-07-13 16:18:42', null, null);
INSERT INTO `sys_function` VALUES ('95', '查看', '', '2', '1', null, '36', 'user:view', '2021-07-13 16:19:06', '2021-07-13 16:19:06', null, null);
INSERT INTO `sys_function` VALUES ('96', '新增', '', '2', '2', null, '36', 'user:add', '2021-07-13 16:19:21', '2021-07-13 16:19:21', null, null);
INSERT INTO `sys_function` VALUES ('97', '修改', '', '2', '3', null, '36', 'user:edit', '2021-07-13 16:19:40', '2021-07-13 16:19:40', null, null);
INSERT INTO `sys_function` VALUES ('98', '查看', '', '2', '1', null, '37', 'user:view', '2021-07-13 16:20:01', '2021-07-13 16:20:01', null, null);
INSERT INTO `sys_function` VALUES ('99', '新增', '', '2', '2', null, '37', 'user:add', '2021-07-13 16:20:20', '2021-07-13 16:20:20', null, null);
INSERT INTO `sys_function` VALUES ('100', '修改', '', '2', '3', null, '37', 'user:edit', '2021-07-13 16:20:37', '2021-07-13 16:20:37', null, null);
INSERT INTO `sys_function` VALUES ('101', '查看', '', '2', '1', null, '38', 'user:view', '2021-07-13 16:21:01', '2021-07-13 16:21:01', null, null);
INSERT INTO `sys_function` VALUES ('102', '新增', '', '2', '2', null, '38', 'user:add', '2021-07-13 16:21:20', '2021-07-13 16:21:20', null, null);
INSERT INTO `sys_function` VALUES ('103', '修改', '', '2', '3', null, '38', 'user:edit', '2021-07-13 16:21:36', '2021-07-13 16:21:36', null, null);
INSERT INTO `sys_function` VALUES ('104', '查看', '', '2', '1', null, '39', 'user:view', '2021-07-13 16:21:55', '2021-07-13 16:21:55', null, null);
INSERT INTO `sys_function` VALUES ('105', '新增', '', '2', '2', null, '39', 'user:add', '2021-07-13 16:22:13', '2021-07-13 16:22:13', null, null);
INSERT INTO `sys_function` VALUES ('106', '修改', '', '2', '3', null, '39', 'user:edit', '2021-07-13 16:22:38', '2021-07-13 16:22:38', null, null);
INSERT INTO `sys_function` VALUES ('107', '待售', '', '2', '3', null, '31', 'user:onsale', '2021-07-13 16:25:00', '2021-07-13 16:25:00', null, null);
INSERT INTO `sys_function` VALUES ('108', '上架', '', '2', '4', null, '31', 'user:online', '2021-07-13 16:25:26', '2021-07-13 16:25:26', null, null);
INSERT INTO `sys_function` VALUES ('109', '下架', '', '2', '5', null, '31', 'user:offline', '2021-07-13 16:25:47', '2021-07-13 16:25:47', null, null);
INSERT INTO `sys_function` VALUES ('110', '库存分销', '', '2', '6', null, '31', 'user:productDist', '2021-07-13 16:26:27', '2021-07-13 16:26:27', null, null);
INSERT INTO `sys_function` VALUES ('111', '价格政策', '', '2', '7', null, '31', 'user:productPricePolice', '2021-07-13 16:26:57', '2021-07-13 16:26:57', null, null);
INSERT INTO `sys_function` VALUES ('112', '附件', '', '2', '8', null, '31', 'user:attachment', '2021-07-13 16:27:18', '2021-07-13 16:27:18', null, null);
INSERT INTO `sys_function` VALUES ('113', '导游信息', '', '2', '9', null, '31', 'user:productGuides', '2021-07-13 16:27:44', '2021-07-13 16:27:44', null, null);
INSERT INTO `sys_function` VALUES ('114', '行程设置', '', '2', '11', null, '31', 'user:productSchedual', '2021-07-13 16:28:11', '2021-07-13 16:28:11', null, null);
INSERT INTO `sys_function` VALUES ('115', '查看', '', '2', '1', null, '46', 'sys:function:view', '2020-07-13 16:33:41', '2020-07-21 11:09:05', null, null);
INSERT INTO `sys_function` VALUES ('116', '新增', '', '2', '2', null, '46', 'sys:function:add', '2020-07-13 16:34:02', '2020-07-21 11:09:22', null, null);
INSERT INTO `sys_function` VALUES ('117', '修改', '', '2', '3', null, '46', 'sys:function:update', '2020-07-13 16:34:25', '2020-07-21 11:09:45', null, null);
INSERT INTO `sys_function` VALUES ('118', '删除', '', '2', '4', null, '46', 'sys:function:delete', '2020-07-13 16:34:46', '2020-07-21 11:10:12', null, null);
INSERT INTO `sys_function` VALUES ('119', '查看', '', '2', '1', null, '45', 'sys:user:view', '2020-07-13 16:35:05', '2020-07-21 11:12:46', null, null);
INSERT INTO `sys_function` VALUES ('120', '查看', '', '2', '1', null, '47', 'sys:role:view', '2020-07-13 16:35:26', '2020-07-21 11:13:43', null, null);
INSERT INTO `sys_function` VALUES ('126', '新增', '', '2', '2', null, '45', 'sys:user:add', '2020-07-21 11:11:34', '2020-07-21 11:11:34', null, null);
INSERT INTO `sys_function` VALUES ('127', '修改', '', '2', '3', null, '45', 'sys:user:update', '2020-07-21 11:11:56', '2020-07-21 11:11:56', null, null);
INSERT INTO `sys_function` VALUES ('128', '新增', '', '2', '2', null, '47', 'sys:role:add', '2020-07-21 11:14:24', '2020-07-21 11:14:24', null, null);
INSERT INTO `sys_function` VALUES ('129', '修改', '', '2', '3', null, '47', 'sys:role:update', '2020-07-21 11:14:48', '2020-07-21 11:14:48', null, null);
INSERT INTO `sys_function` VALUES ('130', '删除', '', '2', '4', null, '47', 'sys:role:delete', '2020-07-21 11:15:09', '2020-07-21 11:15:09', null, null);
INSERT INTO `sys_function` VALUES ('135', '查询', '', '2', '1', null, '11', 'product:project:view', '2020-07-21 17:21:40', '2020-07-21 17:21:40', null, null);
INSERT INTO `sys_function` VALUES ('136', '新增', '', '2', '2', null, '11', 'product:project:add', '2020-07-21 17:22:02', '2020-07-21 17:22:02', null, null);
INSERT INTO `sys_function` VALUES ('137', '启用', '', '2', '3', null, '11', 'product:project:open', '2020-07-21 17:22:23', '2020-07-21 17:22:23', null, null);
INSERT INTO `sys_function` VALUES ('138', '禁用', '', '2', '4', null, '11', 'product:project:close', '2020-07-21 17:22:44', '2020-07-21 17:22:44', null, null);
INSERT INTO `sys_function` VALUES ('139', '修改', '', '2', '5', null, '11', 'product:project:update', '2020-07-21 17:25:20', '2020-07-21 17:25:20', null, null);









-- ----------------------------
-- Records of sys_role_function
-- ----------------------------
INSERT INTO `sys_role_function` VALUES ('31', '18', '3');
INSERT INTO `sys_role_function` VALUES ('32', '18', '11');
INSERT INTO `sys_role_function` VALUES ('33', '18', '28');
INSERT INTO `sys_role_function` VALUES ('34', '18', '82');
INSERT INTO `sys_role_function` VALUES ('35', '18', '83');
INSERT INTO `sys_role_function` VALUES ('36', '18', '84');
INSERT INTO `sys_role_function` VALUES ('37', '18', '12');
INSERT INTO `sys_role_function` VALUES ('38', '18', '29');
INSERT INTO `sys_role_function` VALUES ('39', '18', '85');
INSERT INTO `sys_role_function` VALUES ('40', '18', '86');
INSERT INTO `sys_role_function` VALUES ('41', '18', '87');
INSERT INTO `sys_role_function` VALUES ('42', '18', '13');
INSERT INTO `sys_role_function` VALUES ('43', '18', '30');
INSERT INTO `sys_role_function` VALUES ('44', '18', '88');
INSERT INTO `sys_role_function` VALUES ('45', '18', '31');
INSERT INTO `sys_role_function` VALUES ('46', '18', '89');
INSERT INTO `sys_role_function` VALUES ('47', '18', '90');
INSERT INTO `sys_role_function` VALUES ('48', '18', '107');
INSERT INTO `sys_role_function` VALUES ('49', '18', '108');
INSERT INTO `sys_role_function` VALUES ('50', '18', '109');
INSERT INTO `sys_role_function` VALUES ('51', '18', '110');
INSERT INTO `sys_role_function` VALUES ('52', '18', '111');
INSERT INTO `sys_role_function` VALUES ('53', '18', '112');
INSERT INTO `sys_role_function` VALUES ('54', '18', '113');
INSERT INTO `sys_role_function` VALUES ('55', '18', '114');
INSERT INTO `sys_role_function` VALUES ('56', '18', '32');
INSERT INTO `sys_role_function` VALUES ('57', '18', '14');
INSERT INTO `sys_role_function` VALUES ('58', '18', '33');
INSERT INTO `sys_role_function` VALUES ('59', '18', '91');
INSERT INTO `sys_role_function` VALUES ('60', '18', '92');
INSERT INTO `sys_role_function` VALUES ('61', '18', '93');
INSERT INTO `sys_role_function` VALUES ('62', '18', '8');
INSERT INTO `sys_role_function` VALUES ('63', '18', '23');
INSERT INTO `sys_role_function` VALUES ('64', '18', '45');
INSERT INTO `sys_role_function` VALUES ('65', '18', '119');
INSERT INTO `sys_role_function` VALUES ('66', '18', '46');
INSERT INTO `sys_role_function` VALUES ('67', '18', '115');
INSERT INTO `sys_role_function` VALUES ('68', '18', '116');
INSERT INTO `sys_role_function` VALUES ('69', '18', '117');
INSERT INTO `sys_role_function` VALUES ('70', '18', '118');
INSERT INTO `sys_role_function` VALUES ('71', '18', '47');
INSERT INTO `sys_role_function` VALUES ('72', '18', '120');
INSERT INTO `sys_role_function` VALUES ('73', '18', '48');
INSERT INTO `sys_role_function` VALUES ('74', '18', '24');
INSERT INTO `sys_role_function` VALUES ('75', '18', '25');
INSERT INTO `sys_role_function` VALUES ('76', '18', '49');
INSERT INTO `sys_role_function` VALUES ('209', '31', '2');
INSERT INTO `sys_role_function` VALUES ('210', '31', '10');
INSERT INTO `sys_role_function` VALUES ('211', '31', '78');
INSERT INTO `sys_role_function` VALUES ('212', '31', '79');
INSERT INTO `sys_role_function` VALUES ('213', '31', '80');
INSERT INTO `sys_role_function` VALUES ('214', '31', '81');
INSERT INTO `sys_role_function` VALUES ('215', '17', '3');
INSERT INTO `sys_role_function` VALUES ('216', '17', '11');
INSERT INTO `sys_role_function` VALUES ('217', '17', '28');
INSERT INTO `sys_role_function` VALUES ('218', '17', '82');
INSERT INTO `sys_role_function` VALUES ('219', '17', '83');
INSERT INTO `sys_role_function` VALUES ('220', '17', '84');
INSERT INTO `sys_role_function` VALUES ('221', '17', '12');
INSERT INTO `sys_role_function` VALUES ('222', '17', '29');
INSERT INTO `sys_role_function` VALUES ('223', '17', '85');
INSERT INTO `sys_role_function` VALUES ('224', '17', '86');
INSERT INTO `sys_role_function` VALUES ('225', '17', '87');
INSERT INTO `sys_role_function` VALUES ('226', '17', '13');
INSERT INTO `sys_role_function` VALUES ('227', '17', '30');
INSERT INTO `sys_role_function` VALUES ('228', '17', '88');
INSERT INTO `sys_role_function` VALUES ('229', '17', '31');
INSERT INTO `sys_role_function` VALUES ('230', '17', '89');
INSERT INTO `sys_role_function` VALUES ('231', '17', '90');
INSERT INTO `sys_role_function` VALUES ('232', '17', '107');
INSERT INTO `sys_role_function` VALUES ('233', '17', '108');
INSERT INTO `sys_role_function` VALUES ('234', '17', '109');
INSERT INTO `sys_role_function` VALUES ('235', '17', '110');
INSERT INTO `sys_role_function` VALUES ('236', '17', '111');
INSERT INTO `sys_role_function` VALUES ('237', '17', '112');
INSERT INTO `sys_role_function` VALUES ('238', '17', '113');
INSERT INTO `sys_role_function` VALUES ('239', '17', '114');
INSERT INTO `sys_role_function` VALUES ('240', '17', '32');
INSERT INTO `sys_role_function` VALUES ('241', '17', '14');
INSERT INTO `sys_role_function` VALUES ('242', '17', '33');
INSERT INTO `sys_role_function` VALUES ('243', '17', '91');
INSERT INTO `sys_role_function` VALUES ('244', '17', '92');
INSERT INTO `sys_role_function` VALUES ('245', '17', '93');
INSERT INTO `sys_role_function` VALUES ('246', '17', '8');
INSERT INTO `sys_role_function` VALUES ('247', '17', '23');
INSERT INTO `sys_role_function` VALUES ('248', '17', '45');
INSERT INTO `sys_role_function` VALUES ('249', '17', '119');
INSERT INTO `sys_role_function` VALUES ('250', '17', '46');
INSERT INTO `sys_role_function` VALUES ('251', '17', '115');
INSERT INTO `sys_role_function` VALUES ('252', '17', '116');
INSERT INTO `sys_role_function` VALUES ('253', '17', '117');
INSERT INTO `sys_role_function` VALUES ('254', '17', '118');
INSERT INTO `sys_role_function` VALUES ('255', '17', '47');
INSERT INTO `sys_role_function` VALUES ('256', '17', '120');
INSERT INTO `sys_role_function` VALUES ('257', '17', '48');
INSERT INTO `sys_role_function` VALUES ('258', '17', '24');
INSERT INTO `sys_role_function` VALUES ('259', '17', '25');
INSERT INTO `sys_role_function` VALUES ('260', '17', '49');
INSERT INTO `sys_role_function` VALUES ('261', '32', '2');
INSERT INTO `sys_role_function` VALUES ('262', '32', '10');
INSERT INTO `sys_role_function` VALUES ('263', '32', '78');
INSERT INTO `sys_role_function` VALUES ('264', '32', '79');
INSERT INTO `sys_role_function` VALUES ('265', '32', '80');
INSERT INTO `sys_role_function` VALUES ('266', '32', '81');
INSERT INTO `sys_role_function` VALUES ('292', '33', '1');
INSERT INTO `sys_role_function` VALUES ('293', '33', '9');
INSERT INTO `sys_role_function` VALUES ('294', '33', '26');
INSERT INTO `sys_role_function` VALUES ('295', '33', '72');
INSERT INTO `sys_role_function` VALUES ('296', '33', '73');
INSERT INTO `sys_role_function` VALUES ('297', '33', '27');
INSERT INTO `sys_role_function` VALUES ('298', '33', '74');
INSERT INTO `sys_role_function` VALUES ('299', '33', '75');
INSERT INTO `sys_role_function` VALUES ('300', '33', '76');
INSERT INTO `sys_role_function` VALUES ('301', '33', '77');
INSERT INTO `sys_role_function` VALUES ('302', '33', '5');
INSERT INTO `sys_role_function` VALUES ('303', '33', '16');
INSERT INTO `sys_role_function` VALUES ('304', '33', '37');
INSERT INTO `sys_role_function` VALUES ('305', '33', '98');
INSERT INTO `sys_role_function` VALUES ('306', '33', '99');
INSERT INTO `sys_role_function` VALUES ('307', '33', '100');
INSERT INTO `sys_role_function` VALUES ('308', '33', '38');
INSERT INTO `sys_role_function` VALUES ('309', '33', '101');
INSERT INTO `sys_role_function` VALUES ('310', '33', '102');
INSERT INTO `sys_role_function` VALUES ('311', '33', '103');
INSERT INTO `sys_role_function` VALUES ('312', '33', '17');
INSERT INTO `sys_role_function` VALUES ('313', '33', '39');
INSERT INTO `sys_role_function` VALUES ('314', '33', '104');
INSERT INTO `sys_role_function` VALUES ('315', '33', '105');
INSERT INTO `sys_role_function` VALUES ('316', '33', '106');
INSERT INTO `sys_role_function` VALUES ('317', '33', '18');
INSERT INTO `sys_role_function` VALUES ('318', '33', '40');
INSERT INTO `sys_role_function` VALUES ('319', '33', '8');
INSERT INTO `sys_role_function` VALUES ('320', '33', '23');
INSERT INTO `sys_role_function` VALUES ('321', '33', '45');
INSERT INTO `sys_role_function` VALUES ('322', '33', '119');
INSERT INTO `sys_role_function` VALUES ('323', '33', '46');
INSERT INTO `sys_role_function` VALUES ('324', '33', '115');
INSERT INTO `sys_role_function` VALUES ('325', '33', '116');
INSERT INTO `sys_role_function` VALUES ('326', '33', '117');
INSERT INTO `sys_role_function` VALUES ('327', '33', '118');
INSERT INTO `sys_role_function` VALUES ('328', '33', '47');
INSERT INTO `sys_role_function` VALUES ('329', '33', '120');
INSERT INTO `sys_role_function` VALUES ('330', '33', '48');
INSERT INTO `sys_role_function` VALUES ('331', '33', '24');
INSERT INTO `sys_role_function` VALUES ('332', '33', '25');
INSERT INTO `sys_role_function` VALUES ('333', '33', '49');
INSERT INTO `sys_role_function` VALUES ('973', '1', '1');
INSERT INTO `sys_role_function` VALUES ('974', '1', '26');
INSERT INTO `sys_role_function` VALUES ('975', '1', '27');
INSERT INTO `sys_role_function` VALUES ('976', '1', '3');
INSERT INTO `sys_role_function` VALUES ('977', '1', '11');
INSERT INTO `sys_role_function` VALUES ('978', '1', '135');
INSERT INTO `sys_role_function` VALUES ('979', '1', '136');
INSERT INTO `sys_role_function` VALUES ('980', '1', '137');
INSERT INTO `sys_role_function` VALUES ('981', '1', '138');
INSERT INTO `sys_role_function` VALUES ('982', '1', '139');
INSERT INTO `sys_role_function` VALUES ('983', '1', '12');
INSERT INTO `sys_role_function` VALUES ('984', '1', '13');
INSERT INTO `sys_role_function` VALUES ('985', '1', '14');
INSERT INTO `sys_role_function` VALUES ('986', '1', '4');
INSERT INTO `sys_role_function` VALUES ('987', '1', '35');
INSERT INTO `sys_role_function` VALUES ('988', '1', '5');
INSERT INTO `sys_role_function` VALUES ('989', '1', '36');
INSERT INTO `sys_role_function` VALUES ('990', '1', '37');
INSERT INTO `sys_role_function` VALUES ('991', '1', '38');
INSERT INTO `sys_role_function` VALUES ('992', '1', '39');
INSERT INTO `sys_role_function` VALUES ('993', '1', '40');
INSERT INTO `sys_role_function` VALUES ('994', '1', '6');
INSERT INTO `sys_role_function` VALUES ('995', '1', '42');
INSERT INTO `sys_role_function` VALUES ('996', '1', '7');
INSERT INTO `sys_role_function` VALUES ('997', '1', '34');
INSERT INTO `sys_role_function` VALUES ('998', '1', '41');
INSERT INTO `sys_role_function` VALUES ('999', '1', '43');
INSERT INTO `sys_role_function` VALUES ('1000', '1', '44');
INSERT INTO `sys_role_function` VALUES ('1001', '1', '8');
INSERT INTO `sys_role_function` VALUES ('1002', '1', '24');
INSERT INTO `sys_role_function` VALUES ('1003', '1', '25');
INSERT INTO `sys_role_function` VALUES ('1004', '1', '45');
INSERT INTO `sys_role_function` VALUES ('1005', '1', '119');
INSERT INTO `sys_role_function` VALUES ('1006', '1', '126');
INSERT INTO `sys_role_function` VALUES ('1007', '1', '127');
INSERT INTO `sys_role_function` VALUES ('1008', '1', '46');
INSERT INTO `sys_role_function` VALUES ('1009', '1', '115');
INSERT INTO `sys_role_function` VALUES ('1010', '1', '116');
INSERT INTO `sys_role_function` VALUES ('1011', '1', '117');
INSERT INTO `sys_role_function` VALUES ('1012', '1', '118');
INSERT INTO `sys_role_function` VALUES ('1013', '1', '47');
INSERT INTO `sys_role_function` VALUES ('1014', '1', '120');
INSERT INTO `sys_role_function` VALUES ('1015', '1', '128');
INSERT INTO `sys_role_function` VALUES ('1016', '1', '129');
INSERT INTO `sys_role_function` VALUES ('1017', '1', '130');
INSERT INTO `sys_role_function` VALUES ('1018', '1', '48');
INSERT INTO `sys_role_function` VALUES ('1019', '2', '3');
INSERT INTO `sys_role_function` VALUES ('1020', '2', '11');
INSERT INTO `sys_role_function` VALUES ('1021', '2', '135');
INSERT INTO `sys_role_function` VALUES ('1022', '2', '136');
INSERT INTO `sys_role_function` VALUES ('1023', '2', '137');
INSERT INTO `sys_role_function` VALUES ('1024', '2', '138');
INSERT INTO `sys_role_function` VALUES ('1025', '2', '139');
INSERT INTO `sys_role_function` VALUES ('1026', '2', '12');
INSERT INTO `sys_role_function` VALUES ('1027', '2', '13');
INSERT INTO `sys_role_function` VALUES ('1028', '2', '14');
INSERT INTO `sys_role_function` VALUES ('1029', '2', '4');
INSERT INTO `sys_role_function` VALUES ('1030', '2', '35');
INSERT INTO `sys_role_function` VALUES ('1031', '2', '5');
INSERT INTO `sys_role_function` VALUES ('1032', '2', '36');
INSERT INTO `sys_role_function` VALUES ('1033', '2', '37');
INSERT INTO `sys_role_function` VALUES ('1034', '2', '38');
INSERT INTO `sys_role_function` VALUES ('1035', '2', '39');
INSERT INTO `sys_role_function` VALUES ('1036', '2', '40');
INSERT INTO `sys_role_function` VALUES ('1051', '38', '3');
INSERT INTO `sys_role_function` VALUES ('1052', '38', '11');
INSERT INTO `sys_role_function` VALUES ('1053', '38', '135');
INSERT INTO `sys_role_function` VALUES ('1054', '38', '12');
INSERT INTO `sys_role_function` VALUES ('1055', '38', '13');
INSERT INTO `sys_role_function` VALUES ('1056', '38', '14');
INSERT INTO `sys_role_function` VALUES ('1057', '38', '5');
INSERT INTO `sys_role_function` VALUES ('1058', '38', '36');
INSERT INTO `sys_role_function` VALUES ('1059', '38', '37');
INSERT INTO `sys_role_function` VALUES ('1060', '38', '38');
INSERT INTO `sys_role_function` VALUES ('1061', '38', '39');
INSERT INTO `sys_role_function` VALUES ('1062', '38', '40');
INSERT INTO `sys_role_function` VALUES ('1063', '38', '7');
INSERT INTO `sys_role_function` VALUES ('1064', '38', '34');
INSERT INTO `sys_role_function` VALUES ('1065', '38', '41');
INSERT INTO `sys_role_function` VALUES ('1066', '38', '43');
INSERT INTO `sys_role_function` VALUES ('1067', '38', '44');


-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
-- ----------------------------
-- Records of sys_roles
-- ----------------------------
-- truncate table `sys_roles`;
INSERT INTO `sys_roles` VALUES ('1', '系统管理员', '系统管理员',       '1','admin' ,'2018-07-13 17:44:11','admin' ,'2018-07-24 09:27:38' );
INSERT INTO `sys_roles` VALUES ('2', '项目经理', '负责启动项目',       '1','admin','2018-07-13 17:44:47', 'admin','2018-07-24 09:28:57' );
INSERT INTO `sys_roles` VALUES ('38', '团负责人', '只能查看项目',      '1','admin','2018-07-21 17:09:23', 'admin','2018-07-24 15:11:52');
INSERT INTO `sys_roles` VALUES ('3', '财务部', '财务审批',             '1', 'testuser', '2018-03-27 14:51:00', 'testuser', '2018-03-31 14:49:02');
INSERT INTO `sys_roles` VALUES ('4', '产品经理', '负责产品的的管理',    '1', 'testuser', '2018-03-31 17:24:44', 'testuser', '2018-03-31 17:24:44');
INSERT INTO `sys_roles` VALUES ('6', '产品信息专员', '负责产品信息整理以及上线', '1', 'Admin', '2018-04-11 15:38:56', 'Admin', '2018-04-11 15:38:56');
INSERT INTO `sys_roles` VALUES ('7', '渠道运营经理', '渠道运营经理',    '1', 'Admin', '2018-04-20 09:26:55', 'Admin', '2018-04-20 09:26:55');
INSERT INTO `sys_roles` VALUES ('8', '渠道运营专员', '渠道运营专员',   '1', 'Admin', '2018-04-20 09:29:47', 'Admin', '2018-04-20 09:29:47');


-- ----------------------------
-- Table structure for sys_user_roles
-- ----------------------------

-- ----------------------------
-- Records of sys_user_roles
-- ----------------------------
INSERT INTO `sys_user_roles` VALUES ('13', '1', '1');
INSERT INTO `sys_user_roles` VALUES ('19', '4', '2');
INSERT INTO `sys_user_roles` VALUES ('20', '5', '1');
INSERT INTO `sys_user_roles` VALUES ('22', '6', '2');
INSERT INTO `sys_user_roles` VALUES ('23', '2', '38');
INSERT INTO `sys_user_roles` VALUES ('25', '3', '2');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('1', 'admin', '174d6f4c544799e0bd1323759687aa9e', '9052e391-2efa-4643-9332-585a4e657473', 'admin@tedu.cn', '13624356789', '1', null, '2020-07-18 17:13:39', null, null);
INSERT INTO `sys_users` VALUES ('2', 'zhangli', 'a398038062b23fead34dd22399fbaf41', '5e7cbd36-e897-4951-b42b-19809caf3caa', 'zhangli@tedu.cn', '13678909876', '1', '2020-07-18 10:01:51', '2020-07-21 17:09:58', null, null);
INSERT INTO `sys_users` VALUES ('3', 'wangke', 'c5dc32ec66041aeddf432b3146bd2257', '5e3e1475-1ea9-4a6a-976e-b07545827139', 'wangke@tedu.cn', '18678900987', '1', '2020-07-18 11:40:53', '2020-07-21 17:40:28', null, null);
INSERT INTO `sys_users` VALUES ('4', 'zhangql', '+HBpqtPuj9KLBIpneR5X0A==', 'ed487fac-9952-45c9-acaa-21dab9c689cc', 'zhangql@tedu.cn', '13678909876', '1', '2020-07-18 12:17:30', '2020-07-18 17:40:09', null, null);
INSERT INTO `sys_users` VALUES ('5', 'fanwei', '1acab7425d6dfae670f26bd160518902', '34fbedb2-e135-4f8d-b595-24360edc348d', 'fanwei@tedu.cn', '13876545678', '1', '2020-07-20 17:03:22', '2020-07-20 17:03:22', null, null);
INSERT INTO `sys_users` VALUES ('6', 'wumei', '431ebdcccf3404787a144f9ba669a8e2', '8a14f46f-7a17-4dfe-85ab-08e63cb618ce', 'wumei@tedu.cn', '13567898765', '1', '2020-07-21 10:57:40', '2020-07-21 10:58:21', null, null);


-- ----------------------------
-- Records of tms_projects
-- ----------------------------
INSERT INTO `tms_projects` VALUES ('4', 'TPCN-20200701-CHN-PEK-001', '2020年澳大利亚乌鲁鲁马拉松', '2020-07-21', '2020-07-25', '1', '专属红土马拉松，乌鲁鲁巨岩10km排酸跑，高碳晚餐，赛后安排乌鲁鲁日落，卡塔丘塔徒步，特色原野星光秀', '2020-07-05 14:19:13', '2020-07-07 14:30:48', null, null);
INSERT INTO `tms_projects` VALUES ('5', 'TP-20200710-USA-NY-001', '2020美国纽约马拉松', '2020-08-01', '2020-08-08', '1', '跑步纵览纽约城市魅力，热情的观众和专业的跑步组织', '2020-07-05 14:19:14', '2020-07-24 15:09:47', null, null);
INSERT INTO `tms_projects` VALUES ('6', 'TP-20200710-DEU-BER-001', '2020德国柏林马拉松自由行', '2020-08-11', '2020-08-20', '1', '落地参团，往返接送机服务,赛前晚餐+赛后特色餐，全程专业摄影摄像', '2020-07-05 14:19:14', '2020-07-06 15:52:44', null, null);
INSERT INTO `tms_projects` VALUES ('7', 'TP-20200710-FIN-HEL-001', '2020 徒步北欧探梦布道石', '2020-09-10', '2020-09-20', '1', '勇攀布道石，全程四星酒店，浮士德，诗丽雅双游轮，畅游三峡湾，安徒生博物馆，伊埃斯科城堡', '2020-07-05 14:19:14', '2020-07-05 14:19:14', null, null);

-- ----------------------------
-- Table structure for tms_teams
-- ----------------------------

-- ----------------------------
-- Records of tms_teams
-- ----------------------------
INSERT INTO `tms_teams` VALUES ('11', '2020美国纽约马拉松3日团', '5', '1', '2020美国纽约马拉松3日团Happy', '2020-07-06 10:34:23', '2020-07-06 10:34:23', null, null);
INSERT INTO `tms_teams` VALUES ('12', '2020美国纽约马拉松5日团', '5', '1', '2020美国纽约马拉松3日团Happy', '2020-07-06 10:34:23', '2020-07-06 10:34:23', null, null);
INSERT INTO `tms_teams` VALUES ('23', '2020美国纽约马拉松6日团', '5', '1', '2020美国纽约马拉松6日团.....', '2020-07-06 14:46:51', '2020-07-07 11:23:36', null, null);
INSERT INTO `tms_teams` VALUES ('24', '2020美国纽约马拉松7日团', '5', '1', '2020美国纽约马拉松7日团', '2020-07-06 14:53:57', '2020-07-07 11:23:36', null, null);
INSERT INTO `tms_teams` VALUES ('25', '2020 德国柏林马拉松3日游', '6', '0', '2020 德国柏林马拉松3日游。。。', '2020-07-06 16:00:37', '2020-07-06 16:43:50', null, null);
INSERT INTO `tms_teams` VALUES ('26', '2020 德国柏林马拉松4日游', '6', '0', '2020 德国柏林马拉松4日游.。。。', '2020-07-06 16:04:12', '2020-07-06 16:43:50', null, null);
