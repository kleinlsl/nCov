select city, confirm
from (
         select city, confirm
         from details
         where update_time =
               (
                   select update_time
                   from details
                   order by update_time desc
                   limit 1
               )
           and province not in ('湖北', '北京', '上海', '天津', '重庆') #排除不是湖北和直辖市的地区
           and city not in ('地区待确认')

         union all   #合并两个表
        #把直辖市各个区的数据做累加
         select province     as city,
                sum(confirm) as confirm
         from details
         where update_time =
               (
                   select update_time
                   from details
                   order by update_time desc
                   limit 1
               )
           and province in ('北京', '上海', '天津', '重庆')
         group by province #分组统计

#          union all
#          select city,confirm
     ) as a
order by confirm  #通过字段排序
desc limit 5;     #选取5个

