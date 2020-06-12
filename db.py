import pymysql

"""
database:数据库连接层
"""


def get_conn():
    # 建立连接
    conn = pymysql.connect(host="127.0.0.1", user="root", password="123456", db="cov", charset="utf8")
    # c创建游标
    cursor = conn.cursor()
    return conn, cursor


def close_conn(conn, cursor):
    if cursor:
        cursor.close()
    if conn:
        conn.close()


def query(sql, *args):
    """

    :param sql:
    :param args:
    :return:
    """
    conn, cursor = get_conn()
    cursor.execute(sql, args)
    res = cursor.fetchall()
    close_conn(conn, cursor)
    return res


def test():
    sql = "select * from details"
    res = query(sql)
    return res[0]
