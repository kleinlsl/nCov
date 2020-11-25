import os

import pymysql
from config import cfg_from_file
from config import cfg

# Whether to import external configuration
if os.path.exists("resource/config.yaml"):
    cfg_from_file("resource/config.yaml")

# MySQL Configuration
host = cfg.database.mysql.host
user = cfg.database.mysql.user
password = cfg.database.mysql.passwd
charset = cfg.database.mysql.charset
db = cfg.database.mysql.db  # Database name used

"""
database:数据库连接层
"""


def get_conn():
    # 建立连接
    conn = pymysql.connect(host=host, user=user, password=password, db=db, charset=charset)
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
    cursor.execute(sql, *args)
    res = cursor.fetchall()
    close_conn(conn, cursor)
    return res


def test():
    sql = "select * from details"
    res = query(sql)
    return res[0]
