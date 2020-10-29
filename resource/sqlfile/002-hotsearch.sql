create table hotsearch
(
	id int auto_increment,
	dt datetime not null comment '时间',
	content varchar(255) null comment '内容',
	primary key (id, dt)
)
comment '百度热搜数据';

