create table history
(
	ds datetime not null comment '日期'
		primary key,
	confirm int null comment '累积确诊',
	confirm_add int null comment '新增确诊',
	suspect int null comment '疑似',
	suspect_add int null comment '新增疑似',
	heal int null comment '治愈',
	heal_add int null comment '新增治愈',
	dead int null comment '死亡',
	dead_add int null comment '新增死亡',
	importedCase int null comment '累计境外输入',
	importedCase_add int null comment '新增境外输入
'
)
comment '历史数据记录';

