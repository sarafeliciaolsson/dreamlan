#coding:utf-8
from bottle import *

from beaker.middleware import SessionMiddleware

import MySQLdb

#OPTIONS
#Log in to database
db = MySQLdb.connect("195.178.232.16", port=3306, user="AF9250", passwd="Ankdamm1", db="AF9250", charset='utf8');
cur = db.cursor(MySQLdb.cursors.DictCursor)

def get_people():
    query = ("SELECT Nr, Name, Phone FROM employees")
    cur.execute(query)
    return cur.fetchall()

def get_bands():
    query = ("SELECT ConcertID, Concert_date, Begin, End, Stage, Band, stage.name as Scen, bands.name as Bandet FROM concerts, stage, bands WHERE stage = StageID AND Band = BandID order by Concert_date, Scen, ConcertID ")
    cur.execute(query)
    return cur.fetchall()



# Här ligger alla routes

@route('/static/<filename:path>')
def server_static(filename):
    return static_file(filename, root='static')

@route("/")
def index():
    return template("index", concerts=get_bands())

@route("/admin")
def admin():
    return template("admin", employees=get_people())

run(host='localhost', port=8080, debug=True)