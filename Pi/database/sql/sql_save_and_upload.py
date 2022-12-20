# -*- encoding=utf-8 -*-
import subprocess 
import datetime
from subprocess import Popen, PIPE, STDOUT
import os
import time
import sql_upload

last_hour=0
path_pc=''
path_pi=''

def mkdir(path):
    if not os.path.exists(path):                   #判断是否存在文件夹如果不存在则创建为文件夹
	    os.makedirs(path)                       #makedirs 创建文件时如果路径不存在会创建这个路径
       
    else:
        print('Folder exists')

		

def save_sql():
    
    now_time = datetime.datetime.now()
    date="{2}-{1}-{0:0>2d}".format(now_time.day,now_time.month,now_time.year)
    filename = "{0}.sql".format(date)
    global path_pc,path_pi
    path_pc= 'C:/Users/23742/Desktop/Remote_control_system/database\sql/sqlfile/'
    path_pi= '/home/pi/cancer/Remote_control_system/database/sql/sqlfile/'
    
  # for pi  
     
    subprocess.check_call(["mysqldump -u root -p061218cancer --databases {0} {1}> {3}/{2}".format('car','users',filename,path_pi)], shell=True) 
    
  #  for pc  
    """process = Popen(["cmd"], shell=False, stdout=PIPE, stdin=PIPE, stderr=STDOUT)
    commands = ("cd C:/Program Files/MySQL/MySQL Server 8.0/bin\n""mysqldump -u root -p061218cancer --databases {0} {1}> {3}/{2}\n").format('car','users',filename,path_pc)
    outs, errs = process.communicate(commands.encode("gbk"))"""
    #### content = [z.strip() for z in outs.decode("gbk").split("\n") if z]
    #### print(*content,sep="\n")  
    

#FIXME:
def save_and_upload_sql_per_hour():
    timee=datetime.datetime.now()
    now_hour=timee.minute
    global last_hour
    if now_hour!=last_hour:
        last_hour=now_hour
        print("Now is " + str(last_hour) + " o'clock")
        save_sql()
        time.sleep(1)
        sql_upload.upload()

#TODO: everytime upload should be recorded in the cloud-database of when who where
while True:
    save_and_upload_sql_per_hour()
