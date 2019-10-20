from flask import Flask, escape, request, render_template, redirect
import json
from sqlalchemy import create_engine
from sqlalchemy import sql
import pymysql
import password

app = Flask(__name__)

name = ''
userdata = None

@app.route('/', methods=["GET", "POST"])

# init and set username from request
# name = ''
def hello():
    print("hello")
    if request.method =="POST":
        print(request.form['inputUserName'])
        name = request.form['inputUserName']
        userdata = getLogin(name)
        # while userdata != None:
        #     counter = 0
        textfile = open('data.json', 'w')
        textfile.write(str(userdata))
        textfile.close()
        return redirect('/dashboard')
    return render_template('home.html')

@app.route('/dashboard', methods=["GET", "POST"])
def dashboard():
    print(userdata)
    f = open("data.json", "r")
    test = f.read()
    return render_template('dashboard.html', data = str(test))
# set database password
pw = password.pw

# establish connection to database
engine = create_engine("mysql+pymysql://admin:{}@mindful3.c7ce4qsxirkj.us-east-2.rds.amazonaws.com/mindful".format(pw))

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