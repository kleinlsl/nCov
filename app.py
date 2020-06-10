import decimal
import string
from flask import Flask as _Flask, jsonify

from flask import request
from flask import render_template
from flask.json import JSONEncoder as _JSONEncoder

from jieba.analyse import extract_tags
import utils


class JSONEncoder(_JSONEncoder):
    def default(self, o):
        if isinstance(o, decimal.Decimal):
            return float(o)
        super(_JSONEncoder, self).default(o)


class Flask(_Flask):
    json_encoder = JSONEncoder


app = Flask(__name__)


@app.route('/')
def renderIndex():
    # print("index.html")
    return render_template("index.html")


@app.route('/word')
def renderInd():
    return render_template("word.html")


@app.route('/login')
def getLogin():
    name = request.values.get("name")
    pwd = request.values.get("pwd")
    return f'name={name}.pwd={pwd}'


@app.route('/getFrom')
def getFrom():
    """

    :return: 渲染后的页面
    """
    id = request.values.get("id")  # 获取参数
    return f"""
        <form action="/login">
                账号：<input name="name"><br>
                密码：<input name="pwd"> 
                <input type="submit">
            </form>
        """


@app.route('/testRender')
def testRender():
    """
    :return: 渲染后的页面
    """
    return render_template("main.html")


@app.route('/testAjax', methods=["get", "post"])
def testAjax():
    """
    :return: 渲染后的页面
    """
    name = request.values.get("name")
    return name


@app.route('/time')
def get_time():
    return utils.get_time()

@app.route('/rw_time')
def get_rw_time():
    return utils.get_rw_time()

@app.route('/c1')
def get_c1_data():
    data = utils.get_c1_data()
    # print(data[0])
    res = jsonify({"confirm": data[0], "suspect": data[1], "heal": data[2], "dead": data[3], "importedCase": data[4]})
    # print(res)
    return res


@app.route('/c2')
def get_c2_data():
    res = []
    for tup in utils.get_c2_data():
        res.append({"name": tup[0], "value": int(tup[1])})
    # print(res)
    return jsonify({"data": res})


@app.route('/l1')
def get_l1_data():
    data = utils.get_l1_data()
    day, confirm, suspect, heal, dead, importedCase = [], [], [], [], [], []
    for a, b, c, d, e, f in data[:]:
        day.append(a.strftime("%m-%d"))
        confirm.append(b)
        suspect.append(c)
        heal.append(d)
        dead.append(e)
        importedCase.append(f)
    return jsonify(
        {"day": day, "confirm": confirm, "suspect": suspect, "heal": heal, "dead": dead, "importedCase": importedCase})


@app.route('/l2')
def get_l2_data():
    data = utils.get_l2_data()
    day, confirm_add, suspect_add, heal_add, dead_add, importedCase_add = [], [], [], [], [], []
    for a, b, c, d, e, f in data[:]:
        day.append(a.strftime("%m-%d"))
        confirm_add.append(b)
        suspect_add.append(c)
        heal_add.append(d)
        dead_add.append(e)
        importedCase_add.append(f)
    return jsonify(
        {"day": day, "confirm_add": confirm_add, "suspect_add": suspect_add, "heal_add": heal_add, "dead_add": dead_add,
         "importedCase_add": importedCase_add})


@app.route('/r1')
def get_r1_data():
    data = utils.get_r1_data()
    city = []
    confirm = []
    for k, v in data:
        city.append(k)
        confirm.append(int(v))
    # print(city)
    # print(confirm)
    return jsonify({"city": city, "confirm": confirm})


@app.route('/r2')
def get_r2_data():
    data = utils.get_r2_data()
    # print(data)
    d = []
    for i in data:
        k = i[0].rstrip(string.digits)
        v = i[0][len(k):]
        ks = extract_tags(k)
        for j in ks:
            if not j.isdigit():
                d.append({"name": j, "value": v})
    # print(d)
    return jsonify({"kws": d})

@app.route('/lw')
def get_lw_data():
    res = []
    for tup in utils.get_lw_data():
        res.append({"name": tup[0], "value": int(tup[1])})
    china = utils.get_c1_data()
    res.append({"name": "中国", "value": int(china[0])})
    # print(china)
    # print(res)
    return jsonify({"data": res})

@app.route('/rw')
def get_rw_data():
    res = []
    for tup in utils.get_rw_data():
        res.append({"Confirmed": int(tup[0]), "Dead": int(tup[1]), "name":tup[2]})
    # china = utils.get_c1_data()
    # res.append({"Confirmed": china[0], "Dead": china[3], "name":"中国"})
    # res.sort("Confirmed")
    # print(res)
    return jsonify({"data": res})



if __name__ == '__main__':
    app.run(host="0.0.0.0",port="8003")
