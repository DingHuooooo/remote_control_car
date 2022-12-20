#!/usr/bin/python
# -*- coding: UTF-8 -*-

import pymysql
import re,datetime

class Database_local(object):

    dbhost='localhost'
    dbuser='pi'
    dbpassword='061218cancer'



    def table_exists(table_name,db_name='car'):                                             #这个函数用来判断表是否存在
    
        db = pymysql.connect(host=Database_local.dbhost,
                            user=Database_local.dbuser,
                            password=Database_local.dbpassword,
                            database=db_name)    # 打开数据库连接
        cursor = db.cursor()  
        
        sql = "show tables;"
        cursor.execute(sql)
        tables = [cursor.fetchall()]
        table_list = re.findall('(\'.*?\')',str(tables))
        table_list = [re.sub("'",'',each) for each in table_list]
        cursor.close()
        db.close()

        if table_name in table_list:
            print("表已存在，可以修改")
            return 1        #存在返回1
        else:
            print("表不存在，可以添加一张")
            return 0        #不存在返回0
            
    #table_exists('test','users')

    def create_table_name_based_on_time():                                          #这个函数用来生成根据日期的表单名字

        #根据日期生成表单名字
        now_time = datetime.datetime.now()
        date="{2}_{1}_{0}".format(now_time.day,now_time.month,now_time.year)
        table_name = "{0}_log".format(date) 
        return table_name


    def create_table(table_name,db_name='car'):                                                   #这个函数用来根据命名建立表单

        db = pymysql.connect(host=Database_local.dbhost,
                            user=Database_local.dbuser,
                            password=Database_local.dbpassword,
                            database=db_name)     # 打开数据库连接
        cursor = db.cursor()

        #创建新表
        sql = """CREATE TABLE IF NOT EXISTS  %s(
                Time  CHAR(50) ,
                Id  CHAR(50) ,
                Name  CHAR(50),
                Ip  CHAR(50),  
                Command CHAR(50),
                Text_sent CHAR(100))"""%(table_name)
                
        try:
            cursor.execute(sql)
            db.commit()
        except:
            print('Create table error')
            db.rollback()

        cursor.close()
        db.close()
    
    #create_table(create_table_name_based_on_time())

    def insert_value(id,name,ip,command,text_sent='',db_name='car'):
        # 打开数据库连接
        db = pymysql.connect(host=Database_local.dbhost,
                            user=Database_local.dbuser,
                            password=Database_local.dbpassword,
                            database=db_name
                            )
        cursor = db.cursor()

        #生成日期时间
        now_time = datetime.datetime.now()
        date="{2}_{1}_{0}".format(now_time.day,now_time.month,now_time.year)
        time="{2:0>2d}:{1:0>2d}:{0:0>2d}".format(now_time.second,now_time.minute,now_time.hour)
        table_name = "{0}_log".format(date) 


        #插入表单
        sql =  'INSERT INTO {}(\
                Time,\
                Id,\
                Name, \
                Ip, \
                Command, \
                Text_sent)\
                VALUES (%s,%s,%s,%s,%s,%s)'\
                .format(table_name)
        value=(time,id,name,ip,command,text_sent)
        try:
            cursor.execute(sql,value)
            db.commit()
        except:
            print("Insert value error")
            db.rollback()
            
        cursor.close()
        db.close()

    #insert_value('id','name','ip','command','\'')


class Database_remote(object):

    dbhost='1.15.228.39'
    dbuser='root'
    dbpassword='061218cancer'



    def table_exists(table_name,db_name='client1'):                                             #这个函数用来判断表是否存在
    
        db = pymysql.connect(host=Database_local.dbhost,
                            user=Database_local.dbuser,
                            password=Database_local.dbpassword,
                            database=db_name)    # 打开数据库连接
        cursor = db.cursor()  
        
        sql = "show tables;"
        cursor.execute(sql)
        tables = [cursor.fetchall()]
        table_list = re.findall('(\'.*?\')',str(tables))
        table_list = [re.sub("'",'',each) for each in table_list]
        cursor.close()
        db.close()

        if table_name in table_list:
            print("表已存在，可以修改")
            return 1        #存在返回1
        else:
            print("表不存在，可以添加一张")
            return 0        #不存在返回0
            
    #table_exists('test','users')

    def create_table_name_based_on_time():                                          #这个函数用来生成根据日期的表单名字

        #根据日期生成表单名字
        now_time = datetime.datetime.now()
        date="{2}_{1}_{0}".format(now_time.day,now_time.month,now_time.year)
        table_name = "{0}_log".format(date) 
        return table_name


    def create_table(table_name,db_name='client1'):                                                   #这个函数用来根据命名建立表单

        db = pymysql.connect(host=Database_local.dbhost,
                            user=Database_local.dbuser,
                            password=Database_local.dbpassword,
                            database=db_name)     # 打开数据库连接
        cursor = db.cursor()

        #创建新表
        sql = """CREATE TABLE IF NOT EXISTS  %s(
                Time  CHAR(50) ,
                Id  CHAR(50) ,
                Name  CHAR(50),
                Ip  CHAR(50),  
                Command CHAR(50),
                Text_sent CHAR(100))"""%(table_name)
                
        try:
            cursor.execute(sql)
            db.commit()
        except:
            print('Create table error')
            db.rollback()

        cursor.close()
        db.close()
    
    #create_table(create_table_name_based_on_time())

    def insert_value(id,name,ip,command,text_sent='',db_name='client1'):
        # 打开数据库连接
        db = pymysql.connect(host=Database_local.dbhost,
                            user=Database_local.dbuser,
                            password=Database_local.dbpassword,
                            database=db_name
                            )
        cursor = db.cursor()

        #生成日期时间
        now_time = datetime.datetime.now()
        date="{2}_{1}_{0}".format(now_time.day,now_time.month,now_time.year)
        time="{2:0>2d}:{1:0>2d}:{0:0>2d}".format(now_time.second,now_time.minute,now_time.hour)
        table_name = "{0}_log".format(date) 


        #插入表单
        sql =  'INSERT INTO {}(\
                Time,\
                Id,\
                Name, \
                Ip, \
                Command, \
                Text_sent)\
                VALUES (%s,%s,%s,%s,%s,%s)'\
                .format(table_name)
        value=(time,id,name,ip,command,text_sent)
        try:
            cursor.execute(sql,value)
            db.commit()
        except:
            print("Insert value error")
            db.rollback()
            
        cursor.close()
        db.close()

    #insert_value('id','name','ip','command','\'')