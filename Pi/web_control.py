#!/usr/bin/python
# -*- coding: UTF-8 -*-

from bottle import  get, post, run, request, redirect, route, static_file
from urllib.parse import quote,unquote
from database.database_control import *
from car.car_control import *


client_ip='*.*.*.*'
ip = "127.0.0.1"
i = 0


@get('/')
@route('/login')
def login(filepath="login.html"):
    return static_file(filepath, root='./public')


@route('/login', method='POST')
def do_login():
    global username
    global password
    username = request.forms.get('username')
    password = request.forms.get('password')
    if verify():
        
        Database_local.create_table(Database_local.create_table_name_based_on_time())
        Database_local.insert_value(id='id',name='name',ip=client_ip,command='login')
        return redirect("/index")
    else:
        return static_file(filename="error_login.html", root='./public')

#TODO:
def verify():
    return 1


@route('/index', method='GET')
def view():
    if verify():
        return static_file(filename="index.html", root='./public')
    else:
        redirect("/login")


@post("/sendtext")
def sendtext():
    if verify():
        text = request.body.read().decode()
        print('\n')
        print("按下了按钮: sendtext")
        message = unquote(text[5:])
        Database_local.insert_value(id='id',name='name',ip=client_ip,command='sendtext',text_sent=message)
        cmd_decide("sendtext",message)
        return redirect("/index")
    else:
        return static_file(filename="error_login.html", root='./public')


@post("/cmd")
def do_cmd():
    if verify():
        cmd = request.body.read().decode()
        print('\n')
        print("按下了按钮: "+cmd)
        Database_local.insert_value(id='id',name='name',ip=client_ip,command=cmd)
        cmd_decide(cmd)
    else:
        return static_file(filename="error_login.html", root='./public')

    
def web_run():
    print(" Please visit " + ip + ":8081")
    run(host=ip, port=8081, debug=True, quiet=True)


web_run()