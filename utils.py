import time

import db


def get_time():
    time_str = time.strftime("%Y{}%m{}%d{} %X")
    return time_str.format("年", "月", "日")


def get_c1_data():
    sql = "select sum(confirm)," \
          "(select suspect from history order by ds desc limit 1)," \
          "sum(heal)," \
          "sum(dead) " \
          "from details " \
          "where update_time=(select update_time from details order by update_time desc limit 1) "
    sql = "select confirm,suspect,heal,dead,importedCase from history order by ds desc limit 1"
    res = db.query(sql)
    return res[0]


def get_c2_data():
    sql = "select province,sum(confirm) from details " \
          "where update_time=(select update_time from details " \
          "order by update_time desc limit 1) " \
          "group by province"
    res = db.query(sql)
    return res


def get_l1_data():
    sql = "select ds,confirm,suspect,heal,dead,importedCase from history"
    res = db.query(sql)
    return res


def get_l2_data():
    """
    查询新增：确认、疑似、治愈、死亡,境外输入
    :return:
    """
    sql = "select ds,confirm_add,suspect_add,heal_add,dead_add,importedCase_add from history"
    res = db.query(sql)
    return res


def get_r1_data():
    sql = 'select city,confirm from ' \
          '(' \
          'select city,confirm from details ' \
          'where update_time=' \
          '(' \
          'select update_time from details order by update_time desc limit 1' \
          ') ' \
          'and province not in ("湖北","北京","上海","天津","重庆") ' \
          'and city not in ("地区待确认")' \
          'union all ' \
          'select province as city,sum(confirm) as confirm ' \
          'from details ' \
          'where update_time=(' \
          'select update_time from details order by update_time desc limit 1' \
          ') ' \
          'and province in ("北京","上海","天津","重庆") group by province' \
          ') ' \
          'as a ' \
          'order by confirm desc limit 5'

    res = db.query(sql)
    return res


def get_r2_data():
    sql = "select content " \
          "from hotsearch order by id desc limit 20"
    res = db.query(sql)
    return res


def get_lw_data():
    #     {"name":"\u7f8e\u56fd","value":1965912},{"name":"\u897f\u73ed\u7259","value":288058}
    sql = "select name,confirm from word " \
          "where update_time=(" \
          "     select update_time from word " \
          "     order by update_time desc limit 1" \
          ") " \
          "order by name"
    res = db.query(sql)

    # print(res)
    return res
def get_rw_time():
    sql = "select update_time from word " \
          "order by update_time desc limit 1"
    res = db.query(sql)
    res=res[0][0]
    # print(type(res))
    time_string = res.strftime('%Y-%m-%d')
    # print(time_string)

    return time_string

def get_rw_data():
    sql = "select confirm as Confirmed,dead,name from word " \
          "where update_time=(" \
          "     select update_time from word " \
          "     order by update_time desc limit 1" \
          ") " \
          "order by Confirmed desc "
    res = db.query(sql)
    return res

if __name__ == "__main__":
    print(get_rw_time())


