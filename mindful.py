from flask import Flask, escape, request, render_template
import json
from sqlalchemy import create_engine
from sqlalchemy import sql
import pymysql
import password

app = Flask(__name__)

@app.route('/', methods=["GET", "POST"])
def hello():
    print("hello")
    if request.method =="POST":
        print(request.form['inputUserName'])
        print(getLogin("Kirt99"))
    return render_template('home.html')

pw = password.name

engine = create_engine("mysql+pymysql://admin:{}@mindful3.c7ce4qsxirkj.us-east-2.rds.amazonaws.com/mindful".format(pw))

name='kirt99'

def getLogin(username):
    with engine.connect() as con:
        query = sql.text(
            "SELECT * FROM users WHERE username = :username;"
        )
        rs = con.execute(query, username=username)
        result = rs.first()
        if result is None:
            return None
        return dict(result)



level_names = {
    0 : 'not so bruh',
    1 : 'bruh',
    2 : 'super bruh',
    3 : 'ultimate bruh',
    4 : 'Zenyatta'
}


exp = 0
level = 0
max_level = len(level_names)-1

next_level_exp = level*10

if level != max_level:
    next_level_name = level_names[level+1]
else:
    next_level_name = 'MAX LEVEL'

if (level != max_level) and (exp == next_level_exp):
    level += 1




frontend_package = {
    'user_name' : '',
    'level' : level,
    'exp' : exp,
    'level_name' : level_names[level],
    'next_level_name' : next_level_name
}

frontend_json = json.dumps(frontend_package)

print(frontend_json)


if __name__ == '__main__':
    app.run(debug=True)