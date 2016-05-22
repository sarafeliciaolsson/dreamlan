#coding:utf-8
from bottle import *

from beaker.middleware import SessionMiddleware

import MySQLdb

#OPTIONS
#Log in to database
db = MySQLdb.connect("195.178.232.16", port=3306, user="AF9250", passwd="Ankdamm1", db="AF9250", charset='utf8');
cur = db.cursor(MySQLdb.cursors.DictCursor)


def get_employees():
    query = ("SELECT Nr, Name, Phone FROM employees")
    cur.execute(query)
    return cur.fetchall()
    
@route('/admin')
def admin():
    return template('admin', employees=get_employees())

@route('/add_employees', method=['POST'])
def add_employees():
    Nr = request.forms.get("Nr")
    Name = request.forms.get("Name")
    Phone = request.forms.get("Phone")
    
    add_employee = ("INSERT INTO employees (Nr, Name, Phone) VALUES (%s, %s, %s)")
    cur.execute(add_employee, (Nr, Name, Phone))
    db.commit()
    redirect("/admin")
    
@route('/del_employees', method=['POST'])
def del_employees():

    del_emp = request.forms.get('person')


    query = ("DELETE FROM employees WHERE Nr = '%s'" % del_emp)
    cur.execute(query)
    db.commit()
    redirect("/admin")
    


def get_mallorca():
    query = ("SELECT ConcertID, Concert_date, Begin, End, Stage, Band, stage.name as Scen, bands.name as Bandet FROM concerts, stage, bands WHERE stage = 1 AND stage = StageID AND Band = BandID order by Concert_date, Scen, ConcertID ")
    cur.execute(query)
    return cur.fetchall()

def get_diesel():
    query = ("SELECT ConcertID, Concert_date, Begin, End, Stage, Band, stage.name as Scen, bands.name as Bandet FROM concerts, stage, bands WHERE stage = 2 AND stage = StageID AND Band = BandID order by Concert_date, Scen, ConcertID ")
    cur.execute(query)
    return cur.fetchall()

def get_forum():
    query = ("SELECT ConcertID, Concert_date, Begin, End, Stage, Band, stage.name as Scen, bands.name as Bandet FROM concerts, stage, bands WHERE stage = 3 AND stage = StageID AND Band = BandID order by Concert_date, Scen, ConcertID ")
    cur.execute(query)
    return cur.fetchall()

# Här ligger alla routes

@route('/static/<filename:path>')
def server_static(filename):
    return static_file(filename, root='static')

@route("/")
def index():
    return template("index", mallorca=get_mallorca(), diesel=get_diesel(), forum=get_forum())


run(host='localhost', port=8080, debug=True)
