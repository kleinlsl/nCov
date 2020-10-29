# -- coding:UTF-8 --
import os
import sys
import time
import json
import traceback
import requests
from selenium.webdriver import Chrome, ChromeOptions

import db

"""
用于更新爬取全球疫情数据
"""
class Word_data:
    def __init__(self):
        self.cursor = None
        self.conn = None
        self.url3 = "https://api.inews.qq.com/newsqa/v1/automation/foreign/country/ranklist"
        self.url4 = "https://voice.baidu.com/newpneumonia/get?target=trend&isCaseIn=1&stage=publish"
        # 获取并解析腾讯数据
    """
    不建议使用，数据不全
    """
    def get_tencent_word_data(self):
        url = self.url3
        headers = {
            "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Safari/537.36"
        }
        r3 = requests.get(url, headers)

        res3 = json.loads(r3.text)

        # print(res3)

        # 获取国外疫情数据
        foreignList = res3["data"]
        # print(foreignList)
        word_details = []
        # print(len(foreignList))
        for i in foreignList:
            # print(i)
            ds = "2020." + i["date"]
            # print(i)
            tup = time.strptime(ds, "%Y.%m.%d")  # 匹配时间
            update_time = time.strftime("%Y-%m-%d", tup)  # 改变时间格式
            # print(update_time)
            name = i["name"]
            # continent = i["continent"]
            confirm_add = i["confirmAdd"]
            confirm = i["confirm"]
            heal = i["heal"]
            dead = i["dead"]
            word_details.append(
                {"update_time": update_time, "name": name, "confirm_add": confirm_add,
                 "confirm": confirm, "heal": heal, "dead": dead})

        # print(word_details)
        return word_details

    """
    建议使用，数据详细。但只能更新至前一天
    """
    def get_baidu_word_data(self):
        url = self.url4
        headers = {
            "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Safari/537.36"
        }
        r = requests.get(url, headers)

        res = json.loads(r.text)

        # print(res)

        # # 获取国外疫情数据
        foreignList = res["data"]
        # print(foreignList)
        word_details = []
        # print(len(foreignList))
        for i in foreignList:
            """
            获取国家name
            """
            name = i["name"]  # 获取到name
            confirm_add = None
            confirm = None
            heal = None
            dead = None
            # print(i)

            trend = i["trend"]  # 对应国家的所有疫情信息
            """
            获取时间
            """
            updateDateList = trend["updateDate"]

            # print(updateDateList[-1:])
            ds = "2020." + updateDateList[-1:][0]
            tup = time.strptime(ds, "%Y.%m.%d")  # 匹配时间
            update_time = time.strftime("%Y-%m-%d", tup)  # 改变时间格式
            # print(update_time)

            """
            获取：确诊、治愈、死亡等信息
            """
            dataList = trend["list"]
            # print(dataList)
            # print(len(dataList))

            confirm = dataList[0]["data"][-1:][0]
            heal = dataList[1]["data"][-1:][0]
            dead = dataList[2]["data"][-1:][0]
            confirm_add = dataList[3]["data"][-1:][0]

            # print(confirm)
            # print(heal)
            # print(dead)
            # print(confirm_add)

            word_details.append(
                {"update_time": update_time, "name": name, "confirm_add": confirm_add,
                 "confirm": confirm, "heal": heal, "dead": dead})
        #
        # print(word_details)
        return word_details

    """
    定义从腾讯更新word数据
    """
    def update_tencent_word(self):
        res = self.get_tencent_word_data()
        self.update_word(res)

    """
    定义从百度更新word数据
    """
    def update_baidu_word(self):
        res = self.get_baidu_word_data()
        self.update_word(res)

    """
    # 定义全球疫情函数
    """
    def update_word(self,li):
        try:

            # print(li)
            self.conn, self.cursor = db.get_conn()
            sql = "insert into word(" \
                  "update_time,name,confirm_add,confirm,heal,dead" \
                  ") " \
                  "values(%s,%s,%s,%s,%s,%s)"
            sql_query = 'select %s=(' \
                        'select update_time ' \
                        'from word ' \
                        'order by id ' \
                        'desc limit 1' \
                        ')'
            # 对比当前最大时间戳
            self.cursor.execute(sql_query, li[0]["update_time"])
            if not self.cursor.fetchone()[0]:
                print(f"{time.asctime()}开始更新数据")
                for item in li:
                    # k, v = item.items()
                    print(item)
                    # print(v)
                    v = []
                    v = list(item.values())
                    # print(list(v))
                    self.cursor.execute(sql, v)
                self.conn.commit()
                print(f"{time.asctime()}更新到最新数据")
            else:
                print(f"{time.asctime()}已是最新数据！")
        except:
            traceback.print_exc()
        finally:
            db.close_conn(self.conn, self.cursor)

"""
用于更新爬取腾讯的数据
"""
class Tencent_Data:

    def __init__(self):
        self.cursor = None
        self.conn = None
        self.url1 = "https://view.inews.qq.com/g2/getOnsInfo?name=disease_h5"
        self.url2 = "https://view.inews.qq.com/g2/getOnsInfo?name=disease_other"

    # 获取并解析腾讯数据
    def get_tencent_data(self):
        url1 = self.url1
        url2 = self.url2

        headers = {
            "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Safari/537.36"
        }
        r1 = requests.get(url1, headers)
        r2 = requests.get(url2, headers)

        res1 = json.loads(r1.text)
        res2 = json.loads(r2.text)

        data_all1 = json.loads(res1["data"])
        data_all2 = json.loads(res2["data"])

        history = {}
        for i in data_all2["chinaDayList"]:
            ds = "2020." + i["date"]
            tup = time.strptime(ds, "%Y.%m.%d")  # 匹配时间
            ds = time.strftime("%Y-%m-%d", tup)  # 改变时间格式
            confirm = i["confirm"]
            suspect = i["suspect"]
            heal = i["heal"]
            dead = i["dead"]
            importedCase = i["importedCase"]
            history[ds] = {"confirm": confirm, "suspect": suspect, "heal": heal, "dead": dead,
                           "importedCase": importedCase}
        for i in data_all2["chinaDayAddList"]:
            ds = "2020." + i["date"]
            tup = time.strptime(ds, "%Y.%m.%d")  # 匹配时间
            ds = time.strftime("%Y-%m-%d", tup)  # 改变时间格式
            confirm = i["confirm"]
            suspect = i["suspect"]
            heal = i["heal"]
            dead = i["dead"]
            importedCase = i["importedCase"]
            history[ds].update({"confirm_add": confirm, "suspect_add": suspect, "heal_add": heal, "dead_add": dead,
                                "importedCase_add": importedCase})

        details = []
        update_time = data_all1["lastUpdateTime"]
        data_country = data_all1["areaTree"]
        data_province = data_country[0]["children"]
        for pro_infos in data_province:
            province = pro_infos["name"]
            for city_infos in pro_infos["children"]:
                city = city_infos["name"]
                confirm = city_infos["total"]["confirm"]
                confirm_add = city_infos["today"]["confirm"]
                heal = city_infos["total"]["heal"]
                dead = city_infos["total"]["dead"]
                details.append([update_time, province, city, confirm, confirm_add, heal, dead])

        # print(history)
        # print(details)
        return history, details

    # 定义更新细节函数
    def update_details(self):

        try:
            li = self.get_tencent_data()[1]  # 1代表最新数据
            self.conn, self.cursor = db.get_conn()
            sql = "insert into details(" \
                  "update_time,province,city,confirm,confirm_add,heal,dead" \
                  ") " \
                  "values(%s,%s,%s,%s,%s,%s,%s)"
            sql_query = 'select %s=(' \
                        'select update_time ' \
                        'from details ' \
                        'order by id ' \
                        'desc limit 1' \
                        ')'
            # 对比当前最大时间戳
            self.cursor.execute(sql_query, li[0][0])
            if not self.cursor.fetchone()[0]:
                print(f"{time.asctime()}开始更新数据")
                for item in li:
                    self.cursor.execute(sql, item)
                self.conn.commit()
                print(f"{time.asctime()}更新到最新数据")
            else:
                print(f"{time.asctime()}已是最新数据！")
        except:
            traceback.print_exc()
        finally:
            db.close_conn(self.conn, self.cursor)

    # 插入历史数据
    def insert_history(self):

        try:
            dic = self.get_tencent_data()[0]  # 0代表历史数据字典
            print(f"{time.asctime()}开始插入历史数据")
            self.conn, self.cursor = db.get_conn()
            sql = "insert into history values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            for k, v in dic.items():
                self.cursor.execute(sql, [k, v.get("confirm"), v.get("confirm_add"), v.get("suspect"),
                                          v.get("suspect_add"), v.get("heal"), v.get("heal_add"),
                                          v.get("dead"), v.get("dead_add"), v.get("importedCase"),
                                          v.get("importedCase_add")])
            self.conn.commit()
            print(f"{time.asctime()}插入历史数据完毕")
        except:
            traceback.print_exc()
        finally:
            db.close_conn(self.conn, self.cursor)

    # 更新历史数据
    def update_history(self):

        try:
            dic = self.get_tencent_data()[0]  # 0代表历史数据字典
            print(f"{time.asctime()}开始更新历史数据")
            self.conn, self.cursor = db.get_conn()
            sql = "insert into history values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
            update_sql = "update history " \
                         "set " \
                         "confirm=%s,confirm_add=%s," \
                         "suspect=%s,suspect_add=%s," \
                         "heal=%s,heal_add=%s," \
                         "dead=%s,dead_add=%s," \
                         "importedCase=%s,importedCase_add=%s " \
                         "where ds=%s"
            sql_query = "select confirm from history where ds=%s"
            for k, v in dic.items():
                if not self.cursor.execute(sql_query, k):
                    self.cursor.execute(sql, [k, v.get("confirm"), v.get("confirm_add"), v.get("suspect"),
                                              v.get("suspect_add"), v.get("heal"), v.get("heal_add"),
                                              v.get("dead"), v.get("dead_add"), v.get("importedCase"),
                                              v.get("importedCase_add")])
                else:
                    self.cursor.execute(update_sql, [v.get("confirm"), v.get("confirm_add"), v.get("suspect"),
                                                     v.get("suspect_add"), v.get("heal"), v.get("heal_add"),
                                                     v.get("dead"), v.get("dead_add"), v.get("importedCase"),
                                                     v.get("importedCase_add"), k])
            self.conn.commit()
            print(f"{time.asctime()}历史数据更新完毕")
        except:
            traceback.print_exc()
        finally:
            db.close_conn(self.conn, self.cursor)

"""
用于更新爬取百度的数据
"""
class Badidu_Hot:

    def __init__(self):
        self.cursor = None
        self.conn = None
        self.but_selector = '#ptab-0 > div > div.VirusHot_1-5-6_32AY4F.VirusHot_1-5-6_2RnRvg > section > div'
        self.label_xpath = '//*[@id="ptab-0"]/div/div[1]/section/a/div/span[2]'
        self.url = "https://voice.baidu.com/act/virussearch/virussearch?from=osari_map&tab=0&infomore=1"
        self.Chrome_drive_path = "chromedriver_win32/chromedriver.exe"

    # 爬取百度热搜数据
    def get_baidu_hot(self):
        """

        :return: 返回百度热搜词条列表，每次20条
        """
        option = ChromeOptions()
        option.add_argument("--headless")  # 隐藏游览器
        option.add_argument("--no-sandbox")
        option.add_argument("--disable-gpu")
        option.add_argument("--disable-dev-shm-usage")
        # windows 系统
        if os.name=="nt":
            browser = Chrome(options=option, executable_path=self.Chrome_drive_path)
        else:
            browser = Chrome(options=option)
        url = self.url
        browser.get(url)

        # 找到展开按钮对象
        but = browser.find_element_by_css_selector(
            self.but_selector
        )
        # 点击加载更多
        but.click()
        # 爬虫与反爬，模拟人等待1秒
        time.sleep(1)
        # 找到热搜标签
        c = browser.find_elements_by_xpath(
            self.label_xpath
        )
        # 获取标签内容
        context = [i.text for i in c]
        browser.close()
        return context

    def update_hotsearch(self):
        """
        将疫情数据插入数据库中
        :return:
        """

        try:
            context = self.get_baidu_hot()
            print(f"{time.asctime()}开始更新热搜数据")
            self.conn, self.cursor = db.get_conn()
            sql = "insert into hotsearch(dt,content) values(%s,%s)"
            ts = time.strftime("%Y-%m-%d %X")
            for i in context:
                self.cursor.execute(sql, (ts, i))
            self.conn.commit()
            print(f"{time.asctime()}热搜数据更新完毕")
        except:
            traceback.print_exc()
        finally:
            db.close_conn(self.conn, self.cursor)

if __name__ == "__main__":
    l = len(sys.argv)
    if l == 1:
        s = """
        请输入参数
        参数说明，
        up_his : 更新历史记录表
        up_hot : 更新实时热搜
        up_det : 更新详细表
        up_word :更新全球数据
        """
        print(s)
    else:
        T = Tencent_Data()
        B = Badidu_Hot()
        W = Word_data()
        order = sys.argv[1]
        if order == "up_his":
            T.update_history()
        elif order == "up_det":
            T.update_details()
        elif order == "up_hot":
            B.update_hotsearch()
        elif order == "up_word":
            W.update_baidu_word()
