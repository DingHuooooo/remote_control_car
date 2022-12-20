#!/usr/bin/python
# -*- coding: UTF-8 -*-

import serial
#import RPi.GPIO as GPIO
#serialport = serial.Serial("/dev/ttyUSB0", baudrate=9600)


def showdetail(cmd):
    print(" Order： [" + cmd + "]  has been sent.")

def showtext(message):
    print(" Send text : " + message)


def forward():
    message='forward'
    showdetail(message)
    #serialport.write(message.encode())

def turnleft():
    message='turn left'
    showdetail(message)
    #serialport.write(message.encode())

def turnright():
    message='turn right'
    showdetail(message)
    #serialport.write(message.encode())

def backward():
    message='back'
    showdetail(message)
    #serialport.write(message.encode())

def left():
    message='left'
    showdetail(message)
    #serialport.write(message.encode())

def right():
    message='right'
    showdetail(message)
    #serialport.write(message.encode())

def stop():
    message='stop'
    showdetail(message)
    #serialport.write(message.encode())



def camturnright():
    showdetail()
#        #serialport.write(message.encode())

def camturnleft():
    showdetail()
#        #serialport.write(message.encode())

def camturnup():
    showdetail()
#        #serialport.write(message.encode())

def camturndown():
    showdetail()
#        #serialport.write(message.encode())

def camini():
    showdetail()
#        #serialport.write(message.encode())



def sendtext(message):
    showtext(message)
    #serialport.write(message.encode())


# 定义main主函数
def cmd_decide(cmd,message=''):


    if cmd == "forward":
        forward()
    elif cmd == "turnright":
        turnright()
    elif cmd == "turnleft":
        turnleft()
    elif cmd == "backward":
        backward()
    elif cmd == "right":
        right()
    elif cmd == "left":
        left()
    elif cmd == "stop":
        stop()

    elif cmd == "camturnright":
        camturnright()
    elif cmd == "camturnleft":
        camturnleft()
    elif cmd == "camturnup":
        camturnup()
    elif cmd == "camturndown":
        camturndown()
    elif cmd == "camini":
        camini()
    
    elif cmd == "sendtext":
        sendtext(message)


cmd_decide("forward")