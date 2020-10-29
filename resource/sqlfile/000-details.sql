create table details
(
	id int auto_increment comment '主键自增长'
		primary key,
	update_time datetime null comment '更新时间',
	province varchar(50) null comment '省份',
	city varchar(50) null comment '城市',
	confirm int null comment '累计确诊',
	confirm_add int null comment '新增确诊',
	heal int null comment '治愈',
	dead int null comment '死亡'
)
comment '详细数据';

