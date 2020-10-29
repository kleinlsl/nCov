create table word
(
	id int auto_increment
		primary key,
	name varchar(50) null,
	update_time datetime null,
	confirm_add int null comment '新增确诊',
	confirm int null comment '累计确诊',
	heal int null comment '治愈',
	dead int null comment '死亡'
)
comment '世界疫情数据';

