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
        print(request.form['inputUserName'].lower())
        name = request.form['inputUserName'].lower()
        userdata = getLogin(name)
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
        if result == None:
            genNewUser( username )
        return result

def generateNewUserJSON( user ):
    level_names = {
        1 : 'bruh',
        2 : 'super bruh',
        3 : 'ultimate bruh',
        4 : 'Zenyatta'
    }
    

    
    gold = 0
    exp = 0
    level = 1
    max_level = len(level_names)-1

    next_level_exp = level*10


    bonus = 1*level
    daily_points = bonus + 4
    daily_goals = {
        'Meditate for 10 minutes.' : False,
        'Tell yourself something potitive.' : False,
        'Excerise or take a walk.' : False,
        'Do something you enjoy.' : False,
        'Get 7 to 8 hrs of sleep' : False
    }

    if level != max_level:
        next_level_name = level_names[level+1]
    else:
        next_level_name = 'MAX LEVEL'

    if (level != max_level) and (exp == next_level_exp):
        level += 1

    frontend_package = {
        'user_name' : user,
        'level' : level,
        'gold' : gold,
        'exp' : exp,
        'level_name' : level_names[level],
        'next_level_name' : next_level_name,
        'next_level_exp' : next_level_exp,
        'daily_goals' : daily_goals,
        'daily_points' : daily_points,
        'bonus' : bonus
    }

    frontend_json = json.dumps(frontend_package)

    return frontend_json

def genNewUser(username):
    with engine.connect() as con:
        query = sql.text(
            "INSERT INTO users values( :username, :json )"
        )
        json = generateNewUserJSON(username)
        rs = con.execute( query, username=username, json=json )
        return json

if __name__ == '__main__':
    app.run(debug=True)